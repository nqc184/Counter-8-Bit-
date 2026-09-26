from __future__ import annotations

import csv
import json
import re
import sys
from pathlib import Path
from datetime import datetime


PROJECT_ROOT = Path(__file__).resolve().parent


def newest_run(root: Path) -> Path | None:
    runs = sorted(
        root.glob("runs/RUN_*"),
        key=lambda p: p.stat().st_mtime,
        reverse=True,
    )
    return runs[0] if runs else None


def read_text(path: Path) -> str:
    try:
        return path.read_text(errors="ignore")
    except Exception:
        return ""


def find_first(root: Path, filename: str) -> Path | None:
    matches = list(root.rglob(filename))
    return matches[0] if matches else None


def load_metrics(run: Path) -> dict:
    """Load JSON metrics if available. Search recursively."""
    metrics = {}

    for name in ("metrics.json", "metrics_raw.json"):
        for path in run.rglob(name):
            try:
                data = json.loads(path.read_text(errors="ignore"))
                if isinstance(data, dict):
                    metrics.update(data)
            except Exception:
                pass

    return metrics


def get_metric(metrics: dict, *names):
    for name in names:
        if name in metrics:
            return metrics[name]
    return None


def fmt_num(x, digits=3):
    if x is None:
        return "N/A"
    if isinstance(x, bool):
        return str(x)
    if isinstance(x, (int, float)):
        return f"{x:,.{digits}f}"
    return str(x)


def find_number(text: str, patterns):
    for pat in patterns:
        m = re.search(pat, text, re.I | re.M)
        if m:
            try:
                return float(m.group(1).replace(",", ""))
            except ValueError:
                pass
    return None


def parse_manufacturability(run: Path):
    p = find_first(run, "manufacturability.rpt")
    if not p:
        return None, None, None, None

    t = read_text(p)

    def status(word):
        m = re.search(rf"\*\s*{word}\s*\n\s*(Passed|Failed|Skipped)", t, re.I)
        return m.group(1).upper() if m else "N/A"

    return p, status("Antenna"), status("LVS"), status("DRC")


def parse_timing_power(run: Path, metrics: dict):
    summary = find_first(run, "summary.rpt")
    text = read_text(summary) if summary else ""

    wns = get_metric(
        metrics,
        "timing__setup__ws",
        "timing__setup__wns",
        "wns",
    )
    tns = get_metric(
        metrics,
        "timing__setup__tns",
        "tns",
    )
    power = get_metric(
        metrics,
        "power__total",
        "power__total__nom_tt_025C_1v80",
        "total_power",
    )

    if wns is None:
        wns = find_number(
            text,
            [
                r"\bWNS\b\s*[:=]\s*([-+]?\d+(?:\.\d+)?)",
                r"worst\s+slack\s*[:=]\s*([-+]?\d+(?:\.\d+)?)",
            ],
        )

    if tns is None:
        tns = find_number(
            text,
            [
                r"\bTNS\b\s*[:=]\s*([-+]?\d+(?:\.\d+)?)",
                r"total\s+negative\s+slack\s*[:=]\s*([-+]?\d+(?:\.\d+)?)",
            ],
        )

    if power is None:
        power = find_number(
            text,
            [
                r"\btotal\s+power\b.*?([-+]?\d+(?:\.\d+)?)\s*(?:mW|uW|W)?",
                r"\bpower\b\s*[:=]\s*([-+]?\d+(?:\.\d+)?)",
            ],
        )

    return summary, wns, tns, power


def parse_area(run: Path, metrics: dict):
    die = get_metric(
        metrics,
        "design__die__area",
        "design__die__area__um2",
        "die_area",
    )
    core = get_metric(
        metrics,
        "design__core__area",
        "design__core__area__um2",
        "core_area",
    )
    cell = get_metric(
        metrics,
        "design__instance__area",
        "design__cell__area",
        "cell_area",
    )
    instances = get_metric(
        metrics,
        "design__instance__count",
        "instance_count",
    )
    utilization = get_metric(
        metrics,
        "design__core__utilization",
        "design__utilization",
        "utilization",
    )

    # Fallback to reports.
    cell_rpt = find_first(run, "cell.rpt")
    text = read_text(cell_rpt) if cell_rpt else ""

    if cell is None:
        cell = find_number(
            text,
            [
                r"\bTotal\s+Area\b\s*[:=]\s*([\d,.]+)",
                r"\barea\b\s*[:=]\s*([\d,.]+)",
            ],
        )

    if instances is None:
        instances = find_number(
            text,
            [
                r"\bTotal\s+(?:Cell|Instance)s?\b\s*[:=]\s*([\d,.]+)",
                r"\bInstances?\b\s*[:=]\s*([\d,.]+)",
            ],
        )

    if die is None:
        for name in ("floorplan.def", "final.def"):
            p = find_first(run, name)
            if p:
                t = read_text(p)
                m = re.search(
                    r"DIEAREA\s+\(\s*[-+]?\d+\s+[-+]?\d+\s*\)\s*"
                    r"\(\s*[-+]?\d+\s+[-+]?\d+\s*\)",
                    t,
                )
                if m:
                    nums = [int(x) for x in re.findall(r"-?\d+", m.group(0))]
                    if len(nums) >= 4:
                        x0, y0, x1, y1 = nums[:4]
                        die = f"DEF DIEAREA DBU: ({x0},{y0}) -> ({x1},{y1})"
                break

    return die, core, cell, instances, utilization, cell_rpt


def find_final_files(run: Path):
    result = {}
    for pattern, key in [
        ("*.gds", "GDS"),
        ("*.def", "DEF"),
        ("*.lef", "LEF"),
        ("*.v", "Netlist"),
        ("*.odb", "ODB"),
    ]:
        matches = sorted(run.rglob(pattern), key=lambda p: p.stat().st_mtime, reverse=True)
        if matches:
            result[key] = matches[0]
    return result


def write_report(run: Path, output: Path):
    metrics = load_metrics(run)

    manufact_path, antenna, lvs, drc = parse_manufacturability(run)
    timing_path, wns, tns, power = parse_timing_power(run, metrics)
    die, core, cell, instances, utilization, cell_rpt = parse_area(run, metrics)
    final_files = find_final_files(run)

    generated = datetime.now().strftime("%Y-%m-%d %H:%M:%S")

    lines = [
        "# ALU 8-bit — RTL to GDSII Report",
        "",
        f"- **Run:** `{run.name}`",
        f"- **Generated:** `{generated}`",
        "- **PDK:** SKY130",
        "",
        "## 1. Physical / Area",
        "",
        "| Metric | Value |",
        "|---|---:|",
        f"| Die area | {fmt_num(die)} µm² |",
        f"| Core area | {fmt_num(core)} µm² |",
        f"| Standard-cell area | {fmt_num(cell)} µm² |",
        f"| Instance count | {fmt_num(instances, 0)} |",
        f"| Core utilization | {fmt_num(utilization)} % |",
        "",
        "## 2. Timing / Power",
        "",
        "| Metric | Value |",
        "|---|---:|",
        f"| WNS | {fmt_num(wns)} |",
        f"| TNS | {fmt_num(tns)} |",
        f"| Total power | {fmt_num(power)} |",
        "",
        "## 3. Manufacturability",
        "",
        "| Check | Result |",
        "|---|---|",
        f"| DRC | **{drc}** |",
        f"| LVS | **{lvs}** |",
        f"| Antenna | **{antenna}** |",
        "",
        "## 4. Final Views",
        "",
    ]

    if final_files:
        for key, path in final_files.items():
            lines.append(f"- **{key}:** `{path.relative_to(run)}`")
    else:
        lines.append("- No final GDS/DEF/LEF/ODB/netlist file was found.")

    lines += [
        "",
        "## 5. Source Reports",
        "",
        f"- Manufacturability: `{manufact_path.relative_to(run) if manufact_path else 'not found'}`",
        f"- Timing/Power summary: `{timing_path.relative_to(run) if timing_path else 'not found'}`",
        f"- Cell report: `{cell_rpt.relative_to(run) if cell_rpt else 'not found'}`",
        "",
        "> Note: `N/A` means the metric was not available in the discovered metrics/report files. "
        "The script does not invent missing values.",
        "",
    ]

    output.write_text("\n".join(lines))
    return output


def main():
    if len(sys.argv) > 1:
        run = Path(sys.argv[1]).expanduser().resolve()
    else:
        run = newest_run(PROJECT_ROOT)

    if not run or not run.is_dir():
        print("ERROR: No LibreLane RUN_* directory found.")
        print("Run this script from the directory containing runs/ or pass the run path.")
        sys.exit(1)

    output = PROJECT_ROOT / "reports" / f"{run.name}_PPA_Report.md"
    output.parent.mkdir(parents=True, exist_ok=True)

    write_report(run, output)

    print(f"Run:    {run}")
    print(f"Report: {output}")


if __name__ == "__main__":
    main()

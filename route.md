# Lộ trình 20 ngày: RTL → GDSII cho Adder 8-bit (kèm UVM)

## Giai đoạn 1: RTL và testbench cơ bản (Ngày 1-4)

| Ngày | Bạn sẽ làm gì | Bạn đạt được gì |
|---|---|---|
| 1 | Cài Icarus Verilog/Verilator, VS Code, tạo tài khoản EDA Playground. Ôn cú pháp Verilog. Viết module full-adder 1-bit (a, b, cin → sum, cout). Viết testbench directed với vài test case cố định, in kết quả ra console. | Chạy mô phỏng thành công, tự tay verify được kết quả bằng tay so với output. Quen với flow compile → run → xem log. |
| 2 | Ghép 8 full-adder thành ripple-carry adder 8-bit (RCA). Viết thêm bản carry-lookahead adder (CLA) để so sánh cấu trúc. Viết testbench cộng dồn nhiều test case, thêm assertion đơn giản (`assert (sum == a+b+cin)`) kiểm tra tự động thay vì đọc log bằng mắt. | Có 2 phiên bản RTL adder 8-bit chạy đúng chức năng, biết cách viết assertion cơ bản để tự động hoá việc kiểm tra. |
| 3 | Học SystemVerilog OOP: class, constructor `new()`, kế thừa (`extends`), đa hình (`virtual function`), randomization (`rand`, `constraint`). Viết thử 1 class đơn giản đại diện cho "transaction" (a, b, cin) có `rand` và constraint (ví dụ ép cin luôn ngẫu nhiên 0/1). | Hiểu và tự viết được 1 class SystemVerilog có random hoá dữ liệu — đây là viên gạch đầu tiên của UVM transaction sau này. |
| 4 | Học interface, virtual interface, clocking block, mailbox, semaphore. Viết 1 interface chứa tín hiệu a, b, cin, sum, cout, clk cho DUT adder. Thử dùng interface này thay cho việc nối dây thủ công trong testbench cũ. | Hiểu vì sao UVM cần virtual interface để "chạm" vào DUT — driver/monitor sau này sẽ dùng đúng interface bạn vừa viết. |

**Cột mốc cuối giai đoạn 1:** Có RTL adder 8-bit đã verify đúng bằng testbench thường, và có sẵn 1 interface + 1 transaction class SystemVerilog sẵn sàng để "cắm" vào UVM.

---

## Giai đoạn 2: UVM từ số 0 (Ngày 5-12)

| Ngày | Bạn sẽ làm gì | Bạn đạt được gì |
|---|---|---|
| 5 | Học tổng quan kiến trúc UVM testbench (driver, sequencer, monitor, agent, scoreboard, environment, test) và các UVM phase (`build_phase`, `connect_phase`, `run_phase`...). Vẽ sơ đồ structural cho kiến trúc này bằng prompt mẫu. | Hình dung được bức tranh tổng thể: dữ liệu đi từ đâu đến đâu trong 1 UVM testbench, trước khi code từng mảnh. |
| 6 | Học UVM factory pattern (`uvm_object`, `uvm_component`, `create()`, `type_id::create()`) và `uvm_config_db` để truyền virtual interface xuống các component con. | Hiểu vì sao UVM dùng factory thay vì `new()` trực tiếp, và cách 1 component "nhận" được interface từ test/environment phía trên. |
| 7 | Viết `sequence_item` (transaction) chính thức cho adder: field a, b, cin, sum, cout, constraint randomize hợp lý. Viết 1 `sequence` đơn giản sinh ra 10-20 transaction ngẫu nhiên. | Có transaction + sequence chạy độc lập (chưa cần DUT), in ra được các giá trị random để kiểm tra constraint đúng ý. |
| 8 | Viết `driver`: lấy transaction từ sequencer qua `get_next_item()`, lái tín hiệu vào DUT qua virtual interface, gọi `item_done()`. Kết nối driver-sequencer trong `agent`. | Driver thực sự đẩy được dữ liệu vào DUT theo đúng transaction đã random — DUT bắt đầu "sống" trong UVM. |
| 9 | Viết `monitor`: quan sát tín hiệu trên interface, đóng gói thành transaction, gửi qua `analysis_port` bằng `write()`. | Có thể "nhìn thấy" DUT đang làm gì dưới dạng transaction, tách biệt hoàn toàn với phần driver. |
| 10 | Viết `scoreboard`: nhận transaction từ monitor qua `analysis_export`, tự tính sum/cout tham chiếu (`a+b+cin`), so sánh với giá trị DUT trả về, in PASS/FAIL. | Có cơ chế tự động kiểm tra đúng/sai — không cần tự tay đọc log mỗi test case nữa. |
| 11 | Ráp `agent` (driver + sequencer + monitor) hoàn chỉnh, ráp `environment` (agent + scoreboard), cấu hình agent ở chế độ active. | Có 1 environment UVM hoàn chỉnh, sẵn sàng chạy test — đây là bộ khung tái sử dụng được cho các thiết kế khác sau này. |
| 12 | Viết `base_test` và test cụ thể (khởi tạo sequence, chạy trong `run_phase`). Chạy toàn bộ testbench UVM trên EDA Playground. Nếu sai, debug bằng waveform (EPWave). | **Cột mốc lớn:** chạy được testbench UVM đầu tiên trong đời, tự sửa được lỗi bằng cách đọc waveform thay vì đoán mò. |

**Cột mốc cuối giai đoạn 2:** Có bộ UVM testbench hoàn chỉnh cho adder 8-bit, chạy pass toàn bộ với dữ liệu random.

---

## Giai đoạn 3: Coverage và verification hoàn thiện (Ngày 13-14)

| Ngày | Bạn sẽ làm gì | Bạn đạt được gì |
|---|---|---|
| 13 | Học `covergroup`/`coverpoint`, viết functional coverage cho a, b, cin (và cross coverage các trường hợp biên: 0+0, max+max, có/không carry). Chạy random test đủ lớn để phủ coverage. | Có báo cáo coverage cụ thể (% đã phủ), biết chỗ nào testbench còn "mù" chưa test tới. |
| 14 | Học SVA (SystemVerilog Assertion) cơ bản, thêm assertion kiểm tra logic tại chỗ. Review lại toàn bộ testbench, vá các lỗ hổng coverage, chốt phiên bản verification cuối cùng. | Bộ verification hoàn chỉnh, coverage gần 100%, có thể tự tin nói "RTL này đã được kiểm chứng kỹ". |

**Cột mốc cuối giai đoạn 3:** Sẵn sàng "đóng băng" RTL để chuyển sang synthesis — không sửa RTL nữa sau bước này.

---

## Giai đoạn 4: Logic synthesis (Ngày 15-16)

| Ngày | Bạn sẽ làm gì | Bạn đạt được gì |
|---|---|---|
| 15 | Học khái niệm synthesis, timing constraint (SDC: clock period, input/output delay). Làm quen cú pháp Yosys. | Hiểu vì sao cần constraint trước khi synthesize, không chỉ đơn thuần "biến RTL thành cổng logic". |
| 16 | Chạy Yosys synthesize RTL adder → gate-level netlist dùng thư viện cell SKY130. Xem báo cáo area/cell count. Chạy lại testbench UVM ở mức gate-level để đảm bảo netlist vẫn đúng chức năng. | Có netlist gate-level đã verify lại bằng chính bộ UVM testbench đã xây — chứng minh testbench của bạn tái sử dụng được xuyên suốt flow. |

**Cột mốc cuối giai đoạn 4:** Có gate-level netlist đúng chức năng, sẵn sàng đưa vào physical design.

---

## Giai đoạn 5: Physical design — Floorplan đến GDSII (Ngày 17-20)

| Ngày | Bạn sẽ làm gì | Bạn đạt được gì |
|---|---|---|
| 17 | Cài Docker + OpenLane, làm quen SKY130 PDK. Chạy bước floorplan: xác định die area, core area, power planning cho netlist adder. | Có floorplan cụ thể, hiểu vì sao die area/core area ảnh hưởng đến các bước sau. |
| 18 | Chạy placement (đặt standard cell vào floorplan). Tìm hiểu khái niệm Clock Tree Synthesis (CTS): skew, buffer insertion — dù thiết kế nhỏ nên CTS đơn giản. | Nhìn thấy layout bắt đầu hình thành, hiểu khái niệm CTS dù chưa cần tối ưu sâu với thiết kế nhỏ. |
| 19 | Chạy routing (global route + detailed route). Chạy full flow OpenLane từ đầu đến cuối cho adder 8-bit. Mở layout bằng KLayout hoặc Magic để xem trực quan. | Có layout hoàn chỉnh, tận mắt thấy được hình dạng vật lý của chip từ RTL ban đầu. |
| 20 | Chạy DRC (Magic) và LVS (Netgen) trên layout, sửa violation nếu có. Xuất file GDSII cuối cùng. Viết báo cáo tổng kết toàn bộ flow RTL → GDSII. | **Hoàn thành mục tiêu cuối cùng:** có file GDSII sạch DRC/LVS, hoàn tất trọn vẹn 1 chu trình RTL-to-GDSII kèm verification bằng UVM. |

**Cột mốc cuối giai đoạn 5:** File GDSII hoàn chỉnh + báo cáo tổng kết toàn bộ hành trình 20 ngày.
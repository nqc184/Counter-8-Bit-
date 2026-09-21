class adder_packet;
    rand logic [7:0] a, b;
    rand logic cin;

    function new();
        a=0; b =0; cin = 0;
    endfunction

    function void print();
         $display("packet: a=%h b=%h cin=%b", a, b, cin);
    endfunction

    constraint c_force_carry {
        cin == 1;
    }
endclass
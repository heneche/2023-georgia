module tb;

    logic [3:0] key_sw;

    top i_top (.key_sw (key_sw));

    initial
    begin
        #0

        `ifdef __ICARUS__
            $dumpvars;
        `endif

        repeat (8) #10 key_sw <= $random;

        `ifdef MODEL_TECH  // Mentor ModelSim and Questa
            $stop;
        `else
            $finish;
        `endif
    end

endmodule

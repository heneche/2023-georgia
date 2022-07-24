/* Generated by Yosys 0.12+45 (git sha1 UNKNOWN, gcc 8.3.1 -fPIC -Os) */

module moore_fsm(clk, reset, en, a, y);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  input a;
  input clk;
  input en;
  input reset;
  wire \state[2] ;
  output y;
  sky130_fd_sc_hd__nor2_2 _05_ (
    .A(reset),
    .B(en),
    .Y(_03_)
  );
  sky130_fd_sc_hd__or3b_2 _06_ (
    .A(reset),
    .B(a),
    .C_N(en),
    .X(_04_)
  );
  sky130_fd_sc_hd__a21bo_2 _07_ (
    .A1(\state[2] ),
    .A2(_03_),
    .B1_N(_04_),
    .X(_01_)
  );
  sky130_fd_sc_hd__and4b_2 _08_ (
    .A_N(reset),
    .B(en),
    .C(\state[2] ),
    .D(a),
    .X(_02_)
  );
  sky130_fd_sc_hd__a21o_2 _09_ (
    .A1(y),
    .A2(_03_),
    .B1(_02_),
    .X(_00_)
  );
  sky130_fd_sc_hd__dfxtp_2 _10_ (
    .CLK(clk),
    .D(_00_),
    .Q(y)
  );
  sky130_fd_sc_hd__dfxtp_2 _11_ (
    .CLK(clk),
    .D(_01_),
    .Q(\state[2] )
  );
endmodule

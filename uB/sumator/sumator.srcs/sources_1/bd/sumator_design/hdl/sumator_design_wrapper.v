//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Sun Jun 13 10:45:15 2021
//Host        : DESKTOP-8TR4F8Q running 64-bit major release  (build 9200)
//Command     : generate_target sumator_design_wrapper.bd
//Design      : sumator_design_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module sumator_design_wrapper
   (clock_clk_n,
    clock_clk_p,
    reset,
    reset_n);
  input clock_clk_n;
  input clock_clk_p;
  input reset;
  input reset_n;

  wire clock_clk_n;
  wire clock_clk_p;
  wire reset;
  wire reset_n;

  sumator_design sumator_design_i
       (.clock_clk_n(clock_clk_n),
        .clock_clk_p(clock_clk_p),
        .reset(reset),
        .reset_n(reset_n));
endmodule


`ifndef GF_TRACK
  `define GF_TRACK  7
`endif

`ifndef GF_VT
  `define GF_VT     R
`endif

`ifndef GF_LEN
  `define GF_LEN   34
`endif

//andy hack: support different standard cell libraries by setting `GF_TRACK,
//`GF_VT and `GF_LEN
`define GF_MXGL2(t,v,c)  MXGL2_X2B_A``t``T``v``_C``c

// MXGL2
// 2-to-1 glitchless multiplexer

module pulp_clock_mux2
(
    input  logic clk0_i,
    input  logic clk1_i,
    input  logic clk_sel_i,
    output logic clk_o
  );

  `GF_MXGL2(`GF_TRACK, `GF_VT, `GF_LEN) clk_mux_i
  (
    .A  ( clk0_i    ),
    .B  ( clk1_i    ),
    .S0 ( clk_sel_i ),
    .Y  ( clk_o     )
  );

endmodule
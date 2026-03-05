// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Mar  4 23:53:17 2026
// Host        : C28-2TK41600XL running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/C28Pablo.Ramirez/LAB2-ECE281-Pablo/LAB2-ECE281/LAB2.sim/sim_1/impl/timing/xsim/top_basys3_time_impl.v
// Design      : top_basys3
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "93e6def9" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module top_basys3
   (seg,
    an,
    sw,
    btnC);
  output [6:0]seg;
  output [3:0]an;
  input [3:0]sw;
  input btnC;

  wire [3:0]an;
  wire [0:0]an_OBUF;
  wire btnC;
  wire btnC_IBUF;
  wire [6:0]seg;
  wire [6:0]seg_OBUF;
  wire [3:0]sw;
  wire [3:0]sw_IBUF;

initial begin
 $sdf_annotate("top_basys3_time_impl.sdf",,,,"tool_control");
end
  OBUF \an_OBUF[0]_inst 
       (.I(an_OBUF),
        .O(an[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \an_OBUF[0]_inst_i_1 
       (.I0(btnC_IBUF),
        .O(an_OBUF));
  OBUF \an_OBUF[1]_inst 
       (.I(1'b1),
        .O(an[1]));
  OBUF \an_OBUF[2]_inst 
       (.I(1'b1),
        .O(an[2]));
  OBUF \an_OBUF[3]_inst 
       (.I(1'b1),
        .O(an[3]));
  IBUF btnC_IBUF_inst
       (.I(btnC),
        .O(btnC_IBUF));
  OBUF \seg_OBUF[0]_inst 
       (.I(seg_OBUF[0]),
        .O(seg[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h5814FFFF)) 
    \seg_OBUF[0]_inst_i_1 
       (.I0(sw_IBUF[1]),
        .I1(sw_IBUF[0]),
        .I2(sw_IBUF[2]),
        .I3(sw_IBUF[3]),
        .I4(btnC_IBUF),
        .O(seg_OBUF[0]));
  OBUF \seg_OBUF[1]_inst 
       (.I(seg_OBUF[1]),
        .O(seg[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hD860FFFF)) 
    \seg_OBUF[1]_inst_i_1 
       (.I0(sw_IBUF[0]),
        .I1(sw_IBUF[1]),
        .I2(sw_IBUF[2]),
        .I3(sw_IBUF[3]),
        .I4(btnC_IBUF),
        .O(seg_OBUF[1]));
  OBUF \seg_OBUF[2]_inst 
       (.I(seg_OBUF[2]),
        .O(seg[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h8A04FFFF)) 
    \seg_OBUF[2]_inst_i_1 
       (.I0(sw_IBUF[2]),
        .I1(sw_IBUF[1]),
        .I2(sw_IBUF[0]),
        .I3(sw_IBUF[3]),
        .I4(btnC_IBUF),
        .O(seg_OBUF[2]));
  OBUF \seg_OBUF[3]_inst 
       (.I(seg_OBUF[3]),
        .O(seg[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h8694FFFF)) 
    \seg_OBUF[3]_inst_i_1 
       (.I0(sw_IBUF[1]),
        .I1(sw_IBUF[0]),
        .I2(sw_IBUF[2]),
        .I3(sw_IBUF[3]),
        .I4(btnC_IBUF),
        .O(seg_OBUF[3]));
  OBUF \seg_OBUF[4]_inst 
       (.I(seg_OBUF[4]),
        .O(seg[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h02AEFFFF)) 
    \seg_OBUF[4]_inst_i_1 
       (.I0(sw_IBUF[0]),
        .I1(sw_IBUF[2]),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[3]),
        .I4(btnC_IBUF),
        .O(seg_OBUF[4]));
  OBUF \seg_OBUF[5]_inst 
       (.I(seg_OBUF[5]),
        .O(seg[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h308EFFFF)) 
    \seg_OBUF[5]_inst_i_1 
       (.I0(sw_IBUF[0]),
        .I1(sw_IBUF[1]),
        .I2(sw_IBUF[2]),
        .I3(sw_IBUF[3]),
        .I4(btnC_IBUF),
        .O(seg_OBUF[5]));
  OBUF \seg_OBUF[6]_inst 
       (.I(seg_OBUF[6]),
        .O(seg[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h4005FFFF)) 
    \seg_OBUF[6]_inst_i_1 
       (.I0(sw_IBUF[3]),
        .I1(sw_IBUF[0]),
        .I2(sw_IBUF[2]),
        .I3(sw_IBUF[1]),
        .I4(btnC_IBUF),
        .O(seg_OBUF[6]));
  IBUF \sw_IBUF[0]_inst 
       (.I(sw[0]),
        .O(sw_IBUF[0]));
  IBUF \sw_IBUF[1]_inst 
       (.I(sw[1]),
        .O(sw_IBUF[1]));
  IBUF \sw_IBUF[2]_inst 
       (.I(sw[2]),
        .O(sw_IBUF[2]));
  IBUF \sw_IBUF[3]_inst 
       (.I(sw[3]),
        .O(sw_IBUF[3]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif

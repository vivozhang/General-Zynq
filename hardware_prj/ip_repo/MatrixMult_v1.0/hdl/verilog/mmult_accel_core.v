// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.2
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="mmult_accel_core,hls_ip_2014_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z010clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.092000,HLS_SYN_LAT=1117,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=0,HLS_SYN_LUT=0}" *)

module mmult_accel_core (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        in_stream_data_V_dout,
        in_stream_data_V_empty_n,
        in_stream_data_V_read,
        in_stream_keep_V_dout,
        in_stream_keep_V_empty_n,
        in_stream_keep_V_read,
        in_stream_strb_V_dout,
        in_stream_strb_V_empty_n,
        in_stream_strb_V_read,
        in_stream_user_V_dout,
        in_stream_user_V_empty_n,
        in_stream_user_V_read,
        in_stream_last_V_dout,
        in_stream_last_V_empty_n,
        in_stream_last_V_read,
        in_stream_id_V_dout,
        in_stream_id_V_empty_n,
        in_stream_id_V_read,
        in_stream_dest_V_dout,
        in_stream_dest_V_empty_n,
        in_stream_dest_V_read,
        out_stream_data_V_din,
        out_stream_data_V_full_n,
        out_stream_data_V_write,
        out_stream_keep_V_din,
        out_stream_keep_V_full_n,
        out_stream_keep_V_write,
        out_stream_strb_V_din,
        out_stream_strb_V_full_n,
        out_stream_strb_V_write,
        out_stream_user_V_din,
        out_stream_user_V_full_n,
        out_stream_user_V_write,
        out_stream_last_V_din,
        out_stream_last_V_full_n,
        out_stream_last_V_write,
        out_stream_id_V_din,
        out_stream_id_V_full_n,
        out_stream_id_V_write,
        out_stream_dest_V_din,
        out_stream_dest_V_full_n,
        out_stream_dest_V_write
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm_0 = 1'b0;
parameter    ap_ST_st2_fsm_1 = 1'b1;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] in_stream_data_V_dout;
input   in_stream_data_V_empty_n;
output   in_stream_data_V_read;
input  [3:0] in_stream_keep_V_dout;
input   in_stream_keep_V_empty_n;
output   in_stream_keep_V_read;
input  [3:0] in_stream_strb_V_dout;
input   in_stream_strb_V_empty_n;
output   in_stream_strb_V_read;
input  [3:0] in_stream_user_V_dout;
input   in_stream_user_V_empty_n;
output   in_stream_user_V_read;
input  [0:0] in_stream_last_V_dout;
input   in_stream_last_V_empty_n;
output   in_stream_last_V_read;
input  [4:0] in_stream_id_V_dout;
input   in_stream_id_V_empty_n;
output   in_stream_id_V_read;
input  [4:0] in_stream_dest_V_dout;
input   in_stream_dest_V_empty_n;
output   in_stream_dest_V_read;
output  [31:0] out_stream_data_V_din;
input   out_stream_data_V_full_n;
output   out_stream_data_V_write;
output  [3:0] out_stream_keep_V_din;
input   out_stream_keep_V_full_n;
output   out_stream_keep_V_write;
output  [3:0] out_stream_strb_V_din;
input   out_stream_strb_V_full_n;
output   out_stream_strb_V_write;
output  [3:0] out_stream_user_V_din;
input   out_stream_user_V_full_n;
output   out_stream_user_V_write;
output  [0:0] out_stream_last_V_din;
input   out_stream_last_V_full_n;
output   out_stream_last_V_write;
output  [4:0] out_stream_id_V_din;
input   out_stream_id_V_full_n;
output   out_stream_id_V_write;
output  [4:0] out_stream_dest_V_din;
input   out_stream_dest_V_full_n;
output   out_stream_dest_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg in_stream_data_V_read;
reg in_stream_keep_V_read;
reg in_stream_strb_V_read;
reg in_stream_user_V_read;
reg in_stream_last_V_read;
reg in_stream_id_V_read;
reg in_stream_dest_V_read;
reg out_stream_data_V_write;
reg out_stream_keep_V_write;
reg out_stream_strb_V_write;
reg out_stream_user_V_write;
reg out_stream_last_V_write;
reg out_stream_id_V_write;
reg out_stream_dest_V_write;
reg   [0:0] ap_CS_fsm = 1'b0;
wire    grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_ap_start;
wire    grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_ap_done;
wire    grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_ap_idle;
wire    grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_ap_ready;
wire   [31:0] grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_data_V_dout;
wire    grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_data_V_empty_n;
wire    grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_data_V_read;
wire   [3:0] grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_keep_V_dout;
wire    grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_keep_V_empty_n;
wire    grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_keep_V_read;
wire   [3:0] grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_strb_V_dout;
wire    grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_strb_V_empty_n;
wire    grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_strb_V_read;
wire   [3:0] grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_user_V_dout;
wire    grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_user_V_empty_n;
wire    grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_user_V_read;
wire   [0:0] grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_last_V_dout;
wire    grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_last_V_empty_n;
wire    grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_last_V_read;
wire   [4:0] grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_id_V_dout;
wire    grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_id_V_empty_n;
wire    grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_id_V_read;
wire   [4:0] grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_dest_V_dout;
wire    grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_dest_V_empty_n;
wire    grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_dest_V_read;
wire   [31:0] grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_data_V_din;
wire    grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_data_V_full_n;
wire    grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_data_V_write;
wire   [3:0] grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_keep_V_din;
wire    grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_keep_V_full_n;
wire    grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_keep_V_write;
wire   [3:0] grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_strb_V_din;
wire    grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_strb_V_full_n;
wire    grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_strb_V_write;
wire   [3:0] grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_user_V_din;
wire    grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_user_V_full_n;
wire    grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_user_V_write;
wire   [0:0] grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_last_V_din;
wire    grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_last_V_full_n;
wire    grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_last_V_write;
wire   [4:0] grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_id_V_din;
wire    grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_id_V_full_n;
wire    grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_id_V_write;
wire   [4:0] grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_dest_V_din;
wire    grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_dest_V_full_n;
wire    grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_dest_V_write;
reg    grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_ap_start_ap_start_reg = 1'b0;
reg   [0:0] ap_NS_fsm;


mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57(
    .ap_clk( ap_clk ),
    .ap_rst( ap_rst ),
    .ap_start( grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_ap_start ),
    .ap_done( grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_ap_done ),
    .ap_idle( grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_ap_idle ),
    .ap_ready( grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_ap_ready ),
    .in_stream_data_V_dout( grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_data_V_dout ),
    .in_stream_data_V_empty_n( grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_data_V_empty_n ),
    .in_stream_data_V_read( grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_data_V_read ),
    .in_stream_keep_V_dout( grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_keep_V_dout ),
    .in_stream_keep_V_empty_n( grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_keep_V_empty_n ),
    .in_stream_keep_V_read( grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_keep_V_read ),
    .in_stream_strb_V_dout( grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_strb_V_dout ),
    .in_stream_strb_V_empty_n( grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_strb_V_empty_n ),
    .in_stream_strb_V_read( grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_strb_V_read ),
    .in_stream_user_V_dout( grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_user_V_dout ),
    .in_stream_user_V_empty_n( grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_user_V_empty_n ),
    .in_stream_user_V_read( grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_user_V_read ),
    .in_stream_last_V_dout( grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_last_V_dout ),
    .in_stream_last_V_empty_n( grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_last_V_empty_n ),
    .in_stream_last_V_read( grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_last_V_read ),
    .in_stream_id_V_dout( grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_id_V_dout ),
    .in_stream_id_V_empty_n( grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_id_V_empty_n ),
    .in_stream_id_V_read( grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_id_V_read ),
    .in_stream_dest_V_dout( grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_dest_V_dout ),
    .in_stream_dest_V_empty_n( grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_dest_V_empty_n ),
    .in_stream_dest_V_read( grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_dest_V_read ),
    .out_stream_data_V_din( grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_data_V_din ),
    .out_stream_data_V_full_n( grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_data_V_full_n ),
    .out_stream_data_V_write( grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_data_V_write ),
    .out_stream_keep_V_din( grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_keep_V_din ),
    .out_stream_keep_V_full_n( grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_keep_V_full_n ),
    .out_stream_keep_V_write( grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_keep_V_write ),
    .out_stream_strb_V_din( grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_strb_V_din ),
    .out_stream_strb_V_full_n( grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_strb_V_full_n ),
    .out_stream_strb_V_write( grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_strb_V_write ),
    .out_stream_user_V_din( grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_user_V_din ),
    .out_stream_user_V_full_n( grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_user_V_full_n ),
    .out_stream_user_V_write( grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_user_V_write ),
    .out_stream_last_V_din( grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_last_V_din ),
    .out_stream_last_V_full_n( grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_last_V_full_n ),
    .out_stream_last_V_write( grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_last_V_write ),
    .out_stream_id_V_din( grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_id_V_din ),
    .out_stream_id_V_full_n( grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_id_V_full_n ),
    .out_stream_id_V_write( grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_id_V_write ),
    .out_stream_dest_V_din( grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_dest_V_din ),
    .out_stream_dest_V_full_n( grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_dest_V_full_n ),
    .out_stream_dest_V_write( grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_dest_V_write )
);



/// the current state (ap_CS_fsm) of the state machine. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_CS_fsm
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

/// grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_ap_start_ap_start_reg assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_ap_start_ap_start_reg
    if (ap_rst == 1'b1) begin
        grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_ap_start_ap_start_reg <= ap_const_logic_0;
    end else begin
        if (((ap_ST_st1_fsm_0 == ap_CS_fsm) & ~(ap_start == ap_const_logic_0))) begin
            grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_ap_start_ap_start_reg <= ap_const_logic_1;
        end else if ((ap_const_logic_1 == grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_ap_ready)) begin
            grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_ap_start_ap_start_reg <= ap_const_logic_0;
        end
    end
end

/// ap_done assign process. ///
always @ (ap_CS_fsm or grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_ap_done)
begin
    if (((ap_ST_st2_fsm_1 == ap_CS_fsm) & ~(ap_const_logic_0 == grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_ap_done))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

/// ap_idle assign process. ///
always @ (ap_start or ap_CS_fsm)
begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_ST_st1_fsm_0 == ap_CS_fsm))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

/// ap_ready assign process. ///
always @ (ap_CS_fsm or grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_ap_done)
begin
    if (((ap_ST_st2_fsm_1 == ap_CS_fsm) & ~(ap_const_logic_0 == grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_ap_done))) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// in_stream_data_V_read assign process. ///
always @ (ap_CS_fsm or grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_data_V_read)
begin
    if (((ap_ST_st1_fsm_0 == ap_CS_fsm) | (ap_ST_st2_fsm_1 == ap_CS_fsm))) begin
        in_stream_data_V_read = grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_data_V_read;
    end else begin
        in_stream_data_V_read = ap_const_logic_0;
    end
end

/// in_stream_dest_V_read assign process. ///
always @ (ap_CS_fsm or grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_dest_V_read)
begin
    if (((ap_ST_st1_fsm_0 == ap_CS_fsm) | (ap_ST_st2_fsm_1 == ap_CS_fsm))) begin
        in_stream_dest_V_read = grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_dest_V_read;
    end else begin
        in_stream_dest_V_read = ap_const_logic_0;
    end
end

/// in_stream_id_V_read assign process. ///
always @ (ap_CS_fsm or grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_id_V_read)
begin
    if (((ap_ST_st1_fsm_0 == ap_CS_fsm) | (ap_ST_st2_fsm_1 == ap_CS_fsm))) begin
        in_stream_id_V_read = grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_id_V_read;
    end else begin
        in_stream_id_V_read = ap_const_logic_0;
    end
end

/// in_stream_keep_V_read assign process. ///
always @ (ap_CS_fsm or grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_keep_V_read)
begin
    if (((ap_ST_st1_fsm_0 == ap_CS_fsm) | (ap_ST_st2_fsm_1 == ap_CS_fsm))) begin
        in_stream_keep_V_read = grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_keep_V_read;
    end else begin
        in_stream_keep_V_read = ap_const_logic_0;
    end
end

/// in_stream_last_V_read assign process. ///
always @ (ap_CS_fsm or grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_last_V_read)
begin
    if (((ap_ST_st1_fsm_0 == ap_CS_fsm) | (ap_ST_st2_fsm_1 == ap_CS_fsm))) begin
        in_stream_last_V_read = grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_last_V_read;
    end else begin
        in_stream_last_V_read = ap_const_logic_0;
    end
end

/// in_stream_strb_V_read assign process. ///
always @ (ap_CS_fsm or grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_strb_V_read)
begin
    if (((ap_ST_st1_fsm_0 == ap_CS_fsm) | (ap_ST_st2_fsm_1 == ap_CS_fsm))) begin
        in_stream_strb_V_read = grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_strb_V_read;
    end else begin
        in_stream_strb_V_read = ap_const_logic_0;
    end
end

/// in_stream_user_V_read assign process. ///
always @ (ap_CS_fsm or grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_user_V_read)
begin
    if (((ap_ST_st1_fsm_0 == ap_CS_fsm) | (ap_ST_st2_fsm_1 == ap_CS_fsm))) begin
        in_stream_user_V_read = grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_user_V_read;
    end else begin
        in_stream_user_V_read = ap_const_logic_0;
    end
end

/// out_stream_data_V_write assign process. ///
always @ (ap_CS_fsm or grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_data_V_write)
begin
    if (((ap_ST_st1_fsm_0 == ap_CS_fsm) | (ap_ST_st2_fsm_1 == ap_CS_fsm))) begin
        out_stream_data_V_write = grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_data_V_write;
    end else begin
        out_stream_data_V_write = ap_const_logic_0;
    end
end

/// out_stream_dest_V_write assign process. ///
always @ (ap_CS_fsm or grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_dest_V_write)
begin
    if (((ap_ST_st1_fsm_0 == ap_CS_fsm) | (ap_ST_st2_fsm_1 == ap_CS_fsm))) begin
        out_stream_dest_V_write = grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_dest_V_write;
    end else begin
        out_stream_dest_V_write = ap_const_logic_0;
    end
end

/// out_stream_id_V_write assign process. ///
always @ (ap_CS_fsm or grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_id_V_write)
begin
    if (((ap_ST_st1_fsm_0 == ap_CS_fsm) | (ap_ST_st2_fsm_1 == ap_CS_fsm))) begin
        out_stream_id_V_write = grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_id_V_write;
    end else begin
        out_stream_id_V_write = ap_const_logic_0;
    end
end

/// out_stream_keep_V_write assign process. ///
always @ (ap_CS_fsm or grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_keep_V_write)
begin
    if (((ap_ST_st1_fsm_0 == ap_CS_fsm) | (ap_ST_st2_fsm_1 == ap_CS_fsm))) begin
        out_stream_keep_V_write = grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_keep_V_write;
    end else begin
        out_stream_keep_V_write = ap_const_logic_0;
    end
end

/// out_stream_last_V_write assign process. ///
always @ (ap_CS_fsm or grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_last_V_write)
begin
    if (((ap_ST_st1_fsm_0 == ap_CS_fsm) | (ap_ST_st2_fsm_1 == ap_CS_fsm))) begin
        out_stream_last_V_write = grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_last_V_write;
    end else begin
        out_stream_last_V_write = ap_const_logic_0;
    end
end

/// out_stream_strb_V_write assign process. ///
always @ (ap_CS_fsm or grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_strb_V_write)
begin
    if (((ap_ST_st1_fsm_0 == ap_CS_fsm) | (ap_ST_st2_fsm_1 == ap_CS_fsm))) begin
        out_stream_strb_V_write = grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_strb_V_write;
    end else begin
        out_stream_strb_V_write = ap_const_logic_0;
    end
end

/// out_stream_user_V_write assign process. ///
always @ (ap_CS_fsm or grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_user_V_write)
begin
    if (((ap_ST_st1_fsm_0 == ap_CS_fsm) | (ap_ST_st2_fsm_1 == ap_CS_fsm))) begin
        out_stream_user_V_write = grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_user_V_write;
    end else begin
        out_stream_user_V_write = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_start or ap_CS_fsm or grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_ap_done)
begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : 
        begin
            if (~(ap_start == ap_const_logic_0)) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_st2_fsm_1 : 
        begin
            if (~(ap_const_logic_0 == grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_ap_done)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_ap_start = grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_ap_start_ap_start_reg;
assign grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_data_V_dout = in_stream_data_V_dout;
assign grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_data_V_empty_n = in_stream_data_V_empty_n;
assign grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_dest_V_dout = in_stream_dest_V_dout;
assign grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_dest_V_empty_n = in_stream_dest_V_empty_n;
assign grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_id_V_dout = in_stream_id_V_dout;
assign grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_id_V_empty_n = in_stream_id_V_empty_n;
assign grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_keep_V_dout = in_stream_keep_V_dout;
assign grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_keep_V_empty_n = in_stream_keep_V_empty_n;
assign grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_last_V_dout = in_stream_last_V_dout;
assign grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_last_V_empty_n = in_stream_last_V_empty_n;
assign grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_strb_V_dout = in_stream_strb_V_dout;
assign grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_strb_V_empty_n = in_stream_strb_V_empty_n;
assign grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_user_V_dout = in_stream_user_V_dout;
assign grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_in_stream_user_V_empty_n = in_stream_user_V_empty_n;
assign grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_data_V_full_n = out_stream_data_V_full_n;
assign grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_dest_V_full_n = out_stream_dest_V_full_n;
assign grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_id_V_full_n = out_stream_id_V_full_n;
assign grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_keep_V_full_n = out_stream_keep_V_full_n;
assign grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_last_V_full_n = out_stream_last_V_full_n;
assign grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_strb_V_full_n = out_stream_strb_V_full_n;
assign grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_user_V_full_n = out_stream_user_V_full_n;
assign out_stream_data_V_din = grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_data_V_din;
assign out_stream_dest_V_din = grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_dest_V_din;
assign out_stream_id_V_din = grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_id_V_din;
assign out_stream_keep_V_din = grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_keep_V_din;
assign out_stream_last_V_din = grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_last_V_din;
assign out_stream_strb_V_din = grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_strb_V_din;
assign out_stream_user_V_din = grp_mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_fu_57_out_stream_user_V_din;


endmodule //mmult_accel_core

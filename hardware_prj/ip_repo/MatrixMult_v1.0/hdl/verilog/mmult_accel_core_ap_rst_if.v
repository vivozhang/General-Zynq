// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.2
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ==============================================================

`timescale 1ns/1ps

module mmult_accel_core_ap_rst_if
#(parameter
    RESET_ACTIVE_LOW = 0
)(
    input  wire din,
    output wire dout
);

assign dout = (RESET_ACTIVE_LOW == 1)? ~din : din;

endmodule


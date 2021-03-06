// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.2
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ==============================================================

`timescale 1 ns / 1 ps
module mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_a_0_1_ram (addr0, ce0, d0, we0, q0, addr1, ce1, q1,  clk);

parameter DWIDTH = 32;
parameter AWIDTH = 5;
parameter MEM_SIZE = 32;

input[AWIDTH-1:0] addr0;
input ce0;
input[DWIDTH-1:0] d0;
input we0;
output reg[DWIDTH-1:0] q0;
input[AWIDTH-1:0] addr1;
input ce1;
output reg[DWIDTH-1:0] q1;
input clk;

(* ram_style = "block" *)reg [DWIDTH-1:0] ram[MEM_SIZE-1:0];




always @(posedge clk)  
begin 
    if (ce0) 
    begin
        if (we0) 
        begin 
            ram[addr0] <= d0; 
            q0 <= d0;
        end 
        else 
            q0 <= ram[addr0];
    end
end


always @(posedge clk)  
begin 
    if (ce1) 
    begin
            q1 <= ram[addr1];
    end
end


endmodule


`timescale 1 ns / 1 ps
module mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_a_0_1(
    reset,
    clk,
    address0,
    ce0,
    we0,
    d0,
    q0,
    address1,
    ce1,
    q1);

parameter DataWidth = 32'd32;
parameter AddressRange = 32'd32;
parameter AddressWidth = 32'd5;
input reset;
input clk;
input[AddressWidth - 1:0] address0;
input ce0;
input we0;
input[DataWidth - 1:0] d0;
output[DataWidth - 1:0] q0;
input[AddressWidth - 1:0] address1;
input ce1;
output[DataWidth - 1:0] q1;




mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_a_0_1_ram mmult_accel_core_dut_mmult_accel_core_float_16_256_4_5_5_s_a_0_1_ram_U(
    .clk( clk ),
    .addr0( address0 ),
    .ce0( ce0 ),
    .d0( d0 ),
    .we0( we0 ),
    .q0( q0 ),
    .addr1( address1 ),
    .ce1( ce1 ),
    .q1( q1 ));

endmodule


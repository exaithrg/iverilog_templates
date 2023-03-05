//***************************************************************
// Description: 
// File Name: testbench.v
// Author: Haoran Geng
// Email: 
// Created Time: Sun 05 Mar 2023 02:08:52 PM CST
// Revision history:
//***************************************************************

`timescale 1ns/1ps

module testbench();
    reg  [1:0] din [3:0];
    reg  [1:0] sel;
    wire [1:0] dout;

    integer i;

    initial begin
        for(i=0;i<4;i=i+1) begin
            din[i] = 3-i;
        end
        sel = 2'b00;
        #10;
        sel = 2'b01;
        #10;
        sel = 2'b10;
        #10;
        sel = 2'b11;
        #10;
        din[3] = 2'b11;
        #10;
    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0,testbench);
    end

    mux42 u_mux42(
        .din(din),
        .sel(sel),
        .dout(dout)
    );

endmodule


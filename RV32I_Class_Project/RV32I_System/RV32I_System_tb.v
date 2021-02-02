//
//  Author: Prof. Taeweon Suh
//          Computer Science & Engineering
//          Korea University
//  Date: June 14, 2020
//  Description: Simple Testbench for simulation 
//               of RV32I-based hardware system
//

`timescale 1ns/1ns

module RV32I_System_tb();

  reg           clk;
  reg           reset;
  wire   [6:0]  hex3;
  wire   [6:0]  hex2;
  wire   [6:0]  hex1;
  wire   [6:0]  hex0;
  wire   [9:0]  ledg;
  wire   [31:0] inst_tb;
  reg    [31:0] pc_tb;
  

  // instantiate device to be tested
  RV32I_System    iRV32I_System (
        .CLOCK_50  (clk),
        .BUTTON    ({2'b00,reset}),
        .SW        (10'b0),
        .HEX3_D    (hex3),
        .HEX2_D    (hex2),
        .HEX1_D    (hex1),
        .HEX0_D    (hex0),
        .LEDG      (ledg)
        .inst      (inst_tb)
        .pc        (pc_tb)
        );

  // Reset
  initial
  begin
    reset <= 1;
		#530; 
		reset <= 0;
  end

  // Clock 
  initial
  begin
    clk <= 0; 
		forever #10 clk <= ~clk;
  end  


  initial begin
    //      inst_tb = fe042623 #600;         //sw	zero,-20(s0)
    //      inst_tb = fec42703 #1;         //lw	a4,-20(s0)
    //      inst_tb = 001007b7 #1;         //lui	a5,0x100
    //      inst_tb = ffe78793 #1;         //addi	a5,a5,-2 # ffffe <stack+0xffbfe>
    //      #2000 inst_tb <= fee7f4e3;         //bgeu instruction
        //  #200 pc <= 0;         //bgeu instruction

  end
endmodule

/************************************************************\
 **  Copyright (c) 2011-2021 Anlogic, Inc.
 **  All Right Reserved.
\************************************************************/
/************************************************************\
 ** Log	:	This file is generated by Anlogic IP Generator.
 ** File	:	C:/Users/zhang/Desktop/Yadan_all/Yadan_core/RTL/al_ip/boot_rom.v
 ** Date	:	2021 08 14
 ** TD version	:	5.0.29524
\************************************************************/

`timescale 1ns / 1ps

module boot_rom ( doa, dia, addra, cea, clka, wea );


	parameter DATA_WIDTH_A = 32; 
	parameter ADDR_WIDTH_A = 13;
	parameter DATA_DEPTH_A = 8192;
	parameter DATA_WIDTH_B = 32;
	parameter ADDR_WIDTH_B = 13;
	parameter DATA_DEPTH_B = 8192;
	parameter REGMODE_A    = "NOREG";
	parameter WRITEMODE_A  = "NORMAL";

	output [DATA_WIDTH_A-1:0] doa;

	input  [DATA_WIDTH_A-1:0] dia;
	input  [ADDR_WIDTH_A-1:0] addra;
	input  wea;
	input  cea;
	input  clka;



	EG_LOGIC_BRAM #( .DATA_WIDTH_A(DATA_WIDTH_A),
				.ADDR_WIDTH_A(ADDR_WIDTH_A),
				.DATA_DEPTH_A(DATA_DEPTH_A),
				.DATA_WIDTH_B(DATA_WIDTH_B),
				.ADDR_WIDTH_B(ADDR_WIDTH_B),
				.DATA_DEPTH_B(DATA_DEPTH_B),
				.MODE("SP"),
				.REGMODE_A(REGMODE_A),
				.WRITEMODE_A(WRITEMODE_A),
				.RESETMODE("SYNC"),
				.IMPLEMENT("9K"),
				.DEBUGGABLE("NO"),
				.PACKABLE("NO"),
				.INIT_FILE("inst_data.mif"),
				.FILL_ALL("NONE"))
			inst(
				.dia(dia),
				.dib({32{1'b0}}),
				.addra(addra),
				.addrb({13{1'b0}}),
				.cea(cea),
				.ceb(1'b0),
				.ocea(1'b0),
				.oceb(1'b0),
				.clka(clka),
				.clkb(1'b0),
				.wea(wea),
				.web(1'b0),
				.bea(1'b0),
				.beb(1'b0),
				.rsta(1'b0),
				.rstb(1'b0),
				.doa(doa),
				.dob());


endmodule
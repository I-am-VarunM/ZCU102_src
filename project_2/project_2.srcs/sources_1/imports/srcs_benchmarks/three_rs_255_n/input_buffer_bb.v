// megafunction wizard: %LPM_RAM_DP%VBB%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: altsyncram 

// ============================================================
// File Name: input_buffer.v
// Megafunction Name(s):
// 			altsyncram
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 5.0 Build 148 04/26/2005 SJ Full Version
// ************************************************************

//Copyright (C) 1991-2005 Altera Corporation
//Your use of Altera Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic       
//functions, and any output files any of the foregoing           
//(including device programming or simulation files), and any    
//associated documentation or information are expressly subject  
//to the terms and conditions of the Altera Program License      
//Subscription Agreement, Altera MegaCore Function License       
//Agreement, or other applicable license agreement, including,   
//without limitation, that your use is for the sole purpose of   
//programming logic devices manufactured by Altera and sold by   
//Altera or its authorized distributors.  Please refer to the    
//applicable agreement for further details.

module input_buffer (
	data,
	wren,
	wraddress,
	rdaddress,
	rden,
	clock,
	q);

	input	[9:0]  data;
	input	  wren;
	input	[10:0]  wraddress;
	input	[10:0]  rdaddress;
	input	  rden;
	input	  clock;
	output	[9:0]  q;

endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: MEM_IN_BITS NUMERIC "1"
// Retrieval info: PRIVATE: OPERATION_MODE NUMERIC "2"
// Retrieval info: PRIVATE: UseDPRAM NUMERIC "1"
// Retrieval info: PRIVATE: VarWidth NUMERIC "0"
// Retrieval info: PRIVATE: WIDTH_WRITE_A NUMERIC "10"
// Retrieval info: PRIVATE: WIDTH_WRITE_B NUMERIC "10"
// Retrieval info: PRIVATE: WIDTH_READ_A NUMERIC "10"
// Retrieval info: PRIVATE: WIDTH_READ_B NUMERIC "10"
// Retrieval info: PRIVATE: MEMSIZE NUMERIC "20480"
// Retrieval info: PRIVATE: RAM_BLOCK_TYPE NUMERIC "0"
// Retrieval info: PRIVATE: MAXIMUM_DEPTH NUMERIC "0"
// Retrieval info: PRIVATE: IMPLEMENT_IN_LES NUMERIC "0"
// Retrieval info: PRIVATE: Clock NUMERIC "0"
// Retrieval info: PRIVATE: rden NUMERIC "1"
// Retrieval info: PRIVATE: BYTE_ENABLE_A NUMERIC "0"
// Retrieval info: PRIVATE: BYTE_ENABLE_B NUMERIC "0"
// Retrieval info: PRIVATE: BYTE_SIZE NUMERIC "8"
// Retrieval info: PRIVATE: Clock_A NUMERIC "0"
// Retrieval info: PRIVATE: Clock_B NUMERIC "0"
// Retrieval info: PRIVATE: REGdata NUMERIC "1"
// Retrieval info: PRIVATE: REGwraddress NUMERIC "1"
// Retrieval info: PRIVATE: REGwren NUMERIC "1"
// Retrieval info: PRIVATE: REGrdaddress NUMERIC "1"
// Retrieval info: PRIVATE: REGrren NUMERIC "1"
// Retrieval info: PRIVATE: REGq NUMERIC "0"
// Retrieval info: PRIVATE: INDATA_REG_B NUMERIC "0"
// Retrieval info: PRIVATE: WRADDR_REG_B NUMERIC "0"
// Retrieval info: PRIVATE: OUTDATA_REG_B NUMERIC "0"
// Retrieval info: PRIVATE: CLRdata NUMERIC "0"
// Retrieval info: PRIVATE: CLRwren NUMERIC "0"
// Retrieval info: PRIVATE: CLRwraddress NUMERIC "0"
// Retrieval info: PRIVATE: CLRrdaddress NUMERIC "0"
// Retrieval info: PRIVATE: CLRrren NUMERIC "0"
// Retrieval info: PRIVATE: CLRq NUMERIC "0"
// Retrieval info: PRIVATE: BYTEENA_ACLR_A NUMERIC "0"
// Retrieval info: PRIVATE: INDATA_ACLR_B NUMERIC "0"
// Retrieval info: PRIVATE: WRCTRL_ACLR_B NUMERIC "0"
// Retrieval info: PRIVATE: WRADDR_ACLR_B NUMERIC "0"
// Retrieval info: PRIVATE: OUTDATA_ACLR_B NUMERIC "0"
// Retrieval info: PRIVATE: BYTEENA_ACLR_B NUMERIC "0"
// Retrieval info: PRIVATE: enable NUMERIC "0"
// Retrieval info: PRIVATE: CLOCK_ENABLE_INPUT_A NUMERIC "0"
// Retrieval info: PRIVATE: CLOCK_ENABLE_OUTPUT_A NUMERIC "0"
// Retrieval info: PRIVATE: CLOCK_ENABLE_INPUT_B NUMERIC "0"
// Retrieval info: PRIVATE: CLOCK_ENABLE_OUTPUT_B NUMERIC "0"
// Retrieval info: PRIVATE: ADDRESSSTALL_A NUMERIC "0"
// Retrieval info: PRIVATE: ADDRESSSTALL_B NUMERIC "0"
// Retrieval info: PRIVATE: READ_DURING_WRITE_MODE_MIXED_PORTS NUMERIC "2"
// Retrieval info: PRIVATE: INIT_TO_SIM_X NUMERIC "0"
// Retrieval info: PRIVATE: BlankMemory NUMERIC "0"
// Retrieval info: PRIVATE: MIFfilename STRING "erasure_generator.mif"
// Retrieval info: PRIVATE: INIT_FILE_LAYOUT STRING "PORT_B"
// Retrieval info: PRIVATE: JTAG_ENABLED NUMERIC "0"
// Retrieval info: PRIVATE: JTAG_ID STRING "NONE"
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Stratix"
// Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "Stratix"
// Retrieval info: CONSTANT: OPERATION_MODE STRING "DUAL_PORT"
// Retrieval info: CONSTANT: WIDTH_A NUMERIC "10"
// Retrieval info: CONSTANT: WIDTHAD_A NUMERIC "11"
// Retrieval info: CONSTANT: NUMWORDS_A NUMERIC "2048"
// Retrieval info: CONSTANT: WIDTH_B NUMERIC "10"
// Retrieval info: CONSTANT: WIDTHAD_B NUMERIC "11"
// Retrieval info: CONSTANT: NUMWORDS_B NUMERIC "2048"
// Retrieval info: CONSTANT: LPM_TYPE STRING "altsyncram"
// Retrieval info: CONSTANT: WIDTH_BYTEENA_A NUMERIC "1"
// Retrieval info: CONSTANT: OUTDATA_REG_B STRING "UNREGISTERED"
// Retrieval info: CONSTANT: INDATA_ACLR_A STRING "NONE"
// Retrieval info: CONSTANT: WRCONTROL_ACLR_A STRING "NONE"
// Retrieval info: CONSTANT: ADDRESS_ACLR_A STRING "NONE"
// Retrieval info: CONSTANT: ADDRESS_REG_B STRING "CLOCK0"
// Retrieval info: CONSTANT: RDCONTROL_REG_B STRING "CLOCK0"
// Retrieval info: CONSTANT: RDCONTROL_ACLR_B STRING "NONE"
// Retrieval info: CONSTANT: ADDRESS_ACLR_B STRING "NONE"
// Retrieval info: CONSTANT: OUTDATA_ACLR_B STRING "NONE"
// Retrieval info: CONSTANT: READ_DURING_WRITE_MODE_MIXED_PORTS STRING "DONT_CARE"
// Retrieval info: CONSTANT: POWER_UP_UNINITIALIZED STRING "FALSE"
// Retrieval info: CONSTANT: INIT_FILE STRING "erasure_generator.mif"
// Retrieval info: USED_PORT: data 0 0 10 0 INPUT NODEFVAL data[9..0]
// Retrieval info: USED_PORT: wren 0 0 0 0 INPUT VCC wren
// Retrieval info: USED_PORT: q 0 0 10 0 OUTPUT NODEFVAL q[9..0]
// Retrieval info: USED_PORT: wraddress 0 0 11 0 INPUT NODEFVAL wraddress[10..0]
// Retrieval info: USED_PORT: rdaddress 0 0 11 0 INPUT NODEFVAL rdaddress[10..0]
// Retrieval info: USED_PORT: rden 0 0 0 0 INPUT VCC rden
// Retrieval info: USED_PORT: clock 0 0 0 0 INPUT NODEFVAL clock
// Retrieval info: CONNECT: @data_a 0 0 10 0 data 0 0 10 0
// Retrieval info: CONNECT: @wren_a 0 0 0 0 wren 0 0 0 0
// Retrieval info: CONNECT: q 0 0 10 0 @q_b 0 0 10 0
// Retrieval info: CONNECT: @address_a 0 0 11 0 wraddress 0 0 11 0
// Retrieval info: CONNECT: @address_b 0 0 11 0 rdaddress 0 0 11 0
// Retrieval info: CONNECT: @rden_b 0 0 0 0 rden 0 0 0 0
// Retrieval info: CONNECT: @clock0 0 0 0 0 clock 0 0 0 0
// Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
// Retrieval info: GEN_FILE: TYPE_NORMAL input_buffer.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL input_buffer.inc FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL input_buffer.cmp FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL input_buffer.bsf TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL input_buffer_inst.v FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL input_buffer_bb.v TRUE

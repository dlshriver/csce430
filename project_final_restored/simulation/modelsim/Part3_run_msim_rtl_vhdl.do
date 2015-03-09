transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/David/Documents/GitHub/csce430/project_final_restored/xor16.vhd}
vcom -93 -work work {C:/Users/David/Documents/GitHub/csce430/project_final_restored/VariousLogic.vhd}
vcom -93 -work work {C:/Users/David/Documents/GitHub/csce430/project_final_restored/sixteenregisterfile.vhd}
vcom -93 -work work {C:/Users/David/Documents/GitHub/csce430/project_final_restored/SixteenBitRippleCarryAdder.vhd}
vcom -93 -work work {C:/Users/David/Documents/GitHub/csce430/project_final_restored/reg16.vhd}
vcom -93 -work work {C:/Users/David/Documents/GitHub/csce430/project_final_restored/Reg_16.vhd}
vcom -93 -work work {C:/Users/David/Documents/GitHub/csce430/project_final_restored/PS.vhd}
vcom -93 -work work {C:/Users/David/Documents/GitHub/csce430/project_final_restored/PC_Temp.vhd}
vcom -93 -work work {C:/Users/David/Documents/GitHub/csce430/project_final_restored/PC.vhd}
vcom -93 -work work {C:/Users/David/Documents/GitHub/csce430/project_final_restored/or16.vhd}
vcom -93 -work work {C:/Users/David/Documents/GitHub/csce430/project_final_restored/MuxPC.vhd}
vcom -93 -work work {C:/Users/David/Documents/GitHub/csce430/project_final_restored/muxMA.vhd}
vcom -93 -work work {C:/Users/David/Documents/GitHub/csce430/project_final_restored/MuxINC.vhd}
vcom -93 -work work {C:/Users/David/Documents/GitHub/csce430/project_final_restored/muxC.vhd}
vcom -93 -work work {C:/Users/David/Documents/GitHub/csce430/project_final_restored/mux16.vhd}
vcom -93 -work work {C:/Users/David/Documents/GitHub/csce430/project_final_restored/mux4.vhd}
vcom -93 -work work {C:/Users/David/Documents/GitHub/csce430/project_final_restored/mux3to1.vhd}
vcom -93 -work work {C:/Users/David/Documents/GitHub/csce430/project_final_restored/mux2to1.vhd}
vcom -93 -work work {C:/Users/David/Documents/GitHub/csce430/project_final_restored/MUX2_1.vhd}
vcom -93 -work work {C:/Users/David/Documents/GitHub/csce430/project_final_restored/mux2.vhd}
vcom -93 -work work {C:/Users/David/Documents/GitHub/csce430/project_final_restored/MainMemory.vhd}
vcom -93 -work work {C:/Users/David/Documents/GitHub/csce430/project_final_restored/IR.vhd}
vcom -93 -work work {C:/Users/David/Documents/GitHub/csce430/project_final_restored/io_mem_sel.vhd}
vcom -93 -work work {C:/Users/David/Documents/GitHub/csce430/project_final_restored/IO_mem_data_sel.vhd}
vcom -93 -work work {C:/Users/David/Documents/GitHub/csce430/project_final_restored/immediate.vhd}
vcom -93 -work work {C:/Users/David/Documents/GitHub/csce430/project_final_restored/FullAdder.vhd}
vcom -93 -work work {C:/Users/David/Documents/GitHub/csce430/project_final_restored/decoder16.vhd}
vcom -93 -work work {C:/Users/David/Documents/GitHub/csce430/project_final_restored/controlUnit2.vhd}
vcom -93 -work work {C:/Users/David/Documents/GitHub/csce430/project_final_restored/const1.vhd}
vcom -93 -work work {C:/Users/David/Documents/GitHub/csce430/project_final_restored/Const.vhd}
vcom -93 -work work {C:/Users/David/Documents/GitHub/csce430/project_final_restored/buffReg16.vhd}
vcom -93 -work work {C:/Users/David/Documents/GitHub/csce430/project_final_restored/and16.vhd}
vcom -93 -work work {C:/Users/David/Documents/GitHub/csce430/project_final_restored/Adder.vhd}
vcom -93 -work work {C:/Users/David/Documents/GitHub/csce430/project_final_restored/iodecoder.vhd}
vcom -93 -work work {C:/Users/David/Documents/GitHub/csce430/project_final_restored/shift.vhd}
vcom -93 -work work {C:/Users/David/Documents/GitHub/csce430/project_final_restored/shift_sel.vhd}
vcom -93 -work work {C:/Users/David/Documents/GitHub/csce430/project_final_restored/RB_select.vhd}
vcom -93 -work work {C:/Users/David/Documents/GitHub/csce430/project_final_restored/const0_4bit.vhd}
vcom -93 -work work {C:/Users/David/Documents/GitHub/csce430/project_final_restored/RA_select.vhd}
vcom -93 -work work {C:/Users/David/Documents/GitHub/csce430/project_final_restored/vgacon.vhd}

do "C:/Users/David/Documents/GitHub/csce430/project_final_restored/Part3.do"

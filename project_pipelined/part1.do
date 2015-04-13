vsim processor
view wave
add wave clock
add wave reset
add wave -radix hex memout
add wave -radix hex PC_instr_addr
add wave -radix hex IR
add wave -radix hex IRexe
add wave -radix hex IRmem
#add wave -radix hex alu_out_mem
#add wave -radix hex regD
add wave r1
add wave r2
add wave r3
add wave r4
add wave r5
#add wave hex0
#add wave sw
#add wave key
#add wave ledg
#add wave n_val
#add wave v_val
#add wave c_val
#add wave z_val
#add wave z_out
#add wave flag_enable_exe
#add wave execute
add wave mem_addr
add wave mem_write_mem
add wave mem_data
add wave forwardB
add wave LEDG
#add wave ID_reset
#add wave execute
#add wave flush
#add wave deassert
#add wave muxymem
#add wave yselect_mem
#add wave yselect
add wave WBreg
#add wave op_code
#add wave cond
#add wave opx

force key 1001 0, 1111 850000, 0011 1150000
force sw 0001001100 0, 0011111100 850000, 0000000000 1000000
force clock 0 0, 1 1000 -repeat 2000

run 40000

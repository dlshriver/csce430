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
add wave r8
add wave r9
add wave r10
add wave r11
add wave r15
#add wave hex0
add wave sw
add wave key
#add wave ledg
add wave n_val
add wave v_val
add wave c_val
add wave z_val
#add wave z_out
#add wave flag_enable_exe
add wave execute
add wave mem_addr
add wave mem_write_mem
add wave mem_data
add wave forwardB
add wave LEDG
#add wave ID_reset
#add wave execute
#add wave flush
#add wave deassert
add wave muxymem
#add wave yselect_mem
#add wave yselect
add wave WBreg
#add wave op_code
#add wave cond
#add wave opx
add wave pc_select
add wave br_addr
add wave br_hit

force key 1111 0
force sw 0000000000 0, 0000000001 1000, 0000000010 2000 -repeat 3000
force clock 0 0, 1 30 -repeat 60

run 100000

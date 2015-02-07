vsim Part2
view wave
add wave Instruction
add wave clock
add wave reset

add wave RZout
add wave N
add wave Z
add wave C
add wave V

force clock 0 0, 1 10 -repeat 20
force reset 0 0

force Instruction 000000000011001100000000 0, 000000000100010000000011 100, 000000000000010100110100 200, 000000000001011001000101 300, 000000000010011101010110 400, 001000000000100001100111 500

run 600
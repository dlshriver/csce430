vsim Part3
view wave


add wave clock
add wave reset

add wave RZout
add wave N
add wave Z
add wave C
add wave V
add wave Address

add wave RYout
add	wave MemDataOut
add wave RMout
add wave LEDR
add wave LEDG
add wave HEX0

force clock 0 0, 1 600 -repeat 1200

force reset 1 0
force SW 0000000101
force KEY 1011


run 15000000
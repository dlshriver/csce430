vsim FullAdder
view wave
add wave A
add wave B
add wave Cin
add wave S
add wave Cout

force Cin 0 0, 1 80 -repeat 160
force A 0 0, 1 40 -repeat 80
force B 0 0, 1 20 -repeat 40

run 320
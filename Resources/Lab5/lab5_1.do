vsim lab5_1
#the name is the same as your design file
view wave
add wave A
add wave B

add wave F
force A 0 0, 1 20 -repeat 40
force B 0 0, 1 40 -repeat 80

run 320
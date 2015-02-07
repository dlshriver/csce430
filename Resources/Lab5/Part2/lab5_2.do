vsim lab5_2 
view wave 
add wave A 
add wave B 
add wave C 
add wave D 
add wave F 
force A 0 0, 1 20 -repeat 40 
force B 0 0, 1 40 -repeat 80 
force C 0 0, 1 80 -repeat 160 
run 320 
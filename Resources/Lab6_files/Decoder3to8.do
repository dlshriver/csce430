vsim Decoder3to8
view wave
add wave S1
add wave S2
add wave S3
add wave f0
add wave f1
add wave f2
add wave f3
add wave f4
add wave f5
add wave f6
add wave f7

force S1 0 0, 1 80 -repeat 160
force S2 0 0, 1 40 -repeat 80
force S3 0 0, 1 20 -repeat 40
run 160
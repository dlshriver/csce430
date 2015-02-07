vsim Multiplexor8to1
view wave
add wave f0
add wave f1
add wave f2
add wave f3
add wave f4
add wave f5
add wave f6
add wave f7
add wave S1
add wave S2
add wave S3
add wave Z

force f0 0 0, 1 100 -repeat 200
force f1 0 0, 1 25 -repeat 50
force f2 0 0, 1 30 -repeat 60
force f3 0 0, 1 35 -repeat 70
force f4 0 0, 1 400 -repeat 800
force f5 0 0, 1 45 -repeat 90
force f6 0 0, 1 50 -repeat 100
force f7 0 0, 1 55 -repeat 110
force S1 0 0, 1 4000 -repeat 8000
force S2 0 0, 1 2000 -repeat 4000
force S3 0 0, 1 1000 -repeat 2000
run 8000
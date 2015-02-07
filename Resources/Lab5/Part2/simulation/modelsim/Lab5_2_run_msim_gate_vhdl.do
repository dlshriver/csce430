transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {Lab5_2.vho}

do Z:/cse230/Lab5/Part2/lab5_2.do

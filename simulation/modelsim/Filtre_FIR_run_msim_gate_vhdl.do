transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {Filtre_FIR.vho}

vcom -93 -work work {C:/Users/Moi/Documents/VHDL/TP5_Filtre_FIR/TP5_Filtre_FIR/Filtre_FIR_tb.vhdl}

vsim -t 1ps -L maxv -L gate_work -L work -voptargs="+acc"  Filtre_FIR_tb

add wave *
view structure
view signals
run 1 ms

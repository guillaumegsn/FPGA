transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Moi/Documents/VHDL/TP5_Filtre_FIR/TP5_Filtre_FIR/Filtre_FIR_package.vhdl}
vcom -93 -work work {C:/Users/Moi/Documents/VHDL/TP5_Filtre_FIR/TP5_Filtre_FIR/Filtre_FIR.vhdl}
vcom -93 -work work {C:/Users/Moi/Documents/VHDL/TP5_Filtre_FIR/TP5_Filtre_FIR/Module_DIV.vhdl}

vcom -93 -work work {C:/Users/Moi/Documents/VHDL/TP5_Filtre_FIR/TP5_Filtre_FIR/Filtre_FIR_tb.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Filtre_FIR_tb

add wave *
view structure
view signals
run 1 ms

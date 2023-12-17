# lancement de la simulation logique : en mode RTL (Register Transfer Level)
vsim rtl_work.Filtre_FIR_tb(tb)


# ajout des signaux d'horloge et de RAZ,
#		des signaux en entrée,
#		des signaux en sortie,
#	    des signaux internes
#    et de l'état
add wave -color cyan   		-height 20 -binary		H_10MHz
add wave -divider
add wave -color white  		-height 20 -binary		RAZ
add wave -divider

add wave -color blue  		-height 20 -binary		DUT/H_MAE
add wave -divider

add wave -color white  		-height 20 -symbolic	DUT/uMAE/etat
add wave -color blue  		-height 20 -binary		DUT/H_FIFO
add wave -color blue  		-height 20 -binary		DUT/H_MAC
add wave -color blue  		-height 20 -binary		DUT/H_REG
add wave -color yellow  	-height 20 -unsigned	DUT/indice


# définition du stimulus

# exécution de la simulation pendant 30 us
run 30 us

# ajustement de la présentation des chronogrammes
WaveRestoreZoom {0} {30 us}
WaveRestoreCursors {0 sec}

# ajout d'un signet

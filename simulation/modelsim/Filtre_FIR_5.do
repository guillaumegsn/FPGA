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
#add wave -color yellow  	-height 20 -unsigned	DUT/indice
add wave -divider

add wave -color orange		-height 40 -unsigned	frequence
#add wave -color orange		-height 20 -unsigned	pulsation
#add wave -color orange		-height 20 -time		t
#add wave -color orange		-height 20 -unsigned	angle
#add wave -color orange		-height 20 -decimal		tension
add wave -divider
add wave -color lightgreen 	-height 20	-decimal 	entree
add wave -divider

add wave -color pink   		-height 20 	-decimal 	FIR_pkg/RAM_Entree
add wave -divider

add wave -color pink   		-height 20 	-decimal 	FIR_pkg/ROM_Coeff
add wave -divider

add wave -color yellow  	-height 20 -unsigned	DUT/indice
add wave -color magenta		-height 20 -decimal		DUT/uMAC/coeff
add wave -color magenta		-height 20 -decimal		DUT/uMAC/valeur
add wave -color gold		-height 20 -decimal		DUT/uMAC/produit
add wave -color gold		-height 20 	-decimal	DUT/somme


# définition du stimulus

# exécution de la simulation pendant 500 us
run 500 us

# ajustement de la présentation des chronogrammes
WaveRestoreZoom {0} {500 us}
WaveRestoreCursors {0 sec}

# ajout d'un signet

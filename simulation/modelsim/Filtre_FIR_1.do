# lancement de la simulation logique : en mode RTL (Register Transfer Level)
vsim rtl_work.Filtre_FIR_tb(tb)


# ajout des signaux d'horloge et de RAZ,
#		des signaux en entr�e,
#		des signaux en sortie,
#	    des signaux internes
#    et de l'�tat
add wave -color cyan   		-height 20 -binary		H_10MHz
add wave -divider

add wave -color turquoise	-height 20 -decimal		DUT/uDIV/decompteur
add wave -color turquoise	-height 20 -binary		DUT/uDIV/horloge
add wave -color blue  		-height 20 -binary		DUT/H_MAE


# d�finition du stimulus

# ex�cution de la simulation pendant 5 us
run 5 us

# ajustement de la pr�sentation des chronogrammes
WaveRestoreZoom {0} {5 us}
WaveRestoreCursors {0 sec}

# ajout d'un signet

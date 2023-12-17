-- =============================================================================
-- Banc d'Essai pour le Projet Filtre_FIR
-- -----------------------------------------------------------------------------
-- GEII S5 ESE - IUT de Chartres


-- =============================================================================
-- Librairies Utilisées

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use ieee.math_real.all;

use std.textio.all; 


use work.FIR_pkg.all;


-- =============================================================================
-- Déclaration de la Structure

entity Filtre_FIR_tb is
end Filtre_FIR_tb;


-- =============================================================================
-- Description du Comportement

architecture tb of Filtre_FIR_tb is

-- Gestion du temps
constant TH_10MHz:time	:= 1.0 sec / real(F_10MHz);	-- Période de l'horloge du kit MAX V à 10 MHz
signal 	H_10MHz:	std_logic   := '0';		-- Horloge du kit MAX V à 10 MHz

-- Initialisation
constant DT_RAZ: 	time	:= 5 us;				-- Durée de la phase d'initialisation par une remise à zéro
constant t0: 		real 	:= real(DT_RAZ / sec);			-- Instant initial
signal 	RAZ:		std_logic	:= '0';		-- Mise à zéro des valeurs mémorisées (si RAZ à 1)

-- Valeur des signaux en entrée et en sortie
signal 	entree:	tData := 0;					-- Valeur en entrée à mémoriser
signal 	sortie:	tData	:= 0;					-- Valeur en sortie

-- Echantillonnage
constant fe: real := real(F_ECH); -- Fréquence d'échantillonnage
constant Te: real := 1.0 / fe; -- Période d'échantillonnage
constant TH_ECH: time := Te * 1.0 sec; -- Période d'échantillonnage
signal H_Ech: std_logic := '1'; -- Horloge pour l'échantillonnage
	
-- Paramétrage d'un signal sinusoïdal en entrée
signal frequence: real := 5000.0;
constant amplitude: real := real(MAX);
signal pulsation: real := MATH_2_PI * frequence * 1.0e-9;
signal t: time := 0 ns;
signal angle: real := 0.0;
signal tension: real := 0.0;

	

-- Fichier pour les résultats 
signal H_Res: std_logic := '0'; 
file fichier_resultat: text open write_mode is "./resultat.csv"; 

begin


	-- ..........................................................................
	-- Connexion des signaux du banc de test (testbench)
	--     au composant testé (DUT = Device Under Test)

	DUT : entity work.Filtre_FIR port map (H_10MHz, RAZ,
														entree,
														sortie);

	-- Variation de la fréquence													
	process begin
        wait for 1 ms;
        frequence <= frequence + 1000.0;
        pulsation <= MATH_2_PI * frequence * 1.0e-9;
    end process;
												
														
	-- ..........................................................................
	-- Horloge 10 MHz
	
	process begin
		H_10MHz <= '1';
		wait for TH_10MHz/2;
		H_10MHz <= '0';
		wait for TH_10MHz/2;
	end process;

	
	-- ..........................................................................
	-- Initialisation
	Init: process begin
	RAZ <= '1';
	wait for DT_RAZ;
	RAZ <= '0';
	wait;
	end process;
	
	

	-- ..........................................................................		
	-- Horloge pour l'échantillonnage
	process begin
		wait for TH_ECH/2;
		H_Ech <= not H_Ech;
	end process;
	
	
	
	-- ..........................................................................
	-- Génération du signal en entrée par le calcul
	process (H_Ech, RAZ)
	variable val_t: time; -- position temporelle du signal généré
	variable val_angle: real; -- position angulaire du signal généré
	variable val_tension: real; -- valeur de la tension du signal généré
	begin
		val_t := now;
		if (RAZ = '1')
		then
			val_angle := 0.0;
		else
			if rising_edge(H_Ech) then
			val_angle := pulsation * real(val_t / ns);
			end if;
		end if;
		val_tension := amplitude * sin(val_angle);
		t <= val_t;
		angle <= val_angle;
		tension <= val_tension;
		entree <= integer(val_tension);
	end process;
	
	-- .......................................................................... 
	-- Ecriture du fichier avec les tensions en entrée et en sortie 
	process 
	variable entete: std_logic := '0'; 
	variable ligne: line; 
	begin 
 
	wait until rising_edge(H_Res); 
 
	if (entete = '0') 
	then 
	write(ligne, string'("t;entree;sortie;frequence")); 
	write(ligne, LF); 
	entete := '1'; 
	end if; 
 
	write(ligne, t, field => 10); 
	write(ligne, string'(";")); 
	write(ligne, entree, field => 4); 
	write(ligne, string'(";")); 
	write(ligne, sortie, field => 4); 
	write(ligne, string'(";")); 
	write(ligne, frequence); 
	writeline(fichier_resultat, ligne); 
	end process; 
	
	-- .......................................................................... 
	-- Horloge pour la sauvegarde des résultats 
	process begin 
	wait for 500 ns; 
	while(true) loop 
	H_Res <= not H_Res; 
	wait for TH_ECH/2; 
	end loop; 
	end process; 
	
end tb;


-- =============================================================================
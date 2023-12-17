-- =============================================================================
-- Filtre Numérique FIR
-- -----------------------------------------------------------------------------
-- GEII ESE S5 - IUT de Chartres


-- =============================================================================
-- Librairies Utilisées

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.FIR_pkg.all;


-- =============================================================================
-- Déclaration de la Structure

entity Filtre_FIR is
	port (
		H_10MHz:		in		std_logic;	-- Horloge du kit MAX V à 10 MHz
		RAZ:			in		std_logic;	-- Mise à zéro asynchrone des valeurs mémorisées (si RAZ à 1)
		entree:		in		tData;		-- Valeur en entrée à mémoriser
		sortie:		out	tData			-- Valeur en sortie
	);
end Filtre_FIR;


-- =============================================================================
-- Description du Comportement

architecture arch_Filtre_FIR of Filtre_FIR is

signal H_MAE:		std_logic;			-- Horloge pour la machine à états et l'échantillonnage
signal H_FIFO:		std_logic;			-- Horloge pour la mémorisation synchrone d'une entrée
signal H_MAC:		std_logic;			-- Horloge pour mettre à jour de la somme pondérée
signal H_REG:		std_logic;			-- Horloge pour mémoriser la valeur de la tension en sortie
signal indice:		tIndex;				-- Indice d'un coefficient et d'une valeur de tension mémorisée
signal somme:		tSomme;				-- Valeur de la somme pondérée

begin

	-- ..........................................................................
	-- Module DIV pour générer l'horloge principale
	--
	uDIV: DIV 	port map(H_10MHz => H_10MHz,
								H_MAE => H_MAE);
	
	-- ..........................................................................
	-- Module MAE pour séquencer par un automate le fonctionnement du filtre FIR
	--
	uMAE: MAE	port map(H_MAE => H_MAE, RAZ => RAZ,
								H_FIFO => H_FIFO,
								H_MAC => H_MAC,
								H_REG => H_REG,
								indice => indice);

	-- ..........................................................................
	-- Module FIFO pour stocker M valeurs (codées sur N bits)
	--
	uFIFO: FIFO port map(H => H_FIFO, RAZ => RAZ,
								entree => entree);

	--sortie <= 0;
	
	-- --------------------------------------------------------------------------
	-- Module MUX (MUltipleXeur)
	--	    pour lire l'une des M valeurs stockées (codées sur N bits)
	--
--	uMUX: MUX	port map(sel => indice,
--							   valeur => sortie);
	
	-- ..........................................................................
	-- Module MAC pour calculer de la somme pondérée de M valeurs (codées sur N bits)
	--
	uMAC: MAC	port map(H => H_MAC, RAZ => H_FIFO,
								indice => indice,
								somme => somme);

	-- ..........................................................................
	-- Module REG pour mémoriser la valeur en sortie (codée sur N bits)
	--
	uREG: REG	port map(H_REG => H_REG, RAZ => RAZ,
								somme => somme,
								sortie => sortie);

								
end arch_Filtre_FIR;


-- =============================================================================

-- =============================================================================
-- Module DIV (Digitally Controlled Oscillator)
--	    pour générer l'horloge principale
-- -----------------------------------------------------------------------------
-- GEII S5 ESE - IUT de Chartres


-- =============================================================================
-- Librairies Utilisées

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.FIR_pkg.all;


-- =============================================================================
-- Déclaration de la Structure

entity DIV is
	port (
		H_10MHz:		in		std_logic;	-- Horloge du kit MAX V à 10 MHz
		H_MAE:		out	std_logic	-- Horloge pour la machine à états et l'échantillonnage
	);
end entity;


-- =============================================================================
-- Description du Comportement

architecture arch_DIV of DIV is

constant	DIVISEUR:	integer := F_10MHz / F_MAE / 2;			-- Nombre de périodes de H_10MHz dans une demi-période de H_MAE
signal	decompteur:	integer range 0 to DIVISEUR-1 := 0;		-- Décompteur des DIVISEUR périodes de H_10MHz pour une demi-période de H_MAE
signal	horloge:		std_logic := '0';								-- Horloge générée

begin

	process begin
		wait until rising_edge(H_10MHz);
		if(decompteur = 0)
		then decompteur <= DIVISEUR - 1;
			horloge <= not horloge;
		else decompteur <= decompteur - 1;
		end if;
	end process;
	
	H_MAE <= horloge;

end arch_DIV;


-- =============================================================================
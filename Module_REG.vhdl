-- =============================================================================
-- Module REG (REGistre) pour mémoriser la valeur en sortie codée sur N bits
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

entity REG is
	port (
		H_REG:		in		std_logic;	-- Horloge pour la machine à états
		RAZ:			in		std_logic;	-- Mise à zéro asynchrone du registre en sortie
		somme:		in		tSomme;		-- Valeur de la somme pondérée
		sortie:		out	tData			-- Valeur mémorisée en délivrée en sortie
	);
end entity;


-- =============================================================================
-- Description du Comportement

architecture arch_REG of REG is
begin
	process (H_REG, RAZ) begin
		if (RAZ = '1')then
			sortie <= 0;
		else
			if	(rising_edge(H_REG)) then
				sortie <= somme / COEFF_Diviseur;			
			end if;
		end if;
	end process;
end arch_REG;


-- =============================================================================
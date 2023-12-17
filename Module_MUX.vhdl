	-- =============================================================================
-- Module MUX (MUltipleXeur)
--     pour lire l'une des M valeurs stockées (codées sur N bits)
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

entity MUX is
	port (	   
		sel:			in		tIndex;		-- Sélection d'une valeur mémorisée
		valeur:		out	tData			-- Valeur sélectionnée en sortie
	);
end entity;


-- =============================================================================
-- Description du Comportement

architecture arch_MUX of MUX is
begin
	process (sel) begin
			valeur <= RAM_Entree(sel);
end process;

end arch_MUX;


-- =============================================================================
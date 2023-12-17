-- =============================================================================
-- Module FIFO (First In First Out)
--     pour stocker M valeurs (codées sur N bits)
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

entity FIFO is
	port (	   
		H:				in		std_logic;	-- Horloge pour la mémorisation synchrone d'une entrée
		RAZ:			in		std_logic;	-- Mise à zéro asynchrone des valeurs mémorisées (si RAZ à 1)
		entree:		in		tData			-- Valeur en entrée à mémoriser
	);
end entity;


-- =============================================================================
-- Description du Comportement

architecture arch_FIFO of FIFO is
begin

	process (H, RAZ)
	begin
		if (RAZ = '1')
		then
			RAM_Entree <= (others => 0);
		else
			if rising_edge(H) then
				for i in M-1 downto 1 loop
					RAM_Entree(i) <= RAM_Entree(i-1);
				end loop;
				RAM_entree(0) <= entree;
			end if;
		end if;
end process;


end arch_FIFO;


-- =============================================================================
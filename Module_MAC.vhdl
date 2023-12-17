-- =============================================================================
-- Module MAC (Multiplier–ACcumulator)
--     pour calculer de la somme pondérée de M valeurs (codées sur N bits)
--
-- somme = Somme de M produits [ coeff(k) x entree(n - k) ] / M
--         pour k de 0 à M-1 = 2^K-1
--
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

entity MAC is
	port (
		H:				in		std_logic;	-- Horloge pour mettre à jour de la somme pondérée
		RAZ:			in		std_logic;	-- Mise à zéro asynchrone des produits et de la somme (si RAZ à 1)
		indice:		in		tIndex;		-- Indice d'un coefficient et d'une valeur de tension mémorisée
		somme:		out	tSomme		-- Valeur de la somme pondérée
	);
end entity;


-- =============================================================================
-- Description du Comportement

architecture arch_MAC of MAC is

signal coeff:		tData;		-- Valeur du coefficient
signal valeur:		tData;		-- Valeur de la tension mémorisée en entrée
signal produit: 	tProduit;	-- produit calculé
signal tamp: 		tSomme;
begin

	process (H,RAZ) begin
		if (RAZ = '1') then
         tamp <= 0;-- Réinitialisation de la somme
      else
			if (rising_edge(H)) then
				coeff <= ROM_Coeff(indice);  -- Lecture du coefficient depuis la ROM_Coeff
            valeur <= RAM_Entree(indice);  -- Lecture de la valeur depuis la RAM_Entree
            produit <= coeff * valeur;  -- Calcul du produit
				tamp <= tamp + produit/8;			-- Calcul de la sommme
				
			end if;
      end if;
	end process;
	somme <= tamp;
	 

end arch_MAC;


-- =============================================================================
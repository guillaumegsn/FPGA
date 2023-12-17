-- =============================================================================
-- Module MAE (Machine A Etats)
--     pour séquencer par un automate le fonctionnement du filtre FIR
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

entity MAE is
	port (
		H_MAE:		in		std_logic;	-- Horloge pour la machine à états
		RAZ:			in		std_logic;	-- Mise à zéro synchrone de la machine à états
		H_FIFO:		out	std_logic;	-- Horloge pour la mémorisation synchrone d'une entrée
		H_MAC:		out	std_logic;	-- Horloge pour mettre à jour de la somme pondérée
		H_REG:		out	std_logic;	-- Horloge pour mémoriser la valeur de la tension en sortie
		indice:		out	tIndex		-- Indice d'un coefficient et d'une valeur de tension mémorisée
	);
end entity;


-- =============================================================================
-- Description du Comportement

architecture arch_MAE of MAE is

-- Machine à Etats avec Codage Symbolique des Etats
type   tEtat is (ETAT_0, ETAT_1, ETAT_2, ETAT_3, ETAT_4, ETAT_5, ETAT_6, ETAT_7, ETAT_8, ETAT_9, ETAT_10);
signal etat: tEtat;

begin

	-- ..........................................................................
	-- Evolution des états
	process begin
		wait until rising_edge(H_MAE);
		if (RAZ = '1') then
			etat <= ETAT_0;
		else
			case etat is
				when ETAT_0 =>
					etat <= ETAT_1;
				when ETAT_1 =>
					etat <= ETAT_2;
				when ETAT_2 =>
					etat <= ETAT_3;
				when ETAT_3 =>
					etat <= ETAT_4;
				when ETAT_4 =>
					etat <= ETAT_5;
				when ETAT_5 =>
					etat <= ETAT_6;
				when ETAT_6 =>
					etat <= ETAT_7;
				when ETAT_7 =>
					etat <= ETAT_8;
				when ETAT_8 =>
					etat <= ETAT_9;
				when ETAT_9 =>
					etat <= ETAT_10;
				when ETAT_10 =>
					etat <= ETAT_1;

				when others =>
					etat <= ETAT_0;
			end case;
		end if;
	end process;


	-- ..........................................................................
	-- Activité des Sorties
	--


	-- Machine de Moore : Equation Indépendante des Entrées
		indice <= 0 when (etat = ETAT_2) else
				 1 when (etat = ETAT_3) else
				 2 when (etat = ETAT_4) else
				 3 when (etat = ETAT_5) else
				 4 when (etat = ETAT_6) else
				 5 when (etat = ETAT_7) else
				 6 when (etat = ETAT_8) else
				 7 when (etat = ETAT_9) else
				 0;

	--     Machine de Mealy : Equations Dépendantes des Entrées
	H_FIFO <= not H_MAE when (etat = ETAT_1) else '0';
	H_MAC  <= not H_MAE when (etat = ETAT_2) or (etat = ETAT_3) or (etat = ETAT_4) or (etat = ETAT_5) or (etat = ETAT_6) or (etat = ETAT_7) or (etat = ETAT_8) or (etat = ETAT_9) else '0';
	H_REG  <= not H_MAE when (etat = ETAT_10) else '0';

end arch_MAE;


-- =============================================================================
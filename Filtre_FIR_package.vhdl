-- =============================================================================
-- Package pour Filtre Numérique FIR
-- -----------------------------------------------------------------------------
--
-- Mémoire morte ROM_Coeff  de M coefficients entiers signés (codés sur N bits)
-- Mémoire vive  RAM_Entree de M valeurs entières signées (codées sur N bits) en entrée
-- Registre      REG_Sortie de 1 valeur  entière  signée  (codée  sur N bits) en sortie
--
-- Module DIV  pour générer l'horloge principale
-- Module MAE  pour séquencer par un automate le fonctionnement du filtre FIR
-- Module FIFO pour stocker M valeurs (codées sur N bits)
-- Module MUX  pour lire l'une des M valeurs stockées (codées sur N bits)
-- Module MAC  pour calculer de la somme pondérée de M valeurs (codées sur N bits)
-- Module REG  pour mémoriser la valeur en sortie (codée sur N bits)
--
-- -----------------------------------------------------------------------------
-- GEII ESE S5 - IUT de Chartres


-- =============================================================================
-- Librairies Utilisées

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


-- =============================================================================
-- Déclaration du Package

package FIR_pkg is


	-- **************************************************************************
	-- Paramétrage : Constantes 
	--

	-- --------------------------------------------------------------------------
	-- Paramétrage : Nombre de bits et Valeurs absolues
	--
	constant N   	: integer := 8;				-- Nombre de bits pour le codage des signaux en entrée, en sortie et des coefficients
	constant M   	: integer := 8;				-- Nombre de valeurs en entrée et de coefficients pour la somme pondérée 

	constant MAX 	: integer := 2**(N-1)-1;	-- Valeur absolue maximale pour les signaux en entrée et en sortie
	constant K   	: integer := 3;				-- Nombre de bits pour coder M = 2**K (à changer selon M !)	
	constant P   	: integer := 2*N;				-- Nombre de bits pour le codage d'un produit d'une entrée et d'un coefficient
	constant P_MAX : integer := 2**(P-1)-1;	-- Valeur absolue maximale pour les signaux en entrée et en sortie
	constant S   	: integer := 2*N+0*K;			-- Nombre de bits pour le codage d'une somme de M produits
	constant S_MAX	: integer := 2**(S-1)-1;	-- Valeur absolue maximale pour les signaux en entrée et en sortie

	-- --------------------------------------------------------------------------
	-- Paramétrage : Fréquences
	--
	constant	F_10MHz:		integer := 10e6;		-- fréquence de l'horloge du kit MAX V à 10 kHz pour la simulation

	constant NB_ETATS:	integer := 10;			-- nombre d'étapes pour un cycle de la machine à états
	constant	F_ECH:		integer := 100e3;		-- fréquence d'échantillonnage (à changer selon F_10MHz !)
	constant	F_MAE:		integer := NB_ETATS*F_ECH;	-- fréquence de cadencement de la machine à états 

	
	-- **************************************************************************
	-- Définition de Types
	--
	subtype tData     	is integer range -MAX to +MAX;
	subtype tIndex    	is integer range 0 to M-1;
	type    tMem_Data 	is array(0 TO M-1) of tData;
	subtype tProduit  	is integer range -P_MAX to +P_MAX;
	subtype tSomme  		is integer range -S_MAX to +S_MAX;

	
	-- **************************************************************************
	-- Mémoires
	--

	-- --------------------------------------------------------------------------
	-- Mémoire morte ROM_Coeff  de M coefficients entiers signés (codés sur N bits)
	--
	constant ROM_Coeff : tMem_Data := (	1, -5, -5, 65, 127, 65, -5, -5 );
	constant	F_COUPURE:			integer := 20e3;		-- fréquence de coupure du fitre FIR
	constant COEFF_Diviseur: 	integer := 34;		-- Somme des valeurs absolues des coefficients(278) passé à 34 car On est sur 8bits au lieu de 9 et 34 est le plus proche entier de la division de 278 par 8
	
	-- --------------------------------------------------------------------------
	-- Mémoire vive  RAM_Entree de M valeurs entières signées (codées sur N bits) en entrée
	--
	signal RAM_Entree : tMem_Data := (others => 0);
	
	-- --------------------------------------------------------------------------
	-- Registre REG_Sortie de 1 valeur  entière  signée  (codée  sur N bits) en sortie
	--
	signal REG_Sortie : tData;


	-- **************************************************************************
	-- Modules
	--

	-- --------------------------------------------------------------------------
	-- Module DIV (Diviseur)
	--	    pour générer l'horloge principale
	--
	component DIV is
	port (
		H_10MHz:		in		std_logic;	-- Horloge du kit MAX V à 10 MHz
		H_MAE:		out	std_logic	-- Horloge pour la machine à états et l'échantillonnage
	);
	end component;

	-- --------------------------------------------------------------------------
	-- Module MAE (Machine A Etats)
	--     pour séquencer par un automate le fonctionnement du filtre FIR
	--
	component MAE is
	port (
		H_MAE:		in		std_logic;	-- Horloge pour la machine à états
		RAZ:			in		std_logic;	-- Mise à zéro synchrone de la machine à états
		H_FIFO:		out	std_logic;	-- Horloge pour la mémorisation synchrone d'une entrée
		H_MAC:		out	std_logic;	-- Horloge pour mettre à jour de la somme pondérée
		H_REG:		out	std_logic;	-- Horloge pour mémoriser la valeur de la tension en sortie
		indice:		out	tIndex		-- Indice d'un coefficient et d'une valeur de tension mémorisée
	);
	end component;

	-- --------------------------------------------------------------------------
	-- Module FIFO (First In First Out)
	--     pour stocker M valeurs (codées sur N bits)
	--
	component FIFO is
	port (	   
		H:				in		std_logic;	-- Horloge pour la mémorisation synchrone d'une entrée
		RAZ:			in		std_logic;	-- Mise à zéro asynchrone des valeurs mémorisées (si RAZ à 1)
		entree:		in		tData			-- Valeur en entrée à mémoriser
	);
	end component;

	-- --------------------------------------------------------------------------
	-- Module MUX (MUltipleXeur)
	--	    pour lire l'une des M valeurs stockées (codées sur N bits)
	--
	component MUX is
	port (	   
		sel:			in		tIndex;		-- Sélection d'une valeur mémorisée
		valeur:		out	tData			-- Valeur sélectionnée en sortie
	);
	end component;
	
	
	-- --------------------------------------------------------------------------
	-- Module MAC (Multiplier–ACcumulator)
	--     pour calculer de la somme pondérée de M valeurs (codées sur N bits)
	--
	component MAC is
	port (
		H:				in		std_logic;	-- Horloge pour mettre à jour de la somme pondérée
		RAZ:			in		std_logic;	-- Mise à zéro asynchrone des produits et de la somme (si RAZ à 1)
		indice:		in		tIndex;		-- Indice d'un coefficient et d'une valeur de tension mémorisée
		somme:		out	tSomme		-- Valeur de la somme pondérée
	);
	end component;

	-- --------------------------------------------------------------------------
	-- Module REG (REGistre)
	--     pour mémoriser la valeur en sortie (codée sur N bits)
	--
	component REG is
	port (
		H_REG:		in		std_logic;	-- Horloge pour la machine à états
		RAZ:			in		std_logic;	-- Mise à zéro asynchrone du registre en sortie
		somme:		in		tSomme;		-- Valeur de la somme pondérée
		sortie:		out	tData			-- Valeur mémorisée en délivrée en sortie
	);
	end component;


end FIR_pkg;


-- =============================================================================
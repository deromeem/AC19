SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `ac19_benevoles` (
  `id` int(11) NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `latitude` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `longitude` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `ac19_catalogues` (
  `id` int(11) NOT NULL,
  `titre` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `description` text NOT NULL DEFAULT '',
  `dateDebut` datetime NOT NULL DEFAULT '2020-01-01 00:00:00',
  `dateFin` datetime NOT NULL DEFAULT '2020-01-01 00:00:00',
  `partenaires_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `ac19_catal_categs` (
  `id` int(11) NOT NULL,
  `catalogues_id` int(11) NOT NULL DEFAULT 1,
  `categories_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `ac19_categories` (
  `id` int(11) NOT NULL,
  `titre` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `description` text NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `ac19_commandes` (
  `id` int(11) NOT NULL,
  `numCde` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `dateHeureCde` datetime NOT NULL DEFAULT '2020-01-01 00:00:00',
  `dateHeureLivr` datetime NOT NULL DEFAULT '2020-01-01 00:00:00',
  `prixTotal` decimal(8,2) NOT NULL,
  `refPaiement` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `particuliers_id` int(11) NOT NULL DEFAULT 1,
  `magasins_id` int(11) NOT NULL DEFAULT 1,
  `etat_cdes_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `ac19_coordinateurs` (
  `id` int(11) NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `ac19_etat_cdes` (
  `id` int(11) NOT NULL,
  `etatCde` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `ac19_ligne_cdes` (
  `id` int(11) NOT NULL,
  `qteCde` int(11) NOT NULL,
  `qteLivr` int(11) NOT NULL,
  `commandes_id` int(11) NOT NULL DEFAULT 1,
  `produits_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `ac19_magasins` (
  `id` int(11) NOT NULL,
  `enseigne` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `adrRue` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `adrVille` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `adrCP` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `latitude` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `longitude` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `type_mags_id` int(11) NOT NULL DEFAULT 1,
  `partenaires_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `ac19_messages` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT '2020-01-01 00:00:00',
  `objet` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `contenu` text NOT NULL DEFAULT '',
  `utilisateurs_aut_id` int(11) NOT NULL DEFAULT 1,
  `utilisateurs_dest_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `ac19_partenaires` (
  `id` int(11) NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `raisonSociale` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `numSiren` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `ac19_particuliers` (
  `id` int(11) NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `adrRue` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `adrVille` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `adrCP` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `latitude` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `longitude` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `ac19_prise_en_charges` (
  `id` int(11) NOT NULL,
  `dateHeureDebut` datetime NOT NULL DEFAULT '2020-01-01 00:00:00',
  `dateHeureFin` datetime NOT NULL DEFAULT '2020-01-01 00:00:00',
  `commandes_id` int(11) NOT NULL DEFAULT 1,
  `benevoles_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `ac19_produits` (
  `id` int(11) NOT NULL,
  `titre` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `description` text NOT NULL DEFAULT '',
  `codeBarre` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `prix` decimal(8,2) NOT NULL,
  `categories_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `ac19_stocks` (
  `id` int(11) NOT NULL,
  `qte` int(11) NOT NULL,
  `magasins_id` int(11) NOT NULL DEFAULT 1,
  `produits_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `ac19_type_mags` (
  `id` int(11) NOT NULL,
  `typeMag` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `ac19_utilisateurs` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `prenom` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `ac19_utilisateurs` (`id`, `nom`, `prenom`, `email`, `tel`) VALUES
(1, '-', '', '', ''),
(2, 'DUPOND', 'Marcel', 'mdupond@19.fr', '0601020304'),
(3, 'JAOUI', 'Sami', 'sjaoui@ac19.fr', '0101010101'),
(4, 'RICHAUD', 'Alma', 'arichaud@ac19.fr', '0102030406'),
(5, 'HOCHON', 'Paul', 'phochon@ac19.fr', '0102030407');


ALTER TABLE `ac19_benevoles`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `ac19_catalogues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ac19_catalogues_partenaires_id` (`partenaires_id`);

ALTER TABLE `ac19_catal_categs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ac19_catal_categs_catalogues_id` (`catalogues_id`),
  ADD KEY `fk_ac19_catal_categs_categories_id` (`categories_id`);

ALTER TABLE `ac19_categories`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `ac19_commandes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ac19_commandes_particuliers_id` (`particuliers_id`),
  ADD KEY `fk_ac19_commandes_etat_cdes_id` (`etat_cdes_id`),
  ADD KEY `fk_ac19_commandes_magasins_id` (`magasins_id`);

ALTER TABLE `ac19_coordinateurs`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `ac19_etat_cdes`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `ac19_ligne_cdes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ac19_ligne_cdes_commandes_id` (`commandes_id`),
  ADD KEY `fk_ac19_ligne_cdes_produits_id` (`produits_id`);

ALTER TABLE `ac19_magasins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ac19_magasins_type_mags_id` (`type_mags_id`),
  ADD KEY `fk_ac19_magasins_partenaires_id` (`partenaires_id`);

ALTER TABLE `ac19_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ac19_messages_utilisateurs_aut_id` (`utilisateurs_aut_id`),
  ADD KEY `fk_ac19_messages_utilisateurs_dest_id` (`utilisateurs_dest_id`);

ALTER TABLE `ac19_partenaires`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `ac19_particuliers`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `ac19_prise_en_charges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ac19_prise_en_charges_commandes_id` (`commandes_id`),
  ADD KEY `fk_ac19_prise_en_charges_benevoles_id` (`benevoles_id`);

ALTER TABLE `ac19_produits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ac19_produits_categories_id` (`categories_id`);

ALTER TABLE `ac19_stocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ac19_stocks_magasins_id` (`magasins_id`),
  ADD KEY `fk_ac19_stocks_produits_id` (`produits_id`);

ALTER TABLE `ac19_type_mags`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `ac19_utilisateurs`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `ac19_benevoles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `ac19_catalogues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `ac19_catal_categs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `ac19_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `ac19_commandes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `ac19_coordinateurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `ac19_etat_cdes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `ac19_ligne_cdes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `ac19_magasins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `ac19_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `ac19_partenaires`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `ac19_particuliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `ac19_prise_en_charges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `ac19_produits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `ac19_stocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `ac19_type_mags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `ac19_utilisateurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;


ALTER TABLE `ac19_catalogues`
  ADD CONSTRAINT `fk_ac19_catalogues_partenaires_id` FOREIGN KEY (`partenaires_id`) REFERENCES `ac19_partenaires` (`id`);

ALTER TABLE `ac19_catal_categs`
  ADD CONSTRAINT `fk_ac19_catal_categs_catalogues_id` FOREIGN KEY (`catalogues_id`) REFERENCES `ac19_catalogues` (`id`),
  ADD CONSTRAINT `fk_ac19_catal_categs_categories_id` FOREIGN KEY (`categories_id`) REFERENCES `ac19_categories` (`id`);

ALTER TABLE `ac19_commandes`
  ADD CONSTRAINT `fk_ac19_commandes_etat_cdes_id` FOREIGN KEY (`etat_cdes_id`) REFERENCES `ac19_etat_cdes` (`id`),
  ADD CONSTRAINT `fk_ac19_commandes_magasins_id` FOREIGN KEY (`magasins_id`) REFERENCES `ac19_magasins` (`id`),
  ADD CONSTRAINT `fk_ac19_commandes_particuliers_id` FOREIGN KEY (`particuliers_id`) REFERENCES `ac19_particuliers` (`id`);

ALTER TABLE `ac19_ligne_cdes`
  ADD CONSTRAINT `fk_ac19_ligne_cdes_commandes_id` FOREIGN KEY (`commandes_id`) REFERENCES `ac19_commandes` (`id`),
  ADD CONSTRAINT `fk_ac19_ligne_cdes_produits_id` FOREIGN KEY (`produits_id`) REFERENCES `ac19_produits` (`id`);

ALTER TABLE `ac19_magasins`
  ADD CONSTRAINT `fk_ac19_magasins_partenaires_id` FOREIGN KEY (`partenaires_id`) REFERENCES `ac19_partenaires` (`id`),
  ADD CONSTRAINT `fk_ac19_magasins_type_mags_id` FOREIGN KEY (`type_mags_id`) REFERENCES `ac19_type_mags` (`id`);

ALTER TABLE `ac19_messages`
  ADD CONSTRAINT `fk_ac19_messages_utilisateurs_aut_id` FOREIGN KEY (`utilisateurs_aut_id`) REFERENCES `ac19_utilisateurs` (`id`),
  ADD CONSTRAINT `fk_ac19_messages_utilisateurs_dest_id` FOREIGN KEY (`utilisateurs_dest_id`) REFERENCES `ac19_utilisateurs` (`id`);

ALTER TABLE `ac19_prise_en_charges`
  ADD CONSTRAINT `fk_ac19_prise_en_charges_benevoles_id` FOREIGN KEY (`benevoles_id`) REFERENCES `ac19_benevoles` (`id`),
  ADD CONSTRAINT `fk_ac19_prise_en_charges_commandes_id` FOREIGN KEY (`commandes_id`) REFERENCES `ac19_commandes` (`id`);

ALTER TABLE `ac19_produits`
  ADD CONSTRAINT `fk_ac19_produits_categories_id` FOREIGN KEY (`categories_id`) REFERENCES `ac19_categories` (`id`);

ALTER TABLE `ac19_stocks`
  ADD CONSTRAINT `fk_ac19_stocks_magasins_id` FOREIGN KEY (`magasins_id`) REFERENCES `ac19_magasins` (`id`),
  ADD CONSTRAINT `fk_ac19_stocks_produits_id` FOREIGN KEY (`produits_id`) REFERENCES `ac19_produits` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `#__ac19_benevoles` (
  `id` int(11) NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `latitude` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `longitude` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL DEFAULT '2020-01-01 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL DEFAULT '2020-01-01 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `hits` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `#__ac19_benevoles` (`id`, `email`, `latitude`, `longitude`, `alias`, `published`, `created`, `created_by`, `modified`, `modified_by`, `hits`) VALUES
(1, '-', '', '', '', 0, '2020-01-01 00:00:00', 669, '2020-01-01 00:00:00', 669, 0),
(2, 'sjaoui@ac19.fr', '48.836764817727065', '2.292722422303131', '', 1, '2020-11-27 16:47:15', 669, '2020-11-27 16:47:15', 669, 0);

CREATE TABLE `#__ac19_catalogues` (
  `id` int(11) NOT NULL,
  `titre` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `description` text NOT NULL DEFAULT '',
  `dateDebut` datetime NOT NULL DEFAULT '2020-01-01 00:00:00',
  `dateFin` datetime NOT NULL DEFAULT '2020-01-01 00:00:00',
  `partenaires_id` int(11) NOT NULL DEFAULT 1,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL DEFAULT '2020-01-01 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL DEFAULT '2020-01-01 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `hits` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `#__ac19_catalogues` (`id`, `titre`, `description`, `dateDebut`, `dateFin`, `partenaires_id`, `alias`, `published`, `created`, `created_by`, `modified`, `modified_by`, `hits`) VALUES
(1, '-', '', '2020-01-01 00:00:00', '2020-01-01 00:00:00', 1, '', 0, '2020-01-01 00:00:00', 669, '2020-01-01 00:00:00', 669, 0);

CREATE TABLE `#__ac19_catal_categs` (
  `id` int(11) NOT NULL,
  `catalogues_id` int(11) NOT NULL DEFAULT 1,
  `categories_id` int(11) NOT NULL DEFAULT 1,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL DEFAULT '2020-01-01 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL DEFAULT '2020-01-01 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `hits` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `#__ac19_catal_categs` (`id`, `catalogues_id`, `categories_id`, `alias`, `published`, `created`, `created_by`, `modified`, `modified_by`, `hits`) VALUES
(1, 1, 1, '', 0, '2020-01-01 00:00:00', 669, '2020-01-01 00:00:00', 669, 0);

CREATE TABLE `#__ac19_categories` (
  `id` int(11) NOT NULL,
  `titre` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `description` text NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL DEFAULT '2020-01-01 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL DEFAULT '2020-01-01 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `hits` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `#__ac19_categories` (`id`, `titre`, `description`, `alias`, `published`, `created`, `created_by`, `modified`, `modified_by`, `hits`) VALUES
(1, '-', '', '', 0, '2020-01-01 00:00:00', 669, '2020-01-01 00:00:00', 669, 0),
(2, 'Fruits et légumes', '', 'fruits_et_legumes', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0),
(3, 'Boucherie', '', 'boucherie', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0),
(4, 'Charcuterie/Traiteur', 'charcuterie_traiteur', '', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0),
(5, 'Poissonnerie', '', 'piossonnerie', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0),
(6, 'Fromages', '', 'fromages', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0),
(7, 'Crèmerie', '', 'cremerie', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0),
(8, 'Pains et pâtisserie', '', 'pains_et_patisserie', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0),
(9, 'Epicerie salée', '', 'epicerie_salee', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0),
(10, 'Epicerie sucrée', '', 'epicerie_sucree', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0),
(11, 'Surgelés', '', 'surgeles', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0),
(12, 'Produits animaliers', '', 'produits_animaliers', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0),
(13, 'Boissons sans alcool', '', 'boissons_sans_alcool', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0),
(14, 'Vins', '', 'vins', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0),
(15, 'Bières et alcools', '', 'bieres_et_alcools', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0),
(16, 'Beauté et hygiène', '', 'beaute_et_hygiene', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0),
(17, 'Produits ménagers', '', 'produits_menagers', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0),
(18, 'Textile', '', 'textile', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0),
(19, 'Maison et jardin', '', 'maison_et_jardin', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0),
(20, 'Multimédia et loisirs', '', 'multimedia_et_loisirs', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0),
(21, 'Bébé', '', 'bebe', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0);

CREATE TABLE `#__ac19_commandes` (
  `id` int(11) NOT NULL,
  `numCde` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `dateHeureCde` datetime NOT NULL DEFAULT '2020-01-01 00:00:00',
  `dateHeureLivr` datetime NOT NULL DEFAULT '2020-01-01 00:00:00',
  `prixTotal` decimal(8,2) NOT NULL DEFAULT 0.00,
  `refPaiement` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `particuliers_id` int(11) NOT NULL DEFAULT 1,
  `magasins_id` int(11) NOT NULL DEFAULT 1,
  `etat_cdes_id` int(11) NOT NULL DEFAULT 1,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL DEFAULT '2020-01-01 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL DEFAULT '2020-01-01 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `hits` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `#__ac19_commandes` (`id`, `numCde`, `dateHeureCde`, `dateHeureLivr`, `prixTotal`, `refPaiement`, `particuliers_id`, `magasins_id`, `etat_cdes_id`, `alias`, `published`, `created`, `created_by`, `modified`, `modified_by`, `hits`) VALUES
(1, '-', '2020-01-01 00:00:00', '2020-01-01 00:00:00', '0.00', '', 1, 1, 1, '', 0, '2020-01-01 00:00:00', 669, '2020-01-01 00:00:00', 669, 0);

CREATE TABLE `#__ac19_coordinateurs` (
  `id` int(11) NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL DEFAULT '2020-01-01 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL DEFAULT '2020-01-01 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `hits` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `#__ac19_coordinateurs` (`id`, `email`, `alias`, `published`, `created`, `created_by`, `modified`, `modified_by`, `hits`) VALUES
(1, '-', '', 0, '2020-01-01 00:00:00', 669, '2020-01-01 00:00:00', 669, 0),
(2, 'arichaud@ac19.fr', 'arichaud', 1, '2020-11-27 16:47:15', 0, '2020-11-27 16:47:15', 0, 0);

CREATE TABLE `#__ac19_etat_cdes` (
  `id` int(11) NOT NULL,
  `etatCde` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL DEFAULT '2020-01-01 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL DEFAULT '2020-01-01 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `hits` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `#__ac19_etat_cdes` (`id`, `etatCde`, `alias`, `published`, `created`, `created_by`, `modified`, `modified_by`, `hits`) VALUES
(1, '1 - Ouverte', 'ouverte', 1, '2020-01-01 00:00:00', 669, '2020-01-01 00:00:00', 669, 0),
(2, '2 - Lancée', 'lancee', 1, '2020-01-01 00:00:00', 669, '2020-01-01 00:00:00', 669, 0),
(3, '3 - Préparée', 'preparee', 1, '2020-01-01 00:00:00', 669, '2020-01-01 00:00:00', 669, 0),
(4, '4 - Expédiée', 'expediee', 1, '2020-01-01 00:00:00', 669, '2020-01-01 00:00:00', 669, 0),
(5, '5 - Livrée', 'livree', 1, '2020-01-01 00:00:00', 669, '2020-01-01 00:00:00', 669, 0),
(6, '6 - Retournée', 'retournee', 1, '2020-01-01 00:00:00', 669, '2020-01-01 00:00:00', 669, 0),
(7, '7 - Annulée', 'annulee', 1, '2020-01-01 00:00:00', 669, '2020-01-01 00:00:00', 669, 0);

CREATE TABLE `#__ac19_ligne_cdes` (
  `id` int(11) NOT NULL,
  `qteCde` int(11) NOT NULL DEFAULT 0,
  `qteLivr` int(11) NOT NULL DEFAULT 0,
  `commandes_id` int(11) NOT NULL DEFAULT 1,
  `produits_id` int(11) NOT NULL DEFAULT 1,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL DEFAULT '2020-01-01 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL DEFAULT '2020-01-01 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `hits` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `#__ac19_ligne_cdes` (`id`, `qteCde`, `qteLivr`, `commandes_id`, `produits_id`, `alias`, `published`, `created`, `created_by`, `modified`, `modified_by`, `hits`) VALUES
(1, 0, 0, 1, 1, '', 0, '2020-01-01 00:00:00', 669, '2020-01-01 00:00:00', 669, 0);

CREATE TABLE `#__ac19_magasins` (
  `id` int(11) NOT NULL,
  `enseigne` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `adrRue` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `adrVille` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `adrCP` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `latitude` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `longitude` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `type_mags_id` int(11) NOT NULL DEFAULT 1,
  `partenaires_id` int(11) NOT NULL DEFAULT 1,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL DEFAULT '2020-01-01 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL DEFAULT '2020-01-01 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `hits` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `#__ac19_magasins` (`id`, `enseigne`, `adrRue`, `adrVille`, `adrCP`, `tel`, `latitude`, `longitude`, `type_mags_id`, `partenaires_id`, `alias`, `published`, `created`, `created_by`, `modified`, `modified_by`, `hits`) VALUES
(1, '-', '', '', '', '', '', '', 1, 1, '', 1, '2020-01-01 00:00:00', 669, '2020-01-01 00:00:00', 669, 0);

CREATE TABLE `#__ac19_messages` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT '2020-01-01 00:00:00',
  `objet` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `contenu` text NOT NULL DEFAULT '',
  `utilisateurs_aut_id` int(11) NOT NULL DEFAULT 1,
  `utilisateurs_dest_id` int(11) NOT NULL DEFAULT 1,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL DEFAULT '2020-01-01 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL DEFAULT '2020-01-01 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `hits` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `#__ac19_messages` (`id`, `date`, `objet`, `contenu`, `utilisateurs_aut_id`, `utilisateurs_dest_id`, `alias`, `published`, `created`, `created_by`, `modified`, `modified_by`, `hits`) VALUES
(1, '2020-01-01 00:00:00', '-', '', 1, 1, '', 0, '2020-01-01 00:00:00', 669, '2020-01-01 00:00:00', 669, 0);

CREATE TABLE `#__ac19_partenaires` (
  `id` int(11) NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `raisonSociale` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `numSiren` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL DEFAULT '2020-01-01 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL DEFAULT '2020-01-01 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `hits` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `#__ac19_partenaires` (`id`, `email`, `raisonSociale`, `numSiren`, `alias`, `published`, `created`, `created_by`, `modified`, `modified_by`, `hits`) VALUES
(1, '-', '', '', '', 0, '2020-01-01 00:00:00', 669, '2020-01-01 00:00:00', 669, 0),
(2, 'phochon@ac19.fr', 'Carrefour', '652 014 051', '', 1, '2020-11-27 16:47:15', 669, '2020-11-27 16:47:15', 669, 0);

CREATE TABLE `#__ac19_particuliers` (
  `id` int(11) NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `adrRue` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `adrVille` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `adrCP` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `latitude` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `longitude` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL DEFAULT '2020-01-01 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL DEFAULT '2020-01-01 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `hits` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `#__ac19_particuliers` (`id`, `email`, `adrRue`, `adrVille`, `adrCP`, `latitude`, `longitude`, `alias`, `published`, `created`, `created_by`, `modified`, `modified_by`, `hits`) VALUES
(1, '-', '', '', '', '', '', '', 0, '2020-01-01 00:00:00', 669, '2020-01-01 00:00:00', 669, 0),
(2, 'mdupond@19.fr', '12 Rue Blomet', 'Paris', '75015', '48.843836112648695', '2.3081649080153337', 'mdupond', 1, '2020-11-27 16:47:15', 669, '2020-11-27 16:47:15', 669, 0);

CREATE TABLE `#__ac19_prise_en_charges` (
  `id` int(11) NOT NULL,
  `dateHeureDebut` datetime NOT NULL DEFAULT '2020-01-01 00:00:00',
  `dateHeureFin` datetime NOT NULL DEFAULT '2020-01-01 00:00:00',
  `commandes_id` int(11) NOT NULL DEFAULT 1,
  `benevoles_id` int(11) NOT NULL DEFAULT 1,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL DEFAULT '2020-01-01 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL DEFAULT '2020-01-01 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `hits` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `#__ac19_prise_en_charges` (`id`, `dateHeureDebut`, `dateHeureFin`, `commandes_id`, `benevoles_id`, `alias`, `published`, `created`, `created_by`, `modified`, `modified_by`, `hits`) VALUES
(1, '2020-01-01 00:00:00', '2020-01-01 00:00:00', 1, 1, '', 0, '2020-01-01 00:00:00', 669, '2020-01-01 00:00:00', 669, 0);

CREATE TABLE `#__ac19_produits` (
  `id` int(11) NOT NULL,
  `titre` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `description` text NOT NULL DEFAULT '',
  `codeBarre` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `prix` decimal(8,2) NOT NULL DEFAULT 0.00,
  `categories_id` int(11) NOT NULL DEFAULT 1,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL DEFAULT '2020-01-01 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL DEFAULT '2020-01-01 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `hits` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `#__ac19_produits` (`id`, `titre`, `description`, `codeBarre`, `prix`, `categories_id`, `alias`, `published`, `created`, `created_by`, `modified`, `modified_by`, `hits`) VALUES
(1, '-', '', '', '0.00', 1, '', 0, '2020-01-01 00:00:00', 669, '2020-01-01 00:00:00', 669, 0);

CREATE TABLE `#__ac19_stocks` (
  `id` int(11) NOT NULL,
  `qte` int(11) NOT NULL DEFAULT 0,
  `magasins_id` int(11) NOT NULL DEFAULT 1,
  `produits_id` int(11) NOT NULL DEFAULT 1,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL DEFAULT '2020-01-01 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL DEFAULT '2020-01-01 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `hits` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `#__ac19_stocks` (`id`, `qte`, `magasins_id`, `produits_id`, `alias`, `published`, `created`, `created_by`, `modified`, `modified_by`, `hits`) VALUES
(1, 0, 1, 1, '', 0, '2020-01-01 00:00:00', 669, '2020-01-01 00:00:00', 669, 0);

CREATE TABLE `#__ac19_type_mags` (
  `id` int(11) NOT NULL,
  `typeMag` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL DEFAULT '2020-01-01 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL DEFAULT '2020-01-01 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `hits` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `#__ac19_type_mags` (`id`, `typeMag`, `alias`, `published`, `created`, `created_by`, `modified`, `modified_by`, `hits`) VALUES
(1, '-', '', 0, '2020-01-01 00:00:00', 669, '2020-01-01 00:00:00', 669, 0),
(2, '1 - Petite surface', 'petite_surface', 1, '2020-01-01 00:00:00', 669, '2020-01-01 00:00:00', 669, 0),
(3, '2 - Moyenne surface', 'moyenne_surface', 1, '2020-01-01 00:00:00', 669, '2020-01-01 00:00:00', 669, 0),
(4, '3 - Grande surface', 'grande_surface', 1, '2020-01-01 00:00:00', 669, '2020-01-01 00:00:00', 669, 0),
(5, '4 - Très grande surface', 'tres_grande_surface', 1, '2020-01-01 00:00:00', 669, '2020-01-01 00:00:00', 669, 0);

CREATE TABLE `#__ac19_utilisateurs` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `prenom` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL DEFAULT '2020-01-01 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL DEFAULT '2020-01-01 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `hits` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `#__ac19_utilisateurs` (`id`, `nom`, `prenom`, `email`, `tel`, `alias`, `published`, `created`, `created_by`, `modified`, `modified_by`, `hits`) VALUES
(1, '-', '', '', '', '', 0, '2018-09-26 15:00:00', 669, '2018-09-26 15:01:00', 669, 0),
(2, 'DUPOND', 'Marcel', 'mdupond@19.fr', '0601020304', 'dupond', 1, '2020-11-25 15:56:10', 669, '2020-11-25 15:56:47', 669, 0),
(3, 'JAOUI', 'Sami', 'sjaoui@ac19.fr', '0101010101', 'zorro', 1, '2020-11-25 15:22:11', 669, '2020-11-25 17:53:53', 669, 0),
(4, 'RICHAUD', 'Alma', 'arichaud@ac19.fr', '0102030406', 'richaud', 1, '2020-11-26 09:40:33', 669, '2020-11-26 08:45:12', 669, 0),
(5, 'HOCHON', 'Paul', 'phochon@ac19.fr', '0102030407', 'hochon', 1, '2020-11-26 08:50:49', 669, '2020-11-26 08:53:17', 669, 0);


ALTER TABLE `#__ac19_benevoles`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `#__ac19_catalogues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_#__ac19_catalogues_partenaires_id` (`partenaires_id`);

ALTER TABLE `#__ac19_catal_categs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_#__ac19_catal_categs_catalogues_id` (`catalogues_id`),
  ADD KEY `fk_#__ac19_catal_categs_categories_id` (`categories_id`);

ALTER TABLE `#__ac19_categories`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `#__ac19_commandes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_#__ac19_commandes_particuliers_id` (`particuliers_id`),
  ADD KEY `fk_#__ac19_commandes_magasins_id` (`magasins_id`),
  ADD KEY `fk_#__ac19_commandes_etat_cdes_id` (`etat_cdes_id`);

ALTER TABLE `#__ac19_coordinateurs`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `#__ac19_etat_cdes`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `#__ac19_ligne_cdes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_#__ac19_ligne_cdes_commandes_id` (`commandes_id`),
  ADD KEY `fk_#__ac19_ligne_cdes_produits_id` (`produits_id`);

ALTER TABLE `#__ac19_magasins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_#__ac19_magasins_type_mags_id` (`type_mags_id`),
  ADD KEY `fk_#__ac19_magasins_partenaires_id` (`partenaires_id`);

ALTER TABLE `#__ac19_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_#__ac19_messages_utilisateurs_aut_id` (`utilisateurs_aut_id`),
  ADD KEY `fk_#__ac19_messages_utilisateurs_dest_id` (`utilisateurs_dest_id`);

ALTER TABLE `#__ac19_partenaires`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `#__ac19_particuliers`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `#__ac19_prise_en_charges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_#__ac19_prise_en_charges_commandes_id` (`commandes_id`),
  ADD KEY `fk_#__ac19_prise_en_charges_benevoles_id` (`benevoles_id`);

ALTER TABLE `#__ac19_produits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_#__ac19_produits_categories_id` (`categories_id`);

ALTER TABLE `#__ac19_stocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_#__ac19_stocks_magasins_id` (`magasins_id`),
  ADD KEY `fk_#__ac19_stocks_produits_id` (`produits_id`);

ALTER TABLE `#__ac19_type_mags`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `#__ac19_utilisateurs`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `#__ac19_benevoles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `#__ac19_catalogues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `#__ac19_catal_categs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `#__ac19_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

ALTER TABLE `#__ac19_commandes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `#__ac19_coordinateurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `#__ac19_etat_cdes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

ALTER TABLE `#__ac19_ligne_cdes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `#__ac19_magasins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `#__ac19_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `#__ac19_partenaires`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `#__ac19_particuliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `#__ac19_prise_en_charges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `#__ac19_produits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `#__ac19_stocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `#__ac19_type_mags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

ALTER TABLE `#__ac19_utilisateurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;


ALTER TABLE `#__ac19_catalogues`
  ADD CONSTRAINT `fk_#__ac19_catalogues_partenaires_id` FOREIGN KEY (`partenaires_id`) REFERENCES `#__ac19_partenaires` (`id`);

ALTER TABLE `#__ac19_catal_categs`
  ADD CONSTRAINT `fk_#__ac19_catal_categs_catalogues_id` FOREIGN KEY (`catalogues_id`) REFERENCES `#__ac19_catalogues` (`id`),
  ADD CONSTRAINT `fk_#__ac19_catal_categs_categories_id` FOREIGN KEY (`categories_id`) REFERENCES `#__ac19_categories` (`id`);

ALTER TABLE `#__ac19_commandes`
  ADD CONSTRAINT `fk_#__ac19_commandes_etat_cdes_id` FOREIGN KEY (`etat_cdes_id`) REFERENCES `#__ac19_etat_cdes` (`id`),
  ADD CONSTRAINT `fk_#__ac19_commandes_magasins_id` FOREIGN KEY (`magasins_id`) REFERENCES `#__ac19_magasins` (`id`),
  ADD CONSTRAINT `fk_#__ac19_commandes_particuliers_id` FOREIGN KEY (`particuliers_id`) REFERENCES `#__ac19_particuliers` (`id`);

ALTER TABLE `#__ac19_ligne_cdes`
  ADD CONSTRAINT `fk_#__ac19_ligne_cdes_commandes_id` FOREIGN KEY (`commandes_id`) REFERENCES `#__ac19_commandes` (`id`),
  ADD CONSTRAINT `fk_#__ac19_ligne_cdes_produits_id` FOREIGN KEY (`produits_id`) REFERENCES `#__ac19_produits` (`id`);

ALTER TABLE `#__ac19_magasins`
  ADD CONSTRAINT `fk_#__ac19_magasins_partenaires_id` FOREIGN KEY (`partenaires_id`) REFERENCES `#__ac19_partenaires` (`id`),
  ADD CONSTRAINT `fk_#__ac19_magasins_type_mags_id` FOREIGN KEY (`type_mags_id`) REFERENCES `#__ac19_type_mags` (`id`);

ALTER TABLE `#__ac19_messages`
  ADD CONSTRAINT `fk_#__ac19_messages_utilisateurs_aut_id` FOREIGN KEY (`utilisateurs_aut_id`) REFERENCES `#__ac19_utilisateurs` (`id`),
  ADD CONSTRAINT `fk_#__ac19_messages_utilisateurs_dest_id` FOREIGN KEY (`utilisateurs_dest_id`) REFERENCES `#__ac19_utilisateurs` (`id`);

ALTER TABLE `#__ac19_prise_en_charges`
  ADD CONSTRAINT `fk_#__ac19_prise_en_charges_benevoles_id` FOREIGN KEY (`benevoles_id`) REFERENCES `#__ac19_benevoles` (`id`),
  ADD CONSTRAINT `fk_#__ac19_prise_en_charges_commandes_id` FOREIGN KEY (`commandes_id`) REFERENCES `#__ac19_commandes` (`id`);

ALTER TABLE `#__ac19_produits`
  ADD CONSTRAINT `fk_#__ac19_produits_categories_id` FOREIGN KEY (`categories_id`) REFERENCES `#__ac19_categories` (`id`);

ALTER TABLE `#__ac19_stocks`
  ADD CONSTRAINT `fk_#__ac19_stocks_magasins_id` FOREIGN KEY (`magasins_id`) REFERENCES `#__ac19_magasins` (`id`),
  ADD CONSTRAINT `fk_#__ac19_stocks_produits_id` FOREIGN KEY (`produits_id`) REFERENCES `#__ac19_produits` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

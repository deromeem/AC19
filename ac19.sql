-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  lun. 03 mai 2021 à 17:03
-- Version du serveur :  10.3.15-MariaDB
-- Version de PHP :  7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `ac19`
--

-- --------------------------------------------------------

--
-- Structure de la table `ac19_ac19_benevoles`
--

CREATE TABLE `ac19_ac19_benevoles` (
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

--
-- Déchargement des données de la table `ac19_ac19_benevoles`
--

INSERT INTO `ac19_ac19_benevoles` (`id`, `email`, `latitude`, `longitude`, `alias`, `published`, `created`, `created_by`, `modified`, `modified_by`, `hits`) VALUES
(1, '-', '-', '-', '', 0, '2020-01-01 00:00:00', 669, '2020-01-01 00:00:00', 669, 0),
(2, 'sjaoui@ac19.fr', '48.836764817727065', '2.292722422303131', '', 1, '2020-11-27 16:47:15', 669, '2020-11-27 16:47:15', 669, 0),
(3, 'jeanPierre.genereux@gmail.com', '59.548478487448', '87.525498494984488', '', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0),
(4, 'Labbe.pierre@sfr.fr', '72.588948468496487', '-78.541894874874', '', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ac19_ac19_catalogues`
--

CREATE TABLE `ac19_ac19_catalogues` (
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

--
-- Déchargement des données de la table `ac19_ac19_catalogues`
--

INSERT INTO `ac19_ac19_catalogues` (`id`, `titre`, `description`, `dateDebut`, `dateFin`, `partenaires_id`, `alias`, `published`, `created`, `created_by`, `modified`, `modified_by`, `hits`) VALUES
(1, '-', '-', '2020-01-01 00:00:00', '2020-01-01 00:00:00', 1, '', 0, '2020-01-01 00:00:00', 669, '2020-01-01 00:00:00', 669, 0),
(2, 'Produits surgelés', 'La catalogue des produits surgelés', '2021-03-30 00:00:00', '2021-05-12 00:00:00', 2, '', 1, '2021-03-30 00:00:00', 0, '2021-03-30 00:00:00', 0, 0),
(3, 'Alimentation générale', 'Les fruits et légumes, viandes et de produits à base de viande, poissons, crustacés et mollusques, pain, pâtisserie et confiserie en magasin spécialisé, boissons, détail alimentaires', '2021-01-01 00:00:00', '2021-04-30 00:00:00', 1, '', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0),
(4, 'Produits de toilette', 'Brosse à dents, papier toilette...', '2021-01-01 00:00:00', '2021-04-30 00:00:00', 2, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(5, 'Produits d’hygiène', 'Les produits d’hygiène', '2021-01-01 00:00:00', '2021-04-30 00:00:00', 1, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(6, 'Produits pharmaceutiques', 'Les produits pharmaceutiques', '2021-02-01 00:00:00', '2021-04-30 00:00:00', 2, '', 1, '2021-02-01 00:00:00', 0, '2021-02-01 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ac19_ac19_catal_categs`
--

CREATE TABLE `ac19_ac19_catal_categs` (
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

--
-- Déchargement des données de la table `ac19_ac19_catal_categs`
--

INSERT INTO `ac19_ac19_catal_categs` (`id`, `catalogues_id`, `categories_id`, `alias`, `published`, `created`, `created_by`, `modified`, `modified_by`, `hits`) VALUES
(1, 1, 1, '', 0, '2020-01-01 00:00:00', 669, '2020-01-01 00:00:00', 669, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ac19_ac19_categories`
--

CREATE TABLE `ac19_ac19_categories` (
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

--
-- Déchargement des données de la table `ac19_ac19_categories`
--

INSERT INTO `ac19_ac19_categories` (`id`, `titre`, `description`, `alias`, `published`, `created`, `created_by`, `modified`, `modified_by`, `hits`) VALUES
(1, '-', '-', '-', 0, '2020-01-01 00:00:00', 669, '2020-01-01 00:00:00', 669, 0),
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

-- --------------------------------------------------------

--
-- Structure de la table `ac19_ac19_commandes`
--

CREATE TABLE `ac19_ac19_commandes` (
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

--
-- Déchargement des données de la table `ac19_ac19_commandes`
--

INSERT INTO `ac19_ac19_commandes` (`id`, `numCde`, `dateHeureCde`, `dateHeureLivr`, `prixTotal`, `refPaiement`, `particuliers_id`, `magasins_id`, `etat_cdes_id`, `alias`, `published`, `created`, `created_by`, `modified`, `modified_by`, `hits`) VALUES
(1, '-', '2020-01-01 00:00:00', '2020-01-01 00:00:00', '0.00', '', 1, 1, 1, '', 0, '2020-01-01 00:00:00', 669, '2020-01-01 00:00:00', 669, 0),
(2, '2', '2020-01-01 00:00:00', '2020-01-01 00:00:00', '50.00', '4', 2, 1, 1, '', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0),
(3, '3', '2020-01-01 00:00:00', '2020-01-01 00:00:00', '70.00', '', 3, 3, 1, '', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0),
(4, '4', '2020-01-01 00:00:00', '2020-01-01 00:00:00', '30.00', '', 5, 2, 5, '', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0),
(5, '5', '2020-01-01 00:00:00', '2020-01-01 00:00:00', '10.00', '', 2, 3, 7, '', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ac19_ac19_coordinateurs`
--

CREATE TABLE `ac19_ac19_coordinateurs` (
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

--
-- Déchargement des données de la table `ac19_ac19_coordinateurs`
--

INSERT INTO `ac19_ac19_coordinateurs` (`id`, `email`, `alias`, `published`, `created`, `created_by`, `modified`, `modified_by`, `hits`) VALUES
(1, '-', '-', 0, '2020-01-01 00:00:00', 669, '2020-01-01 00:00:00', 669, 0),
(2, 'arichaud@ac19.fr', 'arichaud', 1, '2020-11-27 16:47:15', 0, '2020-11-27 16:47:15', 0, 0),
(3, 'pierre.rochard@hotmail.fr', 'rochard', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0),
(4, 'dianthéa.kalos@sfr.fr', 'kalos', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ac19_ac19_etat_cdes`
--

CREATE TABLE `ac19_ac19_etat_cdes` (
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

--
-- Déchargement des données de la table `ac19_ac19_etat_cdes`
--

INSERT INTO `ac19_ac19_etat_cdes` (`id`, `etatCde`, `alias`, `published`, `created`, `created_by`, `modified`, `modified_by`, `hits`) VALUES
(1, '1 - Ouverte', 'ouverte', 1, '2020-01-01 00:00:00', 669, '2020-01-01 00:00:00', 669, 0),
(2, '2 - Lancée', 'lancee', 1, '2020-01-01 00:00:00', 669, '2020-01-01 00:00:00', 669, 0),
(3, '3 - Préparée', 'preparee', 1, '2020-01-01 00:00:00', 669, '2020-01-01 00:00:00', 669, 0),
(4, '4 - Expédiée', 'expediee', 1, '2020-01-01 00:00:00', 669, '2020-01-01 00:00:00', 669, 0),
(5, '5 - Livrée', 'livree', 1, '2020-01-01 00:00:00', 669, '2020-01-01 00:00:00', 669, 0),
(6, '6 - Retournée', 'retournee', 1, '2020-01-01 00:00:00', 669, '2020-01-01 00:00:00', 669, 0),
(7, '7 - Annulée', 'annulee', 1, '2020-01-01 00:00:00', 669, '2020-01-01 00:00:00', 669, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ac19_ac19_ligne_cdes`
--

CREATE TABLE `ac19_ac19_ligne_cdes` (
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

--
-- Déchargement des données de la table `ac19_ac19_ligne_cdes`
--

INSERT INTO `ac19_ac19_ligne_cdes` (`id`, `qteCde`, `qteLivr`, `commandes_id`, `produits_id`, `alias`, `published`, `created`, `created_by`, `modified`, `modified_by`, `hits`) VALUES
(1, 0, 0, 1, 1, '', 0, '2020-01-01 00:00:00', 669, '2020-01-01 00:00:00', 669, 0),
(2, 4, 4, 2, 2, '', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0),
(3, 6, 5, 3, 4, '', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0),
(4, 4, 4, 4, 3, '', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0),
(5, 10, 10, 5, 2, '', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0),
(6, 15, 15, 4, 3, '', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ac19_ac19_magasins`
--

CREATE TABLE `ac19_ac19_magasins` (
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

--
-- Déchargement des données de la table `ac19_ac19_magasins`
--

INSERT INTO `ac19_ac19_magasins` (`id`, `enseigne`, `adrRue`, `adrVille`, `adrCP`, `tel`, `latitude`, `longitude`, `type_mags_id`, `partenaires_id`, `alias`, `published`, `created`, `created_by`, `modified`, `modified_by`, `hits`) VALUES
(1, '-', '-', '-', '-', '-', '-', '-', 1, 1, '-', 0, '2020-01-01 00:00:00', 669, '2020-12-07 16:06:45', 669, 0),
(2, 'Carrefour', ' 4 Rue des potiers', 'Malakoff', '92240', '0607080908', '75.588948468496487', '-70.541894874874', 4, 2, '', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0),
(3, 'BitConnect', '60 Rue Nananan', 'Vitry sur Seine', '94400', '0607583908', '75.588584868496487', '50.8548484894489', 2, 3, '', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0),
(4, 'Casino', '70 Rue des fleurs', 'Bagneux', '92220', '0607084008', '50.544174575487448', '82.525414194984488', 5, 4, '', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ac19_ac19_messages`
--

CREATE TABLE `ac19_ac19_messages` (
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

--
-- Déchargement des données de la table `ac19_ac19_messages`
--

INSERT INTO `ac19_ac19_messages` (`id`, `date`, `objet`, `contenu`, `utilisateurs_aut_id`, `utilisateurs_dest_id`, `alias`, `published`, `created`, `created_by`, `modified`, `modified_by`, `hits`) VALUES
(1, '2020-01-01 00:00:00', '-', '-', 1, 1, '-', 0, '2020-01-01 00:00:00', 669, '2020-01-01 00:00:00', 669, 0),
(2, '2020-12-10 08:36:04', 'Recherche de bénévoles', 'Bonjour,\r\n\r\nnous sommes à la recherche de bénévoles pour contribuer aux actions humanitaires d\'AC19 à Paris.\r\nConnaissez-vous dans votre entourage des personnes qui pourraient être intéressées ?\r\n\r\nMerci d\'avance pour votre réponse.\r\n\r\nCordialement,\r\nAlma RICHAUD\r\nCoordinatrice AC19', 4, 3, '', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0),
(3, '2020-12-10 08:45:27', 'Recherche de bénévoles', 'Bonjour,\r\n\r\nnous sommes à la recherche de bénévoles pour contribuer aux actions humanitaires d\'AC19 à Paris.\r\nConnaissez-vous dans votre entourage des personnes qui pourraient être intéressées ?\r\n\r\nMerci d\'avance pour votre réponse.\r\n\r\nCordialement,\r\nAlma RICHAUD\r\nCoordinatrice AC19', 4, 2, '', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0),
(4, '2020-12-10 08:47:07', 'Vos voisins ont besoin de notre aide', 'Bonjour Monsieur,\r\n\r\nvoici quelques semaines déjà que notre association AC19 vous rend des services à domicile pour vos achats et livraisons de produits de première nécessité.\r\n\r\nDe nouveaux bénévoles venant d\'être recrutés dans votre quartier, nous sommes maintenant en mesure d\'étendre nos services à vos voisins qui en auraient besoin.\r\n\r\nNous serions très heureux de pouvoir aussi les aider. Merci de nous le faire savoir.\r\n\r\nCordialement,\r\nSami JAOUI,\r\nBénévole AC19 - Paris 15e', 3, 2, '', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ac19_ac19_partenaires`
--

CREATE TABLE `ac19_ac19_partenaires` (
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

--
-- Déchargement des données de la table `ac19_ac19_partenaires`
--

INSERT INTO `ac19_ac19_partenaires` (`id`, `email`, `raisonSociale`, `numSiren`, `alias`, `published`, `created`, `created_by`, `modified`, `modified_by`, `hits`) VALUES
(1, '-', '-', '-', '-', 0, '2020-01-01 00:00:00', 669, '2020-12-03 15:51:14', 669, 0),
(2, 'phochon@ac19.fr', 'Carrefour', '652 014 051', 'phochon', 1, '2020-11-27 16:47:15', 669, '2020-11-27 16:47:15', 669, 0),
(3, 'nananan@gmail.com', 'BitConnect', '45454551', 'nananan', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0),
(4, 'satoshi.tajiri@sfr.com', 'Casino', '75284842', 'tajiri', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ac19_ac19_particuliers`
--

CREATE TABLE `ac19_ac19_particuliers` (
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

--
-- Déchargement des données de la table `ac19_ac19_particuliers`
--

INSERT INTO `ac19_ac19_particuliers` (`id`, `email`, `adrRue`, `adrVille`, `adrCP`, `latitude`, `longitude`, `alias`, `published`, `created`, `created_by`, `modified`, `modified_by`, `hits`) VALUES
(1, '-', '-', '-', '-', '-', '-', '-', 0, '2020-01-01 00:00:00', 669, '2020-01-01 00:00:00', 669, 0),
(2, 'mdupond@19.fr', '12 Rue Blomet', 'Paris', '75015', '48.843836112648695', '2.3081649080153337', 'mdupond', 1, '2020-11-27 16:47:15', 669, '2020-11-27 16:47:15', 669, 0),
(3, 'jeff.bezoz@gmail.com', '80 rue de la Sillicon Valley', 'Paris', '75015', '75.588948468496487', '82.525498494984488', 'bezoz', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0),
(5, 'derome.joomla@gmail.com', '321 Rue Lecourbe', 'Paris', '75015', '55.548478487448', '-76.541894874874', 'derome', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ac19_ac19_prise_en_charges`
--

CREATE TABLE `ac19_ac19_prise_en_charges` (
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

--
-- Déchargement des données de la table `ac19_ac19_prise_en_charges`
--

INSERT INTO `ac19_ac19_prise_en_charges` (`id`, `dateHeureDebut`, `dateHeureFin`, `commandes_id`, `benevoles_id`, `alias`, `published`, `created`, `created_by`, `modified`, `modified_by`, `hits`) VALUES
(1, '2020-01-01 00:00:00', '2020-01-01 00:00:00', 1, 1, '', 0, '2020-01-01 00:00:00', 669, '2020-01-01 00:00:00', 669, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ac19_ac19_produits`
--

CREATE TABLE `ac19_ac19_produits` (
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

--
-- Déchargement des données de la table `ac19_ac19_produits`
--

INSERT INTO `ac19_ac19_produits` (`id`, `titre`, `description`, `codeBarre`, `prix`, `categories_id`, `alias`, `published`, `created`, `created_by`, `modified`, `modified_by`, `hits`) VALUES
(1, '-', '', '', '0.00', 1, '', 0, '2020-01-01 00:00:00', 669, '2020-01-01 00:00:00', 669, 0),
(2, 'Poulet', 'Du poulet KFC qui fond dans la bouche', '10212310', '50.00', 4, '', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0),
(3, 'Orange', 'Orange de Guadeloupe.', '1021120', '2.00', 2, '', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0),
(4, 'Nutella BReady', 'Les nouvelles barres chocolaté de Nutella pour des petits déjeuner plein de saveur.', '4877489789', '5.00', 10, '', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ac19_ac19_stocks`
--

CREATE TABLE `ac19_ac19_stocks` (
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

--
-- Déchargement des données de la table `ac19_ac19_stocks`
--

INSERT INTO `ac19_ac19_stocks` (`id`, `qte`, `magasins_id`, `produits_id`, `alias`, `published`, `created`, `created_by`, `modified`, `modified_by`, `hits`) VALUES
(1, 0, 1, 1, '', 0, '2020-01-01 00:00:00', 669, '2020-01-01 00:00:00', 669, 0),
(2, 10, 2, 4, '', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0),
(3, 150, 2, 3, '', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0),
(4, 50, 2, 2, '', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0),
(5, 10, 3, 4, '', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0),
(6, 2, 3, 3, '', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0),
(7, 0, 3, 2, '', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ac19_ac19_type_mags`
--

CREATE TABLE `ac19_ac19_type_mags` (
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

--
-- Déchargement des données de la table `ac19_ac19_type_mags`
--

INSERT INTO `ac19_ac19_type_mags` (`id`, `typeMag`, `alias`, `published`, `created`, `created_by`, `modified`, `modified_by`, `hits`) VALUES
(1, '-', '-', 1, '2020-01-01 00:00:00', 669, '2020-12-07 16:06:29', 669, 0),
(2, '1 - Petite surface', 'petite-surface', 0, '2020-01-01 00:00:00', 669, '2020-12-07 15:46:56', 669, 0),
(3, '2 - Moyenne surface', 'moyenne_surface', 1, '2020-01-01 00:00:00', 669, '2020-01-01 00:00:00', 669, 0),
(4, '3 - Grande surface', 'grande_surface', 1, '2020-01-01 00:00:00', 669, '2020-01-01 00:00:00', 669, 0),
(5, '4 - Très grande surface', 'tres_grande_surface', 1, '2020-01-01 00:00:00', 669, '2020-01-01 00:00:00', 669, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ac19_ac19_utilisateurs`
--

CREATE TABLE `ac19_ac19_utilisateurs` (
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

--
-- Déchargement des données de la table `ac19_ac19_utilisateurs`
--

INSERT INTO `ac19_ac19_utilisateurs` (`id`, `nom`, `prenom`, `email`, `tel`, `alias`, `published`, `created`, `created_by`, `modified`, `modified_by`, `hits`) VALUES
(1, '-', '', '', '', '', 0, '2018-09-26 15:00:00', 669, '2018-09-26 15:01:00', 669, 0),
(2, 'DUPOND', 'Marcel', 'mdupond@ac19.fr', '0601020304', 'dupond', 1, '2020-11-25 15:56:10', 669, '2020-11-25 15:56:47', 669, 0),
(3, 'JAOUI', 'Sami', 'sjaoui@ac19.fr', '0101010101', 'zorro', 1, '2020-11-25 15:22:11', 669, '2020-11-25 17:53:53', 669, 0),
(4, 'RICHAUD', 'Alma', 'arichaud@ac19.fr', '0102030406', 'richaud', 1, '2020-11-26 09:40:33', 669, '2020-11-26 08:45:12', 669, 0),
(5, 'HOCHON', 'Paul', 'phochon@ac19.fr', '0102030407', 'hochon', 1, '2020-11-26 08:50:49', 669, '2020-11-26 08:53:17', 669, 0),
(6, 'PAULE', 'Julie', 'jpaule@ac19.fr', '0102030405', 'paule', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ac19_action_logs`
--

CREATE TABLE `ac19_action_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `message_language_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT 0,
  `item_id` int(11) NOT NULL DEFAULT 0,
  `ip_address` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0.0.0.0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ac19_action_logs`
--

INSERT INTO `ac19_action_logs` (`id`, `message_language_key`, `message`, `log_date`, `extension`, `user_id`, `item_id`, `ip_address`) VALUES
(1, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2020-10-10 17:19:33', 'com_users', 669, 0, 'COM_ACTIONLOGS_DISABLED'),
(2, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":670,\"title\":\"Marcel DUPOND\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=670\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-10-10 17:22:41', 'com_users', 669, 670, 'COM_ACTIONLOGS_DISABLED'),
(3, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CONTACT\",\"id\":1,\"title\":\"Info AC19\",\"itemlink\":\"index.php?option=com_contact&task=contact.edit&id=1\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-10-10 17:23:40', 'com_contact.contact', 669, 1, 'COM_ACTIONLOGS_DISABLED'),
(4, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2020-10-10 17:38:57', 'com_users', 669, 0, 'COM_ACTIONLOGS_DISABLED'),
(5, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":1,\"title\":\"Bienvenue\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-10-10 17:39:58', 'com_content.article', 669, 1, 'COM_ACTIONLOGS_DISABLED'),
(6, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":2,\"title\":\"Actualit\\u00e9s\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-10-10 17:40:25', 'com_content.article', 669, 2, 'COM_ACTIONLOGS_DISABLED'),
(7, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":3,\"title\":\"B\\u00e9n\\u00e9volat\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=3\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-10-10 17:40:35', 'com_content.article', 669, 3, 'COM_ACTIONLOGS_DISABLED'),
(8, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":4,\"title\":\"Mon profil\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=4\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-10-10 17:40:48', 'com_content.article', 669, 4, 'COM_ACTIONLOGS_DISABLED'),
(9, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":4,\"title\":\"Mon profil\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=4\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-10-10 17:41:25', 'com_content.article', 669, 4, 'COM_ACTIONLOGS_DISABLED'),
(10, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__content\"}', '2020-10-10 17:41:25', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(11, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":102,\"title\":\"Bienvenue\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=102\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-10-10 17:42:55', 'com_menus.item', 669, 102, 'COM_ACTIONLOGS_DISABLED'),
(12, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":103,\"title\":\"Actualit\\u00e9s\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=103\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-10-10 17:43:16', 'com_menus.item', 669, 103, 'COM_ACTIONLOGS_DISABLED'),
(13, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":104,\"title\":\"B\\u00e9n\\u00e9volat\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=104\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-10-10 17:43:39', 'com_menus.item', 669, 104, 'COM_ACTIONLOGS_DISABLED'),
(14, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":105,\"title\":\"Mon profil\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=105\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-10-10 17:44:08', 'com_menus.item', 669, 105, 'COM_ACTIONLOGS_DISABLED'),
(15, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":106,\"title\":\"Contact\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=106\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-10-10 17:45:01', 'com_menus.item', 669, 106, 'COM_ACTIONLOGS_DISABLED'),
(16, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"670\",\"username\":\"mdupond\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=670\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2020-10-10 17:45:58', 'com_users', 670, 0, 'COM_ACTIONLOGS_DISABLED'),
(17, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__menu\"}', '2020-10-10 17:47:31', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(18, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UNPUBLISHED', '{\"action\":\"unpublish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":101,\"title\":\"Home\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=101\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-10-10 17:47:31', 'com_menus.item', 669, 101, 'COM_ACTIONLOGS_DISABLED'),
(19, 'PLG_ACTIONLOG_JOOMLA_COMPONENT_CONFIG_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT_CONFIG\",\"id\":\"22\",\"title\":\"com_content\",\"extension_name\":\"com_content\",\"itemlink\":\"index.php?option=com_config&task=component.edit&extension_id=22\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-10-10 17:48:42', 'com_config.component', 669, 22, 'COM_ACTIONLOGS_DISABLED'),
(20, 'PLG_ACTIONLOG_JOOMLA_COMPONENT_CONFIG_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT_CONFIG\",\"id\":\"22\",\"title\":\"com_content\",\"extension_name\":\"com_content\",\"itemlink\":\"index.php?option=com_config&task=component.edit&extension_id=22\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-10-10 17:49:16', 'com_config.component', 669, 22, 'COM_ACTIONLOGS_DISABLED'),
(21, 'PLG_ACTIONLOG_JOOMLA_COMPONENT_CONFIG_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT_CONFIG\",\"id\":\"22\",\"title\":\"com_content\",\"extension_name\":\"com_content\",\"itemlink\":\"index.php?option=com_config&task=component.edit&extension_id=22\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-10-10 17:49:42', 'com_config.component', 669, 22, 'COM_ACTIONLOGS_DISABLED'),
(22, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":9,\"title\":\"protostar - Default (2)\",\"extension_name\":\"protostar - Default (2)\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=9\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-10-10 17:50:12', 'com_templates.style', 669, 9, 'COM_ACTIONLOGS_DISABLED'),
(23, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":9,\"title\":\"protostar - AC19\",\"extension_name\":\"protostar - AC19\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=9\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-10-10 17:50:46', 'com_templates.style', 669, 9, 'COM_ACTIONLOGS_DISABLED'),
(24, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":9,\"title\":\"protostar - AC19\",\"extension_name\":\"protostar - AC19\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=9\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-10-10 17:57:28', 'com_templates.style', 669, 9, 'COM_ACTIONLOGS_DISABLED'),
(25, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":1,\"title\":\"Menu principal\",\"extension_name\":\"Menu principal\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=1\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-10-10 17:59:11', 'com_modules.module', 669, 1, 'COM_ACTIONLOGS_DISABLED'),
(26, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__modules\"}', '2020-10-10 17:59:11', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(27, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":\"670\",\"userid\":\"670\",\"username\":\"mdupond\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=670\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2020-10-10 17:59:26', 'com_users', 670, 670, 'COM_ACTIONLOGS_DISABLED'),
(28, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__modules\"}', '2020-10-10 17:59:41', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(29, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UNPUBLISHED', '{\"action\":\"unpublish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":17,\"title\":\"Fil de navigation\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=17\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-10-10 17:59:41', 'com_modules.module', 669, 17, 'COM_ACTIONLOGS_DISABLED'),
(30, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2020-10-27 13:32:39', 'com_users', 669, 0, 'COM_ACTIONLOGS_DISABLED'),
(31, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"670\",\"username\":\"mdupond\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=670\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2020-10-27 13:34:52', 'com_users', 670, 0, 'COM_ACTIONLOGS_DISABLED'),
(32, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT\",\"id\":10000,\"name\":\"com_annuaire\",\"extension_name\":\"com_annuaire\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-10-27 13:36:10', 'com_installer', 669, 10000, 'COM_ACTIONLOGS_DISABLED'),
(33, 'PLG_ACTIONLOG_JOOMLA_USER_LOGIN_FAILED', '{\"action\":\"login\",\"id\":\"669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2020-10-27 13:59:35', 'com_users', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(34, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2020-10-27 13:59:46', 'com_users', 669, 0, 'COM_ACTIONLOGS_DISABLED'),
(35, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2020-10-27 14:28:05', 'com_users', 669, 0, 'COM_ACTIONLOGS_DISABLED'),
(36, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT\",\"id\":10001,\"name\":\"com_annuaire\",\"extension_name\":\"com_annuaire\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-10-27 14:53:03', 'com_installer', 669, 10001, 'COM_ACTIONLOGS_DISABLED'),
(37, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_UNINSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT\",\"id\":\"10001\",\"name\":\"com_annuaire\",\"extension_name\":\"com_annuaire\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-10-27 15:17:17', 'com_installer', 669, 10001, 'COM_ACTIONLOGS_DISABLED'),
(38, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT\",\"id\":10002,\"name\":\"com_annuaire\",\"extension_name\":\"com_annuaire\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-10-27 15:19:37', 'com_installer', 669, 10002, 'COM_ACTIONLOGS_DISABLED'),
(39, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":\"670\",\"userid\":\"670\",\"username\":\"mdupond\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=670\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2020-10-27 15:20:13', 'com_users', 670, 670, 'COM_ACTIONLOGS_DISABLED'),
(40, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_UNINSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT\",\"id\":\"10002\",\"name\":\"com_annuaire\",\"extension_name\":\"com_annuaire\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-10-27 15:28:35', 'com_installer', 669, 10002, 'COM_ACTIONLOGS_DISABLED'),
(41, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT\",\"id\":10003,\"name\":\"com_annuaire\",\"extension_name\":\"com_annuaire\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-10-27 15:29:38', 'com_installer', 669, 10003, 'COM_ACTIONLOGS_DISABLED'),
(42, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU\",\"id\":2,\"title\":\"Annuaire\",\"itemlink\":\"index.php?option=com_menus&task=menu.edit&id=2\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-10-27 16:01:47', 'com_menus.menu', 669, 2, 'COM_ACTIONLOGS_DISABLED'),
(43, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":90,\"title\":\"Annuaire\",\"extension_name\":\"Annuaire\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=90\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-10-27 16:02:35', 'com_modules.module', 669, 90, 'COM_ACTIONLOGS_DISABLED'),
(44, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"670\",\"username\":\"mdupond\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=670\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2020-10-27 16:03:03', 'com_users', 670, 0, 'COM_ACTIONLOGS_DISABLED'),
(45, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":119,\"title\":\"Entreprises\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=119\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-10-27 16:03:56', 'com_menus.item', 669, 119, 'COM_ACTIONLOGS_DISABLED'),
(46, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":120,\"title\":\"Contacts\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=120\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-10-27 16:04:26', 'com_menus.item', 669, 120, 'COM_ACTIONLOGS_DISABLED'),
(47, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2020-10-27 16:25:09', 'com_users', 669, 0, 'COM_ACTIONLOGS_DISABLED'),
(48, 'PLG_ACTIONLOG_JOOMLA_COMPONENT_CONFIG_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT_CONFIG\",\"id\":\"10003\",\"title\":\"com_annuaire\",\"extension_name\":\"com_annuaire\",\"itemlink\":\"index.php?option=com_config&task=component.edit&extension_id=10003\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-10-27 16:25:41', 'com_config.component', 669, 10003, 'COM_ACTIONLOGS_DISABLED'),
(49, 'PLG_ACTIONLOG_JOOMLA_COMPONENT_CONFIG_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT_CONFIG\",\"id\":\"10003\",\"title\":\"com_annuaire\",\"extension_name\":\"com_annuaire\",\"itemlink\":\"index.php?option=com_config&task=component.edit&extension_id=10003\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-10-27 16:27:19', 'com_config.component', 669, 10003, 'COM_ACTIONLOGS_DISABLED'),
(50, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT\",\"id\":10004,\"name\":\"com_annuaire\",\"extension_name\":\"com_annuaire\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-10-27 16:46:41', 'com_installer', 669, 10004, 'COM_ACTIONLOGS_DISABLED'),
(51, 'PLG_ACTIONLOG_JOOMLA_COMPONENT_CONFIG_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT_CONFIG\",\"id\":\"10004\",\"title\":\"com_annuaire\",\"extension_name\":\"com_annuaire\",\"itemlink\":\"index.php?option=com_config&task=component.edit&extension_id=10004\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-10-27 16:48:07', 'com_config.component', 669, 10004, 'COM_ACTIONLOGS_DISABLED'),
(52, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":\"669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2020-10-27 16:51:09', 'com_users', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(53, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":\"670\",\"userid\":\"670\",\"username\":\"mdupond\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=670\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2020-10-27 16:51:13', 'com_users', 670, 670, 'COM_ACTIONLOGS_DISABLED'),
(54, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2020-11-15 13:58:48', 'com_users', 669, 0, 'COM_ACTIONLOGS_DISABLED'),
(55, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"670\",\"username\":\"mdupond\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=670\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2020-11-15 14:00:16', 'com_users', 670, 0, 'COM_ACTIONLOGS_DISABLED'),
(56, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2020-11-24 07:14:13', 'com_users', 669, 0, 'COM_ACTIONLOGS_DISABLED'),
(57, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2020-11-24 08:42:28', 'com_users', 669, 0, 'COM_ACTIONLOGS_DISABLED'),
(58, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2020-11-24 10:31:54', 'com_users', 669, 0, 'COM_ACTIONLOGS_DISABLED'),
(59, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT\",\"id\":10005,\"name\":\"com_ac19\",\"extension_name\":\"com_ac19\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-11-24 10:32:09', 'com_installer', 669, 10005, 'COM_ACTIONLOGS_DISABLED'),
(60, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2020-11-24 10:52:49', 'com_users', 669, 0, 'COM_ACTIONLOGS_DISABLED'),
(61, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_UNINSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT\",\"id\":\"10005\",\"name\":\"com_ac19\",\"extension_name\":\"com_ac19\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-11-24 10:53:44', 'com_installer', 669, 10005, 'COM_ACTIONLOGS_DISABLED'),
(62, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT\",\"id\":10006,\"name\":\"com_ac19\",\"extension_name\":\"com_ac19\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-11-24 11:04:11', 'com_installer', 669, 10006, 'COM_ACTIONLOGS_DISABLED'),
(63, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2020-11-25 14:10:19', 'com_users', 669, 0, 'COM_ACTIONLOGS_DISABLED'),
(64, 'PLG_ACTIONLOG_JOOMLA_USER_UPDATE', '{\"action\":\"joomlaupdate\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"version\":\"3.9.23\",\"oldversion\":\"3.9.22\"}', '2020-11-25 14:12:29', 'com_joomlaupdate', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(65, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_LANGUAGE\",\"id\":\"602\",\"name\":\"French (France)\",\"extension_name\":\"French (France)\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-11-25 14:20:17', 'com_installer', 669, 602, 'COM_ACTIONLOGS_DISABLED'),
(66, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_LANGUAGE\",\"id\":\"603\",\"name\":\"French (France)\",\"extension_name\":\"French (France)\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-11-25 14:20:17', 'com_installer', 669, 603, 'COM_ACTIONLOGS_DISABLED'),
(67, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PACKAGE\",\"id\":\"803\",\"name\":\"French (fr-FR) Language pack\",\"extension_name\":\"French (fr-FR) Language pack\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-11-25 14:20:17', 'com_installer', 669, 803, 'COM_ACTIONLOGS_DISABLED'),
(68, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2020-11-25 15:06:45', 'com_users', 669, 0, 'COM_ACTIONLOGS_DISABLED'),
(69, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2020-11-25 15:46:33', 'com_users', 669, 0, 'COM_ACTIONLOGS_DISABLED'),
(70, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2020-11-25 16:26:16', 'com_users', 669, 0, 'COM_ACTIONLOGS_DISABLED'),
(71, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2020-11-25 17:23:42', 'com_users', 669, 0, 'COM_ACTIONLOGS_DISABLED'),
(72, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__content\"}', '2020-11-25 18:15:23', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(73, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2020-11-26 07:43:31', 'com_users', 669, 0, 'COM_ACTIONLOGS_DISABLED'),
(74, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__menu\"}', '2020-11-26 07:46:16', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(75, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__content\"}', '2020-11-26 07:47:08', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(76, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__content\"}', '2020-11-26 08:10:47', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(77, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__menu\"}', '2020-11-26 08:16:36', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(78, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2020-11-26 08:34:59', 'com_users', 669, 0, 'COM_ACTIONLOGS_DISABLED'),
(79, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2020-11-27 18:27:07', 'com_users', 669, 0, 'COM_ACTIONLOGS_DISABLED'),
(80, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2020-11-27 19:04:52', 'com_users', 669, 0, 'COM_ACTIONLOGS_DISABLED'),
(81, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_UNINSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT\",\"id\":\"10006\",\"name\":\"com_ac19\",\"extension_name\":\"com_ac19\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-11-27 19:05:56', 'com_installer', 669, 10006, 'COM_ACTIONLOGS_DISABLED'),
(82, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT\",\"id\":10007,\"name\":\"com_ac19\",\"extension_name\":\"com_ac19\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-11-27 19:07:13', 'com_installer', 669, 10007, 'COM_ACTIONLOGS_DISABLED'),
(83, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2020-11-28 16:49:06', 'com_users', 669, 0, 'COM_ACTIONLOGS_DISABLED'),
(84, 'PLG_ACTIONLOG_JOOMLA_USER_LOGIN_FAILED', '{\"action\":\"login\",\"id\":\"670\",\"userid\":\"670\",\"username\":\"mdupond\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=670\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2020-11-28 16:49:35', 'com_users', 670, 670, 'COM_ACTIONLOGS_DISABLED'),
(85, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"670\",\"username\":\"mdupond\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=670\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2020-11-28 16:49:44', 'com_users', 670, 0, 'COM_ACTIONLOGS_DISABLED'),
(86, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__modules\"}', '2020-11-28 16:55:23', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(87, 'PLG_ACTIONLOG_JOOMLA_COMPONENT_CONFIG_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT_CONFIG\",\"id\":\"25\",\"title\":\"com_users\",\"extension_name\":\"com_users\",\"itemlink\":\"index.php?option=com_config&task=component.edit&extension_id=25\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-11-28 16:55:51', 'com_config.component', 669, 25, 'COM_ACTIONLOGS_DISABLED'),
(88, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":\"670\",\"userid\":\"670\",\"username\":\"mdupond\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=670\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2020-11-28 16:56:01', 'com_users', 670, 670, 'COM_ACTIONLOGS_DISABLED'),
(89, 'PLG_ACTIONLOG_JOOMLA_USER_REGISTERED', '{\"action\":\"register\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":671,\"title\":\"Julie PAULE\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=671\",\"userid\":671,\"username\":\"jpaule\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=671\"}', '2020-11-28 16:58:24', 'com_users', 671, 671, 'COM_ACTIONLOGS_DISABLED'),
(90, 'PLG_ACTIONLOG_JOOMLA_COMPONENT_CONFIG_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT_CONFIG\",\"id\":\"25\",\"title\":\"com_users\",\"extension_name\":\"com_users\",\"itemlink\":\"index.php?option=com_config&task=component.edit&extension_id=25\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-11-28 16:58:40', 'com_config.component', 669, 25, 'COM_ACTIONLOGS_DISABLED'),
(91, 'PLG_ACTIONLOG_JOOMLA_USER_LOGIN_FAILED', '{\"action\":\"login\",\"id\":\"671\",\"userid\":\"671\",\"username\":\"jpaule\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=671\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2020-11-28 17:01:18', 'com_users', 671, 671, 'COM_ACTIONLOGS_DISABLED'),
(92, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"671\",\"title\":\"Julie PAULE\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=671\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-11-28 17:01:39', 'com_users', 669, 671, 'COM_ACTIONLOGS_DISABLED'),
(93, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"671\",\"username\":\"jpaule\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=671\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2020-11-28 17:01:54', 'com_users', 671, 0, 'COM_ACTIONLOGS_DISABLED'),
(94, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"671\",\"title\":\"Julie PAULE\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=671\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-11-28 17:03:30', 'com_users', 669, 671, 'COM_ACTIONLOGS_DISABLED'),
(95, 'PLG_ACTIONLOG_JOOMLA_USER_LOGIN_FAILED', '{\"action\":\"login\",\"id\":\"671\",\"userid\":\"671\",\"username\":\"jpaule\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=671\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2020-11-28 17:03:45', 'com_users', 671, 671, 'COM_ACTIONLOGS_DISABLED'),
(96, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"671\",\"title\":\"Julie PAULE\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=671\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-11-28 17:04:02', 'com_users', 669, 671, 'COM_ACTIONLOGS_DISABLED'),
(97, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER_GROUP\",\"id\":10,\"title\":\"AC19 - Coordinateur\",\"itemlink\":\"index.php?option=com_users&task=group.edit&id=10\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-11-28 17:05:54', 'com_users', 669, 10, 'COM_ACTIONLOGS_DISABLED'),
(98, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER_GROUP\",\"id\":11,\"title\":\"AC19 - B\\u00e9n\\u00e9vole\",\"itemlink\":\"index.php?option=com_users&task=group.edit&id=11\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-11-28 17:06:29', 'com_users', 669, 11, 'COM_ACTIONLOGS_DISABLED'),
(99, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER_GROUP\",\"id\":12,\"title\":\"AC19 - Partenaire\",\"itemlink\":\"index.php?option=com_users&task=group.edit&id=12\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-11-28 17:06:48', 'com_users', 669, 12, 'COM_ACTIONLOGS_DISABLED'),
(100, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER_GROUP\",\"id\":13,\"title\":\"AC19 - Particulier\",\"itemlink\":\"index.php?option=com_users&task=group.edit&id=13\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-11-28 17:07:04', 'com_users', 669, 13, 'COM_ACTIONLOGS_DISABLED'),
(101, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER_GROUP\",\"id\":11,\"title\":\"AC19 - B\\u00e9n\\u00e9vole\",\"itemlink\":\"index.php?option=com_users&task=group.edit&id=11\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-11-28 17:07:13', 'com_users', 669, 11, 'COM_ACTIONLOGS_DISABLED'),
(102, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":672,\"title\":\"Alma RICHAUD\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=672\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-11-28 17:09:04', 'com_users', 669, 672, 'COM_ACTIONLOGS_DISABLED'),
(103, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":673,\"title\":\"Sami JAOUI\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=673\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-11-28 17:11:24', 'com_users', 669, 673, 'COM_ACTIONLOGS_DISABLED'),
(104, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":671,\"title\":\"Julie PAULE\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=671\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-11-28 17:12:06', 'com_users', 669, 671, 'COM_ACTIONLOGS_DISABLED'),
(105, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":670,\"title\":\"Marcel DUPOND\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=670\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-11-28 17:12:51', 'com_users', 669, 670, 'COM_ACTIONLOGS_DISABLED'),
(106, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":674,\"title\":\"Paul HOCHON\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=674\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2020-11-28 17:16:05', 'com_users', 669, 674, 'COM_ACTIONLOGS_DISABLED'),
(107, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"672\",\"username\":\"arichaud\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=672\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2020-11-28 17:19:11', 'com_users', 672, 0, 'COM_ACTIONLOGS_DISABLED'),
(108, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2020-12-03 14:20:31', 'com_users', 669, 0, 'COM_ACTIONLOGS_DISABLED'),
(109, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2020-12-03 14:51:49', 'com_users', 669, 0, 'COM_ACTIONLOGS_DISABLED'),
(110, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2020-12-03 15:13:14', 'com_users', 669, 0, 'COM_ACTIONLOGS_DISABLED'),
(111, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2020-12-03 17:02:00', 'com_users', 669, 0, 'COM_ACTIONLOGS_DISABLED'),
(112, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2020-12-03 17:27:11', 'com_users', 669, 0, 'COM_ACTIONLOGS_DISABLED'),
(113, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2020-12-07 14:04:05', 'com_users', 669, 0, 'COM_ACTIONLOGS_DISABLED'),
(114, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2020-12-07 14:49:16', 'com_users', 669, 0, 'COM_ACTIONLOGS_DISABLED'),
(115, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2020-12-07 15:08:01', 'com_users', 669, 0, 'COM_ACTIONLOGS_DISABLED'),
(116, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2020-12-07 15:43:49', 'com_users', 669, 0, 'COM_ACTIONLOGS_DISABLED'),
(117, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2020-12-07 16:58:55', 'com_users', 669, 0, 'COM_ACTIONLOGS_DISABLED'),
(118, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2020-12-14 15:15:44', 'com_users', 669, 0, 'COM_ACTIONLOGS_DISABLED'),
(119, 'PLG_ACTIONLOG_JOOMLA_USER_LOGIN_FAILED', '{\"action\":\"login\",\"id\":\"669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2021-03-16 15:15:54', 'com_users', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(120, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2021-03-16 15:16:01', 'com_users', 669, 0, 'COM_ACTIONLOGS_DISABLED'),
(121, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"670\",\"username\":\"mdupond\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=670\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2021-03-16 15:21:10', 'com_users', 670, 0, 'COM_ACTIONLOGS_DISABLED'),
(122, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2021-03-16 15:59:59', 'com_users', 669, 0, 'COM_ACTIONLOGS_DISABLED'),
(123, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2021-03-16 16:45:48', 'com_users', 669, 0, 'COM_ACTIONLOGS_DISABLED'),
(124, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":105,\"title\":\"Mon profil\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=105\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-16 16:47:01', 'com_menus.item', 669, 105, 'COM_ACTIONLOGS_DISABLED'),
(125, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__menu\"}', '2021-03-16 16:47:01', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(126, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU\",\"id\":3,\"title\":\"AC19_Particulier\",\"itemlink\":\"index.php?option=com_menus&task=menu.edit&id=3\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-16 17:01:56', 'com_menus.menu', 669, 3, 'COM_ACTIONLOGS_DISABLED'),
(127, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU\",\"id\":4,\"title\":\"AC19_B\\u00e9n\\u00e9vole\",\"itemlink\":\"index.php?option=com_menus&task=menu.edit&id=4\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-16 17:02:25', 'com_menus.menu', 669, 4, 'COM_ACTIONLOGS_DISABLED'),
(128, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU\",\"id\":5,\"title\":\"AC19_Coordinateur\",\"itemlink\":\"index.php?option=com_menus&task=menu.edit&id=5\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-16 17:02:46', 'com_menus.menu', 669, 5, 'COM_ACTIONLOGS_DISABLED'),
(129, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU\",\"id\":6,\"title\":\"AC19_Partenaire\",\"itemlink\":\"index.php?option=com_menus&task=menu.edit&id=6\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-16 17:03:02', 'com_menus.menu', 669, 6, 'COM_ACTIONLOGS_DISABLED'),
(130, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":146,\"title\":\"Catalogues\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=146\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-16 17:04:57', 'com_menus.item', 669, 146, 'COM_ACTIONLOGS_DISABLED'),
(131, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":147,\"title\":\"Mes Commandes\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=147\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-16 17:05:16', 'com_menus.item', 669, 147, 'COM_ACTIONLOGS_DISABLED'),
(132, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":148,\"title\":\"Mes Livraisons\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=148\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-16 17:05:30', 'com_menus.item', 669, 148, 'COM_ACTIONLOGS_DISABLED');
INSERT INTO `ac19_action_logs` (`id`, `message_language_key`, `message`, `log_date`, `extension`, `user_id`, `item_id`, `ip_address`) VALUES
(133, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":91,\"title\":\"Espace Particulier\",\"extension_name\":\"Espace Particulier\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=91\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-16 17:07:35', 'com_modules.module', 669, 91, 'COM_ACTIONLOGS_DISABLED'),
(134, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__modules\"}', '2021-03-16 17:08:06', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(135, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__modules\"}', '2021-03-16 17:10:50', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(136, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ACCESS_LEVEL\",\"id\":7,\"title\":\"AC19_Particulier\",\"itemlink\":\"index.php?option=com_users&task=level.edit&id=7\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-16 17:11:24', 'com_users.level', 669, 7, 'COM_ACTIONLOGS_DISABLED'),
(137, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":91,\"title\":\"Espace Particulier\",\"extension_name\":\"Espace Particulier\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=91\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-16 17:11:42', 'com_modules.module', 669, 91, 'COM_ACTIONLOGS_DISABLED'),
(138, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__modules\"}', '2021-03-16 17:11:42', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(139, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__modules\"}', '2021-03-16 17:11:52', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(140, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ACCESS_LEVEL\",\"id\":7,\"title\":\"AC19_Particulier\",\"itemlink\":\"index.php?option=com_users&task=level.edit&id=7\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-16 17:12:16', 'com_users.level', 669, 7, 'COM_ACTIONLOGS_DISABLED'),
(141, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":\"670\",\"userid\":\"670\",\"username\":\"mdupond\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=670\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2021-03-16 17:12:22', 'com_users', 670, 670, 'COM_ACTIONLOGS_DISABLED'),
(142, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"674\",\"username\":\"phochon\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=674\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2021-03-16 17:12:47', 'com_users', 674, 0, 'COM_ACTIONLOGS_DISABLED'),
(143, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":\"674\",\"userid\":\"674\",\"username\":\"phochon\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=674\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2021-03-16 17:12:51', 'com_users', 674, 674, 'COM_ACTIONLOGS_DISABLED'),
(144, 'PLG_ACTIONLOG_JOOMLA_USER_LOGIN_FAILED', '{\"action\":\"login\",\"id\":\"670\",\"userid\":\"670\",\"username\":\"mdupond\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=670\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2021-03-16 17:12:56', 'com_users', 670, 670, 'COM_ACTIONLOGS_DISABLED'),
(145, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"670\",\"username\":\"mdupond\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=670\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2021-03-16 17:13:01', 'com_users', 670, 0, 'COM_ACTIONLOGS_DISABLED'),
(146, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__modules\"}', '2021-03-16 17:15:46', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(147, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":92,\"title\":\"Espace B\\u00e9n\\u00e9vole\",\"extension_name\":\"Espace B\\u00e9n\\u00e9vole\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=92\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-16 17:16:25', 'com_modules.module', 669, 92, 'COM_ACTIONLOGS_DISABLED'),
(148, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":93,\"title\":\"Espace Coordinateur\",\"extension_name\":\"Espace Coordinateur\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=93\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-16 17:16:59', 'com_modules.module', 669, 93, 'COM_ACTIONLOGS_DISABLED'),
(149, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":92,\"title\":\"Espace B\\u00e9n\\u00e9vole\",\"extension_name\":\"Espace B\\u00e9n\\u00e9vole\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=92\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-16 17:17:06', 'com_modules.module', 669, 92, 'COM_ACTIONLOGS_DISABLED'),
(150, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__modules\"}', '2021-03-16 17:17:06', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(151, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":94,\"title\":\"Espace Partenaire\",\"extension_name\":\"Espace Partenaire\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=94\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-16 17:17:23', 'com_modules.module', 669, 94, 'COM_ACTIONLOGS_DISABLED'),
(152, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":149,\"title\":\"Particulier_Catalogues\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=149\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-16 17:19:17', 'com_menus.item', 669, 149, 'COM_ACTIONLOGS_DISABLED'),
(153, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":150,\"title\":\"Particulier_Commandes\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=150\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-16 17:19:47', 'com_menus.item', 669, 150, 'COM_ACTIONLOGS_DISABLED'),
(154, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ACCESS_LEVEL\",\"id\":8,\"title\":\"AC19_B\\u00e9n\\u00e9vole\",\"itemlink\":\"index.php?option=com_users&task=level.edit&id=8\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-16 17:21:14', 'com_users.level', 669, 8, 'COM_ACTIONLOGS_DISABLED'),
(155, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ACCESS_LEVEL\",\"id\":9,\"title\":\"AC19_Coordinateur\",\"itemlink\":\"index.php?option=com_users&task=level.edit&id=9\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-16 17:21:23', 'com_users.level', 669, 9, 'COM_ACTIONLOGS_DISABLED'),
(156, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ACCESS_LEVEL\",\"id\":10,\"title\":\"AC19_Partenaire\",\"itemlink\":\"index.php?option=com_users&task=level.edit&id=10\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-16 17:21:48', 'com_users.level', 669, 10, 'COM_ACTIONLOGS_DISABLED'),
(157, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__modules\"}', '2021-03-16 17:22:25', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(158, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":93,\"title\":\"Espace Coordinateur\",\"extension_name\":\"Espace Coordinateur\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=93\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-16 17:22:32', 'com_modules.module', 669, 93, 'COM_ACTIONLOGS_DISABLED'),
(159, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__modules\"}', '2021-03-16 17:22:32', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(160, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":94,\"title\":\"Espace Partenaire\",\"extension_name\":\"Espace Partenaire\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=94\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-16 17:22:38', 'com_modules.module', 669, 94, 'COM_ACTIONLOGS_DISABLED'),
(161, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__modules\"}', '2021-03-16 17:22:38', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(162, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":91,\"title\":\"Espace Particulier\",\"extension_name\":\"Espace Particulier\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=91\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-16 17:22:45', 'com_modules.module', 669, 91, 'COM_ACTIONLOGS_DISABLED'),
(163, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__modules\"}', '2021-03-16 17:22:45', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(164, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":92,\"title\":\"Espace B\\u00e9n\\u00e9vole\",\"extension_name\":\"Espace B\\u00e9n\\u00e9vole\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=92\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-16 17:23:03', 'com_modules.module', 669, 92, 'COM_ACTIONLOGS_DISABLED'),
(165, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__modules\"}', '2021-03-16 17:23:03', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(166, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":149,\"title\":\"Partenaire_Catalogues\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=149\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-16 17:24:34', 'com_menus.item', 669, 149, 'COM_ACTIONLOGS_DISABLED'),
(167, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__menu\"}', '2021-03-16 17:24:34', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(168, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":146,\"title\":\"Particulier_Catalogues\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=146\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-16 17:25:49', 'com_menus.item', 669, 146, 'COM_ACTIONLOGS_DISABLED'),
(169, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__menu\"}', '2021-03-16 17:25:49', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(170, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__menu\"}', '2021-03-16 17:25:55', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(171, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_TRASHED', '{\"action\":\"trash\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":150,\"title\":\"Particulier_Commandes\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=150\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-16 17:25:55', 'com_menus.item', 669, 150, 'COM_ACTIONLOGS_DISABLED'),
(172, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":147,\"title\":\"Particulier_Mes_Commandes\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=147\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-16 17:26:15', 'com_menus.item', 669, 147, 'COM_ACTIONLOGS_DISABLED'),
(173, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__menu\"}', '2021-03-16 17:26:15', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(174, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":148,\"title\":\"Particulier_Mes_Livraisons\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=148\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-16 17:26:28', 'com_menus.item', 669, 148, 'COM_ACTIONLOGS_DISABLED'),
(175, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__menu\"}', '2021-03-16 17:26:28', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(176, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2021-03-18 14:47:44', 'com_users', 669, 0, 'COM_ACTIONLOGS_DISABLED'),
(177, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__modules\"}', '2021-03-18 14:51:57', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(178, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":151,\"title\":\"Mes Messages\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=151\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-18 14:52:27', 'com_menus.item', 669, 151, 'COM_ACTIONLOGS_DISABLED'),
(179, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":148,\"title\":\"Particulier_Livraisons\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=148\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-18 14:52:56', 'com_menus.item', 669, 148, 'COM_ACTIONLOGS_DISABLED'),
(180, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__menu\"}', '2021-03-18 14:52:56', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(181, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":152,\"title\":\"B\\u00e9n\\u00e9vole_Catalogues\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=152\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-18 14:53:47', 'com_menus.item', 669, 152, 'COM_ACTIONLOGS_DISABLED'),
(182, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":152,\"title\":\"B\\u00e9n\\u00e9vole_Catalogues\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=152\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-18 14:54:21', 'com_menus.item', 669, 152, 'COM_ACTIONLOGS_DISABLED'),
(183, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":153,\"title\":\"B\\u00e9n\\u00e9vole_Commandes\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=153\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-18 14:54:53', 'com_menus.item', 669, 153, 'COM_ACTIONLOGS_DISABLED'),
(184, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":154,\"title\":\"B\\u00e9n\\u00e9vole_Mes_Livraisons\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=154\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-18 14:56:04', 'com_menus.item', 669, 154, 'COM_ACTIONLOGS_DISABLED'),
(185, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":155,\"title\":\"Coordinateur_Catalogues\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=155\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-18 15:00:17', 'com_menus.item', 669, 155, 'COM_ACTIONLOGS_DISABLED'),
(186, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":156,\"title\":\"Coordinateur_Commandes\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=156\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-18 15:00:35', 'com_menus.item', 669, 156, 'COM_ACTIONLOGS_DISABLED'),
(187, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":157,\"title\":\"Coordinateur_Livraisons\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=157\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-18 15:00:54', 'com_menus.item', 669, 157, 'COM_ACTIONLOGS_DISABLED'),
(188, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":158,\"title\":\"Coordinateur_Inscription\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=158\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-18 15:02:16', 'com_menus.item', 669, 158, 'COM_ACTIONLOGS_DISABLED'),
(189, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":149,\"title\":\"Partenaire_Mes_Catalogues\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=149\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-18 15:03:36', 'com_menus.item', 669, 149, 'COM_ACTIONLOGS_DISABLED'),
(190, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__menu\"}', '2021-03-18 15:03:36', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(191, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":158,\"title\":\"Coordinateur_Inscription\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=158\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-18 15:04:56', 'com_menus.item', 669, 158, 'COM_ACTIONLOGS_DISABLED'),
(192, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__menu\"}', '2021-03-18 15:04:56', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(193, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":159,\"title\":\"Partenaire_Comandes\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=159\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-18 15:05:24', 'com_menus.item', 669, 159, 'COM_ACTIONLOGS_DISABLED'),
(194, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":160,\"title\":\"Partenaire_Livraisons\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=160\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-18 15:05:46', 'com_menus.item', 669, 160, 'COM_ACTIONLOGS_DISABLED'),
(195, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"670\",\"username\":\"mdupond\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=670\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2021-03-18 15:06:08', 'com_users', 670, 0, 'COM_ACTIONLOGS_DISABLED'),
(196, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":\"670\",\"userid\":\"670\",\"username\":\"mdupond\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=670\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2021-03-18 15:07:10', 'com_users', 670, 670, 'COM_ACTIONLOGS_DISABLED'),
(197, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"671\",\"username\":\"jpaule\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=671\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2021-03-18 15:07:16', 'com_users', 671, 0, 'COM_ACTIONLOGS_DISABLED'),
(198, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":\"671\",\"userid\":\"671\",\"username\":\"jpaule\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=671\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2021-03-18 15:08:06', 'com_users', 671, 671, 'COM_ACTIONLOGS_DISABLED'),
(199, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"672\",\"username\":\"arichaud\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=672\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2021-03-18 15:08:26', 'com_users', 672, 0, 'COM_ACTIONLOGS_DISABLED'),
(200, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__menu\"}', '2021-03-18 15:09:13', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(201, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":94,\"title\":\"Espace Partenaire\",\"extension_name\":\"Espace Partenaire\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=94\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-18 15:11:06', 'com_modules.module', 669, 94, 'COM_ACTIONLOGS_DISABLED'),
(202, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__modules\"}', '2021-03-18 15:11:06', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(203, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":93,\"title\":\"Espace Coordinateur\",\"extension_name\":\"Espace Coordinateur\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=93\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-18 15:11:17', 'com_modules.module', 669, 93, 'COM_ACTIONLOGS_DISABLED'),
(204, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__modules\"}', '2021-03-18 15:11:17', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(205, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":158,\"title\":\"Coordinateur_Inscriptions\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=158\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-18 15:12:14', 'com_menus.item', 669, 158, 'COM_ACTIONLOGS_DISABLED'),
(206, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__menu\"}', '2021-03-18 15:12:14', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(207, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":\"672\",\"userid\":\"672\",\"username\":\"arichaud\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=672\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2021-03-18 15:12:29', 'com_users', 672, 672, 'COM_ACTIONLOGS_DISABLED'),
(208, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"674\",\"username\":\"phochon\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=674\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2021-03-18 15:12:34', 'com_users', 674, 0, 'COM_ACTIONLOGS_DISABLED'),
(209, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":\"674\",\"userid\":\"674\",\"username\":\"phochon\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=674\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2021-03-18 15:12:48', 'com_users', 674, 674, 'COM_ACTIONLOGS_DISABLED'),
(210, 'PLG_ACTIONLOG_JOOMLA_USER_LOGIN_FAILED', '{\"action\":\"login\",\"id\":\"669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2021-03-18 15:55:21', 'com_users', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(211, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2021-03-18 15:55:27', 'com_users', 669, 0, 'COM_ACTIONLOGS_DISABLED'),
(212, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__menu\"}', '2021-03-18 15:56:45', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(213, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__menu\"}', '2021-03-18 15:57:49', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(214, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":153,\"title\":\"B\\u00e9n\\u00e9vole_Commandes\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=153\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-18 15:58:08', 'com_menus.item', 669, 153, 'COM_ACTIONLOGS_DISABLED'),
(215, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__menu\"}', '2021-03-18 15:58:08', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(216, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":156,\"title\":\"Coordinateur_Commandes\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=156\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-18 15:58:36', 'com_menus.item', 669, 156, 'COM_ACTIONLOGS_DISABLED'),
(217, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__menu\"}', '2021-03-18 15:58:36', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(218, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":159,\"title\":\"Partenaire_Comandes\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=159\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-18 15:58:49', 'com_menus.item', 669, 159, 'COM_ACTIONLOGS_DISABLED'),
(219, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__menu\"}', '2021-03-18 15:58:49', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(220, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":147,\"title\":\"Particulier_Mes_Commandes\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=147\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-18 15:59:01', 'com_menus.item', 669, 147, 'COM_ACTIONLOGS_DISABLED'),
(221, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__menu\"}', '2021-03-18 15:59:01', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(222, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"670\",\"username\":\"mdupond\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=670\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2021-03-18 15:59:09', 'com_users', 670, 0, 'COM_ACTIONLOGS_DISABLED'),
(223, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__menu\"}', '2021-03-18 16:01:00', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(224, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2021-03-18 16:19:03', 'com_users', 669, 0, 'COM_ACTIONLOGS_DISABLED'),
(225, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":152,\"title\":\"B\\u00e9n\\u00e9vole_Catalogues\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=152\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-18 16:19:23', 'com_menus.item', 669, 152, 'COM_ACTIONLOGS_DISABLED'),
(226, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__menu\"}', '2021-03-18 16:19:23', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(227, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":155,\"title\":\"Coordinateur_Catalogues\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=155\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-18 16:19:35', 'com_menus.item', 669, 155, 'COM_ACTIONLOGS_DISABLED'),
(228, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__menu\"}', '2021-03-18 16:19:35', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(229, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":149,\"title\":\"Partenaire_Mes_Catalogues\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=149\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-18 16:19:46', 'com_menus.item', 669, 149, 'COM_ACTIONLOGS_DISABLED'),
(230, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__menu\"}', '2021-03-18 16:19:46', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(231, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":146,\"title\":\"Particulier_Catalogues\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=146\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-18 16:20:04', 'com_menus.item', 669, 146, 'COM_ACTIONLOGS_DISABLED'),
(232, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__menu\"}', '2021-03-18 16:20:04', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(233, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2021-03-18 17:01:01', 'com_users', 669, 0, 'COM_ACTIONLOGS_DISABLED'),
(234, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__menu\"}', '2021-03-18 17:08:16', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(235, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":154,\"title\":\"B\\u00e9n\\u00e9vole_Mes_Livraisons\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=154\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-18 17:25:31', 'com_menus.item', 669, 154, 'COM_ACTIONLOGS_DISABLED'),
(236, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__menu\"}', '2021-03-18 17:25:31', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(237, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":157,\"title\":\"Coordinateur_Livraisons\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=157\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-18 17:25:41', 'com_menus.item', 669, 157, 'COM_ACTIONLOGS_DISABLED'),
(238, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__menu\"}', '2021-03-18 17:25:41', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(239, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__menu\"}', '2021-03-18 17:26:17', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(240, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":160,\"title\":\"Partenaire_Livraisons\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=160\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-18 17:26:30', 'com_menus.item', 669, 160, 'COM_ACTIONLOGS_DISABLED'),
(241, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__menu\"}', '2021-03-18 17:26:30', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(242, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":148,\"title\":\"Particulier_Livraisons\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=148\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-18 17:26:41', 'com_menus.item', 669, 148, 'COM_ACTIONLOGS_DISABLED'),
(243, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__menu\"}', '2021-03-18 17:26:41', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(244, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2021-03-19 15:33:42', 'com_users', 669, 0, 'COM_ACTIONLOGS_DISABLED'),
(245, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_LANGUAGE\",\"id\":\"602\",\"name\":\"French (France)\",\"extension_name\":\"French (France)\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-19 15:34:26', 'com_installer', 669, 602, 'COM_ACTIONLOGS_DISABLED'),
(246, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_LANGUAGE\",\"id\":\"603\",\"name\":\"French (France)\",\"extension_name\":\"French (France)\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-19 15:34:26', 'com_installer', 669, 603, 'COM_ACTIONLOGS_DISABLED'),
(247, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PACKAGE\",\"id\":\"803\",\"name\":\"French (fr-FR) Language pack\",\"extension_name\":\"French (fr-FR) Language pack\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-19 15:34:26', 'com_installer', 669, 803, 'COM_ACTIONLOGS_DISABLED'),
(248, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"670\",\"username\":\"mdupond\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=670\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2021-03-19 15:35:25', 'com_users', 670, 0, 'COM_ACTIONLOGS_DISABLED'),
(249, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__modules\"}', '2021-03-19 15:36:34', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(250, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__menu\"}', '2021-03-19 15:38:48', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(251, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":149,\"title\":\"Partenaire_Mes_Catalogues\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=149\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-19 15:39:18', 'com_menus.item', 669, 149, 'COM_ACTIONLOGS_DISABLED'),
(252, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__menu\"}', '2021-03-19 15:39:18', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(253, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":149,\"title\":\"Mes catalogues\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=149\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-19 15:40:04', 'com_menus.item', 669, 149, 'COM_ACTIONLOGS_DISABLED'),
(254, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__menu\"}', '2021-03-19 15:40:04', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED');
INSERT INTO `ac19_action_logs` (`id`, `message_language_key`, `message`, `log_date`, `extension`, `user_id`, `item_id`, `ip_address`) VALUES
(255, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":159,\"title\":\"Commandes\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=159\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-19 15:40:28', 'com_menus.item', 669, 159, 'COM_ACTIONLOGS_DISABLED'),
(256, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__menu\"}', '2021-03-19 15:40:28', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(257, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__menu\"}', '2021-03-19 15:40:43', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(258, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":160,\"title\":\"Livraisons\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=160\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-19 15:41:06', 'com_menus.item', 669, 160, 'COM_ACTIONLOGS_DISABLED'),
(259, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__menu\"}', '2021-03-19 15:41:06', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(260, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":146,\"title\":\"Catalogues\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=146\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-19 15:41:47', 'com_menus.item', 669, 146, 'COM_ACTIONLOGS_DISABLED'),
(261, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__menu\"}', '2021-03-19 15:41:47', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(262, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__menu\"}', '2021-03-19 15:42:49', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(263, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":148,\"title\":\"Livraisons\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=148\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-19 15:44:08', 'com_menus.item', 669, 148, 'COM_ACTIONLOGS_DISABLED'),
(264, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__menu\"}', '2021-03-19 15:44:08', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(265, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":147,\"title\":\"Mes commandes\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=147\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-19 15:44:53', 'com_menus.item', 669, 147, 'COM_ACTIONLOGS_DISABLED'),
(266, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__menu\"}', '2021-03-19 15:44:53', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(267, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":158,\"title\":\"Inscriptions\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=158\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-19 15:51:03', 'com_menus.item', 669, 158, 'COM_ACTIONLOGS_DISABLED'),
(268, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__menu\"}', '2021-03-19 15:51:03', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(269, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":155,\"title\":\"Catalogues\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=155\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-19 15:51:19', 'com_menus.item', 669, 155, 'COM_ACTIONLOGS_DISABLED'),
(270, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__menu\"}', '2021-03-19 15:51:19', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(271, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":156,\"title\":\"Commandes\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=156\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-19 15:51:36', 'com_menus.item', 669, 156, 'COM_ACTIONLOGS_DISABLED'),
(272, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__menu\"}', '2021-03-19 15:51:36', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(273, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":157,\"title\":\"Livraisons\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=157\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-19 15:52:02', 'com_menus.item', 669, 157, 'COM_ACTIONLOGS_DISABLED'),
(274, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__menu\"}', '2021-03-19 15:52:02', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(275, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__menu\"}', '2021-03-19 15:52:10', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(276, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":152,\"title\":\"Catalogues\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=152\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-19 15:52:53', 'com_menus.item', 669, 152, 'COM_ACTIONLOGS_DISABLED'),
(277, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__menu\"}', '2021-03-19 15:52:53', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(278, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":153,\"title\":\"Commandes\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=153\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-19 15:53:08', 'com_menus.item', 669, 153, 'COM_ACTIONLOGS_DISABLED'),
(279, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__menu\"}', '2021-03-19 15:53:08', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(280, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":154,\"title\":\"Mes livraisons\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=154\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-19 15:53:51', 'com_menus.item', 669, 154, 'COM_ACTIONLOGS_DISABLED'),
(281, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__menu\"}', '2021-03-19 15:53:51', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(282, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_DELETED', '{\"action\":\"delete\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":\"150\",\"title\":\"Particulier_Commandes\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-19 15:56:44', 'com_menus.item', 669, 150, 'COM_ACTIONLOGS_DISABLED'),
(283, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":147,\"title\":\"Mes commandes\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=147\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-19 15:59:36', 'com_menus.item', 669, 147, 'COM_ACTIONLOGS_DISABLED'),
(284, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__menu\"}', '2021-03-19 15:59:36', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(285, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":149,\"title\":\"Mes catalogues\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=149\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-03-19 16:00:19', 'com_menus.item', 669, 149, 'COM_ACTIONLOGS_DISABLED'),
(286, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"669\",\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"table\":\"#__menu\"}', '2021-03-19 16:00:19', 'com_checkin', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(287, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":\"670\",\"userid\":\"670\",\"username\":\"mdupond\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=670\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2021-03-19 16:03:10', 'com_users', 670, 670, 'COM_ACTIONLOGS_DISABLED'),
(288, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"672\",\"username\":\"arichaud\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=672\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2021-03-19 16:03:20', 'com_users', 672, 0, 'COM_ACTIONLOGS_DISABLED'),
(289, 'PLG_ACTIONLOG_JOOMLA_USER_LOGIN_FAILED', '{\"action\":\"login\",\"id\":\"670\",\"userid\":\"670\",\"username\":\"mdupond\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=670\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2021-03-30 12:59:16', 'com_users', 670, 670, 'COM_ACTIONLOGS_DISABLED'),
(290, 'PLG_ACTIONLOG_JOOMLA_USER_LOGIN_FAILED', '{\"action\":\"login\",\"id\":\"670\",\"userid\":\"670\",\"username\":\"mdupond\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=670\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2021-03-30 12:59:23', 'com_users', 670, 670, 'COM_ACTIONLOGS_DISABLED'),
(291, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"670\",\"username\":\"mdupond\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=670\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2021-03-30 12:59:29', 'com_users', 670, 0, 'COM_ACTIONLOGS_DISABLED'),
(292, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"670\",\"username\":\"mdupond\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=670\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2021-04-06 15:34:55', 'com_users', 670, 0, 'COM_ACTIONLOGS_DISABLED'),
(293, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"670\",\"username\":\"mdupond\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=670\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2021-04-27 15:11:27', 'com_users', 670, 0, 'COM_ACTIONLOGS_DISABLED'),
(294, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":\"670\",\"userid\":\"670\",\"username\":\"mdupond\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=670\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2021-04-27 15:11:31', 'com_users', 670, 670, 'COM_ACTIONLOGS_DISABLED'),
(295, 'PLG_ACTIONLOG_JOOMLA_USER_LOGIN_FAILED', '{\"action\":\"login\",\"id\":\"669\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2021-04-27 15:11:51', 'com_users', 669, 669, 'COM_ACTIONLOGS_DISABLED'),
(296, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2021-04-27 15:12:10', 'com_users', 669, 0, 'COM_ACTIONLOGS_DISABLED'),
(297, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"673\",\"username\":\"sjaoui\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=673\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2021-04-27 15:13:46', 'com_users', 673, 0, 'COM_ACTIONLOGS_DISABLED'),
(298, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":\"673\",\"userid\":\"673\",\"username\":\"sjaoui\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=673\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2021-04-27 15:13:50', 'com_users', 673, 673, 'COM_ACTIONLOGS_DISABLED'),
(299, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"672\",\"username\":\"arichaud\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=672\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2021-04-27 15:14:01', 'com_users', 672, 0, 'COM_ACTIONLOGS_DISABLED'),
(300, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2021-04-29 14:42:07', 'com_users', 669, 0, 'COM_ACTIONLOGS_DISABLED'),
(301, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"674\",\"username\":\"phochon\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=674\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2021-04-29 14:43:21', 'com_users', 674, 0, 'COM_ACTIONLOGS_DISABLED'),
(302, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"674\",\"username\":\"phochon\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=674\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2021-04-30 11:25:19', 'com_users', 674, 0, 'COM_ACTIONLOGS_DISABLED'),
(303, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":\"674\",\"userid\":\"674\",\"username\":\"phochon\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=674\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2021-04-30 12:08:24', 'com_users', 674, 674, 'COM_ACTIONLOGS_DISABLED'),
(304, 'PLG_ACTIONLOG_JOOMLA_USER_LOGIN_FAILED', '{\"action\":\"login\",\"id\":\"670\",\"userid\":\"670\",\"username\":\"mdupond\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=670\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2021-04-30 12:08:43', 'com_users', 670, 670, 'COM_ACTIONLOGS_DISABLED'),
(305, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"670\",\"username\":\"mdupond\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=670\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2021-04-30 12:08:48', 'com_users', 670, 0, 'COM_ACTIONLOGS_DISABLED'),
(306, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2021-04-30 12:09:43', 'com_users', 669, 0, 'COM_ACTIONLOGS_DISABLED'),
(307, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":675,\"title\":\"Jean K\\u00e9vin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=675\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-04-30 12:11:17', 'com_users', 669, 675, 'COM_ACTIONLOGS_DISABLED'),
(308, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":675,\"title\":\"K\\u00e9vin JEAN\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=675\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-04-30 12:11:27', 'com_users', 669, 675, 'COM_ACTIONLOGS_DISABLED'),
(309, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":675,\"title\":\"K\\u00e9vin JEAN\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=675\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-04-30 12:11:28', 'com_users', 669, 675, 'COM_ACTIONLOGS_DISABLED'),
(310, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":675,\"title\":\"K\\u00e9vin JEAN\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=675\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-04-30 12:12:31', 'com_users', 669, 675, 'COM_ACTIONLOGS_DISABLED'),
(311, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":675,\"title\":\"K\\u00e9vin JEAN\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=675\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-04-30 12:12:43', 'com_users', 669, 675, 'COM_ACTIONLOGS_DISABLED'),
(312, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":\"670\",\"userid\":\"670\",\"username\":\"mdupond\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=670\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2021-04-30 12:18:11', 'com_users', 670, 670, 'COM_ACTIONLOGS_DISABLED'),
(313, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"674\",\"username\":\"phochon\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=674\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2021-04-30 12:18:19', 'com_users', 674, 0, 'COM_ACTIONLOGS_DISABLED'),
(314, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":\"674\",\"userid\":\"674\",\"username\":\"phochon\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=674\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2021-04-30 12:18:49', 'com_users', 674, 674, 'COM_ACTIONLOGS_DISABLED'),
(315, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"675\",\"username\":\"kjean\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=675\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2021-04-30 12:19:00', 'com_users', 675, 0, 'COM_ACTIONLOGS_DISABLED'),
(316, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":\"675\",\"userid\":\"675\",\"username\":\"kjean\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=675\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2021-04-30 12:19:42', 'com_users', 675, 675, 'COM_ACTIONLOGS_DISABLED'),
(317, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":676,\"title\":\"Mars JEAN\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=676\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-04-30 12:20:30', 'com_users', 669, 676, 'COM_ACTIONLOGS_DISABLED'),
(318, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":676,\"title\":\"Marc JEAN\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=676\",\"userid\":\"669\",\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=669\"}', '2021-04-30 12:20:38', 'com_users', 669, 676, 'COM_ACTIONLOGS_DISABLED'),
(319, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"676\",\"username\":\"mjean\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=676\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2021-04-30 12:20:53', 'com_users', 676, 0, 'COM_ACTIONLOGS_DISABLED'),
(320, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":\"676\",\"userid\":\"676\",\"username\":\"mjean\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=676\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2021-04-30 12:22:26', 'com_users', 676, 676, 'COM_ACTIONLOGS_DISABLED'),
(321, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"674\",\"username\":\"phochon\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=674\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2021-04-30 12:23:32', 'com_users', 674, 0, 'COM_ACTIONLOGS_DISABLED'),
(322, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":\"674\",\"userid\":\"674\",\"username\":\"phochon\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=674\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2021-04-30 12:23:45', 'com_users', 674, 674, 'COM_ACTIONLOGS_DISABLED'),
(323, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"676\",\"username\":\"mjean\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=676\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2021-04-30 12:24:02', 'com_users', 676, 0, 'COM_ACTIONLOGS_DISABLED'),
(324, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":\"676\",\"userid\":\"676\",\"username\":\"mjean\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=676\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2021-04-30 12:24:18', 'com_users', 676, 676, 'COM_ACTIONLOGS_DISABLED'),
(325, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"675\",\"username\":\"kjean\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=675\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2021-04-30 12:24:29', 'com_users', 675, 0, 'COM_ACTIONLOGS_DISABLED'),
(326, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":\"675\",\"userid\":\"675\",\"username\":\"kjean\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=675\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2021-04-30 12:24:51', 'com_users', 675, 675, 'COM_ACTIONLOGS_DISABLED'),
(327, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"675\",\"username\":\"kjean\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=675\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2021-04-30 12:25:18', 'com_users', 675, 0, 'COM_ACTIONLOGS_DISABLED'),
(328, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"670\",\"username\":\"mdupond\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=670\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2021-05-03 14:43:12', 'com_users', 670, 0, 'COM_ACTIONLOGS_DISABLED');

-- --------------------------------------------------------

--
-- Structure de la table `ac19_action_logs_extensions`
--

CREATE TABLE `ac19_action_logs_extensions` (
  `id` int(10) UNSIGNED NOT NULL,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ac19_action_logs_extensions`
--

INSERT INTO `ac19_action_logs_extensions` (`id`, `extension`) VALUES
(1, 'com_banners'),
(2, 'com_cache'),
(3, 'com_categories'),
(4, 'com_config'),
(5, 'com_contact'),
(6, 'com_content'),
(7, 'com_installer'),
(8, 'com_media'),
(9, 'com_menus'),
(10, 'com_messages'),
(11, 'com_modules'),
(12, 'com_newsfeeds'),
(13, 'com_plugins'),
(14, 'com_redirect'),
(15, 'com_tags'),
(16, 'com_templates'),
(17, 'com_users'),
(18, 'com_checkin');

-- --------------------------------------------------------

--
-- Structure de la table `ac19_action_logs_users`
--

CREATE TABLE `ac19_action_logs_users` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `notify` tinyint(1) UNSIGNED NOT NULL,
  `extensions` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ac19_action_log_config`
--

CREATE TABLE `ac19_action_log_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `id_holder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_holder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_prefix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ac19_action_log_config`
--

INSERT INTO `ac19_action_log_config` (`id`, `type_title`, `type_alias`, `id_holder`, `title_holder`, `table_name`, `text_prefix`) VALUES
(1, 'article', 'com_content.article', 'id', 'title', '#__content', 'PLG_ACTIONLOG_JOOMLA'),
(2, 'article', 'com_content.form', 'id', 'title', '#__content', 'PLG_ACTIONLOG_JOOMLA'),
(3, 'banner', 'com_banners.banner', 'id', 'name', '#__banners', 'PLG_ACTIONLOG_JOOMLA'),
(4, 'user_note', 'com_users.note', 'id', 'subject', '#__user_notes', 'PLG_ACTIONLOG_JOOMLA'),
(5, 'media', 'com_media.file', '', 'name', '', 'PLG_ACTIONLOG_JOOMLA'),
(6, 'category', 'com_categories.category', 'id', 'title', '#__categories', 'PLG_ACTIONLOG_JOOMLA'),
(7, 'menu', 'com_menus.menu', 'id', 'title', '#__menu_types', 'PLG_ACTIONLOG_JOOMLA'),
(8, 'menu_item', 'com_menus.item', 'id', 'title', '#__menu', 'PLG_ACTIONLOG_JOOMLA'),
(9, 'newsfeed', 'com_newsfeeds.newsfeed', 'id', 'name', '#__newsfeeds', 'PLG_ACTIONLOG_JOOMLA'),
(10, 'link', 'com_redirect.link', 'id', 'old_url', '#__redirect_links', 'PLG_ACTIONLOG_JOOMLA'),
(11, 'tag', 'com_tags.tag', 'id', 'title', '#__tags', 'PLG_ACTIONLOG_JOOMLA'),
(12, 'style', 'com_templates.style', 'id', 'title', '#__template_styles', 'PLG_ACTIONLOG_JOOMLA'),
(13, 'plugin', 'com_plugins.plugin', 'extension_id', 'name', '#__extensions', 'PLG_ACTIONLOG_JOOMLA'),
(14, 'component_config', 'com_config.component', 'extension_id', 'name', '', 'PLG_ACTIONLOG_JOOMLA'),
(15, 'contact', 'com_contact.contact', 'id', 'name', '#__contact_details', 'PLG_ACTIONLOG_JOOMLA'),
(16, 'module', 'com_modules.module', 'id', 'title', '#__modules', 'PLG_ACTIONLOG_JOOMLA'),
(17, 'access_level', 'com_users.level', 'id', 'title', '#__viewlevels', 'PLG_ACTIONLOG_JOOMLA'),
(18, 'banner_client', 'com_banners.client', 'id', 'name', '#__banner_clients', 'PLG_ACTIONLOG_JOOMLA'),
(19, 'application_config', 'com_config.application', '', 'name', '', 'PLG_ACTIONLOG_JOOMLA');

-- --------------------------------------------------------

--
-- Structure de la table `ac19_annuaire_civilites`
--

CREATE TABLE `ac19_annuaire_civilites` (
  `id` int(11) NOT NULL,
  `civilite` varchar(20) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ac19_annuaire_civilites`
--

INSERT INTO `ac19_annuaire_civilites` (`id`, `civilite`, `published`) VALUES
(1, '-', 0),
(2, 'M.', 1),
(3, 'Mme', 1),
(4, 'Mlle', 1);

-- --------------------------------------------------------

--
-- Structure de la table `ac19_annuaire_contacts`
--

CREATE TABLE `ac19_annuaire_contacts` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `prenom` varchar(50) NOT NULL,
  `civilites_id` int(11) NOT NULL DEFAULT 1,
  `typescontacts_id` int(11) NOT NULL DEFAULT 1,
  `entreprises_id` int(11) NOT NULL DEFAULT 1,
  `fonction` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `commentaire` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `hits` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ac19_annuaire_contacts`
--

INSERT INTO `ac19_annuaire_contacts` (`id`, `nom`, `alias`, `prenom`, `civilites_id`, `typescontacts_id`, `entreprises_id`, `fonction`, `email`, `mobile`, `tel`, `commentaire`, `published`, `created`, `created_by`, `modified`, `modified_by`, `hits`) VALUES
(1, '-', '', '', 1, 1, 1, '', '', '', '', '', 0, '2015-12-17 10:57:13', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'DUPONT', 'dupont', 'Pierre', 2, 1, 6, 'Directeur Adjoint', '', '', '', '<p>Blabla...</p>', 1, '2016-03-02 16:15:35', 669, '2020-11-24 08:14:56', 669, 0),
(3, 'SMITH', 'smith', 'Léa', 3, 1, 5, 'VP Technology', '', '', '', '', 1, '2016-03-02 16:16:17', 669, '2020-11-15 14:14:55', 669, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ac19_annuaire_entreprises`
--

CREATE TABLE `ac19_annuaire_entreprises` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `logo` varchar(255) NOT NULL DEFAULT 'Logo.png',
  `activite` varchar(255) NOT NULL,
  `codeAPE_NAF` varchar(5) NOT NULL,
  `numSIREN` varchar(9) NOT NULL,
  `numTVAintra` varchar(13) NOT NULL,
  `siteWeb` varchar(50) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `adrRue` varchar(50) NOT NULL,
  `adrVille` varchar(50) NOT NULL,
  `adrCP` varchar(10) NOT NULL,
  `pays_id` int(11) NOT NULL DEFAULT 1,
  `commentaire` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `hits` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ac19_annuaire_entreprises`
--

INSERT INTO `ac19_annuaire_entreprises` (`id`, `nom`, `alias`, `logo`, `activite`, `codeAPE_NAF`, `numSIREN`, `numTVAintra`, `siteWeb`, `tel`, `adrRue`, `adrVille`, `adrCP`, `pays_id`, `commentaire`, `published`, `created`, `created_by`, `modified`, `modified_by`, `hits`) VALUES
(1, '-', '', 'Logo.png', '-', '', '', '', '', '', '', '', '', 1, '', 0, '2015-12-17 10:57:13', 669, '2016-01-20 18:59:22', 669, 0),
(3, 'Carrefour', 'carrefour', 'Carrefour.png', 'Grande distribution', '6420Z', '', '', '', '', '', '', '', 1, '', 1, '2020-11-15 14:04:02', 669, '0000-00-00 00:00:00', 0, 0),
(4, 'Renault', 'renault', 'Renault.png', 'Construction automobile', '2910Z', '', '', '', '', '', '', '', 1, '', 1, '2020-11-15 14:05:58', 669, '0000-00-00 00:00:00', 0, 0),
(5, 'Accenture Technology Solutions', 'accenture-technology-solutions', 'Accenture.png', 'Conseil en systèmes et logiciels informatiques', '6202A', '', '', '', '', '', '', '', 1, '<p>Société américaine...</p>\r\n<p>Blabla...</p>', 1, '2020-11-15 14:09:00', 669, '2020-11-24 08:03:04', 669, 0),
(6, 'Sopra Steria', 'sopra-steria', 'SopraSteria.png', 'Conseil en systèmes et logiciels informatiques', '6202A', '', '', '', '', '', '', '', 1, '', 1, '2020-11-15 14:10:02', 669, '0000-00-00 00:00:00', 0, 0),
(7, 'Castorama France', 'castorama-france', 'Casto.png', 'Commerce de détail de quincaillerie, peintures et verres en grandes surfaces', '4752B', '', '', '', '', '', '', '', 1, '', 1, '2020-11-15 14:12:24', 669, '0000-00-00 00:00:00', 0, 0),
(8, 'Sony', 'sony', 'Sony.png', 'Enregistrement sonore et édition musicale', '5920Z', '', '', '', '', '', '', '', 1, '', 1, '2020-11-15 14:13:29', 669, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ac19_annuaire_pays`
--

CREATE TABLE `ac19_annuaire_pays` (
  `id` int(11) NOT NULL,
  `pays` varchar(50) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ac19_annuaire_pays`
--

INSERT INTO `ac19_annuaire_pays` (`id`, `pays`, `published`) VALUES
(1, '-', 0),
(2, 'France', 1),
(3, 'Allemagne', 1),
(4, 'Belgique', 1),
(5, 'Espagne', 1),
(6, 'Italie', 1),
(7, 'Royaume-Uni', 1);

-- --------------------------------------------------------

--
-- Structure de la table `ac19_annuaire_typescontacts`
--

CREATE TABLE `ac19_annuaire_typescontacts` (
  `id` int(11) NOT NULL,
  `typeContact` varchar(50) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ac19_annuaire_typescontacts`
--

INSERT INTO `ac19_annuaire_typescontacts` (`id`, `typeContact`, `published`) VALUES
(1, '-', 0);

-- --------------------------------------------------------

--
-- Structure de la table `ac19_assets`
--

CREATE TABLE `ac19_assets` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set rgt.',
  `level` int(10) UNSIGNED NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ac19_assets`
--

INSERT INTO `ac19_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 149, 0, 'root.1', 'Root Asset', '{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(8, 1, 17, 28, 1, 'com_content', 'com_content', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1}}'),
(9, 1, 29, 30, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 31, 32, 1, 'com_installer', 'com_installer', '{\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),
(11, 1, 33, 34, 1, 'com_languages', 'com_languages', '{\"core.admin\":{\"7\":1}}'),
(12, 1, 35, 36, 1, 'com_login', 'com_login', '{}'),
(13, 1, 37, 38, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 39, 40, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 41, 42, 1, 'com_media', 'com_media', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),
(16, 1, 43, 56, 1, 'com_menus', 'com_menus', '{\"core.admin\":{\"7\":1}}'),
(17, 1, 57, 58, 1, 'com_messages', 'com_messages', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(18, 1, 59, 106, 1, 'com_modules', 'com_modules', '{\"core.admin\":{\"7\":1}}'),
(19, 1, 107, 110, 1, 'com_newsfeeds', 'com_newsfeeds', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(20, 1, 111, 112, 1, 'com_plugins', 'com_plugins', '{\"core.admin\":{\"7\":1}}'),
(21, 1, 113, 114, 1, 'com_redirect', 'com_redirect', '{\"core.admin\":{\"7\":1}}'),
(22, 1, 115, 116, 1, 'com_search', 'com_search', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(23, 1, 117, 118, 1, 'com_templates', 'com_templates', '{\"core.admin\":{\"7\":1}}'),
(24, 1, 119, 122, 1, 'com_users', 'com_users', '{\"core.admin\":{\"7\":1}}'),
(26, 1, 123, 124, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 27, 2, 'com_content.category.2', 'Non catégorisé', '{}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Non catégorisé', '{}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Non catégorisé', '{}'),
(30, 19, 108, 109, 2, 'com_newsfeeds.category.5', 'Non catégorisé', '{}'),
(32, 24, 120, 121, 2, 'com_users.category.7', 'Non catégorisé', '{}'),
(33, 1, 125, 126, 1, 'com_finder', 'com_finder', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(34, 1, 127, 128, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{}'),
(35, 1, 129, 130, 1, 'com_tags', 'com_tags', '{}'),
(36, 1, 131, 132, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 133, 134, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 135, 136, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 60, 61, 2, 'com_modules.module.1', 'Menu principal', '{}'),
(40, 18, 62, 63, 2, 'com_modules.module.2', 'Login', '{}'),
(41, 18, 64, 65, 2, 'com_modules.module.3', 'Popular Articles', '{}'),
(42, 18, 66, 67, 2, 'com_modules.module.4', 'Recently Added Articles', '{}'),
(43, 18, 68, 69, 2, 'com_modules.module.8', 'Toolbar', '{}'),
(44, 18, 70, 71, 2, 'com_modules.module.9', 'Quick Icons', '{}'),
(45, 18, 72, 73, 2, 'com_modules.module.10', 'Logged-in Users', '{}'),
(46, 18, 74, 75, 2, 'com_modules.module.12', 'Admin Menu', '{}'),
(47, 18, 76, 77, 2, 'com_modules.module.13', 'Admin Submenu', '{}'),
(48, 18, 78, 79, 2, 'com_modules.module.14', 'User Status', '{}'),
(49, 18, 80, 81, 2, 'com_modules.module.15', 'Title', '{}'),
(50, 18, 82, 83, 2, 'com_modules.module.16', 'Login Form', '{}'),
(51, 18, 84, 85, 2, 'com_modules.module.17', 'Breadcrumbs', '{}'),
(52, 18, 86, 87, 2, 'com_modules.module.79', 'Multilanguage status', '{}'),
(53, 18, 88, 89, 2, 'com_modules.module.86', 'Joomla Version', '{}'),
(54, 16, 44, 45, 2, 'com_menus.menu.1', 'Main Menu', '{}'),
(55, 18, 90, 91, 2, 'com_modules.module.87', 'Sample Data', '{}'),
(56, 1, 137, 138, 1, 'com_privacy', 'com_privacy', '{}'),
(57, 1, 139, 140, 1, 'com_actionlogs', 'com_actionlogs', '{}'),
(58, 18, 92, 93, 2, 'com_modules.module.88', 'Latest Actions', '{}'),
(59, 18, 94, 95, 2, 'com_modules.module.89', 'Privacy Dashboard', '{}'),
(60, 27, 19, 20, 3, 'com_content.article.1', 'Bienvenue', '{}'),
(61, 27, 21, 22, 3, 'com_content.article.2', 'Actualités', '{}'),
(62, 27, 23, 24, 3, 'com_content.article.3', 'Bénévolat', '{}'),
(63, 27, 25, 26, 3, 'com_content.article.4', 'Mon profil', '{}'),
(68, 16, 46, 47, 2, 'com_menus.menu.2', 'Annuaire', '{}'),
(69, 18, 96, 97, 2, 'com_modules.module.90', 'Annuaire', '{}'),
(70, 1, 141, 142, 1, 'com_annuaire', 'com_annuaire', '{\"core.create\":{\"2\":1},\"core.delete\":{\"2\":1},\"core.edit\":{\"2\":1}}'),
(73, 1, 143, 144, 1, 'com_fields', 'com_fields', '{}'),
(74, 1, 145, 146, 1, 'com_associations', 'com_associations', '{}'),
(75, 1, 147, 148, 1, 'com_ac19', 'com_ac19', '{}'),
(76, 16, 48, 49, 2, 'com_menus.menu.3', 'AC19_Particulier', '{}'),
(77, 16, 50, 51, 2, 'com_menus.menu.4', 'AC19_Bénévole', '{}'),
(78, 16, 52, 53, 2, 'com_menus.menu.5', 'AC19_Coordinateur', '{}'),
(79, 16, 54, 55, 2, 'com_menus.menu.6', 'AC19_Partenaire', '{}'),
(80, 18, 98, 99, 2, 'com_modules.module.91', 'Espace Particulier', '{}'),
(81, 18, 100, 101, 2, 'com_modules.module.92', 'Espace Bénévole', '{}'),
(82, 18, 102, 103, 2, 'com_modules.module.93', 'Espace Coordinateur', '{}'),
(83, 18, 104, 105, 2, 'com_modules.module.94', 'Espace Partenaire', '{}');

-- --------------------------------------------------------

--
-- Structure de la table `ac19_associations`
--

CREATE TABLE `ac19_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ac19_banners`
--

CREATE TABLE `ac19_banners` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT 0,
  `impmade` int(11) NOT NULL DEFAULT 0,
  `clicks` int(11) NOT NULL DEFAULT 0,
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT 0,
  `catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT 0,
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT -1,
  `track_clicks` tinyint(4) NOT NULL DEFAULT -1,
  `track_impressions` tinyint(4) NOT NULL DEFAULT -1,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ac19_banner_clients`
--

CREATE TABLE `ac19_banner_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT 0,
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT -1,
  `track_clicks` tinyint(4) NOT NULL DEFAULT -1,
  `track_impressions` tinyint(4) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ac19_banner_tracks`
--

CREATE TABLE `ac19_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) UNSIGNED NOT NULL,
  `banner_id` int(10) UNSIGNED NOT NULL,
  `count` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ac19_categories`
--

CREATE TABLE `ac19_categories` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lft` int(11) NOT NULL DEFAULT 0,
  `rgt` int(11) NOT NULL DEFAULT 0,
  `level` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `params` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ac19_categories`
--

INSERT INTO `ac19_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 11, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 669, '2020-10-10 17:15:20', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'non-categorise', 'com_content', 'Non catégorisé', 'non-categorise', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 669, '2020-10-10 17:15:20', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'non-categorise', 'com_banners', 'Non catégorisé', 'non-categorise', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 669, '2020-10-10 17:15:20', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'non-categorise', 'com_contact', 'Non catégorisé', 'non-categorise', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 669, '2020-10-10 17:15:20', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'non-categorise', 'com_newsfeeds', 'Non catégorisé', 'non-categorise', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 669, '2020-10-10 17:15:20', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'non-categorise', 'com_users', 'Non catégorisé', 'non-categorise', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 669, '2020-10-10 17:15:20', 0, '0000-00-00 00:00:00', 0, '*', 1);

-- --------------------------------------------------------

--
-- Structure de la table `ac19_contact_details`
--

CREATE TABLE `ac19_contact_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT 0,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `catid` int(11) NOT NULL DEFAULT 0,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Set if contact is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ac19_contact_details`
--

INSERT INTO `ac19_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`, `sortname1`, `sortname2`, `sortname3`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`, `version`, `hits`) VALUES
(1, 'Info AC19', 'info-ac19', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, '0000-00-00 00:00:00', 1, '{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"\",\"show_tags\":\"\",\"show_info\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"add_mailto_link\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_image\":\"\",\"show_misc\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"articles_display_num\":\"\",\"show_profile\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linka\":false,\"linkb_name\":\"\",\"linkb\":false,\"linkc_name\":\"\",\"linkc\":false,\"linkd_name\":\"\",\"linkd\":false,\"linke_name\":\"\",\"linke\":false,\"contact_layout\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\"}', 670, 4, 1, '', '', '', '', '', '*', '2020-10-10 17:23:40', 669, '', '2020-10-10 17:23:40', 0, '', '', '{\"robots\":\"\",\"rights\":\"\"}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 13);

-- --------------------------------------------------------

--
-- Structure de la table `ac19_content`
--

CREATE TABLE `ac19_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT 0,
  `catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ac19_content`
--

INSERT INTO `ac19_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`, `note`) VALUES
(1, 60, 'Bienvenue', 'bienvenue', '<p>Bienvenue sur le site de l\'association AC19 !</p>', '', 1, 2, '2020-10-10 17:39:58', 669, '', '2020-10-10 17:39:58', 0, 0, '0000-00-00 00:00:00', '2020-10-10 17:39:58', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 1, 3, '', '', 1, 93, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '', ''),
(2, 61, 'Actualités', 'actualites', '', '', 1, 2, '2020-10-10 17:40:25', 669, '', '2020-10-10 17:40:25', 0, 0, '0000-00-00 00:00:00', '2020-10-10 17:40:25', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 1, 2, '', '', 1, 6, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '', ''),
(3, 62, 'Bénévolat', 'benevolat', '', '', 1, 2, '2020-10-10 17:40:35', 669, '', '2020-10-10 17:40:35', 0, 0, '0000-00-00 00:00:00', '2020-10-10 17:40:35', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 1, 1, '', '', 1, 6, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '', ''),
(4, 63, 'Mon profil', 'mon-profil', '', '', 1, 2, '2020-10-10 17:40:48', 669, '', '2020-10-10 17:41:25', 669, 0, '0000-00-00 00:00:00', '2020-10-10 17:40:48', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 0, '', '', 2, 11, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `ac19_contentitem_tag_map`
--

CREATE TABLE `ac19_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Structure de la table `ac19_content_frontpage`
--

CREATE TABLE `ac19_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ac19_content_rating`
--

CREATE TABLE `ac19_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT 0,
  `rating_sum` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `rating_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ac19_content_types`
--

CREATE TABLE `ac19_content_types` (
  `type_id` int(10) UNSIGNED NOT NULL,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ac19_content_types`
--

INSERT INTO `ac19_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\", \"note\":\"note\"}, \"special\":{\"fulltext\":\"fulltext\"}}', 'ContentHelperRoute::getArticleRoute', '{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"ordering\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(2, 'Contact', 'com_contact.contact', '{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}', 'ContactHelperRoute::getContactRoute', '{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(4, 'User', 'com_users.user', '{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContentHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(6, 'Contact Category', 'com_contact.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContactHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(8, 'Tag', 'com_tags.tag', '{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}', 'TagsHelperRoute::getTagRoute', '{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(9, 'Banner', 'com_banners.banner', '{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(11, 'Banner Client', 'com_banners.client', '{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),
(12, 'User Notes', 'com_users.note', '{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(13, 'User Notes Category', 'com_users.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');

-- --------------------------------------------------------

--
-- Structure de la table `ac19_core_log_searches`
--

CREATE TABLE `ac19_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ac19_extensions`
--

CREATE TABLE `ac19_extensions` (
  `extension_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL DEFAULT 0 COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT 0,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `protected` tinyint(3) NOT NULL DEFAULT 0,
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT 0,
  `state` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ac19_extensions`
--

INSERT INTO `ac19_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 0, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mailto\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 0, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"wrapper\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 0, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 0, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"banners\"}', '{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 0, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 0, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 0, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 0, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '{\"contact_layout\":\"_:default\",\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_tags\":\"1\",\"show_info\":\"1\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_image\":\"1\",\"show_misc\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"articles_display_num\":\"10\",\"show_profile\":\"0\",\"show_user_custom_fields\":[\"-1\"],\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"0\",\"maxLevel\":\"-1\",\"show_subcat_desc\":\"1\",\"show_empty_categories\":\"0\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_subcat_desc_cat\":\"1\",\"show_empty_categories_cat\":\"0\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"0\",\"show_pagination_limit\":\"0\",\"show_headings\":\"1\",\"show_image_heading\":\"0\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"initial_sort\":\"ordering\",\"captcha\":\"\",\"show_email_form\":\"1\",\"show_email_copy\":\"0\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_feed_link\":\"1\",\"sef_advanced\":0,\"sef_ids\":0,\"custom_fields_enable\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 0, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 0, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}', '{\"show_jed_info\":\"1\",\"cachetimeout\":\"6\",\"minimum_stability\":\"4\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 0, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"administrator\":\"fr-FR\",\"site\":\"fr-FR\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 0, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 0, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}', '{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 0, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 0, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 0, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 0, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 0, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 0, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"search\"}', '{\"enabled\":\"0\",\"search_phrases\":\"1\",\"search_areas\":\"1\",\"show_date\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 0, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"template_positions_display\":\"0\",\"upload_limit\":\"10\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css,scss,sass\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 0, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"info_block_position\":\"0\",\"info_block_show_title\":\"1\",\"show_category\":\"0\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_associations\":\"0\",\"flags\":\"1\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_tags\":\"1\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"record_hits\":\"1\",\"show_noauth\":\"0\",\"urls_position\":\"0\",\"captcha\":\"\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_heading_title_text\":\"1\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_featured\":\"show\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\",\"feed_show_readmore\":\"0\",\"sef_advanced\":0,\"sef_ids\":0,\"custom_fields_enable\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 0, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}', '{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"9\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 0, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 0, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"users\"}', '{\"allowUserRegistration\":\"1\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"0\",\"useractivation\":\"2\",\"mail_to_admin\":\"1\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"domains\":[],\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"4\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"minimum_lowercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\",\"debugUsers\":\"1\",\"debugGroups\":\"1\",\"sef_advanced\":0,\"custom_fields_enable\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 0, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '{\"enabled\":\"0\",\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_autosuggest\":\"1\",\"show_suggested_query\":\"1\",\"show_explained_query\":\"1\",\"show_advanced\":\"1\",\"show_advanced_tips\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"sort_order\":\"relevance\",\"sort_direction\":\"desc\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stem\":\"1\",\"stemmer\":\"snowball\",\"enable_logging\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 0, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.2\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}', '{\"updatesource\":\"default\",\"customurl\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 0, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"December 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_description\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 0, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contenthistory\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 0, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 1, '{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ajax\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 0, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(33, 0, 'com_fields', 'component', 'com_fields', '', 1, 1, 1, 0, '{\"name\":\"com_fields\",\"type\":\"component\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(34, 0, 'com_associations', 'component', 'com_associations', '', 1, 1, 1, 0, '{\"name\":\"com_associations\",\"type\":\"component\",\"creationDate\":\"January 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_ASSOCIATIONS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(35, 0, 'com_privacy', 'component', 'com_privacy', '', 1, 1, 1, 1, '{\"name\":\"com_privacy\",\"type\":\"component\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"COM_PRIVACY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"privacy\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(36, 0, 'com_actionlogs', 'component', 'com_actionlogs', '', 1, 1, 1, 1, '{\"name\":\"com_actionlogs\",\"type\":\"component\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"COM_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"ip_logging\":0,\"csv_delimiter\":\",\",\"loggable_extensions\":[\"com_banners\",\"com_cache\",\"com_categories\",\"com_checkin\",\"com_config\",\"com_contact\",\"com_content\",\"com_installer\",\"com_media\",\"com_menus\",\"com_messages\",\"com_modules\",\"com_newsfeeds\",\"com_plugins\",\"com_redirect\",\"com_tags\",\"com_templates\",\"com_users\"]}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 0, 'LIB_PHPUTF8', 'library', 'phputf8', '', 0, 1, 1, 1, '{\"name\":\"LIB_PHPUTF8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phputf8\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 0, 'LIB_JOOMLA', 'library', 'joomla', '', 0, 1, 1, 1, '{\"name\":\"LIB_JOOMLA\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"https:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"mediaversion\":\"7e296b809b7e295ac5dbf2988bee0271\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 0, 'LIB_IDNA', 'library', 'idna_convert', '', 0, 1, 1, 1, '{\"name\":\"LIB_IDNA\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"phlyLabs\",\"copyright\":\"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de\",\"authorEmail\":\"phlymail@phlylabs.de\",\"authorUrl\":\"http:\\/\\/phlylabs.de\",\"version\":\"0.8.0\",\"description\":\"LIB_IDNA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"idna_convert\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 0, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{\"name\":\"FOF\",\"type\":\"library\",\"creationDate\":\"2015-04-22 13:15:32\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2011-2015 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"2.4.3\",\"description\":\"LIB_FOF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fof\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 0, 'LIB_PHPASS', 'library', 'phpass', '', 0, 1, 1, 1, '{\"name\":\"LIB_PHPASS\",\"type\":\"library\",\"creationDate\":\"2004-2006\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"http:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpass\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 0, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_archive\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 0, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 0, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_popular\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 0, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_banners\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 0, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_breadcrumbs\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 0, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 0, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 0, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_footer\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 0, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 0, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 0, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_news\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 0, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_random_image\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 0, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_related_items\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 0, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_search\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 0, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 0, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_syndicate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 0, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_users_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 0, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_whosonline\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 0, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_wrapper\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 0, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_category\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 0, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_categories\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 0, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_languages\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 0, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_finder\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 0, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 0, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 0, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 0, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_logged\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 0, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 0, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 0, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_popular\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 0, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_quickicon\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 0, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_status\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 0, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_submenu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 0, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_title\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 0, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_toolbar\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 0, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_multilangstatus\"}', '{\"cache\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 0, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_version\"}', '{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 0, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats_admin\"}', '{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 0, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_popular\"}', '{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 0, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_similar\"}', '{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(318, 0, 'mod_sampledata', 'module', 'mod_sampledata', '', 1, 1, 1, 0, '{\"name\":\"mod_sampledata\",\"type\":\"module\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"MOD_SAMPLEDATA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_sampledata\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(319, 0, 'mod_latestactions', 'module', 'mod_latestactions', '', 1, 1, 1, 0, '{\"name\":\"mod_latestactions\",\"type\":\"module\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"MOD_LATESTACTIONS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latestactions\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `ac19_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(320, 0, 'mod_privacy_dashboard', 'module', 'mod_privacy_dashboard', '', 1, 1, 1, 0, '{\"name\":\"mod_privacy_dashboard\",\"type\":\"module\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"MOD_PRIVACY_DASHBOARD_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_privacy_dashboard\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 0, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"gmail\"}', '{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 0, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 0, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ldap\"}', '{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 0, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"January 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 0, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"emailcloak\"}', '{\"mode\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 0, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"loadmodule\"}', '{\"style\":\"xhtml\"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 0, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}', '{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 0, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagenavigation\"}', '{\"position\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 0, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 0, 1, 0, '{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"vote\"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 0, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 - 2017 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"https:\\/\\/codemirror.net\\/\",\"version\":\"5.56.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"codemirror\"}', '{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 0, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"September 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"none\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 0, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2020\",\"author\":\"Tiny Technologies, Inc\",\"copyright\":\"Tiny Technologies, Inc\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"https:\\/\\/www.tiny.cloud\",\"version\":\"4.5.12\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tinymce\"}', '{\"configuration\":{\"toolbars\":{\"2\":{\"toolbar1\":[\"bold\",\"underline\",\"strikethrough\",\"|\",\"undo\",\"redo\",\"|\",\"bullist\",\"numlist\",\"|\",\"pastetext\"]},\"1\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"formatselect\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"code\",\"|\",\"hr\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"pastetext\",\"preview\"]},\"0\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"styleselect\",\"|\",\"formatselect\",\"fontselect\",\"fontsizeselect\",\"|\",\"searchreplace\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"image\",\"|\",\"code\",\"|\",\"forecolor\",\"backcolor\",\"|\",\"fullscreen\",\"|\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"emoticons\",\"media\",\"hr\",\"ltr\",\"rtl\",\"|\",\"cut\",\"copy\",\"paste\",\"pastetext\",\"|\",\"visualchars\",\"visualblocks\",\"nonbreaking\",\"blockquote\",\"template\",\"|\",\"print\",\"preview\",\"codesample\",\"insertdatetime\",\"removeformat\"]}},\"setoptions\":{\"2\":{\"access\":[\"1\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"1\":{\"access\":[\"6\",\"2\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"0\":{\"access\":[\"7\",\"4\",\"8\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}}},\"sets_amount\":3,\"html_height\":\"550\",\"html_width\":\"750\"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 0, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"article\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 0, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"image\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 0, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 0, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"readmore\"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 0, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 0, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 0, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 0, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 0, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagefilter\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 0, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"p3p\"}', '{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 0, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cache\"}', '{\"browsercache\":\"0\",\"cachetime\":\"15\"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 0, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"debug\"}', '{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 0, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"log\"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 0, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"redirect\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(428, 0, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"remember\"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 0, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sef\"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 0, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logout\"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(431, 0, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contactcreator\"}', '{\"autowebpage\":\"\",\"category\":\"4\",\"autopublish\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 0, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 0, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"profile\"}', '{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 0, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 0, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 0, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagecode\"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 0, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomlaupdate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 0, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"extensionupdate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 0, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha\"}', '{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 0, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"highlight\"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 0, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 0, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 0, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 0, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 0, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 0, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 0, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{\"name\":\"plg_twofactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"totp\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 0, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cookie\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 0, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{\"name\":\"plg_twofactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"yubikey\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 0, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_tags\",\"type\":\"plugin\",\"creationDate\":\"March 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '{\"search_limit\":\"50\",\"show_tagged_items\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(452, 0, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_updatenotification\",\"type\":\"plugin\",\"creationDate\":\"May 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"updatenotification\"}', '{\"lastrun\":1620052987}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(453, 0, 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_module\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_MODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"module\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(454, 0, 'plg_system_stats', 'plugin', 'stats', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_stats\",\"type\":\"plugin\",\"creationDate\":\"November 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"stats\"}', '{\"mode\":3,\"lastrun\":\"\",\"unique_id\":\"f720d200daf0faa703f0ecfac12f938df8c086ec\",\"interval\":12}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(455, 0, 'plg_installer_packageinstaller', 'plugin', 'packageinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"plg_installer_packageinstaller\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"packageinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(456, 0, 'PLG_INSTALLER_FOLDERINSTALLER', 'plugin', 'folderinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"PLG_INSTALLER_FOLDERINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"folderinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(457, 0, 'PLG_INSTALLER_URLINSTALLER', 'plugin', 'urlinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"PLG_INSTALLER_URLINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"urlinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(458, 0, 'plg_quickicon_phpversioncheck', 'plugin', 'phpversioncheck', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_phpversioncheck\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_QUICKICON_PHPVERSIONCHECK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpversioncheck\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(459, 0, 'plg_editors-xtd_menu', 'plugin', 'menu', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_menu\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(460, 0, 'plg_editors-xtd_contact', 'plugin', 'contact', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_contact\",\"type\":\"plugin\",\"creationDate\":\"October 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(461, 0, 'plg_system_fields', 'plugin', 'fields', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_fields\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_SYSTEM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(462, 0, 'plg_fields_calendar', 'plugin', 'calendar', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_calendar\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CALENDAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"calendar\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(463, 0, 'plg_fields_checkboxes', 'plugin', 'checkboxes', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_checkboxes\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CHECKBOXES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"checkboxes\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(464, 0, 'plg_fields_color', 'plugin', 'color', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_color\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_COLOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"color\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(465, 0, 'plg_fields_editor', 'plugin', 'editor', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_editor\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_EDITOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"editor\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(466, 0, 'plg_fields_imagelist', 'plugin', 'imagelist', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_imagelist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_IMAGELIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"imagelist\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(467, 0, 'plg_fields_integer', 'plugin', 'integer', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_integer\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_INTEGER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"integer\"}', '{\"multiple\":\"0\",\"first\":\"1\",\"last\":\"100\",\"step\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(468, 0, 'plg_fields_list', 'plugin', 'list', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_list\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_LIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"list\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(469, 0, 'plg_fields_media', 'plugin', 'media', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_media\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(470, 0, 'plg_fields_radio', 'plugin', 'radio', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_radio\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_RADIO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"radio\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(471, 0, 'plg_fields_sql', 'plugin', 'sql', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_sql\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_SQL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sql\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(472, 0, 'plg_fields_text', 'plugin', 'text', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_text\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"text\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(473, 0, 'plg_fields_textarea', 'plugin', 'textarea', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_textarea\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXTAREA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"textarea\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(474, 0, 'plg_fields_url', 'plugin', 'url', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_url\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_URL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"url\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(475, 0, 'plg_fields_user', 'plugin', 'user', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_user\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"user\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(476, 0, 'plg_fields_usergrouplist', 'plugin', 'usergrouplist', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_usergrouplist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USERGROUPLIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"usergrouplist\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(477, 0, 'plg_content_fields', 'plugin', 'fields', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_CONTENT_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(478, 0, 'plg_editors-xtd_fields', 'plugin', 'fields', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(479, 0, 'plg_sampledata_blog', 'plugin', 'blog', 'sampledata', 0, 1, 1, 0, '{\"name\":\"plg_sampledata_blog\",\"type\":\"plugin\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"PLG_SAMPLEDATA_BLOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"blog\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(480, 0, 'plg_system_sessiongc', 'plugin', 'sessiongc', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_sessiongc\",\"type\":\"plugin\",\"creationDate\":\"February 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.6\",\"description\":\"PLG_SYSTEM_SESSIONGC_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sessiongc\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(481, 0, 'plg_fields_repeatable', 'plugin', 'repeatable', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_repeatable\",\"type\":\"plugin\",\"creationDate\":\"April 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_FIELDS_REPEATABLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"repeatable\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(482, 0, 'plg_content_confirmconsent', 'plugin', 'confirmconsent', 'content', 0, 0, 1, 0, '{\"name\":\"plg_content_confirmconsent\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_CONTENT_CONFIRMCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"confirmconsent\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(483, 0, 'PLG_SYSTEM_ACTIONLOGS', 'plugin', 'actionlogs', 'system', 0, 1, 1, 0, '{\"name\":\"PLG_SYSTEM_ACTIONLOGS\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"actionlogs\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(484, 0, 'PLG_ACTIONLOG_JOOMLA', 'plugin', 'joomla', 'actionlog', 0, 1, 1, 0, '{\"name\":\"PLG_ACTIONLOG_JOOMLA\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_ACTIONLOG_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(485, 0, 'plg_system_privacyconsent', 'plugin', 'privacyconsent', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_privacyconsent\",\"type\":\"plugin\",\"creationDate\":\"April 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_PRIVACYCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"privacyconsent\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `ac19_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(486, 0, 'plg_system_logrotation', 'plugin', 'logrotation', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_logrotation\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_LOGROTATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logrotation\"}', '{\"lastrun\":1619536267}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(487, 0, 'plg_privacy_user', 'plugin', 'user', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_user\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_USER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"user\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(488, 0, 'plg_quickicon_privacycheck', 'plugin', 'privacycheck', 'quickicon', 0, 1, 1, 0, '{\"name\":\"plg_quickicon_privacycheck\",\"type\":\"plugin\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_QUICKICON_PRIVACYCHECK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"privacycheck\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(489, 0, 'plg_user_terms', 'plugin', 'terms', 'user', 0, 0, 1, 0, '{\"name\":\"plg_user_terms\",\"type\":\"plugin\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_USER_TERMS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"terms\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(490, 0, 'plg_privacy_contact', 'plugin', 'contact', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_contact\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(491, 0, 'plg_privacy_content', 'plugin', 'content', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_content\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(492, 0, 'plg_privacy_message', 'plugin', 'message', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_message\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_MESSAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"message\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(493, 0, 'plg_privacy_actionlogs', 'plugin', 'actionlogs', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_actionlogs\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"actionlogs\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(494, 0, 'plg_captcha_recaptcha_invisible', 'plugin', 'recaptcha_invisible', 'captcha', 0, 0, 1, 0, '{\"name\":\"plg_captcha_recaptcha_invisible\",\"type\":\"plugin\",\"creationDate\":\"November 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_INVISIBLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha_invisible\"}', '{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(495, 0, 'plg_privacy_consents', 'plugin', 'consents', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_consents\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONSENTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"consents\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 0, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{\"name\":\"beez3\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"3.1.0\",\"description\":\"TPL_BEEZ3_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 0, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"3.0.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 0, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{\"name\":\"protostar\",\"type\":\"template\",\"creationDate\":\"4\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_PROTOSTAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 0, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{\"name\":\"isis\",\"type\":\"template\",\"creationDate\":\"3\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ISIS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"templateColor\":\"\",\"logoFile\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 802, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"November 2020\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.23\",\"description\":\"en-GB site language\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 802, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"November 2020\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.23\",\"description\":\"en-GB administrator language\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(602, 803, 'FrenchFrance', 'language', 'fr-FR', '', 0, 1, 0, 0, '{\"name\":\"French (France)\",\"type\":\"language\",\"creationDate\":\"2021-02-25\",\"author\":\"French translation team : joomla.fr\",\"copyright\":\"Copyright (C) 2005 - 2021 Joomla.fr and Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"traduction@joomla.fr\",\"authorUrl\":\"http:\\/\\/joomla.fr\",\"version\":\"3.9.25.1\",\"description\":\"fr-FR - Site language\",\"group\":\"\",\"filename\":\"install\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(603, 803, 'FrenchFrance', 'language', 'fr-FR', '', 1, 1, 0, 0, '{\"name\":\"French (France)\",\"type\":\"language\",\"creationDate\":\"2021-02-25\",\"author\":\"French translation team : joomla.fr\",\"copyright\":\"Copyright (C) 2005 - 2021 Joomla.fr and Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"traduction@joomla.fr\",\"authorUrl\":\"http:\\/\\/joomla.fr\",\"version\":\"3.9.25.1\",\"description\":\"fr-FR - Administration language\",\"group\":\"\",\"filename\":\"install\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 0, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"November 2020\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.23\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(802, 0, 'English (en-GB) Language Pack', 'package', 'pkg_en-GB', '', 0, 1, 1, 1, '{\"name\":\"English (en-GB) Language Pack\",\"type\":\"package\",\"creationDate\":\"November 2020\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.23.1\",\"description\":\"en-GB language pack\",\"group\":\"\",\"filename\":\"pkg_en-GB\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(803, 0, 'French (fr-FR) Language pack', 'package', 'pkg_fr-FR', '', 0, 1, 1, 0, '{\"name\":\"French (fr-FR) Language pack\",\"type\":\"package\",\"creationDate\":\"2021-02-25\",\"author\":\"French translation team : joomla.fr\",\"copyright\":\"Copyright (C) 2005 - 2021 Joomla.fr and Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"traduction@joomla.fr\",\"authorUrl\":\"http:\\/\\/joomla.fr\",\"version\":\"3.9.25.1\",\"description\":\"<div style=\\\"text-align:left;\\\">\\n<h3>Joomla! 3.9.25 Full French (fr-FR) Language Package - Version 3.9.25.1<\\/h3>\\n<h3>Paquet de langue Joomla! 3.9.25 fran\\u00e7ais (fr-FR) complet - Version 3.9.25.1<\\/h3>\\n<\\/div>\",\"group\":\"\",\"filename\":\"pkg_fr-FR\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 0, 'com_annuaire', 'component', 'com_annuaire', '', 1, 1, 0, 0, '{\"name\":\"com_annuaire\",\"type\":\"component\",\"creationDate\":\"Octobre 2020\",\"author\":\"Emmanuel DEROME\",\"copyright\":\"All rights reserved\",\"authorEmail\":\"emmanuel.derome@gmail.com\",\"authorUrl\":\"\",\"version\":\"2.5\",\"description\":\"com_annuaire_descr\",\"group\":\"\",\"filename\":\"annuaire\"}', '{\"show_title\":\"1\",\"link_titles\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 0, 'com_ac19', 'component', 'com_ac19', '', 1, 1, 0, 0, '{\"name\":\"com_ac19\",\"type\":\"component\",\"creationDate\":\"Novembre 2020\",\"author\":\"BTS2-SIO SLAM\",\"copyright\":\"All rights reserved\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"0.3\",\"description\":\"com_ac19_descr\",\"group\":\"\",\"filename\":\"ac19\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ac19_fields`
--

CREATE TABLE `ac19_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `default_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 0,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `checked_out` int(11) NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT 0,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldparams` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `access` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ac19_fields_categories`
--

CREATE TABLE `ac19_fields_categories` (
  `field_id` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ac19_fields_groups`
--

CREATE TABLE `ac19_fields_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 0,
  `checked_out` int(11) NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT 0,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `access` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ac19_fields_values`
--

CREATE TABLE `ac19_fields_values` (
  `field_id` int(10) UNSIGNED NOT NULL,
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ac19_finder_filters`
--

CREATE TABLE `ac19_finder_filters` (
  `filter_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` text NOT NULL,
  `params` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `ac19_finder_links`
--

CREATE TABLE `ac19_finder_links` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `state` int(5) DEFAULT 1,
  `access` int(5) DEFAULT 0,
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double UNSIGNED NOT NULL DEFAULT 0,
  `sale_price` double UNSIGNED NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `ac19_finder_links_terms0`
--

CREATE TABLE `ac19_finder_links_terms0` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `ac19_finder_links_terms1`
--

CREATE TABLE `ac19_finder_links_terms1` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `ac19_finder_links_terms2`
--

CREATE TABLE `ac19_finder_links_terms2` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `ac19_finder_links_terms3`
--

CREATE TABLE `ac19_finder_links_terms3` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `ac19_finder_links_terms4`
--

CREATE TABLE `ac19_finder_links_terms4` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `ac19_finder_links_terms5`
--

CREATE TABLE `ac19_finder_links_terms5` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `ac19_finder_links_terms6`
--

CREATE TABLE `ac19_finder_links_terms6` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `ac19_finder_links_terms7`
--

CREATE TABLE `ac19_finder_links_terms7` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `ac19_finder_links_terms8`
--

CREATE TABLE `ac19_finder_links_terms8` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `ac19_finder_links_terms9`
--

CREATE TABLE `ac19_finder_links_terms9` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `ac19_finder_links_termsa`
--

CREATE TABLE `ac19_finder_links_termsa` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `ac19_finder_links_termsb`
--

CREATE TABLE `ac19_finder_links_termsb` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `ac19_finder_links_termsc`
--

CREATE TABLE `ac19_finder_links_termsc` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `ac19_finder_links_termsd`
--

CREATE TABLE `ac19_finder_links_termsd` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `ac19_finder_links_termse`
--

CREATE TABLE `ac19_finder_links_termse` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `ac19_finder_links_termsf`
--

CREATE TABLE `ac19_finder_links_termsf` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `ac19_finder_taxonomy`
--

CREATE TABLE `ac19_finder_taxonomy` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `access` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `ordering` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `ac19_finder_taxonomy`
--

INSERT INTO `ac19_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ac19_finder_taxonomy_map`
--

CREATE TABLE `ac19_finder_taxonomy_map` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `ac19_finder_terms`
--

CREATE TABLE `ac19_finder_terms` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `weight` float UNSIGNED NOT NULL DEFAULT 0,
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT 0,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `ac19_finder_terms_common`
--

CREATE TABLE `ac19_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `ac19_finder_terms_common`
--

INSERT INTO `ac19_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('any', 'en'),
('are', 'en'),
('aren\'t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn\'t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Structure de la table `ac19_finder_tokens`
--

CREATE TABLE `ac19_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `weight` float UNSIGNED NOT NULL DEFAULT 1,
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT 2,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `ac19_finder_tokens_aggregate`
--

CREATE TABLE `ac19_finder_tokens_aggregate` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `term_weight` float UNSIGNED NOT NULL,
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT 2,
  `context_weight` float UNSIGNED NOT NULL,
  `total_weight` float UNSIGNED NOT NULL,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `ac19_finder_types`
--

CREATE TABLE `ac19_finder_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `ac19_languages`
--

CREATE TABLE `ac19_languages` (
  `lang_id` int(11) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT 0,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ac19_languages`
--

INSERT INTO `ac19_languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 0, 'en-GB', 'English (en-GB)', 'English (United Kingdom)', 'en', 'en_gb', '', '', '', '', 1, 1, 2),
(2, 0, 'fr-FR', 'Français (fr-FR)', 'Français (France)', 'fr', 'fr_fr', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `ac19_menu`
--

CREATE TABLE `ac19_menu` (
  `id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'The published state of the menu link.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'The relative level in the tree.',
  `component_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to #__users.id',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'The click behaviour of the link.',
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set rgt.',
  `home` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ac19_menu`
--

INSERT INTO `ac19_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 127, 0, '*', 0),
(2, 'main', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 1, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'main', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'main', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 1, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'main', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'main', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'main', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 1, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 23, 28, 0, '*', 1),
(8, 'main', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 1, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 24, 25, 0, '*', 1),
(9, 'main', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 1, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 26, 27, 0, '*', 1),
(10, 'main', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 1, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 29, 32, 0, '*', 1),
(11, 'main', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 1, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 30, 31, 0, '*', 1),
(13, 'main', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 33, 38, 0, '*', 1),
(14, 'main', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 34, 35, 0, '*', 1),
(15, 'main', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 1, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 36, 37, 0, '*', 1),
(16, 'main', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 1, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 39, 40, 0, '*', 1),
(17, 'main', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 1, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 41, 42, 0, '*', 1),
(18, 'main', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 1, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 43, 44, 0, '*', 1),
(19, 'main', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 45, 46, 0, '*', 1),
(20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 1, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 47, 48, 0, '', 1),
(21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 1, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 49, 50, 0, '*', 1),
(22, 'main', 'com_associations', 'Multilingual Associations', '', 'Multilingual Associations', 'index.php?option=com_associations', 'component', 1, 1, 1, 34, 0, '0000-00-00 00:00:00', 0, 0, 'class:associations', 0, '', 51, 52, 0, '*', 1),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 0, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{\"featured_categories\":[\"\"],\"layout_type\":\"blog\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"3\",\"num_columns\":\"3\",\"num_links\":\"0\",\"multi_column_order\":\"1\",\"orderby_pri\":\"\",\"orderby_sec\":\"front\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":1,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 53, 54, 0, '*', 0),
(102, 'mainmenu', 'Bienvenue', 'bienvenue', '', 'bienvenue', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 55, 56, 1, '*', 0),
(103, 'mainmenu', 'Actualités', 'actualites', '', 'actualites', 'index.php?option=com_content&view=article&id=2', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 57, 58, 0, '*', 0),
(104, 'mainmenu', 'Bénévolat', 'benevolat', '', 'benevolat', 'index.php?option=com_content&view=article&id=3', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 59, 60, 0, '*', 0),
(105, 'mainmenu', 'Mon profil', 'mon-profil', '', 'mon-profil', 'index.php?option=com_users&view=profile', 'component', 1, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 2, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 61, 62, 0, '*', 0),
(106, 'mainmenu', 'Contact', 'contact', '', 'contact', 'index.php?option=com_contact&view=contact&id=1', 'component', 1, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"presentation_style\":\"\",\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"show_name\":\"\",\"show_tags\":\"\",\"show_info\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"add_mailto_link\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_misc\":\"\",\"show_articles\":\"\",\"articles_display_num\":\"\",\"show_profile\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 63, 64, 0, '*', 0),
(119, 'annuaire', 'Entreprises', 'entreprises', '', 'entreprises', 'index.php?option=com_annuaire&view=entreprises', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 2, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 21, 22, 0, '*', 0),
(120, 'annuaire', 'Contacts', 'contacts', '', 'contacts', 'index.php?option=com_annuaire&view=contacts', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 2, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 19, 20, 0, '*', 0),
(121, 'main', 'com_annuaire', 'com-annuaire', '', 'com-annuaire', 'index.php?option=com_annuaire', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 65, 70, 0, '', 1),
(122, 'main', 'com_annuaire_entreprises', 'com-annuaire-entreprises', '', 'com-annuaire/com-annuaire-entreprises', 'index.php?option=com_annuaire&view=entreprises', 'component', 1, 121, 2, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 66, 67, 0, '', 1),
(123, 'main', 'com_annuaire_contacts', 'com-annuaire-contacts', '', 'com-annuaire/com-annuaire-contacts', 'index.php?option=com_annuaire&view=contacts', 'component', 1, 121, 2, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 68, 69, 0, '', 1),
(128, 'main', 'com_ac19', 'com-ac19', '', 'com-ac19', 'index.php?option=com_ac19', 'component', 1, 1, 1, 10007, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 71, 106, 0, '', 1),
(129, 'main', 'com_ac19_benevoles', 'com-ac19-benevoles', '', 'com-ac19/com-ac19-benevoles', 'index.php?option=com_ac19&view=benevoles', 'component', 1, 128, 2, 10007, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 72, 73, 0, '', 1),
(130, 'main', 'com_ac19_catalogues', 'com-ac19-catalogues', '', 'com-ac19/com-ac19-catalogues', 'index.php?option=com_ac19&view=catalogues', 'component', 1, 128, 2, 10007, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 74, 75, 0, '', 1),
(131, 'main', 'com_ac19_catal_categs', 'com-ac19-catal-categs', '', 'com-ac19/com-ac19-catal-categs', 'index.php?option=com_ac19&view=catal_categs', 'component', 1, 128, 2, 10007, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 76, 77, 0, '', 1),
(132, 'main', 'com_ac19_categories', 'com-ac19-categories', '', 'com-ac19/com-ac19-categories', 'index.php?option=com_ac19&view=categories', 'component', 1, 128, 2, 10007, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 78, 79, 0, '', 1),
(133, 'main', 'com_ac19_commandes', 'com-ac19-commandes', '', 'com-ac19/com-ac19-commandes', 'index.php?option=com_ac19&view=commandes', 'component', 1, 128, 2, 10007, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 80, 81, 0, '', 1),
(134, 'main', 'com_ac19_coordinateurs', 'com-ac19-coordinateurs', '', 'com-ac19/com-ac19-coordinateurs', 'index.php?option=com_ac19&view=coordinateurs', 'component', 1, 128, 2, 10007, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 82, 83, 0, '', 1),
(135, 'main', 'com_ac19_etat_cdes', 'com-ac19-etat-cdes', '', 'com-ac19/com-ac19-etat-cdes', 'index.php?option=com_ac19&view=etat_cdes', 'component', 1, 128, 2, 10007, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 84, 85, 0, '', 1),
(136, 'main', 'com_ac19_ligne_cdes', 'com-ac19-ligne-cdes', '', 'com-ac19/com-ac19-ligne-cdes', 'index.php?option=com_ac19&view=ligne_cdes', 'component', 1, 128, 2, 10007, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 86, 87, 0, '', 1),
(137, 'main', 'com_ac19_magasins', 'com-ac19-magasins', '', 'com-ac19/com-ac19-magasins', 'index.php?option=com_ac19&view=magasins', 'component', 1, 128, 2, 10007, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 88, 89, 0, '', 1),
(138, 'main', 'com_ac19_messages', 'com-ac19-messages', '', 'com-ac19/com-ac19-messages', 'index.php?option=com_ac19&view=messages', 'component', 1, 128, 2, 10007, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 90, 91, 0, '', 1),
(139, 'main', 'com_ac19_partenaires', 'com-ac19-partenaires', '', 'com-ac19/com-ac19-partenaires', 'index.php?option=com_ac19&view=partenaires', 'component', 1, 128, 2, 10007, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 92, 93, 0, '', 1),
(140, 'main', 'com_ac19_particuliers', 'com-ac19-particuliers', '', 'com-ac19/com-ac19-particuliers', 'index.php?option=com_ac19&view=particuliers', 'component', 1, 128, 2, 10007, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 94, 95, 0, '', 1),
(141, 'main', 'com_ac19_prise_en_charges', 'com-ac19-prise-en-charges', '', 'com-ac19/com-ac19-prise-en-charges', 'index.php?option=com_ac19&view=prise_en_charges', 'component', 1, 128, 2, 10007, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 96, 97, 0, '', 1),
(142, 'main', 'com_ac19_produits', 'com-ac19-produits', '', 'com-ac19/com-ac19-produits', 'index.php?option=com_ac19&view=produits', 'component', 1, 128, 2, 10007, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 98, 99, 0, '', 1),
(143, 'main', 'com_ac19_stocks', 'com-ac19-stocks', '', 'com-ac19/com-ac19-stocks', 'index.php?option=com_ac19&view=stocks', 'component', 1, 128, 2, 10007, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 100, 101, 0, '', 1),
(144, 'main', 'com_ac19_type_mags', 'com-ac19-type-mags', '', 'com-ac19/com-ac19-type-mags', 'index.php?option=com_ac19&view=type_mags', 'component', 1, 128, 2, 10007, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 102, 103, 0, '', 1),
(145, 'main', 'com_ac19_utilisateurs', 'com-ac19-utilisateurs', '', 'com-ac19/com-ac19-utilisateurs', 'index.php?option=com_ac19&view=utilisateurs', 'component', 1, 128, 2, 10007, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 104, 105, 0, '', 1),
(146, 'particulier', 'Catalogues', 'particulier-catalogues', '', 'particulier-catalogues', 'index.php?option=com_ac19&view=catalogues', 'component', 1, 1, 1, 10007, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 107, 108, 0, '*', 0),
(147, 'particulier', 'Mes commandes', 'particulier-mes-commandes', '', 'particulier-mes-commandes', 'index.php?option=com_ac19&view=commandes', 'component', 1, 1, 1, 10007, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 109, 110, 0, '*', 0),
(148, 'particulier', 'Livraisons', 'particulier-livraisons', '', 'particulier-livraisons', 'index.php?option=com_ac19&view=prise_en_charges', 'component', 1, 1, 1, 10007, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 111, 112, 0, '*', 0),
(149, 'partenaire', 'Mes catalogues', 'partenaire-mes-catalogues', '', 'partenaire-mes-catalogues', 'index.php?option=com_ac19&view=catalogues', 'component', 1, 1, 1, 10007, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 113, 114, 0, '*', 0),
(151, 'mainmenu', 'Mes Messages', 'mes-messages', '', 'mes-messages', 'index.php?option=com_ac19&view=utilisateurs', 'component', 1, 1, 1, 10007, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 115, 116, 0, '*', 0),
(152, 'benevole', 'Catalogues', 'benevole-catalogues', '', 'benevole-catalogues', 'index.php?option=com_ac19&view=catalogues', 'component', 1, 1, 1, 10007, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 117, 118, 0, '*', 0),
(153, 'benevole', 'Commandes', 'benevole-commandes', '', 'benevole-commandes', 'index.php?option=com_ac19&view=commandes', 'component', 1, 1, 1, 10007, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 119, 120, 0, '*', 0),
(154, 'benevole', 'Mes livraisons', 'benevole-mes-livraisons', '', 'benevole-mes-livraisons', 'index.php?option=com_ac19&view=prise_en_charges', 'component', 1, 1, 1, 10007, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 121, 122, 0, '*', 0),
(155, 'coordinateur', 'Catalogues', 'coordinateur-catalogues', '', 'coordinateur-catalogues', 'index.php?option=com_ac19&view=catalogues', 'component', 1, 1, 1, 10007, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 13, 14, 0, '*', 0),
(156, 'coordinateur', 'Commandes', 'coordinateur-commandes', '', 'coordinateur-commandes', 'index.php?option=com_ac19&view=commandes', 'component', 1, 1, 1, 10007, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 15, 16, 0, '*', 0),
(157, 'coordinateur', 'Livraisons', 'coordinateur-livraisons', '', 'coordinateur-livraisons', 'index.php?option=com_ac19&view=prise_en_charges', 'component', 1, 1, 1, 10007, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 17, 18, 0, '*', 0),
(158, 'coordinateur', 'Inscriptions', 'coordinateur-inscriptions', '', 'coordinateur-inscriptions', 'index.php?option=com_users&view=registration', 'component', 1, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 11, 12, 0, '*', 0),
(159, 'partenaire', 'Commandes', 'partenaire-commandes', '', 'partenaire-commandes', 'index.php?option=com_ac19&view=commandes', 'component', 1, 1, 1, 10007, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 123, 124, 0, '*', 0),
(160, 'partenaire', 'Livraisons', 'partenaire-livraisons', '', 'partenaire-livraisons', 'index.php?option=com_ac19&view=prise_en_charges', 'component', 1, 1, 1, 10007, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 125, 126, 0, '*', 0);

-- --------------------------------------------------------

--
-- Structure de la table `ac19_menu_types`
--

CREATE TABLE `ac19_menu_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ac19_menu_types`
--

INSERT INTO `ac19_menu_types` (`id`, `asset_id`, `menutype`, `title`, `description`, `client_id`) VALUES
(1, 0, 'mainmenu', 'Menu principal', 'Le menu principal du site', 0),
(2, 68, 'annuaire', 'Annuaire', '', 0),
(3, 76, 'particulier', 'AC19_Particulier', '', 0),
(4, 77, 'benevole', 'AC19_Bénévole', '', 0),
(5, 78, 'coordinateur', 'AC19_Coordinateur', '', 0),
(6, 79, 'partenaire', 'AC19_Partenaire', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `ac19_messages`
--

CREATE TABLE `ac19_messages` (
  `message_id` int(10) UNSIGNED NOT NULL,
  `user_id_from` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id_to` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `folder_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT 0,
  `priority` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ac19_messages_cfg`
--

CREATE TABLE `ac19_messages_cfg` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ac19_modules`
--

CREATE TABLE `ac19_modules` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `showtitle` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT 0,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ac19_modules`
--

INSERT INTO `ac19_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Menu principal', '', '', 1, 'position-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{\"menutype\":\"mainmenu\",\"base\":\"\",\"startLevel\":1,\"endLevel\":0,\"showAllChildren\":0,\"tag_id\":\"\",\"class_sfx\":\" nav-pills\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"_menu\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(2, 40, 'Connexion', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Articles populaires', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}', 1, '*'),
(4, 42, 'Articles les plus récents', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}', 1, '*'),
(8, 43, 'Barre d\'outils', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Icônes de raccourcis', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 45, 'Utilisateurs connectés', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}', 1, '*'),
(12, 46, 'Menu principal', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}', 1, '*'),
(13, 47, 'Sous-menu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 48, 'Statut utilisateur', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 49, 'Titre', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Connexion', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{\"greeting\":\"1\",\"name\":\"0\"}', 0, '*'),
(17, 51, 'Fil de navigation', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_breadcrumbs', 1, 1, '{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}', 0, '*'),
(79, 52, 'Statut multilangue', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(86, 53, 'Version de Joomla', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(87, 55, 'Exemples de données', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_sampledata', 6, 1, '{}', 1, '*'),
(88, 58, 'Dernière actions', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latestactions', 6, 1, '{}', 1, '*'),
(89, 59, 'Privacy Dashboard', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_privacy_dashboard', 6, 1, '{}', 1, '*'),
(90, 69, 'Annuaire', '', NULL, 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 2, 1, '{\"menutype\":\"annuaire\",\"base\":\"\",\"startLevel\":1,\"endLevel\":0,\"showAllChildren\":1,\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(91, 80, 'Espace Particulier', '', NULL, 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 7, 1, '{\"menutype\":\"particulier\",\"base\":\"\",\"startLevel\":1,\"endLevel\":0,\"showAllChildren\":1,\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(92, 81, 'Espace Bénévole', '', NULL, 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 8, 1, '{\"menutype\":\"benevole\",\"base\":\"\",\"startLevel\":1,\"endLevel\":0,\"showAllChildren\":1,\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(93, 82, 'Espace Coordinateur', '', NULL, 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 9, 1, '{\"menutype\":\"coordinateur\",\"base\":\"\",\"startLevel\":1,\"endLevel\":0,\"showAllChildren\":1,\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(94, 83, 'Espace Partenaire', '', NULL, 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 10, 1, '{\"menutype\":\"partenaire\",\"base\":\"\",\"startLevel\":1,\"endLevel\":0,\"showAllChildren\":1,\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*');

-- --------------------------------------------------------

--
-- Structure de la table `ac19_modules_menu`
--

CREATE TABLE `ac19_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT 0,
  `menuid` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ac19_modules_menu`
--

INSERT INTO `ac19_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 0),
(91, 0),
(92, 0),
(93, 0),
(94, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ac19_newsfeeds`
--

CREATE TABLE `ac19_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT 0,
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `numarticles` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `cache_time` int(10) UNSIGNED NOT NULL DEFAULT 3600,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT 0,
  `rtl` tinyint(4) NOT NULL DEFAULT 0,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ac19_overrider`
--

CREATE TABLE `ac19_overrider` (
  `id` int(10) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ac19_postinstall_messages`
--

CREATE TABLE `ac19_postinstall_messages` (
  `postinstall_message_id` bigint(20) UNSIGNED NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT 700 COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT 1,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ac19_postinstall_messages`
--

INSERT INTO `ac19_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(3, 700, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 1),
(4, 700, 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION', 'plg_system_updatenotification', 1, 'action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_condition', '3.6.3', 1),
(5, 700, 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_TITLE', 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/joomla40checks.php', 'admin_postinstall_joomla40checks_condition', '3.7.0', 1),
(6, 700, 'TPL_HATHOR_MESSAGE_POSTINSTALL_TITLE', 'TPL_HATHOR_MESSAGE_POSTINSTALL_BODY', 'TPL_HATHOR_MESSAGE_POSTINSTALL_ACTION', 'tpl_hathor', 1, 'action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_condition', '3.7.0', 1),
(7, 700, 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_TITLE', 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_BODY', 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_ACTION', 'plg_captcha_recaptcha', 1, 'action', 'site://plugins/captcha/recaptcha/postinstall/actions.php', 'recaptcha_postinstall_action', 'site://plugins/captcha/recaptcha/postinstall/actions.php', 'recaptcha_postinstall_condition', '3.8.6', 1),
(8, 700, 'COM_ACTIONLOGS_POSTINSTALL_TITLE', 'COM_ACTIONLOGS_POSTINSTALL_BODY', '', 'com_actionlogs', 1, 'message', '', '', '', '', '3.9.0', 1),
(9, 700, 'COM_PRIVACY_POSTINSTALL_TITLE', 'COM_PRIVACY_POSTINSTALL_BODY', '', 'com_privacy', 1, 'message', '', '', '', '', '3.9.0', 1);

-- --------------------------------------------------------

--
-- Structure de la table `ac19_privacy_consents`
--

CREATE TABLE `ac19_privacy_consents` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `state` int(10) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `remind` tinyint(4) NOT NULL DEFAULT 0,
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ac19_privacy_requests`
--

CREATE TABLE `ac19_privacy_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `requested_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `request_type` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `confirm_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `confirm_token_created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ac19_redirect_links`
--

CREATE TABLE `ac19_redirect_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT 301
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ac19_schemas`
--

CREATE TABLE `ac19_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ac19_schemas`
--

INSERT INTO `ac19_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.9.22-2020-09-16');

-- --------------------------------------------------------

--
-- Structure de la table `ac19_session`
--

CREATE TABLE `ac19_session` (
  `session_id` varbinary(192) NOT NULL,
  `client_id` tinyint(3) UNSIGNED DEFAULT NULL,
  `guest` tinyint(3) UNSIGNED DEFAULT 1,
  `time` int(11) NOT NULL DEFAULT 0,
  `data` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userid` int(11) DEFAULT 0,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ac19_session`
--

INSERT INTO `ac19_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
(0x74336661697562313239383373706b726675707261626b6e6f39, 0, 0, 1620053638, 'joomla|s:1004:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTo3O3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTYyMDA1Mjk4NztzOjQ6Imxhc3QiO2k6MTYyMDA1MzYzNTtzOjM6Im5vdyI7aToxNjIwMDUzNjM4O31zOjU6InRva2VuIjtzOjMyOiIyYzNTQXJha3M3OEk2YkVFRFUzNThWZFJSVmdJR2xoaiI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6InVzZXJzIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6ImxvZ2luIjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImZvcm0iO086ODoic3RkQ2xhc3MiOjI6e3M6NjoicmV0dXJuIjtzOjY2OiJodHRwOi8vbG9jYWxob3N0L2FjMTkvaW5kZXgucGhwP29wdGlvbj1jb21fYWMxOSZ2aWV3PWNvbW1hbmRlJmlkPTIiO3M6NDoiZGF0YSI7YTowOnt9fX19fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7TzoyMDoiSm9vbWxhXENNU1xVc2VyXFVzZXIiOjE6e3M6MjoiaWQiO3M6MzoiNjcwIjt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";', 670, 'mdupond');

-- --------------------------------------------------------

--
-- Structure de la table `ac19_tags`
--

CREATE TABLE `ac19_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lft` int(11) NOT NULL DEFAULT 0,
  `rgt` int(11) NOT NULL DEFAULT 0,
  `level` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ac19_tags`
--

INSERT INTO `ac19_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 669, '2020-10-10 17:15:20', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `ac19_template_styles`
--

CREATE TABLE `ac19_template_styles` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ac19_template_styles`
--

INSERT INTO `ac19_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.png\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),
(7, 'protostar', 0, '0', 'protostar - Default', '{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}'),
(8, 'isis', 1, '1', 'isis - Default', '{\"templateColor\":\"\",\"logoFile\":\"\"}'),
(9, 'protostar', 0, '1', 'protostar - AC19', '{\"templateColor\":\"#1085d6\",\"templateBackgroundColor\":\"#f4f6f7\",\"logoFile\":\"images\\/ac19\\/logo_ac19.png\",\"sitetitle\":\"AC19\",\"sitedescription\":\"Un site cr\\u00e9\\u00e9 par les \\u00e9tudiants du lyc\\u00e9e Louis-Armand - SITE DE TEST UNIQUEMENT !\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}');

-- --------------------------------------------------------

--
-- Structure de la table `ac19_ucm_base`
--

CREATE TABLE `ac19_ucm_base` (
  `ucm_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ac19_ucm_content`
--

CREATE TABLE `ac19_ucm_content` (
  `core_content_id` int(10) UNSIGNED NOT NULL,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT 0,
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_checked_out_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `core_access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `core_params` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `core_featured` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_content_item_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'ID from the individual type table',
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `core_urls` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `core_hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `core_version` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `core_ordering` int(11) NOT NULL DEFAULT 0,
  `core_metakey` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `core_catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

-- --------------------------------------------------------

--
-- Structure de la table `ac19_ucm_history`
--

CREATE TABLE `ac19_ucm_history` (
  `version_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) UNSIGNED NOT NULL,
  `ucm_type_id` int(10) UNSIGNED NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `character_count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ac19_ucm_history`
--

INSERT INTO `ac19_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 1, 2, '', '2020-10-10 17:23:40', 669, 1629, '5f3c8b549fe2b2953bab807b4d5c27f38e171cf6', '{\"id\":1,\"name\":\"Info AC19\",\"alias\":\"info-ac19\",\"con_position\":\"\",\"address\":\"\",\"suburb\":\"\",\"state\":\"\",\"country\":\"\",\"postcode\":\"\",\"telephone\":\"\",\"fax\":\"\",\"misc\":\"\",\"image\":\"\",\"email_to\":\"\",\"default_con\":0,\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"ordering\":1,\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_info\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"add_mailto_link\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"articles_display_num\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":false,\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":\"670\",\"catid\":\"4\",\"access\":\"1\",\"mobile\":\"\",\"webpage\":false,\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2020-10-10 17:23:40\",\"created_by\":\"669\",\"created_by_alias\":\"\",\"modified\":\"2020-10-10 17:23:40\",\"modified_by\":null,\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":1,\"hits\":null}', 0),
(2, 1, 1, '', '2020-10-10 17:39:58', 669, 1807, 'f3a3c94f2b153e23ff5a0b7345235a89b795efc4', '{\"id\":1,\"asset_id\":60,\"title\":\"Bienvenue\",\"alias\":\"bienvenue\",\"introtext\":\"<p>Bienvenue sur le site de l\'association AC19 !<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2020-10-10 17:39:58\",\"created_by\":\"669\",\"created_by_alias\":\"\",\"modified\":\"2020-10-10 17:39:58\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2020-10-10 17:39:58\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0),
(3, 2, 1, '', '2020-10-10 17:40:25', 669, 1761, '584d8cdf677a4439a9b9e75e6c344e358940a54b', '{\"id\":2,\"asset_id\":61,\"title\":\"Actualit\\u00e9s\",\"alias\":\"actualites\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2020-10-10 17:40:25\",\"created_by\":\"669\",\"created_by_alias\":\"\",\"modified\":\"2020-10-10 17:40:25\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2020-10-10 17:40:25\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0),
(4, 3, 1, '', '2020-10-10 17:40:35', 669, 1764, '19bc2f01c268dad9817ecc89927f18b352569148', '{\"id\":3,\"asset_id\":62,\"title\":\"B\\u00e9n\\u00e9volat\",\"alias\":\"benevolat\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2020-10-10 17:40:35\",\"created_by\":\"669\",\"created_by_alias\":\"\",\"modified\":\"2020-10-10 17:40:35\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2020-10-10 17:40:35\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0),
(5, 4, 1, '', '2020-10-10 17:40:48', 669, 1756, '2b2d8c1d978a23c85d4d8bb6825fab11447ac1bd', '{\"id\":4,\"asset_id\":63,\"title\":\"Mon profil\",\"alias\":\"mon-profil\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2020-10-10 17:40:48\",\"created_by\":\"669\",\"created_by_alias\":\"\",\"modified\":\"2020-10-10 17:40:48\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2020-10-10 17:40:48\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0),
(6, 4, 1, '', '2020-10-10 17:41:25', 669, 1775, '9d03ab544a876011c8ee8e5327b726d5c0f75617', '{\"id\":4,\"asset_id\":\"63\",\"title\":\"Mon profil\",\"alias\":\"mon-profil\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2020-10-10 17:40:48\",\"created_by\":\"669\",\"created_by_alias\":\"\",\"modified\":\"2020-10-10 17:41:25\",\"modified_by\":\"669\",\"checked_out\":\"669\",\"checked_out_time\":\"2020-10-10 17:41:03\",\"publish_up\":\"2020-10-10 17:40:48\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"2\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0);

-- --------------------------------------------------------

--
-- Structure de la table `ac19_updates`
--

CREATE TABLE `ac19_updates` (
  `update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT 0,
  `extension_id` int(11) DEFAULT 0,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT 0,
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

--
-- Déchargement des données de la table `ac19_updates`
--

INSERT INTO `ac19_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(847, 2, 0, 'Armenian', '', 'pkg_hy-AM', 'package', '', 0, '3.4.4.1', '', 'https://update.joomla.org/language/details3/hy-AM_details.xml', '', ''),
(848, 2, 0, 'Malay', '', 'pkg_ms-MY', 'package', '', 0, '3.4.1.2', '', 'https://update.joomla.org/language/details3/ms-MY_details.xml', '', ''),
(849, 2, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '3.9.25.1', '', 'https://update.joomla.org/language/details3/ro-RO_details.xml', '', ''),
(850, 2, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.9.26.1', '', 'https://update.joomla.org/language/details3/nl-BE_details.xml', '', ''),
(851, 2, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.8.0.1', '', 'https://update.joomla.org/language/details3/zh-TW_details.xml', '', ''),
(852, 2, 803, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.9.26.1', '', 'https://update.joomla.org/language/details3/fr-FR_details.xml', '', ''),
(853, 2, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/gl-ES_details.xml', '', ''),
(854, 2, 0, 'Georgian', '', 'pkg_ka-GE', 'package', '', 0, '3.9.26.1', '', 'https://update.joomla.org/language/details3/ka-GE_details.xml', '', ''),
(855, 2, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '3.9.26.1', '', 'https://update.joomla.org/language/details3/el-GR_details.xml', '', ''),
(856, 2, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.9.26.1', '', 'https://update.joomla.org/language/details3/ja-JP_details.xml', '', ''),
(857, 2, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '3.1.1.2', '', 'https://update.joomla.org/language/details3/he-IL_details.xml', '', ''),
(858, 2, 0, 'Bengali', '', 'pkg_bn-BD', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/bn-BD_details.xml', '', ''),
(859, 2, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.9.19.1', '', 'https://update.joomla.org/language/details3/hu-HU_details.xml', '', ''),
(860, 2, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '3.9.16.1', '', 'https://update.joomla.org/language/details3/af-ZA_details.xml', '', ''),
(861, 2, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.9.25.1', '', 'https://update.joomla.org/language/details3/ar-AA_details.xml', '', ''),
(862, 2, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '3.2.1.2', '', 'https://update.joomla.org/language/details3/be-BY_details.xml', '', ''),
(863, 2, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '3.6.5.2', '', 'https://update.joomla.org/language/details3/bg-BG_details.xml', '', ''),
(864, 2, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '3.9.23.1', '', 'https://update.joomla.org/language/details3/ca-ES_details.xml', '', ''),
(865, 2, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.9.26.1', '', 'https://update.joomla.org/language/details3/zh-CN_details.xml', '', ''),
(866, 2, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.9.26.1', '', 'https://update.joomla.org/language/details3/hr-HR_details.xml', '', ''),
(867, 2, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '3.9.26.1', '', 'https://update.joomla.org/language/details3/cs-CZ_details.xml', '', ''),
(868, 2, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.9.26.1', '', 'https://update.joomla.org/language/details3/da-DK_details.xml', '', ''),
(869, 2, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.9.26.1', '', 'https://update.joomla.org/language/details3/nl-NL_details.xml', '', ''),
(870, 2, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '3.8.11.1', '', 'https://update.joomla.org/language/details3/eo-XX_details.xml', '', ''),
(871, 2, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.9.21.1', '', 'https://update.joomla.org/language/details3/et-EE_details.xml', '', ''),
(872, 2, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.9.26.1', '', 'https://update.joomla.org/language/details3/it-IT_details.xml', '', ''),
(873, 2, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/km-KH_details.xml', '', ''),
(874, 2, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.8.9.1', '', 'https://update.joomla.org/language/details3/ko-KR_details.xml', '', ''),
(875, 2, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.9.25.2', '', 'https://update.joomla.org/language/details3/lv-LV_details.xml', '', ''),
(876, 2, 0, 'Lithuanian', '', 'pkg_lt-LT', 'package', '', 0, '3.9.16.1', '', 'https://update.joomla.org/language/details3/lt-LT_details.xml', '', ''),
(877, 2, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/mk-MK_details.xml', '', ''),
(878, 2, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.9.26.1', '', 'https://update.joomla.org/language/details3/nb-NO_details.xml', '', ''),
(879, 2, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '3.4.2.1', '', 'https://update.joomla.org/language/details3/nn-NO_details.xml', '', ''),
(880, 2, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '3.9.26.1', '', 'https://update.joomla.org/language/details3/fa-IR_details.xml', '', ''),
(881, 2, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.9.25.2', '', 'https://update.joomla.org/language/details3/pl-PL_details.xml', '', ''),
(882, 2, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '3.9.15.1', '', 'https://update.joomla.org/language/details3/pt-PT_details.xml', '', ''),
(883, 2, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '3.9.24.1', '', 'https://update.joomla.org/language/details3/ru-RU_details.xml', '', ''),
(884, 2, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.9.26.1', '', 'https://update.joomla.org/language/details3/en-AU_details.xml', '', ''),
(885, 2, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.9.26.1', '', 'https://update.joomla.org/language/details3/sk-SK_details.xml', '', ''),
(886, 2, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.9.26.1', '', 'https://update.joomla.org/language/details3/en-US_details.xml', '', ''),
(887, 2, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.9.26.1', '', 'https://update.joomla.org/language/details3/sv-SE_details.xml', '', ''),
(888, 2, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/sy-IQ_details.xml', '', ''),
(889, 2, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.9.26.1', '', 'https://update.joomla.org/language/details3/ta-IN_details.xml', '', ''),
(890, 2, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.9.26.1', '', 'https://update.joomla.org/language/details3/th-TH_details.xml', '', ''),
(891, 2, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.9.4.1', '', 'https://update.joomla.org/language/details3/tr-TR_details.xml', '', ''),
(892, 2, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.9.24.1', '', 'https://update.joomla.org/language/details3/uk-UA_details.xml', '', ''),
(893, 2, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.7.5.2', '', 'https://update.joomla.org/language/details3/ug-CN_details.xml', '', ''),
(894, 2, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '3.1.1.2', '', 'https://update.joomla.org/language/details3/sq-AL_details.xml', '', ''),
(895, 2, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '3.9.24.1', '', 'https://update.joomla.org/language/details3/eu-ES_details.xml', '', ''),
(896, 2, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '3.3.6.2', '', 'https://update.joomla.org/language/details3/hi-IN_details.xml', '', ''),
(897, 2, 0, 'German DE', '', 'pkg_de-DE', 'package', '', 0, '3.9.26.2', '', 'https://update.joomla.org/language/details3/de-DE_details.xml', '', ''),
(898, 2, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.9.21.1', '', 'https://update.joomla.org/language/details3/pt-BR_details.xml', '', ''),
(899, 2, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.9.26.1', '', 'https://update.joomla.org/language/details3/sr-YU_details.xml', '', ''),
(900, 2, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.9.18.1', '', 'https://update.joomla.org/language/details3/es-ES_details.xml', '', ''),
(901, 2, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.9.24.1', '', 'https://update.joomla.org/language/details3/bs-BA_details.xml', '', ''),
(902, 2, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.9.26.1', '', 'https://update.joomla.org/language/details3/sr-RS_details.xml', '', ''),
(903, 2, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.2.1.2', '', 'https://update.joomla.org/language/details3/vi-VN_details.xml', '', ''),
(904, 2, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/id-ID_details.xml', '', ''),
(905, 2, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.9.16.1', '', 'https://update.joomla.org/language/details3/fi-FI_details.xml', '', ''),
(906, 2, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.9.26.1', '', 'https://update.joomla.org/language/details3/sw-KE_details.xml', '', ''),
(907, 2, 0, 'Montenegrin', '', 'pkg_srp-ME', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/srp-ME_details.xml', '', ''),
(908, 2, 0, 'English CA', '', 'pkg_en-CA', 'package', '', 0, '3.9.26.1', '', 'https://update.joomla.org/language/details3/en-CA_details.xml', '', ''),
(909, 2, 0, 'French CA', '', 'pkg_fr-CA', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/fr-CA_details.xml', '', ''),
(910, 2, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '3.9.26.1', '', 'https://update.joomla.org/language/details3/cy-GB_details.xml', '', ''),
(911, 2, 0, 'Sinhala', '', 'pkg_si-LK', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/si-LK_details.xml', '', ''),
(912, 2, 0, 'Dari Persian', '', 'pkg_prs-AF', 'package', '', 0, '3.4.4.3', '', 'https://update.joomla.org/language/details3/prs-AF_details.xml', '', ''),
(913, 2, 0, 'Turkmen', '', 'pkg_tk-TM', 'package', '', 0, '3.5.0.2', '', 'https://update.joomla.org/language/details3/tk-TM_details.xml', '', ''),
(914, 2, 0, 'Irish', '', 'pkg_ga-IE', 'package', '', 0, '3.8.13.1', '', 'https://update.joomla.org/language/details3/ga-IE_details.xml', '', ''),
(915, 2, 0, 'Dzongkha', '', 'pkg_dz-BT', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/dz-BT_details.xml', '', ''),
(916, 2, 0, 'Slovenian', '', 'pkg_sl-SI', 'package', '', 0, '3.9.26.1', '', 'https://update.joomla.org/language/details3/sl-SI_details.xml', '', ''),
(917, 2, 0, 'Spanish CO', '', 'pkg_es-CO', 'package', '', 0, '3.9.15.1', '', 'https://update.joomla.org/language/details3/es-CO_details.xml', '', ''),
(918, 2, 0, 'German CH', '', 'pkg_de-CH', 'package', '', 0, '3.9.26.2', '', 'https://update.joomla.org/language/details3/de-CH_details.xml', '', ''),
(919, 2, 0, 'German AT', '', 'pkg_de-AT', 'package', '', 0, '3.9.26.2', '', 'https://update.joomla.org/language/details3/de-AT_details.xml', '', ''),
(920, 2, 0, 'German LI', '', 'pkg_de-LI', 'package', '', 0, '3.9.26.2', '', 'https://update.joomla.org/language/details3/de-LI_details.xml', '', ''),
(921, 2, 0, 'German LU', '', 'pkg_de-LU', 'package', '', 0, '3.9.26.2', '', 'https://update.joomla.org/language/details3/de-LU_details.xml', '', ''),
(922, 2, 0, 'English NZ', '', 'pkg_en-NZ', 'package', '', 0, '3.9.26.1', '', 'https://update.joomla.org/language/details3/en-NZ_details.xml', '', ''),
(923, 2, 0, 'Kazakh', '', 'pkg_kk-KZ', 'package', '', 0, '3.9.23.1', '', 'https://update.joomla.org/language/details3/kk-KZ_details.xml', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `ac19_update_sites`
--

CREATE TABLE `ac19_update_sites` (
  `update_site_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT 0,
  `last_check_timestamp` bigint(20) DEFAULT 0,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

--
-- Déchargement des données de la table `ac19_update_sites`
--

INSERT INTO `ac19_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', 1, 1620052987, ''),
(2, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_3.xml', 1, 1619784586, ''),
(3, 'Joomla! Update Component Update Site', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1619784587, '');

-- --------------------------------------------------------

--
-- Structure de la table `ac19_update_sites_extensions`
--

CREATE TABLE `ac19_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT 0,
  `extension_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

--
-- Déchargement des données de la table `ac19_update_sites_extensions`
--

INSERT INTO `ac19_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 802),
(2, 803),
(3, 28),
(5, 605);

-- --------------------------------------------------------

--
-- Structure de la table `ac19_usergroups`
--

CREATE TABLE `ac19_usergroups` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ac19_usergroups`
--

INSERT INTO `ac19_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 26, 'Public'),
(2, 1, 2, 17, 'Enregistré'),
(3, 2, 11, 16, 'Auteur'),
(4, 3, 12, 15, 'Rédacteur'),
(5, 4, 13, 14, 'Validateur'),
(6, 1, 18, 21, 'Gestionnaire'),
(7, 6, 19, 20, 'Administrateur'),
(8, 1, 24, 25, 'Super Utilisateur'),
(9, 1, 22, 23, 'Invité'),
(10, 2, 5, 6, 'AC19 - Coordinateur'),
(11, 2, 3, 4, 'AC19 - Bénévole'),
(12, 2, 7, 8, 'AC19 - Partenaire'),
(13, 2, 9, 10, 'AC19 - Particulier');

-- --------------------------------------------------------

--
-- Structure de la table `ac19_users`
--

CREATE TABLE `ac19_users` (
  `id` int(11) NOT NULL,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT 0,
  `sendEmail` tinyint(4) DEFAULT 0,
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT 0 COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Require user to reset password on next login'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ac19_users`
--

INSERT INTO `ac19_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(669, 'Super Utilisateur', 'SLAM', 'emmanuel.derome@gmail.com', '$2y$10$0Wc7pYueVlApIsaiBfCyl.QscclECT6NAmBGLSIyyCbD1gqSCcMCa', 0, 1, '2020-10-10 17:15:21', '2021-04-30 12:09:43', '0', '', '0000-00-00 00:00:00', 0, '', '', 0),
(670, 'Marcel DUPOND', 'mdupond', 'mdupond@ac19.fr', '$2y$10$0L.5VOyJOvHWtcGR5o9VTe5tE1r2JiHiKtvzm6T7bhaY2UFCqg5lm', 0, 0, '2020-10-10 17:22:41', '2021-05-03 14:43:12', '', '{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"timezone\":\"\"}', '0000-00-00 00:00:00', 0, '', '', 0),
(671, 'Julie PAULE', 'jpaule', 'jpaule@ac19.fr', '$2y$10$L7ERco0Ad4bycY.9AArj3OLE5BNdLfIeat/UsCo3FFzwY5UKRtPVO', 0, 0, '2020-11-28 16:58:24', '2021-03-18 15:08:06', '', '{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"timezone\":\"\"}', '0000-00-00 00:00:00', 0, '', '', 0),
(672, 'Alma RICHAUD', 'arichaud', 'arichaud@ac19.fr', '$2y$10$vSgTttgdZFHQRBX9aKNYtuuWo.wVSYslqNotKTc9EBx.uaTZD8a46', 0, 0, '2020-11-28 17:09:04', '2021-04-27 15:14:01', '', '{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"timezone\":\"\"}', '0000-00-00 00:00:00', 0, '', '', 0),
(673, 'Sami JAOUI', 'sjaoui', 'sjaoui@ac19.fr', '$2y$10$SFDUrsE.hqkZstvIVSeVhuRe.6cKs7p5/0GuI.vkRWfDghzLR1NvC', 0, 0, '2020-11-28 17:11:24', '2021-04-27 15:13:50', '', '{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"timezone\":\"\"}', '0000-00-00 00:00:00', 0, '', '', 0),
(674, 'Paul HOCHON', 'phochon', 'phochon@ac19.fr', '$2y$10$1Q5MWLvSWDVHQPy.EA2KeODhxVse/CWbp/nIDAkJBJ/PzlCxE2G3i', 0, 0, '2020-11-28 17:16:05', '2021-04-30 12:23:45', '', '{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"timezone\":\"\"}', '0000-00-00 00:00:00', 0, '', '', 0),
(675, 'Kévin JEAN', 'kjean', 'kjean@ac19.fr', '$2y$10$F7DqVrJPN42d23X0bQhAhOyGvYsI5Ub2wRd3IdzHePqQEMs9M.8ia', 0, 0, '2021-04-30 12:11:17', '2021-04-30 12:25:18', '', '{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"timezone\":\"\"}', '0000-00-00 00:00:00', 0, '', '', 0),
(676, 'Marc JEAN', 'mjean', 'mjean@ac19.fr', '$2y$10$Obcmbn.99NpYA/f8Z6/V5eo5ULnkdPH.r9.CRguvfgsml/VI/MmSK', 0, 0, '2021-04-30 12:20:30', '2021-04-30 12:24:18', '', '{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"timezone\":\"\"}', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `ac19_user_keys`
--

CREATE TABLE `ac19_user_keys` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ac19_user_notes`
--

CREATE TABLE `ac19_user_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ac19_user_profiles`
--

CREATE TABLE `ac19_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Structure de la table `ac19_user_usergroup_map`
--

CREATE TABLE `ac19_user_usergroup_map` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ac19_user_usergroup_map`
--

INSERT INTO `ac19_user_usergroup_map` (`user_id`, `group_id`) VALUES
(669, 8),
(670, 2),
(670, 13),
(671, 2),
(671, 11),
(672, 2),
(672, 10),
(673, 2),
(673, 11),
(674, 2),
(674, 12),
(675, 2),
(675, 12),
(676, 2),
(676, 12);

-- --------------------------------------------------------

--
-- Structure de la table `ac19_utf8_conversion`
--

CREATE TABLE `ac19_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ac19_utf8_conversion`
--

INSERT INTO `ac19_utf8_conversion` (`converted`) VALUES
(5);

-- --------------------------------------------------------

--
-- Structure de la table `ac19_viewlevels`
--

CREATE TABLE `ac19_viewlevels` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT 0,
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ac19_viewlevels`
--

INSERT INTO `ac19_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Accès public', 0, '[1]'),
(2, 'Accès enregistré', 2, '[6,2,8]'),
(3, 'Accès spécial', 3, '[6,3,8]'),
(5, 'Accès invité', 1, '[9]'),
(6, 'Accès super utilisateur', 4, '[8]'),
(7, 'AC19_Particulier', 0, '[13]'),
(8, 'AC19_Bénévole', 0, '[11]'),
(9, 'AC19_Coordinateur', 0, '[10]'),
(10, 'AC19_Partenaire', 0, '[12]');

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `ac19_vue_mes_messages_emis`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `ac19_vue_mes_messages_emis` (
`id` int(11)
,`date` datetime
,`auteur` varchar(201)
,`destinataire` varchar(201)
,`objet` varchar(100)
,`contenu` text
,`email` varchar(100)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `ac19_vue_mes_messages_recus`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `ac19_vue_mes_messages_recus` (
`id` int(11)
,`date` datetime
,`auteur` varchar(201)
,`destinataire` varchar(201)
,`objet` varchar(100)
,`contenu` text
,`email` varchar(100)
);

-- --------------------------------------------------------

--
-- Structure de la vue `ac19_vue_mes_messages_emis`
--
DROP TABLE IF EXISTS `ac19_vue_mes_messages_emis`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ac19_vue_mes_messages_emis`  AS  select `message`.`id` AS `id`,`message`.`date` AS `date`,concat(`author`.`nom`,' ',`author`.`prenom`) AS `auteur`,concat(`destinataire`.`nom`,' ',`destinataire`.`prenom`) AS `destinataire`,`message`.`objet` AS `objet`,`message`.`contenu` AS `contenu`,`author`.`email` AS `email` from ((`ac19_ac19_messages` `message` join `ac19_ac19_utilisateurs` `author` on(`message`.`utilisateurs_aut_id` = `author`.`id`)) join `ac19_ac19_utilisateurs` `destinataire` on(`message`.`utilisateurs_dest_id` = `destinataire`.`id`)) ;

-- --------------------------------------------------------

--
-- Structure de la vue `ac19_vue_mes_messages_recus`
--
DROP TABLE IF EXISTS `ac19_vue_mes_messages_recus`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ac19_vue_mes_messages_recus`  AS  select `message`.`id` AS `id`,`message`.`date` AS `date`,concat(`author`.`nom`,' ',`author`.`prenom`) AS `auteur`,concat(`destinataire`.`nom`,' ',`destinataire`.`prenom`) AS `destinataire`,`message`.`objet` AS `objet`,`message`.`contenu` AS `contenu`,`destinataire`.`email` AS `email` from ((`ac19_ac19_messages` `message` join `ac19_ac19_utilisateurs` `author` on(`message`.`utilisateurs_aut_id` = `author`.`id`)) join `ac19_ac19_utilisateurs` `destinataire` on(`message`.`utilisateurs_dest_id` = `destinataire`.`id`)) ;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `ac19_ac19_benevoles`
--
ALTER TABLE `ac19_ac19_benevoles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ac19_ac19_catalogues`
--
ALTER TABLE `ac19_ac19_catalogues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ac19_ac19_catalogues_partenaires_id` (`partenaires_id`);

--
-- Index pour la table `ac19_ac19_catal_categs`
--
ALTER TABLE `ac19_ac19_catal_categs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ac19_ac19_catal_categs_catalogues_id` (`catalogues_id`),
  ADD KEY `fk_ac19_ac19_catal_categs_categories_id` (`categories_id`);

--
-- Index pour la table `ac19_ac19_categories`
--
ALTER TABLE `ac19_ac19_categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ac19_ac19_commandes`
--
ALTER TABLE `ac19_ac19_commandes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ac19_ac19_commandes_particuliers_id` (`particuliers_id`),
  ADD KEY `fk_ac19_ac19_commandes_magasins_id` (`magasins_id`),
  ADD KEY `fk_ac19_ac19_commandes_etat_cdes_id` (`etat_cdes_id`);

--
-- Index pour la table `ac19_ac19_coordinateurs`
--
ALTER TABLE `ac19_ac19_coordinateurs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ac19_ac19_etat_cdes`
--
ALTER TABLE `ac19_ac19_etat_cdes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ac19_ac19_ligne_cdes`
--
ALTER TABLE `ac19_ac19_ligne_cdes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ac19_ac19_ligne_cdes_commandes_id` (`commandes_id`),
  ADD KEY `fk_ac19_ac19_ligne_cdes_produits_id` (`produits_id`);

--
-- Index pour la table `ac19_ac19_magasins`
--
ALTER TABLE `ac19_ac19_magasins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ac19_ac19_magasins_type_mags_id` (`type_mags_id`),
  ADD KEY `fk_ac19_ac19_magasins_partenaires_id` (`partenaires_id`);

--
-- Index pour la table `ac19_ac19_messages`
--
ALTER TABLE `ac19_ac19_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ac19_ac19_messages_utilisateurs_aut_id` (`utilisateurs_aut_id`),
  ADD KEY `fk_ac19_ac19_messages_utilisateurs_dest_id` (`utilisateurs_dest_id`);

--
-- Index pour la table `ac19_ac19_partenaires`
--
ALTER TABLE `ac19_ac19_partenaires`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ac19_ac19_particuliers`
--
ALTER TABLE `ac19_ac19_particuliers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ac19_ac19_prise_en_charges`
--
ALTER TABLE `ac19_ac19_prise_en_charges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ac19_ac19_prise_en_charges_commandes_id` (`commandes_id`),
  ADD KEY `fk_ac19_ac19_prise_en_charges_benevoles_id` (`benevoles_id`);

--
-- Index pour la table `ac19_ac19_produits`
--
ALTER TABLE `ac19_ac19_produits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ac19_ac19_produits_categories_id` (`categories_id`);

--
-- Index pour la table `ac19_ac19_stocks`
--
ALTER TABLE `ac19_ac19_stocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ac19_ac19_stocks_magasins_id` (`magasins_id`),
  ADD KEY `fk_ac19_ac19_stocks_produits_id` (`produits_id`);

--
-- Index pour la table `ac19_ac19_type_mags`
--
ALTER TABLE `ac19_ac19_type_mags`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ac19_ac19_utilisateurs`
--
ALTER TABLE `ac19_ac19_utilisateurs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ac19_action_logs`
--
ALTER TABLE `ac19_action_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_user_id_logdate` (`user_id`,`log_date`),
  ADD KEY `idx_user_id_extension` (`user_id`,`extension`),
  ADD KEY `idx_extension_item_id` (`extension`,`item_id`);

--
-- Index pour la table `ac19_action_logs_extensions`
--
ALTER TABLE `ac19_action_logs_extensions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ac19_action_logs_users`
--
ALTER TABLE `ac19_action_logs_users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `idx_notify` (`notify`);

--
-- Index pour la table `ac19_action_log_config`
--
ALTER TABLE `ac19_action_log_config`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ac19_annuaire_civilites`
--
ALTER TABLE `ac19_annuaire_civilites`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ac19_annuaire_contacts`
--
ALTER TABLE `ac19_annuaire_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ac19_annuaire_civilites_id` (`civilites_id`),
  ADD KEY `fk_ac19_annuaire_typescontacts_id` (`typescontacts_id`),
  ADD KEY `fk_ac19_annuaire_entreprises_id` (`entreprises_id`);

--
-- Index pour la table `ac19_annuaire_entreprises`
--
ALTER TABLE `ac19_annuaire_entreprises`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ac19_annuaire_pays_id` (`pays_id`);

--
-- Index pour la table `ac19_annuaire_pays`
--
ALTER TABLE `ac19_annuaire_pays`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ac19_annuaire_typescontacts`
--
ALTER TABLE `ac19_annuaire_typescontacts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ac19_assets`
--
ALTER TABLE `ac19_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_asset_name` (`name`),
  ADD KEY `idx_lft_rgt` (`lft`,`rgt`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Index pour la table `ac19_associations`
--
ALTER TABLE `ac19_associations`
  ADD PRIMARY KEY (`context`,`id`),
  ADD KEY `idx_key` (`key`);

--
-- Index pour la table `ac19_banners`
--
ALTER TABLE `ac19_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  ADD KEY `idx_banner_catid` (`catid`),
  ADD KEY `idx_language` (`language`);

--
-- Index pour la table `ac19_banner_clients`
--
ALTER TABLE `ac19_banner_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

--
-- Index pour la table `ac19_banner_tracks`
--
ALTER TABLE `ac19_banner_tracks`
  ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  ADD KEY `idx_track_date` (`track_date`),
  ADD KEY `idx_track_type` (`track_type`),
  ADD KEY `idx_banner_id` (`banner_id`);

--
-- Index pour la table `ac19_categories`
--
ALTER TABLE `ac19_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Index pour la table `ac19_contact_details`
--
ALTER TABLE `ac19_contact_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Index pour la table `ac19_content`
--
ALTER TABLE `ac19_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`),
  ADD KEY `idx_alias` (`alias`(191));

--
-- Index pour la table `ac19_contentitem_tag_map`
--
ALTER TABLE `ac19_contentitem_tag_map`
  ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  ADD KEY `idx_tag_type` (`tag_id`,`type_id`),
  ADD KEY `idx_date_id` (`tag_date`,`tag_id`),
  ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Index pour la table `ac19_content_frontpage`
--
ALTER TABLE `ac19_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Index pour la table `ac19_content_rating`
--
ALTER TABLE `ac19_content_rating`
  ADD PRIMARY KEY (`content_id`);

--
-- Index pour la table `ac19_content_types`
--
ALTER TABLE `ac19_content_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `idx_alias` (`type_alias`(100));

--
-- Index pour la table `ac19_extensions`
--
ALTER TABLE `ac19_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `element_clientid` (`element`,`client_id`),
  ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Index pour la table `ac19_fields`
--
ALTER TABLE `ac19_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_user_id` (`created_user_id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Index pour la table `ac19_fields_categories`
--
ALTER TABLE `ac19_fields_categories`
  ADD PRIMARY KEY (`field_id`,`category_id`);

--
-- Index pour la table `ac19_fields_groups`
--
ALTER TABLE `ac19_fields_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_by` (`created_by`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Index pour la table `ac19_fields_values`
--
ALTER TABLE `ac19_fields_values`
  ADD KEY `idx_field_id` (`field_id`),
  ADD KEY `idx_item_id` (`item_id`(191));

--
-- Index pour la table `ac19_finder_filters`
--
ALTER TABLE `ac19_finder_filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Index pour la table `ac19_finder_links`
--
ALTER TABLE `ac19_finder_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_title` (`title`(100)),
  ADD KEY `idx_md5` (`md5sum`),
  ADD KEY `idx_url` (`url`(75)),
  ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Index pour la table `ac19_finder_links_terms0`
--
ALTER TABLE `ac19_finder_links_terms0`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Index pour la table `ac19_finder_links_terms1`
--
ALTER TABLE `ac19_finder_links_terms1`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Index pour la table `ac19_finder_links_terms2`
--
ALTER TABLE `ac19_finder_links_terms2`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Index pour la table `ac19_finder_links_terms3`
--
ALTER TABLE `ac19_finder_links_terms3`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Index pour la table `ac19_finder_links_terms4`
--
ALTER TABLE `ac19_finder_links_terms4`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Index pour la table `ac19_finder_links_terms5`
--
ALTER TABLE `ac19_finder_links_terms5`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Index pour la table `ac19_finder_links_terms6`
--
ALTER TABLE `ac19_finder_links_terms6`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Index pour la table `ac19_finder_links_terms7`
--
ALTER TABLE `ac19_finder_links_terms7`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Index pour la table `ac19_finder_links_terms8`
--
ALTER TABLE `ac19_finder_links_terms8`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Index pour la table `ac19_finder_links_terms9`
--
ALTER TABLE `ac19_finder_links_terms9`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Index pour la table `ac19_finder_links_termsa`
--
ALTER TABLE `ac19_finder_links_termsa`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Index pour la table `ac19_finder_links_termsb`
--
ALTER TABLE `ac19_finder_links_termsb`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Index pour la table `ac19_finder_links_termsc`
--
ALTER TABLE `ac19_finder_links_termsc`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Index pour la table `ac19_finder_links_termsd`
--
ALTER TABLE `ac19_finder_links_termsd`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Index pour la table `ac19_finder_links_termse`
--
ALTER TABLE `ac19_finder_links_termse`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Index pour la table `ac19_finder_links_termsf`
--
ALTER TABLE `ac19_finder_links_termsf`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Index pour la table `ac19_finder_taxonomy`
--
ALTER TABLE `ac19_finder_taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `state` (`state`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `access` (`access`),
  ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Index pour la table `ac19_finder_taxonomy_map`
--
ALTER TABLE `ac19_finder_taxonomy_map`
  ADD PRIMARY KEY (`link_id`,`node_id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `node_id` (`node_id`);

--
-- Index pour la table `ac19_finder_terms`
--
ALTER TABLE `ac19_finder_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `idx_term` (`term`),
  ADD KEY `idx_term_phrase` (`term`,`phrase`),
  ADD KEY `idx_stem_phrase` (`stem`,`phrase`),
  ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Index pour la table `ac19_finder_terms_common`
--
ALTER TABLE `ac19_finder_terms_common`
  ADD KEY `idx_word_lang` (`term`,`language`),
  ADD KEY `idx_lang` (`language`);

--
-- Index pour la table `ac19_finder_tokens`
--
ALTER TABLE `ac19_finder_tokens`
  ADD KEY `idx_word` (`term`),
  ADD KEY `idx_context` (`context`);

--
-- Index pour la table `ac19_finder_tokens_aggregate`
--
ALTER TABLE `ac19_finder_tokens_aggregate`
  ADD KEY `token` (`term`),
  ADD KEY `keyword_id` (`term_id`);

--
-- Index pour la table `ac19_finder_types`
--
ALTER TABLE `ac19_finder_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Index pour la table `ac19_languages`
--
ALTER TABLE `ac19_languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD UNIQUE KEY `idx_sef` (`sef`),
  ADD UNIQUE KEY `idx_langcode` (`lang_code`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_ordering` (`ordering`);

--
-- Index pour la table `ac19_menu`
--
ALTER TABLE `ac19_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  ADD KEY `idx_menutype` (`menutype`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Index pour la table `ac19_menu_types`
--
ALTER TABLE `ac19_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Index pour la table `ac19_messages`
--
ALTER TABLE `ac19_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Index pour la table `ac19_messages_cfg`
--
ALTER TABLE `ac19_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Index pour la table `ac19_modules`
--
ALTER TABLE `ac19_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`),
  ADD KEY `idx_language` (`language`);

--
-- Index pour la table `ac19_modules_menu`
--
ALTER TABLE `ac19_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Index pour la table `ac19_newsfeeds`
--
ALTER TABLE `ac19_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Index pour la table `ac19_overrider`
--
ALTER TABLE `ac19_overrider`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ac19_postinstall_messages`
--
ALTER TABLE `ac19_postinstall_messages`
  ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Index pour la table `ac19_privacy_consents`
--
ALTER TABLE `ac19_privacy_consents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`);

--
-- Index pour la table `ac19_privacy_requests`
--
ALTER TABLE `ac19_privacy_requests`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ac19_redirect_links`
--
ALTER TABLE `ac19_redirect_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_old_url` (`old_url`(100)),
  ADD KEY `idx_link_modifed` (`modified_date`);

--
-- Index pour la table `ac19_schemas`
--
ALTER TABLE `ac19_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Index pour la table `ac19_session`
--
ALTER TABLE `ac19_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`),
  ADD KEY `client_id_guest` (`client_id`,`guest`);

--
-- Index pour la table `ac19_tags`
--
ALTER TABLE `ac19_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_idx` (`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Index pour la table `ac19_template_styles`
--
ALTER TABLE `ac19_template_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_client_id` (`client_id`),
  ADD KEY `idx_client_id_home` (`client_id`,`home`);

--
-- Index pour la table `ac19_ucm_base`
--
ALTER TABLE `ac19_ucm_base`
  ADD PRIMARY KEY (`ucm_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_item_id`),
  ADD KEY `idx_ucm_type_id` (`ucm_type_id`),
  ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Index pour la table `ac19_ucm_content`
--
ALTER TABLE `ac19_ucm_content`
  ADD PRIMARY KEY (`core_content_id`),
  ADD KEY `tag_idx` (`core_state`,`core_access`),
  ADD KEY `idx_access` (`core_access`),
  ADD KEY `idx_alias` (`core_alias`(100)),
  ADD KEY `idx_language` (`core_language`),
  ADD KEY `idx_title` (`core_title`(100)),
  ADD KEY `idx_modified_time` (`core_modified_time`),
  ADD KEY `idx_created_time` (`core_created_time`),
  ADD KEY `idx_content_type` (`core_type_alias`(100)),
  ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  ADD KEY `idx_core_created_user_id` (`core_created_user_id`),
  ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Index pour la table `ac19_ucm_history`
--
ALTER TABLE `ac19_ucm_history`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  ADD KEY `idx_save_date` (`save_date`);

--
-- Index pour la table `ac19_updates`
--
ALTER TABLE `ac19_updates`
  ADD PRIMARY KEY (`update_id`);

--
-- Index pour la table `ac19_update_sites`
--
ALTER TABLE `ac19_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

--
-- Index pour la table `ac19_update_sites_extensions`
--
ALTER TABLE `ac19_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Index pour la table `ac19_usergroups`
--
ALTER TABLE `ac19_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Index pour la table `ac19_users`
--
ALTER TABLE `ac19_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_username` (`username`),
  ADD KEY `idx_name` (`name`(100)),
  ADD KEY `idx_block` (`block`),
  ADD KEY `email` (`email`);

--
-- Index pour la table `ac19_user_keys`
--
ALTER TABLE `ac19_user_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series` (`series`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `ac19_user_notes`
--
ALTER TABLE `ac19_user_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_category_id` (`catid`);

--
-- Index pour la table `ac19_user_profiles`
--
ALTER TABLE `ac19_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Index pour la table `ac19_user_usergroup_map`
--
ALTER TABLE `ac19_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Index pour la table `ac19_viewlevels`
--
ALTER TABLE `ac19_viewlevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `ac19_ac19_benevoles`
--
ALTER TABLE `ac19_ac19_benevoles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `ac19_ac19_catalogues`
--
ALTER TABLE `ac19_ac19_catalogues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `ac19_ac19_catal_categs`
--
ALTER TABLE `ac19_ac19_catal_categs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `ac19_ac19_categories`
--
ALTER TABLE `ac19_ac19_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `ac19_ac19_commandes`
--
ALTER TABLE `ac19_ac19_commandes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `ac19_ac19_coordinateurs`
--
ALTER TABLE `ac19_ac19_coordinateurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `ac19_ac19_etat_cdes`
--
ALTER TABLE `ac19_ac19_etat_cdes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `ac19_ac19_ligne_cdes`
--
ALTER TABLE `ac19_ac19_ligne_cdes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `ac19_ac19_magasins`
--
ALTER TABLE `ac19_ac19_magasins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `ac19_ac19_messages`
--
ALTER TABLE `ac19_ac19_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `ac19_ac19_partenaires`
--
ALTER TABLE `ac19_ac19_partenaires`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `ac19_ac19_particuliers`
--
ALTER TABLE `ac19_ac19_particuliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `ac19_ac19_prise_en_charges`
--
ALTER TABLE `ac19_ac19_prise_en_charges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `ac19_ac19_produits`
--
ALTER TABLE `ac19_ac19_produits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `ac19_ac19_stocks`
--
ALTER TABLE `ac19_ac19_stocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `ac19_ac19_type_mags`
--
ALTER TABLE `ac19_ac19_type_mags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `ac19_ac19_utilisateurs`
--
ALTER TABLE `ac19_ac19_utilisateurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `ac19_action_logs`
--
ALTER TABLE `ac19_action_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=329;

--
-- AUTO_INCREMENT pour la table `ac19_action_logs_extensions`
--
ALTER TABLE `ac19_action_logs_extensions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `ac19_action_log_config`
--
ALTER TABLE `ac19_action_log_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `ac19_annuaire_civilites`
--
ALTER TABLE `ac19_annuaire_civilites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `ac19_annuaire_contacts`
--
ALTER TABLE `ac19_annuaire_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `ac19_annuaire_entreprises`
--
ALTER TABLE `ac19_annuaire_entreprises`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `ac19_annuaire_pays`
--
ALTER TABLE `ac19_annuaire_pays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `ac19_annuaire_typescontacts`
--
ALTER TABLE `ac19_annuaire_typescontacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `ac19_assets`
--
ALTER TABLE `ac19_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT pour la table `ac19_banners`
--
ALTER TABLE `ac19_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ac19_banner_clients`
--
ALTER TABLE `ac19_banner_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ac19_categories`
--
ALTER TABLE `ac19_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `ac19_contact_details`
--
ALTER TABLE `ac19_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `ac19_content`
--
ALTER TABLE `ac19_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `ac19_content_types`
--
ALTER TABLE `ac19_content_types`
  MODIFY `type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10000;

--
-- AUTO_INCREMENT pour la table `ac19_extensions`
--
ALTER TABLE `ac19_extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10008;

--
-- AUTO_INCREMENT pour la table `ac19_fields`
--
ALTER TABLE `ac19_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ac19_fields_groups`
--
ALTER TABLE `ac19_fields_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ac19_finder_filters`
--
ALTER TABLE `ac19_finder_filters`
  MODIFY `filter_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ac19_finder_links`
--
ALTER TABLE `ac19_finder_links`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ac19_finder_taxonomy`
--
ALTER TABLE `ac19_finder_taxonomy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `ac19_finder_terms`
--
ALTER TABLE `ac19_finder_terms`
  MODIFY `term_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ac19_finder_types`
--
ALTER TABLE `ac19_finder_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ac19_languages`
--
ALTER TABLE `ac19_languages`
  MODIFY `lang_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `ac19_menu`
--
ALTER TABLE `ac19_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT pour la table `ac19_menu_types`
--
ALTER TABLE `ac19_menu_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `ac19_messages`
--
ALTER TABLE `ac19_messages`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `ac19_modules`
--
ALTER TABLE `ac19_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT pour la table `ac19_newsfeeds`
--
ALTER TABLE `ac19_newsfeeds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ac19_overrider`
--
ALTER TABLE `ac19_overrider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';

--
-- AUTO_INCREMENT pour la table `ac19_postinstall_messages`
--
ALTER TABLE `ac19_postinstall_messages`
  MODIFY `postinstall_message_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `ac19_privacy_consents`
--
ALTER TABLE `ac19_privacy_consents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ac19_privacy_requests`
--
ALTER TABLE `ac19_privacy_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ac19_redirect_links`
--
ALTER TABLE `ac19_redirect_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ac19_tags`
--
ALTER TABLE `ac19_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `ac19_template_styles`
--
ALTER TABLE `ac19_template_styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `ac19_ucm_content`
--
ALTER TABLE `ac19_ucm_content`
  MODIFY `core_content_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ac19_ucm_history`
--
ALTER TABLE `ac19_ucm_history`
  MODIFY `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `ac19_updates`
--
ALTER TABLE `ac19_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=924;

--
-- AUTO_INCREMENT pour la table `ac19_update_sites`
--
ALTER TABLE `ac19_update_sites`
  MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `ac19_usergroups`
--
ALTER TABLE `ac19_usergroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `ac19_users`
--
ALTER TABLE `ac19_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=677;

--
-- AUTO_INCREMENT pour la table `ac19_user_keys`
--
ALTER TABLE `ac19_user_keys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ac19_user_notes`
--
ALTER TABLE `ac19_user_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ac19_viewlevels`
--
ALTER TABLE `ac19_viewlevels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=11;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `ac19_ac19_catalogues`
--
ALTER TABLE `ac19_ac19_catalogues`
  ADD CONSTRAINT `fk_ac19_ac19_catalogues_partenaires_id` FOREIGN KEY (`partenaires_id`) REFERENCES `ac19_ac19_partenaires` (`id`);

--
-- Contraintes pour la table `ac19_ac19_catal_categs`
--
ALTER TABLE `ac19_ac19_catal_categs`
  ADD CONSTRAINT `fk_ac19_ac19_catal_categs_catalogues_id` FOREIGN KEY (`catalogues_id`) REFERENCES `ac19_ac19_catalogues` (`id`),
  ADD CONSTRAINT `fk_ac19_ac19_catal_categs_categories_id` FOREIGN KEY (`categories_id`) REFERENCES `ac19_ac19_categories` (`id`);

--
-- Contraintes pour la table `ac19_ac19_commandes`
--
ALTER TABLE `ac19_ac19_commandes`
  ADD CONSTRAINT `fk_ac19_ac19_commandes_etat_cdes_id` FOREIGN KEY (`etat_cdes_id`) REFERENCES `ac19_ac19_etat_cdes` (`id`),
  ADD CONSTRAINT `fk_ac19_ac19_commandes_magasins_id` FOREIGN KEY (`magasins_id`) REFERENCES `ac19_ac19_magasins` (`id`),
  ADD CONSTRAINT `fk_ac19_ac19_commandes_particuliers_id` FOREIGN KEY (`particuliers_id`) REFERENCES `ac19_ac19_particuliers` (`id`);

--
-- Contraintes pour la table `ac19_ac19_ligne_cdes`
--
ALTER TABLE `ac19_ac19_ligne_cdes`
  ADD CONSTRAINT `fk_ac19_ac19_ligne_cdes_commandes_id` FOREIGN KEY (`commandes_id`) REFERENCES `ac19_ac19_commandes` (`id`),
  ADD CONSTRAINT `fk_ac19_ac19_ligne_cdes_produits_id` FOREIGN KEY (`produits_id`) REFERENCES `ac19_ac19_produits` (`id`);

--
-- Contraintes pour la table `ac19_ac19_magasins`
--
ALTER TABLE `ac19_ac19_magasins`
  ADD CONSTRAINT `fk_ac19_ac19_magasins_partenaires_id` FOREIGN KEY (`partenaires_id`) REFERENCES `ac19_ac19_partenaires` (`id`),
  ADD CONSTRAINT `fk_ac19_ac19_magasins_type_mags_id` FOREIGN KEY (`type_mags_id`) REFERENCES `ac19_ac19_type_mags` (`id`);

--
-- Contraintes pour la table `ac19_ac19_messages`
--
ALTER TABLE `ac19_ac19_messages`
  ADD CONSTRAINT `fk_ac19_ac19_messages_utilisateurs_aut_id` FOREIGN KEY (`utilisateurs_aut_id`) REFERENCES `ac19_ac19_utilisateurs` (`id`),
  ADD CONSTRAINT `fk_ac19_ac19_messages_utilisateurs_dest_id` FOREIGN KEY (`utilisateurs_dest_id`) REFERENCES `ac19_ac19_utilisateurs` (`id`);

--
-- Contraintes pour la table `ac19_ac19_prise_en_charges`
--
ALTER TABLE `ac19_ac19_prise_en_charges`
  ADD CONSTRAINT `fk_ac19_ac19_prise_en_charges_benevoles_id` FOREIGN KEY (`benevoles_id`) REFERENCES `ac19_ac19_benevoles` (`id`),
  ADD CONSTRAINT `fk_ac19_ac19_prise_en_charges_commandes_id` FOREIGN KEY (`commandes_id`) REFERENCES `ac19_ac19_commandes` (`id`);

--
-- Contraintes pour la table `ac19_ac19_produits`
--
ALTER TABLE `ac19_ac19_produits`
  ADD CONSTRAINT `fk_ac19_ac19_produits_categories_id` FOREIGN KEY (`categories_id`) REFERENCES `ac19_ac19_categories` (`id`);

--
-- Contraintes pour la table `ac19_ac19_stocks`
--
ALTER TABLE `ac19_ac19_stocks`
  ADD CONSTRAINT `fk_ac19_ac19_stocks_magasins_id` FOREIGN KEY (`magasins_id`) REFERENCES `ac19_ac19_magasins` (`id`),
  ADD CONSTRAINT `fk_ac19_ac19_stocks_produits_id` FOREIGN KEY (`produits_id`) REFERENCES `ac19_ac19_produits` (`id`);

--
-- Contraintes pour la table `ac19_annuaire_contacts`
--
ALTER TABLE `ac19_annuaire_contacts`
  ADD CONSTRAINT `fk_ac19_annuaire_civilites_id` FOREIGN KEY (`civilites_id`) REFERENCES `ac19_annuaire_civilites` (`id`),
  ADD CONSTRAINT `fk_ac19_annuaire_entreprises_id` FOREIGN KEY (`entreprises_id`) REFERENCES `ac19_annuaire_entreprises` (`id`),
  ADD CONSTRAINT `fk_ac19_annuaire_typescontacts_id` FOREIGN KEY (`typescontacts_id`) REFERENCES `ac19_annuaire_typescontacts` (`id`);

--
-- Contraintes pour la table `ac19_annuaire_entreprises`
--
ALTER TABLE `ac19_annuaire_entreprises`
  ADD CONSTRAINT `fk_ac19_annuaire_pays_id` FOREIGN KEY (`pays_id`) REFERENCES `ac19_annuaire_pays` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

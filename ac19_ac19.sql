-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 28 avr. 2021 à 20:23
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ac19`
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
(1, '-', '', '', '', 0, '2020-01-01 00:00:00', 669, '2020-01-01 00:00:00', 669, 0),
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
(1, '-', '', '2020-01-01 00:00:00', '2020-01-01 00:00:00', 1, '', 0, '2020-01-01 00:00:00', 669, '2020-01-01 00:00:00', 669, 0),
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
(1, '-', '', 0, '2020-01-01 00:00:00', 669, '2020-01-01 00:00:00', 669, 0),
(2, 'arichaud@ac19.fr', 'arichaud', 1, '2020-11-27 16:47:15', 0, '2020-11-27 16:47:15', 0, 0),
(3, 'pierre.rochard@hotmail.fr', '', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0),
(4, 'Dianthéa.kalos@sfr.fr', '', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0);

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
(1, 'test', '19', '19', '19', '19', '19', '19', 1, 1, '', 0, '2020-01-01 00:00:00', 669, '2020-12-07 16:06:45', 669, 0),
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
(1, '2020-01-01 00:00:00', '-', '', 1, 1, '', 0, '2020-01-01 00:00:00', 669, '2020-01-01 00:00:00', 669, 0),
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
(1, 'mailtest@test.com', '', '5645646456', '', 0, '2020-01-01 00:00:00', 669, '2020-12-03 15:51:14', 669, 0),
(2, 'phochon@ac19.fr', 'Carrefour', '652 014 051', '', 1, '2020-11-27 16:47:15', 669, '2020-11-27 16:47:15', 669, 0),
(3, 'nananan@gmail.com', 'BitConnect', '45454551', '', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0),
(4, 'Satoshi.Tajiri@sfr.com', 'Casino', '75284842', '', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0);

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
(1, '-', '', '', '', '', '', '', 0, '2020-01-01 00:00:00', 669, '2020-01-01 00:00:00', 669, 0),
(2, 'mdupond@19.fr', '12 Rue Blomet', 'Paris', '75015', '48.843836112648695', '2.3081649080153337', 'mdupond', 1, '2020-11-27 16:47:15', 669, '2020-11-27 16:47:15', 669, 0),
(3, 'Jeff.bezoz@gmail.com', '80 rue de la Sillicon Valley', 'Paris', '75015', '75.588948468496487', '82.525498494984488', '', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0),
(5, 'Derome.joomla@gmail.com', '321 Rue Lecourbe', 'Paris', '75015', '55.548478487448', '-76.541894874874', '', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0);

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
(1, 'Nouveau ag', 'nouvea', 1, '2020-01-01 00:00:00', 669, '2020-12-07 16:06:29', 669, 0),
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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

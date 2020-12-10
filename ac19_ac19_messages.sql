-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 10 déc. 2020 à 11:20
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
(3, '2020-12-10 08:45:27', 'Recherche de bénévoles', 'Bonjour,\r\n\r\nnous sommes à la recherche de bénévoles pour contribuer aux actions humanitaires d\'AC19 à Paris.\r\nConnaissez-vous dans votre entourage des personnes qui pourraient être intéressées ?\r\n\r\nMerci d\'avance pour votre réponse.\r\n\r\nCordialement,\r\nAlma RICHAUD\r\nCoordinatrice AC19', 4, 6, '', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0),
(4, '2020-12-10 08:47:07', 'Vos voisins ont besoin de notre aide', 'Bonjour Monsieur,\r\n\r\nvoici quelques semaines déjà que notre association AC19 vous rend des services à domicile pour vos achats et livraisons de produits de première nécessité.\r\n\r\nDe nouveaux bénévoles venant d\'être recrutés dans votre quartier, nous sommes maintenant en mesure d\'étendre nos services à vos voisins qui en auraient besoin.\r\n\r\nNous serions très heureux de pouvoir aussi les aider. Merci de nous le faire savoir.\r\n\r\nCordialement,\r\nSami JAOUI,\r\nBénévole AC19 - Paris 15e', 3, 2, '', 1, '2020-01-01 00:00:00', 0, '2020-01-01 00:00:00', 0, 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `ac19_ac19_messages`
--
ALTER TABLE `ac19_ac19_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ac19_ac19_messages_utilisateurs_aut_id` (`utilisateurs_aut_id`),
  ADD KEY `fk_ac19_ac19_messages_utilisateurs_dest_id` (`utilisateurs_dest_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `ac19_ac19_messages`
--
ALTER TABLE `ac19_ac19_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `ac19_ac19_messages`
--
ALTER TABLE `ac19_ac19_messages`
  ADD CONSTRAINT `fk_ac19_ac19_messages_utilisateurs_aut_id` FOREIGN KEY (`utilisateurs_aut_id`) REFERENCES `ac19_ac19_utilisateurs` (`id`),
  ADD CONSTRAINT `fk_ac19_ac19_messages_utilisateurs_dest_id` FOREIGN KEY (`utilisateurs_dest_id`) REFERENCES `ac19_ac19_utilisateurs` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

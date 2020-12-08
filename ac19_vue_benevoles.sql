-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 08 déc. 2020 à 11:42
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
-- Structure de la vue `ac19_vue_benevoles`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ac19_vue_benevoles`  AS  select `b`.`id` AS `id`,`u`.`email` AS `email`,concat(`u`.`nom`,' ',`u`.`prenom`) AS `benevole`,`u`.`created` AS `date` from (`ac19_ac19_benevoles` `b` join `ac19_ac19_utilisateurs` `u` on(`b`.`email` = `u`.`email`)) ;

--
-- VIEW `ac19_vue_benevoles`
-- Données : Aucun(e)
--

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

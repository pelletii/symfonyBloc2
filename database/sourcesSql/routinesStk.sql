-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 11 nov. 2025 à 17:38
-- Version du serveur : 9.1.0
-- Version de PHP : 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bdelevage`
--
use `bdElevage`;
-- --------------------------------------------------------


--
-- procédure stockée `ListerAnimauxDisponibles`
--

DROP PROCEDURE IF EXISTS `ListerAnimauxDisponibles`;
DELIMITER //
CREATE PROCEDURE ListerAnimauxDisponibles()
BEGIN
    SELECT * FROM animal WHERE disponible = TRUE;
END //
DELIMITER ;

--
-- procédure stockée `ListerAnimauxParEspece`
--
DROP PROCEDURE IF EXISTS `ListerAnimauxParEspece`;
DELIMITER //
CREATE PROCEDURE ListerAnimauxParEspece(IN p_idEspece INT)
BEGIN
    SELECT * FROM animal WHERE idEspece = p_idEspece;
END //
DELIMITER ;




/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

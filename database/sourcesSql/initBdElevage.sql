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
-- Structure de la table `adoption`
--

DROP TABLE IF EXISTS `adoption`;
CREATE TABLE IF NOT EXISTS `adoption` (
  `idClient` int NOT NULL,
  `idAnimal` int NOT NULL,
  `dateReservation` date DEFAULT NULL,
  `dateAdoption` date DEFAULT NULL,
  `prix` decimal(8,2) DEFAULT NULL,
  `paye` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idClient`,`idAnimal`),
  KEY `idAnimal` (`idAnimal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `adoption`
--

INSERT INTO `adoption` (`idClient`, `idAnimal`, `dateReservation`, `dateAdoption`, `prix`, `paye`) VALUES
(1, 2, '2023-05-10', '2023-05-20', 450.00, 1),
(2, 4, '2024-03-01', '2024-03-10', 300.00, 1),
(3, 6, '2022-09-15', '2022-09-25', 380.00, 1),
(4, 10, '2024-05-05', '2024-05-15', 100.00, 0),
(5, 11, '2024-07-01', '2024-07-10', 60.00, 1),
(6, 5, '2023-02-01', '2023-02-12', 350.00, 1),
(7, 9, '2024-06-10', '2024-06-20', 600.00, 1),
(8, 13, '2023-04-04', '2023-04-14', 500.00, 1),
(9, 15, '2024-09-12', '2024-09-22', 120.00, 1),
(10, 3, '2023-03-05', '2023-03-15', 400.00, 0);

-- --------------------------------------------------------

--
-- Structure de la table `animal`
--

DROP TABLE IF EXISTS `animal`;
CREATE TABLE IF NOT EXISTS `animal` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nomAnim` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sexeAnim` char(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `dateNaisAnim` date DEFAULT NULL,
  `commentaire` text COLLATE utf8mb4_general_ci,
  `idEspece` int DEFAULT NULL,
  `idRace` int DEFAULT NULL,
  `idMere` int DEFAULT NULL,
  `idPere` int DEFAULT NULL,
  `disponible` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idEspece` (`idEspece`),
  KEY `idRace` (`idRace`),
  KEY `idMere` (`idMere`),
  KEY `idPere` (`idPere`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `animal`
--

INSERT INTO `animal` (`id`, `nomAnim`, `sexeAnim`, `dateNaisAnim`, `commentaire`, `idEspece`, `idRace`, `idMere`, `idPere`, `disponible`) VALUES
(1, 'Bella', 'F', '2020-03-15', 'Chienne douce et sociable.', 1, 2, NULL, NULL, 1),
(2, 'Rex', 'M', '2019-07-22', 'Chien protecteur, bien dressé.', 1, 1, NULL, NULL, 0),
(3, 'Lucky', 'M', '2023-05-02', 'Chiot joueur, fils de Bella et Rex.', 1, 2, 1, 2, 1),
(4, 'Luna', 'F', '2023-05-02', 'Chiot calme, sœur de Lucky.', 1, 2, 1, 2, 1),
(5, 'Misty', 'F', '2021-02-10', 'Chatte câline, adore dormir.', 2, 3, NULL, NULL, 1),
(6, 'Simba', 'M', '2020-09-01', 'Chat curieux et affectueux.', 2, 4, NULL, NULL, 0),
(7, 'Pixel', 'M', '2024-03-05', 'Chaton vif, fils de Misty et Simba.', 2, 3, 5, 6, 1),
(8, 'Snow', 'F', '2022-04-15', 'Lapine blanche très calme.', 3, 6, NULL, NULL, 1),
(9, 'Floppy', 'M', '2021-12-10', 'Lapin sociable et curieux.', 3, 5, NULL, NULL, 0),
(10, 'Caramel', 'F', '2024-01-20', 'Petit lapin vif et doux.', 3, 6, 8, 9, 1),
(11, 'Coco', 'M', '2022-06-12', 'Canari qui chante beaucoup.', 4, 7, NULL, NULL, 1),
(12, 'Lili', 'F', '2021-09-20', 'Petite perruche grimpeuse.', 4, 8, NULL, NULL, 0),
(13, 'Sunny', 'M', '2024-02-10', 'Jeune oiseau curieux.', 4, 7, 12, 11, 1),
(14, 'Nugget', 'M', '2023-03-25', 'Petit hamster actif.', 5, 9, NULL, NULL, 1),
(15, 'Cookie', 'F', '2022-11-10', 'Très affectueuse, aime courir.', 5, 10, NULL, NULL, 0),
(16, 'Poppy', 'F', '2024-07-05', 'Bébé hamster en bonne santé.', 5, 9, 15, 14, 1);

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nomCli` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `prenomCli` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `adrCli` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cpCli` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `villeCli` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `melCli` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `dateNaisCli` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id`, `nomCli`, `prenomCli`, `adrCli`, `cpCli`, `villeCli`, `melCli`, `dateNaisCli`) VALUES
(1, 'Dupont', 'Marie', '12 rue des Lilas', '75015', 'Paris', 'marie.dupont@mail.com', '1985-06-12'),
(2, 'Martin', 'Paul', '5 avenue Victor Hugo', '69002', 'Lyon', 'paul.martin@mail.com', '1990-02-23'),
(3, 'Bernard', 'Lucie', '10 rue du Soleil', '31000', 'Toulouse', 'lucie.bernard@mail.com', '1988-11-04'),
(4, 'Durand', 'Hugo', '4 rue des Fleurs', '59000', 'Lille', 'hugo.durand@mail.com', '1992-03-14'),
(5, 'Petit', 'Emma', '8 avenue du Parc', '44000', 'Nantes', 'emma.petit@mail.com', '1995-12-01'),
(6, 'Robert', 'Julie', '2 rue Victor Hugo', '67000', 'Strasbourg', 'julie.robert@mail.com', '1987-07-20'),
(7, 'Richard', 'Lucas', '45 boulevard Saint-Michel', '75005', 'Paris', 'lucas.richard@mail.com', '1991-01-11'),
(8, 'Garcia', 'Lina', '10 rue du Stade', '33000', 'Bordeaux', 'lina.garcia@mail.com', '1999-06-06'),
(9, 'Moreau', 'Noah', '7 rue Voltaire', '34000', 'Montpellier', 'noah.moreau@mail.com', '1983-09-19'),
(10, 'Laurent', 'Camille', '23 avenue Pasteur', '21000', 'Dijon', 'camille.laurent@mail.com', '1996-10-22'),
(11, 'Simon', 'Lea', '5 rue du Moulin', '13000', 'Marseille', 'lea.simon@mail.com', '1994-04-09'),
(12, 'Michel', 'Tom', '18 rue Jean Jaurès', '72000', 'Le Mans', 'tom.michel@mail.com', '2000-05-30'),
(13, 'Lefevre', 'Chloe', '22 rue Lafayette', '80000', 'Amiens', 'chloe.lefevre@mail.com', '1986-08-15'),
(14, 'Roux', 'Nathan', '3 rue de la Gare', '37000', 'Tours', 'nathan.roux@mail.com', '1997-02-08'),
(15, 'David', 'Anna', '16 avenue de la République', '06000', 'Nice', 'anna.david@mail.com', '1989-01-19'),
(16, 'Bertrand', 'Ethan', '27 rue du Lac', '74000', 'Annecy', 'ethan.bertrand@mail.com', '1984-03-03'),
(17, 'Morel', 'Sarah', '8 rue de Bretagne', '35000', 'Rennes', 'sarah.morel@mail.com', '1993-07-11'),
(18, 'Fournier', 'Hugo', '9 rue de la Mer', '29200', 'Brest', 'hugo.fournier@mail.com', '1998-12-12'),
(19, 'Girard', 'Emma', '19 rue du Port', '17000', 'La Rochelle', 'emma.girard@mail.com', '1992-09-01'),
(20, 'Andre', 'Louis', '25 rue des Lilas', '75014', 'Paris', 'louis.andre@mail.com', '1980-10-25');

-- --------------------------------------------------------

--
-- Structure de la table `espece`
--

DROP TABLE IF EXISTS `espece`;
CREATE TABLE IF NOT EXISTS `espece` (
  `id` int NOT NULL AUTO_INCREMENT,
  `libelleEspece` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `espece`
--

INSERT INTO `espece` (`id`, `libelleEspece`) VALUES
(1, 'Chien'),
(2, 'Chat'),
(3, 'Lapin'),
(4, 'Oiseau'),
(5, 'Hamster');

-- --------------------------------------------------------

--
-- Structure de la table `race`
--

DROP TABLE IF EXISTS `race`;
CREATE TABLE IF NOT EXISTS `race` (
  `id` int NOT NULL AUTO_INCREMENT,
  `libelleRace` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `prixRace` decimal(8,2) NOT NULL,
  `idEspece` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idEspece` (`idEspece`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `race`
--

INSERT INTO `race` (`id`, `libelleRace`, `prixRace`, `idEspece`) VALUES
(1, 'Berger Allemand', 500.00, 1),
(2, 'Labrador', 450.00, 1),
(3, 'Siamois', 300.00, 2),
(4, 'Persan', 350.00, 2),
(5, 'Dutch', 120.00, 3),
(6, 'Angora', 150.00, 3),
(7, 'Canari', 90.00, 4),
(8, 'grimpeur', 150.00, 4),
(9, 'Hamster Russe', 80.00, 5),
(10, 'Nain', 100.00, 5);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `adoption`
--
ALTER TABLE `adoption`
  ADD CONSTRAINT `adoption_ibfk_1` FOREIGN KEY (`idClient`) REFERENCES `client` (`id`),
  ADD CONSTRAINT `adoption_ibfk_2` FOREIGN KEY (`idAnimal`) REFERENCES `animal` (`id`);

--
-- Contraintes pour la table `animal`
--
ALTER TABLE `animal`
  ADD CONSTRAINT `animal_ibfk_1` FOREIGN KEY (`idEspece`) REFERENCES `espece` (`id`),
  ADD CONSTRAINT `animal_ibfk_2` FOREIGN KEY (`idRace`) REFERENCES `race` (`id`),
  ADD CONSTRAINT `animal_ibfk_3` FOREIGN KEY (`idMere`) REFERENCES `animal` (`id`),
  ADD CONSTRAINT `animal_ibfk_4` FOREIGN KEY (`idPere`) REFERENCES `animal` (`id`);

--
-- Contraintes pour la table `race`
--
ALTER TABLE `race`
  ADD CONSTRAINT `race_ibfk_1` FOREIGN KEY (`idEspece`) REFERENCES `espece` (`id`);
COMMIT;






/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

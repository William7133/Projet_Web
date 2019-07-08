-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 08 juil. 2019 à 18:07
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `portfolio`
--

-- --------------------------------------------------------

--
-- Structure de la table `centreinterets`
--

DROP TABLE IF EXISTS `centreinterets`;
CREATE TABLE IF NOT EXISTS `centreinterets` (
  `ID` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `NOM` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `IDINFOSPERSONNELLES` smallint(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `CENTREINTERET_fk_cv` (`IDINFOSPERSONNELLES`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `centreinterets`
--

INSERT INTO `centreinterets` (`ID`, `NOM`, `IDINFOSPERSONNELLES`) VALUES
(9, 'Handball', 1),
(10, 'Tennis', 1),
(11, 'Course à pied', 1),
(12, 'Informatique', 1);

-- --------------------------------------------------------

--
-- Structure de la table `competence`
--

DROP TABLE IF EXISTS `competence`;
CREATE TABLE IF NOT EXISTS `competence` (
  `ID` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `NOM` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NIVEAU` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DOMAINE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `IDINFO` smallint(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `competence_fk_infospersonnelles` (`IDINFO`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `competence`
--

INSERT INTO `competence` (`ID`, `NOM`, `NIVEAU`, `DOMAINE`, `IDINFO`) VALUES
(1, 'Html', '(3.5/5)', 'DEVELOPPEMENT WEB', 1),
(3, 'Css', '(3.5/5)', 'DEVELOPPEMENT WEB', 1),
(6, 'Javascript', '(2/5)', 'DEVELOPPEMENT WEB', 1),
(7, 'Php', '(2/5)', 'DEVELOPPEMENT WEB', 1),
(8, 'Arduino', '(3.5/5)', 'DEVELOPPEMENT LOGICIELS', 1),
(9, 'Python', '(3/5)', 'DEVELOPPEMENT LOGICIELS', 1),
(10, 'Langage C', '(2.5/5)', 'DEVELOPPEMENT LOGICIELS', 1),
(11, 'C sharp', '(2/5)', 'DEVELOPPEMENT LOGICIELS', 1),
(12, 'Cisco', '(4/5)', 'INFRASTRUCTURES ET SYSTEMES NFORMATIONS', 1),
(13, 'Windows', '(4/5)', 'INFRASTRUCTURES ET SYSTEMES INFORMATIONS', 1),
(14, 'Linux', '(3.5/5)', 'INFRASTRUCTURES ET SYSTEMES INFORMATIONS', 1),
(16, 'Virtualisation', '(4/5)', 'INFRASTRUCTURES ET SYSTEMES INFORMATIONS', 1);

-- --------------------------------------------------------

--
-- Structure de la table `competence_experiencesprofesionnelles`
--

DROP TABLE IF EXISTS `competence_experiencesprofesionnelles`;
CREATE TABLE IF NOT EXISTS `competence_experiencesprofesionnelles` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `competence_formation`
--

DROP TABLE IF EXISTS `competence_formation`;
CREATE TABLE IF NOT EXISTS `competence_formation` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `experiencesprofesionnelles`
--

DROP TABLE IF EXISTS `experiencesprofesionnelles`;
CREATE TABLE IF NOT EXISTS `experiencesprofesionnelles` (
  `ID` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `NOM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DATEDEBUT` date DEFAULT NULL,
  `DUREEJOUR` decimal(10,0) NOT NULL,
  `IDSTRUCTURES` smallint(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `EXPERIENCESPROFESIONNELLES_fk_STRUCTURE` (`IDSTRUCTURES`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `experiencesprofesionnelles`
--

INSERT INTO `experiencesprofesionnelles` (`ID`, `NOM`, `DATEDEBUT`, `DUREEJOUR`, `IDSTRUCTURES`) VALUES
(1, 'Clair Azur', '2017-06-03', '25', 10),
(2, 'Pyragric', '2017-04-10', '96', 10),
(3, 'A.C.S', '2017-07-15', '77', 10),
(4, 'ENSTO NOVEXIA', '2017-09-02', '21', 10),
(5, 'QUANTUM INGENIERIE', '2017-10-23', '19', 10),
(6, 'TUBESCA COMABI', '2017-11-16', '36', 10),
(7, 'DESCOURS ET CABAUD', '2018-01-29', '26', 7),
(8, 'DUQUEINE', '2018-03-13', '108', 7),
(9, 'CALZATTI NETTOYAGES', '2018-07-02', '68', 7);

-- --------------------------------------------------------

--
-- Structure de la table `formation`
--

DROP TABLE IF EXISTS `formation`;
CREATE TABLE IF NOT EXISTS `formation` (
  `ID` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `DATEDEBUT` date NOT NULL,
  `DATEFIN` date NOT NULL,
  `DIPLOME` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NIVEAU` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IDSTRUCTURES` smallint(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fromation_fk_structures` (`IDSTRUCTURES`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `formation`
--

INSERT INTO `formation` (`ID`, `DATEDEBUT`, `DATEFIN`, `DIPLOME`, `NIVEAU`, `IDSTRUCTURES`) VALUES
(1, '2012-09-04', '2016-06-30', 'Bac STMG', 'Lycée', 2),
(4, '2018-09-17', '2019-07-01', 'BACHELOR', 'BAC+1', 5);

-- --------------------------------------------------------

--
-- Structure de la table `formulaire`
--

DROP TABLE IF EXISTS `formulaire`;
CREATE TABLE IF NOT EXISTS `formulaire` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NOM` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PRENOM` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MAIL` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TEXTE` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=216 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `formulaire`
--

INSERT INTO `formulaire` (`ID`, `NOM`, `PRENOM`, `MAIL`, `TEXTE`) VALUES
(198, 'william', 'fernandes', 'william.fernandes713@gmail.com', 'Bonjour, votre CV manque d\'animations'),
(199, 'dfjgghj', 'gkgjkgjjgk', 'kgjgkk@khllhlkh', 'hklhkhkl'),


-- --------------------------------------------------------

--
-- Structure de la table `infospersonnelles`
--

DROP TABLE IF EXISTS `infospersonnelles`;
CREATE TABLE IF NOT EXISTS `infospersonnelles` (
  `ID` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `NOM` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PRENOM` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MAIL` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TELEPHONE` decimal(10,0) NOT NULL,
  `TYPEPERMIS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `infospersonnelles`
--

INSERT INTO `infospersonnelles` (`ID`, `NOM`, `PRENOM`, `MAIL`, `TELEPHONE`, `TYPEPERMIS`) VALUES
(1, 'Fernandes', 'William', 'william.fernandes@ynov.com', '652713575', 'Permis B');

-- --------------------------------------------------------

--
-- Structure de la table `structures`
--

DROP TABLE IF EXISTS `structures`;
CREATE TABLE IF NOT EXISTS `structures` (
  `ID` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `NOM` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `VILLE` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CODEPOSTAL` decimal(10,0) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `structures`
--

INSERT INTO `structures` (`ID`, `NOM`, `VILLE`, `CODEPOSTAL`) VALUES
(1, 'VAL DE SAONE', '', '0'),
(2, '', 'TREVOUX', '0'),
(3, '', '', '1600'),
(4, 'YNOV LYON CAMPUS', '', '0'),
(5, '', 'LYON 7', '0'),
(6, '', '', '69007'),
(7, 'ADECCO', '', '0'),
(8, '', 'NEUVILLE SUR SAONE', '0'),
(9, '', '', '69250'),
(10, 'PROMAN', '', '0'),
(11, '', 'VILLEFRANCHE SUR SAONE', '0'),
(12, '', '', '69400'),
(13, 'YNOV', 'LYON', '69');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `centreinterets`
--
ALTER TABLE `centreinterets`
  ADD CONSTRAINT `CENTREINTERET_fk_cv` FOREIGN KEY (`IDINFOSPERSONNELLES`) REFERENCES `infospersonnelles` (`ID`);

--
-- Contraintes pour la table `competence`
--
ALTER TABLE `competence`
  ADD CONSTRAINT `competence_fk_infospersonnelles` FOREIGN KEY (`IDINFO`) REFERENCES `infospersonnelles` (`ID`);

--
-- Contraintes pour la table `experiencesprofesionnelles`
--
ALTER TABLE `experiencesprofesionnelles`
  ADD CONSTRAINT `EXPERIENCESPROFESIONNELLES_fk_STRUCTURE` FOREIGN KEY (`IDSTRUCTURES`) REFERENCES `structures` (`ID`);

--
-- Contraintes pour la table `formation`
--
ALTER TABLE `formation`
  ADD CONSTRAINT `fromation_fk_structures` FOREIGN KEY (`IDSTRUCTURES`) REFERENCES `structures` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 04 avr. 2020 à 15:54
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `groupe_musique`
--

-- --------------------------------------------------------

--
-- Structure de la table `groupes`
--

CREATE TABLE `groupes` (
  `id` int(11) NOT NULL,
  `nom_groupe` varchar(255) NOT NULL,
  `date_creation` datetime NOT NULL,
  `del` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `groupes`
--

INSERT INTO `groupes` (`id`, `nom_groupe`, `date_creation`, `del`) VALUES
(1, 'GROUPE 1', '2020-01-01 00:00:00', 0),
(2, 'GROUPE 2', '2020-02-02 00:00:00', 0);

-- --------------------------------------------------------

--
-- Structure de la table `j_membres_groupes`
--

CREATE TABLE `j_membres_groupes` (
  `id` int(11) NOT NULL,
  `id_groupes` int(11) NOT NULL,
  `id_membres` int(11) NOT NULL,
  `del` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `j_membres_groupes`
--

INSERT INTO `j_membres_groupes` (`id`, `id_groupes`, `id_membres`, `del`) VALUES
(1, 1, 1, 0),
(2, 1, 2, 0),
(3, 2, 3, 0),
(4, 2, 4, 0),
(5, 2, 5, 0),
(6, 2, 6, 0);

-- --------------------------------------------------------

--
-- Structure de la table `membres`
--

CREATE TABLE `membres` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `date_creation` datetime NOT NULL,
  `date_maj` datetime NOT NULL,
  `del` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `membres`
--

INSERT INTO `membres` (`id`, `nom`, `prenom`, `date_creation`, `date_maj`, `del`) VALUES
(1, 'Joestar', 'Jonathan', '2020-04-03 11:25:46', '0000-00-00 00:00:00', 0),
(2, 'Brando', 'Dio', '2020-04-03 11:28:31', '0000-00-00 00:00:00', 0),
(3, 'Grant', 'Jake', '2020-04-03 11:29:36', '0000-00-00 00:00:00', 0),
(4, 'Bruce', 'Tom', '2020-04-03 11:31:09', '0000-00-00 00:00:00', 0),
(5, 'Hart', 'David', '2020-04-03 11:31:36', '0000-00-00 00:00:00', 0),
(6, 'Watson', 'Charlie', '2020-04-03 11:32:37', '0000-00-00 00:00:00', 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `groupes`
--
ALTER TABLE `groupes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `j_membres_groupes`
--
ALTER TABLE `j_membres_groupes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `membres`
--
ALTER TABLE `membres`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `groupes`
--
ALTER TABLE `groupes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `j_membres_groupes`
--
ALTER TABLE `j_membres_groupes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `membres`
--
ALTER TABLE `membres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

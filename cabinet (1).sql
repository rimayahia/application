-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 18 sep. 2021 à 15:45
-- Version du serveur : 10.4.20-MariaDB
-- Version de PHP : 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `cabinet`
--

-- --------------------------------------------------------

--
-- Structure de la table `cons`
--

CREATE TABLE `cons` (
  `id_cons` int(11) NOT NULL,
  `date_cons` date NOT NULL,
  `id_util` int(11) NOT NULL,
  `id_p` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `cons`
--

INSERT INTO `cons` (`id_cons`, `date_cons`, `id_util`, `id_p`) VALUES
(1, '2021-08-11', 1, 2),
(2, '2021-07-31', 1, 2),
(3, '2021-07-31', 1, 2),
(4, '2021-08-01', 1, 4),
(5, '2021-08-11', 1, 2),
(6, '2021-08-10', 1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `cr`
--

CREATE TABLE `cr` (
  `id_c` int(11) NOT NULL,
  `nom` varchar(15) NOT NULL,
  `prenom` varchar(15) NOT NULL,
  `age` int(11) NOT NULL,
  `foie` varchar(11) NOT NULL,
  `coeur` varchar(50) NOT NULL,
  `visicul` varchar(15) NOT NULL,
  `pancreas` varchar(15) NOT NULL,
  `rgd` varchar(15) NOT NULL,
  `rate` varchar(15) NOT NULL,
  `autres` varchar(15) NOT NULL,
  `conclusion` varchar(15) NOT NULL,
  `id_cons` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `cr`
--

INSERT INTO `cr` (`id_c`, `nom`, `prenom`, `age`, `foie`, `coeur`, `visicul`, `pancreas`, `rgd`, `rate`, `autres`, `conclusion`, `id_cons`) VALUES
(1515, 'saou', 'rachid', 50, 'bien', 'bien', 'bien', 'bien', 'pas bien', '/', '/', 'malade', 2612);

-- --------------------------------------------------------

--
-- Structure de la table `diag`
--

CREATE TABLE `diag` (
  `id_diag` int(11) NOT NULL,
  `mald` varchar(50) NOT NULL,
  `sym` varchar(255) NOT NULL,
  `id_cons` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `diag`
--

INSERT INTO `diag` (`id_diag`, `mald`, `sym`, `id_cons`) VALUES
(1, 'gripe', 'fievre', 1),
(2, '2', '3', 1),
(3, '1', '2', 1);

-- --------------------------------------------------------

--
-- Structure de la table `facture`
--

CREATE TABLE `facture` (
  `id_fact` int(11) NOT NULL,
  `num` varchar(50) NOT NULL,
  `total` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `id-P` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `facture`
--

INSERT INTO `facture` (`id_fact`, `num`, `total`, `date`, `id-P`) VALUES
(5, '123456789', '147852369', '0000-00-00', 55);

-- --------------------------------------------------------

--
-- Structure de la table `lignefact`
--

CREATE TABLE `lignefact` (
  `id_lign-fact` int(11) NOT NULL,
  `ref` varchar(50) NOT NULL,
  `design` varchar(255) NOT NULL,
  `qnt` int(50) NOT NULL,
  `prixu` double NOT NULL,
  `mnt` double NOT NULL,
  `id-fac` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `lt`
--

CREATE TABLE `lt` (
  `id_l` int(11) NOT NULL,
  `nom_med` varchar(15) NOT NULL,
  `prenom_med` varchar(15) NOT NULL,
  `date_lt` text NOT NULL,
  `lettr` varchar(100) NOT NULL,
  `id_cons` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `lt`
--

INSERT INTO `lt` (`id_l`, `nom_med`, `prenom_med`, `date_lt`, `lettr`, `id_cons`) VALUES
(1, 'tahi ', 'chahinez', '0000-00-00', 'bonjour,bonsoir', 0),
(3, 'azrou', 'marame', '12.08.2021', 'salut, je suis .', 0),
(4, 'nom', 'prenom', '2021-07-31', 'test text  test text  test text  test text  test text  test text  test text  test text  test text  t', 5);

-- --------------------------------------------------------

--
-- Structure de la table `orr`
--

CREATE TABLE `orr` (
  `id_o` int(11) NOT NULL,
  `med1` varchar(40) NOT NULL,
  `med2` varchar(40) NOT NULL,
  `med3` varchar(40) NOT NULL,
  `med4` varchar(40) NOT NULL,
  `med5` varchar(40) NOT NULL,
  `med6` varchar(40) NOT NULL,
  `med7` varchar(40) NOT NULL,
  `id_cons` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `orr`
--

INSERT INTO `orr` (`id_o`, `med1`, `med2`, `med3`, `med4`, `med5`, `med6`, `med7`, `id_cons`) VALUES
(2, 'doliprane', 'glamoxil', 'augmantin', 'panadol', '', '', '', 1),
(5, 'foerlaxe', 'pépsan', 'protine', '', '', '', '', 0),
(6, '/', 'pépsan', 'protine', '/', 'péptidac', '/', '', 52552);

-- --------------------------------------------------------

--
-- Structure de la table `patient`
--

CREATE TABLE `patient` (
  `id_p` int(11) NOT NULL,
  `nom` varchar(15) NOT NULL,
  `prenom` varchar(15) NOT NULL,
  `njf` varchar(15) NOT NULL,
  `dans` date NOT NULL,
  `sexe` varchar(15) NOT NULL,
  `telephone` int(11) NOT NULL,
  `adresse` text NOT NULL,
  `datte` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `patient`
--

INSERT INTO `patient` (`id_p`, `nom`, `prenom`, `njf`, `dans`, `sexe`, `telephone`, `adresse`, `datte`) VALUES
(2, 'redouan ', 'nihad', 'redouan', '1995-05-12', 'femme', 35263526, 'kherata', '2021-08-20'),
(6, 'ryma', 'tahi', 'ryma', '0000-00-00', 'femme', 525585555, 'melbo', '2021-08-25'),
(8, 'azrou', 'aliçia', 'aliçia', '0000-00-00', 'femme', 2147483647, 'akbou', '2021-09-04'),
(9, 'saadoune', 'dyhia', 'ryma', '0000-00-00', 'jiouj', 2147483647, 'melbo', '2021-09-16');

-- --------------------------------------------------------

--
-- Structure de la table `rdv`
--

CREATE TABLE `rdv` (
  `id_rdv` int(11) NOT NULL,
  `date_rdv` text NOT NULL,
  `heure_rdv` text NOT NULL,
  `id_p` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `rdv`
--

INSERT INTO `rdv` (`id_rdv`, `date_rdv`, `heure_rdv`, `id_p`) VALUES
(2, '2021-08-11', '14:30', 2),
(6, '2021-01-12', '8:00', 4),
(7, '2021-08-12', '16:30', 4);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id-util` int(11) NOT NULL,
  `mdp` varchar(15) NOT NULL,
  `profil` varchar(25) NOT NULL,
  `nom` varchar(25) NOT NULL,
  `prenom` varchar(25) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id-util`, `mdp`, `profil`, `nom`, `prenom`, `img`) VALUES
(1, 'md21', 'medcin', 'yahia', 'rima', 'profot/login.jpg'),
(2, 'sc21', 'secritaire', 'saal', 'nada', 'profot/dela.jpg');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cons`
--
ALTER TABLE `cons`
  ADD PRIMARY KEY (`id_cons`);

--
-- Index pour la table `cr`
--
ALTER TABLE `cr`
  ADD PRIMARY KEY (`id_c`);

--
-- Index pour la table `diag`
--
ALTER TABLE `diag`
  ADD PRIMARY KEY (`id_diag`);

--
-- Index pour la table `facture`
--
ALTER TABLE `facture`
  ADD PRIMARY KEY (`id_fact`);

--
-- Index pour la table `lignefact`
--
ALTER TABLE `lignefact`
  ADD PRIMARY KEY (`id_lign-fact`);

--
-- Index pour la table `lt`
--
ALTER TABLE `lt`
  ADD PRIMARY KEY (`id_l`);

--
-- Index pour la table `orr`
--
ALTER TABLE `orr`
  ADD PRIMARY KEY (`id_o`);

--
-- Index pour la table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id_p`);

--
-- Index pour la table `rdv`
--
ALTER TABLE `rdv`
  ADD PRIMARY KEY (`id_rdv`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id-util`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `cons`
--
ALTER TABLE `cons`
  MODIFY `id_cons` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `cr`
--
ALTER TABLE `cr`
  MODIFY `id_c` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5527;

--
-- AUTO_INCREMENT pour la table `diag`
--
ALTER TABLE `diag`
  MODIFY `id_diag` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `facture`
--
ALTER TABLE `facture`
  MODIFY `id_fact` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `lignefact`
--
ALTER TABLE `lignefact`
  MODIFY `id_lign-fact` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `lt`
--
ALTER TABLE `lt`
  MODIFY `id_l` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `orr`
--
ALTER TABLE `orr`
  MODIFY `id_o` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `patient`
--
ALTER TABLE `patient`
  MODIFY `id_p` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `rdv`
--
ALTER TABLE `rdv`
  MODIFY `id_rdv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id-util` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

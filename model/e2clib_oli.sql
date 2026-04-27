-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mar. 03 mars 2026 à 13:14
-- Version du serveur : 8.0.45-0ubuntu0.24.04.1
-- Version de PHP : 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `e2clib_oli`
--

-- --------------------------------------------------------

--
-- Structure de la table `books`
--

CREATE TABLE `books` (
  `ID` smallint UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `auteur` varchar(255) NOT NULL DEFAULT 'inconnu',
  `synopsis` tinytext,
  `year` smallint DEFAULT NULL,
  `editor` varchar(255) DEFAULT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `pages` smallint DEFAULT NULL,
  `genre_id` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `languages_ID` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `format_id` tinyint UNSIGNED DEFAULT NULL,
  `users_id` smallint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `books`
--

INSERT INTO `books` (`ID`, `title`, `auteur`, `synopsis`, `year`, `editor`, `cover`, `pages`, `genre_id`, `languages_ID`, `format_id`, `users_id`) VALUES
(1, 'AL CAPOTE ', 'SAN-ANTONIO', NULL, 1992, 'FleuveNoir', NULL, 312, 2, 1, 1, 4),
(2, 'Teen Time ', '', NULL, 2017, 'hachette éducation', NULL, 143, 1, 2, 5, NULL),
(103, 'Le monde s\'effondre', 'Chinua Achebe', NULL, 1958, NULL, NULL, 596, 4, 1, 1, NULL),
(104, 'Contes', 'Hans Christian Andersen', NULL, 1835, NULL, NULL, 871, 7, 1, 2, NULL),
(105, 'Orgueil et Préjugés', 'Jane Austen', NULL, 1813, NULL, NULL, 918, 6, 1, 2, NULL),
(106, 'Le Père Goriot', 'Honoré de Balzac', NULL, 1835, NULL, NULL, 324, 8, 1, 2, NULL),
(107, 'Molloy', 'Samuel Beckett', NULL, 1951, NULL, NULL, 453, 5, 1, 2, NULL),
(108, 'Le Décaméron', 'Boccace', NULL, 1349, NULL, NULL, 406, 8, 1, 1, NULL),
(109, 'Fictions', 'Jorge Luis Borges', NULL, 1944, NULL, NULL, 781, 9, 1, 1, NULL),
(110, 'Les Hauts de Hurle-Vent', 'Emily Brontë', NULL, 1847, NULL, NULL, 879, 8, 1, 2, NULL),
(111, 'L\'Étranger', 'Albert Camus', NULL, 1942, NULL, NULL, 935, 3, 1, 1, NULL),
(112, 'Voyage au bout de la nuit', 'Louis-Ferdinand Céline', NULL, 1932, NULL, NULL, 541, 3, 1, 1, NULL),
(113, 'Don Quichotte', 'Miguel de Cervantes', NULL, 1605, NULL, NULL, 905, 8, 1, 3, NULL),
(114, 'Les Contes de Canterbury', 'Geoffrey Chaucer', NULL, 1400, NULL, NULL, 735, 10, 1, 2, NULL),
(115, 'Nostromo', 'Joseph Conrad', NULL, 1904, NULL, NULL, 126, 8, 1, 1, NULL),
(116, 'La Divine Comédie', 'Dante Alighieri', NULL, 1300, NULL, NULL, 475, 10, 1, 2, NULL),
(117, 'De grandes espérances', 'Charles Dickens', NULL, 1861, NULL, NULL, 812, 6, 1, 2, NULL),
(118, 'Jacques le Fataliste', 'Denis Diderot', NULL, 1796, NULL, NULL, 469, 10, 1, 3, NULL),
(119, 'Berlin Alexanderplatz', 'Alfred Döblin', NULL, 1929, NULL, NULL, 243, 7, 1, 1, NULL),
(120, 'Crime et Châtiment', 'Fiodor Dostoïevski', NULL, 1866, NULL, NULL, 351, 4, 1, 2, NULL),
(121, 'L\'Idiot', 'Fiodor Dostoïevski', NULL, 1869, NULL, NULL, 939, 7, 1, 2, NULL),
(122, 'Les Frères Karamazov', 'Fiodor Dostoïevski', NULL, 1880, NULL, NULL, 160, 3, 1, 1, NULL),
(123, 'Middlemarch', 'George Eliot', NULL, 1871, NULL, NULL, 913, 8, 1, 1, NULL),
(124, 'Homme invisible, pour qui chantes-tu ?', 'Ralph Ellison', NULL, 1952, NULL, NULL, 160, 1, 1, 1, NULL),
(125, 'Médée', 'Euripide', NULL, -431, NULL, NULL, 738, 3, 1, 1, NULL),
(126, 'Absalon, Absalon !', 'William Faulkner', NULL, 1936, NULL, NULL, 443, 3, 1, 2, NULL),
(127, 'Le Bruit et la Fureur', 'William Faulkner', NULL, 1929, NULL, NULL, 694, 1, 1, 1, NULL),
(128, 'Madame Bovary', 'Gustave Flaubert', NULL, 1857, NULL, NULL, 323, 5, 1, 1, NULL),
(129, 'L\'éducation sentimentale', 'Gustave Flaubert', NULL, 1869, NULL, NULL, 952, 2, 1, 1, NULL),
(130, 'Dramero Gitano', 'Federico Garcia Lorca', NULL, 1928, NULL, NULL, 182, 7, 1, 1, NULL),
(131, 'Cent ans de solitude', 'Gabriel Garcia Marquez', NULL, 1967, NULL, NULL, 526, 1, 1, 3, NULL),
(132, 'L\'Amour aux temps du choléra', 'Gabriel Garcia Marquez', NULL, 1985, NULL, NULL, 415, 10, 1, 2, NULL),
(133, 'Faust', 'Johann Wolfgang von Goethe', NULL, 1808, NULL, NULL, 602, 4, 1, 3, NULL),
(134, 'Les Âmes mortes', 'Nicolas Gogol', NULL, 1842, NULL, NULL, 309, 3, 1, 1, NULL),
(135, 'Le Tambour', 'Günter Grass', NULL, 1959, NULL, NULL, 780, 4, 1, 1, NULL),
(136, 'La Faim', 'Knut Hamsun', NULL, 1890, NULL, NULL, 123, 9, 1, 2, NULL),
(137, 'Le Vieil Homme et la Mer', 'Ernest Hemingway', NULL, 1952, NULL, NULL, 798, 5, 1, 3, NULL),
(138, 'Iliade', 'Homère', NULL, -850, NULL, NULL, 454, 4, 1, 1, NULL),
(139, 'Odyssée', 'Homère', NULL, -750, NULL, NULL, 411, 9, 1, 2, NULL),
(140, 'Une maison de poupée', 'Henrik Ibsen', NULL, 1879, NULL, NULL, 234, 10, 1, 3, NULL),
(141, 'Ulysse', 'James Joyce', NULL, 1922, NULL, NULL, 747, 2, 1, 2, NULL),
(142, 'Le Procès', 'Franz Kafka', NULL, 1925, NULL, NULL, 661, 2, 1, 1, NULL),
(143, 'Le Château', 'Franz Kafka', NULL, 1926, NULL, NULL, 319, 3, 1, 2, NULL),
(144, 'Les Misérables', 'Victor Hugo', NULL, 1862, NULL, NULL, 203, 6, 1, 1, 4),
(146, 'Le Petit Prince', 'Antoine de Saint-Exupéry', NULL, 1943, NULL, NULL, 846, 3, 1, 2, NULL),
(147, 'La Peste', 'Albert Camus', NULL, 1947, NULL, NULL, 672, 7, 1, 2, NULL),
(148, 'L\'Écume des jours', 'Boris Vian', NULL, 1947, NULL, NULL, 129, 8, 1, 1, NULL),
(149, 'Bel-Ami', 'Guy de Maupassant', NULL, 1885, NULL, NULL, 599, 10, 1, 3, NULL),
(150, 'Le Rouge et le Noir', 'Stendhal', NULL, 1830, NULL, NULL, 139, 3, 1, 2, NULL),
(152, 'Les Fleurs du mal', 'Charles Baudelaire', NULL, 1857, NULL, NULL, 273, 6, 1, 2, NULL),
(153, 'Le Horla', 'Guy de Maupassant', NULL, 1887, NULL, NULL, 408, 8, 1, 3, NULL),
(154, 'L\'Assommoir', 'Émile Zola', NULL, 1877, NULL, NULL, 361, 5, 1, 2, NULL),
(155, 'Germinal', 'Émile Zola', NULL, 1885, NULL, NULL, 676, 5, 1, 1, NULL),
(156, 'Thérèse Raquin', 'Émile Zola', NULL, 1867, NULL, NULL, 459, 9, 1, 1, NULL),
(157, 'L\'Œuvre', 'Émile Zola', NULL, 1886, NULL, NULL, 912, 4, 1, 1, NULL),
(158, 'La Fortune des Rougon', 'Émile Zola', NULL, 1871, NULL, NULL, 390, 3, 1, 2, NULL),
(159, 'La Curée', 'Émile Zola', NULL, 1872, NULL, NULL, 924, 8, 1, 3, NULL),
(160, 'Nana', 'Émile Zola', NULL, 1880, NULL, NULL, 189, 8, 1, 2, NULL),
(161, 'Pot-Bouille', 'Émile Zola', NULL, 1882, NULL, NULL, 734, 4, 1, 1, NULL),
(162, 'Au Bonheur des Dames', 'Émile Zola', NULL, 1883, NULL, NULL, 577, 1, 1, 1, NULL),
(163, 'La Joie de vivre', 'Émile Zola', NULL, 1884, NULL, NULL, 378, 7, 1, 3, NULL),
(164, 'Le Rêve', 'Émile Zola', NULL, 1888, NULL, NULL, 645, 8, 1, 3, NULL),
(165, 'La Bête humaine', 'Émile Zola', NULL, 1890, NULL, NULL, 790, 1, 1, 1, NULL),
(166, 'L\'Argent', 'Émile Zola', NULL, 1891, NULL, NULL, 808, 8, 1, 1, NULL),
(167, 'La Débâcle', 'Émile Zola', NULL, 1892, NULL, NULL, 792, 1, 1, 2, NULL),
(168, 'Le Docteur Pascal', 'Émile Zola', NULL, 1893, NULL, NULL, 767, 3, 1, 1, NULL),
(169, 'Les Thibault', 'Roger Martin du Gard', NULL, 1922, NULL, NULL, 242, 8, 1, 3, NULL),
(170, 'La Condition humaine', 'André Malraux', NULL, 1933, NULL, NULL, 111, 5, 1, 1, NULL),
(171, 'Le Silence de la mer', 'Vercors', NULL, 1942, NULL, NULL, 189, 2, 1, 1, NULL),
(172, 'La Promesse de l\'aube', 'Romain Gary', NULL, 1960, NULL, NULL, 929, 3, 1, 2, NULL),
(173, 'Éducation européenne', 'Romain Gary', NULL, 1945, NULL, NULL, 154, 1, 1, 2, NULL),
(174, 'Les Racines du ciel', 'Romain Gary', NULL, 1956, NULL, NULL, 455, 2, 1, 1, NULL),
(175, 'La Vie devant soi', 'Romain Gary', NULL, 1975, NULL, NULL, 316, 9, 1, 1, NULL),
(176, 'L\'Élégance du hérisson', 'Muriel Barbery', NULL, 2006, NULL, NULL, 861, 3, 1, 1, NULL),
(177, 'Ensemble, c\'est tout', 'Anna Gavalda', NULL, 2004, NULL, NULL, 101, 3, 1, 1, NULL),
(178, 'Je l\'aimais', 'Anna Gavalda', NULL, 2002, NULL, NULL, 678, 3, 1, 1, NULL),
(179, 'La Consolante', 'Anna Gavalda', NULL, 2008, NULL, NULL, 269, 1, 1, 1, NULL),
(180, 'L\'Île des oubliés', 'Victoria Hislop', NULL, 2010, NULL, NULL, 692, 7, 1, 1, 3),
(181, 'Le Chardonneret', 'Donna Tartt', NULL, 2013, NULL, NULL, 808, 1, 1, 1, NULL),
(182, 'La Vérité sur l\'affaire Harry Quebert', 'Joël Dicker', NULL, 2012, NULL, NULL, 370, 5, 1, 1, NULL),
(183, 'L\'énigme du retour', 'Dany Laferrière', NULL, 2009, NULL, NULL, 302, 3, 1, 3, NULL),
(184, 'Le Livre des Baltimore', 'Joël Dicker', NULL, 2015, NULL, NULL, 788, 5, 1, 1, NULL),
(185, 'La disparition de Stephanie Mailer', 'Joël Dicker', NULL, 2018, NULL, NULL, 343, 8, 1, 3, NULL),
(186, 'Le Mystère Henri Pick', 'David Foenkinos', NULL, 2016, NULL, NULL, 247, 3, 1, 2, NULL),
(187, 'Charlotte', 'David Foenkinos', NULL, 2014, NULL, NULL, 535, 7, 1, 2, NULL),
(188, 'Vers la beauté', 'David Foenkinos', NULL, 2018, NULL, NULL, 176, 10, 1, 2, NULL),
(189, 'Le Bureau des Jardins et des Étangs', 'Didier Decoin', NULL, 2017, NULL, NULL, 757, 4, 1, 2, NULL),
(190, 'La Tresse', 'Laetitia Colombani', NULL, 2017, NULL, NULL, 106, 3, 1, 1, NULL),
(191, 'Changer l\'eau des fleurs', 'Valérie Perrin', NULL, 2018, NULL, NULL, 434, 1, 1, 1, NULL),
(192, 'Les Oubliés du dimanche', 'Valérie Perrin', NULL, 2015, NULL, NULL, 732, 8, 1, 2, 3),
(193, 'Trois', 'Valérie Perrin', NULL, 2021, NULL, NULL, 492, 5, 1, 3, NULL),
(194, 'Le Bal des folles', 'Victoria Mas', NULL, 2019, NULL, NULL, 820, 8, 1, 3, 5),
(195, 'Le Cerf-volant', 'Laetitia Colombani', NULL, 2021, NULL, NULL, 462, 8, 1, 1, NULL),
(196, 'Le Parfum', 'Patrick Süskind', NULL, 1985, NULL, NULL, 972, 6, 1, 3, NULL),
(197, 'L\'Homme qui voulait être heureux', 'Laurent Gounelle', NULL, 2008, NULL, NULL, 315, 2, 1, 3, NULL),
(198, 'Le Jour où j\'ai appris à vivre', 'Laurent Gounelle', NULL, 2014, NULL, NULL, 473, 5, 1, 1, NULL),
(199, 'Les Dieux voyagent toujours incognito', 'Laurent Gounelle', NULL, 2011, NULL, NULL, 984, 5, 1, 1, NULL),
(200, 'Et tu trouveras le trésor qui dort en toi', 'Laurent Gounelle', NULL, 2016, NULL, NULL, 819, 9, 1, 2, NULL),
(201, 'La Vie est facile, ne t\'inquiète pas', 'Agnès Martin-Lugand', NULL, 2015, NULL, NULL, 942, 3, 1, 3, NULL),
(202, 'Les gens heureux lisent et boivent du café', 'Agnès Martin-Lugand', NULL, 2013, NULL, NULL, 426, 8, 1, 3, NULL);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `books_vw`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `books_vw` (
`auteur` varchar(255)
,`format` varchar(20)
,`genres` varchar(50)
,`langue` varchar(10)
,`nombre de page` smallint
,`titre` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `COMMENT_VW`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `COMMENT_VW` (
`commentary` tinytext
,`lecteur` varchar(15)
,`titre` varchar(255)
);

-- --------------------------------------------------------

--
-- Structure de la table `format`
--

CREATE TABLE `format` (
  `id` tinyint UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `format`
--

INSERT INTO `format` (`id`, `name`) VALUES
(3, 'Grand Format'),
(5, 'magazine'),
(4, 'manga'),
(1, 'Poche'),
(2, 'Roman');

-- --------------------------------------------------------

--
-- Structure de la table `genres`
--

CREATE TABLE `genres` (
  `id` tinyint UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(4, 'Action'),
(8, 'Bande-déssinée'),
(3, 'Drame'),
(6, 'Educatif'),
(10, 'Fantasy'),
(1, 'Non classé'),
(2, 'Policier'),
(9, 'Politique'),
(7, 'Science-fiction'),
(5, 'Thriller');

-- --------------------------------------------------------

--
-- Structure de la table `languages`
--

CREATE TABLE `languages` (
  `id` tinyint UNSIGNED NOT NULL,
  `name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `languages`
--

INSERT INTO `languages` (`id`, `name`) VALUES
(2, 'anglais'),
(4, 'arabe'),
(1, 'français'),
(3, 'portugais');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` smallint UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `pseudo` varchar(15) NOT NULL,
  `biography` tinytext,
  `age` tinyint UNSIGNED NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `pseudo`, `biography`, `age`, `is_admin`) VALUES
(3, 'ennasrimohammed59100@gmail.com', 'Aviva1605', 'Momo59', NULL, 25, 0),
(4, 'ennasrimohammed5@gmail.com', 'Aviva1', 'Momo5911', NULL, 25, 0),
(5, 'ennasrimohammed591@gmail.com', 'Aviva16', 'Momo59966', NULL, 25, 0);

-- --------------------------------------------------------

--
-- Structure de la table `users_books`
--

CREATE TABLE `users_books` (
  `user_id` smallint UNSIGNED NOT NULL,
  `book_id` smallint UNSIGNED NOT NULL,
  `commentary` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `users_books`
--

INSERT INTO `users_books` (`user_id`, `book_id`, `commentary`) VALUES
(3, 104, 'J’AI PAS AIMER '),
(5, 155, 'C\'EST SUPER MAIS JAI PAS FINI');

-- --------------------------------------------------------

--
-- Structure de la vue `books_vw`
--
DROP TABLE IF EXISTS `books_vw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`phpmyadmin`@`localhost` SQL SECURITY DEFINER VIEW `books_vw`  AS SELECT `books`.`title` AS `titre`, `books`.`auteur` AS `auteur`, `books`.`pages` AS `nombre de page`, `genres`.`name` AS `genres`, `format`.`name` AS `format`, `languages`.`name` AS `langue` FROM (((`books` join `genres` on((`books`.`genre_id` = `genres`.`id`))) join `format` on((`books`.`format_id` = `format`.`id`))) join `languages` on((`books`.`languages_ID` = `languages`.`id`))) ;

-- --------------------------------------------------------

--
-- Structure de la vue `COMMENT_VW`
--
DROP TABLE IF EXISTS `COMMENT_VW`;

CREATE ALGORITHM=UNDEFINED DEFINER=`phpmyadmin`@`localhost` SQL SECURITY DEFINER VIEW `COMMENT_VW`  AS SELECT `books`.`title` AS `titre`, `users`.`pseudo` AS `lecteur`, `users_books`.`commentary` AS `commentary` FROM ((`books` join `users_books` on((`books`.`ID` = `users_books`.`book_id`))) join `users` on((`users_books`.`user_id` = `users`.`id`))) ;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_genres` (`genre_id`),
  ADD KEY `fk_languages` (`languages_ID`),
  ADD KEY `fk_format` (`format_id`),
  ADD KEY `fk_users` (`users_id`);

--
-- Index pour la table `format`
--
ALTER TABLE `format`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `pseudo` (`pseudo`);

--
-- Index pour la table `users_books`
--
ALTER TABLE `users_books`
  ADD PRIMARY KEY (`user_id`,`book_id`),
  ADD KEY `fk_com_books` (`book_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `books`
--
ALTER TABLE `books`
  MODIFY `ID` smallint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT pour la table `format`
--
ALTER TABLE `format`
  MODIFY `id` tinyint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` tinyint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` tinyint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` smallint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `fk_format` FOREIGN KEY (`format_id`) REFERENCES `format` (`id`),
  ADD CONSTRAINT `fk_genres` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`),
  ADD CONSTRAINT `fk_languages` FOREIGN KEY (`languages_ID`) REFERENCES `languages` (`id`),
  ADD CONSTRAINT `fk_users` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `users_books`
--
ALTER TABLE `users_books`
  ADD CONSTRAINT `fk_com_books` FOREIGN KEY (`book_id`) REFERENCES `books` (`ID`),
  ADD CONSTRAINT `fk_com_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

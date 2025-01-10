-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : ven. 10 jan. 2025 à 10:00
-- Version du serveur : 8.0.35
-- Version de PHP : 8.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projetDoriane`
--

-- --------------------------------------------------------

--
-- Structure de la table `class`
--

CREATE TABLE `class` (
  `id` int NOT NULL,
  `id_grade` int NOT NULL,
  `nom` varchar(255) NOT NULL,
  `description` text,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `class`
--

INSERT INTO `class` (`id`, `id_grade`, `nom`, `description`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 1, 'Class Yabi A', 'Classe encadrée par Paulus', '2025-01-10 10:53:35', 'Paulus', NULL, NULL),
(2, 2, 'Class Paulus 1', 'Classe créée par Pierre Martin', '2025-01-10 10:53:35', 'Pierre Martin', NULL, NULL),
(3, 3, 'Class Ben Le Belinker B', 'Classe supervisée par Yabi', '2025-01-10 10:53:35', 'Yabi', NULL, NULL),
(4, 4, 'Class Pierre Martin Z', 'Description unique', '2025-01-10 10:53:35', 'Ben Le Belinker', NULL, NULL),
(5, 5, 'Class Yabi Excellence', 'Une classe dexcellence dirigée par Paulus et Pierre Martin', '2025-01-10 10:53:35', 'admin', NULL, NULL),
(6, 6, 'Class Paulus Pro', 'Formation spéciale', '2025-01-10 10:53:35', 'admin', NULL, NULL),
(7, 7, 'Class Belinker Plus', 'Hommage à Ben Le Belinker', '2025-01-10 10:53:35', 'admin', NULL, NULL),
(8, 8, 'Class Martinique X', 'Pour Pierre Martin', '2025-01-10 10:53:35', 'admin', NULL, NULL),
(9, 9, 'Class Yabi Max', 'Classe avancée dirigée par Yabi', '2025-01-10 10:53:35', 'admin', NULL, NULL),
(10, 10, 'Class Genius', 'Par Pierre Martin et Ben Le Belinker', '2025-01-10 10:53:35', 'Paulus', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `grade`
--

CREATE TABLE `grade` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `grade`
--

INSERT INTO `grade` (`id`, `name`, `description`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'Grade Yabi', 'Description de Grade Yabi', '2025-01-10 10:53:35', 'Paulus', NULL, NULL),
(2, 'Grade Paulus', 'Description de Grade Paulus', '2025-01-10 10:53:35', 'Ben Le Belinker', NULL, NULL),
(3, 'Grade Ben Le Belinker', 'Description de Grade Ben Le Belinker', '2025-01-10 10:53:35', 'Pierre Martin', NULL, NULL),
(4, 'Grade Pierre Martin', 'Description de Grade Pierre Martin', '2025-01-10 10:53:35', 'Yabi', NULL, NULL),
(5, 'Grade 5 Yabi', 'Grade supervisé par Paulus et Ben Le Belinker', '2025-01-10 10:53:35', 'admin', NULL, NULL),
(6, 'Grade Paulus X', 'Description de Grade Paulus', '2025-01-10 10:53:35', 'admin', NULL, NULL),
(7, 'Grade Ben L', 'Créé par Ben Le Belinker', '2025-01-10 10:53:35', 'admin', NULL, NULL),
(8, 'Grade Pierre M', 'Ajouté par Pierre Martin', '2025-01-10 10:53:35', 'admin', NULL, NULL),
(9, 'Grade Yabi Excellence', 'Un excellent grade dirigé par Paulus', '2025-01-10 10:53:35', 'admin', NULL, NULL),
(10, 'Grade Martinique', 'En hommage à Pierre Martin', '2025-01-10 10:53:35', 'Yabi', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `lesson`
--

CREATE TABLE `lesson` (
  `id` int NOT NULL,
  `id_module` int NOT NULL,
  `description` text,
  `is_hp` tinyint(1) NOT NULL DEFAULT '0',
  `date_start` datetime NOT NULL,
  `date_end` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `lesson`
--

INSERT INTO `lesson` (`id`, `id_module`, `description`, `is_hp`, `date_start`, `date_end`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 1, 'Lesson 1 by Yabi', 0, '2025-01-15 08:00:00', '2025-01-15 10:00:00', '2025-01-10 10:53:35', 'Yabi', NULL, NULL),
(2, 2, 'Lesson 2 by Paulus', 0, '2025-01-16 09:00:00', '2025-01-16 11:00:00', '2025-01-10 10:53:35', 'Paulus', NULL, NULL),
(3, 3, 'Lesson 3 by Ben Le Belinker', 1, '2025-01-17 10:00:00', '2025-01-17 12:00:00', '2025-01-10 10:53:35', 'Ben Le Belinker', NULL, NULL),
(4, 4, 'Lesson 4 by Pierre Martin', 0, '2025-01-18 11:00:00', '2025-01-18 13:00:00', '2025-01-10 10:53:35', 'Pierre Martin', NULL, NULL),
(5, 5, 'Lesson 5 by Yabi-Paulus', 1, '2025-01-19 12:00:00', '2025-01-19 14:00:00', '2025-01-10 10:53:35', 'admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `module`
--

CREATE TABLE `module` (
  `id` int NOT NULL,
  `id_class` int NOT NULL,
  `id_session` int NOT NULL,
  `nom` varchar(255) NOT NULL,
  `description` text,
  `duration` int DEFAULT NULL,
  `color` varchar(7) DEFAULT NULL,
  `is_option` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `module`
--

INSERT INTO `module` (`id`, `id_class`, `id_session`, `nom`, `description`, `duration`, `color`, `is_option`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 1, 1, 'Module Yabi 1', 'Introduction par Paulus', 40, '#FF5733', 0, '2025-01-10 10:53:35', 'Paulus', NULL, NULL),
(2, 2, 2, 'Module Paulus A', 'Créé par Ben Le Belinker', 35, '#33FF57', 1, '2025-01-10 10:53:35', 'Ben Le Belinker', NULL, NULL),
(3, 3, 3, 'Module Ben 3', 'Supervisé par Yabi et Pierre Martin', 30, '#3357FF', 0, '2025-01-10 10:53:35', 'Pierre Martin', NULL, NULL),
(4, 4, 4, 'Module Martinique', 'Pierre Martin en action', 25, '#FF5733', 0, '2025-01-10 10:53:35', 'Yabi', NULL, NULL),
(5, 5, 5, 'Module Excellence', 'Yabi et Paulus unissent leurs forces', 50, '#5733FF', 1, '2025-01-10 10:53:35', 'admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `module_teacher`
--

CREATE TABLE `module_teacher` (
  `id` int NOT NULL,
  `id_teacher` int NOT NULL,
  `id_module` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `module_teacher`
--

INSERT INTO `module_teacher` (`id`, `id_teacher`, `id_module`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5);

-- --------------------------------------------------------

--
-- Structure de la table `session`
--

CREATE TABLE `session` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `session`
--

INSERT INTO `session` (`id`, `name`, `description`, `is_active`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'Session Yabi 2021', 'Session encadrée par Paulus', 1, '2025-01-10 10:53:35', 'Paulus', NULL, NULL),
(2, 'Session Paulus 2022', 'Session de formation par Pierre Martin', 1, '2025-01-10 10:53:35', 'Pierre Martin', NULL, NULL),
(3, 'Session Ben Le Belinker', 'Session de spécialisation', 1, '2025-01-10 10:53:35', 'Ben Le Belinker', NULL, NULL),
(4, 'Session Pierre Martin', 'Une session dédiée à Pierre Martin', 1, '2025-01-10 10:53:35', 'Yabi', NULL, NULL),
(5, 'Session Yabi-Paulus', 'Session conjointe avec Paulus et Ben Le Belinker', 0, '2025-01-10 10:53:35', 'admin', NULL, NULL),
(6, 'Session Paulus Advanced', 'Description avancée', 0, '2025-01-10 10:53:35', 'admin', NULL, NULL),
(7, 'Session Belinker', 'Session dinitiation', 1, '2025-01-10 10:53:35', 'admin', NULL, NULL),
(8, 'Session Martinique', 'Session pour Pierre Martin', 1, '2025-01-10 10:53:35', 'admin', NULL, NULL),
(9, 'Session Yabi Excellence', 'Session avancée pour Yabi', 1, '2025-01-10 10:53:35', 'admin', NULL, NULL),
(10, 'Session Ultimate', 'Hommage à Pierre Martin', 1, '2025-01-10 10:53:35', 'Paulus', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `teacher`
--

CREATE TABLE `teacher` (
  `id` int NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `description` text,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `teacher`
--

INSERT INTO `teacher` (`id`, `lastname`, `firstname`, `email`, `description`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'Yabi', 'Jean', 'yabi@example.com', 'Expert en Sciences par Paulus', '2025-01-10 10:53:35', 'Paulus', NULL, NULL),
(2, 'Paulus', 'Marie', 'paulus@example.com', 'Enseignant des modules Yabi et Ben Le Belinker', '2025-01-10 10:53:35', 'Yabi', NULL, NULL),
(3, 'Ben Le Belinker', 'Antoine', 'ben@example.com', 'Professeur principal', '2025-01-10 10:53:35', 'Pierre Martin', NULL, NULL),
(4, 'Martin', 'Pierre', 'pierre.martin@example.com', 'Formateur spécialisé', '2025-01-10 10:53:35', 'Ben Le Belinker', NULL, NULL),
(5, 'Yabi-Paulus', 'Dynamic Duo', 'team@example.com', 'Supervision conjointe', '2025-01-10 10:53:35', 'admin', NULL, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_grade` (`id_grade`);

--
-- Index pour la table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_module` (`id_module`);

--
-- Index pour la table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_class` (`id_class`),
  ADD KEY `id_session` (`id_session`);

--
-- Index pour la table `module_teacher`
--
ALTER TABLE `module_teacher`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_teacher` (`id_teacher`),
  ADD KEY `id_module` (`id_module`);

--
-- Index pour la table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `class`
--
ALTER TABLE `class`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `grade`
--
ALTER TABLE `grade`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `module`
--
ALTER TABLE `module`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `module_teacher`
--
ALTER TABLE `module_teacher`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `session`
--
ALTER TABLE `session`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `class_ibfk_1` FOREIGN KEY (`id_grade`) REFERENCES `grade` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `lesson`
--
ALTER TABLE `lesson`
  ADD CONSTRAINT `lesson_ibfk_1` FOREIGN KEY (`id_module`) REFERENCES `module` (`id`);

--
-- Contraintes pour la table `module`
--
ALTER TABLE `module`
  ADD CONSTRAINT `module_ibfk_1` FOREIGN KEY (`id_class`) REFERENCES `class` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `module_ibfk_2` FOREIGN KEY (`id_session`) REFERENCES `session` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `module_teacher`
--
ALTER TABLE `module_teacher`
  ADD CONSTRAINT `module_teacher_ibfk_1` FOREIGN KEY (`id_teacher`) REFERENCES `teacher` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `module_teacher_ibfk_2` FOREIGN KEY (`id_module`) REFERENCES `module` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

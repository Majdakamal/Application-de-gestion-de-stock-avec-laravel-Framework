-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 17 mai 2021 à 08:36
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
-- Base de données : `stock`
--

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `fonctionnaires`
--

CREATE TABLE `fonctionnaires` (
  `id_fonctionnaire` int(11) UNSIGNED NOT NULL,
  `nom_fonctionnaire` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tel_fonctionnaire` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_fonctionnaire` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fonction` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `fonctionnaires`
--

INSERT INTO `fonctionnaires` (`id_fonctionnaire`, `nom_fonctionnaire`, `tel_fonctionnaire`, `email_fonctionnaire`, `fonction`, `created_at`, `updated_at`) VALUES
(1, 'nada', '0788996677', 'nada@gmail.com', 'chef de service informatique', NULL, NULL),
(2, 'asma', '06879895', 'asma@gmail.com', 'chef de  projet\r\n', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `fournisseurs`
--

CREATE TABLE `fournisseurs` (
  `id_f` bigint(11) UNSIGNED NOT NULL,
  `nomf` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emailf` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telf` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adressef` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `site_web` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `fournisseurs`
--

INSERT INTO `fournisseurs` (`id_f`, `nomf`, `emailf`, `telf`, `adressef`, `site_web`, `created_at`, `updated_at`) VALUES
(1, 'majdaa', 'majda@gmail.com', '0766778899', 'RABATt', 'www.majda.com', NULL, '2021-05-07 02:29:25'),
(2, 'azedine', 'azedine@gmail.com', '0633445566\r\n', 'AGADIR', 'www.azedine.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `generations`
--

CREATE TABLE `generations` (
  `id` int(10) UNSIGNED NOT NULL,
  `mode` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nfacture` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantite` int(11) NOT NULL,
  `prix_uni` int(11) NOT NULL,
  `fourni` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `generations`
--

INSERT INTO `generations` (`id`, `mode`, `type_id`, `date`, `nfacture`, `quantite`, `prix_uni`, `fourni`, `created_at`, `updated_at`) VALUES
(2, 1, 1, '23/06/2000', '1', 12, 10, '1', '2021-05-09 16:25:42', '2021-05-09 16:25:42');

-- --------------------------------------------------------

--
-- Structure de la table `marches`
--

CREATE TABLE `marches` (
  `ref_marche` int(10) UNSIGNED NOT NULL,
  `date_lancement` date NOT NULL,
  `date_ouverture` date NOT NULL,
  `id_f` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `marches`
--

INSERT INTO `marches` (`ref_marche`, `date_lancement`, `date_ouverture`, `id_f`, `created_at`, `updated_at`) VALUES
(1, '2021-05-04', '2021-05-06', 1, NULL, NULL),
(3, '2021-05-12', '2021-05-15', 2, '2021-05-16 06:55:55', '2021-05-16 06:55:55'),
(4, '2021-05-12', '2021-05-15', 2, '2021-05-16 06:58:26', '2021-05-16 06:58:26'),
(5, '2021-05-12', '2021-05-15', 2, '2021-05-16 06:59:39', '2021-05-16 06:59:39');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_07_08_204536_create_generations_table', 1),
('2016_07_08_230735_create_types_table', 1),
('2016_07_11_192315_create_clients_table', 1),
('2021_04_25_104902_create_fournisseurs_table', 1),
('2021_04_28_072020_create_beneficiaires_table', 2),
('2021_05_05_083251_create_stocks_table', 3),
('2021_05_05_083616_create_fournisseurs_table', 3),
('2021_04_28_072020_create_fonctionnaires_table', 4),
('2021_05_07_081826_create_marche_table', 5),
('2021_05_07_090437_create_marches_table', 6),
('2021_05_08_231746_create_marches_table', 7);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `stocks`
--

CREATE TABLE `stocks` (
  `id_stock` int(10) UNSIGNED NOT NULL,
  `quantite_stock` int(11) NOT NULL,
  `categorie` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rayon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `stocks`
--

INSERT INTO `stocks` (`id_stock`, `quantite_stock`, `categorie`, `rayon`, `created_at`, `updated_at`) VALUES
(1, 7, 'informatique', 'A', '2021-05-05 16:29:40', '2021-05-05 16:58:24'),
(5, 3, 'mathématique', 'C', '2021-05-16 11:04:34', '2021-05-16 11:04:34'),
(6, 4, 'technique', 'B', '2021-05-16 11:05:23', '2021-05-16 11:05:23');

-- --------------------------------------------------------

--
-- Structure de la table `types`
--

CREATE TABLE `types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `types`
--

INSERT INTO `types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'informatique', '2021-05-04 15:36:38', '2021-05-04 15:36:38');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `pseudo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `admin` tinyint(1) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `pseudo`, `password`, `admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'majda', '123', 1, NULL, NULL, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `fonctionnaires`
--
ALTER TABLE `fonctionnaires`
  ADD PRIMARY KEY (`id_fonctionnaire`);

--
-- Index pour la table `fournisseurs`
--
ALTER TABLE `fournisseurs`
  ADD PRIMARY KEY (`id_f`);

--
-- Index pour la table `generations`
--
ALTER TABLE `generations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `marches`
--
ALTER TABLE `marches`
  ADD PRIMARY KEY (`ref_marche`),
  ADD KEY `fk_marche_fournisseur` (`id_f`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Index pour la table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id_stock`);

--
-- Index pour la table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_pseudo_unique` (`pseudo`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `fonctionnaires`
--
ALTER TABLE `fonctionnaires`
  MODIFY `id_fonctionnaire` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `fournisseurs`
--
ALTER TABLE `fournisseurs`
  MODIFY `id_f` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `generations`
--
ALTER TABLE `generations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `marches`
--
ALTER TABLE `marches`
  MODIFY `ref_marche` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id_stock` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `marches`
--
ALTER TABLE `marches`
  ADD CONSTRAINT `fk_marche_fournisseur` FOREIGN KEY (`id_f`) REFERENCES `fournisseurs` (`id_f`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

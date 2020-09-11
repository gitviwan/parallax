-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2020 at 11:57 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abc_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Aut.', '2020-09-11 02:37:24', '2020-09-11 02:37:24'),
(2, 'Et.', '2020-09-11 02:37:24', '2020-09-11 02:37:24'),
(3, 'Esse.', '2020-09-11 02:37:25', '2020-09-11 02:37:25'),
(4, 'Explicabo.', '2020-09-11 02:37:25', '2020-09-11 02:37:25'),
(5, 'Ratione exercitationem.', '2020-09-11 02:37:25', '2020-09-11 02:37:25'),
(6, 'Rem perferendis.', '2020-09-11 02:37:25', '2020-09-11 02:37:25'),
(7, 'Consequatur optio.', '2020-09-11 02:37:25', '2020-09-11 02:37:25'),
(8, 'Consequatur non.', '2020-09-11 02:37:25', '2020-09-11 02:37:25'),
(9, 'Dolorem ut.', '2020-09-11 02:37:25', '2020-09-11 02:37:25'),
(10, 'Qui amet.', '2020-09-11 02:37:25', '2020-09-11 02:37:25'),
(11, 'Incidunt consequuntur.', '2020-09-11 02:37:25', '2020-09-11 02:37:25'),
(12, 'Aperiam facilis.', '2020-09-11 02:37:25', '2020-09-11 02:37:25'),
(13, 'Hic.', '2020-09-11 02:37:25', '2020-09-11 02:37:25'),
(14, 'Unde.', '2020-09-11 02:37:25', '2020-09-11 02:37:25'),
(15, 'Quod.', '2020-09-11 02:37:25', '2020-09-11 02:37:25'),
(16, 'Est molestiae.', '2020-09-11 02:37:25', '2020-09-11 02:37:25'),
(17, 'Architecto.', '2020-09-11 02:37:25', '2020-09-11 02:37:25'),
(18, 'Dolores reprehenderit.', '2020-09-11 02:37:25', '2020-09-11 02:37:25'),
(19, 'Nihil et.', '2020-09-11 02:37:25', '2020-09-11 02:37:25'),
(20, 'Autem.', '2020-09-11 02:37:25', '2020-09-11 02:37:25'),
(21, 'Perspiciatis.', '2020-09-11 02:37:26', '2020-09-11 02:37:26'),
(22, 'Sit.', '2020-09-11 02:37:26', '2020-09-11 02:37:26'),
(23, 'Ipsum totam.', '2020-09-11 02:37:26', '2020-09-11 02:37:26'),
(24, 'Consequatur consequatur.', '2020-09-11 02:37:26', '2020-09-11 02:37:26'),
(25, 'Consectetur quos.', '2020-09-11 02:37:26', '2020-09-11 02:37:26'),
(26, 'Quo porro.', '2020-09-11 02:37:26', '2020-09-11 02:37:26'),
(28, 'Laborum modi.', '2020-09-11 02:38:00', '2020-09-11 02:38:00'),
(29, 'Ullam.', '2020-09-11 02:38:00', '2020-09-11 02:38:00'),
(30, 'Commodi.', '2020-09-11 02:38:00', '2020-09-11 02:38:00'),
(31, 'Similique.', '2020-09-11 02:38:00', '2020-09-11 02:38:00'),
(32, 'Dolor.', '2020-09-11 02:38:00', '2020-09-11 02:38:00'),
(33, 'Aliquam nam.', '2020-09-11 02:38:00', '2020-09-11 02:38:00'),
(34, 'Ullam qui.', '2020-09-11 02:38:01', '2020-09-11 02:38:01'),
(35, 'Odio.', '2020-09-11 02:38:01', '2020-09-11 02:38:01'),
(36, 'Est.', '2020-09-11 02:38:01', '2020-09-11 02:38:01'),
(37, 'Voluptas.', '2020-09-11 02:38:01', '2020-09-11 02:38:01'),
(38, 'Laborum.', '2020-09-11 02:38:01', '2020-09-11 02:38:01'),
(40, 'Odit magni.', '2020-09-11 02:41:59', '2020-09-11 02:41:59'),
(41, 'Illo.', '2020-09-11 02:42:00', '2020-09-11 02:42:00'),
(42, 'Nam.', '2020-09-11 02:42:00', '2020-09-11 02:42:00'),
(43, 'Modi in.', '2020-09-11 02:42:00', '2020-09-11 02:42:00'),
(44, 'Nihil eligendi.', '2020-09-11 02:42:00', '2020-09-11 02:42:00'),
(46, 'Accusantium.', '2020-09-11 02:42:02', '2020-09-11 02:42:02'),
(47, 'Modi molestiae.', '2020-09-11 02:42:02', '2020-09-11 02:42:02'),
(48, 'Error sunt.', '2020-09-11 02:42:02', '2020-09-11 02:42:02'),
(49, 'Ut voluptas.', '2020-09-11 02:42:02', '2020-09-11 02:42:02'),
(50, 'Provident non.', '2020-09-11 02:42:03', '2020-09-11 02:42:03'),
(51, 'Rerum.', '2020-09-11 02:42:03', '2020-09-11 02:42:03'),
(52, 'Maiores.', '2020-09-11 02:42:03', '2020-09-11 02:42:03'),
(53, 'Harum.', '2020-09-11 02:42:03', '2020-09-11 02:42:03'),
(54, 'Placeat.', '2020-09-11 02:42:03', '2020-09-11 02:42:03'),
(55, 'Id.', '2020-09-11 02:42:03', '2020-09-11 02:42:03'),
(56, 'Numquam.', '2020-09-11 02:42:03', '2020-09-11 02:42:03'),
(57, 'Magni placeat.', '2020-09-11 02:42:03', '2020-09-11 02:42:03'),
(58, 'Quia quidem.', '2020-09-11 02:42:03', '2020-09-11 02:42:03'),
(60, 'Sit sint.', '2020-09-11 02:42:16', '2020-09-11 02:42:16'),
(61, 'Reiciendis.', '2020-09-11 02:42:17', '2020-09-11 02:42:17'),
(62, 'Voluptatem.', '2020-09-11 02:42:17', '2020-09-11 02:42:17'),
(63, 'Rerum impedit.', '2020-09-11 02:42:17', '2020-09-11 02:42:17'),
(64, 'Illum.', '2020-09-11 02:42:17', '2020-09-11 02:42:17'),
(65, 'Rerum illo.', '2020-09-11 02:42:17', '2020-09-11 02:42:17'),
(66, 'Rem consequuntur.', '2020-09-11 02:42:17', '2020-09-11 02:42:17'),
(67, 'Est quia.', '2020-09-11 02:42:17', '2020-09-11 02:42:17'),
(68, 'Voluptate laboriosam.', '2020-09-11 02:42:17', '2020-09-11 02:42:17'),
(69, 'Natus praesentium.', '2020-09-11 02:42:17', '2020-09-11 02:42:17'),
(70, 'Odio vel.', '2020-09-11 02:42:18', '2020-09-11 02:42:18'),
(71, 'Praesentium.', '2020-09-11 02:42:18', '2020-09-11 02:42:18'),
(72, 'Dignissimos.', '2020-09-11 02:42:18', '2020-09-11 02:42:18'),
(73, 'Iure impedit.', '2020-09-11 02:42:18', '2020-09-11 02:42:18'),
(74, 'Quis eius.', '2020-09-11 02:42:18', '2020-09-11 02:42:18'),
(75, 'Assumenda ut.', '2020-09-11 02:42:18', '2020-09-11 02:42:18'),
(77, 'Animi natus.', '2020-09-11 02:42:20', '2020-09-11 02:42:20'),
(78, 'Ipsam quasi.', '2020-09-11 02:42:20', '2020-09-11 02:42:20'),
(79, 'Occaecati.', '2020-09-11 02:42:20', '2020-09-11 02:42:20'),
(80, 'Consequatur esse.', '2020-09-11 02:42:20', '2020-09-11 02:42:20'),
(83, 'Distinctio.', '2020-09-11 02:42:51', '2020-09-11 02:42:51'),
(84, 'Suscipit quo.', '2020-09-11 02:42:51', '2020-09-11 02:42:51'),
(85, 'Eos.', '2020-09-11 02:42:51', '2020-09-11 02:42:51'),
(87, 'Est sed.', '2020-09-11 02:43:08', '2020-09-11 02:43:08'),
(88, 'Optio aut.', '2020-09-11 02:43:08', '2020-09-11 02:43:08'),
(89, 'Quia.', '2020-09-11 02:43:08', '2020-09-11 02:43:08'),
(90, 'Sint.', '2020-09-11 02:43:08', '2020-09-11 02:43:08'),
(91, 'Dolorem quibusdam.', '2020-09-11 02:43:08', '2020-09-11 02:43:08'),
(92, 'Repudiandae.', '2020-09-11 02:43:08', '2020-09-11 02:43:08'),
(93, 'Vel repellat.', '2020-09-11 02:43:08', '2020-09-11 02:43:08'),
(94, 'Atque consequatur.', '2020-09-11 02:43:08', '2020-09-11 02:43:08'),
(95, 'Enim.', '2020-09-11 02:43:08', '2020-09-11 02:43:08'),
(96, 'Earum aliquid.', '2020-09-11 02:43:09', '2020-09-11 02:43:09'),
(97, 'Laboriosam ut.', '2020-09-11 02:43:09', '2020-09-11 02:43:09'),
(100, 'Sit deserunt.', '2020-09-11 02:43:39', '2020-09-11 02:43:39'),
(104, 'Csake', '2020-09-11 02:56:02', '2020-09-11 02:56:02');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2020_09_10_115921_create_categories_table', 2),
(9, '2020_09_10_121300_create_products_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Home Appliances', 4, '2020-09-11 02:47:05', '2020-09-11 02:47:05'),
(2, 'Computer Accessories', 3, '2020-09-11 02:48:22', '2020-09-11 02:48:22'),
(3, 'Assorted Gift Pack', 1, '2020-09-11 02:49:17', '2020-09-11 02:49:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'krishan', 'k@gmail.com', NULL, '$2y$10$CPwWSfmmhc6TAdESk6tkzOeNkJURu.nqC9/lHI.B6a5DlPyR1rwSy', NULL, '2020-09-10 23:05:35', '2020-09-10 23:05:35'),
(2, 'Sanjaya', 'igs@gmail.com', NULL, '$2y$10$6iVdZKrIUYBAOPHF0kRyBe2TciIPYwWGZ7/P.2MmgXMAk0Ti2.cQO', NULL, '2020-09-10 23:29:32', '2020-09-10 23:29:32'),
(3, 'admin', 'admin@gmail.com', NULL, '$2y$10$HA1Uvo0.FatYmT2Rqt7CMuxnvVb8tgwykTiK/TK3ByOC32ObxmwCO', NULL, '2020-09-11 03:02:18', '2020-09-11 03:02:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_category_name_unique` (`category_name`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

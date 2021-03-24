-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 24, 2021 at 07:34 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homestead`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(11) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@demo.com', '$2y$10$GaZF8N/j/3..4uCHO5dZC.XATHZScoy0QCYmbZ5rdpV8gNSfeqhqO', 1, NULL, '2006-07-28 15:50:42', '1974-07-23 07:20:11'),
(2, 'Supper Admin', 'admin@gmail.com', '$2y$10$IX9iTcrtkgVqfZTzKXMYge6Kmx98.auRzoBzJvq5IbY5NYMtUOUxO', 1, NULL, '2006-07-28 15:50:42', '1974-07-23 07:20:11');

-- --------------------------------------------------------

--
-- Table structure for table `admin_password_resets`
--

CREATE TABLE `admin_password_resets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carriers`
--

CREATE TABLE `carriers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carriers`
--

INSERT INTO `carriers` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'EkShop', '2021-03-20 13:41:07', '2021-03-20 13:41:07'),
(2, 'a2i', '2021-03-21 05:42:35', '2021-03-21 05:42:35');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '1-10 Kg', NULL, NULL),
(2, '11-20 Kg', NULL, NULL),
(3, '21-30 kg', '2021-03-21 06:06:31', '2021-03-21 06:06:31');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Bangladesh', '2021-03-20 13:48:52', '2021-03-20 13:48:52'),
(2, 'USA', '2021-03-20 13:49:54', '2021-03-20 13:49:54'),
(3, 'UAE', '2021-03-20 13:48:52', '2021-03-20 13:48:52'),
(4, 'UK', '2021-03-21 04:01:13', '2021-03-21 04:01:13'),
(5, 'Pakisthan', '2021-03-21 05:17:56', '2021-03-21 05:17:56'),
(6, 'Brazil', '2021-03-21 06:38:19', '2021-03-21 06:38:19');

-- --------------------------------------------------------

--
-- Table structure for table `country_carrier`
--

CREATE TABLE `country_carrier` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `carrier_id` bigint(20) NOT NULL,
  `country_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `footers`
--

CREATE TABLE `footers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footers`
--

INSERT INTO `footers` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, 'ekShop', 'a2i.PNG', '2021-02-27 23:12:24', '2021-02-27 23:12:24');

-- --------------------------------------------------------

--
-- Table structure for table `logos`
--

CREATE TABLE `logos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_06_24_054341_create_admins_table', 1),
(4, '2019_06_24_054626_create_usertypes_table', 1),
(5, '2019_06_24_055353_create_admin_password_resets_table', 1),
(6, '2019_06_24_070606_create_drivers_table', 1),
(7, '2019_06_24_071336_create_driver_password_resets_table', 1),
(8, '2019_06_25_054819_create_permissions_table', 1),
(9, '2015_05_06_022458_create_posts_table', 2),
(10, '2021_02_27_110650_create_logos_table', 3),
(11, '2021_02_27_110755_create_footers_table', 3),
(12, '2021_03_20_144818_create_countries_table', 4),
(13, '2021_03_20_144850_create_carriers_table', 4),
(14, '2021_03_20_145037_create_categories_table', 4),
(15, '2021_03_20_144723_create_pricings_table', 5),
(16, '2021_03_20_145454_create_country_carrier_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'buyer.view', '2021-02-09 02:38:44', NULL),
(2, 'buyer.create', '2021-02-09 02:38:44', NULL),
(3, 'buyer.update', '2021-02-09 02:38:44', NULL),
(4, 'buyer.delete', '2021-02-09 02:38:44', NULL),
(5, 'seller.view', '2021-02-09 02:38:44', NULL),
(6, 'seller.create', '2021-02-09 02:38:44', NULL),
(7, 'seller.update', '2021-02-09 02:38:44', NULL),
(8, 'seller.delete', '2021-02-09 02:38:44', NULL),
(9, 'driver.view', '2021-02-09 02:38:44', NULL),
(10, 'driver.create', '2021-02-09 02:38:44', NULL),
(11, 'driver.update', '2021-02-09 02:38:44', NULL),
(12, 'driver.delete', '2021-02-09 02:38:44', NULL),
(13, 'buyer.view', '2021-02-27 22:46:32', NULL),
(14, 'buyer.create', '2021-02-27 22:46:32', NULL),
(15, 'buyer.update', '2021-02-27 22:46:32', NULL),
(16, 'buyer.delete', '2021-02-27 22:46:32', NULL),
(17, 'seller.view', '2021-02-27 22:46:32', NULL),
(18, 'seller.create', '2021-02-27 22:46:32', NULL),
(19, 'seller.update', '2021-02-27 22:46:32', NULL),
(20, 'seller.delete', '2021-02-27 22:46:32', NULL),
(21, 'driver.view', '2021-02-27 22:46:32', NULL),
(22, 'driver.create', '2021-02-27 22:46:32', NULL),
(23, 'driver.update', '2021-02-27 22:46:32', NULL),
(24, 'driver.delete', '2021-02-27 22:46:32', NULL),
(25, 'buyer.view', '2021-02-27 23:12:24', NULL),
(26, 'buyer.create', '2021-02-27 23:12:24', NULL),
(27, 'buyer.update', '2021-02-27 23:12:24', NULL),
(28, 'buyer.delete', '2021-02-27 23:12:24', NULL),
(29, 'seller.view', '2021-02-27 23:12:24', NULL),
(30, 'seller.create', '2021-02-27 23:12:24', NULL),
(31, 'seller.update', '2021-02-27 23:12:24', NULL),
(32, 'seller.delete', '2021-02-27 23:12:24', NULL),
(33, 'driver.view', '2021-02-27 23:12:24', NULL),
(34, 'driver.create', '2021-02-27 23:12:24', NULL),
(35, 'driver.update', '2021-02-27 23:12:24', NULL),
(36, 'driver.delete', '2021-02-27 23:12:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pricings`
--

CREATE TABLE `pricings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `price` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `carrier_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pricings`
--

INSERT INTO `pricings` (`id`, `price`, `country_id`, `carrier_id`, `category_id`, `created_at`, `updated_at`) VALUES
(3, '450', 2, 1, 1, NULL, NULL),
(4, '400', 1, 1, 2, NULL, NULL),
(5, '450', 1, 1, 1, '2021-03-21 00:14:16', '2021-03-21 00:14:16');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'super-admin', '2021-02-09 02:38:44', '2021-02-09 02:38:44'),
(2, 'admin', '2021-02-09 02:38:44', '2021-02-09 02:38:44'),
(3, 'buyer', '2021-02-09 02:38:44', '2021-02-09 02:38:44'),
(4, 'seller', '2021-02-09 02:38:44', '2021-02-09 02:38:44'),
(5, 'driver', '2021-02-09 02:38:44', '2021-02-09 02:38:44'),
(6, 'super-admin', '2021-02-27 22:46:32', '2021-02-27 22:46:32'),
(7, 'admin', '2021-02-27 22:46:32', '2021-02-27 22:46:32'),
(8, 'buyer', '2021-02-27 22:46:32', '2021-02-27 22:46:32'),
(9, 'seller', '2021-02-27 22:46:32', '2021-02-27 22:46:32'),
(10, 'driver', '2021-02-27 22:46:32', '2021-02-27 22:46:32'),
(11, 'super-admin', '2021-02-27 23:12:24', '2021-02-27 23:12:24'),
(12, 'admin', '2021-02-27 23:12:24', '2021-02-27 23:12:24'),
(13, 'buyer', '2021-02-27 23:12:24', '2021-02-27 23:12:24'),
(14, 'seller', '2021-02-27 23:12:24', '2021-02-27 23:12:24'),
(15, 'driver', '2021-02-27 23:12:24', '2021-02-27 23:12:24');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 3),
(9, 3),
(1, 4),
(4, 4),
(5, 4),
(6, 4),
(7, 4),
(8, 4),
(9, 4),
(1, 5),
(5, 5),
(9, 5),
(10, 5),
(11, 5),
(12, 5);

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
(1, 'Jackie Sporer', 'kauser@gmail.com', '1973-11-20 15:51:44', '$2y$10$IX9iTcrtkgVqfZTzKXMYge6Kmx98.auRzoBzJvq5IbY5NYMtUOUxO', NULL, '1986-10-01 01:48:04', '2014-01-12 23:45:03'),
(2, 'Prof. Hassan Ledner', 'buyer2@demo.com', '2015-05-12 00:21:24', '$2y$10$MF/yC/Br/PMR.gGpGJsVAuKYzTUbtyCcD26bC/CfvMyrNrOt5UNYO', NULL, '1997-09-26 23:49:24', '1974-08-14 14:59:13'),
(3, 'Savannah Brekke MD', 'buyer3@demo.com', '1975-06-18 05:29:38', '$2y$10$N1MBDX3PHbSTntpELdv2sur6/VQILKupQ1J5JO8Fd60PYQnN4Pp3.', NULL, '1990-05-29 18:59:31', '2013-08-03 12:54:33'),
(4, 'Camron McClure', 'buyer4@demo.com', '2020-02-01 15:19:37', '$2y$10$VVivQZ3l9F3dkI3XzejHqOUhJnk/71ZNv6qVo5nH/N36nuHFL4wNe', NULL, '1993-07-12 01:32:00', '1992-08-03 16:32:59'),
(5, 'Grady Cole', 'seller1@demo.com', '1982-09-29 20:02:04', '$2y$10$fWG7tnjlyuho1oCsHiswneBviv9YKHbvKpF.uK3lfcUpvph2PDgIq', NULL, '2014-08-11 16:07:56', '1982-12-01 05:21:16'),
(6, 'Tito Schumm', 'seller2@demo.com', '2002-08-15 05:06:49', '$2y$10$UZVzVpqTGuQsJK4vre9hOO51plC0u0lU1UK8DBTrDjii5NNtG9CD.', NULL, '2013-01-04 23:35:43', '2011-05-28 15:11:52'),
(7, 'Bernice Cartwright', 'seller3@demo.com', '2020-01-13 11:06:35', '$2y$10$twX7igS2bVShAZ6fPvAbrO/mVuEc802FNbjM8BSS3p7WGxgj..NBi', NULL, '2017-12-02 05:02:29', '2000-02-01 22:05:08'),
(8, 'Josefa Windler', 'seller4@demo.com', '1998-02-05 02:11:02', '$2y$10$zhGiL49iuJjncvJoBeMf5OxhxYu1qH8ws2Rv2561SoWZ5zGkTkb.q', NULL, '1992-01-15 18:28:55', '1989-02-09 14:37:43');

-- --------------------------------------------------------

--
-- Table structure for table `usertypes`
--

CREATE TABLE `usertypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_post`
--

CREATE TABLE `user_post` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_password_resets_email_index` (`email`);

--
-- Indexes for table `carriers`
--
ALTER TABLE `carriers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country_carrier`
--
ALTER TABLE `country_carrier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footers`
--
ALTER TABLE `footers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pricings`
--
ALTER TABLE `pricings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pricings_country_id_foreign` (`country_id`),
  ADD KEY `pricings_carrier_id_foreign` (`carrier_id`),
  ADD KEY `pricings_category_id_foreign` (`category_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `usertypes`
--
ALTER TABLE `usertypes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `carriers`
--
ALTER TABLE `carriers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `country_carrier`
--
ALTER TABLE `country_carrier`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `footers`
--
ALTER TABLE `footers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `logos`
--
ALTER TABLE `logos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `pricings`
--
ALTER TABLE `pricings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `usertypes`
--
ALTER TABLE `usertypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pricings`
--
ALTER TABLE `pricings`
  ADD CONSTRAINT `pricings_carrier_id_foreign` FOREIGN KEY (`carrier_id`) REFERENCES `carriers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pricings_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pricings_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

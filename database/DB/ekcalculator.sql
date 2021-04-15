-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 15, 2021 at 09:17 AM
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
-- Database: `ekcalculator`
--

-- --------------------------------------------------------

--
-- Table structure for table `carriers`
--

CREATE TABLE `carriers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carriers`
--

INSERT INTO `carriers` (`id`, `name`, `created_at`, `updated_at`, `status`) VALUES
(1, 'GPO', '2021-04-04 00:46:06', '2021-04-04 00:46:06', 1),
(2, 'FedEx', '2021-04-04 00:46:20', '2021-04-04 00:46:20', 1),
(3, 'DHL', '2021-04-04 00:46:20', '2021-04-04 00:46:20', 0),
(4, 'DHCL', '2021-04-14 22:11:08', '2021-04-14 22:11:08', 0),
(7, 'DHL', '2021-04-15 02:28:05', '2021-04-15 02:37:10', 0);

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
(1, '0.1-0.5 kg', '2021-04-04 00:49:47', '2021-04-04 00:49:47'),
(2, '.5-0.9 kg', '2021-04-04 00:52:48', '2021-04-04 00:52:48'),
(3, '1.0-1.4 kg', '2021-04-04 00:53:31', '2021-04-04 00:53:31'),
(4, '1.5-1.9 kg', '2021-04-04 00:53:31', '2021-04-04 00:53:31'),
(5, '2.0-2.4 kg', '2021-04-04 00:53:31', '2021-04-04 00:53:31'),
(6, '2.5-2.9 kg', '2021-04-04 00:53:31', '2021-04-04 00:53:31'),
(7, '3.0-3.4 kg', '2021-04-04 00:53:31', '2021-04-04 00:53:31'),
(8, '3.5-3.9 kg', '2021-04-04 00:53:31', '2021-04-04 00:53:31'),
(9, '4.0-4.4 kg', '2021-04-04 00:53:31', '2021-04-04 00:53:31'),
(10, '4.5-4.9 kg', '2021-04-04 00:53:31', '2021-04-04 00:53:31'),
(11, '5.0-5.4 kg', '2021-04-04 00:53:31', '2021-04-04 00:53:31'),
(12, '5.5-5.9 kg', NULL, NULL),
(13, '6.0-6.4 kg', NULL, NULL),
(14, '6.5-6.9 kg', NULL, NULL),
(15, '7.0-7.4 kg', NULL, NULL),
(16, '7.5-7.9 kg', NULL, NULL),
(17, '8.0-8.4 kg', NULL, NULL),
(18, '8.5-8.9 kg', NULL, NULL),
(19, '9.0-9.4 kg', NULL, NULL),
(20, '9.5-9.9 kg', NULL, NULL),
(21, '20 kg', NULL, NULL),
(22, '21-30 kg', NULL, NULL),
(23, '31-50 kg', NULL, NULL),
(24, '51-70 kg', NULL, NULL),
(25, '71-99 kg', NULL, NULL),
(26, '100-299 kg', NULL, NULL),
(27, '300-499 kg', NULL, NULL),
(28, '500-999 kg', NULL, NULL),
(29, '1000 ~ kg', NULL, '2021-04-15 02:40:52');

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
(1, 'Afghanistan', '2021-04-04 00:42:18', '2021-04-04 00:42:18'),
(2, 'Albania', '2021-04-04 00:42:39', '2021-04-04 00:42:39'),
(3, 'Algeria', '2021-04-04 00:43:01', '2021-04-04 00:43:01'),
(4, 'American Samoa', NULL, NULL),
(5, 'Andorra', NULL, NULL),
(6, 'Angola', '2021-04-04 00:45:28', '2021-04-04 00:45:28'),
(7, 'Aland Islands', NULL, NULL),
(8, 'Anguilla', NULL, NULL),
(9, 'Antarctica', NULL, NULL),
(10, 'Antigua and Barbuda', NULL, NULL),
(11, 'Argentina', NULL, NULL),
(12, 'Armenia', NULL, NULL),
(13, 'Aruba', NULL, NULL),
(14, 'Australia', NULL, NULL),
(15, 'Austria', NULL, NULL),
(16, 'Azerbaijan', NULL, NULL),
(17, 'Bahamas', NULL, NULL),
(18, 'Bahrain', NULL, NULL),
(19, 'Bangladesh', NULL, NULL),
(20, 'Barbados', NULL, NULL),
(21, 'Belarus', NULL, NULL),
(22, 'Belgium', NULL, NULL),
(23, 'Belize', NULL, NULL),
(24, 'Benin', NULL, NULL),
(25, 'Bermuda', NULL, NULL),
(26, 'Bhutan', NULL, NULL),
(27, 'Bolivia', NULL, NULL),
(28, 'Bonaire, Sint Eustatius and Saba', NULL, NULL),
(29, 'Bosnia and Herzegovina', NULL, NULL),
(30, 'Botswana', NULL, NULL),
(31, 'Bouvet Island', NULL, NULL),
(32, 'Brazil', NULL, NULL),
(33, 'British Indian Ocean Territory', NULL, NULL),
(34, 'Brunei Darussalam', NULL, NULL),
(35, 'Bulgaria', NULL, NULL),
(36, 'Burkina Faso', NULL, NULL),
(37, 'Burundi', NULL, NULL),
(38, 'Cambodia', NULL, NULL),
(39, 'Cameroon', NULL, NULL),
(40, 'Canada', NULL, NULL),
(41, 'Cape Verde', NULL, NULL),
(42, 'Cayman Islands', NULL, NULL),
(43, 'Central African Republic', NULL, NULL),
(44, 'Chad', NULL, NULL),
(45, 'Chile', NULL, NULL),
(46, 'China', NULL, NULL),
(47, 'Christmas Island', NULL, NULL),
(48, 'Cocos (Keeling) Islands', NULL, NULL),
(49, 'Colombia', NULL, NULL),
(50, 'Comoros', NULL, NULL),
(51, 'Congo', NULL, NULL),
(52, 'Congo, Democratic Republic of the Congo', NULL, NULL),
(53, 'Cook Islands', NULL, NULL),
(54, 'Costa Rica', NULL, NULL),
(55, 'Cote D\'Ivoire', NULL, NULL),
(56, 'Croatia', NULL, NULL),
(57, 'Cuba', NULL, NULL),
(58, 'Curacao', NULL, NULL),
(59, 'Cyprus', NULL, NULL),
(60, 'Czech Republic', NULL, NULL),
(61, 'Denmark', NULL, NULL),
(62, 'Djibouti', NULL, NULL),
(63, 'Dominica', NULL, NULL),
(64, 'Dominican Republic', NULL, NULL),
(65, 'Ecuador', NULL, NULL),
(66, 'Egypt', NULL, NULL),
(67, 'El Salvador', NULL, NULL),
(68, 'Equatorial Guinea', NULL, NULL),
(69, 'Eritrea', NULL, NULL),
(70, 'Estonia', NULL, NULL),
(71, 'Ethiopia', NULL, NULL),
(72, 'Falkland Islands (Malvinas)', NULL, NULL),
(73, 'Faroe Islands', NULL, NULL),
(74, 'Fiji', NULL, NULL),
(75, 'Finland', NULL, NULL),
(76, 'France', NULL, NULL),
(77, 'French Guiana', NULL, NULL),
(78, 'French Polynesia', NULL, NULL),
(79, 'French Southern Territories', NULL, NULL),
(80, 'Gabon', NULL, NULL),
(81, 'Gambia', NULL, NULL),
(82, 'Georgia', NULL, NULL),
(83, 'Germany', NULL, NULL),
(84, 'Ghana', NULL, NULL),
(85, 'Gibraltar', NULL, NULL),
(86, 'Greece', NULL, NULL),
(87, 'Greenland', NULL, NULL),
(88, 'Grenada', NULL, NULL),
(89, 'Guadeloupe', NULL, NULL),
(90, 'Guam', NULL, NULL),
(91, 'Guatemala', NULL, NULL),
(92, 'Guernsey', NULL, NULL),
(93, 'Guinea', NULL, NULL),
(94, 'Guinea-Bissau', NULL, NULL),
(95, 'Guyana', NULL, NULL),
(96, 'Haiti', NULL, NULL),
(97, 'Heard Island and Mcdonald Islands', NULL, NULL),
(98, 'Holy See (Vatican City State)', NULL, NULL),
(99, 'Honduras', NULL, NULL),
(100, 'Hong Kong', NULL, NULL),
(101, 'Hungary', NULL, NULL),
(102, 'Iceland', NULL, NULL),
(103, 'India', NULL, NULL),
(104, 'Indonesia', NULL, NULL),
(105, 'Iran, Islamic Republic of', NULL, NULL),
(106, 'Iraq', NULL, NULL),
(107, 'Ireland', NULL, NULL),
(108, 'Isle of Man', NULL, NULL),
(109, 'Israel', NULL, NULL),
(110, 'Italy', NULL, NULL),
(111, 'Jamaica', NULL, NULL),
(112, 'Japan', NULL, NULL),
(113, 'Jersey', NULL, NULL),
(114, 'Jordan', NULL, NULL),
(115, 'Kazakhstan', NULL, NULL),
(116, 'Kenya', NULL, NULL),
(117, 'Kiribati', NULL, NULL),
(118, 'Korea, Democratic People\'s Republic of', NULL, NULL),
(119, 'Korea, Republic of', NULL, NULL),
(120, 'Kosovo', NULL, NULL),
(121, 'Kuwait', NULL, NULL),
(122, 'Kyrgyzstan', NULL, NULL),
(123, 'Lao People\'s Democratic Republic', NULL, NULL),
(124, 'Latvia', NULL, NULL),
(125, 'Lebanon', NULL, NULL),
(126, 'Lesotho', NULL, NULL),
(127, 'Liberia', NULL, NULL),
(128, 'Libyan Arab Jamahiriya', NULL, NULL),
(129, 'Liechtenstein', NULL, NULL),
(130, 'Lithuania', NULL, NULL),
(131, 'Luxembourg', NULL, NULL),
(132, 'Macao', NULL, NULL),
(133, 'Macedonia, the Former Yugoslav Republic of', NULL, NULL),
(134, 'Madagascar', NULL, NULL),
(135, 'Malawi', NULL, NULL),
(136, 'Malaysia', NULL, NULL),
(137, 'Maldives', NULL, NULL),
(138, 'Mali', NULL, NULL),
(139, 'Malta', NULL, NULL),
(140, 'Marshall Islands', NULL, NULL),
(141, 'Martinique', NULL, NULL),
(142, 'Mauritania', NULL, NULL),
(143, 'Mauritius', NULL, NULL),
(144, 'Mayotte', NULL, NULL),
(145, 'Mexico', NULL, NULL),
(146, 'Micronesia, Federated States of', NULL, NULL),
(147, 'Moldova, Republic of', NULL, NULL),
(148, 'Monaco', NULL, NULL),
(149, 'Mongolia', NULL, NULL),
(150, 'Montenegro', NULL, NULL),
(151, 'Montserrat', NULL, NULL),
(152, 'Morocco', NULL, NULL),
(153, 'Mozambique', NULL, NULL),
(154, 'Myanmar', NULL, NULL),
(155, 'Namibia', NULL, NULL),
(156, 'Nauru', NULL, NULL),
(157, 'Nepal', NULL, NULL),
(158, 'Netherlands', NULL, NULL),
(159, 'Netherlands Antilles', NULL, NULL),
(160, 'New Caledonia', NULL, NULL),
(161, 'New Zealand', NULL, NULL),
(162, 'Nicaragua', NULL, NULL),
(163, 'Niger', NULL, NULL),
(164, 'Nigeria', NULL, NULL),
(165, 'Niue', NULL, NULL),
(166, 'Norfolk Island', NULL, NULL),
(167, 'Northern Mariana Islands', NULL, NULL),
(168, 'Norway', NULL, NULL),
(169, 'Oman', NULL, NULL),
(170, 'Pakistan', NULL, NULL),
(171, 'Palau', NULL, NULL),
(172, 'Palestinian Territory, Occupied', NULL, NULL),
(173, 'Panama', NULL, NULL),
(174, 'Papua New Guinea', NULL, NULL),
(175, 'Paraguay', NULL, NULL),
(176, 'Peru', NULL, NULL),
(177, 'Philippines', NULL, NULL),
(178, 'Pitcairn', NULL, NULL),
(179, 'Poland', NULL, NULL),
(180, 'Portugal', NULL, NULL),
(181, 'Puerto Rico', NULL, NULL),
(182, 'Qatar', NULL, NULL),
(183, 'Reunion', NULL, NULL),
(184, 'Romania', NULL, NULL),
(185, 'Russian Federation', NULL, NULL),
(186, 'Rwanda', NULL, NULL),
(187, 'Saint Barthelemy', NULL, NULL),
(188, 'Saint Helena', NULL, NULL),
(189, 'Saint Kitts and Nevis', NULL, NULL),
(190, 'Saint Lucia', NULL, NULL),
(191, 'Saint Martin', NULL, NULL),
(192, 'Saint Pierre and Miquelon', NULL, NULL),
(193, 'Saint Vincent and the Grenadines', NULL, NULL),
(194, 'Samoa', NULL, NULL),
(195, 'San Marino', NULL, NULL),
(196, 'Sao Tome and Principe', NULL, NULL),
(197, 'Saudi Arabia', NULL, NULL),
(198, 'Senegal', NULL, NULL),
(199, 'Serbia', NULL, NULL),
(200, 'Serbia and Montenegro', NULL, NULL),
(201, 'Seychelles', NULL, NULL),
(202, 'Sierra Leone', NULL, NULL),
(203, 'Singapore', NULL, NULL),
(204, 'Sint Maarten', NULL, NULL),
(205, 'Slovakia', NULL, NULL),
(206, 'Slovenia', NULL, NULL),
(207, 'Solomon Islands', NULL, NULL),
(208, 'Somalia', NULL, NULL),
(209, 'South Africa', NULL, NULL),
(210, 'South Georgia and the South Sandwich Islands', NULL, NULL),
(211, 'South Sudan', NULL, NULL),
(212, 'Spain', NULL, NULL),
(213, 'Sri Lanka', NULL, NULL),
(214, 'Sudan', NULL, NULL),
(215, 'Suriname', NULL, NULL),
(216, 'Svalbard and Jan Mayen', NULL, NULL),
(217, 'Swaziland', NULL, NULL),
(218, 'Sweden', NULL, NULL),
(219, 'Switzerland', NULL, NULL),
(220, 'Syrian Arab Republic', NULL, NULL),
(221, 'Taiwan, Province of China', NULL, NULL),
(222, 'Tajikistan', NULL, NULL),
(223, 'Tanzania, United Republic of', NULL, NULL),
(224, 'Thailand', NULL, NULL),
(225, 'Timor-Leste', NULL, NULL),
(226, 'Togo', NULL, NULL),
(227, 'Tokelau', NULL, NULL),
(228, 'Tonga', NULL, NULL),
(229, 'Trinidad and Tobago', NULL, NULL),
(230, 'Tunisia', NULL, NULL),
(231, 'Turkey', NULL, NULL),
(232, 'Turkmenistan', NULL, NULL),
(233, 'Turks and Caicos Islands', NULL, NULL),
(234, 'Tuvalu', NULL, NULL),
(235, 'Uganda', NULL, NULL),
(236, 'Ukraine', NULL, NULL),
(237, 'United Arab Emirates', NULL, NULL),
(238, 'United Kingdom', NULL, NULL),
(239, 'United States', NULL, NULL),
(240, 'United States Minor Outlying Islands', NULL, NULL),
(241, 'Uruguay', NULL, NULL),
(242, 'Uzbekistan', NULL, NULL),
(243, 'Vanuatu', NULL, NULL),
(244, 'Venezuela', NULL, NULL),
(245, 'Viet Nam', NULL, NULL),
(246, 'Virgin Islands, British', NULL, NULL),
(247, 'Virgin Islands, U.s.', NULL, NULL),
(248, 'Wallis and Futuna', NULL, NULL),
(249, 'Western Sahara', NULL, NULL),
(250, 'Yemen', NULL, NULL),
(251, 'Zambia', NULL, NULL),
(252, 'Zimbabwe', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Document', '2021-04-10 11:01:16', '2021-04-10 11:01:16'),
(2, 'Non-Document', '2021-04-10 11:01:47', '2021-04-10 11:01:47'),
(3, 'Carton/Box', '2021-04-10 11:02:07', '2021-04-10 11:02:07'),
(4, 'Per Kilogram', '2021-04-10 11:02:07', '2021-04-10 11:02:07');

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
(3, '2019_06_25_054819_create_permissions_table', 1),
(4, '2021_02_27_110650_create_logos_table', 1),
(5, '2021_02_27_110755_create_footers_table', 1),
(6, '2021_03_20_144818_create_countries_table', 1),
(7, '2021_03_20_144850_create_carriers_table', 1),
(8, '2021_03_20_145037_create_categories_table', 1),
(10, '2021_04_02_125733_create_tests_table', 3),
(11, '2021_04_08_023435_create_types_table', 3),
(13, '2021_04_08_104255_create_files_table', 5),
(15, '2021_03_20_144723_create_pricings_table', 6);

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

-- --------------------------------------------------------

--
-- Table structure for table `pricings`
--

CREATE TABLE `pricings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `price` double NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `carrier_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `file_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pricings`
--

INSERT INTO `pricings` (`id`, `price`, `country_id`, `carrier_id`, `category_id`, `type_id`, `file_id`, `created_at`, `updated_at`) VALUES
(1, 24.38, 1, 2, 1, 2, 1, NULL, NULL),
(2, 34.25, 2, 2, 1, 2, 1, NULL, NULL),
(3, 34.25, 3, 2, 1, 2, 1, NULL, NULL),
(4, 34.25, 4, 2, 1, 2, 1, NULL, NULL),
(5, 22.37, 5, 2, 1, 2, 1, NULL, NULL),
(6, 34.25, 6, 2, 1, 2, 1, NULL, NULL),
(7, 24.38, 8, 2, 1, 2, 1, NULL, NULL),
(8, 24.38, 11, 2, 1, 2, 1, NULL, NULL),
(9, 34.25, 12, 2, 1, 2, 1, NULL, NULL),
(10, 24.38, 13, 2, 1, 2, 1, NULL, NULL),
(11, 23.29, 14, 2, 1, 2, 1, NULL, NULL),
(12, 22.37, 15, 2, 1, 2, 1, NULL, NULL),
(13, 34.25, 16, 2, 1, 2, 1, NULL, NULL),
(14, 24.38, 17, 2, 1, 2, 1, NULL, NULL),
(15, 24.32, 18, 2, 1, 2, 1, NULL, NULL),
(16, 24.38, 20, 2, 1, 2, 1, NULL, NULL),
(17, 34.25, 21, 2, 1, 2, 1, NULL, NULL),
(18, 22.37, 22, 2, 1, 2, 1, NULL, NULL),
(19, 24.38, 23, 2, 1, 2, 1, NULL, NULL),
(20, 34.25, 24, 2, 1, 2, 1, NULL, NULL),
(21, 24.38, 25, 2, 1, 2, 1, NULL, NULL),
(22, 24.32, 26, 2, 1, 2, 1, NULL, NULL),
(23, 24.38, 27, 2, 1, 2, 1, NULL, NULL),
(24, 34.25, 29, 2, 1, 2, 1, NULL, NULL),
(25, 34.25, 30, 2, 1, 2, 1, NULL, NULL),
(26, 24.38, 32, 2, 1, 2, 1, NULL, NULL),
(27, 24.38, 33, 2, 1, 2, 1, NULL, NULL),
(28, 18.85, 34, 2, 1, 2, 1, NULL, NULL),
(29, 34.25, 35, 2, 1, 2, 1, NULL, NULL),
(30, 34.25, 36, 2, 1, 2, 1, NULL, NULL),
(31, 34.25, 37, 2, 1, 2, 1, NULL, NULL),
(32, 18.85, 38, 2, 1, 2, 1, NULL, NULL),
(33, 34.25, 39, 2, 1, 2, 1, NULL, NULL),
(34, 19.07, 40, 2, 1, 2, 1, NULL, NULL),
(35, 34.25, 41, 2, 1, 2, 1, NULL, NULL),
(36, 24.38, 42, 2, 1, 2, 1, NULL, NULL),
(37, 34.25, 43, 2, 1, 2, 1, NULL, NULL),
(38, 34.25, 44, 2, 1, 2, 1, NULL, NULL),
(39, 24.38, 45, 2, 1, 2, 1, NULL, NULL),
(40, 18.85, 46, 2, 1, 2, 1, NULL, NULL),
(41, 24.38, 49, 2, 1, 2, 1, NULL, NULL),
(42, 34.25, 51, 2, 1, 2, 1, NULL, NULL),
(43, 24.38, 53, 2, 1, 2, 1, NULL, NULL),
(44, 24.38, 54, 2, 1, 2, 1, NULL, NULL),
(45, 34.25, 55, 2, 1, 2, 1, NULL, NULL),
(46, 34.25, 56, 2, 1, 2, 1, NULL, NULL),
(47, 24.32, 59, 2, 1, 2, 1, NULL, NULL),
(48, 24.71, 60, 2, 1, 2, 1, NULL, NULL),
(49, 24.71, 61, 2, 1, 2, 1, NULL, NULL),
(50, 34.25, 62, 2, 1, 2, 1, NULL, NULL),
(51, 24.38, 63, 2, 1, 2, 1, NULL, NULL),
(52, 24.38, 64, 2, 1, 2, 1, NULL, NULL),
(53, 24.38, 65, 2, 1, 2, 1, NULL, NULL),
(54, 24.32, 66, 2, 1, 2, 1, NULL, NULL),
(55, 24.38, 67, 2, 1, 2, 1, NULL, NULL),
(56, 34.25, 68, 2, 1, 2, 1, NULL, NULL),
(57, 34.25, 69, 2, 1, 2, 1, NULL, NULL),
(58, 34.25, 70, 2, 1, 2, 1, NULL, NULL),
(59, 34.25, 71, 2, 1, 2, 1, NULL, NULL),
(60, 24.38, 74, 2, 1, 2, 1, NULL, NULL),
(61, 24.71, 75, 2, 1, 2, 1, NULL, NULL),
(62, 19.86, 76, 2, 1, 2, 1, NULL, NULL),
(63, 24.38, 77, 2, 1, 2, 1, NULL, NULL),
(64, 34.25, 78, 2, 1, 2, 1, NULL, NULL),
(65, 34.25, 80, 2, 1, 2, 1, NULL, NULL),
(66, 34.25, 81, 2, 1, 2, 1, NULL, NULL),
(67, 34.25, 82, 2, 1, 2, 1, NULL, NULL),
(68, 22.37, 83, 2, 1, 2, 1, NULL, NULL),
(69, 34.25, 84, 2, 1, 2, 1, NULL, NULL),
(70, 34.25, 85, 2, 1, 2, 1, NULL, NULL),
(71, 24.71, 86, 2, 1, 2, 1, NULL, NULL),
(72, 24.38, 88, 2, 1, 2, 1, NULL, NULL),
(73, 24.38, 89, 2, 1, 2, 1, NULL, NULL),
(74, 24.38, 90, 2, 1, 2, 1, NULL, NULL),
(75, 24.38, 91, 2, 1, 2, 1, NULL, NULL),
(76, 34.25, 93, 2, 1, 2, 1, NULL, NULL),
(77, 34.25, 94, 2, 1, 2, 1, NULL, NULL),
(78, 24.38, 95, 2, 1, 2, 1, NULL, NULL),
(79, 24.38, 96, 2, 1, 2, 1, NULL, NULL),
(80, 24.38, 99, 2, 1, 2, 1, NULL, NULL),
(81, 24.38, 100, 2, 1, 2, 1, NULL, NULL),
(82, 24.71, 101, 2, 1, 2, 1, NULL, NULL),
(83, 34.25, 102, 2, 1, 2, 1, NULL, NULL),
(84, 8.1, 103, 2, 1, 2, 1, NULL, NULL),
(85, 18.85, 104, 2, 1, 2, 1, NULL, NULL),
(86, 24.71, 106, 2, 1, 2, 1, NULL, NULL),
(87, 24.32, 107, 2, 1, 2, 1, NULL, NULL),
(88, 24.32, 109, 2, 1, 2, 1, NULL, NULL),
(89, 22.37, 110, 2, 1, 2, 1, NULL, NULL),
(90, 24.38, 111, 2, 1, 2, 1, NULL, NULL),
(91, 23.29, 112, 2, 1, 2, 1, NULL, NULL),
(92, 24.32, 114, 2, 1, 2, 1, NULL, NULL),
(93, 34.25, 115, 2, 1, 2, 1, NULL, NULL),
(94, 34.25, 116, 2, 1, 2, 1, NULL, NULL),
(95, 24.32, 121, 2, 1, 2, 1, NULL, NULL),
(96, 34.25, 122, 2, 1, 2, 1, NULL, NULL),
(97, 34.25, 124, 2, 1, 2, 1, NULL, NULL),
(98, 24.32, 125, 2, 1, 2, 1, NULL, NULL),
(99, 34.25, 126, 2, 1, 2, 1, NULL, NULL),
(100, 34.25, 127, 2, 1, 2, 1, NULL, NULL),
(101, 22.37, 129, 2, 1, 2, 1, NULL, NULL),
(102, 34.25, 130, 2, 1, 2, 1, NULL, NULL),
(103, 22.37, 131, 2, 1, 2, 1, NULL, NULL),
(104, 18.85, 132, 2, 1, 2, 1, NULL, NULL),
(105, 34.25, 133, 2, 1, 2, 1, NULL, NULL),
(106, 34.25, 134, 2, 1, 2, 1, NULL, NULL),
(107, 34.25, 135, 2, 1, 2, 1, NULL, NULL),
(108, 18.85, 136, 2, 1, 2, 1, NULL, NULL),
(109, 24.32, 137, 2, 1, 2, 1, NULL, NULL),
(110, 34.25, 138, 2, 1, 2, 1, NULL, NULL),
(111, 24.71, 139, 2, 1, 2, 1, NULL, NULL),
(112, 34.25, 140, 2, 1, 2, 1, NULL, NULL),
(113, 24.38, 141, 2, 1, 2, 1, NULL, NULL),
(114, 34.25, 142, 2, 1, 2, 1, NULL, NULL),
(115, 34.25, 143, 2, 1, 2, 1, NULL, NULL),
(116, 24.38, 145, 2, 1, 2, 1, NULL, NULL),
(117, 34.25, 146, 2, 1, 2, 1, NULL, NULL),
(118, 34.25, 147, 2, 1, 2, 1, NULL, NULL),
(119, 22.37, 148, 2, 1, 2, 1, NULL, NULL),
(120, 34.25, 149, 2, 1, 2, 1, NULL, NULL),
(121, 34.25, 150, 2, 1, 2, 1, NULL, NULL),
(122, 24.38, 151, 2, 1, 2, 1, NULL, NULL),
(123, 34.25, 152, 2, 1, 2, 1, NULL, NULL),
(124, 34.25, 153, 2, 1, 2, 1, NULL, NULL),
(125, 18.85, 154, 2, 1, 2, 1, NULL, NULL),
(126, 34.25, 155, 2, 1, 2, 1, NULL, NULL),
(127, 24.32, 157, 2, 1, 2, 1, NULL, NULL),
(128, 22.37, 158, 2, 1, 2, 1, NULL, NULL),
(129, 24.38, 160, 2, 1, 2, 1, NULL, NULL),
(130, 23.29, 161, 2, 1, 2, 1, NULL, NULL),
(131, 24.38, 162, 2, 1, 2, 1, NULL, NULL),
(132, 34.25, 163, 2, 1, 2, 1, NULL, NULL),
(133, 34.25, 164, 2, 1, 2, 1, NULL, NULL),
(134, 24.71, 168, 2, 1, 2, 1, NULL, NULL),
(135, 24.32, 169, 2, 1, 2, 1, NULL, NULL),
(136, 24.32, 170, 2, 1, 2, 1, NULL, NULL),
(137, 34.25, 171, 2, 1, 2, 1, NULL, NULL),
(138, 24.32, 172, 2, 1, 2, 1, NULL, NULL),
(139, 24.38, 173, 2, 1, 2, 1, NULL, NULL),
(140, 24.38, 174, 2, 1, 2, 1, NULL, NULL),
(141, 24.38, 175, 2, 1, 2, 1, NULL, NULL),
(142, 24.38, 176, 2, 1, 2, 1, NULL, NULL),
(143, 18.85, 177, 2, 1, 2, 1, NULL, NULL),
(144, 24.71, 179, 2, 1, 2, 1, NULL, NULL),
(145, 24.71, 180, 2, 1, 2, 1, NULL, NULL),
(146, 24.32, 182, 2, 1, 2, 1, NULL, NULL),
(147, 34.25, 183, 2, 1, 2, 1, NULL, NULL),
(148, 34.25, 184, 2, 1, 2, 1, NULL, NULL),
(149, 34.25, 185, 2, 1, 2, 1, NULL, NULL),
(150, 34.25, 186, 2, 1, 2, 1, NULL, NULL),
(151, 24.38, 194, 2, 1, 2, 1, NULL, NULL),
(152, 24.32, 197, 2, 1, 2, 1, NULL, NULL),
(153, 34.25, 198, 2, 1, 2, 1, NULL, NULL),
(154, 34.25, 199, 2, 1, 2, 1, NULL, NULL),
(155, 34.25, 200, 2, 1, 2, 1, NULL, NULL),
(156, 34.25, 202, 2, 1, 2, 1, NULL, NULL),
(157, 15.35, 203, 2, 1, 2, 1, NULL, NULL),
(158, 34.25, 205, 2, 1, 2, 1, NULL, NULL),
(159, 34.25, 206, 2, 1, 2, 1, NULL, NULL),
(160, 34.25, 208, 2, 1, 2, 1, NULL, NULL),
(161, 34.25, 209, 2, 1, 2, 1, NULL, NULL),
(162, 22.37, 212, 2, 1, 2, 1, NULL, NULL),
(163, 24.32, 213, 2, 1, 2, 1, NULL, NULL),
(164, 34.25, 214, 2, 1, 2, 1, NULL, NULL),
(165, 24.38, 215, 2, 1, 2, 1, NULL, NULL),
(166, 34.25, 217, 2, 1, 2, 1, NULL, NULL),
(167, 24.71, 218, 2, 1, 2, 1, NULL, NULL),
(168, 24.71, 219, 2, 1, 2, 1, NULL, NULL),
(169, 24.32, 220, 2, 1, 2, 1, NULL, NULL),
(170, 18.85, 221, 2, 1, 2, 1, NULL, NULL),
(171, 34.25, 223, 2, 1, 2, 1, NULL, NULL),
(172, 18.85, 224, 2, 1, 2, 1, NULL, NULL),
(173, 23.29, 225, 2, 1, 2, 1, NULL, NULL),
(174, 34.25, 226, 2, 1, 2, 1, NULL, NULL),
(175, 34.25, 228, 2, 1, 2, 1, NULL, NULL),
(176, 24.38, 229, 2, 1, 2, 1, NULL, NULL),
(177, 34.25, 230, 2, 1, 2, 1, NULL, NULL),
(178, 24.32, 231, 2, 1, 2, 1, NULL, NULL),
(179, 34.25, 232, 2, 1, 2, 1, NULL, NULL),
(180, 24.38, 233, 2, 1, 2, 1, NULL, NULL),
(181, 14.09, 237, 2, 1, 2, 1, NULL, NULL),
(182, 22.37, 238, 2, 1, 2, 1, NULL, NULL),
(183, 19.07, 239, 2, 1, 2, 1, NULL, NULL),
(184, 24.38, 241, 2, 1, 2, 1, NULL, NULL),
(185, 34.25, 242, 2, 1, 2, 1, NULL, NULL),
(186, 24.38, 243, 2, 1, 2, 1, NULL, NULL),
(187, 24.38, 244, 2, 1, 2, 1, NULL, NULL),
(188, 18.85, 245, 2, 1, 2, 1, NULL, NULL),
(189, 24.38, 246, 2, 1, 2, 1, NULL, NULL),
(190, 34.25, 248, 2, 1, 2, 1, NULL, NULL),
(191, 24.32, 250, 2, 1, 2, 1, NULL, NULL),
(192, 34.25, 251, 2, 1, 2, 1, NULL, NULL),
(193, 34.25, 252, 2, 1, 2, 1, NULL, NULL),
(194, 26.47, 1, 2, 2, 2, 2, '2021-04-14 21:56:59', '2021-04-14 21:56:59'),
(195, 31.84, 1, 2, 2, 2, 3, '2021-04-14 22:03:07', '2021-04-14 22:03:07');

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

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `carrier` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Individual', NULL, NULL),
(2, 'Organization', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT '3',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `email`, `email_verified_at`, `password`, `image`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Kauser', '01743681201', 'kauser@gmail.com', NULL, '$2y$10$zRzG3EsS3wxhkIDpC.CsQeLL/oAx0FeOwSdbLhgWzYyp9cnOgY/zC', '1618469585.jpg', 3, NULL, '2021-04-15 00:53:05', '2021-04-15 00:53:05');

--
-- Indexes for dumped tables
--

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `countries_name_unique` (`name`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
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
  ADD KEY `pricings_category_id_foreign` (`category_id`),
  ADD KEY `pricings_type_id_foreign` (`type_id`),
  ADD KEY `pricings_file_id_foreign` (`file_id`);

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
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `carriers`
--
ALTER TABLE `carriers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `footers`
--
ALTER TABLE `footers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logos`
--
ALTER TABLE `logos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pricings`
--
ALTER TABLE `pricings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pricings`
--
ALTER TABLE `pricings`
  ADD CONSTRAINT `pricings_carrier_id_foreign` FOREIGN KEY (`carrier_id`) REFERENCES `carriers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pricings_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pricings_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pricings_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pricings_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`) ON DELETE CASCADE;

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

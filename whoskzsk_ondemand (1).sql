-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 25, 2022 at 12:22 AM
-- Server version: 10.3.32-MariaDB-cll-lve
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `whoskzsk_ondemand`
--

DELIMITER $$
--
-- Functions
--
$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` double(20,17) NOT NULL DEFAULT 0.00000000000000000,
  `longitude` double(20,17) NOT NULL DEFAULT 0.00000000000000000,
  `default` tinyint(1) DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `description`, `address`, `latitude`, `longitude`, `default`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'house', '13218 S Herriman Rose Blvd, Herriman, UT 84096, USA', 40.51000000000000000, -112.02000000000000000, 0, 6, '2021-12-13 18:13:07', '2021-12-21 19:55:51'),
(2, 'freelancer', '13084 S Tortola Dr, Herriman, UT 84096, USA', 40.51377440000000000, -112.01055390000000000, 1, 7, '2021-12-17 19:31:24', '2021-12-17 19:31:24'),
(3, NULL, '4348 Chesapeake River Ln, Fairfax, VA 22030, USA', 38.83240760000000000, -77.30737690000000000, 1, 10, '2021-12-21 23:12:42', '2021-12-21 23:12:42'),
(5, 'Office', '6322 NW 18th Dr, Gainesville, FL 32653, USA', 29.71298870000000000, -82.34709630000000000, 1, 12, '2021-12-24 01:47:43', '2021-12-24 01:47:43'),
(6, 'bunk', '11917 S, Mustang Trail Way, Herriman, UT 84096, USA', 40.53376500000000000, -112.03201570000000000, 1, 15, '2021-12-25 19:54:19', '2021-12-25 19:54:19'),
(7, 'Bruno', 'Herriman, UT 84096, USA', 40.51411470000000000, -112.03299380000000000, 1, 16, '2021-12-29 19:48:05', '2021-12-29 19:48:05'),
(8, 'house', '11917 S, Mustang Trail Way, Herriman, UT 84096, USA', 40.53376500000000000, -112.03201570000000000, 1, 17, '2021-12-31 00:15:12', '2021-12-31 00:15:12'),
(9, 'house', '11917 S, Mustang Trail Way, Herriman, UT 84096, USA', 40.53376500000000000, -112.03201570000000000, 1, 17, '2021-12-31 00:25:27', '2021-12-31 00:25:27'),
(10, 'house', '11917 S, Mustang Trail Way, Herriman, UT 84096, USA', 40.53376500000000000, -112.03201570000000000, 1, 17, '2021-12-31 00:27:37', '2021-12-31 00:27:37'),
(11, 'house', '11917 S, Mustang Trail Way, Herriman, UT 84096, USA', 40.53376500000000000, -112.03201570000000000, 1, 17, '2021-12-31 00:36:40', '2021-12-31 00:36:40'),
(12, 'house', '11917 S, Mustang Trail Way, Herriman, UT 84096, USA', 40.53376500000000000, -112.03201570000000000, 1, 17, '2021-12-31 00:56:32', '2021-12-31 00:56:32'),
(13, 'home', 'Elelenwo, Port Harcourt, Nigeria', 4.83976870000000000, 7.07270200000000000, NULL, 10, '2022-01-23 00:40:59', '2022-01-23 00:40:59');

-- --------------------------------------------------------

--
-- Table structure for table `app_settings`
--

CREATE TABLE `app_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_settings`
--

INSERT INTO `app_settings` (`id`, `key`, `value`) VALUES
(7, 'date_format', 'l jS F Y (H:i:s)'),
(8, 'language', 'en'),
(17, 'is_human_date_format', '1'),
(18, 'app_name', 'Who\'s Available'),
(19, 'app_short_description', 'Manage Mobile Application'),
(20, 'mail_driver', 'smtp'),
(21, 'mail_host', 'whosava.com'),
(22, 'mail_port', '465'),
(23, 'mail_username', 'appwork@whosava.com'),
(24, 'mail_password', 'cCojc1KOUiRMD3GJRCOmrC'),
(25, 'mail_encryption', 'ssl'),
(26, 'mail_from_address', 'appwork@whosava.com'),
(27, 'mail_from_name', 'Who is available'),
(30, 'timezone', 'America/Montserrat'),
(32, 'theme_contrast', 'light'),
(33, 'theme_color', 'primary'),
(34, 'app_logo', '4aa1dc2f-8b8f-4773-bd46-e3324ab06169'),
(35, 'nav_color', 'navbar-dark navbar-gray'),
(38, 'logo_bg_color', 'text-light  navbar-gray'),
(66, 'default_role', 'admin'),
(68, 'facebook_app_id', '518416208939727'),
(69, 'facebook_app_secret', '93649810f78fa9ca0d48972fee2a75cd'),
(71, 'twitter_app_id', 'twitter'),
(72, 'twitter_app_secret', 'twitter 1'),
(74, 'google_app_id', '527129559488-roolg8aq110p8r1q952fqa9tm06gbloe.apps.googleusercontent.com'),
(75, 'google_app_secret', 'FpIi8SLgc69ZWodk-xHaOrxn'),
(77, 'enable_google', '1'),
(78, 'enable_facebook', '1'),
(93, 'enable_stripe', '1'),
(94, 'stripe_key', 'pk_test_pltzOnX3zsUZMoTTTVUL4O41'),
(95, 'stripe_secret', 'sk_test_o98VZx3RKDUytaokX4My3a20'),
(101, 'custom_field_models.0', 'App\\Models\\User'),
(104, 'default_tax', '10'),
(107, 'default_currency', '$'),
(108, 'fixed_header', '1'),
(109, 'fixed_footer', '0'),
(110, 'fcm_key', 'AAAAPuqmnYs:APA91bEAvhSfqQpOoTiTAHzihNb0q_TMgNcLcIK2Lq9ZC76RsFHveh7Huh8AlSuIoNxBvQ_uowrqiS63piXFuOqjT4j4hGiB-Y-0v2TkgFSMPKDq69_VHS1S0vyKP2M3_qATfEOJlBbr'),
(111, 'enable_notifications', '1'),
(112, 'paypal_username', 'sb-vivf478470382_api1.business.example.com'),
(113, 'paypal_password', 'Q42FKEFYNR94THPD'),
(114, 'paypal_secret', 'AgSFbXS6UDlSY8x-Oaaj8XAzyb3JA7LFcZ6SSpXKI69EDf7P6yVxxs8j'),
(115, 'enable_paypal', '1'),
(116, 'main_color', '#25262F'),
(117, 'main_dark_color', '#040410'),
(118, 'second_color', '#08143A'),
(119, 'second_dark_color', '#CCCCDD'),
(120, 'accent_color', '#8C9DA8'),
(121, 'accent_dark_color', '#9999AA'),
(122, 'scaffold_dark_color', '#2C2C2C'),
(123, 'scaffold_color', '#FAFAFA'),
(124, 'google_maps_key', 'AIzaSyA8q61GSJ0iIKc6uA1CXoL6QWBqC5rkGPE'),
(125, 'mobile_language', 'en'),
(126, 'app_version', '1.0.0'),
(127, 'enable_version', '1'),
(128, 'default_currency_id', '1'),
(129, 'default_currency_code', 'USD'),
(130, 'default_currency_decimal_digits', '2'),
(131, 'default_currency_rounding', '0'),
(132, 'currency_right', '0'),
(133, 'distance_unit', 'mi'),
(134, 'default_theme', 'light'),
(135, 'enable_paystack', '1'),
(136, 'paystack_key', 'pk_test_d754715fa3fa9048c9ab2832c440fb183d7c91f5'),
(137, 'paystack_secret', 'sk_test_66f87edaac94f8adcb28fdf7452f12ccc63d068d'),
(138, 'enable_flutterwave', '1'),
(139, 'flutterwave_key', 'FLWPUBK_TEST-d465ba7e4f6b86325cb9881835726402-X'),
(140, 'flutterwave_secret', 'FLWSECK_TEST-d3f8801da31fc093fb1207ea34e68fbb-X'),
(141, 'enable_stripe_fpx', '1'),
(142, 'stripe_fpx_key', 'pk_test_51IQ0zvB0wbAJesyPLo3x4LRgOjM65IkoO5hZLHOMsnO2RaF0NlH7HNOfpCkjuLSohvdAp30U5P1wKeH98KnwXkOD00mMDavaFX'),
(143, 'stripe_fpx_secret', 'sk_test_51IQ0zvB0wbAJesyPUtR7yGdyOR7aGbMQAX5Es9P56EDUEsvEQAC0NBj7JPqFuJEYXrvSCm5OPRmGaUQBswjkRxVB00mz8xhkFX'),
(144, 'firebase_api_key', 'AIzaSyCeCHyP7CDvrOXmNil4oulIDMtdzkoMm4Y'),
(145, 'firebase_auth_domain', 'whoisavailable.firebaseapp.com'),
(146, 'firebase_database_url', 'https://whoisavailable-default-rtdb.firebaseio.com'),
(147, 'firebase_project_id', 'whoisavailable'),
(148, 'firebase_storage_bucket', 'whoisavailable.appspot.com'),
(149, 'firebase_messaging_sender_id', '270224760203'),
(150, 'firebase_app_id', '1:270224760203:web:68f4313bb04fa85c6fa38e'),
(151, 'firebase_measurement_id', 'G-0HGMK6CDYX'),
(152, 'paypal_mode', '0'),
(154, 'paypal_app_id', 'APP-80W284485P519543T'),
(155, 'enable_cash', '0');

-- --------------------------------------------------------

--
-- Table structure for table `availability_hours`
--

CREATE TABLE `availability_hours` (
  `id` int(10) UNSIGNED NOT NULL,
  `day` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'monday',
  `start_at` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_at` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_provider_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `availability_hours`
--

INSERT INTO `availability_hours` (`id`, `day`, `start_at`, `end_at`, `data`, `e_provider_id`) VALUES
(20, 'tuesday', '11:27', '18:27', '{\"en\":null}', 6),
(21, 'sunday', '11:30', '17:30', '{\"en\":null}', 7),
(22, 'wednesday', '12:30', '17:30', '{\"en\":null}', 7),
(17, 'sunday', '10:45', '18:45', '{\"en\":null}', 5),
(18, 'tuesday', '10:46', '16:46', '{\"en\":null}', 5),
(19, 'sunday', '11:27', '17:27', '{\"en\":null}', 6),
(15, 'monday', '10:45', '18:45', '{\"en\":null}', 3),
(16, 'tuesday', '10:45', '18:45', '{\"en\":null}', 3),
(23, 'sunday', '00:01', '23:59', '{\"en\":null}', 8),
(24, 'monday', '00:01', '23:59', '{\"en\":null}', 8),
(25, 'tuesday', '00:01', '23:59', '{\"en\":null}', 8),
(26, 'friday', '06:00', '23:55', '{\"en\":\"Demo Day\"}', 3),
(27, 'monday', '05:43', '11:44', '{\"en\":null}', 10),
(28, 'tuesday', '04:45', '22:45', '{\"en\":null}', 10),
(29, 'wednesday', '04:46', '11:46', '{\"en\":null}', 10),
(30, 'sunday', '00:01', '23:59', '{\"en\":null}', 3),
(31, 'monday', '00:01', '22:59', '{\"en\":null}', 3),
(32, 'sunday', '04:18', '14:10', '{\"en\":null}', 3);

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE `awards` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_provider_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `awards`
--

INSERT INTO `awards` (`id`, `title`, `description`, `e_provider_id`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"Best Face Painter\"}', '{\"en\":\"<p>IN the world&nbsp;<\\/p>\"}', 2, '2021-12-21 19:25:38', '2021-12-21 19:25:38');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(10) UNSIGNED NOT NULL,
  `e_provider` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `e_service` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` smallint(6) DEFAULT 1,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `booking_status_id` int(10) UNSIGNED DEFAULT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_id` int(10) UNSIGNED DEFAULT NULL,
  `coupon` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `taxes` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `booking_at` datetime DEFAULT NULL,
  `start_at` datetime DEFAULT NULL,
  `ends_at` datetime DEFAULT NULL,
  `hint` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancel` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `e_provider`, `e_service`, `options`, `quantity`, `user_id`, `booking_status_id`, `address`, `payment_id`, `coupon`, `taxes`, `booking_at`, `start_at`, `ends_at`, `hint`, `cancel`, `created_at`, `updated_at`) VALUES
(1, '{\"id\":1,\"name\":\"Shane\",\"phone_number\":\"+123\",\"mobile_number\":\"+123\"}', '{\"id\":51,\"name\":\"2 Hour DJ\",\"price\":100,\"discount_price\":null,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null}', NULL, 1, 4, 1, '{\"id\":1,\"description\":\"house\",\"address\":\"13218 S Herriman Rose Blvd, Herriman, UT 84096, USA\",\"latitude\":40.51,\"longitude\":-112.02}', NULL, NULL, '[{\"id\":2,\"name\":\"Tax 10\",\"value\":10,\"type\":\"percent\"}]', '2021-12-31 05:55:00', NULL, NULL, NULL, 0, '2021-12-21 19:55:51', '2021-12-21 19:55:51');

-- --------------------------------------------------------

--
-- Table structure for table `booking_statuses`
--

CREATE TABLE `booking_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booking_statuses`
--

INSERT INTO `booking_statuses` (`id`, `status`, `order`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"Received\"}', 1, '2021-01-25 22:25:46', '2021-11-16 23:24:17'),
(2, 'In Progress', 40, '2021-01-25 22:26:02', '2021-02-17 00:56:52'),
(3, 'On the Way', 20, '2021-01-28 10:47:23', '2021-02-16 15:10:13'),
(4, 'Accepted', 10, '2021-02-16 15:09:29', '2021-02-16 15:10:06'),
(5, 'Ready', 30, '2021-02-16 15:11:50', '2021-02-17 00:56:42'),
(6, '{\"en\":\"Done\"}', 50, '2021-02-17 00:57:02', '2021-11-20 18:59:08'),
(7, 'Failed', 60, '2021-02-17 00:58:36', '2021-02-17 00:58:36');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT 0,
  `featured` tinyint(1) DEFAULT 0,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `color`, `description`, `order`, `featured`, `parent_id`, `created_at`, `updated_at`) VALUES
(137, '{\"en\":\"Video & Photograpy\"}', '#FBRFBR', '{\"en\":null}', NULL, 1, NULL, '2021-12-19 20:13:25', '2022-01-07 19:20:01'),
(132, '{\"en\":\"Party Bus Rentals\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 31, '2021-12-19 20:10:27', '2021-12-19 20:10:27'),
(8, '{\"en\":\"Babysitter & Daycare\"}', '#FBRFBR', '{\"en\":null}', 3, 0, NULL, '2021-12-14 18:26:43', '2021-12-19 18:38:56'),
(9, '{\"en\":\"Bakery\"}', '#FBRFBR', '{\"en\":null}', 4, 1, NULL, '2021-12-14 18:27:12', '2022-01-07 19:20:10'),
(10, '{\"en\":\"Barber\"}', '#FBRFBR', '{\"en\":null}', 5, 0, NULL, '2021-12-14 18:27:43', '2021-12-19 18:39:08'),
(135, '{\"en\":\"Florist\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 31, '2021-12-19 20:12:10', '2021-12-19 20:12:10'),
(103, '{\"en\":\"Meal Prepration\"}', '#FBFBFB', '{\"en\":null}', NULL, 0, 53, '2021-12-19 18:41:55', '2021-12-19 18:41:55'),
(104, '{\"en\":\"Nutritionist\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 53, '2021-12-19 18:42:28', '2021-12-20 14:17:39'),
(17, '{\"en\":\"Carwash & Detailing\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, NULL, '2021-12-14 18:33:16', '2021-12-28 01:30:09'),
(18, '{\"en\":\"Cleaners\"}', '#FBRFBR', '{\"en\":null}', 6, 0, NULL, '2021-12-14 18:35:14', '2021-12-20 03:44:43'),
(195, '{\"en\":\"Screen Repair\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 25, '2021-12-20 14:09:37', '2021-12-20 14:09:37'),
(20, '{\"en\":\"Construction\"}', '#FBRFBR', '{\"en\":null}', 7, 0, NULL, '2021-12-14 18:36:59', '2021-12-20 03:47:03'),
(22, '{\"en\":\"Day Labor\"}', '#FBRFBR', '{\"en\":null}', 8, 0, NULL, '2021-12-14 18:38:01', '2021-12-20 03:47:15'),
(134, '{\"en\":\"Face Painting\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 31, '2021-12-19 20:11:26', '2021-12-19 20:11:26'),
(133, '{\"en\":\"Limousine  Rentals\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 31, '2021-12-19 20:11:04', '2021-12-19 20:11:04'),
(25, '{\"en\":\"Electronic Repair\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, NULL, '2021-12-14 18:39:41', '2021-12-28 01:30:17'),
(131, '{\"en\":\"Solar Panel Cleaning\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 69, '2021-12-19 19:14:39', '2021-12-19 19:14:39'),
(97, '{\"en\":\"Healthcare\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, NULL, '2021-12-19 17:59:37', '2021-12-28 01:30:22'),
(127, '{\"en\":\"CPA\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 4, '2021-12-19 19:05:52', '2021-12-19 19:05:52'),
(31, '{\"en\":\"Events\"}', '#FBFBFB', '{\"en\":null}', NULL, 0, NULL, '2021-12-14 18:48:03', '2021-12-28 01:30:27'),
(130, '{\"en\":\"Solar Attic Fan\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 69, '2021-12-19 19:14:21', '2021-12-19 19:14:21'),
(35, '{\"en\":\"Handyman\"}', '#FBFBFB', '{\"en\":null}', NULL, 0, NULL, '2021-12-14 18:50:56', '2021-12-20 03:43:37'),
(36, '{\"en\":\"Appraiser\"}', '#FBFBFB', '{\"en\":null}', NULL, 0, NULL, '2021-12-14 18:58:40', '2021-12-20 03:44:21'),
(129, '{\"en\":\"Solar Water Heater\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 69, '2021-12-19 19:14:04', '2021-12-19 19:14:04'),
(126, '{\"en\":\"Electricial Engineer\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 4, '2021-12-19 19:05:45', '2021-12-19 19:05:45'),
(41, '{\"en\":\"Legal\"}', '#FBFBFB', '{\"en\":null}', NULL, 0, NULL, '2021-12-14 19:01:37', '2021-12-20 03:41:04'),
(43, '{\"en\":\"Turtoring\"}', '#FBFBFB', '{\"en\":null}', NULL, 0, NULL, '2021-12-14 19:03:10', '2021-12-20 01:06:53'),
(44, '{\"en\":\"Beauty & Salon\"}', '#FBFBFB', '{\"en\":null}', NULL, 0, NULL, '2021-12-14 19:03:43', '2021-12-20 01:18:52'),
(45, '{\"en\":\"Massage\"}', '#FBFBFB', '{\"en\":null}', NULL, 0, NULL, '2021-12-14 19:04:02', '2021-12-20 03:41:10'),
(46, '{\"en\":\"Vehicle\"}', '#FBFBFB', '{\"en\":null}', NULL, 0, NULL, '2021-12-14 19:07:09', '2021-12-19 17:54:24'),
(122, '{\"en\":\"Accountant\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 4, '2021-12-19 19:04:01', '2021-12-19 19:04:01'),
(123, '{\"en\":\"Architect\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 4, '2021-12-19 19:04:26', '2021-12-19 19:04:26'),
(124, '{\"en\":\"Civil Engineer\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 4, '2021-12-19 19:05:24', '2021-12-19 19:05:24'),
(125, '{\"en\":\"Structural Engineer\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 4, '2021-12-19 19:05:35', '2021-12-19 19:05:35'),
(53, '{\"en\":\"Health & Fitness\"}', '#FBFBFB', '{\"en\":null}', NULL, 0, NULL, '2021-12-14 19:11:43', '2021-12-19 18:13:47'),
(121, '{\"en\":\"Security Guards\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 31, '2021-12-19 19:01:12', '2021-12-19 19:01:12'),
(120, '{\"en\":\"Porta Potty  Rental\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 31, '2021-12-19 19:01:01', '2021-12-19 19:01:01'),
(118, '{\"en\":\"Bartender\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 31, '2021-12-19 19:00:32', '2021-12-19 19:00:32'),
(119, '{\"en\":\"Catering\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 31, '2021-12-19 19:00:44', '2021-12-19 19:00:44'),
(139, '{\"en\":\"Ballons\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 31, '2021-12-19 20:17:50', '2021-12-19 20:17:50'),
(128, '{\"en\":\"Solar Photovoltaic\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 69, '2021-12-19 19:13:48', '2021-12-19 19:17:50'),
(98, '{\"en\":\"Animal Care\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, NULL, '2021-12-19 18:00:22', '2021-12-20 03:41:23'),
(99, '{\"en\":\"Marketing & Design\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, NULL, '2021-12-19 18:03:01', '2021-12-19 18:03:01'),
(100, '{\"en\":\"Custom Printing\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, NULL, '2021-12-19 18:05:03', '2021-12-19 18:05:03'),
(105, '{\"en\":\"Physicial Therapist\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 53, '2021-12-19 18:44:30', '2021-12-19 18:44:30'),
(65, '{\"en\":\"Roadside Assistance\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, NULL, '2021-12-14 19:39:14', '2021-12-14 19:39:14'),
(101, '{\"en\":\"Personal Trainers\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 53, '2021-12-19 18:41:23', '2021-12-19 18:41:23'),
(102, '{\"en\":\"Yoga Instructor\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 53, '2021-12-19 18:41:38', '2021-12-19 18:41:38'),
(69, '{\"en\":\"Solar\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, NULL, '2021-12-14 19:45:16', '2021-12-20 03:41:51'),
(148, '{\"en\":\"Lessons\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, NULL, '2021-12-20 01:42:35', '2021-12-20 16:23:06'),
(147, '{\"en\":\"Wild-life Removal\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 98, '2021-12-20 01:14:25', '2021-12-20 01:14:25'),
(145, '{\"en\":\"Pet Grooming\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 98, '2021-12-20 01:13:46', '2021-12-20 01:13:46'),
(144, '{\"en\":\"Veterinarian\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 98, '2021-12-20 01:13:27', '2021-12-20 01:13:27'),
(117, '{\"en\":\"DJ\"}', '#FBFBFB', '{\"en\":null}', NULL, 0, 31, '2021-12-19 19:00:22', '2021-12-19 19:00:22'),
(106, '{\"en\":\"Attorney\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 41, '2021-12-19 18:45:37', '2021-12-19 18:45:37'),
(107, '{\"en\":\"Lawyer\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 41, '2021-12-19 18:45:53', '2021-12-19 18:47:18'),
(108, '{\"en\":\"Notary\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 41, '2021-12-19 18:46:11', '2021-12-19 18:46:11'),
(115, '{\"en\":\"Party Decor\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 31, '2021-12-19 18:59:56', '2021-12-19 18:59:56'),
(116, '{\"en\":\"Photo Booth Rental\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 31, '2021-12-19 19:00:12', '2021-12-19 19:00:12'),
(114, '{\"en\":\"Table & Chair Rental\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 31, '2021-12-19 18:59:45', '2021-12-19 18:59:45'),
(113, '{\"en\":\"Water Slide Rental\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 31, '2021-12-19 18:59:34', '2021-12-19 18:59:34'),
(111, '{\"en\":\"Chiropractors\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 97, '2021-12-19 18:54:23', '2021-12-19 19:15:44'),
(112, '{\"en\":\"Bounce House Rental\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 31, '2021-12-19 18:59:21', '2021-12-19 18:59:21'),
(109, '{\"en\":\"Doctors\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 97, '2021-12-19 18:53:36', '2021-12-19 18:53:36'),
(110, '{\"en\":\"Nurses\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 97, '2021-12-19 18:53:48', '2021-12-19 18:53:48'),
(143, '{\"en\":\"Photography\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 137, '2021-12-20 01:08:26', '2021-12-20 01:08:26'),
(138, '{\"en\":\"Food Truck\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 31, '2021-12-19 20:13:46', '2021-12-19 20:13:46'),
(92, '{\"en\":\"Lawncare\"}', '#FBFBFB', '{\"en\":null}', NULL, 0, NULL, '2021-12-15 20:15:33', '2021-12-15 20:15:33'),
(150, '{\"en\":\"Weilders\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 22, '2021-12-20 01:45:35', '2021-12-20 01:45:35'),
(146, '{\"en\":\"Pet Sitting\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 98, '2021-12-20 01:14:01', '2021-12-20 01:14:01'),
(149, '{\"en\":\"Pressure Washing\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 5, '2021-12-20 01:43:51', '2021-12-20 13:53:46'),
(151, '{\"en\":\"Movers\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 22, '2021-12-20 01:45:46', '2021-12-20 01:45:46'),
(152, '{\"en\":\"Window Tinting\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 46, '2021-12-20 02:09:11', '2021-12-20 02:09:11'),
(153, '{\"en\":\"Locksmith\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 65, '2021-12-20 02:09:49', '2021-12-20 02:09:49'),
(154, '{\"en\":\"Tire Change\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 65, '2021-12-20 02:10:06', '2021-12-20 02:10:06'),
(155, '{\"en\":\"Hair Cuts\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 44, '2021-12-20 02:10:37', '2021-12-20 02:10:37'),
(156, '{\"en\":\"Nails\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 44, '2021-12-20 02:10:51', '2021-12-20 02:10:51'),
(157, '{\"en\":\"Tanning\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 44, '2021-12-20 02:11:13', '2021-12-20 02:11:13'),
(158, '{\"en\":\"Facials\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 44, '2021-12-20 02:11:32', '2021-12-20 02:11:32'),
(159, '{\"en\":\"Waxing\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 44, '2021-12-20 02:11:47', '2021-12-20 02:11:47'),
(160, '{\"en\":\"Threading\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 44, '2021-12-20 02:12:06', '2021-12-20 02:12:06'),
(161, '{\"en\":\"Makeup Artist\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 44, '2021-12-20 02:12:42', '2021-12-20 02:12:42'),
(162, '{\"en\":\"Hair Stylist\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 44, '2021-12-20 02:12:59', '2021-12-20 02:12:59'),
(163, '{\"en\":\"Hair Color\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 44, '2021-12-20 02:15:32', '2021-12-20 02:15:32'),
(164, '{\"en\":\"Lash Extensions\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 44, '2021-12-20 02:19:27', '2021-12-20 02:19:27'),
(165, '{\"en\":\"Home Cleaning\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 18, '2021-12-20 02:27:51', '2021-12-20 02:27:51'),
(166, '{\"en\":\"Commercial Cleaning\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 18, '2021-12-20 02:28:07', '2021-12-20 02:28:07'),
(167, '{\"en\":\"Carpet Cleaning\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 18, '2021-12-20 02:28:35', '2021-12-20 02:28:35'),
(168, '{\"en\":\"Chimney Cleaning\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 18, '2021-12-20 02:28:48', '2021-12-20 02:28:48'),
(169, '{\"en\":\"Janitorial\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 18, '2021-12-20 02:29:04', '2021-12-20 02:29:04'),
(170, '{\"en\":\"Carpet & Upholstery Cleaning\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 18, '2021-12-20 02:30:22', '2021-12-20 02:30:22'),
(171, '{\"en\":\"Alarm & Security\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 5, '2021-12-20 02:35:53', '2021-12-20 02:41:31'),
(172, '{\"en\":\"Appliance Repair\"}', '#FBRFBR', '{\"en\":\"<p>We specialize in the repair of all of your appliances. <\\/p>\"}', NULL, 0, NULL, '2021-12-20 02:36:22', '2021-12-20 15:56:32'),
(173, '{\"en\":\"Blinds & Shutters\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 5, '2021-12-20 02:38:03', '2021-12-20 02:38:03'),
(174, '{\"en\":\"Garage Repair & Installation\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 5, '2021-12-20 02:38:54', '2021-12-20 02:38:54'),
(175, '{\"en\":\"Car Wash\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 17, '2021-12-20 02:43:25', '2021-12-20 02:43:25'),
(176, '{\"en\":\"Pest Control\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, NULL, '2021-12-20 02:45:28', '2021-12-20 18:37:24'),
(177, '{\"en\":\"Painting & Caulking\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 5, '2021-12-20 02:46:09', '2021-12-20 02:46:09'),
(178, '{\"en\":\"Water Filteration\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 5, '2021-12-20 02:46:32', '2021-12-20 02:46:32'),
(179, '{\"en\":\"Plumbing\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, NULL, '2021-12-20 02:47:03', '2021-12-20 18:58:11'),
(180, '{\"en\":\"Pool & Spa\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 5, '2021-12-20 02:47:29', '2021-12-20 02:47:29'),
(181, '{\"en\":\"Mold Removal\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 5, '2021-12-20 02:48:17', '2021-12-20 02:48:17'),
(182, '{\"en\":\"Junk & Waste Removal\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 5, '2021-12-20 02:48:54', '2021-12-20 02:48:54'),
(183, '{\"en\":\"Inspections\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 5, '2021-12-20 02:49:39', '2021-12-20 02:49:39'),
(184, '{\"en\":\"Epoxy  Floors & Staining\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 5, '2021-12-20 02:50:14', '2021-12-20 02:50:14'),
(185, '{\"en\":\"Crane\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 20, '2021-12-20 03:03:56', '2021-12-20 03:03:56'),
(186, '{\"en\":\"HVAC\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 20, '2021-12-20 03:04:14', '2021-12-20 03:04:14'),
(187, '{\"en\":\"Electrician\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 20, '2021-12-20 03:04:28', '2021-12-20 03:04:28'),
(188, '{\"en\":\"Porta Potty\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 20, '2021-12-20 03:05:05', '2021-12-20 03:05:05'),
(189, '{\"en\":\"Roofer\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 20, '2021-12-20 03:05:21', '2021-12-20 03:05:21'),
(190, '{\"en\":\"Residential\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 36, '2021-12-20 03:27:01', '2021-12-20 14:00:44'),
(191, '{\"en\":\"Commercial\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 36, '2021-12-20 03:27:17', '2021-12-20 03:27:17'),
(193, '{\"en\":\"Marketing & Printing\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, NULL, '2021-12-20 14:02:18', '2021-12-20 14:02:18'),
(194, '{\"en\":\"Dog Walking\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 98, '2021-12-20 14:04:48', '2021-12-20 14:04:48'),
(196, '{\"en\":\"Furniture & Equiptment Assembly\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, NULL, '2021-12-20 14:13:30', '2021-12-20 14:13:30'),
(197, '{\"en\":\"Dishwasher\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 172, '2021-12-20 15:58:04', '2021-12-20 15:58:04'),
(198, '{\"en\":\"Refrigerator\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 172, '2021-12-20 15:58:38', '2021-12-20 15:58:38'),
(199, '{\"en\":\"Washer & Dryer\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 172, '2021-12-20 15:58:57', '2021-12-20 15:58:57'),
(200, '{\"en\":\"Stove & Oven\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 172, '2021-12-20 15:59:25', '2021-12-20 15:59:49'),
(201, '{\"en\":\"Dance\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 148, '2021-12-20 16:05:04', '2021-12-20 16:05:04'),
(202, '{\"en\":\"Spanish\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 148, '2021-12-20 16:05:19', '2021-12-20 16:05:19'),
(203, '{\"en\":\"Swimming\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 148, '2021-12-20 16:06:06', '2021-12-20 16:06:06'),
(204, '{\"en\":\"Music\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 148, '2021-12-20 16:07:40', '2021-12-20 16:34:12'),
(205, '{\"en\":\"Singing\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 148, '2021-12-20 16:07:54', '2021-12-20 16:07:54'),
(206, '{\"en\":\"CPR & First Aid\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 148, '2021-12-20 16:08:34', '2021-12-20 16:08:34'),
(207, '{\"en\":\"Self Defense\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 148, '2021-12-20 16:09:09', '2021-12-20 16:33:54'),
(208, '{\"en\":\"Golf\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 148, '2021-12-20 16:11:21', '2021-12-20 16:11:21'),
(209, '{\"en\":\"Surfing & Paddleboarding\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 148, '2021-12-20 16:12:46', '2021-12-20 16:12:46'),
(210, '{\"en\":\"Archery\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 148, '2021-12-20 16:20:20', '2021-12-20 16:20:20'),
(211, '{\"en\":\"Cooking\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 148, '2021-12-20 16:20:52', '2021-12-20 16:20:52'),
(212, '{\"en\":\"Karate\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 148, '2021-12-20 17:03:14', '2021-12-20 17:03:14'),
(213, '{\"en\":\"Martial Arts\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 148, '2021-12-20 17:03:32', '2021-12-20 17:03:32'),
(218, '{\"en\":\"Acupunture\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 45, '2021-12-20 17:38:31', '2021-12-20 17:38:31'),
(220, '{\"en\":\"Cupping Therpy\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 45, '2021-12-20 17:39:25', '2021-12-20 17:48:50'),
(222, '{\"en\":\"Reflexology\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 45, '2021-12-20 17:42:29', '2021-12-20 17:42:29'),
(223, '{\"en\":\"Prenatal\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 45, '2021-12-20 17:43:14', '2021-12-20 17:43:14'),
(224, '{\"en\":\"Thai\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 45, '2021-12-20 17:43:44', '2021-12-20 17:43:44'),
(225, '{\"en\":\"Chair\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 45, '2021-12-20 17:44:21', '2021-12-20 17:44:21'),
(226, '{\"en\":\"Aromatherapy\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 45, '2021-12-20 17:45:52', '2021-12-20 17:45:52'),
(227, '{\"en\":\"Shiatsu\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 45, '2021-12-20 17:48:09', '2021-12-20 17:48:09'),
(228, '{\"en\":\"Active Release Therpy\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 45, '2021-12-20 17:52:25', '2021-12-20 17:52:25'),
(230, '{\"en\":\"Monthly Service\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 176, '2021-12-20 18:38:10', '2021-12-20 18:38:10'),
(231, '{\"en\":\"Bed Bug Removal\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 176, '2021-12-20 18:38:37', '2021-12-20 18:38:37'),
(232, '{\"en\":\"Termite Inspections\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 176, '2021-12-20 18:39:00', '2021-12-20 18:39:00'),
(233, '{\"en\":\"Home Fumigation\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 176, '2021-12-20 18:39:26', '2021-12-20 18:39:26'),
(234, '{\"en\":\"Cockroach Infestation\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 176, '2021-12-20 18:39:51', '2021-12-20 18:39:51'),
(235, '{\"en\":\"Bee Exterminators\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 176, '2021-12-20 18:55:43', '2021-12-20 18:55:43'),
(236, '{\"en\":\"Rodent Removal\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 176, '2021-12-20 18:56:05', '2021-12-20 18:56:05'),
(237, '{\"en\":\"Toilets\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 179, '2021-12-20 18:58:56', '2021-12-20 19:07:05'),
(238, '{\"en\":\"Diagnostic\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 179, '2021-12-20 18:59:39', '2021-12-20 18:59:39'),
(239, '{\"en\":\"Sinks\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 179, '2021-12-20 19:01:10', '2021-12-20 19:34:28'),
(240, '{\"en\":\"Showers\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 179, '2021-12-20 19:01:55', '2021-12-20 19:07:18'),
(241, '{\"en\":\"Outdoor\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 179, '2021-12-20 19:07:34', '2021-12-20 19:07:34'),
(242, '{\"en\":\"Bathtubs\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 179, '2021-12-20 19:08:08', '2021-12-20 19:08:08'),
(243, '{\"en\":\"Drain & Pipe Clogs\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 179, '2021-12-20 19:36:25', '2021-12-20 19:36:25'),
(244, '{\"en\":\"Garbage Disposal\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 179, '2021-12-20 19:53:34', '2021-12-20 19:53:34'),
(245, '{\"en\":\"Cakes\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 9, '2021-12-20 21:52:22', '2021-12-20 21:52:22'),
(246, '{\"en\":\"Cookies\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 9, '2021-12-20 21:52:47', '2021-12-20 21:52:47'),
(247, '{\"en\":\"Brownies\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 9, '2021-12-20 21:53:04', '2021-12-20 21:53:04'),
(248, '{\"en\":\"Cake Pops\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 9, '2021-12-20 21:53:17', '2021-12-20 21:53:17'),
(249, '{\"en\":\"Cupcake\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, 9, '2021-12-20 21:58:50', '2021-12-20 21:58:50'),
(250, '{\"en\":\"Nails\"}', '#FBRFBR', '{\"en\":null}', NULL, 0, NULL, '2021-12-22 23:33:38', '2021-12-22 23:33:38');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` double(8,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percent',
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `decimal_digits` tinyint(3) UNSIGNED DEFAULT NULL,
  `rounding` tinyint(3) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `code`, `decimal_digits`, `rounding`, `created_at`, `updated_at`) VALUES
(1, 'US Dollar', '$', 'USD', 2, 0, '2020-10-22 18:50:48', '2020-10-22 18:50:48'),
(2, 'Euro', '€', 'EUR', 2, 0, '2020-10-22 18:51:39', '2020-10-22 18:51:39'),
(3, 'Indian Rupee', 'টকা', 'INR', 2, 0, '2020-10-22 18:52:50', '2020-10-22 18:52:50'),
(4, 'Indonesian Rupiah', 'Rp', 'IDR', 0, 0, '2020-10-22 18:53:22', '2020-10-22 18:53:22'),
(5, 'Brazilian Real', 'R$', 'BRL', 2, 0, '2020-10-22 18:54:00', '2020-10-22 18:54:00'),
(6, 'Cambodian Riel', '៛', 'KHR', 2, 0, '2020-10-22 18:55:51', '2020-10-22 18:55:51'),
(7, 'Vietnamese Dong', '₫', 'VND', 0, 0, '2020-10-22 18:56:26', '2020-10-22 18:56:26');

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(56) COLLATE utf8mb4_unicode_ci NOT NULL,
  `values` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disabled` tinyint(1) DEFAULT NULL,
  `required` tinyint(1) DEFAULT NULL,
  `in_table` tinyint(1) DEFAULT NULL,
  `bootstrap_column` tinyint(4) DEFAULT NULL,
  `order` tinyint(4) DEFAULT NULL,
  `custom_field_model` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_fields`
--

INSERT INTO `custom_fields` (`id`, `name`, `type`, `values`, `disabled`, `required`, `in_table`, `bootstrap_column`, `order`, `custom_field_model`, `created_at`, `updated_at`) VALUES
(5, 'bio', 'textarea', NULL, 0, 0, 0, 6, 1, 'App\\Models\\User', '2019-09-07 00:43:58', '2019-09-07 00:43:58'),
(6, 'address', 'text', NULL, 0, 0, 0, 6, 3, 'App\\Models\\User', '2019-09-07 00:49:22', '2019-09-07 00:49:22');

-- --------------------------------------------------------

--
-- Table structure for table `custom_field_values`
--

CREATE TABLE `custom_field_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field_id` int(10) UNSIGNED NOT NULL,
  `customizable_type` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customizable_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_field_values`
--

INSERT INTO `custom_field_values` (`id`, `value`, `view`, `custom_field_id`, `customizable_type`, `customizable_id`, `created_at`, `updated_at`) VALUES
(1, '<p> </p>', ' ', 5, 'App\\Models\\User', 1, '2021-12-11 00:51:28', '2021-12-21 19:25:10'),
(2, ' ', ' ', 6, 'App\\Models\\User', 1, '2021-12-11 00:51:28', '2021-12-11 00:51:28'),
(3, NULL, '', 5, 'App\\Models\\User', 2, '2021-12-11 17:13:51', '2021-12-11 17:13:51'),
(4, NULL, NULL, 6, 'App\\Models\\User', 2, '2021-12-11 17:13:51', '2021-12-11 17:13:51'),
(5, NULL, '', 5, 'App\\Models\\User', 3, '2021-12-13 17:27:30', '2021-12-13 17:27:30'),
(6, NULL, NULL, 6, 'App\\Models\\User', 3, '2021-12-13 17:27:30', '2021-12-13 17:27:30'),
(7, NULL, '', 5, 'App\\Models\\User', 4, '2021-12-13 17:47:35', '2021-12-13 17:47:35'),
(8, NULL, NULL, 6, 'App\\Models\\User', 4, '2021-12-13 17:47:35', '2021-12-13 17:47:35'),
(9, '<p>tis is testing</p>', 'tis is testing', 5, 'App\\Models\\User', 8, '2021-12-21 22:59:52', '2021-12-21 22:59:52'),
(10, '13092 s bilston ln herriman', '13092 s bilston ln herriman', 6, 'App\\Models\\User', 8, '2021-12-21 22:59:52', '2021-12-21 22:59:52'),
(11, NULL, '', 5, 'App\\Models\\User', 9, '2021-12-21 23:06:22', '2021-12-21 23:06:22'),
(12, NULL, NULL, 6, 'App\\Models\\User', 9, '2021-12-21 23:06:22', '2021-12-21 23:06:22'),
(13, NULL, '', 5, 'App\\Models\\User', 13, '2021-12-25 19:28:32', '2021-12-25 19:28:32'),
(14, '19 alagiri street mgr nagar', '19 alagiri street mgr nagar', 6, 'App\\Models\\User', 13, '2021-12-25 19:28:32', '2021-12-25 19:28:32'),
(15, '<p>rjijd</p>', 'rjijd', 5, 'App\\Models\\User', 18, '2022-01-15 06:40:51', '2022-01-15 06:40:51'),
(16, '13095 s bilston ln herriman', '13095 s bilston ln herriman', 6, 'App\\Models\\User', 18, '2022-01-15 06:40:51', '2022-01-15 06:41:33');

-- --------------------------------------------------------

--
-- Table structure for table `custom_pages`
--

CREATE TABLE `custom_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_pages`
--

INSERT INTO `custom_pages` (`id`, `title`, `content`, `published`, `created_at`, `updated_at`) VALUES
(1, 'Privacy Policy', '<h1>Privacy Policy of SmarterVision</h1>\n<p>SmarterVision operates the SmarterVision website, which provides the SERVICE.</p>\n<p>This page is used to inform website visitors regarding our policies with the collection, use, and disclosure of Personal Information if anyone decided to use our Service, the smartersvision.com website.</p>\n<p>If you choose to use our Service, then you agree to the collection and use of information in relation with this policy. The Personal Information that we collect are used for providing and improving the Service. We will not use or share your information with anyone except as described in this Privacy Policy.</p>\n<p>The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which is accessible at smartersvision.com, unless otherwise defined in this Privacy Policy.</p>\n<h2>Information Collection and Use</h2>\n<p>For a better experience, while using our Service, we may require you to provide us with certain personally identifiable information, including but not limited to your name, phone number, and postal address. The information that we collect will be used to contact or identify you.</p>\n<h2>Log Data</h2>\n<p>We want to inform you that whenever you visit our Service, we collect information that your browser sends to us which is called Log Data. This Log Data may include information such as your computer\'s Internet Protocol (“IP”) address, browser version, pages of our Service that you visit, the time and date of your visit, the time spent on those pages, and other statistics.</p>\n<h2>Cookies</h2>\n<p>Cookies are files with small amount of data that is commonly used an anonymous unique identifier. These are sent to your browser from the website that you visit and are stored on your computer\'s hard drive.</p>\n<p>Our website uses these “cookies” to collection information and to improve our Service. You have the option to either accept or refuse these cookies, and know when a cookie is being sent to your computer. If you choose to refuse our cookies, you may not be able to use some portions of our Service.</p>\n<h2>Service Providers</h2>\n<p>We may employ third-party companies and individuals due to the following reasons:</p>\n<ul>\n<li>To facilitate our Service;</li>\n<li>To provide the Service on our behalf;</li>\n<li>To perform Service-related services; or</li>\n<li>To assist us in analyzing how our Service is used.</li>\n</ul>\n<p>We want to inform our Service users that these third parties have access to your Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.</p>\n<h2>Security</h2>\n<p>We value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and we cannot guarantee its absolute security.</p>\n<h2>Links to Other Sites</h2>\n<p>Our Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by us. Therefore, we strongly advise you to review the Privacy Policy of these websites. We have no control over, and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.</p>\n<h2>Children\'s Privacy</h2>\n<p>Our Services do not address anyone under the age of 13. We do not knowingly collect personal identifiable information from children under 13. In the case we discover that a child under 13 has provided us with personal information, we immediately delete this from our servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact us so that we will be able to do necessary actions.</p>\n<h2>Changes to This Privacy Policy</h2>\n<p>We may update our Privacy Policy from time to time. Thus, we advise you to review this page periodically for any changes. We will notify you of any changes by posting the new Privacy Policy on this page. These changes are effective immediately, after they are posted on this page.</p>\n<h2>Contact Us</h2>\n<p>If you have any questions or suggestions about our Privacy Policy, do not hesitate to contact us.</p>', 1, '2021-02-24 14:53:21', '2021-02-24 16:19:19'),
(2, 'Terms & Conditions', '<h2>Terms &amp; Conditions</h2><p>Dolor consequat. Ex ducimus, dolores fugiat ipsam sunt non a dolor quidem nulla ullamco Nam labore nostrum sit amet, tenetur ut consequatur? Non aut incididunt consequatur, rem veniam, veritatis molestiae neque non veniam, nemo facilis eligendi qui aut enim aperiam rerum fugiat, dolorum qui id, in sint et assumenda mollitia dignissimos illum, ipsum maiores asperiores exercitationem odio labore laboris consequatur? Consequatur, sapiente ipsum, laboriosam, laudantium, dolor sed autem eligendi ea a.</p><p>Dolor consequat. Ex ducimus, dolores fugiat ipsam sunt non a dolor quidem nulla ullamco Nam labore nostrum sit amet, tenetur ut consequatur? Non aut incididunt consequatur, rem veniam, veritatis molestiae neque non veniam, nemo facilis eligendi qui aut enim aperiam rerum fugiat, dolorum qui id, in sint et assumenda mollitia dignissimos illum, ipsum maiores asperiores exercitationem odio labore laboris consequatur? Consequatur, sapiente ipsum, laboriosam, laudantium, dolor sed autem eligendi ea a.<br></p>', 1, '2021-02-24 16:20:06', '2021-02-24 16:23:52');

-- --------------------------------------------------------

--
-- Table structure for table `discountables`
--

CREATE TABLE `discountables` (
  `id` int(10) UNSIGNED NOT NULL,
  `coupon_id` int(10) UNSIGNED NOT NULL,
  `discountable_type` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discountable_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `earnings`
--

CREATE TABLE `earnings` (
  `id` int(10) UNSIGNED NOT NULL,
  `e_provider_id` int(10) UNSIGNED DEFAULT NULL,
  `total_bookings` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `total_earning` double(10,2) NOT NULL DEFAULT 0.00,
  `admin_earning` double(10,2) NOT NULL DEFAULT 0.00,
  `e_provider_earning` double(10,2) NOT NULL DEFAULT 0.00,
  `taxes` double(10,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `earnings`
--

INSERT INTO `earnings` (`id`, `e_provider_id`, `total_bookings`, `total_earning`, `admin_earning`, `e_provider_earning`, `taxes`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0.00, 0.00, 0.00, 0.00, '2021-12-13 18:14:40', '2021-12-13 18:14:40'),
(2, 2, 0, 0.00, 0.00, 0.00, 0.00, '2021-12-21 22:53:08', '2021-12-21 22:53:08'),
(3, 3, 0, 0.00, 0.00, 0.00, 0.00, '2021-12-21 23:16:14', '2021-12-21 23:16:14'),
(4, 4, 0, 0.00, 0.00, 0.00, 0.00, '2021-12-23 21:22:09', '2021-12-23 21:22:09'),
(5, 5, 0, 0.00, 0.00, 0.00, 0.00, '2021-12-25 02:52:40', '2021-12-25 02:52:40'),
(6, 6, 0, 0.00, 0.00, 0.00, 0.00, '2021-12-25 19:26:45', '2021-12-25 19:26:45'),
(7, 7, 0, 0.00, 0.00, 0.00, 0.00, '2021-12-25 19:29:23', '2021-12-25 19:29:23'),
(8, 8, 0, 0.00, 0.00, 0.00, 0.00, '2021-12-25 19:55:58', '2021-12-25 19:55:58'),
(9, 10, 0, 0.00, 0.00, 0.00, 0.00, '2022-01-15 06:43:11', '2022-01-15 06:43:11');

-- --------------------------------------------------------

--
-- Table structure for table `experiences`
--

CREATE TABLE `experiences` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_provider_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `experiences`
--

INSERT INTO `experiences` (`id`, `title`, `description`, `e_provider_id`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"Owner\"}', '{\"en\":\"<p>I am a facepainter and love dogs.<\\/p>\"}', 2, '2021-12-21 19:24:24', '2021-12-21 19:24:24');

-- --------------------------------------------------------

--
-- Table structure for table `e_providers`
--

CREATE TABLE `e_providers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_provider_type_id` int(10) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `availability_range` double(9,2) DEFAULT 0.00,
  `available` tinyint(1) DEFAULT 1,
  `featured` tinyint(1) DEFAULT 0,
  `accepted` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e_providers`
--

INSERT INTO `e_providers` (`id`, `name`, `e_provider_type_id`, `description`, `phone_number`, `mobile_number`, `availability_range`, `available`, `featured`, `accepted`, `created_at`, `updated_at`) VALUES
(3, '{\"en\":\"Jessica\"}', 6, '{\"en\":\"I paint faces\"}', '+15593619064', NULL, 3000.00, 1, 1, 1, '2021-12-21 23:14:17', '2021-12-25 18:45:51'),
(4, '{\"en\":\"Shane Ellis\"}', 5, '{\"en\":null}', '+16617423341', '+16617423341', 6000.00, 1, 1, 1, '2021-12-23 21:22:09', '2021-12-25 18:46:35'),
(5, '{\"en\":\"Shanes Mechanical\"}', 5, '{\"en\":\"I fix vehicles. Any and all kinds!\"}', '+16617423341', '+16617423341', 60.00, 1, 0, 1, '2021-12-24 01:56:21', '2021-12-25 18:47:20'),
(6, '{\"en\":\"Testing\"}', 1, '{\"en\":\"<p>testing provider<\\/p>\"}', '09884380241', '09884380241', 2000.00, 1, 1, 1, '2021-12-25 19:26:45', '2021-12-25 19:27:51'),
(7, '{\"en\":\"provider\"}', 1, '{\"en\":\"<p>somw testting<\\/p>\"}', '09884380241', '09884380241', 1000.00, 1, 1, 1, '2021-12-25 19:29:23', '2021-12-25 19:31:17'),
(8, '{\"en\":\"testing\"}', 5, '{\"en\":\"tattoo\"}', '+121', '+121', 1000.00, 1, 1, 1, '2021-12-25 19:54:48', '2021-12-25 20:00:30'),
(10, '{\"en\":\"available\"}', 5, '{\"en\":\"<p>ggg<\\/p>\"}', '+1231222222', '+1231222222', 1000.00, 1, 0, 1, '2022-01-15 06:43:11', '2022-01-15 06:47:06');

-- --------------------------------------------------------

--
-- Table structure for table `e_provider_addresses`
--

CREATE TABLE `e_provider_addresses` (
  `e_provider_id` int(10) UNSIGNED NOT NULL,
  `address_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e_provider_addresses`
--

INSERT INTO `e_provider_addresses` (`e_provider_id`, `address_id`) VALUES
(1, 1),
(2, 1),
(3, 3),
(4, 3),
(5, 3),
(6, 1),
(7, 2),
(8, 6),
(10, 7);

-- --------------------------------------------------------

--
-- Table structure for table `e_provider_payouts`
--

CREATE TABLE `e_provider_payouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `e_provider_id` int(10) UNSIGNED NOT NULL,
  `method` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(10,2) NOT NULL DEFAULT 0.00,
  `paid_date` datetime NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `e_provider_taxes`
--

CREATE TABLE `e_provider_taxes` (
  `e_provider_id` int(10) UNSIGNED NOT NULL,
  `tax_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e_provider_taxes`
--

INSERT INTO `e_provider_taxes` (`e_provider_id`, `tax_id`) VALUES
(1, 2),
(2, 4),
(3, 1),
(4, 2),
(5, 2),
(6, 1),
(7, 1),
(8, 2),
(9, 1),
(10, 4);

-- --------------------------------------------------------

--
-- Table structure for table `e_provider_types`
--

CREATE TABLE `e_provider_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commission` double(5,2) NOT NULL DEFAULT 0.00,
  `disabled` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e_provider_types`
--

INSERT INTO `e_provider_types` (`id`, `name`, `commission`, `disabled`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"Mobile Company\"}', 75.00, 0, '2021-01-13 21:05:35', '2021-12-16 16:35:09'),
(5, '{\"en\":\"Mobile Freelancer\"}', 0.00, 0, '2021-12-15 20:06:17', '2021-12-15 20:08:46'),
(6, '{\"en\":\"Company Storefront\"}', 0.00, 0, '2021-12-15 20:06:37', '2021-12-16 16:34:55');

-- --------------------------------------------------------

--
-- Table structure for table `e_provider_users`
--

CREATE TABLE `e_provider_users` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `e_provider_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e_provider_users`
--

INSERT INTO `e_provider_users` (`user_id`, `e_provider_id`) VALUES
(0, 9),
(6, 1),
(7, 2),
(10, 3),
(12, 5),
(13, 7),
(15, 8),
(16, 9),
(18, 10);

-- --------------------------------------------------------

--
-- Table structure for table `e_services`
--

CREATE TABLE `e_services` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(10,2) NOT NULL DEFAULT 0.00,
  `discount_price` double(10,2) DEFAULT 0.00,
  `price_unit` enum('hourly','fixed') COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity_unit` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(1) DEFAULT 0,
  `available` tinyint(1) DEFAULT 1,
  `e_provider_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e_services`
--

INSERT INTO `e_services` (`id`, `name`, `price`, `discount_price`, `price_unit`, `quantity_unit`, `duration`, `description`, `featured`, `available`, `e_provider_id`, `created_at`, `updated_at`) VALUES
(75, '{\"en\":\"Car wash\"}', 10.00, 0.00, 'hourly', '{\"en\":\"1\"}', '23:00', '{\"en\":\"I do carwash\"}', 1, 1, 3, '2021-12-25 02:49:52', '2022-01-07 19:59:29'),
(67, '{\"en\":\"Full set\"}', 20.00, 0.00, 'fixed', '{\"en\":\"10\"}', '23:00', '{\"en\":\"Full set nails\"}', 1, 1, 3, '2021-12-22 23:36:08', '2022-01-07 19:53:09'),
(71, '{\"en\":\"Party\"}', 20.00, 0.00, 'hourly', '{\"en\":\"1\"}', '230', '{\"en\":\"Party\"}', 0, 1, 3, '2021-12-25 02:41:08', '2021-12-25 02:41:08'),
(72, '{\"en\":\"Car Repair\"}', 60.00, 55.00, 'hourly', '{\"en\":\"1\"}', '100', '{\"en\":\"We work on cars! Foreign Luxury is our specialty!\"}', 1, 1, 5, '2021-12-25 02:41:44', '2021-12-25 02:41:44'),
(70, '{\"en\":\"Car Repair\"}', 60.00, 55.00, 'hourly', '{\"en\":\"1\"}', '100', '{\"en\":\"We repair all luxury cars! BMW, Audi, Mercedes, Jaguar, and more!\"}', 1, 1, 5, '2021-12-25 02:39:14', '2021-12-25 02:39:15'),
(68, '{\"en\":\"Bakery\"}', 15.00, 0.00, 'fixed', '{\"en\":\"1\"}', '00:31', '{\"en\":\"One single layer 8 inch cake any flavor  .\"}', 1, 1, 3, '2021-12-23 00:26:54', '2022-01-07 20:16:39'),
(76, '{\"en\":\"cleaning\"}', 10.00, 10.00, 'hourly', '{\"en\":\"10\"}', '01.23', '{\"en\":\"bunk\"}', 0, 1, 8, '2021-12-25 19:58:09', '2021-12-25 19:58:09'),
(60, '{\"en\":\"Face Painting\"}', 70.00, NULL, 'hourly', '{\"en\":null}', NULL, '{\"en\":\"<p>I will paint any of these types of animals.<\\/p><p><br><\\/p><p>Dogs<\\/p><p>Cats<\\/p><p>Horse<\\/p><p>Lion<\\/p><p>Zebra <\\/p>\"}', 0, 1, 7, '2021-12-21 19:09:43', '2021-12-25 19:30:32'),
(59, '{\"en\":\"Dog Face Painting\"}', 40.00, NULL, 'hourly', '{\"en\":null}', NULL, '{\"en\":\"<p>I will paint your face <\\/p>\"}', 0, 1, 1, '2021-12-21 19:03:49', '2021-12-21 19:15:00'),
(58, '{\"en\":\"Animal Face Painting\"}', 70.00, NULL, 'hourly', '{\"en\":null}', NULL, '{\"en\":\"<p>I will paint your face <\\/p>\"}', 0, 1, 1, '2021-12-21 19:03:19', '2021-12-21 19:13:49'),
(56, '{\"en\":\"Face Painting\"}', 50.00, NULL, 'hourly', '{\"en\":null}', NULL, '{\"en\":\"<p>h<\\/p>\"}', 0, 0, 1, '2021-12-21 19:00:17', '2021-12-21 19:00:17'),
(57, '{\"en\":\"Face Painting\"}', 60.00, NULL, 'hourly', '{\"en\":null}', NULL, '{\"en\":\"<p>I will paint your face <\\/p>\"}', 0, 1, 2, '2021-12-21 19:02:28', '2021-12-21 19:14:36'),
(55, '{\"en\":\"12 Dozen Cupcakes\"}', 25.00, NULL, 'fixed', '{\"en\":null}', NULL, '{\"en\":\"<p>12 Dozen cupcakes of any flavor. <\\/p>\"}', 0, 1, 1, '2021-12-20 21:59:28', '2021-12-21 19:14:16'),
(54, '{\"en\":\"1 layer Birthday Cake\"}', 100.00, NULL, 'fixed', '{\"en\":null}', NULL, '{\"en\":\"<p>You can choose any one of the flavors below. <\\/p><p><br><\\/p><p>Chocolate <\\/p><p>Strawberry<\\/p>\"}', 0, 0, 1, '2021-12-20 21:56:58', '2021-12-20 21:57:56'),
(53, '{\"en\":\"Fix anything\"}', 60.00, NULL, 'hourly', '{\"en\":null}', NULL, '{\"en\":\"<p>I will fix anything <\\/p>\"}', 0, 1, 1, '2021-12-20 21:05:09', '2021-12-21 19:12:54'),
(52, '{\"en\":\"Catering for 50 people\"}', 5000.00, NULL, 'hourly', '{\"en\":null}', NULL, '{\"en\":\"<p>Select Dishes <\\/p>\"}', 0, 1, 1, '2021-12-20 18:30:59', '2021-12-20 18:33:25'),
(51, '{\"en\":\"2 Hour DJ\"}', 100.00, NULL, 'hourly', '{\"en\":null}', NULL, '{\"en\":\"<p>DJ for 2 hours <\\/p>\"}', 0, 1, 1, '2021-12-20 18:30:33', '2021-12-20 18:30:55'),
(50, '{\"en\":\"Childrens Face Painting\"}', 50.00, NULL, 'hourly', '{\"en\":null}', NULL, '{\"en\":\"<p>Up to Five Children<\\/p>\"}', 0, 1, 1, '2021-12-20 18:29:49', '2021-12-20 21:11:10'),
(49, '{\"en\":\"Iphone Screen Replacement\"}', 60.00, NULL, 'hourly', '{\"en\":null}', NULL, '{\"en\":\"<p>All IPhones <\\/p>\"}', 0, 1, 1, '2021-12-20 18:28:58', '2021-12-20 18:29:48'),
(48, '{\"en\":\"Tablet Replacement\"}', 100.00, NULL, 'hourly', '{\"en\":null}', NULL, '{\"en\":\"<p>All Tablets <\\/p>\"}', 0, 1, 1, '2021-12-20 18:28:35', '2021-12-20 18:28:45'),
(47, '{\"en\":\"Computer Screeen Replacement\"}', 50.00, NULL, 'hourly', '{\"en\":null}', NULL, '{\"en\":\"<p>Screen Repair <\\/p>\"}', 0, 1, 1, '2021-12-20 18:28:09', '2021-12-20 18:28:49'),
(46, '{\"en\":\"60 Minutes\"}', 50.00, NULL, 'hourly', '{\"en\":null}', NULL, '{\"en\":\"<p>60 MInute Massage <\\/p>\"}', 0, 1, 1, '2021-12-20 18:27:07', '2021-12-20 18:27:49'),
(45, '{\"en\":\"Car cleaner\"}', 20.00, NULL, 'hourly', '{\"en\":\"10\"}', '02:00', '{\"en\":\"<p>testing<\\/p>\"}', 0, 1, 1, '2021-12-20 18:25:52', '2021-12-20 18:25:52'),
(43, '{\"en\":\"Car detailing\"}', 10.00, NULL, 'hourly', '{\"en\":\"10\"}', '01:00', '{\"en\":\"<p>thisis testing<\\/p>\"}', 0, 1, 1, '2021-12-20 18:23:32', '2021-12-20 18:23:32'),
(44, '{\"en\":\"Car wash and clean\"}', 10.00, NULL, 'hourly', '{\"en\":\"10\"}', '01:00', '{\"en\":\"<p>this is also testing<\\/p>\"}', 0, 1, 1, '2021-12-20 18:24:59', '2021-12-20 18:25:09');

-- --------------------------------------------------------

--
-- Table structure for table `e_service_categories`
--

CREATE TABLE `e_service_categories` (
  `e_service_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e_service_categories`
--

INSERT INTO `e_service_categories` (`e_service_id`, `category_id`) VALUES
(1, 22),
(1, 69),
(2, 69),
(3, 31),
(4, 31),
(5, 31),
(6, 31),
(7, 31),
(8, 18),
(8, 22),
(9, 18),
(10, 18),
(11, 18),
(12, 18),
(13, 31),
(14, 31),
(15, 4),
(16, 31),
(17, 5),
(18, 5),
(19, 10),
(20, 5),
(21, 31),
(22, 4),
(23, 4),
(24, 5),
(26, 4),
(27, 5),
(27, 96),
(28, 18),
(29, 20),
(30, 20),
(31, 20),
(32, 53),
(33, 41),
(34, 41),
(35, 41),
(36, 69),
(37, 69),
(38, 44),
(39, 53),
(40, 53),
(41, 53),
(42, 53),
(43, 17),
(44, 17),
(45, 17),
(46, 45),
(47, 25),
(48, 25),
(49, 31),
(50, 31),
(50, 134),
(51, 31),
(52, 31),
(53, 172),
(53, 198),
(54, 9),
(54, 245),
(55, 134),
(56, 31),
(56, 134),
(57, 31),
(57, 134),
(58, 31),
(58, 134),
(59, 31),
(59, 134),
(60, 31),
(60, 134),
(61, 134),
(62, 45),
(62, 214),
(62, 215),
(62, 216),
(62, 217),
(62, 218),
(62, 219),
(62, 220),
(62, 221),
(62, 222),
(62, 223),
(62, 224),
(62, 225),
(62, 226),
(62, 227),
(62, 228),
(62, 229),
(63, 31),
(63, 134),
(64, 31),
(64, 134),
(65, 10),
(65, 155),
(66, 10),
(66, 155),
(67, 44),
(68, 9),
(69, 46),
(70, 46),
(72, 46),
(75, 137),
(76, 31);

-- --------------------------------------------------------

--
-- Table structure for table `e_service_reviews`
--

CREATE TABLE `e_service_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` decimal(3,2) NOT NULL DEFAULT 0.00,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `e_service_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `faq_category_id`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"Quia quae fuga rerum velit odio dignissimos. Dolores delectus ut dolorem ipsam.\"}', '{\"en\":\"Mock Turtle in a hoarse, feeble voice: \'I heard the Rabbit angrily. \'Here! Come and help me out of the jurymen. \'No, they\'re not,\' said Alice indignantly. \'Let me alone!\' \'Serpent, I say again!\'.\"}', 2, '2021-11-14 06:03:24', '2021-11-14 06:03:24'),
(2, '{\"en\":\"Tenetur pariatur minus aperiam quod reiciendis. Ut debitis ipsa aspernatur eum quidem.\"}', '{\"en\":\"It was the White Rabbit read:-- \'They told me he was in a tone of delight, which changed into alarm in another moment down went Alice like the right size to do THAT in a court of justice before, but.\"}', 2, '2021-11-14 06:03:24', '2021-11-14 06:03:24'),
(3, '{\"en\":\"Sunt dolores amet quia unde optio et debitis repellat. Quia ad non et eos vel.\"}', '{\"en\":\"Alice, always ready to make out who I am! But I\'d better take him his fan and gloves. \'How queer it seems,\' Alice said with a growl, And concluded the banquet--] \'What IS the use of this pool? I am.\"}', 4, '2021-11-14 06:03:24', '2021-11-14 06:03:24'),
(4, '{\"en\":\"Rerum sed ipsam expedita quia ut. Delectus nihil minima vel est est velit accusamus.\"}', '{\"en\":\"I believe.\' \'Boots and shoes under the window, I only knew how to begin.\' For, you see, as well as she could, and soon found out a new pair of white kid gloves, and was going a journey, I should.\"}', 3, '2021-11-14 06:03:24', '2021-11-14 06:03:24'),
(5, '{\"en\":\"Est et amet asperiores distinctio suscipit. Fugit inventore natus velit a.\"}', '{\"en\":\"Alice to find that the reason so many different sizes in a great letter, nearly as she picked her way through the wood. \'It\'s the oldest rule in the middle of the table. \'Nothing can be clearer than.\"}', 3, '2021-11-14 06:03:24', '2021-11-14 06:03:24'),
(6, '{\"en\":\"Quisquam quisquam quia soluta. Amet saepe quidem quos earum est molestiae.\"}', '{\"en\":\"Don\'t let him know she liked them best, For this must be really offended. \'We won\'t talk about her pet: \'Dinah\'s our cat. And she\'s such a subject! Our family always HATED cats: nasty, low, vulgar.\"}', 1, '2021-11-14 06:03:24', '2021-11-14 06:03:24'),
(7, '{\"en\":\"Molestiae fuga quia odit quo reiciendis. Accusamus et distinctio eos et veniam eius.\"}', '{\"en\":\"Alice, the little glass table. \'Now, I\'ll manage better this time,\' she said to Alice, and tried to curtsey as she wandered about in the common way. So she began looking at it again: but he now.\"}', 3, '2021-11-14 06:03:24', '2021-11-14 06:03:24'),
(8, '{\"en\":\"Odio aspernatur provident qui ipsa dolor. Qui enim ipsa omnis aut. Blanditiis et et rerum non.\"}', '{\"en\":\"Alice was thoroughly puzzled. \'Does the boots and shoes!\' she repeated in a languid, sleepy voice. \'Who are YOU?\' said the voice. \'Fetch me my gloves this moment!\' Then came a little snappishly.\"}', 4, '2021-11-14 06:03:24', '2021-11-14 06:03:24'),
(9, '{\"en\":\"Et debitis ut in iste cum incidunt. Aut aut ea qui natus in. Sint doloribus optio quas.\"}', '{\"en\":\"Queen said severely \'Who is this?\' She said the Hatter. \'You might just as she could not join the dance? \\\"You can really have no idea what a Gryphon is, look at all anxious to have him with them,\'.\"}', 1, '2021-11-14 06:03:24', '2021-11-14 06:03:24'),
(10, '{\"en\":\"Doloribus dicta quam doloremque accusantium. Aut at voluptatem aut quia et eaque labore.\"}', '{\"en\":\"THAT\'S a good deal frightened at the picture.) \'Up, lazy thing!\' said Alice, \'I\'ve often seen them so shiny?\' Alice looked all round her, calling out in a whisper, half afraid that it ought to be in.\"}', 4, '2021-11-14 06:03:24', '2021-11-14 06:03:24'),
(11, '{\"en\":\"Cupiditate ipsa eos et et odit. Doloribus optio occaecati nam.\"}', '{\"en\":\"Queen in front of the lefthand bit of stick, and tumbled head over heels in its sleep \'Twinkle, twinkle, twinkle, twinkle--\' and went stamping about, and make out what she did, she picked up a.\"}', 2, '2021-11-14 06:03:24', '2021-11-14 06:03:24'),
(12, '{\"en\":\"Culpa velit omnis velit. Debitis adipisci et et et veniam tempore tempore consequatur.\"}', '{\"en\":\"WHAT?\' said the Mock Turtle persisted. \'How COULD he turn them out with trying, the poor little feet, I wonder if I can do without lobsters, you know. Come on!\' \'Everybody says \\\"come on!\\\" here,\'.\"}', 4, '2021-11-14 06:03:24', '2021-11-14 06:03:24'),
(13, '{\"en\":\"Dolorem nihil aut at consequatur ducimus. At accusantium sint enim corrupti.\"}', '{\"en\":\"Forty-two. ALL PERSONS MORE THAN A MILE HIGH TO LEAVE THE COURT.\' Everybody looked at poor Alice, who was trembling down to her feet in the shade: however, the moment how large she had never.\"}', 2, '2021-11-14 06:03:24', '2021-11-14 06:03:24'),
(14, '{\"en\":\"Enim nam beatae vero qui ut. Natus eos odio vero ut nihil omnis. Non suscipit ea rem maxime autem.\"}', '{\"en\":\"I needn\'t be afraid of it. Presently the Rabbit noticed Alice, as she could, for the moment they saw her, they hurried back to the door, and knocked. \'There\'s no sort of idea that they had settled.\"}', 4, '2021-11-14 06:03:24', '2021-11-14 06:03:24'),
(15, '{\"en\":\"Aspernatur illo non asperiores. Quam esse sed eveniet aut laborum.\"}', '{\"en\":\"Improve his shining tail, And pour the waters of the bottle was NOT marked \'poison,\' it is you hate--C and D,\' she added in a tone of delight, and rushed at the sides of it; then Alice, thinking it.\"}', 4, '2021-11-14 06:03:24', '2021-11-14 06:03:24'),
(16, '{\"en\":\"Est nihil repellat voluptates. Sed numquam nesciunt eos eaque et voluptatem autem dolorum.\"}', '{\"en\":\"Gryphon: and it said in a very short time the Queen furiously, throwing an inkstand at the end.\' \'If you can\'t think! And oh, I wish you wouldn\'t squeeze so.\' said the King said to one of the.\"}', 3, '2021-11-14 06:03:24', '2021-11-14 06:03:24'),
(17, '{\"en\":\"Ea adipisci eum minima sint atque eligendi. Quo quia nam non sunt. Non quia ut voluptatibus.\"}', '{\"en\":\"Cat again, sitting on the OUTSIDE.\' He unfolded the paper as he spoke, and the March Hare. \'It was much pleasanter at home,\' thought poor Alice, \'to speak to this mouse? Everything is so.\"}', 1, '2021-11-14 06:03:24', '2021-11-14 06:03:24'),
(18, '{\"en\":\"Maiores qui aut dicta voluptatem et numquam eos sint. Laboriosam quia laudantium distinctio harum.\"}', '{\"en\":\"May it won\'t be raving mad--at least not so mad as it lasted.) \'Then the Dormouse again, so violently, that she did not come the same thing a Lobster Quadrille The Mock Turtle yawned and shut his.\"}', 4, '2021-11-14 06:03:24', '2021-11-14 06:03:24'),
(19, '{\"en\":\"Qui veritatis alias eos. Sit ad et molestias veniam. Delectus natus cum a dolor.\"}', '{\"en\":\"Sing her \\\"Turtle Soup,\\\" will you, won\'t you join the dance? \\\"You can really have no answers.\' \'If you please, sir--\' The Rabbit started violently, dropped the white kid gloves and the poor child.\"}', 4, '2021-11-14 06:03:24', '2021-11-14 06:03:24'),
(20, '{\"en\":\"Sit ut optio dolor qui quia ut. Aperiam reprehenderit itaque magni fugit rerum eligendi.\"}', '{\"en\":\"Alice\'s great surprise, the Duchess\'s knee, while plates and dishes crashed around it--once more the pig-baby was sneezing and howling alternately without a cat! It\'s the most confusing thing I.\"}', 4, '2021-11-14 06:03:24', '2021-11-14 06:03:24'),
(21, '{\"en\":\"Porro et numquam et. Temporibus cum dolor aut est atque vel. Doloremque voluptatem animi nihil et.\"}', '{\"en\":\"Queen! The Queen!\' and the soldiers remaining behind to execute the unfortunate gardeners, who ran to Alice to herself, and shouted out, \'You\'d better not do that again!\' which produced another dead.\"}', 3, '2021-11-14 06:03:24', '2021-11-14 06:03:24'),
(22, '{\"en\":\"Nemo nisi consequuntur quis quae magnam commodi. Eum iure excepturi repudiandae sit.\"}', '{\"en\":\"Do cats eat bats? Do cats eat bats? Do cats eat bats, I wonder?\' Alice guessed who it was, even before she had gone through that day. \'No, no!\' said the Mock Turtle at last, they must needs come.\"}', 3, '2021-11-14 06:03:24', '2021-11-14 06:03:24'),
(23, '{\"en\":\"Veritatis autem non quas eaque labore laborum. Dolorem amet laboriosam id nam.\"}', '{\"en\":\"I\'ll be jury,\\\" Said cunning old Fury: \\\"I\'ll try the experiment?\' \'HE might bite,\' Alice cautiously replied: \'but I know all sorts of things--I can\'t remember half of fright and half believed herself.\"}', 1, '2021-11-14 06:03:24', '2021-11-14 06:03:24'),
(24, '{\"en\":\"Vel ipsa cumque ducimus. Assumenda natus eos sed consequatur et.\"}', '{\"en\":\"Dodo solemnly, rising to its children, \'Come away, my dears! It\'s high time to go, for the accident of the goldfish kept running in her life, and had been anything near the looking-glass. There was.\"}', 2, '2021-11-14 06:03:24', '2021-11-14 06:03:24'),
(25, '{\"en\":\"Voluptate reprehenderit est ad eaque nihil. Non eum aut optio ducimus sapiente dolor nihil.\"}', '{\"en\":\"His voice has a timid and tremulous sound.] \'That\'s different from what I could show you our cat Dinah: I think I must be a very little use without my shoulders. Oh, how I wish you would have this.\"}', 3, '2021-11-14 06:03:24', '2021-11-14 06:03:24'),
(26, '{\"en\":\"Rerum minus iure qui id est. Sed ipsa harum assumenda eos libero qui accusamus.\"}', '{\"en\":\"Alice to herself, \'I wish I hadn\'t quite finished my tea when I was a body to cut it off from: that he had come to the waving of the ground, Alice soon began talking to herself, as usual. \'Come.\"}', 3, '2021-11-14 06:03:24', '2021-11-14 06:03:24'),
(27, '{\"en\":\"Autem cumque tempore quos suscipit atque laborum vel. Qui quas sequi ut repellendus autem.\"}', '{\"en\":\"Alice. The King turned pale, and shut his note-book hastily. \'Consider your verdict,\' the King put on one side, to look about her other little children, and everybody laughed, \'Let the jury wrote it.\"}', 2, '2021-11-14 06:03:24', '2021-11-14 06:03:24'),
(28, '{\"en\":\"Et iure sint a officia et. Illo mollitia alias consequatur tempora aut voluptatem deleniti.\"}', '{\"en\":\"Gryphon went on, \'--likely to win, that it\'s hardly worth while finishing the game.\' The Queen smiled and passed on. \'Who ARE you doing out here? Run home this moment, and fetch me a good deal.\"}', 2, '2021-11-14 06:03:24', '2021-11-14 06:03:24'),
(29, '{\"en\":\"Occaecati est accusantium ad nam tempore sunt et. Voluptatem temporibus magni et qui eveniet.\"}', '{\"en\":\"Queen merely remarking as it lasted.) \'Then the Dormouse again, so she began again: \'Ou est ma chatte?\' which was the first minute or two, and the executioner myself,\' said the Duck: \'it\'s generally.\"}', 1, '2021-11-14 06:03:24', '2021-11-14 06:03:24'),
(30, '{\"en\":\"Quo nisi autem pariatur aut tempore officiis error tenetur. Voluptate similique consequatur odio.\"}', '{\"en\":\"Hatter was the Rabbit say to itself \'Then I\'ll go round a deal too far off to trouble myself about you: you must manage the best cat in the wood, \'is to grow up any more if you\'d like it very nice.\"}', 1, '2021-11-14 06:03:24', '2021-11-14 06:03:24');

-- --------------------------------------------------------

--
-- Table structure for table `faq_categories`
--

CREATE TABLE `faq_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq_categories`
--

INSERT INTO `faq_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"Service\"}', '2021-11-14 06:03:23', '2021-11-14 06:03:23'),
(2, '{\"en\":\"Service\"}', '2021-11-14 06:03:23', '2021-11-14 06:03:23'),
(3, '{\"en\":\"Service\"}', '2021-11-14 06:03:23', '2021-11-14 06:03:23'),
(4, '{\"en\":\"Service\"}', '2021-11-14 06:03:23', '2021-11-14 06:03:23'),
(5, '{\"en\":\"Service\"}', '2021-11-14 06:03:23', '2021-11-14 06:03:23');

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` int(10) UNSIGNED NOT NULL,
  `e_service_id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorite_options`
--

CREATE TABLE `favorite_options` (
  `option_id` int(10) UNSIGNED NOT NULL,
  `favorite_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_provider_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `description`, `e_provider_id`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"<p>khklj<\\/p>\"}', 2, '2021-12-21 19:25:22', '2021-12-21 19:25:22');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `collection_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_properties` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsive_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `size`, `manipulations`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Upload', 1, 'image', 'scaled_image_picker8690581326394197381', 'scaled_image_picker8690581326394197381.jpg', 'image/jpeg', 'public', 1981801, '[]', '{\"uuid\":\"51dec919-b626-4c9e-8a94-e7decac565b4\",\"user_id\":6,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 1, '2021-12-13 18:15:41', '2021-12-13 18:15:43'),
(4, 'App\\Models\\Upload', 3, 'image', 'car-wash', 'car-wash.png', 'image/png', 'public', 18421, '[]', '{\"uuid\":\"a7e3410d-a08a-4486-b174-11fe5c4f4ef7\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 4, '2021-12-13 19:32:51', '2021-12-13 19:32:51'),
(3, 'App\\Models\\Upload', 2, 'image', 'scaled_image_picker769789993441763834', 'scaled_image_picker769789993441763834.jpg', 'image/jpeg', 'public', 1981801, '[]', '{\"uuid\":\"f6e0db48-3ca9-43c1-828b-7e4fab5be311\",\"user_id\":6,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 3, '2021-12-13 18:17:05', '2021-12-13 18:17:06'),
(6, 'App\\Models\\Upload', 4, 'image', 'IMG_8147', 'IMG_8147.JPG', 'image/jpeg', 'public', 67899, '[]', '{\"uuid\":\"32bc7315-1b8e-4f33-a2c0-66fa258a844b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 6, '2021-12-14 06:03:37', '2021-12-14 06:03:37'),
(7, 'App\\Models\\Slide', 1, 'image', 'IMG_8147', 'IMG_8147.JPG', 'image/jpeg', 'public', 67899, '[]', '{\"uuid\":\"32bc7315-1b8e-4f33-a2c0-66fa258a844b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 7, '2021-12-14 06:03:39', '2021-12-14 06:03:39'),
(8, 'App\\Models\\Upload', 5, 'image', 'IMG_8148', 'IMG_8148.JPG', 'image/jpeg', 'public', 53863, '[]', '{\"uuid\":\"ac9fbfe4-fef9-46c9-bf23-645be810c3b3\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 8, '2021-12-14 06:03:57', '2021-12-14 06:03:57'),
(9, 'App\\Models\\Slide', 2, 'image', 'IMG_8148', 'IMG_8148.JPG', 'image/jpeg', 'public', 53863, '[]', '{\"uuid\":\"ac9fbfe4-fef9-46c9-bf23-645be810c3b3\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 9, '2021-12-14 06:03:58', '2021-12-14 06:03:58'),
(10, 'App\\Models\\Upload', 6, 'image', 'IMG_8149', 'IMG_8149.JPG', 'image/jpeg', 'public', 69827, '[]', '{\"uuid\":\"3d9a8133-2cf8-4ff5-b168-3404f66d9389\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 10, '2021-12-14 06:04:24', '2021-12-14 06:04:24'),
(12, 'App\\Models\\Upload', 7, 'image', 'WhatsApp Image 2021-11-17 at 3.41.46 PM', 'WhatsApp-Image-2021-11-17-at-3.41.46-PM.jpeg', 'image/jpeg', 'public', 17400, '[]', '{\"uuid\":\"e5166631-4f71-4dc5-8f46-80079445f5b9\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 11, '2021-12-14 06:06:43', '2021-12-14 06:06:43'),
(13, 'App\\Models\\Slide', 3, 'image', 'WhatsApp Image 2021-11-17 at 3.41.46 PM', 'WhatsApp-Image-2021-11-17-at-3.41.46-PM.jpeg', 'image/jpeg', 'public', 17400, '[]', '{\"uuid\":\"e5166631-4f71-4dc5-8f46-80079445f5b9\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 12, '2021-12-14 06:06:46', '2021-12-14 06:06:46'),
(14, 'App\\Models\\Upload', 8, 'app_logo', 'Icon-Design-Ios', 'Icon-Design-Ios.png', 'image/png', 'public', 40510, '[]', '{\"uuid\":\"0f62c9ca-8177-46f8-b8c5-70805a86bc89\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 13, '2021-12-14 06:41:57', '2021-12-14 06:41:57'),
(15, 'App\\Models\\Upload', 9, 'image', 'accounting (1)', 'accounting-(1).png', 'image/png', 'public', 12744, '[]', '{\"uuid\":\"542592a2-555a-4619-949c-e9d06bceb74b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 14, '2021-12-14 18:19:54', '2021-12-14 18:19:54'),
(16, 'App\\Models\\Upload', 10, 'image', 'alarm and home security systems', 'alarm-and-home-security-systems.png', 'image/png', 'public', 11120, '[]', '{\"uuid\":\"5c993ca9-796b-49c4-b951-c639619173db\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 15, '2021-12-14 18:22:49', '2021-12-14 18:22:49'),
(343, 'App\\Models\\Upload', 181, 'image', 'scaled_image_picker2743999447530231885', 'scaled_image_picker2743999447530231885.jpg', 'image/jpeg', 'public', 61889, '[]', '{\"uuid\":\"566a935e-276e-48fd-924d-6c264e549d1c\",\"user_id\":12,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 337, '2021-12-25 01:16:47', '2021-12-25 01:16:47'),
(19, 'App\\Models\\Upload', 11, 'image', 'alarm and home security systems', 'alarm-and-home-security-systems.png', 'image/png', 'public', 11120, '[]', '{\"uuid\":\"a26c9364-3e2d-481d-85aa-445d725e9473\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 17, '2021-12-14 18:24:13', '2021-12-14 18:24:14'),
(234, 'App\\Models\\Upload', 124, 'image', 'home (1)', 'home-(1).png', 'image/png', 'public', 19451, '[]', '{\"uuid\":\"8c2fad57-04b9-472a-97d6-3931726ff355\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 232, '2021-12-20 02:35:09', '2021-12-20 02:35:09'),
(21, 'App\\Models\\Upload', 12, 'image', 'appliance Repair', 'appliance-Repair.png', 'image/png', 'public', 17468, '[]', '{\"uuid\":\"71652260-0834-4d9f-8ec9-68e983dc6e3c\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 19, '2021-12-14 18:24:42', '2021-12-14 18:24:43'),
(259, 'App\\Models\\EService', 50, 'image', 'appliance Repair', 'appliance-Repair.png', 'image/png', 'public', 17468, '[]', '{\"uuid\":\"f17b2618-e6af-4c71-801f-900186d42da6\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 257, '2021-12-20 18:30:47', '2021-12-20 18:30:47'),
(23, 'App\\Models\\Upload', 13, 'image', 'audio (2)', 'audio-(2).png', 'image/png', 'public', 17271, '[]', '{\"uuid\":\"4bd7aca9-5a05-44f1-be48-63750b780dcb\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 21, '2021-12-14 18:25:13', '2021-12-14 18:25:13'),
(252, 'App\\Models\\Upload', 135, 'image', 'bakery (1)', 'bakery-(1).png', 'image/png', 'public', 14906, '[]', '{\"uuid\":\"4e78b6fa-888c-4c9f-ad76-390950619e9e\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 250, '2021-12-20 18:29:01', '2021-12-20 18:29:01'),
(25, 'App\\Models\\Upload', 14, 'image', 'child care  & baby sitting', 'child-care--&-baby-sitting.png', 'image/png', 'public', 21572, '[]', '{\"uuid\":\"398d9a73-3f3a-4805-b7c8-bd1abe3c8ebc\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 23, '2021-12-14 18:26:35', '2021-12-14 18:26:35'),
(26, 'App\\Models\\Category', 8, 'image', 'child care  & baby sitting', 'child-care--&-baby-sitting.png', 'image/png', 'public', 21572, '[]', '{\"uuid\":\"398d9a73-3f3a-4805-b7c8-bd1abe3c8ebc\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 24, '2021-12-14 18:26:43', '2021-12-14 18:26:43'),
(27, 'App\\Models\\Upload', 15, 'image', 'bakery (1)', 'bakery-(1).png', 'image/png', 'public', 14906, '[]', '{\"uuid\":\"ce10ec68-dc53-45e3-a888-02930b02e6c2\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 25, '2021-12-14 18:27:06', '2021-12-14 18:27:06'),
(276, 'App\\Models\\Upload', 147, 'image', 'cake', 'cake.png', 'image/png', 'public', 33293, '[]', '{\"uuid\":\"3b344c67-1617-45e4-a53c-4ddbfcaf0f4e\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 274, '2021-12-20 21:48:00', '2021-12-20 21:48:01'),
(29, 'App\\Models\\Upload', 16, 'image', 'barber', 'barber.png', 'image/png', 'public', 13532, '[]', '{\"uuid\":\"88c80eb1-dd2b-4e18-8835-d93b1db23855\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 27, '2021-12-14 18:27:36', '2021-12-14 18:27:36'),
(280, 'App\\Models\\Upload', 149, 'image', 'barber (1)', 'barber-(1).png', 'image/png', 'public', 10624, '[]', '{\"uuid\":\"243b0fa9-b247-4a0d-bdf1-144e8ed73fa6\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 278, '2021-12-21 14:48:21', '2021-12-21 14:48:21'),
(31, 'App\\Models\\Upload', 17, 'image', 'bartender-mixing-drink', 'bartender-mixing-drink.jpg', 'image/jpeg', 'public', 7186684, '[]', '{\"uuid\":\"f855ccba-3eea-4dca-9d29-eb2b4b577803\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 29, '2021-12-14 18:28:22', '2021-12-14 18:28:23'),
(32, 'App\\Models\\Upload', 18, 'image', 'bartender', 'bartender.png', 'image/png', 'public', 18711, '[]', '{\"uuid\":\"536fa595-26bc-43cc-b424-4209d338ea77\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 30, '2021-12-14 18:28:47', '2021-12-14 18:28:47'),
(271, 'App\\Models\\Upload', 144, 'image', 'sign (1)', 'sign-(1).png', 'image/png', 'public', 63072, '[]', '{\"uuid\":\"4caa0346-517a-4cfb-ae75-21cb52b9ff2b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 269, '2021-12-20 18:37:24', '2021-12-20 18:37:25'),
(34, 'App\\Models\\Upload', 19, 'image', 'blilnds and shutters', 'blilnds-and-shutters.png', 'image/png', 'public', 5110, '[]', '{\"uuid\":\"53d4dafb-4f6a-40a8-8a07-38a146425768\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 32, '2021-12-14 18:29:22', '2021-12-14 18:29:22'),
(258, 'App\\Models\\Upload', 138, 'image', 'appliance Repair', 'appliance-Repair.png', 'image/png', 'public', 17468, '[]', '{\"uuid\":\"f17b2618-e6af-4c71-801f-900186d42da6\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 256, '2021-12-20 18:30:46', '2021-12-20 18:30:46'),
(36, 'App\\Models\\Upload', 20, 'image', 'Bounce house rental', 'Bounce-house-rental.png', 'image/png', 'public', 15846, '[]', '{\"uuid\":\"09da9620-e037-446b-bc3b-c11b99445165\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 34, '2021-12-14 18:29:51', '2021-12-14 18:29:51'),
(264, 'App\\Models\\Upload', 141, 'image', 'appliance Repair', 'appliance-Repair.png', 'image/png', 'public', 17468, '[]', '{\"uuid\":\"ada5153b-c8cd-4a32-a121-a139d9fd1051\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 262, '2021-12-20 18:33:54', '2021-12-20 18:33:54'),
(38, 'App\\Models\\Upload', 21, 'image', 'caregiver', 'caregiver.png', 'image/png', 'public', 18120, '[]', '{\"uuid\":\"f198f16d-6766-45f3-bc27-974ae7b24241\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 36, '2021-12-14 18:31:15', '2021-12-14 18:31:15'),
(281, 'App\\Models\\Category', 10, 'image', 'barber (1)', 'barber-(1).png', 'image/png', 'public', 10624, '[]', '{\"uuid\":\"243b0fa9-b247-4a0d-bdf1-144e8ed73fa6\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 279, '2021-12-21 14:48:24', '2021-12-21 14:48:24'),
(40, 'App\\Models\\Upload', 22, 'image', 'carpet-cleaner', 'carpet-cleaner.png', 'image/png', 'public', 21849, '[]', '{\"uuid\":\"41315093-09fd-401c-919a-146a959dd31f\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 38, '2021-12-14 18:31:59', '2021-12-14 18:31:59'),
(265, 'App\\Models\\EService', 46, 'image', 'appliance Repair', 'appliance-Repair.png', 'image/png', 'public', 17468, '[]', '{\"uuid\":\"ada5153b-c8cd-4a32-a121-a139d9fd1051\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 263, '2021-12-20 18:33:56', '2021-12-20 18:33:56'),
(42, 'App\\Models\\Upload', 23, 'image', 'catering', 'catering.png', 'image/png', 'public', 15260, '[]', '{\"uuid\":\"dbf6fe1a-e818-4d2b-a43d-4a40b684880e\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 40, '2021-12-14 18:32:35', '2021-12-14 18:32:35'),
(263, 'App\\Models\\EService', 52, 'image', 'barber', 'barber.png', 'image/png', 'public', 13532, '[]', '{\"uuid\":\"555e0034-cc80-473a-b15d-115c069a3ad3\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 261, '2021-12-20 18:33:25', '2021-12-20 18:33:25'),
(44, 'App\\Models\\Upload', 24, 'image', 'car-wash (1)', 'car-wash-(1).png', 'image/png', 'public', 18421, '[]', '{\"uuid\":\"5252a075-5b30-47b8-8f36-6704628b970f\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 42, '2021-12-14 18:33:02', '2021-12-14 18:33:02'),
(206, 'App\\Models\\Upload', 110, 'image', 'car (1)', 'car-(1).png', 'image/png', 'public', 15326, '[]', '{\"uuid\":\"f1b85155-c03f-4495-bfd9-283dc798d174\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 204, '2021-12-20 00:50:28', '2021-12-20 00:50:28'),
(46, 'App\\Models\\Upload', 25, 'image', 'house cleaning (1)', 'house-cleaning-(1).png', 'image/png', 'public', 20393, '[]', '{\"uuid\":\"1783dd39-c1bd-4e36-9484-f53b4975c0ce\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 44, '2021-12-14 18:35:06', '2021-12-14 18:35:06'),
(210, 'App\\Models\\Upload', 112, 'image', 'cleaning', 'cleaning.png', 'image/png', 'public', 23018, '[]', '{\"uuid\":\"63c6adf5-56c7-454c-95f0-3db92709df95\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 208, '2021-12-20 00:52:26', '2021-12-20 00:52:26'),
(48, 'App\\Models\\Upload', 26, 'image', 'Chimney cleaning', 'Chimney-cleaning.png', 'image/png', 'public', 19876, '[]', '{\"uuid\":\"d486d1d6-8319-4872-965f-1493f40ba1c8\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 46, '2021-12-14 18:35:38', '2021-12-14 18:35:38'),
(256, 'App\\Models\\Upload', 137, 'image', 'bartender', 'bartender.png', 'image/png', 'public', 18711, '[]', '{\"uuid\":\"bfd18139-d52a-47ee-87a7-11d2b2b5de95\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 254, '2021-12-20 18:30:18', '2021-12-20 18:30:18'),
(50, 'App\\Models\\Upload', 27, 'image', 'crane', 'crane.png', 'image/png', 'public', 13919, '[]', '{\"uuid\":\"6835a41c-bbd8-4d3e-a7d9-05002ed864a9\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 48, '2021-12-14 18:36:46', '2021-12-14 18:36:46'),
(238, 'App\\Models\\Upload', 126, 'image', 'helmet (1)', 'helmet-(1).png', 'image/png', 'public', 44082, '[]', '{\"uuid\":\"ecb6c3ce-3476-4d89-aff9-ea37e7bd53e2\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 236, '2021-12-20 03:03:21', '2021-12-20 03:03:21'),
(52, 'App\\Models\\Upload', 28, 'image', 'dj', 'dj.png', 'image/png', 'public', 15428, '[]', '{\"uuid\":\"37009ae6-e502-4eb1-8669-ce2d8ea5df9a\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 50, '2021-12-14 18:37:18', '2021-12-14 18:37:18'),
(262, 'App\\Models\\Upload', 140, 'image', 'barber', 'barber.png', 'image/png', 'public', 13532, '[]', '{\"uuid\":\"555e0034-cc80-473a-b15d-115c069a3ad3\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 260, '2021-12-20 18:32:10', '2021-12-20 18:32:10'),
(54, 'App\\Models\\Upload', 29, 'image', 'day labor', 'day-labor.png', 'image/png', 'public', 20603, '[]', '{\"uuid\":\"5a4db359-eeeb-4245-950d-04f1ab610c27\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 52, '2021-12-14 18:37:55', '2021-12-14 18:37:55'),
(212, 'App\\Models\\Upload', 113, 'image', 'plumber', 'plumber.png', 'image/png', 'public', 55443, '[]', '{\"uuid\":\"4d02732c-2ca5-4d55-bd2a-c03ca81fb57a\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 210, '2021-12-20 00:55:06', '2021-12-20 00:55:06'),
(56, 'App\\Models\\Upload', 30, 'image', 'doctor', 'doctor.png', 'image/png', 'public', 14624, '[]', '{\"uuid\":\"c2bc6492-94b4-491e-baba-b0dbbfd96983\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 54, '2021-12-14 18:38:30', '2021-12-14 18:38:30'),
(257, 'App\\Models\\EService', 47, 'image', 'bartender', 'bartender.png', 'image/png', 'public', 18711, '[]', '{\"uuid\":\"bfd18139-d52a-47ee-87a7-11d2b2b5de95\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 255, '2021-12-20 18:30:31', '2021-12-20 18:30:31'),
(58, 'App\\Models\\Upload', 31, 'image', 'electrician', 'electrician.png', 'image/png', 'public', 22857, '[]', '{\"uuid\":\"c1979096-5025-4aea-9f27-a9bec03e6ef1\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 56, '2021-12-14 18:38:59', '2021-12-14 18:38:59'),
(254, 'App\\Models\\Upload', 136, 'image', 'car-wash', 'car-wash.png', 'image/png', 'public', 18421, '[]', '{\"uuid\":\"5b56c064-715b-4882-884b-1613d7f56a4a\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 252, '2021-12-20 18:29:25', '2021-12-20 18:29:25'),
(60, 'App\\Models\\Upload', 32, 'image', 'Electronic repair', 'Electronic-repair.png', 'image/png', 'public', 23538, '[]', '{\"uuid\":\"9f592968-956f-434c-98d7-1803763e3fee\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 58, '2021-12-14 18:39:34', '2021-12-14 18:39:34'),
(216, 'App\\Models\\Upload', 115, 'image', 'repairing', 'repairing.png', 'image/png', 'public', 44530, '[]', '{\"uuid\":\"0f6811c2-d63b-44a1-9802-ecc0d27c5d4f\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 214, '2021-12-20 00:57:20', '2021-12-20 00:57:20'),
(62, 'App\\Models\\Upload', 33, 'image', 'embroidery', 'embroidery.png', 'image/png', 'public', 16716, '[]', '{\"uuid\":\"d9a00e34-a0ff-4b93-bce5-b475b0c74d79\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 60, '2021-12-14 18:40:08', '2021-12-14 18:40:08'),
(278, 'App\\Models\\Upload', 148, 'image', 'bartender-mixing-drink (1)', 'bartender-mixing-drink-(1).jpg', 'image/jpeg', 'public', 7186684, '[]', '{\"uuid\":\"fa103072-5254-41be-9c42-cfa69f29216a\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 276, '2021-12-21 14:31:55', '2021-12-21 14:31:57'),
(64, 'App\\Models\\Upload', 34, 'image', 'engineer', 'engineer.png', 'image/png', 'public', 12770, '[]', '{\"uuid\":\"ed60d069-c08e-4fb4-b558-d923b29a5891\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 62, '2021-12-14 18:40:32', '2021-12-14 18:40:32'),
(66, 'App\\Models\\Upload', 35, 'image', 'engraving', 'engraving.png', 'image/png', 'public', 14248, '[]', '{\"uuid\":\"17393dca-e40b-4580-bc14-3b1542c15aed\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 64, '2021-12-14 18:45:54', '2021-12-14 18:45:54'),
(209, 'App\\Models\\Category', 69, 'image', 'house', 'house.png', 'image/png', 'public', 22949, '[]', '{\"uuid\":\"127ad701-4733-48f9-b308-3e4333a5ea03\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 207, '2021-12-20 00:51:53', '2021-12-20 00:51:53'),
(68, 'App\\Models\\Upload', 36, 'image', 'epoxy floors and stainging', 'epoxy-floors-and-stainging.png', 'image/png', 'public', 8449, '[]', '{\"uuid\":\"3c676d4f-8dc8-4214-85bf-03cbb0698833\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 66, '2021-12-14 18:46:56', '2021-12-14 18:46:56'),
(279, 'App\\Models\\Category', 118, 'image', 'bartender-mixing-drink (1)', 'bartender-mixing-drink-(1).jpg', 'image/jpeg', 'public', 7186684, '[]', '{\"uuid\":\"fa103072-5254-41be-9c42-cfa69f29216a\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 277, '2021-12-21 14:32:03', '2021-12-21 14:32:03'),
(70, 'App\\Models\\Upload', 37, 'image', 'esthetician', 'esthetician.png', 'image/png', 'public', 20027, '[]', '{\"uuid\":\"4f665a2c-5abe-453f-8136-fcf3351a2ad0\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 68, '2021-12-14 18:47:27', '2021-12-14 18:47:27'),
(207, 'App\\Models\\Category', 17, 'image', 'car (1)', 'car-(1).png', 'image/png', 'public', 15326, '[]', '{\"uuid\":\"f1b85155-c03f-4495-bfd9-283dc798d174\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 205, '2021-12-20 00:50:31', '2021-12-20 00:50:31'),
(72, 'App\\Models\\Upload', 38, 'image', 'event', 'event.png', 'image/png', 'public', 25140, '[]', '{\"uuid\":\"419b35cc-c512-43e5-aac5-4487771a40b6\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 70, '2021-12-14 18:47:59', '2021-12-14 18:47:59'),
(204, 'App\\Models\\Upload', 109, 'image', 'party', 'party.png', 'image/png', 'public', 45766, '[]', '{\"uuid\":\"d4c8c93b-92e3-4a8c-8dcb-bdc5df10943a\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 202, '2021-12-20 00:49:42', '2021-12-20 00:49:42'),
(74, 'App\\Models\\Upload', 39, 'image', 'Florist', 'Florist.png', 'image/png', 'public', 22877, '[]', '{\"uuid\":\"88f287f0-2232-47d9-b196-8021b93a963c\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 72, '2021-12-14 18:48:18', '2021-12-14 18:48:18'),
(213, 'App\\Models\\Category', 22, 'image', 'plumber', 'plumber.png', 'image/png', 'public', 55443, '[]', '{\"uuid\":\"4d02732c-2ca5-4d55-bd2a-c03ca81fb57a\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 211, '2021-12-20 00:55:14', '2021-12-20 00:55:14'),
(76, 'App\\Models\\Upload', 40, 'image', 'furniture assembly', 'furniture-assembly.png', 'image/png', 'public', 2894, '[]', '{\"uuid\":\"01e7bd66-36e0-4856-9a16-ddaccfa4b804\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 74, '2021-12-14 18:49:38', '2021-12-14 18:49:38'),
(255, 'App\\Models\\EService', 49, 'image', 'car-wash', 'car-wash.png', 'image/png', 'public', 18421, '[]', '{\"uuid\":\"5b56c064-715b-4882-884b-1613d7f56a4a\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 253, '2021-12-20 18:29:27', '2021-12-20 18:29:27'),
(78, 'App\\Models\\Upload', 41, 'image', 'garage (1)', 'garage-(1).png', 'image/png', 'public', 7823, '[]', '{\"uuid\":\"25777719-4656-4977-a0cd-9481553f4a99\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 76, '2021-12-14 18:50:25', '2021-12-14 18:50:25'),
(251, 'App\\Models\\EService', 43, 'image', 'animal training', 'animal-training.png', 'image/png', 'public', 17764, '[]', '{\"uuid\":\"cd9ad334-d0de-40a4-808f-863abb50dd61\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 249, '2021-12-20 18:28:37', '2021-12-20 18:28:37'),
(80, 'App\\Models\\Upload', 42, 'image', 'handyman', 'handyman.png', 'image/png', 'public', 25546, '[]', '{\"uuid\":\"d4a98486-0c45-4922-b7d0-27eafa6ad3b5\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 78, '2021-12-14 18:50:52', '2021-12-14 18:50:52'),
(218, 'App\\Models\\Upload', 116, 'image', 'mechanic (1)', 'mechanic-(1).png', 'image/png', 'public', 26800, '[]', '{\"uuid\":\"e09e0870-8e6a-43b3-8e14-acb1a49b57ae\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 216, '2021-12-20 00:58:06', '2021-12-20 00:58:06'),
(82, 'App\\Models\\Upload', 43, 'image', 'home inspections', 'home-inspections.png', 'image/png', 'public', 13973, '[]', '{\"uuid\":\"38651394-e7f8-4082-9055-0f5cfe1a859c\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 80, '2021-12-14 18:58:28', '2021-12-14 18:58:28'),
(220, 'App\\Models\\Upload', 117, 'image', 'appraisal-form (1)', 'appraisal-form-(1).png', 'image/png', 'public', 24955, '[]', '{\"uuid\":\"e0a3bb0e-6f3a-4fce-8b6f-4ba8c583483d\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 218, '2021-12-20 01:02:10', '2021-12-20 01:02:10'),
(84, 'App\\Models\\Upload', 44, 'image', 'house sitting', 'house-sitting.png', 'image/png', 'public', 14598, '[]', '{\"uuid\":\"85669a37-704a-4c70-aaeb-c7f31ecf2aca\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 82, '2021-12-14 18:59:07', '2021-12-14 18:59:07'),
(250, 'App\\Models\\Upload', 134, 'image', 'animal training', 'animal-training.png', 'image/png', 'public', 17764, '[]', '{\"uuid\":\"cd9ad334-d0de-40a4-808f-863abb50dd61\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 248, '2021-12-20 18:28:37', '2021-12-20 18:28:37'),
(86, 'App\\Models\\Upload', 45, 'image', 'Hvac', 'Hvac.png', 'image/png', 'public', 14523, '[]', '{\"uuid\":\"d1fa32cd-0343-487f-b4c7-39c19f354b4a\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 84, '2021-12-14 18:59:38', '2021-12-14 18:59:38'),
(253, 'App\\Models\\EService', 48, 'image', 'bakery (1)', 'bakery-(1).png', 'image/png', 'public', 14906, '[]', '{\"uuid\":\"4e78b6fa-888c-4c9f-ad76-390950619e9e\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 251, '2021-12-20 18:29:08', '2021-12-20 18:29:08'),
(88, 'App\\Models\\Upload', 46, 'image', 'janitorial', 'janitorial.png', 'image/png', 'public', 25773, '[]', '{\"uuid\":\"0084f2b1-ed12-45e6-9799-878afcd97449\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 86, '2021-12-14 19:00:14', '2021-12-14 19:00:15'),
(270, 'App\\Models\\EService', 45, 'image', 'accounting (1)', 'accounting-(1).png', 'image/png', 'public', 12744, '[]', '{\"uuid\":\"367fe5fb-dbc9-43b3-beda-2c18c0d1fa9e\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 268, '2021-12-20 18:35:04', '2021-12-20 18:35:04'),
(90, 'App\\Models\\Upload', 47, 'image', 'junk and waste removal', 'junk-and-waste-removal.png', 'image/png', 'public', 4058, '[]', '{\"uuid\":\"40ecfe3e-1c53-4085-8ce6-b21d875fbce4\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 88, '2021-12-14 19:00:47', '2021-12-14 19:00:47'),
(269, 'App\\Models\\Upload', 143, 'image', 'accounting (1)', 'accounting-(1).png', 'image/png', 'public', 12744, '[]', '{\"uuid\":\"367fe5fb-dbc9-43b3-beda-2c18c0d1fa9e\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 267, '2021-12-20 18:35:02', '2021-12-20 18:35:02'),
(92, 'App\\Models\\Upload', 48, 'image', 'lawyer', 'lawyer.png', 'image/png', 'public', 23257, '[]', '{\"uuid\":\"82b8b0c3-e086-413a-a3c7-497ca8fcc62f\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 90, '2021-12-14 19:01:30', '2021-12-14 19:01:30'),
(202, 'App\\Models\\Upload', 108, 'image', 'compliant', 'compliant.png', 'image/png', 'public', 19625, '[]', '{\"uuid\":\"072db4e8-6f39-4d75-8c2d-b36ef5cf605d\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 200, '2021-12-20 00:48:09', '2021-12-20 00:48:09'),
(94, 'App\\Models\\Upload', 49, 'image', 'lawn', 'lawn.png', 'image/png', 'public', 17407, '[]', '{\"uuid\":\"f5b11454-8fbb-41aa-bc83-179410d88dd8\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 92, '2021-12-14 19:01:55', '2021-12-14 19:01:55'),
(268, 'App\\Models\\EService', 44, 'image', 'accounting (1)', 'accounting-(1).png', 'image/png', 'public', 12744, '[]', '{\"uuid\":\"98649999-279f-4db4-8060-af5bc735517e\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 266, '2021-12-20 18:34:24', '2021-12-20 18:34:24'),
(96, 'App\\Models\\Upload', 50, 'image', 'Lessons', 'Lessons.png', 'image/png', 'public', 13137, '[]', '{\"uuid\":\"bc2170af-40ac-4eb0-b8c0-c36abfc5696a\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 94, '2021-12-14 19:02:30', '2021-12-14 19:02:30'),
(222, 'App\\Models\\Upload', 118, 'image', 'education', 'education.png', 'image/png', 'public', 30286, '[]', '{\"uuid\":\"9de09864-0589-4d62-8b34-ef61d2898233\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 220, '2021-12-20 01:05:06', '2021-12-20 01:05:06'),
(98, 'App\\Models\\Upload', 51, 'image', 'make up artist', 'make-up-artist.png', 'image/png', 'public', 22444, '[]', '{\"uuid\":\"f3fbe899-7fd7-484b-a062-4d17f731c82b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 96, '2021-12-14 19:03:37', '2021-12-14 19:03:37'),
(226, 'App\\Models\\Upload', 120, 'image', 'makeup', 'makeup.png', 'image/png', 'public', 57164, '[]', '{\"uuid\":\"55cd8e5e-410f-4b06-89ef-3ca216e2da90\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 224, '2021-12-20 01:17:59', '2021-12-20 01:17:59'),
(100, 'App\\Models\\Upload', 52, 'image', 'massage', 'massage.png', 'image/png', 'public', 27890, '[]', '{\"uuid\":\"6b547889-7831-43f0-b44f-ad2aefdafe03\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 98, '2021-12-14 19:04:32', '2021-12-14 19:04:33'),
(228, 'App\\Models\\Upload', 121, 'image', 'massage (1)', 'massage-(1).png', 'image/png', 'public', 52716, '[]', '{\"uuid\":\"4d92989b-7c45-47c3-93f4-e237fcc621d5\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 226, '2021-12-20 01:19:34', '2021-12-20 01:19:34'),
(102, 'App\\Models\\Upload', 53, 'image', 'vehicle', 'vehicle.png', 'image/png', 'public', 13686, '[]', '{\"uuid\":\"dfb3f701-5675-4e2c-82a5-721547382068\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 100, '2021-12-14 19:06:50', '2021-12-14 19:06:50'),
(230, 'App\\Models\\Upload', 122, 'image', 'car (2)', 'car-(2).png', 'image/png', 'public', 21108, '[]', '{\"uuid\":\"52eea7bc-cda6-4fa6-991c-b33c0e76da34\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 228, '2021-12-20 01:20:19', '2021-12-20 01:20:20'),
(104, 'App\\Models\\Upload', 54, 'image', 'laundry-service', 'laundry-service.png', 'image/png', 'public', 18664, '[]', '{\"uuid\":\"af81445a-4498-4e48-955a-611d6a6a105c\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 102, '2021-12-14 19:08:04', '2021-12-14 19:08:04'),
(247, 'App\\Models\\Category', 148, 'image', 'teaching', 'teaching.png', 'image/png', 'public', 18639, '[]', '{\"uuid\":\"f61d0d3f-1bad-4103-b26b-783c06e3c966\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 245, '2021-12-20 16:07:07', '2021-12-20 16:07:07'),
(106, 'App\\Models\\Upload', 55, 'image', 'locksmith', 'locksmith.png', 'image/png', 'public', 21293, '[]', '{\"uuid\":\"7388c9e6-af27-4622-9eff-8c427f73342b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 104, '2021-12-14 19:08:23', '2021-12-14 19:08:23'),
(108, 'App\\Models\\Upload', 56, 'image', 'notary', 'notary.png', 'image/png', 'public', 15618, '[]', '{\"uuid\":\"f0930dbe-f838-4f15-9c53-da5d9e11c349\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 106, '2021-12-14 19:08:40', '2021-12-14 19:08:40'),
(248, 'App\\Models\\Upload', 133, 'image', 'Icon-Design-Ios (1)', 'Icon-Design-Ios-(1).png', 'image/png', 'public', 1390991, '[]', '{\"uuid\":\"19c0a091-a84b-43e3-9db4-d4f761f5485f\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 246, '2021-12-20 18:27:32', '2021-12-20 18:27:35'),
(110, 'App\\Models\\Upload', 57, 'image', 'mold removal (2)', 'mold-removal-(2).png', 'image/png', 'public', 27634, '[]', '{\"uuid\":\"710c946b-37be-40a9-a505-491abb605530\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 108, '2021-12-14 19:09:06', '2021-12-14 19:09:06'),
(246, 'App\\Models\\Upload', 132, 'image', 'teaching', 'teaching.png', 'image/png', 'public', 18639, '[]', '{\"uuid\":\"f61d0d3f-1bad-4103-b26b-783c06e3c966\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 244, '2021-12-20 16:06:57', '2021-12-20 16:06:57'),
(112, 'App\\Models\\Upload', 58, 'image', 'nurse', 'nurse.png', 'image/png', 'public', 17834, '[]', '{\"uuid\":\"aa5eeba9-6fa8-4566-82c5-48facdbab2b2\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 110, '2021-12-14 19:10:28', '2021-12-14 19:10:28'),
(114, 'App\\Models\\Upload', 59, 'image', 'trainer', 'trainer.png', 'image/png', 'public', 19688, '[]', '{\"uuid\":\"5b434ed9-7e7f-46fe-b2eb-f118362da175\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 112, '2021-12-14 19:11:41', '2021-12-14 19:11:41'),
(232, 'App\\Models\\Upload', 123, 'image', 'tracker', 'tracker.png', 'image/png', 'public', 39912, '[]', '{\"uuid\":\"7cfc01a5-16c0-4176-912c-e650ae1d7565\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 230, '2021-12-20 01:47:19', '2021-12-20 01:47:19'),
(116, 'App\\Models\\Upload', 60, 'image', 'pest-control', 'pest-control.png', 'image/png', 'public', 22293, '[]', '{\"uuid\":\"368acb95-c23a-4cb3-b721-9d054d313095\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 114, '2021-12-14 19:12:05', '2021-12-14 19:12:05'),
(243, 'App\\Models\\Category', 172, 'image', 'household', 'household.png', 'image/png', 'public', 26913, '[]', '{\"uuid\":\"640778f8-0402-4ecd-958b-991c22d313be\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 241, '2021-12-20 15:57:41', '2021-12-20 15:57:41'),
(118, 'App\\Models\\Upload', 61, 'image', 'pet-grooming', 'pet-grooming.png', 'image/png', 'public', 25690, '[]', '{\"uuid\":\"f5e35baf-96f9-4f48-b331-a4dccd9e7143\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 116, '2021-12-14 19:12:22', '2021-12-14 19:12:22'),
(177, 'App\\Models\\Upload', 92, 'image', 'pet-grooming', 'pet-grooming.png', 'image/png', 'public', 25690, '[]', '{\"uuid\":\"7e05bc0e-7c9b-4475-9804-e9eb1f6fb61a\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 175, '2021-12-14 19:57:19', '2021-12-14 19:57:19'),
(120, 'App\\Models\\Upload', 62, 'image', 'animal training', 'animal-training.png', 'image/png', 'public', 12606, '[]', '{\"uuid\":\"1b943b9a-41a6-4a13-8c54-86ca64544dd7\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 118, '2021-12-14 19:13:20', '2021-12-14 19:13:20'),
(121, 'App\\Models\\Upload', 63, 'image', 'animal training (2)', 'animal-training-(2).png', 'image/png', 'public', 17764, '[]', '{\"uuid\":\"a72c0273-444d-4004-a2aa-f0727bf86370\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 119, '2021-12-14 19:13:48', '2021-12-14 19:13:49'),
(241, 'App\\Models\\Category', 196, 'image', 'home (2)', 'home-(2).png', 'image/png', 'public', 20250, '[]', '{\"uuid\":\"fffec658-989b-471a-8d88-d97ce7a7aa00\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 239, '2021-12-20 14:16:16', '2021-12-20 14:16:16'),
(123, 'App\\Models\\Upload', 64, 'image', 'photo-booth', 'photo-booth.png', 'image/png', 'public', 13586, '[]', '{\"uuid\":\"44f49d4f-e0ca-4809-8658-89e978a5698b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 121, '2021-12-14 19:28:36', '2021-12-14 19:28:36'),
(266, 'App\\Models\\Upload', 142, 'image', 'accounting (1)', 'accounting-(1).png', 'image/png', 'public', 12744, '[]', '{\"uuid\":\"98649999-279f-4db4-8060-af5bc735517e\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 264, '2021-12-20 18:34:22', '2021-12-20 18:34:23'),
(125, 'App\\Models\\Upload', 65, 'image', 'photography', 'photography.png', 'image/png', 'public', 18753, '[]', '{\"uuid\":\"825cd63a-1c0a-41d8-bc88-a16be13ec9b0\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 123, '2021-12-14 19:29:02', '2021-12-14 19:29:02'),
(203, 'App\\Models\\Category', 41, 'image', 'compliant', 'compliant.png', 'image/png', 'public', 19625, '[]', '{\"uuid\":\"072db4e8-6f39-4d75-8c2d-b36ef5cf605d\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 201, '2021-12-20 00:48:12', '2021-12-20 00:48:12'),
(127, 'App\\Models\\Upload', 66, 'image', 'physical therpy', 'physical-therpy.png', 'image/png', 'public', 13399, '[]', '{\"uuid\":\"5b5766d5-72c2-4282-9bd7-e26de2713f48\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 125, '2021-12-14 19:32:06', '2021-12-14 19:32:06'),
(239, 'App\\Models\\Category', 20, 'image', 'helmet (1)', 'helmet-(1).png', 'image/png', 'public', 44082, '[]', '{\"uuid\":\"ecb6c3ce-3476-4d89-aff9-ea37e7bd53e2\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 237, '2021-12-20 03:03:24', '2021-12-20 03:03:24'),
(129, 'App\\Models\\Upload', 67, 'image', 'plumbing', 'plumbing.png', 'image/png', 'public', 8491, '[]', '{\"uuid\":\"57bb8319-78ef-454e-8e96-103a65f333bd\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 127, '2021-12-14 19:32:32', '2021-12-14 19:32:32'),
(342, 'App\\Models\\Upload', 180, 'image', 'scaled_image_picker7097639785171691236', 'scaled_image_picker7097639785171691236.jpg', 'image/jpeg', 'public', 61889, '[]', '{\"uuid\":\"172eb17d-bdfc-4035-a7bb-57e1e3be56a7\",\"user_id\":12,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 336, '2021-12-25 01:16:13', '2021-12-25 01:16:13'),
(131, 'App\\Models\\Upload', 68, 'image', 'pool spa hot tub services', 'pool-spa-hot-tub-services.png', 'image/png', 'public', 19006, '[]', '{\"uuid\":\"6fc078ed-0b4f-4c25-a161-f7a9f51cf6c1\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 129, '2021-12-14 19:33:07', '2021-12-14 19:33:07'),
(233, 'App\\Models\\Category', 53, 'image', 'tracker', 'tracker.png', 'image/png', 'public', 39912, '[]', '{\"uuid\":\"7cfc01a5-16c0-4176-912c-e650ae1d7565\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 231, '2021-12-20 01:47:22', '2021-12-20 01:47:22'),
(133, 'App\\Models\\Upload', 69, 'image', 'porta potty', 'porta-potty.png', 'image/png', 'public', 17663, '[]', '{\"uuid\":\"acbd5053-6605-43aa-a3fe-e7a977cbb224\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 131, '2021-12-14 19:33:54', '2021-12-14 19:33:54'),
(236, 'App\\Models\\Upload', 125, 'image', 'car-wash-detailing-station', 'car-wash-detailing-station.jpg', 'image/jpeg', 'public', 3396021, '[]', '{\"uuid\":\"d116237a-7e4a-42a4-b346-4bbd94e4c408\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 234, '2021-12-20 02:43:25', '2021-12-20 02:43:26'),
(135, 'App\\Models\\Upload', 70, 'image', 'pressure-washer', 'pressure-washer.png', 'image/png', 'public', 12902, '[]', '{\"uuid\":\"9fb96643-7936-493d-a04d-5360f38d9c9a\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 133, '2021-12-14 19:38:48', '2021-12-14 19:38:48'),
(237, 'App\\Models\\Category', 175, 'image', 'car-wash-detailing-station', 'car-wash-detailing-station.jpg', 'image/jpeg', 'public', 3396021, '[]', '{\"uuid\":\"d116237a-7e4a-42a4-b346-4bbd94e4c408\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 235, '2021-12-20 02:43:25', '2021-12-20 02:43:26'),
(137, 'App\\Models\\Upload', 71, 'image', 'road side assistance (2)', 'road-side-assistance-(2).png', 'image/png', 'public', 24351, '[]', '{\"uuid\":\"a0afee4a-28a5-4b55-aeb1-a6ff38df15d6\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 135, '2021-12-14 19:39:11', '2021-12-14 19:39:11'),
(244, 'App\\Models\\Upload', 131, 'image', 'operator', 'operator.png', 'image/png', 'public', 29094, '[]', '{\"uuid\":\"efff9a98-179e-4565-a852-bd6e818d905b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 242, '2021-12-20 16:02:36', '2021-12-20 16:02:36'),
(245, 'App\\Models\\Category', 65, 'image', 'operator', 'operator.png', 'image/png', 'public', 29094, '[]', '{\"uuid\":\"efff9a98-179e-4565-a852-bd6e818d905b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 243, '2021-12-20 16:02:38', '2021-12-20 16:02:38'),
(139, 'App\\Models\\Upload', 72, 'image', 'salon', 'salon.png', 'image/png', 'public', 26794, '[]', '{\"uuid\":\"acaf8853-c488-43e4-b411-348d8e5ed0e1\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 137, '2021-12-14 19:39:31', '2021-12-14 19:39:31'),
(205, 'App\\Models\\Category', 31, 'image', 'party', 'party.png', 'image/png', 'public', 45766, '[]', '{\"uuid\":\"d4c8c93b-92e3-4a8c-8dcb-bdc5df10943a\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 203, '2021-12-20 00:49:45', '2021-12-20 00:49:45'),
(141, 'App\\Models\\Upload', 73, 'image', 'security guards', 'security-guards.png', 'image/png', 'public', 20090, '[]', '{\"uuid\":\"1d1de124-1e27-4aa6-bd43-86f2a040b39f\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 139, '2021-12-14 19:42:40', '2021-12-14 19:42:41'),
(231, 'App\\Models\\Category', 46, 'image', 'car (2)', 'car-(2).png', 'image/png', 'public', 21108, '[]', '{\"uuid\":\"52eea7bc-cda6-4fa6-991c-b33c0e76da34\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 229, '2021-12-20 01:20:22', '2021-12-20 01:20:22'),
(143, 'App\\Models\\Upload', 74, 'image', 'sign', 'sign.png', 'image/png', 'public', 10066, '[]', '{\"uuid\":\"29770ff3-4df8-465e-be4d-d882166480fa\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 141, '2021-12-14 19:43:04', '2021-12-14 19:43:04'),
(145, 'App\\Models\\Upload', 75, 'image', 'solar installation', 'solar-installation.png', 'image/png', 'public', 18697, '[]', '{\"uuid\":\"aca695d7-9a24-4e42-a2d2-1633ec17c5a6\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 143, '2021-12-14 19:43:35', '2021-12-14 19:43:35'),
(146, 'App\\Models\\Upload', 76, 'image', 'solar install', 'solar-install.png', 'image/png', 'public', 17849, '[]', '{\"uuid\":\"d05ada59-27e5-4612-894e-bc0fb1488a25\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 144, '2021-12-14 19:44:49', '2021-12-14 19:44:49'),
(147, 'App\\Models\\Upload', 77, 'image', 'solar installation', 'solar-installation.png', 'image/png', 'public', 18697, '[]', '{\"uuid\":\"814e83ea-f343-4bd6-9d80-4b4567c74b0d\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 145, '2021-12-14 19:45:13', '2021-12-14 19:45:13'),
(188, 'App\\Models\\Upload', 98, 'image', 'solar-house', 'solar-house.png', 'image/png', 'public', 7201, '[]', '{\"uuid\":\"5a7d32aa-014f-456f-b4cd-1feb7f32c8d4\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 186, '2021-12-15 17:49:36', '2021-12-15 17:49:36'),
(149, 'App\\Models\\Upload', 78, 'image', 'solar attic fan', 'solar-attic-fan.png', 'image/png', 'public', 24658, '[]', '{\"uuid\":\"f2883523-6a93-43c3-b411-7a8a6df2b516\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 147, '2021-12-14 19:45:30', '2021-12-14 19:45:30'),
(277, 'App\\Models\\Category', 9, 'image', 'cake', 'cake.png', 'image/png', 'public', 33293, '[]', '{\"uuid\":\"3b344c67-1617-45e4-a53c-4ddbfcaf0f4e\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 275, '2021-12-20 21:49:20', '2021-12-20 21:49:20'),
(151, 'App\\Models\\Upload', 79, 'image', 'solar water heater', 'solar-water-heater.png', 'image/png', 'public', 14770, '[]', '{\"uuid\":\"46155219-5346-4dad-977b-31513a83e8d9\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 149, '2021-12-14 19:46:46', '2021-12-14 19:46:46'),
(275, 'App\\Models\\Category', 179, 'image', 'plumbing (1)', 'plumbing-(1).png', 'image/png', 'public', 13229, '[]', '{\"uuid\":\"84663fc1-0a2f-4e75-b37c-db6c9ef88b1d\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 273, '2021-12-20 18:58:11', '2021-12-20 18:58:11'),
(153, 'App\\Models\\Upload', 80, 'image', 'solar pool', 'solar-pool.png', 'image/png', 'public', 24357, '[]', '{\"uuid\":\"7c19f117-e3ac-4145-ae61-db331e099229\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 151, '2021-12-14 19:47:57', '2021-12-14 19:47:57'),
(274, 'App\\Models\\Upload', 146, 'image', 'plumbing (1)', 'plumbing-(1).png', 'image/png', 'public', 13229, '[]', '{\"uuid\":\"84663fc1-0a2f-4e75-b37c-db6c9ef88b1d\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 272, '2021-12-20 18:57:44', '2021-12-20 18:57:45'),
(155, 'App\\Models\\Upload', 81, 'image', 'table and chair rental', 'table-and-chair-rental.png', 'image/png', 'public', 11194, '[]', '{\"uuid\":\"307e85f0-0ac3-4716-8195-1d681d3d91ba\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 153, '2021-12-14 19:48:38', '2021-12-14 19:48:38'),
(272, 'App\\Models\\Upload', 145, 'image', 'sign (1)', 'sign-(1).png', 'image/png', 'public', 63072, '[]', '{\"uuid\":\"e696d4c3-d989-4f46-926a-923383e32336\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 270, '2021-12-20 18:37:35', '2021-12-20 18:37:35'),
(157, 'App\\Models\\Upload', 82, 'image', 'Tanning (2)', 'Tanning-(2).png', 'image/png', 'public', 12118, '[]', '{\"uuid\":\"a809500f-670b-47ba-b5af-e3985e81a1c3\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 155, '2021-12-14 19:48:57', '2021-12-14 19:48:57'),
(229, 'App\\Models\\Category', 45, 'image', 'massage (1)', 'massage-(1).png', 'image/png', 'public', 52716, '[]', '{\"uuid\":\"4d92989b-7c45-47c3-93f4-e237fcc621d5\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 227, '2021-12-20 01:19:36', '2021-12-20 01:19:36'),
(159, 'App\\Models\\Upload', 83, 'image', 'vet', 'vet.png', 'image/png', 'public', 27740, '[]', '{\"uuid\":\"66ef5911-16a8-4618-9865-5cd9d1e68144\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 157, '2021-12-14 19:51:24', '2021-12-14 19:51:24'),
(214, 'App\\Models\\Upload', 114, 'image', 'healthcare', 'healthcare.png', 'image/png', 'public', 39041, '[]', '{\"uuid\":\"2da9a5d0-2b5a-40a1-b0b6-11c2596a3057\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 212, '2021-12-20 00:56:12', '2021-12-20 00:56:12'),
(161, 'App\\Models\\Upload', 84, 'image', 'upholstery (2)', 'upholstery-(2).png', 'image/png', 'public', 22219, '[]', '{\"uuid\":\"9d413d66-3589-48a4-addb-46d125b5a2f4\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 159, '2021-12-14 19:52:07', '2021-12-14 19:52:07'),
(227, 'App\\Models\\Category', 44, 'image', 'makeup', 'makeup.png', 'image/png', 'public', 57164, '[]', '{\"uuid\":\"55cd8e5e-410f-4b06-89ef-3ca216e2da90\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 225, '2021-12-20 01:18:02', '2021-12-20 01:18:02'),
(163, 'App\\Models\\Upload', 85, 'image', 'water', 'water.png', 'image/png', 'public', 19871, '[]', '{\"uuid\":\"5ae65b17-3012-4517-8a77-55b9b8d09e1a\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 161, '2021-12-14 19:52:47', '2021-12-14 19:52:47'),
(225, 'App\\Models\\Category', 98, 'image', 'animal-care', 'animal-care.png', 'image/png', 'public', 37521, '[]', '{\"uuid\":\"0dddfefb-0c0d-49e1-9f64-3f3fb990805f\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 223, '2021-12-20 01:15:15', '2021-12-20 01:15:15'),
(165, 'App\\Models\\Upload', 86, 'image', 'wild life removal', 'wild-life-removal.png', 'image/png', 'public', 24342, '[]', '{\"uuid\":\"ca00bbee-2e88-4bd8-af65-120a5c823d72\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 163, '2021-12-14 19:53:20', '2021-12-14 19:53:20'),
(224, 'App\\Models\\Upload', 119, 'image', 'animal-care', 'animal-care.png', 'image/png', 'public', 37521, '[]', '{\"uuid\":\"0dddfefb-0c0d-49e1-9f64-3f3fb990805f\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 222, '2021-12-20 01:15:11', '2021-12-20 01:15:12'),
(167, 'App\\Models\\Upload', 87, 'image', 'welding', 'welding.png', 'image/png', 'public', 9322, '[]', '{\"uuid\":\"0d136baf-76f1-4559-ae84-f42908fd239f\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 165, '2021-12-14 19:53:44', '2021-12-14 19:53:44'),
(223, 'App\\Models\\Category', 43, 'image', 'education', 'education.png', 'image/png', 'public', 30286, '[]', '{\"uuid\":\"9de09864-0589-4d62-8b34-ef61d2898233\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 221, '2021-12-20 01:05:07', '2021-12-20 01:05:07'),
(169, 'App\\Models\\Upload', 88, 'image', 'window tinting', 'window-tinting.png', 'image/png', 'public', 15495, '[]', '{\"uuid\":\"33fa4ff0-1b30-4fa6-883f-c2d206e85b7d\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 167, '2021-12-14 19:54:08', '2021-12-14 19:54:08'),
(221, 'App\\Models\\Category', 36, 'image', 'appraisal-form (1)', 'appraisal-form-(1).png', 'image/png', 'public', 24955, '[]', '{\"uuid\":\"e0a3bb0e-6f3a-4fce-8b6f-4ba8c583483d\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 219, '2021-12-20 01:02:14', '2021-12-20 01:02:14'),
(171, 'App\\Models\\Upload', 89, 'image', 'caulking (2)', 'caulking-(2).png', 'image/png', 'public', 8538, '[]', '{\"uuid\":\"ac36302e-0e7a-4ed4-a435-869be45c6426\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 169, '2021-12-14 19:55:32', '2021-12-14 19:55:33'),
(260, 'App\\Models\\Upload', 139, 'image', 'Bounce house rental', 'Bounce-house-rental.png', 'image/png', 'public', 15846, '[]', '{\"uuid\":\"73b0e362-874a-4ee0-aab2-908458512911\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 258, '2021-12-20 18:31:32', '2021-12-20 18:31:32'),
(173, 'App\\Models\\Upload', 90, 'image', 'painting', 'painting.png', 'image/png', 'public', 6949, '[]', '{\"uuid\":\"495f9e7a-4a11-4d27-822b-9cd69dec8838\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 171, '2021-12-14 19:55:44', '2021-12-14 19:55:44'),
(261, 'App\\Models\\EService', 51, 'image', 'Bounce house rental', 'Bounce-house-rental.png', 'image/png', 'public', 15846, '[]', '{\"uuid\":\"73b0e362-874a-4ee0-aab2-908458512911\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 259, '2021-12-20 18:31:34', '2021-12-20 18:31:34');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `size`, `manipulations`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(175, 'App\\Models\\Upload', 91, 'image', 'dumpster rental', 'dumpster-rental.png', 'image/png', 'public', 10745, '[]', '{\"uuid\":\"9732171a-2c5a-490e-ab08-1cb3d02b10ae\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 173, '2021-12-14 19:56:21', '2021-12-14 19:56:21'),
(219, 'App\\Models\\Category', 35, 'image', 'mechanic (1)', 'mechanic-(1).png', 'image/png', 'public', 26800, '[]', '{\"uuid\":\"e09e0870-8e6a-43b3-8e14-acb1a49b57ae\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 217, '2021-12-20 00:58:11', '2021-12-20 00:58:11'),
(178, 'App\\Models\\Upload', 93, 'image', 'grooming (2) (1)', 'grooming-(2)-(1).png', 'image/png', 'public', 26629, '[]', '{\"uuid\":\"01c661fc-3ac4-457e-9e17-f596f95f42a2\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 176, '2021-12-14 19:57:27', '2021-12-14 19:57:27'),
(242, 'App\\Models\\Upload', 130, 'image', 'household', 'household.png', 'image/png', 'public', 26913, '[]', '{\"uuid\":\"640778f8-0402-4ecd-958b-991c22d313be\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 240, '2021-12-20 15:57:39', '2021-12-20 15:57:39'),
(180, 'App\\Models\\Upload', 94, 'image', 'piercing', 'piercing.png', 'image/png', 'public', 21651, '[]', '{\"uuid\":\"b7bba6e6-f8c7-4deb-89b6-0409f8eca977\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 178, '2021-12-14 20:03:21', '2021-12-14 20:03:21'),
(182, 'App\\Models\\Upload', 95, 'image', 'sitting-dog', 'sitting-dog.png', 'image/png', 'public', 21692, '[]', '{\"uuid\":\"c4a4385b-29fb-4438-a169-56acf5c5e155\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 180, '2021-12-14 20:04:34', '2021-12-14 20:04:34'),
(217, 'App\\Models\\Category', 25, 'image', 'repairing', 'repairing.png', 'image/png', 'public', 44530, '[]', '{\"uuid\":\"0f6811c2-d63b-44a1-9802-ecc0d27c5d4f\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 215, '2021-12-20 00:57:23', '2021-12-20 00:57:23'),
(184, 'App\\Models\\Upload', 96, 'image', 'balloons', 'balloons.png', 'image/png', 'public', 26075, '[]', '{\"uuid\":\"f936fcf9-4c66-478e-86e5-29e9d48620e4\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 182, '2021-12-15 17:46:10', '2021-12-15 17:46:11'),
(267, 'App\\Models\\EService', 44, 'image', 'accounting (1)', 'accounting-(1).png', 'image/png', 'public', 12744, '[]', '{\"uuid\":\"98649999-279f-4db4-8060-af5bc735517e\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 265, '2021-12-20 18:34:24', '2021-12-20 18:34:24'),
(186, 'App\\Models\\Upload', 97, 'image', 'dog', 'dog.png', 'image/png', 'public', 19390, '[]', '{\"uuid\":\"1918f0c3-6db2-4470-b2c8-8eb70fa080af\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 184, '2021-12-15 17:47:13', '2021-12-15 17:47:13'),
(240, 'App\\Models\\Upload', 129, 'image', 'home (2)', 'home-(2).png', 'image/png', 'public', 20250, '[]', '{\"uuid\":\"fffec658-989b-471a-8d88-d97ce7a7aa00\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 238, '2021-12-20 14:16:11', '2021-12-20 14:16:11'),
(208, 'App\\Models\\Upload', 111, 'image', 'house', 'house.png', 'image/png', 'public', 22949, '[]', '{\"uuid\":\"127ad701-4733-48f9-b308-3e4333a5ea03\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 206, '2021-12-20 00:51:50', '2021-12-20 00:51:50'),
(190, 'App\\Models\\Upload', 99, 'image', 'lesson', 'lesson.png', 'image/png', 'public', 14771, '[]', '{\"uuid\":\"c7dd1ce4-a2af-45d8-bcdf-436f3cf41ffc\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 188, '2021-12-15 17:55:07', '2021-12-15 17:55:07'),
(215, 'App\\Models\\Category', 97, 'image', 'healthcare', 'healthcare.png', 'image/png', 'public', 39041, '[]', '{\"uuid\":\"2da9a5d0-2b5a-40a1-b0b6-11c2596a3057\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 213, '2021-12-20 00:56:17', '2021-12-20 00:56:17'),
(192, 'App\\Models\\Upload', 100, 'image', 'solar-panels', 'solar-panels.png', 'image/png', 'public', 17188, '[]', '{\"uuid\":\"40e7cc27-fc30-4e5a-a028-5a8a54a13e0f\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 190, '2021-12-15 18:26:07', '2021-12-15 18:26:07'),
(273, 'App\\Models\\Category', 176, 'image', 'sign (1)', 'sign-(1).png', 'image/png', 'public', 63072, '[]', '{\"uuid\":\"e696d4c3-d989-4f46-926a-923383e32336\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 271, '2021-12-20 18:37:39', '2021-12-20 18:37:39'),
(194, 'App\\Models\\Upload', 101, 'image', 'car', 'car.png', 'image/png', 'public', 24458, '[]', '{\"uuid\":\"6cb871f0-07ae-4d0a-a019-d4bb8fedb532\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 192, '2021-12-15 20:07:45', '2021-12-15 20:07:45'),
(196, 'App\\Models\\Upload', 103, 'image', 'lawn-mower', 'lawn-mower.png', 'image/png', 'public', 25952, '[]', '{\"uuid\":\"ea2e8a53-5fa0-4617-87b1-df72fbd54f99\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 194, '2021-12-15 20:15:22', '2021-12-15 20:15:23'),
(197, 'App\\Models\\Category', 92, 'image', 'lawn-mower', 'lawn-mower.png', 'image/png', 'public', 25952, '[]', '{\"uuid\":\"ea2e8a53-5fa0-4617-87b1-df72fbd54f99\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 195, '2021-12-15 20:15:33', '2021-12-15 20:15:33'),
(198, 'App\\Models\\Upload', 106, 'image', 'dog (1)', 'dog-(1).png', 'image/png', 'public', 41113, '[]', '{\"uuid\":\"c412ebbb-8c1b-4f29-9f88-7fe104b80d32\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 196, '2021-12-15 20:49:30', '2021-12-15 20:49:30'),
(211, 'App\\Models\\Category', 18, 'image', 'cleaning', 'cleaning.png', 'image/png', 'public', 23018, '[]', '{\"uuid\":\"63c6adf5-56c7-454c-95f0-3db92709df95\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 209, '2021-12-20 00:52:28', '2021-12-20 00:52:28'),
(201, 'App\\Models\\Upload', 107, 'image', 'wrench-tool', 'wrench-tool.png', 'image/png', 'public', 40959, '[]', '{\"uuid\":\"562ce431-1bce-402b-aa10-a042052096f3\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 199, '2021-12-16 01:28:39', '2021-12-16 01:28:39'),
(282, 'App\\Models\\Upload', 150, 'image', 'assortment-different-snacks', 'assortment-different-snacks.jpg', 'image/jpeg', 'public', 8895188, '[]', '{\"uuid\":\"28ef1add-cb14-4c07-adbe-cb0158b456a0\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 280, '2021-12-21 14:49:21', '2021-12-21 14:49:24'),
(284, 'App\\Models\\Upload', 151, 'image', 'sparkling-glassware-stands-long-table-prepared-wedding-di', 'sparkling-glassware-stands-long-table-prepared-wedding-di.jpg', 'image/jpeg', 'public', 6793315, '[]', '{\"uuid\":\"cdfb79ef-3872-4221-8e71-52836f882e28\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 281, '2021-12-21 14:53:30', '2021-12-21 14:53:31'),
(285, 'App\\Models\\Category', 119, 'image', 'sparkling-glassware-stands-long-table-prepared-wedding-di', 'sparkling-glassware-stands-long-table-prepared-wedding-di.jpg', 'image/jpeg', 'public', 6793315, '[]', '{\"uuid\":\"cdfb79ef-3872-4221-8e71-52836f882e28\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 282, '2021-12-21 14:53:48', '2021-12-21 14:53:48'),
(286, 'App\\Models\\Upload', 152, 'image', 'camera', 'camera.png', 'image/png', 'public', 37996, '[]', '{\"uuid\":\"48e95fbe-76bc-48ce-b5de-b96401a7e693\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 283, '2021-12-21 14:55:53', '2021-12-21 14:55:53'),
(287, 'App\\Models\\Category', 137, 'image', 'camera', 'camera.png', 'image/png', 'public', 37996, '[]', '{\"uuid\":\"48e95fbe-76bc-48ce-b5de-b96401a7e693\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 284, '2021-12-21 14:55:54', '2021-12-21 14:55:54'),
(288, 'App\\Models\\Upload', 153, 'image', 'professional-camera-posing-mountain-background-city', 'professional-camera-posing-mountain-background-city.jpg', 'image/jpeg', 'public', 4362337, '[]', '{\"uuid\":\"fed440ba-95c5-4352-9092-2960e877ba65\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 285, '2021-12-21 14:58:43', '2021-12-21 14:58:44'),
(362, 'App\\Models\\EProvider', 6, 'image', 'Icon-Design-Ios', 'Icon-Design-Ios.png', 'image/png', 'public', 40510, '[]', '{\"uuid\":\"c33c4c1a-4d5b-4363-a377-a2f049b4b2fa\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 355, '2021-12-25 19:26:45', '2021-12-25 19:26:45'),
(290, 'App\\Models\\Upload', 154, 'image', 'solar-panel-with-sunset-background', 'solar-panel-with-sunset-background.jpg', 'image/jpeg', 'public', 7737531, '[]', '{\"uuid\":\"fb294bad-e99c-4ede-88b9-4d5c53af19b5\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 287, '2021-12-21 15:03:52', '2021-12-21 15:03:54'),
(291, 'App\\Models\\Category', 128, 'image', 'solar-panel-with-sunset-background', 'solar-panel-with-sunset-background.jpg', 'image/jpeg', 'public', 7737531, '[]', '{\"uuid\":\"fb294bad-e99c-4ede-88b9-4d5c53af19b5\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 288, '2021-12-21 15:09:00', '2021-12-21 15:09:00'),
(292, 'App\\Models\\Upload', 155, 'avatar', 'Large-Icon (1)', 'Large-Icon-(1).png', 'image/png', 'public', 192354, '[]', '{\"uuid\":\"87ca4bdf-3813-4ff8-9a33-5cdc1f535961\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 289, '2021-12-21 19:25:01', '2021-12-21 19:25:03'),
(297, 'App\\Models\\Upload', 159, 'avatar', 'Large-Icon-White (1)', 'Large-Icon-White-(1).png', 'image/png', 'public', 182253, '[]', '{\"uuid\":\"59abd58c-d674-4ec3-828d-19ab6f6b7a4f\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 294, '2021-12-21 19:27:07', '2021-12-21 19:27:08'),
(294, 'App\\Models\\Upload', 156, 'image', 'camera', 'camera.png', 'image/png', 'public', 37996, '[]', '{\"uuid\":\"a0ba3c0e-99b7-4a10-a7e5-b7ab0f5ff57e\",\"user_id\":7,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 291, '2021-12-21 19:25:10', '2021-12-21 19:25:10'),
(295, 'App\\Models\\Upload', 157, 'app_logo', 'Large-Icon (1)', 'Large-Icon-(1).png', 'image/png', 'public', 192354, '[]', '{\"uuid\":\"4aa1dc2f-8b8f-4773-bd46-e3324ab06169\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 292, '2021-12-21 19:25:56', '2021-12-21 19:25:57'),
(296, 'App\\Models\\Upload', 158, 'app_logo', 'Large-Icon-White (1)', 'Large-Icon-White-(1).png', 'image/png', 'public', 182253, '[]', '{\"uuid\":\"aa41b8ad-d825-4421-9ac4-7b536b2f40d0\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 293, '2021-12-21 19:26:45', '2021-12-21 19:26:46'),
(309, 'App\\Models\\User', 1, 'avatar', 'Large-Icon (1)', 'Large-Icon-(1).png', 'image/png', 'public', 192354, '[]', '{\"uuid\":\"87ca4bdf-3813-4ff8-9a33-5cdc1f535961\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 303, '2021-12-22 01:00:23', '2021-12-22 01:00:23'),
(300, 'App\\Models\\Upload', 160, 'image', 'scaled_image_picker6252491208611204773', 'scaled_image_picker6252491208611204773.jpg', 'image/jpeg', 'public', 44319, '[]', '{\"uuid\":\"2830bb80-22a2-4c18-9c7d-762330da8d69\",\"user_id\":7,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 296, '2021-12-21 22:58:18', '2021-12-21 22:58:18'),
(301, 'App\\Models\\Upload', 161, 'image', 'scaled_image_picker2927803531522765756', 'scaled_image_picker2927803531522765756.jpg', 'image/jpeg', 'public', 302272, '[]', '{\"uuid\":\"6d717608-efb1-4171-89dd-1aadd16b739e\",\"user_id\":10,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 297, '2021-12-21 23:18:31', '2021-12-21 23:18:31'),
(348, 'App\\Models\\Upload', 184, 'image', 'scaled_image_picker8606368776107417888', 'scaled_image_picker8606368776107417888.jpg', 'image/jpeg', 'public', 1208614, '[]', '{\"uuid\":\"3cdf077b-b001-42ec-adf2-f3fa85eae027\",\"user_id\":10,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 342, '2021-12-25 02:40:49', '2021-12-25 02:40:50'),
(306, 'App\\Models\\Upload', 164, 'image', 'scaled_image_picker1571290588020663648', 'scaled_image_picker1571290588020663648.jpg', 'image/jpeg', 'public', 1173568, '[]', '{\"uuid\":\"b74fd527-af7b-4fe9-a9f9-7c8c3e9cf62c\",\"user_id\":10,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 301, '2021-12-21 23:21:57', '2021-12-21 23:21:59'),
(305, 'App\\Models\\Option', 2, 'image', 'scaled_image_picker7621010674064012867', 'scaled_image_picker7621010674064012867.jpg', 'image/jpeg', 'public', 1111117, '[]', '{\"uuid\":\"824ef568-00de-47a7-8c80-376b4e3b06de\",\"user_id\":10,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 300, '2021-12-21 23:21:04', '2021-12-21 23:21:04'),
(307, 'App\\Models\\Option', 3, 'image', 'scaled_image_picker1571290588020663648', 'scaled_image_picker1571290588020663648.jpg', 'image/jpeg', 'public', 1173568, '[]', '{\"uuid\":\"b74fd527-af7b-4fe9-a9f9-7c8c3e9cf62c\",\"user_id\":10,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 302, '2021-12-21 23:22:18', '2021-12-21 23:22:18'),
(310, 'App\\Models\\Upload', 165, 'image', 'scaled_image_picker8119332242557567697', 'scaled_image_picker8119332242557567697.jpg', 'image/jpeg', 'public', 1390306, '[]', '{\"uuid\":\"a44ffe0d-e1db-4fa2-9550-b8ebc95fe694\",\"user_id\":10,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 304, '2021-12-22 18:40:31', '2021-12-22 18:40:33'),
(361, 'App\\Models\\Upload', 190, 'image', 'Icon-Design-Ios', 'Icon-Design-Ios.png', 'image/png', 'public', 40510, '[]', '{\"uuid\":\"c33c4c1a-4d5b-4363-a377-a2f049b4b2fa\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 354, '2021-12-25 19:26:29', '2021-12-25 19:26:29'),
(345, 'App\\Models\\Upload', 182, 'image', 'scaled_image_picker2161737331031481896', 'scaled_image_picker2161737331031481896.jpg', 'image/jpeg', 'public', 61889, '[]', '{\"uuid\":\"47245c50-46c4-468f-a601-820092f319ed\",\"user_id\":12,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 339, '2021-12-25 02:03:30', '2021-12-25 02:03:30'),
(319, 'App\\Models\\Upload', 169, 'image', 'scaled_image_picker5143337546658719692', 'scaled_image_picker5143337546658719692.jpg', 'image/jpeg', 'public', 296477, '[]', '{\"uuid\":\"52a3fcc6-99aa-44cb-9b6c-39a2de16f96d\",\"user_id\":10,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 313, '2021-12-22 18:44:24', '2021-12-22 18:44:25'),
(313, 'App\\Models\\Option', 4, 'image', 'scaled_image_picker7782066937551067798', 'scaled_image_picker7782066937551067798.jpg', 'image/jpeg', 'public', 1111117, '[]', '{\"uuid\":\"75ac26c3-1427-47a3-b3dc-3d7e1a08e7ea\",\"user_id\":10,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 307, '2021-12-22 18:43:13', '2021-12-22 18:43:13'),
(314, 'App\\Models\\Option', 5, 'image', 'scaled_image_picker7782066937551067798', 'scaled_image_picker7782066937551067798.jpg', 'image/jpeg', 'public', 1111117, '[]', '{\"uuid\":\"75ac26c3-1427-47a3-b3dc-3d7e1a08e7ea\",\"user_id\":10,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 308, '2021-12-22 18:43:14', '2021-12-22 18:43:14'),
(316, 'App\\Models\\Option', 6, 'image', 'scaled_image_picker5237360214835242553', 'scaled_image_picker5237360214835242553.jpg', 'image/jpeg', 'public', 1111117, '[]', '{\"uuid\":\"fe1429cd-5e09-41ba-aca2-ad20771d7f0c\",\"user_id\":10,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 310, '2021-12-22 18:43:41', '2021-12-22 18:43:41'),
(318, 'App\\Models\\Option', 7, 'image', 'scaled_image_picker103666230846810226', 'scaled_image_picker103666230846810226.jpg', 'image/jpeg', 'public', 1111117, '[]', '{\"uuid\":\"3c45b034-37da-402a-9ecd-c31a5a51f11e\",\"user_id\":10,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 312, '2021-12-22 18:44:12', '2021-12-22 18:44:12'),
(320, 'App\\Models\\Option', 8, 'image', 'scaled_image_picker5143337546658719692', 'scaled_image_picker5143337546658719692.jpg', 'image/jpeg', 'public', 296477, '[]', '{\"uuid\":\"52a3fcc6-99aa-44cb-9b6c-39a2de16f96d\",\"user_id\":10,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 314, '2021-12-22 18:44:42', '2021-12-22 18:44:42'),
(321, 'App\\Models\\Upload', 170, 'image', 'scaled_image_picker2712490963623893587', 'scaled_image_picker2712490963623893587.jpg', 'image/jpeg', 'public', 1111117, '[]', '{\"uuid\":\"2ba3bc2b-11c2-419b-9d72-c5d3cf69ab49\",\"user_id\":10,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 315, '2021-12-22 18:55:29', '2021-12-22 18:55:30'),
(346, 'App\\Models\\EService', 70, 'image', 'scaled_image_picker2161737331031481896', 'scaled_image_picker2161737331031481896.jpg', 'image/jpeg', 'public', 61889, '[]', '{\"uuid\":\"47245c50-46c4-468f-a601-820092f319ed\",\"user_id\":12,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 340, '2021-12-25 02:39:15', '2021-12-25 02:39:15'),
(347, 'App\\Models\\Upload', 183, 'image', 'scaled_image_picker765006294230079287', 'scaled_image_picker765006294230079287.jpg', 'image/jpeg', 'public', 61889, '[]', '{\"uuid\":\"d8fceb2f-e0df-456a-828f-a175b23600e8\",\"user_id\":12,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 341, '2021-12-25 02:40:14', '2021-12-25 02:40:14'),
(324, 'App\\Models\\Upload', 171, 'image', 'scaled_image_picker1118177289548351637', 'scaled_image_picker1118177289548351637.jpg', 'image/jpeg', 'public', 302272, '[]', '{\"uuid\":\"d417d72f-5a85-46ce-9a50-d35b1eda0f36\",\"user_id\":10,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 318, '2021-12-22 18:56:40', '2021-12-22 18:56:40'),
(325, 'App\\Models\\Option', 9, 'image', 'scaled_image_picker1118177289548351637', 'scaled_image_picker1118177289548351637.jpg', 'image/jpeg', 'public', 302272, '[]', '{\"uuid\":\"d417d72f-5a85-46ce-9a50-d35b1eda0f36\",\"user_id\":10,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 319, '2021-12-22 18:57:29', '2021-12-22 18:57:29'),
(326, 'App\\Models\\Option', 10, 'image', 'scaled_image_picker1118177289548351637', 'scaled_image_picker1118177289548351637.jpg', 'image/jpeg', 'public', 302272, '[]', '{\"uuid\":\"d417d72f-5a85-46ce-9a50-d35b1eda0f36\",\"user_id\":10,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 320, '2021-12-22 18:57:30', '2021-12-22 18:57:30'),
(327, 'App\\Models\\Upload', 172, 'image', 'scaled_image_picker8190664795620304967', 'scaled_image_picker8190664795620304967.jpg', 'image/jpeg', 'public', 1111117, '[]', '{\"uuid\":\"821a0d8e-88a5-40ad-b37f-d21f3e3d549c\",\"user_id\":10,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 321, '2021-12-22 19:07:13', '2021-12-22 19:07:15'),
(349, 'App\\Models\\EService', 71, 'image', 'scaled_image_picker8606368776107417888', 'scaled_image_picker8606368776107417888.jpg', 'image/jpeg', 'public', 1208614, '[]', '{\"uuid\":\"3cdf077b-b001-42ec-adf2-f3fa85eae027\",\"user_id\":10,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 343, '2021-12-25 02:41:08', '2021-12-25 02:41:08'),
(350, 'App\\Models\\EService', 72, 'image', 'scaled_image_picker765006294230079287', 'scaled_image_picker765006294230079287.jpg', 'image/jpeg', 'public', 61889, '[]', '{\"uuid\":\"d8fceb2f-e0df-456a-828f-a175b23600e8\",\"user_id\":12,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 344, '2021-12-25 02:41:44', '2021-12-25 02:41:44'),
(330, 'App\\Models\\Upload', 173, 'image', 'scaled_image_picker7811753862868565989', 'scaled_image_picker7811753862868565989.jpg', 'image/jpeg', 'public', 880709, '[]', '{\"uuid\":\"dff4e319-35cb-4912-9928-7c6f8da9f758\",\"user_id\":10,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 324, '2021-12-22 19:09:51', '2021-12-22 19:09:52'),
(331, 'App\\Models\\Upload', 174, 'image', 'scaled_image_picker6933536935142641987', 'scaled_image_picker6933536935142641987.jpg', 'image/jpeg', 'public', 880709, '[]', '{\"uuid\":\"d9d3b0eb-f657-4f4b-aa7c-04e61ce269ec\",\"user_id\":10,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 325, '2021-12-22 19:11:21', '2021-12-22 19:11:23'),
(332, 'App\\Models\\Option', 11, 'image', 'scaled_image_picker6933536935142641987', 'scaled_image_picker6933536935142641987.jpg', 'image/jpeg', 'public', 880709, '[]', '{\"uuid\":\"d9d3b0eb-f657-4f4b-aa7c-04e61ce269ec\",\"user_id\":10,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 326, '2021-12-22 19:11:42', '2021-12-22 19:11:42'),
(333, 'App\\Models\\Upload', 175, 'image', 'house sitting', 'house-sitting.png', 'image/png', 'public', 14598, '[]', '{\"uuid\":\"042dd06c-11b5-40c4-93a4-a9e79a04ddc7\",\"user_id\":10,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 327, '2021-12-22 19:40:29', '2021-12-22 19:40:29'),
(334, 'App\\Models\\Upload', 176, 'image', 'scaled_image_picker5640531513869416821', 'scaled_image_picker5640531513869416821.jpg', 'image/jpeg', 'public', 61658, '[]', '{\"uuid\":\"0def27c2-36cd-4d4b-839b-2c5acb54b514\",\"user_id\":10,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 328, '2021-12-22 23:35:18', '2021-12-22 23:35:18'),
(335, 'App\\Models\\Upload', 177, 'image', 'scaled_image_picker3167228602821543348', 'scaled_image_picker3167228602821543348.jpg', 'image/jpeg', 'public', 55519, '[]', '{\"uuid\":\"3946851a-c1da-4120-b170-59bf8d43ed65\",\"user_id\":10,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 329, '2021-12-22 23:35:21', '2021-12-22 23:35:21'),
(352, 'App\\Models\\Option', 19, 'image', 'scaled_image_picker1050668595522529810', 'scaled_image_picker1050668595522529810.jpg', 'image/jpeg', 'public', 46704, '[]', '{\"uuid\":\"dfc33bf3-76a0-4546-855f-910d679c86a1\",\"user_id\":12,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 346, '2021-12-25 02:43:09', '2021-12-25 02:43:09'),
(351, 'App\\Models\\Upload', 185, 'image', 'scaled_image_picker1050668595522529810', 'scaled_image_picker1050668595522529810.jpg', 'image/jpeg', 'public', 46704, '[]', '{\"uuid\":\"dfc33bf3-76a0-4546-855f-910d679c86a1\",\"user_id\":12,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 345, '2021-12-25 02:41:48', '2021-12-25 02:41:48'),
(340, 'App\\Models\\Upload', 179, 'image', 'scaled_image_picker7913256850392242327', 'scaled_image_picker7913256850392242327.jpg', 'image/jpeg', 'public', 61658, '[]', '{\"uuid\":\"916163d1-52a8-483f-bbf3-dc511e0e2aa4\",\"user_id\":10,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 334, '2021-12-22 23:37:13', '2021-12-22 23:37:13'),
(339, 'App\\Models\\Option', 12, 'image', 'scaled_image_picker1025981345436930396', 'scaled_image_picker1025981345436930396.jpg', 'image/jpeg', 'public', 55519, '[]', '{\"uuid\":\"2356e4c0-2f5e-4875-ad1a-83c2c6147526\",\"user_id\":10,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 333, '2021-12-22 23:36:44', '2021-12-22 23:36:44'),
(341, 'App\\Models\\Option', 14, 'image', 'scaled_image_picker7913256850392242327', 'scaled_image_picker7913256850392242327.jpg', 'image/jpeg', 'public', 61658, '[]', '{\"uuid\":\"916163d1-52a8-483f-bbf3-dc511e0e2aa4\",\"user_id\":10,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 335, '2021-12-22 23:37:35', '2021-12-22 23:37:35'),
(353, 'App\\Models\\Upload', 186, 'image', 'scaled_image_picker8969411035150362902', 'scaled_image_picker8969411035150362902.jpg', 'image/jpeg', 'public', 46704, '[]', '{\"uuid\":\"3623f8a3-2bc7-4ac6-8aec-9c8ee5c55218\",\"user_id\":12,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 347, '2021-12-25 02:45:12', '2021-12-25 02:45:12'),
(355, 'App\\Models\\Upload', 187, 'image', 'scaled_image_picker8870591248041384741', 'scaled_image_picker8870591248041384741.jpg', 'image/jpeg', 'public', 61889, '[]', '{\"uuid\":\"4a1970ca-f74c-4b16-bb3e-749f3f5f4b90\",\"user_id\":12,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 348, '2021-12-25 02:46:44', '2021-12-25 02:46:44'),
(363, 'App\\Models\\Upload', 191, 'image', 'scaled_image_picker6226075258211179904', 'scaled_image_picker6226075258211179904.jpg', 'image/jpeg', 'public', 2681293, '[]', '{\"uuid\":\"b7a1116e-e348-4b6d-866f-d3d350b80454\",\"user_id\":15,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 356, '2021-12-25 19:57:26', '2021-12-25 19:57:27'),
(357, 'App\\Models\\Upload', 188, 'image', 'scaled_image_picker6503633569025076474', 'scaled_image_picker6503633569025076474.jpg', 'image/jpeg', 'public', 61889, '[]', '{\"uuid\":\"5cd33ffd-eff3-4680-900a-a389c86f00d1\",\"user_id\":12,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 350, '2021-12-25 02:47:13', '2021-12-25 02:47:13'),
(358, 'App\\Models\\Option', 20, 'image', 'scaled_image_picker6503633569025076474', 'scaled_image_picker6503633569025076474.jpg', 'image/jpeg', 'public', 61889, '[]', '{\"uuid\":\"5cd33ffd-eff3-4680-900a-a389c86f00d1\",\"user_id\":12,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 351, '2021-12-25 02:47:42', '2021-12-25 02:47:42'),
(359, 'App\\Models\\Upload', 189, 'image', 'scaled_image_picker2009952023545790097', 'scaled_image_picker2009952023545790097.jpg', 'image/jpeg', 'public', 1208614, '[]', '{\"uuid\":\"abfceb35-ca4a-44c0-93e6-7345f9bfa57d\",\"user_id\":10,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 352, '2021-12-25 02:49:04', '2021-12-25 02:49:05'),
(365, 'App\\Models\\Upload', 192, 'image', '_azul', '_azul.png', 'image/png', 'public', 1542, '[]', '{\"uuid\":\"e588a43f-08ce-42e5-ab25-5c3133f4050e\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 358, '2022-01-07 20:00:41', '2022-01-07 20:00:41'),
(366, 'App\\Models\\EService', 75, 'image', '_azul', '_azul.png', 'image/png', 'public', 1542, '[]', '{\"uuid\":\"e588a43f-08ce-42e5-ab25-5c3133f4050e\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 359, '2022-01-07 20:00:45', '2022-01-07 20:00:45'),
(364, 'App\\Models\\EService', 76, 'image', 'scaled_image_picker6226075258211179904', 'scaled_image_picker6226075258211179904.jpg', 'image/jpeg', 'public', 2681293, '[]', '{\"uuid\":\"b7a1116e-e348-4b6d-866f-d3d350b80454\",\"user_id\":15,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 357, '2021-12-25 19:58:09', '2021-12-25 19:58:09'),
(367, 'App\\Models\\Upload', 193, 'image', '4500', '4500.png', 'image/png', 'public', 27752, '[]', '{\"uuid\":\"7754019f-d766-40e8-9d78-82e1b749f2b6\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 360, '2022-01-07 20:16:35', '2022-01-07 20:16:37'),
(368, 'App\\Models\\EService', 68, 'image', '4500', '4500.png', 'image/png', 'public', 27752, '[]', '{\"uuid\":\"7754019f-d766-40e8-9d78-82e1b749f2b6\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 361, '2022-01-07 20:16:39', '2022-01-07 20:16:39');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_05_26_175145_create_permission_tables', 1),
(4, '2018_06_12_140344_create_media_table', 1),
(5, '2018_06_13_035117_create_uploads_table', 1),
(6, '2018_07_17_180731_create_settings_table', 1),
(7, '2018_07_24_211308_create_custom_fields_table', 1),
(8, '2018_07_24_211327_create_custom_field_values_table', 1),
(9, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2019_08_29_213829_create_faq_categories_table', 1),
(11, '2019_08_29_213926_create_faqs_table', 1),
(12, '2019_10_22_144652_create_currencies_table', 1),
(13, '2021_01_07_162658_create_payment_methods_table', 1),
(14, '2021_01_07_164755_create_payment_statuses_table', 1),
(15, '2021_01_07_165422_create_payments_table', 1),
(16, '2021_01_13_105605_create_e_provider_types_table', 1),
(17, '2021_01_13_111155_create_e_providers_table', 1),
(18, '2021_01_13_111622_create_experiences_table', 1),
(19, '2021_01_13_111730_create_awards_table', 1),
(20, '2021_01_13_114302_create_taxes_table', 1),
(21, '2021_01_13_200249_create_addresses_table', 1),
(22, '2021_01_15_115239_create_e_provider_addresses_table', 1),
(23, '2021_01_15_115747_create_e_provider_users_table', 1),
(24, '2021_01_15_115850_create_e_provider_taxes_table', 1),
(25, '2021_01_16_160838_create_availability_hours_table', 1),
(26, '2021_01_19_135951_create_e_services_table', 1),
(27, '2021_01_19_140427_create_categories_table', 1),
(28, '2021_01_19_171553_create_e_service_categories_table', 1),
(29, '2021_01_22_194514_create_option_groups_table', 1),
(30, '2021_01_22_200807_create_options_table', 1),
(31, '2021_01_22_205819_create_favorites_table', 1),
(32, '2021_01_22_205944_create_favorite_options_table', 1),
(33, '2021_01_23_125641_create_e_service_reviews_table', 1),
(34, '2021_01_23_201533_create_galleries_table', 1),
(35, '2021_01_25_105421_create_slides_table', 1),
(36, '2021_01_25_162055_create_notifications_table', 1),
(37, '2021_01_25_170522_create_coupons_table', 1),
(38, '2021_01_25_170529_create_discountables_table', 1),
(39, '2021_01_25_191833_create_booking_statuses_table', 1),
(40, '2021_01_25_212252_create_bookings_table', 1),
(41, '2021_01_30_111717_create_e_provider_payouts_table', 1),
(42, '2021_01_30_135356_create_earnings_table', 1),
(43, '2021_02_24_102838_create_custom_pages_table', 1),
(44, '2021_06_26_110636_create_json_extract_function', 1),
(45, '2021_08_08_134136_create_wallets_table', 1),
(46, '2021_08_08_155732_create_wallet_transactions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 10),
(3, 'App\\Models\\User', 12),
(3, 'App\\Models\\User', 13),
(3, 'App\\Models\\User', 15),
(3, 'App\\Models\\User', 17),
(3, 'App\\Models\\User', 18),
(3, 'App\\Models\\User', 43),
(3, 'App\\Models\\User', 44),
(4, 'App\\Models\\User', 2),
(4, 'App\\Models\\User', 4);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(10,2) NOT NULL DEFAULT 0.00,
  `e_service_id` int(10) UNSIGNED NOT NULL,
  `option_group_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `name`, `description`, `price`, `e_service_id`, `option_group_id`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"Face Painting\"}', '{\"en\":\"<p>hjkh<\\/p>\"}', 70.00, 57, 2, '2021-12-21 19:30:05', '2021-12-21 19:30:05'),
(2, '{\"en\":\"food painting\"}', '{\"en\":\"test food paintings\"}', 99.00, 61, 1, '2021-12-21 23:21:04', '2021-12-21 23:21:04'),
(3, '{\"en\":\"New\"}', '{\"en\":\"test\"}', 16.00, 61, 1, '2021-12-21 23:22:18', '2021-12-21 23:22:18'),
(4, '{\"en\":\"Thai Massage\"}', '{\"en\":\"This is test\"}', 60.00, 62, 1, '2021-12-22 18:43:13', '2021-12-22 18:43:13'),
(5, '{\"en\":\"Thai Massage\"}', '{\"en\":\"This is test\"}', 60.00, 62, 1, '2021-12-22 18:43:14', '2021-12-22 18:43:14'),
(6, '{\"en\":\"Deep Tissue\"}', '{\"en\":\"This is a test\"}', 50.00, 62, 2, '2021-12-22 18:43:41', '2021-12-22 18:43:41'),
(7, '{\"en\":\"Deep Tissue\"}', '{\"en\":\"Test\"}', 60.00, 62, 1, '2021-12-22 18:44:12', '2021-12-22 18:44:12'),
(8, '{\"en\":\"Chair massage\"}', '{\"en\":\"test\"}', 90.00, 62, 1, '2021-12-22 18:44:42', '2021-12-22 18:44:42'),
(9, '{\"en\":\"Character Face painting\"}', '{\"en\":\"Will paint characters\"}', 20.00, 63, 3, '2021-12-22 18:57:29', '2021-12-22 18:57:29'),
(10, '{\"en\":\"Character Face painting\"}', '{\"en\":\"Will paint characters\"}', 20.00, 63, 3, '2021-12-22 18:57:30', '2021-12-22 18:57:30'),
(11, '{\"en\":\"Beard trim\"}', '{\"en\":\"500\"}', 35.00, 65, 3, '2021-12-22 19:11:42', '2021-12-22 19:11:42'),
(12, '{\"en\":\"Extra long\"}', '{\"en\":\"Longer nails than nornal\"}', 15.00, 67, 3, '2021-12-22 23:36:44', '2021-12-22 23:36:44'),
(13, '{\"en\":\"Long nails\"}', '{\"en\":\"Longer\"}', 15.00, 67, 3, '2021-12-22 23:37:09', '2021-12-22 23:37:09'),
(14, '{\"en\":\"Gel Nails\"}', '{\"en\":\"Gel Nails\"}', 5.00, 67, 3, '2021-12-22 23:37:35', '2021-12-22 23:37:35'),
(15, '{\"en\":\"Nail Removal\"}', '{\"en\":\"I will remove your nails\"}', 10.00, 67, 3, '2021-12-22 23:38:05', '2021-12-22 23:38:05'),
(16, '{\"en\":\"Add a layer of cake 8 in\"}', '{\"en\":\"2 layers\"}', 10.00, 68, 5, '2021-12-23 00:27:25', '2021-12-23 00:27:25'),
(17, '{\"en\":\"Upgarde to 16 in 2 layers\"}', '{\"en\":\"2 layers 16 inches\"}', 10.00, 68, 5, '2021-12-23 00:27:54', '2021-12-23 00:27:54'),
(18, '{\"en\":\"Cake pops\"}', '{\"en\":\"12 cake pops\"}', 10.00, 68, 5, '2021-12-23 00:28:13', '2021-12-23 00:28:13'),
(19, '{\"en\":\"Brakes\"}', '{\"en\":\"Brake Job. Rotor and Pad replacement. Any model.\"}', 750.00, 72, 5, '2021-12-25 02:43:09', '2021-12-25 02:43:09'),
(20, '{\"en\":\"Car wash\"}', '{\"en\":\"car\"}', 20.00, 74, 5, '2021-12-25 02:47:42', '2021-12-25 02:47:42'),
(21, '{\"en\":\"think\"}', '{\"en\":\"vivo\"}', 10.00, 76, 2, '2021-12-25 19:58:44', '2021-12-25 19:58:44');

-- --------------------------------------------------------

--
-- Table structure for table `option_groups`
--

CREATE TABLE `option_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allow_multiple` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `option_groups`
--

INSERT INTO `option_groups` (`id`, `name`, `allow_multiple`, `created_at`, `updated_at`) VALUES
(2, '{\"en\":\"Massages\"}', 1, '2021-12-21 19:27:01', '2021-12-22 18:49:38'),
(3, '{\"en\":\"Face Painting\"}', 1, '2021-12-22 18:55:13', '2021-12-22 18:55:13'),
(4, '{\"en\":\"Hair cut\"}', 1, '2021-12-23 00:02:35', '2021-12-23 00:04:03'),
(5, '{\"en\":\"Bakery\"}', 1, '2021-12-23 00:22:46', '2021-12-23 00:22:46');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `amount` double(10,2) NOT NULL DEFAULT 0.00,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `payment_method_id` int(10) UNSIGNED NOT NULL,
  `payment_status_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `default` tinyint(1) NOT NULL DEFAULT 0,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `name`, `description`, `route`, `order`, `default`, `enabled`, `created_at`, `updated_at`) VALUES
(2, 'RazorPay', 'Click to pay with RazorPay gateway', '/RazorPay', 2, 0, 1, '2021-01-17 17:33:49', '2021-02-18 01:37:30'),
(5, '{\"en\":\"PayPal\"}', '{\"en\":\"Click to pay with your PayPal account\"}', '/PayPal', 1, 1, 1, '2021-01-17 18:46:06', '2021-11-14 07:15:39'),
(6, '{\"en\":\"Cash\"}', '{\"en\":\"Click to pay cash when finish\"}', '/Cash', 3, 0, 0, '2021-02-18 01:38:42', '2021-11-20 00:41:01'),
(7, 'Credit Card (Stripe)', 'Click to pay with your Credit Card', '/Stripe', 3, 0, 1, '2021-02-18 01:38:42', '2021-02-18 01:38:42'),
(8, 'PayStack', 'Click to pay with PayStack gateway', '/PayStack', 5, 0, 1, '2021-07-24 01:38:42', '2021-07-24 01:38:42'),
(9, 'FlutterWave', 'Click to pay with FlutterWave gateway', '/FlutterWave', 6, 0, 1, '2021-07-24 01:38:42', '2021-07-24 01:38:42'),
(10, 'Malaysian Stripe FPX	', 'Click to pay with Stripe FPX gateway', '/StripeFPX', 7, 0, 1, '2021-07-25 01:38:42', '2021-07-25 01:38:42');

-- --------------------------------------------------------

--
-- Table structure for table `payment_statuses`
--

CREATE TABLE `payment_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_statuses`
--

INSERT INTO `payment_statuses` (`id`, `status`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Pending', 1, '2021-01-17 18:28:28', '2021-02-18 00:55:15'),
(2, 'Paid', 10, '2021-01-12 02:19:49', '2021-02-18 00:55:53'),
(3, 'Failed', 20, '2021-01-17 17:05:04', '2021-02-18 00:56:32'),
(4, 'Refunded', 40, '2021-02-18 00:58:14', '2021-02-18 00:58:14');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'web',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'dashboard', 'web', '2021-01-07 16:17:34', '2021-01-07 16:17:34'),
(2, 'medias.create', 'web', '2021-01-07 16:17:35', '2021-01-07 16:17:35'),
(3, 'users.profile', 'web', '2021-01-07 16:17:35', '2021-01-07 16:17:35'),
(4, 'users.index', 'web', '2021-01-07 16:17:35', '2021-01-07 16:17:35'),
(5, 'users.create', 'web', '2021-01-07 16:17:35', '2021-01-07 16:17:35'),
(6, 'users.store', 'web', '2021-01-07 16:17:35', '2021-01-07 16:17:35'),
(7, 'users.show', 'web', '2021-01-07 16:17:35', '2021-01-07 16:17:35'),
(8, 'users.edit', 'web', '2021-01-07 16:17:36', '2021-01-07 16:17:36'),
(9, 'users.update', 'web', '2021-01-07 16:17:36', '2021-01-07 16:17:36'),
(10, 'users.destroy', 'web', '2021-01-07 16:17:36', '2021-01-07 16:17:36'),
(11, 'medias.delete', 'web', '2021-01-07 16:17:36', '2021-01-07 16:17:36'),
(12, 'medias', 'web', '2021-01-07 16:17:36', '2021-01-07 16:17:36'),
(13, 'permissions.index', 'web', '2021-01-07 16:17:36', '2021-01-07 16:17:36'),
(14, 'permissions.create', 'web', '2021-01-07 16:17:36', '2021-01-07 16:17:36'),
(15, 'permissions.store', 'web', '2021-01-07 16:17:36', '2021-01-07 16:17:36'),
(16, 'permissions.show', 'web', '2021-01-07 16:17:37', '2021-01-07 16:17:37'),
(17, 'permissions.edit', 'web', '2021-01-07 16:17:37', '2021-01-07 16:17:37'),
(18, 'permissions.update', 'web', '2021-01-07 16:17:37', '2021-01-07 16:17:37'),
(19, 'permissions.destroy', 'web', '2021-01-07 16:17:37', '2021-01-07 16:17:37'),
(20, 'roles.index', 'web', '2021-01-07 16:17:37', '2021-01-07 16:17:37'),
(21, 'roles.create', 'web', '2021-01-07 16:17:37', '2021-01-07 16:17:37'),
(22, 'roles.store', 'web', '2021-01-07 16:17:37', '2021-01-07 16:17:37'),
(23, 'roles.show', 'web', '2021-01-07 16:17:38', '2021-01-07 16:17:38'),
(24, 'roles.edit', 'web', '2021-01-07 16:17:38', '2021-01-07 16:17:38'),
(25, 'roles.update', 'web', '2021-01-07 16:17:38', '2021-01-07 16:17:38'),
(26, 'roles.destroy', 'web', '2021-01-07 16:17:38', '2021-01-07 16:17:38'),
(27, 'customFields.index', 'web', '2021-01-07 16:17:38', '2021-01-07 16:17:38'),
(28, 'customFields.create', 'web', '2021-01-07 16:17:38', '2021-01-07 16:17:38'),
(29, 'customFields.store', 'web', '2021-01-07 16:17:38', '2021-01-07 16:17:38'),
(30, 'customFields.show', 'web', '2021-01-07 16:17:38', '2021-01-07 16:17:38'),
(31, 'customFields.edit', 'web', '2021-01-07 16:17:39', '2021-01-07 16:17:39'),
(32, 'customFields.update', 'web', '2021-01-07 16:17:39', '2021-01-07 16:17:39'),
(33, 'customFields.destroy', 'web', '2021-01-07 16:17:39', '2021-01-07 16:17:39'),
(34, 'currencies.index', 'web', '2021-01-07 16:17:39', '2021-01-07 16:17:39'),
(35, 'currencies.create', 'web', '2021-01-07 16:17:39', '2021-01-07 16:17:39'),
(36, 'currencies.store', 'web', '2021-01-07 16:17:39', '2021-01-07 16:17:39'),
(37, 'currencies.edit', 'web', '2021-01-07 16:17:39', '2021-01-07 16:17:39'),
(38, 'currencies.update', 'web', '2021-01-07 16:17:40', '2021-01-07 16:17:40'),
(39, 'currencies.destroy', 'web', '2021-01-07 16:17:40', '2021-01-07 16:17:40'),
(40, 'users.login-as-user', 'web', '2021-01-07 16:17:40', '2021-01-07 16:17:40'),
(41, 'app-settings', 'web', '2021-01-07 16:17:40', '2021-01-07 16:17:40'),
(42, 'faqCategories.index', 'web', '2021-01-07 16:17:40', '2021-01-07 16:17:40'),
(43, 'faqCategories.create', 'web', '2021-01-07 16:17:40', '2021-01-07 16:17:40'),
(44, 'faqCategories.store', 'web', '2021-01-07 16:17:40', '2021-01-07 16:17:40'),
(45, 'faqCategories.edit', 'web', '2021-01-07 16:17:41', '2021-01-07 16:17:41'),
(46, 'faqCategories.update', 'web', '2021-01-07 16:17:41', '2021-01-07 16:17:41'),
(47, 'faqCategories.destroy', 'web', '2021-01-07 16:17:41', '2021-01-07 16:17:41'),
(48, 'faqs.index', 'web', '2021-01-07 16:17:41', '2021-01-07 16:17:41'),
(49, 'faqs.create', 'web', '2021-01-07 16:17:41', '2021-01-07 16:17:41'),
(50, 'faqs.store', 'web', '2021-01-07 16:17:41', '2021-01-07 16:17:41'),
(51, 'faqs.edit', 'web', '2021-01-07 16:17:41', '2021-01-07 16:17:41'),
(52, 'faqs.update', 'web', '2021-01-07 16:17:42', '2021-01-07 16:17:42'),
(53, 'faqs.destroy', 'web', '2021-01-07 16:17:42', '2021-01-07 16:17:42'),
(54, 'payments.index', 'web', '2021-01-11 03:04:33', '2021-01-11 03:04:33'),
(55, 'payments.show', 'web', '2021-01-11 03:04:33', '2021-01-11 03:04:33'),
(56, 'payments.update', 'web', '2021-01-11 03:04:33', '2021-01-11 03:04:33'),
(57, 'paymentMethods.index', 'web', '2021-01-11 03:04:33', '2021-01-11 03:04:33'),
(58, 'paymentMethods.create', 'web', '2021-01-11 03:04:34', '2021-01-11 03:04:34'),
(59, 'paymentMethods.store', 'web', '2021-01-11 03:04:34', '2021-01-11 03:04:34'),
(60, 'paymentMethods.edit', 'web', '2021-01-11 03:04:34', '2021-01-11 03:04:34'),
(61, 'paymentMethods.update', 'web', '2021-01-11 03:04:34', '2021-01-11 03:04:34'),
(62, 'paymentMethods.destroy', 'web', '2021-01-11 03:04:34', '2021-01-11 03:04:34'),
(63, 'paymentStatuses.index', 'web', '2021-01-11 03:04:34', '2021-01-11 03:04:34'),
(64, 'paymentStatuses.create', 'web', '2021-01-11 03:04:34', '2021-01-11 03:04:34'),
(65, 'paymentStatuses.store', 'web', '2021-01-11 03:04:35', '2021-01-11 03:04:35'),
(66, 'paymentStatuses.edit', 'web', '2021-01-11 03:04:35', '2021-01-11 03:04:35'),
(67, 'paymentStatuses.update', 'web', '2021-01-11 03:04:35', '2021-01-11 03:04:35'),
(68, 'paymentStatuses.destroy', 'web', '2021-01-11 03:04:35', '2021-01-11 03:04:35'),
(69, 'verification.notice', 'web', '2021-01-12 13:19:50', '2021-01-12 13:19:50'),
(70, 'verification.verify', 'web', '2021-01-12 13:19:50', '2021-01-12 13:19:50'),
(71, 'verification.resend', 'web', '2021-01-12 13:19:51', '2021-01-12 13:19:51'),
(72, 'awards.index', 'web', '2021-01-12 13:19:51', '2021-01-12 13:19:51'),
(73, 'awards.create', 'web', '2021-01-12 13:19:52', '2021-01-12 13:19:52'),
(74, 'awards.store', 'web', '2021-01-12 13:19:52', '2021-01-12 13:19:52'),
(75, 'awards.show', 'web', '2021-01-12 13:19:52', '2021-01-12 13:19:52'),
(76, 'awards.edit', 'web', '2021-01-12 13:19:52', '2021-01-12 13:19:52'),
(77, 'awards.update', 'web', '2021-01-12 13:19:52', '2021-01-12 13:19:52'),
(78, 'awards.destroy', 'web', '2021-01-12 13:19:52', '2021-01-12 13:19:52'),
(79, 'experiences.index', 'web', '2021-01-12 14:20:29', '2021-01-12 14:20:29'),
(80, 'experiences.create', 'web', '2021-01-12 14:20:29', '2021-01-12 14:20:29'),
(81, 'experiences.store', 'web', '2021-01-12 14:20:30', '2021-01-12 14:20:30'),
(82, 'experiences.show', 'web', '2021-01-12 14:20:30', '2021-01-12 14:20:30'),
(83, 'experiences.edit', 'web', '2021-01-12 14:20:30', '2021-01-12 14:20:30'),
(84, 'experiences.update', 'web', '2021-01-12 14:20:30', '2021-01-12 14:20:30'),
(85, 'experiences.destroy', 'web', '2021-01-12 14:20:30', '2021-01-12 14:20:30'),
(92, 'eProviderTypes.index', 'web', '2021-01-13 14:31:08', '2021-01-13 14:31:08'),
(93, 'eProviderTypes.create', 'web', '2021-01-13 14:31:09', '2021-01-13 14:31:09'),
(94, 'eProviderTypes.store', 'web', '2021-01-13 14:31:09', '2021-01-13 14:31:09'),
(95, 'eProviderTypes.edit', 'web', '2021-01-13 14:31:09', '2021-01-13 14:31:09'),
(96, 'eProviderTypes.update', 'web', '2021-01-13 14:31:09', '2021-01-13 14:31:09'),
(97, 'eProviderTypes.destroy', 'web', '2021-01-13 14:31:09', '2021-01-13 14:31:09'),
(98, 'eProviders.index', 'web', '2021-01-13 14:48:55', '2021-01-13 14:48:55'),
(99, 'eProviders.create', 'web', '2021-01-13 14:48:56', '2021-01-13 14:48:56'),
(100, 'eProviders.store', 'web', '2021-01-13 14:48:56', '2021-01-13 14:48:56'),
(101, 'eProviders.edit', 'web', '2021-01-13 14:48:56', '2021-01-13 14:48:56'),
(102, 'eProviders.update', 'web', '2021-01-13 14:48:56', '2021-01-13 14:48:56'),
(103, 'eProviders.destroy', 'web', '2021-01-13 14:48:56', '2021-01-13 14:48:56'),
(104, 'addresses.index', 'web', '2021-01-13 14:48:56', '2021-01-13 14:48:56'),
(105, 'addresses.create', 'web', '2021-01-13 14:48:57', '2021-01-13 14:48:57'),
(106, 'addresses.store', 'web', '2021-01-13 14:48:57', '2021-01-13 14:48:57'),
(107, 'addresses.edit', 'web', '2021-01-13 14:48:57', '2021-01-13 14:48:57'),
(108, 'addresses.update', 'web', '2021-01-13 14:48:57', '2021-01-13 14:48:57'),
(109, 'addresses.destroy', 'web', '2021-01-13 14:48:57', '2021-01-13 14:48:57'),
(110, 'taxes.index', 'web', '2021-01-13 14:48:57', '2021-01-13 14:48:57'),
(111, 'taxes.create', 'web', '2021-01-13 14:48:57', '2021-01-13 14:48:57'),
(112, 'taxes.store', 'web', '2021-01-13 14:48:58', '2021-01-13 14:48:58'),
(113, 'taxes.edit', 'web', '2021-01-13 14:48:58', '2021-01-13 14:48:58'),
(114, 'taxes.update', 'web', '2021-01-13 14:48:58', '2021-01-13 14:48:58'),
(115, 'taxes.destroy', 'web', '2021-01-13 14:48:58', '2021-01-13 14:48:58'),
(116, 'availabilityHours.index', 'web', '2021-01-16 19:14:21', '2021-01-16 19:14:21'),
(117, 'availabilityHours.create', 'web', '2021-01-16 19:14:21', '2021-01-16 19:14:21'),
(118, 'availabilityHours.store', 'web', '2021-01-16 19:14:21', '2021-01-16 19:14:21'),
(119, 'availabilityHours.edit', 'web', '2021-01-16 19:14:21', '2021-01-16 19:14:21'),
(120, 'availabilityHours.update', 'web', '2021-01-16 19:14:22', '2021-01-16 19:14:22'),
(121, 'availabilityHours.destroy', 'web', '2021-01-16 19:14:22', '2021-01-16 19:14:22'),
(122, 'eServices.index', 'web', '2021-01-19 17:03:00', '2021-01-19 17:03:00'),
(123, 'eServices.create', 'web', '2021-01-19 17:03:00', '2021-01-19 17:03:00'),
(124, 'eServices.store', 'web', '2021-01-19 17:03:00', '2021-01-19 17:03:00'),
(126, 'eServices.edit', 'web', '2021-01-19 17:03:01', '2021-01-19 17:03:01'),
(127, 'eServices.update', 'web', '2021-01-19 17:03:01', '2021-01-19 17:03:01'),
(128, 'eServices.destroy', 'web', '2021-01-19 17:03:01', '2021-01-19 17:03:01'),
(129, 'categories.index', 'web', '2021-01-19 17:08:55', '2021-01-19 17:08:55'),
(130, 'categories.create', 'web', '2021-01-19 17:08:55', '2021-01-19 17:08:55'),
(131, 'categories.store', 'web', '2021-01-19 17:08:55', '2021-01-19 17:08:55'),
(132, 'categories.edit', 'web', '2021-01-19 17:08:55', '2021-01-19 17:08:55'),
(133, 'categories.update', 'web', '2021-01-19 17:08:56', '2021-01-19 17:08:56'),
(134, 'categories.destroy', 'web', '2021-01-19 17:08:56', '2021-01-19 17:08:56'),
(135, 'optionGroups.index', 'web', '2021-01-22 22:48:32', '2021-01-22 22:48:32'),
(136, 'optionGroups.create', 'web', '2021-01-22 22:48:32', '2021-01-22 22:48:32'),
(137, 'optionGroups.store', 'web', '2021-01-22 22:48:32', '2021-01-22 22:48:32'),
(138, 'optionGroups.edit', 'web', '2021-01-22 22:48:32', '2021-01-22 22:48:32'),
(139, 'optionGroups.update', 'web', '2021-01-22 22:48:32', '2021-01-22 22:48:32'),
(140, 'optionGroups.destroy', 'web', '2021-01-22 22:48:32', '2021-01-22 22:48:32'),
(141, 'options.index', 'web', '2021-01-22 23:10:51', '2021-01-22 23:10:51'),
(142, 'options.create', 'web', '2021-01-22 23:10:51', '2021-01-22 23:10:51'),
(143, 'options.store', 'web', '2021-01-22 23:10:52', '2021-01-22 23:10:52'),
(144, 'options.edit', 'web', '2021-01-22 23:10:52', '2021-01-22 23:10:52'),
(145, 'options.update', 'web', '2021-01-22 23:10:52', '2021-01-22 23:10:52'),
(146, 'options.destroy', 'web', '2021-01-22 23:10:52', '2021-01-22 23:10:52'),
(147, 'favorites.index', 'web', '2021-01-23 00:01:13', '2021-01-23 00:01:13'),
(148, 'favorites.create', 'web', '2021-01-23 00:01:13', '2021-01-23 00:01:13'),
(149, 'favorites.store', 'web', '2021-01-23 00:01:13', '2021-01-23 00:01:13'),
(150, 'favorites.edit', 'web', '2021-01-23 00:01:13', '2021-01-23 00:01:13'),
(151, 'favorites.update', 'web', '2021-01-23 00:01:13', '2021-01-23 00:01:13'),
(152, 'favorites.destroy', 'web', '2021-01-23 00:01:13', '2021-01-23 00:01:13'),
(153, 'eServiceReviews.index', 'web', '2021-01-23 22:42:57', '2021-01-23 22:42:57'),
(154, 'eServiceReviews.create', 'web', '2021-01-23 22:42:58', '2021-01-23 22:42:58'),
(155, 'eServiceReviews.store', 'web', '2021-01-23 22:42:58', '2021-01-23 22:42:58'),
(156, 'eServiceReviews.edit', 'web', '2021-01-23 22:42:58', '2021-01-23 22:42:58'),
(157, 'eServiceReviews.update', 'web', '2021-01-23 22:42:58', '2021-01-23 22:42:58'),
(158, 'eServiceReviews.destroy', 'web', '2021-01-23 22:42:58', '2021-01-23 22:42:58'),
(160, 'galleries.index', 'web', '2021-01-23 23:17:46', '2021-01-23 23:17:46'),
(161, 'galleries.create', 'web', '2021-01-23 23:17:47', '2021-01-23 23:17:47'),
(162, 'galleries.store', 'web', '2021-01-23 23:17:47', '2021-01-23 23:17:47'),
(163, 'galleries.edit', 'web', '2021-01-23 23:17:47', '2021-01-23 23:17:47'),
(164, 'galleries.update', 'web', '2021-01-23 23:17:47', '2021-01-23 23:17:47'),
(165, 'galleries.destroy', 'web', '2021-01-23 23:17:47', '2021-01-23 23:17:47'),
(166, 'requestedEProviders.index', 'web', '2021-01-25 12:53:17', '2021-01-25 12:53:17'),
(167, 'slides.index', 'web', '2021-01-25 14:01:20', '2021-01-25 14:01:20'),
(168, 'slides.create', 'web', '2021-01-25 14:01:20', '2021-01-25 14:01:20'),
(169, 'slides.store', 'web', '2021-01-25 14:01:20', '2021-01-25 14:01:20'),
(170, 'slides.edit', 'web', '2021-01-25 14:01:20', '2021-01-25 14:01:20'),
(171, 'slides.update', 'web', '2021-01-25 14:01:20', '2021-01-25 14:01:20'),
(172, 'slides.destroy', 'web', '2021-01-25 14:01:20', '2021-01-25 14:01:20'),
(173, 'notifications.index', 'web', '2021-01-25 18:42:33', '2021-01-25 18:42:33'),
(174, 'notifications.show', 'web', '2021-01-25 18:42:34', '2021-01-25 18:42:34'),
(175, 'notifications.destroy', 'web', '2021-01-25 18:42:34', '2021-01-25 18:42:34'),
(176, 'coupons.index', 'web', '2021-01-25 19:11:55', '2021-01-25 19:11:55'),
(177, 'coupons.create', 'web', '2021-01-25 19:11:55', '2021-01-25 19:11:55'),
(178, 'coupons.store', 'web', '2021-01-25 19:11:55', '2021-01-25 19:11:55'),
(179, 'coupons.edit', 'web', '2021-01-25 19:11:55', '2021-01-25 19:11:55'),
(180, 'coupons.update', 'web', '2021-01-25 19:11:55', '2021-01-25 19:11:55'),
(181, 'coupons.destroy', 'web', '2021-01-25 19:11:55', '2021-01-25 19:11:55'),
(182, 'bookingStatuses.index', 'web', '2021-01-25 22:21:01', '2021-01-25 22:21:01'),
(183, 'bookingStatuses.create', 'web', '2021-01-25 22:21:01', '2021-01-25 22:21:01'),
(184, 'bookingStatuses.store', 'web', '2021-01-25 22:21:01', '2021-01-25 22:21:01'),
(185, 'bookingStatuses.edit', 'web', '2021-01-25 22:21:01', '2021-01-25 22:21:01'),
(186, 'bookingStatuses.update', 'web', '2021-01-25 22:21:01', '2021-01-25 22:21:01'),
(187, 'bookingStatuses.destroy', 'web', '2021-01-25 22:21:01', '2021-01-25 22:21:01'),
(188, 'bookings.index', 'web', '2021-01-26 00:27:09', '2021-01-26 00:27:09'),
(189, 'bookings.create', 'web', '2021-01-26 00:27:09', '2021-01-26 00:27:09'),
(190, 'bookings.store', 'web', '2021-01-26 00:27:09', '2021-01-26 00:27:09'),
(191, 'bookings.show', 'web', '2021-01-26 00:27:09', '2021-01-26 00:27:09'),
(192, 'bookings.edit', 'web', '2021-01-26 00:27:09', '2021-01-26 00:27:09'),
(193, 'bookings.update', 'web', '2021-01-26 00:27:09', '2021-01-26 00:27:09'),
(194, 'bookings.destroy', 'web', '2021-01-26 00:27:09', '2021-01-26 00:27:09'),
(195, 'eProviderPayouts.index', 'web', '2021-01-30 14:23:08', '2021-01-30 14:23:08'),
(196, 'eProviderPayouts.create', 'web', '2021-01-30 14:23:08', '2021-01-30 14:23:08'),
(197, 'eProviderPayouts.store', 'web', '2021-01-30 14:23:08', '2021-01-30 14:23:08'),
(198, 'eProviderPayouts.destroy', 'web', '2021-01-30 14:23:09', '2021-01-30 14:23:09'),
(199, 'earnings.index', 'web', '2021-01-30 16:57:57', '2021-01-30 16:57:57'),
(200, 'earnings.create', 'web', '2021-01-30 16:57:57', '2021-01-30 16:57:57'),
(201, 'earnings.store', 'web', '2021-01-30 16:57:57', '2021-01-30 16:57:57'),
(202, 'earnings.destroy', 'web', '2021-01-30 16:57:57', '2021-01-30 16:57:57'),
(203, 'customPages.index', 'web', '2021-02-24 14:37:44', '2021-02-24 14:37:44'),
(204, 'customPages.create', 'web', '2021-02-24 14:37:44', '2021-02-24 14:37:44'),
(205, 'customPages.store', 'web', '2021-02-24 14:37:44', '2021-02-24 14:37:44'),
(206, 'customPages.show', 'web', '2021-02-24 14:37:44', '2021-02-24 14:37:44'),
(207, 'customPages.edit', 'web', '2021-02-24 14:37:44', '2021-02-24 14:37:44'),
(208, 'customPages.update', 'web', '2021-02-24 14:37:44', '2021-02-24 14:37:44'),
(209, 'customPages.destroy', 'web', '2021-02-24 14:37:44', '2021-02-24 14:37:44');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'web',
  `default` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `default`, `created_at`, `updated_at`) VALUES
(2, 'admin', 'web', 0, NULL, NULL),
(3, 'provider', 'web', 0, NULL, NULL),
(4, 'customer', 'web', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 2),
(2, 2),
(2, 3),
(2, 4),
(3, 2),
(3, 3),
(3, 4),
(4, 2),
(5, 2),
(6, 2),
(8, 2),
(9, 2),
(9, 3),
(9, 4),
(10, 2),
(11, 2),
(11, 3),
(11, 4),
(12, 2),
(12, 3),
(13, 2),
(16, 2),
(19, 2),
(20, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2),
(40, 2),
(41, 2),
(42, 2),
(42, 3),
(42, 4),
(43, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 2),
(48, 2),
(48, 3),
(48, 4),
(49, 2),
(50, 2),
(51, 2),
(52, 2),
(53, 2),
(54, 2),
(54, 3),
(54, 4),
(57, 2),
(57, 3),
(58, 2),
(59, 2),
(60, 2),
(61, 2),
(62, 2),
(63, 2),
(66, 2),
(67, 2),
(69, 2),
(70, 2),
(71, 2),
(72, 2),
(72, 3),
(73, 2),
(73, 3),
(74, 2),
(74, 3),
(75, 2),
(75, 3),
(76, 2),
(76, 3),
(77, 2),
(77, 3),
(78, 2),
(78, 3),
(79, 2),
(79, 3),
(80, 2),
(80, 3),
(81, 2),
(81, 3),
(82, 2),
(82, 3),
(83, 2),
(83, 3),
(84, 2),
(84, 3),
(85, 2),
(85, 3),
(92, 2),
(92, 3),
(93, 2),
(94, 2),
(95, 2),
(96, 2),
(97, 2),
(98, 2),
(98, 3),
(98, 4),
(99, 2),
(99, 3),
(99, 4),
(100, 2),
(100, 3),
(100, 4),
(101, 2),
(101, 3),
(102, 2),
(102, 3),
(103, 2),
(104, 2),
(104, 3),
(104, 4),
(105, 2),
(105, 3),
(105, 4),
(106, 2),
(106, 3),
(106, 4),
(107, 2),
(107, 3),
(107, 4),
(108, 2),
(108, 3),
(108, 4),
(109, 2),
(109, 3),
(109, 4),
(110, 2),
(111, 2),
(112, 2),
(113, 2),
(114, 2),
(115, 2),
(116, 2),
(116, 3),
(117, 2),
(117, 3),
(118, 2),
(118, 3),
(119, 2),
(119, 3),
(120, 2),
(120, 3),
(121, 2),
(121, 3),
(122, 2),
(122, 3),
(122, 4),
(123, 2),
(123, 3),
(124, 2),
(124, 3),
(126, 2),
(126, 3),
(127, 2),
(127, 3),
(128, 2),
(128, 3),
(129, 2),
(129, 3),
(129, 4),
(130, 2),
(131, 2),
(132, 2),
(133, 2),
(134, 2),
(135, 2),
(135, 3),
(136, 2),
(136, 3),
(137, 2),
(137, 3),
(138, 2),
(139, 2),
(140, 2),
(141, 2),
(141, 3),
(142, 2),
(142, 3),
(143, 2),
(143, 3),
(144, 2),
(144, 3),
(145, 2),
(145, 3),
(146, 2),
(146, 3),
(147, 2),
(147, 3),
(147, 4),
(148, 2),
(149, 2),
(149, 3),
(150, 2),
(151, 2),
(151, 3),
(152, 2),
(153, 2),
(153, 3),
(153, 4),
(156, 2),
(156, 3),
(156, 4),
(157, 2),
(157, 3),
(157, 4),
(158, 2),
(160, 2),
(160, 3),
(161, 2),
(161, 3),
(162, 2),
(162, 3),
(163, 2),
(163, 3),
(164, 2),
(164, 3),
(165, 2),
(165, 3),
(166, 2),
(166, 3),
(166, 4),
(167, 2),
(168, 2),
(169, 2),
(170, 2),
(171, 2),
(172, 2),
(173, 2),
(173, 3),
(173, 4),
(174, 2),
(175, 2),
(175, 3),
(175, 4),
(176, 2),
(176, 3),
(177, 2),
(178, 2),
(179, 2),
(179, 3),
(180, 2),
(180, 3),
(181, 2),
(182, 2),
(182, 3),
(185, 2),
(186, 2),
(188, 2),
(188, 3),
(188, 4),
(191, 2),
(191, 3),
(191, 4),
(192, 2),
(192, 3),
(193, 2),
(193, 3),
(194, 2),
(194, 3),
(195, 2),
(195, 3),
(196, 2),
(196, 3),
(197, 2),
(197, 3),
(199, 2),
(199, 3),
(200, 2),
(200, 3),
(203, 2),
(203, 3),
(203, 4),
(204, 2),
(205, 2),
(206, 2),
(207, 2),
(208, 2),
(209, 2);

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` int(10) UNSIGNED NOT NULL,
  `order` int(10) UNSIGNED DEFAULT 0,
  `text` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_position` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'start',
  `text_color` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_color` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_color` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `indicator_color` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_fit` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'cover',
  `e_service_id` int(10) UNSIGNED DEFAULT NULL,
  `e_provider_id` int(10) UNSIGNED DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `order`, `text`, `button`, `text_position`, `text_color`, `button_color`, `background_color`, `indicator_color`, `image_fit`, `e_service_id`, `e_provider_id`, `enabled`, `created_at`, `updated_at`) VALUES
(1, 1, '{\"en\":\"Hire a Handyman to Fix the Household\"}', '{\"en\":\"Discover It\"}', 'bottom_start', '#333333', '#009E6A', '#FFFFFF', '#333333', 'cover', NULL, NULL, 1, '2021-01-25 14:51:45', '2021-12-14 06:10:36'),
(2, 2, '{\"en\":\"Request Technicians to Repair the Damaged Items\"}', '{\"en\":\"Repair\"}', 'bottom_start', '#333333', '#F4841F', '#FFFFFF', '#333333', 'cover', NULL, NULL, 1, '2021-01-25 17:23:49', '2021-12-14 06:11:19'),
(3, 3, '{\"en\":\"Toss in a helping hand when it comes to cleaning.\"}', '{\"en\":\"Book Now\"}', 'bottom_start', '#333333', '#1FA3F4', '#FFFFFF', '#333333', 'cover', NULL, NULL, 1, '2021-01-31 14:04:36', '2021-12-14 06:12:23');

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` double(10,2) NOT NULL DEFAULT 0.00,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `name`, `value`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Tax 20', 20.00, 'percent', '2021-01-15 14:12:13', '2021-02-02 00:23:01'),
(2, 'Tax 10', 10.00, 'percent', '2021-01-15 14:19:30', '2021-01-15 14:19:30'),
(3, 'Maintenance', 2.00, 'fixed', '2021-01-18 23:48:29', '2021-02-02 00:25:13'),
(4, 'Tools Fee', 5.00, 'fixed', '2021-02-02 00:24:12', '2021-02-02 00:24:12');

-- --------------------------------------------------------

--
-- Table structure for table `timeslots`
--

CREATE TABLE `timeslots` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'monday',
  `start_at` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_at` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` int(10) NOT NULL,
  `cleanup` int(10) DEFAULT 0,
  `e_provider_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0: not available, 1: avaliable'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `timeslots`
--

INSERT INTO `timeslots` (`id`, `date`, `start_at`, `end_at`, `duration`, `cleanup`, `e_provider_id`, `status`) VALUES
(24, '2022/1/01', '11:00', '11:30', 15, 0, 1, 0),
(23, '2022/1/01', '11:00', '11:30', 15, 0, 1, 0),
(22, '2022/1/05', '11:00', '14:30', 15, 0, 2, 1),
(21, '2022/1/03', '11:00', '14:30', 15, 0, 2, 1),
(20, '2022/1/01', '11:00', '14:30', 15, 0, 2, 1),
(19, '2022/1/01', '11:00', '14:30', 15, 0, 2, 1),
(18, '2022/1/01', '11:00', '04:30', 15, 0, 2, 1),
(17, '2022/1/01', '11:00', '11:30', 15, 0, 2, 1),
(16, '2022/1/01', '11:00', '11:30', 15, 0, 2, 1),
(25, '2022/1/01', '11:00', '11:30', 15, 0, 1, 0),
(26, '2022/1/01', '10:00', '12:00', 15, 0, 1, 1),
(27, '2022/1/08', '10:00', '12:00', 15, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(10) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `uuid`, `created_at`, `updated_at`) VALUES
(1, '51dec919-b626-4c9e-8a94-e7decac565b4', '2021-12-13 18:15:41', '2021-12-13 18:15:41'),
(2, 'f6e0db48-3ca9-43c1-828b-7e4fab5be311', '2021-12-13 18:17:05', '2021-12-13 18:17:05'),
(3, 'a7e3410d-a08a-4486-b174-11fe5c4f4ef7', '2021-12-13 19:32:51', '2021-12-13 19:32:51'),
(4, '32bc7315-1b8e-4f33-a2c0-66fa258a844b', '2021-12-14 06:03:37', '2021-12-14 06:03:37'),
(5, 'ac9fbfe4-fef9-46c9-bf23-645be810c3b3', '2021-12-14 06:03:57', '2021-12-14 06:03:57'),
(6, '3d9a8133-2cf8-4ff5-b168-3404f66d9389', '2021-12-14 06:04:24', '2021-12-14 06:04:24'),
(7, 'e5166631-4f71-4dc5-8f46-80079445f5b9', '2021-12-14 06:06:43', '2021-12-14 06:06:43'),
(8, '0f62c9ca-8177-46f8-b8c5-70805a86bc89', '2021-12-14 06:41:57', '2021-12-14 06:41:57'),
(9, '542592a2-555a-4619-949c-e9d06bceb74b', '2021-12-14 18:19:54', '2021-12-14 18:19:54'),
(10, '5c993ca9-796b-49c4-b951-c639619173db', '2021-12-14 18:22:49', '2021-12-14 18:22:49'),
(11, 'a26c9364-3e2d-481d-85aa-445d725e9473', '2021-12-14 18:24:13', '2021-12-14 18:24:13'),
(12, '71652260-0834-4d9f-8ec9-68e983dc6e3c', '2021-12-14 18:24:42', '2021-12-14 18:24:42'),
(13, '4bd7aca9-5a05-44f1-be48-63750b780dcb', '2021-12-14 18:25:13', '2021-12-14 18:25:13'),
(14, '398d9a73-3f3a-4805-b7c8-bd1abe3c8ebc', '2021-12-14 18:26:35', '2021-12-14 18:26:35'),
(15, 'ce10ec68-dc53-45e3-a888-02930b02e6c2', '2021-12-14 18:27:06', '2021-12-14 18:27:06'),
(16, '88c80eb1-dd2b-4e18-8835-d93b1db23855', '2021-12-14 18:27:36', '2021-12-14 18:27:36'),
(17, 'f855ccba-3eea-4dca-9d29-eb2b4b577803', '2021-12-14 18:28:22', '2021-12-14 18:28:22'),
(18, '536fa595-26bc-43cc-b424-4209d338ea77', '2021-12-14 18:28:47', '2021-12-14 18:28:47'),
(19, '53d4dafb-4f6a-40a8-8a07-38a146425768', '2021-12-14 18:29:22', '2021-12-14 18:29:22'),
(20, '09da9620-e037-446b-bc3b-c11b99445165', '2021-12-14 18:29:51', '2021-12-14 18:29:51'),
(21, 'f198f16d-6766-45f3-bc27-974ae7b24241', '2021-12-14 18:31:15', '2021-12-14 18:31:15'),
(22, '41315093-09fd-401c-919a-146a959dd31f', '2021-12-14 18:31:59', '2021-12-14 18:31:59'),
(23, 'dbf6fe1a-e818-4d2b-a43d-4a40b684880e', '2021-12-14 18:32:35', '2021-12-14 18:32:35'),
(24, '5252a075-5b30-47b8-8f36-6704628b970f', '2021-12-14 18:33:02', '2021-12-14 18:33:02'),
(25, '1783dd39-c1bd-4e36-9484-f53b4975c0ce', '2021-12-14 18:35:06', '2021-12-14 18:35:06'),
(26, 'd486d1d6-8319-4872-965f-1493f40ba1c8', '2021-12-14 18:35:38', '2021-12-14 18:35:38'),
(27, '6835a41c-bbd8-4d3e-a7d9-05002ed864a9', '2021-12-14 18:36:46', '2021-12-14 18:36:46'),
(28, '37009ae6-e502-4eb1-8669-ce2d8ea5df9a', '2021-12-14 18:37:18', '2021-12-14 18:37:18'),
(29, '5a4db359-eeeb-4245-950d-04f1ab610c27', '2021-12-14 18:37:55', '2021-12-14 18:37:55'),
(30, 'c2bc6492-94b4-491e-baba-b0dbbfd96983', '2021-12-14 18:38:30', '2021-12-14 18:38:30'),
(31, 'c1979096-5025-4aea-9f27-a9bec03e6ef1', '2021-12-14 18:38:59', '2021-12-14 18:38:59'),
(32, '9f592968-956f-434c-98d7-1803763e3fee', '2021-12-14 18:39:34', '2021-12-14 18:39:34'),
(33, 'd9a00e34-a0ff-4b93-bce5-b475b0c74d79', '2021-12-14 18:40:08', '2021-12-14 18:40:08'),
(34, 'ed60d069-c08e-4fb4-b558-d923b29a5891', '2021-12-14 18:40:32', '2021-12-14 18:40:32'),
(35, '17393dca-e40b-4580-bc14-3b1542c15aed', '2021-12-14 18:45:54', '2021-12-14 18:45:54'),
(36, '3c676d4f-8dc8-4214-85bf-03cbb0698833', '2021-12-14 18:46:56', '2021-12-14 18:46:56'),
(37, '4f665a2c-5abe-453f-8136-fcf3351a2ad0', '2021-12-14 18:47:27', '2021-12-14 18:47:27'),
(38, '419b35cc-c512-43e5-aac5-4487771a40b6', '2021-12-14 18:47:59', '2021-12-14 18:47:59'),
(39, '88f287f0-2232-47d9-b196-8021b93a963c', '2021-12-14 18:48:18', '2021-12-14 18:48:18'),
(40, '01e7bd66-36e0-4856-9a16-ddaccfa4b804', '2021-12-14 18:49:38', '2021-12-14 18:49:38'),
(41, '25777719-4656-4977-a0cd-9481553f4a99', '2021-12-14 18:50:25', '2021-12-14 18:50:25'),
(42, 'd4a98486-0c45-4922-b7d0-27eafa6ad3b5', '2021-12-14 18:50:52', '2021-12-14 18:50:52'),
(43, '38651394-e7f8-4082-9055-0f5cfe1a859c', '2021-12-14 18:58:28', '2021-12-14 18:58:28'),
(44, '85669a37-704a-4c70-aaeb-c7f31ecf2aca', '2021-12-14 18:59:07', '2021-12-14 18:59:07'),
(45, 'd1fa32cd-0343-487f-b4c7-39c19f354b4a', '2021-12-14 18:59:38', '2021-12-14 18:59:38'),
(46, '0084f2b1-ed12-45e6-9799-878afcd97449', '2021-12-14 19:00:14', '2021-12-14 19:00:14'),
(47, '40ecfe3e-1c53-4085-8ce6-b21d875fbce4', '2021-12-14 19:00:47', '2021-12-14 19:00:47'),
(48, '82b8b0c3-e086-413a-a3c7-497ca8fcc62f', '2021-12-14 19:01:30', '2021-12-14 19:01:30'),
(49, 'f5b11454-8fbb-41aa-bc83-179410d88dd8', '2021-12-14 19:01:55', '2021-12-14 19:01:55'),
(50, 'bc2170af-40ac-4eb0-b8c0-c36abfc5696a', '2021-12-14 19:02:30', '2021-12-14 19:02:30'),
(51, 'f3fbe899-7fd7-484b-a062-4d17f731c82b', '2021-12-14 19:03:37', '2021-12-14 19:03:37'),
(52, '6b547889-7831-43f0-b44f-ad2aefdafe03', '2021-12-14 19:04:32', '2021-12-14 19:04:32'),
(53, 'dfb3f701-5675-4e2c-82a5-721547382068', '2021-12-14 19:06:50', '2021-12-14 19:06:50'),
(54, 'af81445a-4498-4e48-955a-611d6a6a105c', '2021-12-14 19:08:04', '2021-12-14 19:08:04'),
(55, '7388c9e6-af27-4622-9eff-8c427f73342b', '2021-12-14 19:08:23', '2021-12-14 19:08:23'),
(56, 'f0930dbe-f838-4f15-9c53-da5d9e11c349', '2021-12-14 19:08:40', '2021-12-14 19:08:40'),
(57, '710c946b-37be-40a9-a505-491abb605530', '2021-12-14 19:09:06', '2021-12-14 19:09:06'),
(58, 'aa5eeba9-6fa8-4566-82c5-48facdbab2b2', '2021-12-14 19:10:28', '2021-12-14 19:10:28'),
(59, '5b434ed9-7e7f-46fe-b2eb-f118362da175', '2021-12-14 19:11:41', '2021-12-14 19:11:41'),
(60, '368acb95-c23a-4cb3-b721-9d054d313095', '2021-12-14 19:12:05', '2021-12-14 19:12:05'),
(61, 'f5e35baf-96f9-4f48-b331-a4dccd9e7143', '2021-12-14 19:12:22', '2021-12-14 19:12:22'),
(62, '1b943b9a-41a6-4a13-8c54-86ca64544dd7', '2021-12-14 19:13:20', '2021-12-14 19:13:20'),
(63, 'a72c0273-444d-4004-a2aa-f0727bf86370', '2021-12-14 19:13:48', '2021-12-14 19:13:48'),
(64, '44f49d4f-e0ca-4809-8658-89e978a5698b', '2021-12-14 19:28:36', '2021-12-14 19:28:36'),
(65, '825cd63a-1c0a-41d8-bc88-a16be13ec9b0', '2021-12-14 19:29:02', '2021-12-14 19:29:02'),
(66, '5b5766d5-72c2-4282-9bd7-e26de2713f48', '2021-12-14 19:32:06', '2021-12-14 19:32:06'),
(67, '57bb8319-78ef-454e-8e96-103a65f333bd', '2021-12-14 19:32:32', '2021-12-14 19:32:32'),
(68, '6fc078ed-0b4f-4c25-a161-f7a9f51cf6c1', '2021-12-14 19:33:07', '2021-12-14 19:33:07'),
(69, 'acbd5053-6605-43aa-a3fe-e7a977cbb224', '2021-12-14 19:33:54', '2021-12-14 19:33:54'),
(70, '9fb96643-7936-493d-a04d-5360f38d9c9a', '2021-12-14 19:38:48', '2021-12-14 19:38:48'),
(71, 'a0afee4a-28a5-4b55-aeb1-a6ff38df15d6', '2021-12-14 19:39:11', '2021-12-14 19:39:11'),
(72, 'acaf8853-c488-43e4-b411-348d8e5ed0e1', '2021-12-14 19:39:31', '2021-12-14 19:39:31'),
(73, '1d1de124-1e27-4aa6-bd43-86f2a040b39f', '2021-12-14 19:42:40', '2021-12-14 19:42:40'),
(74, '29770ff3-4df8-465e-be4d-d882166480fa', '2021-12-14 19:43:04', '2021-12-14 19:43:04'),
(75, 'aca695d7-9a24-4e42-a2d2-1633ec17c5a6', '2021-12-14 19:43:35', '2021-12-14 19:43:35'),
(76, 'd05ada59-27e5-4612-894e-bc0fb1488a25', '2021-12-14 19:44:49', '2021-12-14 19:44:49'),
(77, '814e83ea-f343-4bd6-9d80-4b4567c74b0d', '2021-12-14 19:45:13', '2021-12-14 19:45:13'),
(78, 'f2883523-6a93-43c3-b411-7a8a6df2b516', '2021-12-14 19:45:30', '2021-12-14 19:45:30'),
(79, '46155219-5346-4dad-977b-31513a83e8d9', '2021-12-14 19:46:46', '2021-12-14 19:46:46'),
(80, '7c19f117-e3ac-4145-ae61-db331e099229', '2021-12-14 19:47:57', '2021-12-14 19:47:57'),
(81, '307e85f0-0ac3-4716-8195-1d681d3d91ba', '2021-12-14 19:48:38', '2021-12-14 19:48:38'),
(82, 'a809500f-670b-47ba-b5af-e3985e81a1c3', '2021-12-14 19:48:57', '2021-12-14 19:48:57'),
(83, '66ef5911-16a8-4618-9865-5cd9d1e68144', '2021-12-14 19:51:24', '2021-12-14 19:51:24'),
(84, '9d413d66-3589-48a4-addb-46d125b5a2f4', '2021-12-14 19:52:07', '2021-12-14 19:52:07'),
(85, '5ae65b17-3012-4517-8a77-55b9b8d09e1a', '2021-12-14 19:52:47', '2021-12-14 19:52:47'),
(86, 'ca00bbee-2e88-4bd8-af65-120a5c823d72', '2021-12-14 19:53:20', '2021-12-14 19:53:20'),
(87, '0d136baf-76f1-4559-ae84-f42908fd239f', '2021-12-14 19:53:44', '2021-12-14 19:53:44'),
(88, '33fa4ff0-1b30-4fa6-883f-c2d206e85b7d', '2021-12-14 19:54:08', '2021-12-14 19:54:08'),
(89, 'ac36302e-0e7a-4ed4-a435-869be45c6426', '2021-12-14 19:55:32', '2021-12-14 19:55:32'),
(90, '495f9e7a-4a11-4d27-822b-9cd69dec8838', '2021-12-14 19:55:44', '2021-12-14 19:55:44'),
(91, '9732171a-2c5a-490e-ab08-1cb3d02b10ae', '2021-12-14 19:56:21', '2021-12-14 19:56:21'),
(92, '7e05bc0e-7c9b-4475-9804-e9eb1f6fb61a', '2021-12-14 19:57:19', '2021-12-14 19:57:19'),
(93, '01c661fc-3ac4-457e-9e17-f596f95f42a2', '2021-12-14 19:57:27', '2021-12-14 19:57:27'),
(94, 'b7bba6e6-f8c7-4deb-89b6-0409f8eca977', '2021-12-14 20:03:21', '2021-12-14 20:03:21'),
(95, 'c4a4385b-29fb-4438-a169-56acf5c5e155', '2021-12-14 20:04:34', '2021-12-14 20:04:34'),
(96, 'f936fcf9-4c66-478e-86e5-29e9d48620e4', '2021-12-15 17:46:10', '2021-12-15 17:46:10'),
(97, '1918f0c3-6db2-4470-b2c8-8eb70fa080af', '2021-12-15 17:47:13', '2021-12-15 17:47:13'),
(98, '5a7d32aa-014f-456f-b4cd-1feb7f32c8d4', '2021-12-15 17:49:36', '2021-12-15 17:49:36'),
(99, 'c7dd1ce4-a2af-45d8-bcdf-436f3cf41ffc', '2021-12-15 17:55:07', '2021-12-15 17:55:07'),
(100, '40e7cc27-fc30-4e5a-a028-5a8a54a13e0f', '2021-12-15 18:26:07', '2021-12-15 18:26:07'),
(101, '6cb871f0-07ae-4d0a-a019-d4bb8fedb532', '2021-12-15 20:07:45', '2021-12-15 20:07:45'),
(102, '9fc4ca9e-5cb6-4346-8db9-9beef4226482', '2021-12-15 20:10:02', '2021-12-15 20:10:02'),
(103, 'ea2e8a53-5fa0-4617-87b1-df72fbd54f99', '2021-12-15 20:15:22', '2021-12-15 20:15:22'),
(104, '31222a8c-24d6-4e22-80c7-8aa0e6efcdbb', '2021-12-15 20:45:23', '2021-12-15 20:45:23'),
(105, '3f221eed-b652-4ccf-b61f-47d3d62cf35e', '2021-12-15 20:46:19', '2021-12-15 20:46:19'),
(106, 'c412ebbb-8c1b-4f29-9f88-7fe104b80d32', '2021-12-15 20:49:30', '2021-12-15 20:49:30'),
(107, '562ce431-1bce-402b-aa10-a042052096f3', '2021-12-16 01:28:39', '2021-12-16 01:28:39'),
(108, '072db4e8-6f39-4d75-8c2d-b36ef5cf605d', '2021-12-20 00:48:09', '2021-12-20 00:48:09'),
(109, 'd4c8c93b-92e3-4a8c-8dcb-bdc5df10943a', '2021-12-20 00:49:42', '2021-12-20 00:49:42'),
(110, 'f1b85155-c03f-4495-bfd9-283dc798d174', '2021-12-20 00:50:28', '2021-12-20 00:50:28'),
(111, '127ad701-4733-48f9-b308-3e4333a5ea03', '2021-12-20 00:51:50', '2021-12-20 00:51:50'),
(112, '63c6adf5-56c7-454c-95f0-3db92709df95', '2021-12-20 00:52:26', '2021-12-20 00:52:26'),
(113, '4d02732c-2ca5-4d55-bd2a-c03ca81fb57a', '2021-12-20 00:55:06', '2021-12-20 00:55:06'),
(114, '2da9a5d0-2b5a-40a1-b0b6-11c2596a3057', '2021-12-20 00:56:12', '2021-12-20 00:56:12'),
(115, '0f6811c2-d63b-44a1-9802-ecc0d27c5d4f', '2021-12-20 00:57:20', '2021-12-20 00:57:20'),
(116, 'e09e0870-8e6a-43b3-8e14-acb1a49b57ae', '2021-12-20 00:58:06', '2021-12-20 00:58:06'),
(117, 'e0a3bb0e-6f3a-4fce-8b6f-4ba8c583483d', '2021-12-20 01:02:10', '2021-12-20 01:02:10'),
(118, '9de09864-0589-4d62-8b34-ef61d2898233', '2021-12-20 01:05:06', '2021-12-20 01:05:06'),
(119, '0dddfefb-0c0d-49e1-9f64-3f3fb990805f', '2021-12-20 01:15:11', '2021-12-20 01:15:11'),
(120, '55cd8e5e-410f-4b06-89ef-3ca216e2da90', '2021-12-20 01:17:59', '2021-12-20 01:17:59'),
(121, '4d92989b-7c45-47c3-93f4-e237fcc621d5', '2021-12-20 01:19:34', '2021-12-20 01:19:34'),
(122, '52eea7bc-cda6-4fa6-991c-b33c0e76da34', '2021-12-20 01:20:19', '2021-12-20 01:20:19'),
(123, '7cfc01a5-16c0-4176-912c-e650ae1d7565', '2021-12-20 01:47:19', '2021-12-20 01:47:19'),
(124, '8c2fad57-04b9-472a-97d6-3931726ff355', '2021-12-20 02:35:09', '2021-12-20 02:35:09'),
(125, 'd116237a-7e4a-42a4-b346-4bbd94e4c408', '2021-12-20 02:43:25', '2021-12-20 02:43:25'),
(126, 'ecb6c3ce-3476-4d89-aff9-ea37e7bd53e2', '2021-12-20 03:03:21', '2021-12-20 03:03:21'),
(127, 'ba9ed258-0bcf-482c-abf8-2c3a3cd9014a', '2021-12-20 14:10:14', '2021-12-20 14:10:14'),
(128, '07791d26-6ef1-4a63-bca0-bc3a4becc3b8', '2021-12-20 14:11:00', '2021-12-20 14:11:00'),
(129, 'fffec658-989b-471a-8d88-d97ce7a7aa00', '2021-12-20 14:16:11', '2021-12-20 14:16:11'),
(130, '640778f8-0402-4ecd-958b-991c22d313be', '2021-12-20 15:57:39', '2021-12-20 15:57:39'),
(131, 'efff9a98-179e-4565-a852-bd6e818d905b', '2021-12-20 16:02:36', '2021-12-20 16:02:36'),
(132, 'f61d0d3f-1bad-4103-b26b-783c06e3c966', '2021-12-20 16:06:57', '2021-12-20 16:06:57'),
(133, '19c0a091-a84b-43e3-9db4-d4f761f5485f', '2021-12-20 18:27:32', '2021-12-20 18:27:32'),
(134, 'cd9ad334-d0de-40a4-808f-863abb50dd61', '2021-12-20 18:28:37', '2021-12-20 18:28:37'),
(135, '4e78b6fa-888c-4c9f-ad76-390950619e9e', '2021-12-20 18:29:01', '2021-12-20 18:29:01'),
(136, '5b56c064-715b-4882-884b-1613d7f56a4a', '2021-12-20 18:29:25', '2021-12-20 18:29:25'),
(137, 'bfd18139-d52a-47ee-87a7-11d2b2b5de95', '2021-12-20 18:30:18', '2021-12-20 18:30:18'),
(138, 'f17b2618-e6af-4c71-801f-900186d42da6', '2021-12-20 18:30:46', '2021-12-20 18:30:46'),
(139, '73b0e362-874a-4ee0-aab2-908458512911', '2021-12-20 18:31:32', '2021-12-20 18:31:32'),
(140, '555e0034-cc80-473a-b15d-115c069a3ad3', '2021-12-20 18:32:10', '2021-12-20 18:32:10'),
(141, 'ada5153b-c8cd-4a32-a121-a139d9fd1051', '2021-12-20 18:33:54', '2021-12-20 18:33:54'),
(142, '98649999-279f-4db4-8060-af5bc735517e', '2021-12-20 18:34:22', '2021-12-20 18:34:22'),
(143, '367fe5fb-dbc9-43b3-beda-2c18c0d1fa9e', '2021-12-20 18:35:02', '2021-12-20 18:35:02'),
(144, '4caa0346-517a-4cfb-ae75-21cb52b9ff2b', '2021-12-20 18:37:24', '2021-12-20 18:37:24'),
(145, 'e696d4c3-d989-4f46-926a-923383e32336', '2021-12-20 18:37:35', '2021-12-20 18:37:35'),
(146, '84663fc1-0a2f-4e75-b37c-db6c9ef88b1d', '2021-12-20 18:57:44', '2021-12-20 18:57:44'),
(147, '3b344c67-1617-45e4-a53c-4ddbfcaf0f4e', '2021-12-20 21:48:00', '2021-12-20 21:48:00'),
(148, 'fa103072-5254-41be-9c42-cfa69f29216a', '2021-12-21 14:31:55', '2021-12-21 14:31:55'),
(149, '243b0fa9-b247-4a0d-bdf1-144e8ed73fa6', '2021-12-21 14:48:21', '2021-12-21 14:48:21'),
(150, '28ef1add-cb14-4c07-adbe-cb0158b456a0', '2021-12-21 14:49:21', '2021-12-21 14:49:21'),
(151, 'cdfb79ef-3872-4221-8e71-52836f882e28', '2021-12-21 14:53:30', '2021-12-21 14:53:30'),
(152, '48e95fbe-76bc-48ce-b5de-b96401a7e693', '2021-12-21 14:55:53', '2021-12-21 14:55:53'),
(153, 'fed440ba-95c5-4352-9092-2960e877ba65', '2021-12-21 14:58:43', '2021-12-21 14:58:43'),
(154, 'fb294bad-e99c-4ede-88b9-4d5c53af19b5', '2021-12-21 15:03:52', '2021-12-21 15:03:52'),
(155, '87ca4bdf-3813-4ff8-9a33-5cdc1f535961', '2021-12-21 19:25:01', '2021-12-21 19:25:01'),
(156, 'a0ba3c0e-99b7-4a10-a7e5-b7ab0f5ff57e', '2021-12-21 19:25:10', '2021-12-21 19:25:10'),
(157, '4aa1dc2f-8b8f-4773-bd46-e3324ab06169', '2021-12-21 19:25:56', '2021-12-21 19:25:56'),
(158, 'aa41b8ad-d825-4421-9ac4-7b536b2f40d0', '2021-12-21 19:26:45', '2021-12-21 19:26:45'),
(159, '59abd58c-d674-4ec3-828d-19ab6f6b7a4f', '2021-12-21 19:27:07', '2021-12-21 19:27:07'),
(160, '2830bb80-22a2-4c18-9c7d-762330da8d69', '2021-12-21 22:58:18', '2021-12-21 22:58:18'),
(161, '6d717608-efb1-4171-89dd-1aadd16b739e', '2021-12-21 23:18:31', '2021-12-21 23:18:31'),
(164, 'b74fd527-af7b-4fe9-a9f9-7c8c3e9cf62c', '2021-12-21 23:21:57', '2021-12-21 23:21:57'),
(165, 'a44ffe0d-e1db-4fa2-9550-b8ebc95fe694', '2021-12-22 18:40:31', '2021-12-22 18:40:31'),
(169, '52a3fcc6-99aa-44cb-9b6c-39a2de16f96d', '2021-12-22 18:44:24', '2021-12-22 18:44:24'),
(170, '2ba3bc2b-11c2-419b-9d72-c5d3cf69ab49', '2021-12-22 18:55:29', '2021-12-22 18:55:29'),
(171, 'd417d72f-5a85-46ce-9a50-d35b1eda0f36', '2021-12-22 18:56:40', '2021-12-22 18:56:40'),
(172, '821a0d8e-88a5-40ad-b37f-d21f3e3d549c', '2021-12-22 19:07:13', '2021-12-22 19:07:13'),
(173, 'dff4e319-35cb-4912-9928-7c6f8da9f758', '2021-12-22 19:09:51', '2021-12-22 19:09:51'),
(174, 'd9d3b0eb-f657-4f4b-aa7c-04e61ce269ec', '2021-12-22 19:11:21', '2021-12-22 19:11:21'),
(175, '042dd06c-11b5-40c4-93a4-a9e79a04ddc7', '2021-12-22 19:40:29', '2021-12-22 19:40:29'),
(176, '0def27c2-36cd-4d4b-839b-2c5acb54b514', '2021-12-22 23:35:18', '2021-12-22 23:35:18'),
(177, '3946851a-c1da-4120-b170-59bf8d43ed65', '2021-12-22 23:35:21', '2021-12-22 23:35:21'),
(179, '916163d1-52a8-483f-bbf3-dc511e0e2aa4', '2021-12-22 23:37:13', '2021-12-22 23:37:13'),
(181, '566a935e-276e-48fd-924d-6c264e549d1c', '2021-12-25 01:16:47', '2021-12-25 01:16:47'),
(182, '47245c50-46c4-468f-a601-820092f319ed', '2021-12-25 02:03:30', '2021-12-25 02:03:30'),
(183, 'd8fceb2f-e0df-456a-828f-a175b23600e8', '2021-12-25 02:40:14', '2021-12-25 02:40:14'),
(184, '3cdf077b-b001-42ec-adf2-f3fa85eae027', '2021-12-25 02:40:49', '2021-12-25 02:40:49'),
(185, 'dfc33bf3-76a0-4546-855f-910d679c86a1', '2021-12-25 02:41:48', '2021-12-25 02:41:48'),
(186, '3623f8a3-2bc7-4ac6-8aec-9c8ee5c55218', '2021-12-25 02:45:12', '2021-12-25 02:45:12'),
(187, '4a1970ca-f74c-4b16-bb3e-749f3f5f4b90', '2021-12-25 02:46:44', '2021-12-25 02:46:44'),
(188, '5cd33ffd-eff3-4680-900a-a389c86f00d1', '2021-12-25 02:47:13', '2021-12-25 02:47:13'),
(189, 'abfceb35-ca4a-44c0-93e6-7345f9bfa57d', '2021-12-25 02:49:04', '2021-12-25 02:49:04'),
(190, 'c33c4c1a-4d5b-4363-a377-a2f049b4b2fa', '2021-12-25 19:26:29', '2021-12-25 19:26:29'),
(191, 'b7a1116e-e348-4b6d-866f-d3d350b80454', '2021-12-25 19:57:26', '2021-12-25 19:57:26'),
(192, 'e588a43f-08ce-42e5-ab25-5c3133f4050e', '2022-01-07 20:00:41', '2022-01-07 20:00:41'),
(193, '7754019f-d766-40e8-9d78-82e1b749f2b6', '2022-01-07 20:16:35', '2022-01-07 20:16:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_verified_at` timestamp NULL DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` char(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `paypal_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone_number`, `phone_verified_at`, `email_verified_at`, `password`, `api_token`, `device_token`, `stripe_id`, `card_brand`, `card_last_four`, `trial_ends_at`, `paypal_email`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@demo.com', '+1 234 8996 321', '2021-01-11 01:22:10', '2021-01-11 01:22:10', '$2y$10$C3mUKg896hbPawZc7e0JrOhnoj3RXS71c82sMJF/2IwBjmBggQ9Gi', 'PivvPlsQWxPl1bB5KrbKNBuraJit0PrUZekQUgtLyTRuyBq921atFtoR1HuA', 'daCEoU40T8iUhjMEXbvxPH:APA91bHaAPJXhOyjUYh13nhH8S4THfaA98CT_DsCg904pHvs2IZ6pnCcjG9c7ms_0jev_oextHocZOceetakOCAG7QD5hhN2v2-0pY6U5jNBfpgLjWuVyuMJIye4-KR9IAPHl_EhOSoM', NULL, NULL, NULL, NULL, NULL, 'DPEZAyUhyipGcP2LTlAGKp3KQirdDYzIJuoaKr9vqBPvL7ayucaIUODfEXWk', NULL, '2021-12-26 15:49:11'),
(2, 'Customer', 'customer@demo.com', '+5522988171011', '2021-12-11 18:13:49', NULL, '$2y$10$pSeXDMTK1cZMUlgkxgxX0e9fTqJkpxcF1TxbLDYRjZ3SdLkMJfZ.q', 'tsF2E9xrYjK8sdggFP2e1n2QgPq5x19GZPDmbBdQv8aUehQnuKbXChblobUF', 'c9DE6Gy4TD60Aw0eq-QSr1:APA91bGkHgXZBLwRLq9UEkEhgEsY4S97HiO1ZN-IGdk32gK6iRO-4XVDYjKB5kdbH5Enl2yPc_-rPgaC3VWkxt54w8mAy4FjrupuwhNJJg_ZtEztlt8_2R57lyJTyE1iAGC9equrVJnH', NULL, NULL, NULL, NULL, NULL, '5mwpyieIupUXT1gITgZJwY4VgODi3wBT2QdK7w9jYLB75vO8SdUA6k2IIycQ', '2021-12-11 17:13:51', '2022-01-23 00:01:04'),
(10, 'Jessica', 'Jessica@gmail.com', '+19253849190', '2021-12-21 21:11:24', NULL, '$2y$10$KhZdlTzSEwQf43qazP.i4OmMUjdLmqW5IFnkaSJYhjM4m7ykj2dT6', 'dHe3buyeHi3vmh6eFhXh5MArtGRBJg1Wd0BYfloCAQXaso4QUZml5kveF2Xr', 'c9DE6Gy4TD60Aw0eq-QSr1:APA91bGkHgXZBLwRLq9UEkEhgEsY4S97HiO1ZN-IGdk32gK6iRO-4XVDYjKB5kdbH5Enl2yPc_-rPgaC3VWkxt54w8mAy4FjrupuwhNJJg_ZtEztlt8_2R57lyJTyE1iAGC9equrVJnH', NULL, NULL, NULL, NULL, NULL, 'EAs5U2eONVJElYDMPeR6wcn0qDosePOGAwn3yAR8GniP3qopUeF01jxiDRLe', '2021-12-21 23:11:02', '2022-01-23 00:38:12'),
(4, 'Joey\'s', 'jessi@gmail.com', '+27793131186', '2021-12-13 14:47:36', NULL, '$2y$10$4WSL99kdKTq3UGu0nV4kqurQuZrqbN4hS5vzlSK.m0b2NbbPnA7AW', 'm3ekhl0cpH1kk6qsjEtTmLisYwbajhpeNqABFLyecgkip4eafXwoqNh6eRPU', 'cTWizUHWSfClh5N6bdwmVk:APA91bFVdKbaf6vcOQCBPIHdSTjGZzrdGeVivhswiSnQnAeQ17CP9ZUfwrGxShZBJZ0fzhMrnMBNK3QvkM1RGhuEo2AonOGzKYBcKZJQhllCYh7nD6wBgqWSV5vAwuJ9KB4dOboFWfB1', NULL, NULL, NULL, NULL, NULL, 'Ky7wgJZtJih8oTTizuUoIDUQWx4YS5bcjI6BbEOVsIWUdmTfA64PwHWuBsuX', '2021-12-13 17:47:35', '2022-01-15 03:29:17'),
(12, 'Shane Ellis', 'trainwithshanee@gmail.com', '+16617423341', '2021-12-23 23:44:06', NULL, '$2y$10$BEACgwX2fdDPgJr16wKta.ACLmLolOADpClhXN1/eWX.epwMpITYO', 'PcKU69UONWpkeOsVu4wcSFUylPX95WOBFS0YvQyYv27SY9euWW0p6kP0tkHZ', 'dbRVvsn_QaWUtXSk5tbCsX:APA91bHk4vsJKeKkLyyVem0iX0tY1ymEYc8nfOr-Y21dgy8KQlXJ0E9ySxxeEhOP-UqJTFOOuLp1uSK1y-Yy5MlINkpX_gfu8XBWtS1UuQEjXzU33fVi1VRsEFWPKHLOxi0EhWNAHxM3', NULL, NULL, NULL, NULL, NULL, 'vRk4F2qingPpNNw7dVLlMn8aiWSHe1jWivUMhmkFXWNyQ9VsQp4SRhQTMDbL', '2021-12-24 01:44:09', '2021-12-25 21:35:42'),
(13, 'tester', 'test@provider.com', '09884380241', NULL, NULL, '$2y$10$inTmaINbmyV8pN0P1MMoJelZe8FC7Eo79TLfY0lQDcAhglIozhV.W', '6OgzU4MlxweRjj7FQds5gEEcZ1ACF2CRz74aotjJjmwMujbooo4Kcf8tuv0N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-25 19:28:32', '2021-12-25 19:28:32'),
(15, 'high', 'Johnny@gmail.com', '+19884380241', '2021-12-25 16:53:48', NULL, '$2y$10$ZxObNcij/yKk5AJmLYIHYuWpDPlsoSTd.wdBibYqai4BlYzntIwD2', 'z9x9JJGELnf0GZEoh7MuFVI7mAtyrd4BDuFlHxglTLiudAkChbWMwsemByXA', 'cPfshGlASwuKspi3XIQACv:APA91bHpy2zVqhwTOGVNs8ZORonw2x741s-pvaGU2dObTuHEdUO-m_i68-XbNExkJZ0uwSM6xfV1IMVjyaednnaERxSDLeR_qNtJubtmtSwzM5nl9eB4UeKoi32T20puHxp_IoBDB8OL', NULL, NULL, NULL, NULL, NULL, 'iN6rkjYuyIv2RFQkOBzGLgw9CTaVlXSZMOACTh5wAFsDrY76AoRTHwtQ6rTU', '2021-12-25 19:53:48', '2021-12-25 19:53:48'),
(17, 'new way', 'newui@provider.com', '+15716996231', '2021-12-30 20:34:52', NULL, '$2y$10$ISadj7lswhGxgkkm8TfL2.kZ7fplpztsh.5KGBwx7Su.huEjsqM9e', 'sTQSzvsLbj97V4jPOWQv1eRad9QROmeYWHemtx5SRwd4qWpxT3SYOXqlN1Pl', 'cTWizUHWSfClh5N6bdwmVk:APA91bFVdKbaf6vcOQCBPIHdSTjGZzrdGeVivhswiSnQnAeQ17CP9ZUfwrGxShZBJZ0fzhMrnMBNK3QvkM1RGhuEo2AonOGzKYBcKZJQhllCYh7nD6wBgqWSV5vAwuJ9KB4dOboFWfB1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-30 23:34:19', '2021-12-30 23:34:19'),
(18, 'avail', 'avail@gmail.com', '+56155515555', NULL, NULL, '$2y$10$VVvg7/yN6am1LP9xPfMYLOQvukPkqNFSVHUyaDQzo6mJ8JbHHbNKK', 'Uj0dcpGhnWO1vzmU6y89LNpcchnR6Q17S9KIoofeJHhoPvrWP65PlJRnRXFM', 'cTWizUHWSfClh5N6bdwmVk:APA91bFVdKbaf6vcOQCBPIHdSTjGZzrdGeVivhswiSnQnAeQ17CP9ZUfwrGxShZBJZ0fzhMrnMBNK3QvkM1RGhuEo2AonOGzKYBcKZJQhllCYh7nD6wBgqWSV5vAwuJ9KB4dOboFWfB1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-15 06:40:51', '2022-01-15 06:47:56');

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` double(16,2) NOT NULL DEFAULT 0.00,
  `currency` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `enabled` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `name`, `balance`, `currency`, `user_id`, `enabled`, `created_at`, `updated_at`) VALUES
('0872db1d-5919-4bac-9873-8c0809fbae53', 'this is my wallet', 0.00, '{\"id\":1,\"name\":\"US Dollar\",\"symbol\":\"$\",\"code\":\"USD\",\"decimal_digits\":\"2\",\"rounding\":\"0\"}', 4, 1, '2021-12-15 20:23:55', '2021-12-15 20:23:55');

-- --------------------------------------------------------

--
-- Table structure for table `wallet_transactions`
--

CREATE TABLE `wallet_transactions` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(10,2) NOT NULL DEFAULT 0.00,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` enum('credit','debit') COLLATE utf8mb4_unicode_ci NOT NULL,
  `wallet_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_user_id_foreign` (`user_id`);

--
-- Indexes for table `app_settings`
--
ALTER TABLE `app_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_settings_key_index` (`key`);

--
-- Indexes for table `availability_hours`
--
ALTER TABLE `availability_hours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `availability_hours_e_provider_id_foreign` (`e_provider_id`);

--
-- Indexes for table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `awards_e_provider_id_foreign` (`e_provider_id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_user_id_foreign` (`user_id`),
  ADD KEY `bookings_booking_status_id_foreign` (`booking_status_id`),
  ADD KEY `bookings_payment_id_foreign` (`payment_id`);

--
-- Indexes for table `booking_statuses`
--
ALTER TABLE `booking_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `custom_field_values_custom_field_id_foreign` (`custom_field_id`);

--
-- Indexes for table `custom_pages`
--
ALTER TABLE `custom_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discountables`
--
ALTER TABLE `discountables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `discountables_coupon_id_foreign` (`coupon_id`);

--
-- Indexes for table `earnings`
--
ALTER TABLE `earnings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `earnings_e_provider_id_foreign` (`e_provider_id`);

--
-- Indexes for table `experiences`
--
ALTER TABLE `experiences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `experiences_e_provider_id_foreign` (`e_provider_id`);

--
-- Indexes for table `e_providers`
--
ALTER TABLE `e_providers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `e_providers_e_provider_type_id_foreign` (`e_provider_type_id`);

--
-- Indexes for table `e_provider_addresses`
--
ALTER TABLE `e_provider_addresses`
  ADD PRIMARY KEY (`e_provider_id`,`address_id`),
  ADD KEY `e_provider_addresses_address_id_foreign` (`address_id`);

--
-- Indexes for table `e_provider_payouts`
--
ALTER TABLE `e_provider_payouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `e_provider_payouts_e_provider_id_foreign` (`e_provider_id`);

--
-- Indexes for table `e_provider_taxes`
--
ALTER TABLE `e_provider_taxes`
  ADD PRIMARY KEY (`e_provider_id`,`tax_id`),
  ADD KEY `e_provider_taxes_tax_id_foreign` (`tax_id`);

--
-- Indexes for table `e_provider_types`
--
ALTER TABLE `e_provider_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e_provider_users`
--
ALTER TABLE `e_provider_users`
  ADD PRIMARY KEY (`user_id`,`e_provider_id`),
  ADD KEY `e_provider_users_e_provider_id_foreign` (`e_provider_id`);

--
-- Indexes for table `e_services`
--
ALTER TABLE `e_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `e_services_e_provider_id_foreign` (`e_provider_id`);

--
-- Indexes for table `e_service_categories`
--
ALTER TABLE `e_service_categories`
  ADD PRIMARY KEY (`e_service_id`,`category_id`),
  ADD KEY `e_service_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `e_service_reviews`
--
ALTER TABLE `e_service_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `e_service_reviews_user_id_foreign` (`user_id`),
  ADD KEY `e_service_reviews_e_service_id_foreign` (`e_service_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faqs_faq_category_id_foreign` (`faq_category_id`);

--
-- Indexes for table `faq_categories`
--
ALTER TABLE `faq_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorites_e_service_id_foreign` (`e_service_id`),
  ADD KEY `favorites_user_id_foreign` (`user_id`);

--
-- Indexes for table `favorite_options`
--
ALTER TABLE `favorite_options`
  ADD PRIMARY KEY (`option_id`,`favorite_id`),
  ADD KEY `favorite_options_favorite_id_foreign` (`favorite_id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_e_provider_id_foreign` (`e_provider_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `options_e_service_id_foreign` (`e_service_id`),
  ADD KEY `options_option_group_id_foreign` (`option_group_id`);

--
-- Indexes for table `option_groups`
--
ALTER TABLE `option_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_user_id_foreign` (`user_id`),
  ADD KEY `payments_payment_method_id_foreign` (`payment_method_id`),
  ADD KEY `payments_payment_status_id_foreign` (`payment_status_id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_statuses`
--
ALTER TABLE `payment_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slides_e_service_id_foreign` (`e_service_id`),
  ADD KEY `slides_e_provider_id_foreign` (`e_provider_id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timeslots`
--
ALTER TABLE `timeslots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_number_unique` (`phone_number`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wallets_user_id_foreign` (`user_id`);

--
-- Indexes for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wallet_transactions_wallet_id_foreign` (`wallet_id`),
  ADD KEY `wallet_transactions_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `app_settings`
--
ALTER TABLE `app_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `availability_hours`
--
ALTER TABLE `availability_hours`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `awards`
--
ALTER TABLE `awards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking_statuses`
--
ALTER TABLE `booking_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `custom_pages`
--
ALTER TABLE `custom_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `discountables`
--
ALTER TABLE `discountables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `earnings`
--
ALTER TABLE `earnings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `experiences`
--
ALTER TABLE `experiences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `e_providers`
--
ALTER TABLE `e_providers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `e_provider_payouts`
--
ALTER TABLE `e_provider_payouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `e_provider_types`
--
ALTER TABLE `e_provider_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `e_services`
--
ALTER TABLE `e_services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `e_service_reviews`
--
ALTER TABLE `e_service_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `faq_categories`
--
ALTER TABLE `faq_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=369;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `option_groups`
--
ALTER TABLE `option_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payment_statuses`
--
ALTER TABLE `payment_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `timeslots`
--
ALTER TABLE `timeslots`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

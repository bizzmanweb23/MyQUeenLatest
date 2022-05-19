-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 19, 2022 at 06:56 AM
-- Server version: 10.3.34-MariaDB-cll-lve
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
-- Database: `bizzmantest_myqueennew`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '$2y$10$TOvbSWeUOcXBHGB/Y7J1S.59/9i1EcYyiAsvvgSeE8WLhyJ2xvAS6', 'en', '2021-10-08 08:52:46', '2021-10-08 08:52:46');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Image_eng` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Image_ch` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `billings`
--

CREATE TABLE `billings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ware_house_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `ware_house_id`, `name`, `detail`, `address`, `pincode`, `country`, `created_at`, `updated_at`) VALUES
(3, 1, 'asdasd', 'asd', 'Debasis', '123123', 'Aruba', '2021-10-20 17:14:38', '2021-10-20 18:58:37'),
(4, 1, 'Singapore', 'Test', 'Test', '1234566', 'Singapore', '2022-03-17 07:06:05', '2022-03-17 07:06:05');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(26, 27, 7, 10, '2022-02-19 01:02:47', '2022-02-19 01:02:47'),
(27, 29, 7, 1, '2022-02-19 01:19:02', '2022-02-19 01:19:02'),
(28, 39, 7, 1, '2022-03-07 06:45:38', '2022-03-07 06:45:38'),
(29, 39, 8, 32, '2022-03-07 06:45:57', '2022-03-07 07:07:33'),
(36, 49, 8, 15, '2022-03-10 06:45:33', '2022-03-10 06:45:33');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `status`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Debasi', 'Debasis', 'Debasis', 1, 'category//1633698995anthony-reungere-oJjbaVncWdA-unsplash.jpg', '2021-10-08 20:16:35', '2021-10-08 20:16:35');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_number` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `direct_sponsors`
--

CREATE TABLE `direct_sponsors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sponsors_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `member_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `member_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rank_id` int(11) NOT NULL,
  `point` decimal(20,2) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `direct_sponsors`
--

INSERT INTO `direct_sponsors` (`id`, `sponsors_id`, `member_id`, `member_name`, `rank_id`, `point`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 'MQU0000003', 'MQU0000005', 'Amrit', 4, 52.80, 2, '2022-05-17 10:50:55', '2022-05-17 10:50:55'),
(2, 'MQU0000003', 'MQU0000004', 'Amrit', 4, 35.20, 1, '2022-05-17 10:51:23', '2022-05-17 10:51:23'),
(3, 'MQU0000004', 'MQU0000006', 'Sarb', 4, 22.00, 4, '2022-05-17 15:04:34', '2022-05-17 15:04:34'),
(4, 'MQU0000003', 'MQU0000005', 'Amrit', 4, 211.20, 6, '2022-05-19 14:25:00', '2022-05-19 14:25:00'),
(5, 'MQU0000003', 'MQU0000004', 'Amrit', 4, 140.80, 5, '2022-05-19 14:25:21', '2022-05-19 14:25:21'),
(6, 'MQU0000004', 'MQU0000007', 'Sarb', 2, 22.00, 3, '2022-05-19 14:39:02', '2022-05-19 14:39:02'),
(7, 'MQU0000004', 'MQU0000006', 'Sarb', 4, 22.00, 8, '2022-05-19 14:39:45', '2022-05-19 14:39:45'),
(8, 'MQU0000004', 'MQU0000007', 'Sarb', 2, 22.00, 7, '2022-05-19 14:40:05', '2022-05-19 14:40:05');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forcasts`
--

CREATE TABLE `forcasts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `orderid` int(11) NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `productid` int(11) NOT NULL,
  `warehouseid` int(11) NOT NULL,
  `rackid` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventories`
--

INSERT INTO `inventories` (`id`, `productid`, `warehouseid`, `rackid`, `stock`, `created_at`, `updated_at`) VALUES
(3, 1, 1, 1, 0, '2021-10-20 19:47:03', '2021-10-20 20:53:30'),
(4, 1, 1, 2, 0, '2021-10-20 20:53:02', '2021-10-21 23:37:48'),
(5, 2, 1, 1, -1, '2021-10-20 20:54:56', '2021-10-20 21:02:59');

-- --------------------------------------------------------

--
-- Table structure for table `leadership_bonus`
--

CREATE TABLE `leadership_bonus` (
  `id` int(11) NOT NULL,
  `sponser_id` varchar(255) NOT NULL,
  `member_id` varchar(255) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `point` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `leadership_bonus`
--

INSERT INTO `leadership_bonus` (`id`, `sponser_id`, `member_id`, `order_id`, `point`, `created_at`, `updated_at`) VALUES
(1, 'MQU0000003', 'MLM0000004', 'MQO0000001', 0.88, '2022-05-17 06:51:23', '2022-05-17 06:51:23'),
(2, 'MQU0000003', 'MLM0000004', 'MQO0000005', 3.52, '2022-05-19 10:25:21', '2022-05-19 10:25:21'),
(3, 'MQU0000004', 'MLM0000007', 'MQO0000003', 0.00, '2022-05-19 10:39:02', '2022-05-19 10:39:02'),
(4, 'MQU0000004', 'MLM0000007', 'MQO0000007', 0.00, '2022-05-19 10:40:05', '2022-05-19 10:40:05');

-- --------------------------------------------------------

--
-- Table structure for table `loyality_points_wallet`
--

CREATE TABLE `loyality_points_wallet` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `loyality_point` decimal(20,2) NOT NULL,
  `status` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loyality_points_wallet`
--

INSERT INTO `loyality_points_wallet` (`id`, `user_id`, `loyality_point`, `status`, `updated_at`) VALUES
(1, 'MQU0000003', 130.00, 1, '2022-05-05 01:31:24'),
(2, 'MQU0000003', 130.00, 1, '2022-05-05 01:31:24'),
(3, 'MQU0000003', 130.00, 1, '2022-05-05 01:31:24'),
(4, 'MQU0000003', 130.00, 1, '2022-05-05 01:31:24'),
(5, 'MQU0000003', 130.00, 1, '2022-05-05 01:31:24'),
(6, 'MQU0000003', 130.00, 1, '2022-05-05 01:31:24'),
(7, 'MQU0000003', 130.00, 1, '2022-05-05 01:31:24'),
(8, 'MQU0000003', 130.00, 1, '2022-05-05 01:31:24'),
(9, 'MQU0000003', 20.00, 1, '2022-05-07 08:40:39'),
(10, 'MQU0000003', 20.00, 1, '2022-05-07 08:41:00'),
(11, 'MQU0000003', 20.00, 1, '2022-05-07 08:42:07'),
(12, 'MQU0000003', 20.00, 1, '2022-05-07 08:42:49');

-- --------------------------------------------------------

--
-- Table structure for table `matching_bonuses`
--

CREATE TABLE `matching_bonuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sponser_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `member_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `point` decimal(20,2) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1. Leadership Bonus not Provided 2. Bonus Provided',
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `matching_bonuses`
--

INSERT INTO `matching_bonuses` (`id`, `sponser_id`, `member_id`, `user_id`, `point`, `status`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 'MQU0000003', 'MLM0000004', 'MQU0000003', 17.60, 2, NULL, '2022-05-17 06:51:23', '2022-05-19 14:25:21'),
(2, '', 'MQU0000001', 'MQU0000001', 2.11, 1, NULL, '2022-05-17 06:51:23', '2022-05-17 06:51:23'),
(3, 'MQU0000001', 'MLM0000003', 'MQU0000002', 0.00, 1, NULL, '2022-05-17 06:51:23', '2022-05-17 06:51:23'),
(4, 'MQU0000001', 'MLM0000002', NULL, 0.00, 1, NULL, '2022-05-17 06:51:23', '2022-05-17 06:51:23'),
(5, 'MQU0000003', 'MLM0000004', 'MQU0000003', 70.40, 2, '5', '2022-05-19 10:25:21', '2022-05-19 14:25:21'),
(6, '', 'MQU0000001', 'MQU0000001', 8.45, 1, NULL, '2022-05-19 10:25:21', '2022-05-19 10:25:21'),
(7, 'MQU0000001', 'MLM0000003', 'MQU0000002', 0.00, 1, NULL, '2022-05-19 10:25:21', '2022-05-19 10:25:21'),
(8, 'MQU0000001', 'MLM0000002', NULL, 0.00, 1, NULL, '2022-05-19 10:25:21', '2022-05-19 10:25:21'),
(9, 'MQU0000004', 'MLM0000007', 'MQU0000004', 10.56, 2, '3', '2022-05-19 10:39:02', '2022-05-19 14:40:05'),
(10, 'MQU0000001', 'MQU0000003', 'MQU0000003', 1.06, 1, NULL, '2022-05-19 10:39:02', '2022-05-19 10:39:02'),
(11, 'MQU0000003', 'MLM0000004', 'MQU0000003', 0.00, 1, NULL, '2022-05-19 10:39:02', '2022-05-19 10:39:02'),
(12, 'MQU0000001', 'MLM0000003', 'MQU0000002', 0.00, 1, NULL, '2022-05-19 10:39:02', '2022-05-19 10:39:02'),
(13, 'MQU0000001', 'MLM0000002', NULL, 0.00, 1, NULL, '2022-05-19 10:39:02', '2022-05-19 10:39:02'),
(14, 'MQU0000004', 'MLM0000007', 'MQU0000004', 10.56, 2, '7', '2022-05-19 10:40:05', '2022-05-19 14:40:05'),
(15, 'MQU0000001', 'MQU0000003', 'MQU0000003', 1.06, 1, NULL, '2022-05-19 10:40:05', '2022-05-19 10:40:05'),
(16, 'MQU0000003', 'MLM0000004', 'MQU0000003', 0.00, 1, NULL, '2022-05-19 10:40:05', '2022-05-19 10:40:05'),
(17, 'MQU0000001', 'MLM0000003', 'MQU0000002', 0.00, 1, NULL, '2022-05-19 10:40:05', '2022-05-19 10:40:05'),
(18, 'MQU0000001', 'MLM0000002', NULL, 0.00, 1, NULL, '2022-05-19 10:40:05', '2022-05-19 10:40:05');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_01_29_065821_create_referals_table', 1),
(6, '2022_01_31_120303_create_pv_points_table', 1),
(8, '2022_02_07_055007_create_rankings_table', 1),
(9, '2022_02_07_070022_create_products_table', 1),
(10, '2022_02_07_120928_create_carts_table', 1),
(11, '2022_02_10_073156_create_shipping_charges_table', 1),
(12, '2022_02_10_102305_create_coupons_table', 1),
(13, '2022_02_10_111215_create_orders_table', 1),
(14, '2022_02_10_120614_create_offline_pays_table', 1),
(15, '2022_02_10_120629_create_m_c_t_pays_table', 1),
(16, '2022_02_10_120643_create_order_items_table', 1),
(17, '2022_02_10_134158_create_admins_table', 1),
(18, '2022_02_10_150104_create_billings_table', 1),
(19, '2022_02_10_150224_create_shippings_table', 1),
(20, '2022_02_10_150600_create_self_picks_table', 1),
(21, '2022_02_11_092857_create_banners_table', 1),
(22, '2022_02_11_120400_create_promotions_table', 1),
(23, '2022_02_03_105902_create_mlm_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `mlm_users`
--

CREATE TABLE `mlm_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qrcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rank_id` int(10) DEFAULT NULL,
  `branch_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `member_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sponser_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placement_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placement` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `referal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_holder` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_information` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placement_id_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mlm_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `left_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `right_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `total_pv_point` decimal(20,2) NOT NULL DEFAULT 0.00,
  `total_direct_dponsor` decimal(20,2) NOT NULL DEFAULT 0.00,
  `total_matching_bonus` decimal(20,2) NOT NULL DEFAULT 0.00,
  `leadership_bonus` decimal(20,2) NOT NULL DEFAULT 0.00,
  `wallet` decimal(20,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mlm_users`
--

INSERT INTO `mlm_users` (`id`, `user_id`, `qrcode`, `rank_id`, `branch_id`, `member_id`, `postcode`, `nationality`, `sponser_id`, `placement_id`, `placement`, `birthday`, `referal_code`, `gender`, `mobile_no`, `email_id`, `country`, `state`, `contact_address`, `account_holder`, `bank_name`, `payment_information`, `branch`, `account_no`, `placement_id_type`, `mlm_status`, `left_id`, `right_id`, `created_at`, `updated_at`, `total_pv_point`, `total_direct_dponsor`, `total_matching_bonus`, `leadership_bonus`, `wallet`) VALUES
(1, 'MQU0000001', '/referal_qr_code/img-1645012960.png', 4, 'singapore', 'MLM0000001', '457845', 'Antarctica', '', NULL, NULL, '2022-02-17', 'MQRF0000001', 'male', '', '', '', '', 'sample address', 'abhijeet', 'DBS', 'SG', 'Bihar', '5522124574', NULL, '0', 'MQU0000003', 'MQU0000002', '2022-02-13 05:50:38', '2022-05-19 14:40:05', 0.00, 2024.00, 0.00, 17.60, 0.00),
(30, 'MQU0000002', '/referal_qr_code/img-1645095462.png', 3, 'singapore', 'MLM0000002', '851204', 'Azerbaijan', 'MQU0000001', NULL, '1', '2022-02-21', 'MQRF0000001', 'male', '65342474', '', '', '', 'hvjhgvhj', 'abhijeet', 'DBS', 'SG', 'Bihar', '5522124574', NULL, '1', NULL, '', '2022-02-17 05:22:14', '2022-05-06 06:03:35', 0.00, 0.00, 100.00, 0.00, 0.00),
(37, 'MQU0000003', '/referal_qr_code/img-1646811712.png', 3, 'singapore', 'MLM0000003', '12345', '12345', 'MQU0000001', 'MQU0000002', '0', '2022-02-27', 'MQRF0000001', 'male', '75385436246231', 'amrit123@yopmail.com', 'India', 'Punjab', 'Mohali', 'Test', 'DBS', 'NZ', 'Test', '123456789', NULL, '1', 'MQU0000004', 'MQU0000005', '2022-03-09 02:10:43', '2022-05-19 14:40:05', 4384.00, 2492.40, 0.00, 3.52, 400.00),
(38, 'MQU0000004', '/referal_qr_code/img-1646813907.png', 4, 'singapore', 'MLM0000004', '123456', '123456', 'MQU0000003', 'MQU0000003', '0', '2022-02-27', 'MQRF0000003', 'male', '685434256236', 'sarb123@yopmail.com', 'India', 'Punjab', 'Mohali', 'Test', 'DBS', 'CN', 'Test', '123456', NULL, '1', 'MQU0000006', 'MQU0000007', '2022-03-09 02:47:13', '2022-05-19 14:40:05', 5844.00, 800.80, 10.56, 0.00, 0.00),
(39, 'MQU0000005', '/referal_qr_code/img-1646815234.png', 4, 'singapore', 'MLM0000005', '12345', '12345', 'MQU0000003', 'MQU0000003', '1', '2022-02-27', 'MQRF0000003', 'female', '875443643623', 'raman123@yopmail.com', 'India', 'Punjab', 'Mohali', 'Test', 'DBS', 'SG', 'Test', '123456', NULL, '1', NULL, NULL, '2022-03-09 03:08:28', '2022-05-19 14:25:00', 4488.00, 0.00, 0.00, 0.00, 0.00),
(40, 'MQU0000006', '/referal_qr_code/img-1646914822.png', 4, 'singapore', 'MLM0000006', '123456', '123456', 'MQU0000004', 'MQU0000004', '0', '2022-02-27', 'MQRF0000004', 'female', '343254262351', 'dilpreet123@yopmail.com', 'India', 'Punjab', 'Mohali', 'Test', 'DBS', 'CN', 'Test', '1246523523', NULL, '1', NULL, NULL, '2022-03-10 06:45:13', '2022-05-19 14:39:45', 5016.00, 0.00, 0.00, 0.00, 0.00),
(42, 'MQU0000007', '/referal_qr_code/img-1652172017.png', 2, 'singapore', 'MLM0000007', '12345', '12345', 'MQU0000004', 'MQU0000004', '1', '2022-02-27', 'MQRF0000001', 'female', '96675345467', 'mehak123@gmail.com', 'India', 'Punjab', 'Mohali', 'Test', 'DBS', 'IND', 'Test', '345657', NULL, '1', NULL, NULL, '2022-03-26 00:11:20', '2022-05-19 14:40:05', 704.00, 0.00, 0.00, 0.00, 0.00),
(47, 'MQU0000008', '/referal_qr_code/img-1649943515.png', 2, 'singapore', 'MLM0000008', '1312542', '1312542', 'MQU0000003', 'MQU0000005', '1', '2022-03-27', 'MQRF0000003', 'male', '34654353', 'supdipta@yopmail.com', 'India', 'West Bengal', 'Test', 'Test', 'DBS', 'SG', 'Test', '5467875789', NULL, '1', NULL, NULL, '2022-04-14 08:05:52', '2022-04-14 08:12:49', 968.00, 0.00, 0.00, 0.00, 0.00),
(48, 'MQU0000009', '/referal_qr_code/img-1652434491.png', NULL, 'singapore', 'MLM0000009', '638455', '638455', 'MQU0000001', NULL, NULL, '2022-05-21', 'MQRF0000001', 'female', '8870296295', 'nandhutamil1997@gmail.com', 'India', 'Meghalaya', '155/179A,second Street,Minnave\r\nSalangapalayam', 'testnew', 'DBS', 'VIET', 'cbe', '564567665', NULL, '1', NULL, NULL, '2022-05-13 13:33:40', '2022-05-13 13:34:51', 0.00, 0.00, 0.00, 0.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `m_c_t_pays`
--

CREATE TABLE `m_c_t_pays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(20,2) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_c_t_pays`
--

INSERT INTO `m_c_t_pays` (`id`, `user_id`, `order_id`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 16, 1, 88.00, 0, '2022-02-14 06:21:23', '2022-02-14 06:21:23'),
(2, 16, 2, 528.00, 0, '2022-02-14 08:02:41', '2022-02-14 08:02:41'),
(3, 16, 3, 528.00, 0, '2022-02-14 08:55:25', '2022-02-14 08:55:25'),
(4, 16, 4, 616.00, 0, '2022-02-14 08:56:47', '2022-02-14 08:56:47'),
(5, 16, 5, 176.00, 0, '2022-02-14 09:07:24', '2022-02-14 09:07:24'),
(6, 1, 6, 176.00, 0, '2022-02-16 02:36:23', '2022-02-16 02:36:23'),
(7, 1, 7, 0.00, 0, '2022-02-16 02:37:00', '2022-02-16 02:37:00'),
(8, 1, 8, 88.00, 0, '2022-02-16 02:37:50', '2022-02-16 02:37:50'),
(9, 1, 9, 0.00, 0, '2022-02-16 02:37:50', '2022-02-16 02:37:50'),
(10, 1, 10, 0.00, 0, '2022-02-16 02:37:53', '2022-02-16 02:37:53'),
(11, 1, 11, 88.00, 0, '2022-02-16 06:12:39', '2022-02-16 06:12:39'),
(12, 1, 12, 88.00, 0, '2022-02-16 06:15:53', '2022-02-16 06:15:53'),
(13, 1, 13, 0.00, 0, '2022-02-16 06:16:04', '2022-02-16 06:16:04'),
(14, 1, 14, 0.00, 0, '2022-02-16 06:18:19', '2022-02-16 06:18:19'),
(15, 1, 15, 88.00, 0, '2022-02-16 06:21:36', '2022-02-16 06:21:36'),
(16, 1, 16, 88.00, 0, '2022-02-16 06:24:40', '2022-02-16 06:24:40'),
(17, 1, 17, 88.00, 0, '2022-02-16 06:25:30', '2022-02-16 06:25:30'),
(18, 1, 18, 88.00, 0, '2022-02-16 06:26:11', '2022-02-16 06:26:11'),
(19, 1, 19, 88.00, 0, '2022-02-16 06:31:00', '2022-02-16 06:31:00'),
(20, 1, 20, 88.00, 0, '2022-02-16 06:32:40', '2022-02-16 06:32:40'),
(21, 23, 21, 616.00, 0, '2022-02-17 05:27:42', '2022-02-17 05:27:42'),
(22, 40, 22, 880.00, 0, '2022-03-07 07:21:26', '2022-03-07 07:21:26'),
(23, 40, 27, 0.00, 0, '2022-03-07 07:24:38', '2022-03-07 07:24:38'),
(24, 45, 36, 880.00, 0, '2022-03-09 02:11:51', '2022-03-09 02:11:51'),
(25, 46, 37, 1320.00, 0, '2022-03-09 02:48:27', '2022-03-09 02:48:27'),
(26, 48, 38, 2640.00, 0, '2022-03-09 03:10:33', '2022-03-09 03:10:33'),
(27, 50, 39, 1760.00, 0, '2022-03-10 06:50:21', '2022-03-10 06:50:21'),
(28, 46, 4, 1056.00, 0, '2022-03-15 00:16:26', '2022-03-15 00:16:26'),
(29, 45, 3, 880.00, 0, '2022-03-26 09:20:51', '2022-03-26 09:20:51'),
(30, 53, 4, 704.00, 0, '2022-03-29 06:22:41', '2022-03-29 06:22:41'),
(31, 54, 5, 704.00, 0, '2022-03-29 06:31:36', '2022-03-29 06:31:36'),
(32, 55, 6, 704.00, 0, '2022-03-29 23:43:13', '2022-03-29 23:43:13'),
(33, 56, 7, 704.00, 0, '2022-03-30 00:03:53', '2022-03-30 00:03:53'),
(34, 45, 8, 2112.00, 0, '2022-04-12 00:06:45', '2022-04-12 00:06:45'),
(35, 46, 9, 880.00, 0, '2022-04-12 05:27:51', '2022-04-12 05:27:51'),
(36, 46, 10, 704.00, 0, '2022-04-12 06:37:44', '2022-04-12 06:37:44'),
(37, 50, 11, 2200.00, 0, '2022-04-13 07:50:12', '2022-04-13 07:50:12'),
(38, 57, 12, 968.00, 0, '2022-04-14 08:08:35', '2022-04-14 08:08:35'),
(39, 45, 14, 88.00, 0, '2022-05-05 07:59:48', '2022-05-05 07:59:48'),
(40, 45, 15, 88.00, 0, '2022-05-05 08:37:02', '2022-05-05 08:37:02'),
(41, 46, 1, 176.00, 0, '2022-05-10 12:36:02', '2022-05-10 12:36:02'),
(42, 48, 2, 176.00, 0, '2022-05-10 12:36:58', '2022-05-10 12:36:58'),
(43, 50, 3, 176.00, 0, '2022-05-10 12:38:04', '2022-05-10 12:38:04'),
(44, 51, 4, 176.00, 0, '2022-05-10 12:40:17', '2022-05-10 12:40:17'),
(45, 57, 5, 176.00, 0, '2022-05-10 12:45:25', '2022-05-10 12:45:25'),
(46, 58, 6, 880.00, 0, '2022-05-13 13:34:50', '2022-05-13 13:34:50'),
(47, 58, 7, 880.00, 0, '2022-05-13 17:01:27', '2022-05-13 17:01:27'),
(48, 58, 8, 880.00, 0, '2022-05-14 09:39:54', '2022-05-14 09:39:54'),
(49, 46, 1, 176.00, 0, '2022-05-14 12:41:06', '2022-05-14 12:41:06'),
(50, 48, 2, 352.00, 0, '2022-05-14 12:42:56', '2022-05-14 12:42:56'),
(51, 48, 1, 352.00, 0, '2022-05-14 12:51:55', '2022-05-14 12:51:55'),
(52, 46, 2, 176.00, 0, '2022-05-14 12:52:47', '2022-05-14 12:52:47'),
(53, 46, 1, 176.00, 0, '2022-05-14 12:56:26', '2022-05-14 12:56:26'),
(54, 48, 2, 440.00, 0, '2022-05-14 12:57:49', '2022-05-14 12:57:49'),
(55, 46, 3, 176.00, 0, '2022-05-16 09:24:24', '2022-05-16 09:24:24'),
(56, 48, 4, 352.00, 0, '2022-05-16 09:25:34', '2022-05-16 09:25:34'),
(57, 46, 5, 264.00, 0, '2022-05-16 09:38:53', '2022-05-16 09:38:53'),
(58, 48, 6, 440.00, 0, '2022-05-16 09:39:45', '2022-05-16 09:39:45'),
(59, 48, 1, 352.00, 0, '2022-05-16 09:44:17', '2022-05-16 09:44:17'),
(60, 46, 2, 176.00, 0, '2022-05-16 09:45:18', '2022-05-16 09:45:18'),
(61, 48, 2, 352.00, 0, '2022-05-16 10:36:01', '2022-05-16 10:36:01'),
(62, 51, 3, 88.00, 0, '2022-05-16 10:37:10', '2022-05-16 10:37:10'),
(63, 50, 4, 88.00, 0, '2022-05-16 10:38:01', '2022-05-16 10:38:01'),
(64, 46, 5, 176.00, 0, '2022-05-17 10:05:39', '2022-05-17 10:05:39'),
(65, 48, 6, 352.00, 0, '2022-05-17 10:06:36', '2022-05-17 10:06:36'),
(66, 51, 8, 264.00, 0, '2022-05-17 10:08:52', '2022-05-17 10:08:52'),
(67, 46, 9, 176.00, 0, '2022-05-17 10:27:05', '2022-05-17 10:27:05'),
(68, 48, 10, 176.00, 0, '2022-05-17 10:28:06', '2022-05-17 10:28:06'),
(69, 50, 11, 176.00, 0, '2022-05-17 10:29:10', '2022-05-17 10:29:10'),
(70, 51, 12, 176.00, 0, '2022-05-17 10:30:03', '2022-05-17 10:30:03'),
(71, 46, 1, 176.00, 0, '2022-05-17 10:47:26', '2022-05-17 10:47:26'),
(72, 48, 2, 264.00, 0, '2022-05-17 10:48:17', '2022-05-17 10:48:17'),
(73, 51, 3, 88.00, 0, '2022-05-17 10:49:05', '2022-05-17 10:49:05'),
(74, 50, 4, 88.00, 0, '2022-05-17 10:49:54', '2022-05-17 10:49:54'),
(75, 46, 5, 704.00, 0, '2022-05-19 14:19:36', '2022-05-19 14:19:36'),
(76, 48, 6, 1056.00, 0, '2022-05-19 14:20:33', '2022-05-19 14:20:33'),
(77, 51, 7, 88.00, 0, '2022-05-19 14:21:22', '2022-05-19 14:21:22'),
(78, 50, 8, 88.00, 0, '2022-05-19 14:22:07', '2022-05-19 14:22:07');

-- --------------------------------------------------------

--
-- Table structure for table `m_l_m_withdraw`
--

CREATE TABLE `m_l_m_withdraw` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `bank_name` varchar(100) NOT NULL,
  `branch_name` varchar(100) NOT NULL,
  `account_name` int(100) NOT NULL,
  `amount` decimal(20,2) NOT NULL,
  `amount_users_will_receive` decimal(20,2) NOT NULL DEFAULT 0.00,
  `status` int(11) NOT NULL,
  `bonus_type` int(11) NOT NULL COMMENT '1. Direct Bonus,2.Matching Bonus, 3. Leadership Bonus',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `m_l_m_withdraw`
--

INSERT INTO `m_l_m_withdraw` (`id`, `user_id`, `bank_name`, `branch_name`, `account_name`, `amount`, `amount_users_will_receive`, `status`, `bonus_type`, `updated_at`) VALUES
(6, 'MQU0000003', 'test', 'test', 13242535, 200.00, 30.00, 2, 2, '2022-05-07 03:12:49');

-- --------------------------------------------------------

--
-- Table structure for table `offline_pays`
--

CREATE TABLE `offline_pays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `screen_shot` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offline_pays`
--

INSERT INTO `offline_pays` (`id`, `user_id`, `order_id`, `screen_shot`, `status`, `created_at`, `updated_at`) VALUES
(1, 40, 26, 'Offline_pay/order_id_26.png', 0, '2022-03-07 07:23:53', '2022-03-07 07:23:53'),
(2, 40, 28, 'Offline_pay/order_id_28.png', 0, '2022-03-07 07:25:21', '2022-03-07 07:25:21'),
(3, 40, 29, 'Offline_pay/order_id_29.jpg', 0, '2022-03-07 07:25:44', '2022-03-07 07:25:44'),
(4, 40, 30, 'Offline_pay/order_id_30.png', 0, '2022-03-07 07:27:26', '2022-03-07 07:27:26'),
(5, 40, 31, 'Offline_pay/order_id_31.jpg', 0, '2022-03-07 07:29:30', '2022-03-07 07:29:30'),
(6, 40, 32, 'Offline_pay/order_id_32.jpg', 0, '2022-03-07 07:29:51', '2022-03-07 07:29:51'),
(7, 40, 33, 'Offline_pay/order_id_33.png', 0, '2022-03-07 07:32:48', '2022-03-07 07:32:48'),
(8, 41, 34, 'Offline_pay/order_id_34.png', 0, '2022-03-07 07:39:14', '2022-03-07 07:39:14'),
(9, 44, 35, 'Offline_pay/order_id_35.png', 0, '2022-03-09 01:54:18', '2022-03-09 01:54:18'),
(10, 45, 1, 'Offline_pay/order_id_1.png', 0, '2022-03-15 00:02:50', '2022-03-15 00:02:50'),
(11, 45, 2, 'Offline_pay/order_id_2.png', 0, '2022-03-15 00:03:56', '2022-03-15 00:03:56'),
(12, 45, 3, 'Offline_pay/order_id_3.png', 0, '2022-03-15 00:05:42', '2022-03-15 00:05:42'),
(13, 50, 5, 'Offline_pay/order_id_5.png', 0, '2022-03-15 00:34:24', '2022-03-15 00:34:24'),
(14, 45, 13, 'Offline_pay/order_id_13.png', 0, '2022-05-05 01:12:58', '2022-05-05 01:12:58'),
(15, 46, 1, 'Offline_pay/order_id_1.png', 0, '2022-05-16 10:34:53', '2022-05-16 10:34:53'),
(16, 50, 7, 'Offline_pay/order_id_7.png', 0, '2022-05-17 10:08:01', '2022-05-17 10:08:01');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_unique` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_unique` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_bill_same_ship` int(20) NOT NULL,
  `billing_id` int(11) NOT NULL,
  `shipping_id` int(11) DEFAULT NULL,
  `status_id` int(11) NOT NULL DEFAULT 0,
  `quentity` int(11) NOT NULL DEFAULT 0,
  `order_sum` decimal(20,2) NOT NULL,
  `total_pv` decimal(20,2) NOT NULL,
  `in_house_status` int(11) DEFAULT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(20,2) DEFAULT NULL,
  `how_may_discount` decimal(20,2) NOT NULL,
  `discount_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `after_discount_price` decimal(20,2) DEFAULT NULL,
  `shipping_charge` decimal(20,2) DEFAULT NULL,
  `total` decimal(20,2) NOT NULL,
  `payment_status` int(11) DEFAULT NULL,
  `self_pick_order_status` int(11) NOT NULL DEFAULT 0,
  `status_for_matching_bonus` int(11) NOT NULL DEFAULT 0,
  `status_for_direct_bonus` int(11) NOT NULL DEFAULT 0,
  `status_of_leadership_bonus` int(11) NOT NULL DEFAULT 0,
  `status_for_old_order` int(6) NOT NULL DEFAULT 1 COMMENT '0. Not MLM member 1. MLM Member 2. MAtching Bonus received for this order',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_unique`, `user_id`, `user_unique`, `payment_method`, `shipping_method`, `user_ip`, `order_currency`, `is_bill_same_ship`, `billing_id`, `shipping_id`, `status_id`, `quentity`, `order_sum`, `total_pv`, `in_house_status`, `coupon_code`, `discount_amount`, `how_may_discount`, `discount_type`, `after_discount_price`, `shipping_charge`, `total`, `payment_status`, `self_pick_order_status`, `status_for_matching_bonus`, `status_for_direct_bonus`, `status_of_leadership_bonus`, `status_for_old_order`, `created_at`, `updated_at`, `quantity`) VALUES
(1, 'MQO0000001', 46, 'MQU0000004', 'MCT Pay', 'Self-Pickup', '124.253.13.166', '$', 0, 0, 0, 5, 0, 176.00, 176.00, 4, NULL, 0.00, 0.00, NULL, 0.00, 0.00, 176.00, 1, 5, 1, 1, 1, 2, '2022-05-17 10:47:26', '2022-05-17 10:51:25', 2),
(2, 'MQO0000002', 48, 'MQU0000005', 'MCT Pay', 'Self-Pickup', '124.253.13.166', '$', 0, 0, 0, 5, 0, 264.00, 264.00, 4, NULL, 0.00, 0.00, NULL, 0.00, 0.00, 264.00, 1, 5, 0, 1, 0, 2, '2022-05-17 10:48:17', '2022-05-17 10:51:23', 3),
(3, 'MQO0000003', 51, 'MQU0000007', 'MCT Pay', 'Self-Pickup', '124.253.13.166', '$', 0, 0, 0, 5, 0, 88.00, 88.00, 3, NULL, 0.00, 0.00, NULL, 0.00, 0.00, 88.00, 1, 5, 1, 1, 1, 2, '2022-05-17 10:49:05', '2022-05-19 14:39:05', 1),
(4, 'MQO0000004', 50, 'MQU0000006', 'MCT Pay', 'Self-Pickup', '124.253.13.166', '$', 0, 0, 0, 5, 0, 88.00, 88.00, 4, NULL, 0.00, 0.00, NULL, 0.00, 0.00, 88.00, 1, 5, 1, 1, 0, 2, '2022-05-17 10:49:54', '2022-05-19 14:39:02', 1),
(5, 'MQO0000005', 46, 'MQU0000004', 'MCT Pay', 'Self-Pickup', '49.36.205.54', '$', 0, 0, 0, 5, 0, 704.00, 704.00, 4, NULL, 0.00, 0.00, NULL, 0.00, 0.00, 704.00, 1, 5, 1, 1, 1, 2, '2022-05-19 14:19:36', '2022-05-19 14:25:23', 8),
(6, 'MQO0000006', 48, 'MQU0000005', 'MCT Pay', 'Self-Pickup', '49.36.205.54', '$', 0, 0, 0, 5, 0, 1056.00, 1056.00, 4, NULL, 0.00, 0.00, NULL, 0.00, 0.00, 1056.00, 1, 5, 0, 1, 0, 2, '2022-05-19 14:20:33', '2022-05-19 14:25:21', 12),
(7, 'MQO0000007', 51, 'MQU0000007', 'MCT Pay', 'Self-Pickup', '49.36.205.54', '$', 0, 0, 0, 5, 0, 88.00, 88.00, 4, NULL, 0.00, 0.00, NULL, 0.00, 0.00, 88.00, 1, 5, 1, 1, 1, 2, '2022-05-19 14:21:22', '2022-05-19 14:40:08', 1),
(8, 'MQO0000008', 50, 'MQU0000006', 'MCT Pay', 'Self-Pickup', '49.36.205.54', '$', 0, 0, 0, 5, 0, 88.00, 88.00, 4, NULL, 0.00, 0.00, NULL, 0.00, 0.00, 88.00, 1, 5, 1, 1, 0, 2, '2022-05-19 14:22:07', '2022-05-19 14:40:05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` decimal(20,2) NOT NULL,
  `pv` decimal(20,2) NOT NULL,
  `quentity` int(11) NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `user_id`, `order_id`, `product_id`, `price`, `pv`, `quentity`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 16, 1, 7, 88.00, 88.00, 1, 0, '2022-02-14 06:21:23', '2022-02-14 06:21:23'),
(2, 16, 2, 7, 88.00, 88.00, 4, 0, '2022-02-14 08:02:41', '2022-02-14 08:02:41'),
(3, 16, 2, 8, 88.00, 88.00, 1, 0, '2022-02-14 08:02:41', '2022-02-14 08:02:41'),
(4, 16, 2, 9, 88.00, 88.00, 1, 0, '2022-02-14 08:02:41', '2022-02-14 08:02:41'),
(5, 16, 3, 8, 88.00, 88.00, 6, 0, '2022-02-14 08:55:25', '2022-02-14 08:55:25'),
(6, 16, 4, 8, 88.00, 88.00, 2, 0, '2022-02-14 08:56:47', '2022-02-14 08:56:47'),
(7, 16, 4, 9, 88.00, 88.00, 2, 0, '2022-02-14 08:56:47', '2022-02-14 08:56:47'),
(8, 16, 4, 7, 88.00, 88.00, 3, 0, '2022-02-14 08:56:47', '2022-02-14 08:56:47'),
(9, 16, 5, 7, 88.00, 88.00, 1, 0, '2022-02-14 09:07:24', '2022-02-14 09:07:24'),
(10, 16, 5, 8, 88.00, 88.00, 1, 0, '2022-02-14 09:07:24', '2022-02-14 09:07:24'),
(11, 1, 6, 8, 88.00, 88.00, 2, 0, '2022-02-16 02:36:23', '2022-02-16 02:36:23'),
(12, 1, 8, 8, 88.00, 88.00, 1, 0, '2022-02-16 02:37:50', '2022-02-16 02:37:50'),
(13, 1, 11, 8, 88.00, 88.00, 1, 0, '2022-02-16 06:12:39', '2022-02-16 06:12:39'),
(14, 1, 12, 8, 88.00, 88.00, 1, 0, '2022-02-16 06:15:53', '2022-02-16 06:15:53'),
(15, 1, 15, 8, 88.00, 88.00, 1, 0, '2022-02-16 06:21:36', '2022-02-16 06:21:36'),
(16, 1, 16, 9, 88.00, 88.00, 1, 0, '2022-02-16 06:24:40', '2022-02-16 06:24:40'),
(17, 1, 17, 8, 88.00, 88.00, 1, 0, '2022-02-16 06:25:30', '2022-02-16 06:25:30'),
(18, 1, 18, 8, 88.00, 88.00, 1, 0, '2022-02-16 06:26:11', '2022-02-16 06:26:11'),
(19, 1, 19, 8, 88.00, 88.00, 1, 0, '2022-02-16 06:31:00', '2022-02-16 06:31:00'),
(20, 1, 20, 9, 88.00, 88.00, 1, 0, '2022-02-16 06:32:40', '2022-02-16 06:32:40'),
(21, 23, 21, 9, 88.00, 88.00, 1, 0, '2022-02-17 05:27:42', '2022-02-17 05:27:42'),
(22, 23, 21, 8, 88.00, 88.00, 6, 0, '2022-02-17 05:27:42', '2022-02-17 05:27:42'),
(23, 39, 23, 7, 88.00, 88.00, 1, 0, '2022-02-28 00:51:56', '2022-02-28 00:51:56'),
(24, 39, 23, 9, 88.00, 88.00, 1, 0, '2022-02-28 00:51:56', '2022-02-28 00:51:56'),
(25, 39, 23, 8, 88.00, 88.00, 1, 0, '2022-02-28 00:51:56', '2022-02-28 00:51:56'),
(26, 41, 24, 7, 88.00, 88.00, 1, 0, '2022-02-28 03:53:31', '2022-02-28 03:53:31'),
(27, 44, 26, 8, 88.00, 88.00, 5, 0, '2022-02-28 04:31:16', '2022-02-28 04:31:16'),
(28, 44, 26, 9, 88.00, 88.00, 1, 0, '2022-02-28 04:31:16', '2022-02-28 04:31:16'),
(29, 44, 26, 7, 88.00, 88.00, 1, 0, '2022-02-28 04:31:16', '2022-02-28 04:31:16'),
(30, 44, 33, 8, 88.00, 88.00, 7, 0, '2022-02-28 04:42:56', '2022-02-28 04:42:56'),
(31, 46, 36, 9, 88.00, 88.00, 11, 0, '2022-02-28 05:02:55', '2022-02-28 05:02:55'),
(32, 47, 40, 8, 88.00, 88.00, 8, 0, '2022-02-28 05:49:37', '2022-02-28 05:49:37'),
(33, 48, 41, 7, 88.00, 88.00, 25, 0, '2022-02-28 06:18:13', '2022-02-28 06:18:13'),
(34, 50, 42, 7, 88.00, 88.00, 10, 0, '2022-03-01 04:33:58', '2022-03-01 04:33:58'),
(35, 51, 43, 7, 88.00, 88.00, 12, 0, '2022-03-01 07:16:50', '2022-03-01 07:16:50'),
(36, 53, 44, 7, 88.00, 88.00, 10, 0, '2022-03-02 08:01:36', '2022-03-02 08:01:36'),
(37, 54, 45, 7, 88.00, 88.00, 10, 0, '2022-03-02 23:38:48', '2022-03-02 23:38:48'),
(38, 56, 46, 7, 88.00, 88.00, 10, 0, '2022-03-03 01:11:40', '2022-03-03 01:11:40'),
(39, 58, 47, 7, 88.00, 88.00, 10, 0, '2022-03-03 04:54:34', '2022-03-03 04:54:34'),
(40, 59, 48, 7, 88.00, 88.00, 10, 0, '2022-03-03 06:50:01', '2022-03-03 06:50:01'),
(41, 60, 49, 7, 88.00, 88.00, 10, 0, '2022-03-03 08:17:48', '2022-03-03 08:17:48'),
(42, 62, 50, 8, 88.00, 88.00, 21, 0, '2022-03-04 02:22:59', '2022-03-04 02:22:59'),
(43, 65, 51, 7, 88.00, 88.00, 10, 0, '2022-03-05 01:33:54', '2022-03-05 01:33:54'),
(44, 66, 52, 7, 88.00, 88.00, 10, 0, '2022-03-05 03:11:36', '2022-03-05 03:11:36'),
(45, 67, 53, 8, 88.00, 88.00, 12, 0, '2022-03-05 03:32:14', '2022-03-05 03:32:14'),
(46, 68, 54, 7, 88.00, 88.00, 10, 0, '2022-03-06 22:40:15', '2022-03-06 22:40:15'),
(47, 69, 55, 7, 88.00, 88.00, 9, 0, '2022-03-06 23:10:15', '2022-03-06 23:10:15'),
(48, 70, 58, 7, 88.00, 88.00, 10, 0, '2022-03-06 23:27:44', '2022-03-06 23:27:44'),
(49, 71, 59, 8, 88.00, 88.00, 10, 0, '2022-03-06 23:31:12', '2022-03-06 23:31:12'),
(50, 72, 60, 8, 88.00, 88.00, 10, 0, '2022-03-07 04:37:01', '2022-03-07 04:37:01'),
(51, 76, 61, 7, 88.00, 88.00, 1, 0, '2022-03-10 00:47:11', '2022-03-10 00:47:11'),
(52, 76, 64, 8, 88.00, 88.00, 20, 0, '2022-03-10 00:48:40', '2022-03-10 00:48:40'),
(53, 77, 66, 8, 88.00, 88.00, 8, 0, '2022-03-10 00:53:15', '2022-03-10 00:53:15'),
(54, 78, 67, 8, 88.00, 88.00, 10, 0, '2022-03-10 00:57:09', '2022-03-10 00:57:09'),
(55, 79, 69, 7, 88.00, 88.00, 19, 0, '2022-03-10 03:25:01', '2022-03-10 03:25:01'),
(56, 80, 72, 8, 88.00, 88.00, 10, 0, '2022-03-10 03:46:24', '2022-03-10 03:46:24'),
(57, 81, 73, 8, 88.00, 88.00, 18, 0, '2022-03-10 05:03:35', '2022-03-10 05:03:35'),
(58, 84, 74, 8, 88.00, 88.00, 10, 0, '2022-03-11 01:21:11', '2022-03-11 01:21:11'),
(59, 84, 74, 9, 88.00, 88.00, 4, 0, '2022-03-11 01:21:11', '2022-03-11 01:21:11'),
(60, 55, 12, 8, 88.00, 88.00, 10, 0, '2022-03-16 06:51:15', '2022-03-16 06:51:15'),
(61, 45, 4, 8, 88.00, 88.00, 0, 15, '2022-03-17 22:58:39', '2022-03-17 22:58:39'),
(62, 46, 5, 8, 88.00, 88.00, 0, 10, '2022-03-17 23:58:03', '2022-03-17 23:58:03'),
(63, 51, 1, 9, 88.00, 88.00, 0, 20, '2022-03-18 01:08:18', '2022-03-18 01:08:18'),
(64, 48, 2, 8, 88.00, 88.00, 0, 22, '2022-03-22 00:11:44', '2022-03-22 00:11:44'),
(65, 48, 3, 8, 88.00, 88.00, 0, 10, '2022-03-22 00:33:39', '2022-03-22 00:33:39'),
(66, 46, 4, 8, 88.00, 88.00, 0, 10, '2022-03-22 00:55:19', '2022-03-22 00:55:19'),
(67, 46, 5, 7, 88.00, 88.00, 0, 10, '2022-03-22 01:12:03', '2022-03-22 01:12:03'),
(68, 46, 1, 8, 88.00, 88.00, 0, 10, '2022-03-23 23:53:54', '2022-03-23 23:53:54'),
(69, 48, 2, 8, 88.00, 88.00, 0, 15, '2022-03-24 04:15:37', '2022-03-24 04:15:37'),
(70, 53, 4, 8, 88.00, 88.00, 0, 8, '2022-03-29 06:22:41', '2022-03-29 06:22:41'),
(71, 54, 5, 8, 88.00, 88.00, 0, 8, '2022-03-29 06:31:36', '2022-03-29 06:31:36'),
(72, 55, 6, 8, 88.00, 88.00, 0, 8, '2022-03-29 23:43:13', '2022-03-29 23:43:13'),
(73, 56, 7, 8, 88.00, 88.00, 0, 8, '2022-03-30 00:03:53', '2022-03-30 00:03:53'),
(74, 45, 8, 7, 88.00, 88.00, 0, 24, '2022-04-12 00:06:45', '2022-04-12 00:06:45'),
(75, 46, 9, 7, 88.00, 88.00, 0, 10, '2022-04-12 05:27:51', '2022-04-12 05:27:51'),
(76, 46, 10, 7, 88.00, 88.00, 0, 8, '2022-04-12 06:37:44', '2022-04-12 06:37:44'),
(77, 50, 11, 7, 88.00, 88.00, 0, 25, '2022-04-13 07:50:12', '2022-04-13 07:50:12'),
(78, 57, 12, 8, 88.00, 88.00, 0, 11, '2022-04-14 08:08:35', '2022-04-14 08:08:35'),
(79, 45, 13, 7, 88.00, 88.00, 0, 2, '2022-05-05 01:12:58', '2022-05-05 01:12:58'),
(80, 45, 13, 8, 88.00, 88.00, 0, 20, '2022-05-05 01:12:58', '2022-05-05 01:12:58'),
(81, 45, 13, 9, 88.00, 88.00, 0, 5, '2022-05-05 01:12:58', '2022-05-05 01:12:58'),
(82, 45, 14, 8, 88.00, 88.00, 0, 1, '2022-05-05 07:59:48', '2022-05-05 07:59:48'),
(83, 45, 15, 7, 88.00, 88.00, 0, 1, '2022-05-05 08:37:02', '2022-05-05 08:37:02'),
(84, 46, 1, 8, 88.00, 88.00, 0, 2, '2022-05-10 12:36:02', '2022-05-10 12:36:02'),
(85, 48, 2, 9, 88.00, 88.00, 0, 2, '2022-05-10 12:36:58', '2022-05-10 12:36:58'),
(86, 50, 3, 8, 88.00, 88.00, 0, 2, '2022-05-10 12:38:04', '2022-05-10 12:38:04'),
(87, 51, 4, 9, 88.00, 88.00, 0, 2, '2022-05-10 12:40:17', '2022-05-10 12:40:17'),
(88, 57, 5, 9, 88.00, 88.00, 0, 2, '2022-05-10 12:45:25', '2022-05-10 12:45:25'),
(89, 58, 6, 8, 88.00, 88.00, 0, 10, '2022-05-13 13:34:50', '2022-05-13 13:34:50'),
(90, 58, 7, 8, 88.00, 88.00, 0, 10, '2022-05-13 17:01:27', '2022-05-13 17:01:27'),
(91, 58, 8, 8, 88.00, 88.00, 0, 10, '2022-05-14 09:39:54', '2022-05-14 09:39:54'),
(92, 46, 1, 8, 88.00, 88.00, 0, 2, '2022-05-14 12:41:06', '2022-05-14 12:41:06'),
(93, 48, 2, 9, 88.00, 88.00, 0, 4, '2022-05-14 12:42:56', '2022-05-14 12:42:56'),
(94, 48, 1, 8, 88.00, 88.00, 0, 4, '2022-05-14 12:51:55', '2022-05-14 12:51:55'),
(95, 46, 2, 8, 88.00, 88.00, 0, 2, '2022-05-14 12:52:47', '2022-05-14 12:52:47'),
(96, 46, 1, 8, 88.00, 88.00, 0, 2, '2022-05-14 12:56:26', '2022-05-14 12:56:26'),
(97, 48, 2, 8, 88.00, 88.00, 0, 5, '2022-05-14 12:57:49', '2022-05-14 12:57:49'),
(98, 46, 3, 8, 88.00, 88.00, 0, 2, '2022-05-16 09:24:24', '2022-05-16 09:24:24'),
(99, 48, 4, 8, 88.00, 88.00, 0, 4, '2022-05-16 09:25:34', '2022-05-16 09:25:34'),
(100, 46, 5, 8, 88.00, 88.00, 0, 3, '2022-05-16 09:38:53', '2022-05-16 09:38:53'),
(101, 48, 6, 9, 88.00, 88.00, 0, 5, '2022-05-16 09:39:45', '2022-05-16 09:39:45'),
(102, 48, 1, 8, 88.00, 88.00, 0, 4, '2022-05-16 09:44:17', '2022-05-16 09:44:17'),
(103, 46, 2, 8, 88.00, 88.00, 0, 2, '2022-05-16 09:45:18', '2022-05-16 09:45:18'),
(104, 46, 1, 8, 88.00, 88.00, 0, 2, '2022-05-16 10:34:53', '2022-05-16 10:34:53'),
(105, 48, 2, 8, 88.00, 88.00, 0, 4, '2022-05-16 10:36:01', '2022-05-16 10:36:01'),
(106, 51, 3, 8, 88.00, 88.00, 0, 1, '2022-05-16 10:37:10', '2022-05-16 10:37:10'),
(107, 50, 4, 8, 88.00, 88.00, 0, 1, '2022-05-16 10:38:01', '2022-05-16 10:38:01'),
(108, 46, 5, 8, 88.00, 88.00, 0, 2, '2022-05-17 10:05:39', '2022-05-17 10:05:39'),
(109, 48, 6, 9, 88.00, 88.00, 0, 4, '2022-05-17 10:06:36', '2022-05-17 10:06:36'),
(110, 50, 7, 9, 88.00, 88.00, 0, 2, '2022-05-17 10:08:01', '2022-05-17 10:08:01'),
(111, 51, 8, 7, 88.00, 88.00, 0, 3, '2022-05-17 10:08:52', '2022-05-17 10:08:52'),
(112, 46, 9, 8, 88.00, 88.00, 0, 2, '2022-05-17 10:27:05', '2022-05-17 10:27:05'),
(113, 48, 10, 7, 88.00, 88.00, 0, 2, '2022-05-17 10:28:06', '2022-05-17 10:28:06'),
(114, 50, 11, 8, 88.00, 88.00, 0, 2, '2022-05-17 10:29:10', '2022-05-17 10:29:10'),
(115, 51, 12, 8, 88.00, 88.00, 0, 2, '2022-05-17 10:30:03', '2022-05-17 10:30:03'),
(116, 46, 1, 8, 88.00, 88.00, 0, 2, '2022-05-17 10:47:26', '2022-05-17 10:47:26'),
(117, 48, 2, 8, 88.00, 88.00, 0, 3, '2022-05-17 10:48:17', '2022-05-17 10:48:17'),
(118, 51, 3, 8, 88.00, 88.00, 0, 1, '2022-05-17 10:49:05', '2022-05-17 10:49:05'),
(119, 50, 4, 8, 88.00, 88.00, 0, 1, '2022-05-17 10:49:54', '2022-05-17 10:49:54'),
(120, 46, 5, 8, 88.00, 88.00, 0, 8, '2022-05-19 14:19:36', '2022-05-19 14:19:36'),
(121, 48, 6, 9, 88.00, 88.00, 0, 12, '2022-05-19 14:20:33', '2022-05-19 14:20:33'),
(122, 51, 7, 8, 88.00, 88.00, 0, 1, '2022-05-19 14:21:22', '2022-05-19 14:21:22'),
(123, 50, 8, 8, 88.00, 88.00, 0, 1, '2022-05-19 14:22:07', '2022-05-19 14:22:07');

-- --------------------------------------------------------

--
-- Table structure for table `order_statuses`
--

CREATE TABLE `order_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_statuses`
--

INSERT INTO `order_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Processing', '2021-10-19 07:07:03', '2021-10-19 07:07:03'),
(2, 'Order Placed', '2021-10-19 07:07:03', '2021-10-19 07:07:03'),
(3, 'In transit', '2021-10-19 07:07:55', '2021-10-19 07:07:55'),
(4, 'On The Way', '2021-10-19 07:07:55', '2021-10-19 07:07:55'),
(5, 'Delivered', '2021-10-19 07:09:27', '2021-10-19 07:09:27'),
(6, 'Cancelled', '2021-10-19 13:44:12', '2021-10-19 13:44:12');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usemethod` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productimagee` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `productimagec` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `galleryimagee` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `galleryimagec` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shopbannere` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shopbannerc` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL,
  `regularprice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `saleprice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `offerprice` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pagetitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pageurl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadescription` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metakeyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `features` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `videotitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `videosource` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_components_image_eng` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_components_image_chn` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `effects_image_eng` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `effects_image_chn` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method_image_eng` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method_image_chn` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `pv`, `usemethod`, `size`, `description`, `productimagee`, `productimagec`, `galleryimagee`, `galleryimagec`, `shopbannere`, `shopbannerc`, `status`, `category_id`, `regularprice`, `saleprice`, `offerprice`, `pagetitle`, `pageurl`, `metadescription`, `metakeyword`, `stock`, `features`, `videotitle`, `videosource`, `main_components_image_eng`, `main_components_image_chn`, `effects_image_eng`, `effects_image_chn`, `method_image_eng`, `method_image_chn`, `created_at`, `updated_at`) VALUES
(7, 'MQ freckle essence', '88', '<p dir=\"ltr\" style=\"line-height: 1.295; margin-top: 0pt; margin-bottom: 8pt;\"><span style=\"font-size: 11pt; font-family: Calibri,sans-serif; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Wash your face.</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.295; margin-top: 0pt; margin-bottom: 8pt;\"><span style=\"font-size: 11pt; font-family: Calibri,sans-serif; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">MQ Anti-Blu-ray Fine Spray</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.295; margin-top: 0pt; margin-bottom: 8pt;\"><span style=\"font-size: 11pt; font-family: Calibri,sans-serif; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Then apply MQ freckle essence</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.295; margin-top: 0pt; margin-bottom: 8pt;\"><span style=\"font-size: 11pt; font-family: Calibri,sans-serif; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">sooner or later</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.295; margin-top: 0pt; margin-bottom: 8pt;\"><span style=\"font-size: 11pt; font-family: Calibri,sans-serif; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">28-day cycle</span></p>\r\n<p>&nbsp;</p>\r\n<p dir=\"ltr\" style=\"line-height: 1.295; margin-top: 0pt; margin-bottom: 8pt;\"><span style=\"font-size: 11pt; font-family: Calibri,sans-serif; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Obviously see the effect of desalination freckle</span></p>', '30', '<p>&nbsp;</p>\r\n<p dir=\"ltr\" style=\"line-height: 1.295; margin-top: 0pt; margin-bottom: 8pt;\"><span style=\"font-size: 11pt; font-family: Calibri,sans-serif; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Water; Benzoic acid, 3,4,5-trihydroxybenzoic acid; Tranexamic acid; Nicotinamide; Glycerol; Dipropyl glycol; Hydroxy acetophenone; Potassium glycyrrhizinate; Octanediol; 1-aminoethyl phosphinic acid; Sodium hyaluronate; N-acetyl-D-glucosamine; Allantoin; EDTA tetrasodium; xanthan</span></p>', 'product/product_imagee/pic1.jpg', 'product//product_imagec/product_imagec26_11_21_05_11MQ freckle essence.jpg', 'product//gallery_imagee/gallery_imagee26_11_21_05_11MQ freckle essencei8PB6.jpg', 'product//gallery_imagec/gallery_imagec26_11_21_05_11MQ freckle essenceNh2Yl.jpg', '', '', 1, 3, '88', '88', '88', NULL, NULL, NULL, NULL, '1', '<p dir=\"ltr\" style=\"line-height: 1.295; margin-top: 0pt; margin-bottom: 8pt;\"><span style=\"font-size: 11pt; font-family: Calibri,sans-serif; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">1) Reduced aperture</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.295; margin-top: 0pt; margin-bottom: 8pt;\"><span style=\"font-size: 11pt; font-family: Calibri,sans-serif; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">2) Prevent DNA damage caused by UV light</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.295; margin-top: 0pt; margin-bottom: 8pt;\"><span style=\"font-size: 11pt; font-family: Calibri,sans-serif; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">3) Prevents melanin production</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.295; margin-top: 0pt; margin-bottom: 8pt;\"><span style=\"font-size: 11pt; font-family: Calibri,sans-serif; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">4) Reduces vasodilation and redness</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.295; margin-top: 0pt; margin-bottom: 8pt;\"><span style=\"font-size: 11pt; font-family: Calibri,sans-serif; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">5) Reduces inflammation</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.295; margin-top: 0pt; margin-bottom: 8pt;\"><span style=\"font-size: 11pt; font-family: Calibri,sans-serif; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">6) Stop melanin transfer</span></p>\r\n<p>&nbsp;</p>\r\n<p dir=\"ltr\" style=\"line-height: 1.295; margin-top: 0pt; margin-bottom: 8pt;\"><span style=\"font-size: 11pt; font-family: Calibri,sans-serif; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">7) Skin Brightening</span></p>', NULL, NULL, 'product//main_components_image_eng/MQ freckle essence_main_components_image_eng26_11_21_05_11.png', 'product//main_components_image_chn/MQ freckle essence_main_components_image_chn26_11_21_05_11.png', 'product//effects_image_eng/MQ freckle essence_effects_image_eng26_11_21_05_11.jpg', 'product//effects_image_chn/MQ freckle essence_effects_image_chn26_11_21_05_11.jpg', 'product//method_image_eng/MQ freckle essence_method_image_eng26_11_21_05_11.png', 'product//method_image_chn/MQ freckle essence_method_image_chn26_11_21_05_11.png', '2021-11-25 21:17:06', '2021-11-25 21:17:06'),
(8, 'MQ Avocado Neckline Repair Massage Cream', '88', '<p><span id=\"docs-internal-guid-2d900fd3-7fff-46fd-ed40-d95728ae60cf\"><span style=\"font-size: 11pt; font-family: Calibri, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">clean skin, evenly apply appropriate amount of products to the neck, gently massage until absorbed.</span></span></p>', '30', '<p>&nbsp;</p>\r\n<p dir=\"ltr\" style=\"line-height: 1.295; margin-top: 0pt; margin-bottom: 8pt;\"><span style=\"font-size: 11pt; font-family: Calibri,sans-serif; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">water, caprylic acid / decanoate, ethyl hexyl palmitate, glycerol, propanediol, whale wax stearol, whale wax stearyl glucosides, trehalose, butter fruit tree (BUTYROSPERMUMPARIKI) fruit tree (ALOE BARBADENSIS) extract, sodium hyaluronate, xanthan gum, p-light acetophenone, light benzoate, essence, CI 15985 CI 19140, ginseng (PANAX GINSENG) root extract, Glycyrrhiza uralensis Fisch root extract, hexapeptide-1, Fullerene, nicotine, mint (MENTHAARVENSIS) extract</span></p>', 'product/product_imagee/pic2.jpg', 'product//product_imagec/product_imagec26_11_21_05_11MQ Avocado Neckline Repair Massage Cream.jpg', 'product//gallery_imagee/gallery_imagee26_11_21_05_11MQ Avocado Neckline Repair Massage CreamZSKpC.jpg', 'product//gallery_imagec/gallery_imagec26_11_21_05_11MQ Avocado Neckline Repair Massage Creamna5aT.jpg', '', '', 1, 3, '88', '88', '88', NULL, NULL, NULL, NULL, '1', '<p dir=\"ltr\" style=\"line-height: 1.295; margin-top: 0pt; margin-bottom: 8pt;\"><span style=\"font-size: 11pt; font-family: Calibri,sans-serif; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">1) Improve Neck Lines</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.295; margin-top: 0pt; margin-bottom: 8pt;\"><span style=\"font-size: 11pt; font-family: Calibri,sans-serif; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">2) Lymphatic Detox</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.295; margin-top: 0pt; margin-bottom: 8pt;\"><span style=\"font-size: 11pt; font-family: Calibri,sans-serif; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">3) Upgrade </span><span style=\"font-size: 11pt; font-family: \'Quattrocento Sans\',sans-serif; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">🇻</span><span style=\"font-size: 11pt; font-family: Calibri,sans-serif; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\"> face</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.295; margin-top: 0pt; margin-bottom: 8pt;\"><span style=\"font-size: 11pt; font-family: Calibri,sans-serif; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">4) Improve the crease</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.295; margin-top: 0pt; margin-bottom: 8pt;\"><span style=\"font-size: 11pt; font-family: Calibri,sans-serif; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">5) Improvement of Decree Lines</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.295; margin-top: 0pt; margin-bottom: 8pt;\"><span style=\"font-size: 11pt; font-family: Calibri,sans-serif; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">6) Dilute Fine Lines</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.295; margin-top: 0pt; margin-bottom: 8pt;\"><span style=\"font-size: 11pt; font-family: Calibri,sans-serif; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">7) Replenish Skin Moisture</span></p>\r\n<p>&nbsp;</p>\r\n<p dir=\"ltr\" style=\"line-height: 1.295; margin-top: 0pt; margin-bottom: 8pt;\"><span style=\"font-size: 11pt; font-family: Calibri,sans-serif; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">8) Improves skin\'s brightness and tenderness</span></p>', NULL, NULL, 'product//main_components_image_eng/MQ Avocado Neckline Repair Massage Cream_main_components_image_eng26_11_21_05_11.png', 'product//main_components_image_chn/MQ Avocado Neckline Repair Massage Cream_main_components_image_chn26_11_21_05_11.png', 'product//effects_image_eng/MQ Avocado Neckline Repair Massage Cream_effects_image_eng26_11_21_05_11.jpg', 'product//effects_image_chn/MQ Avocado Neckline Repair Massage Cream_effects_image_chn26_11_21_05_11.jpg', 'product//method_image_eng/MQ Avocado Neckline Repair Massage Cream_method_image_eng26_11_21_05_11.png', 'product//method_image_chn/MQ Avocado Neckline Repair Massage Cream_method_image_chn26_11_21_05_11.png', '2021-11-25 21:37:56', '2021-11-25 21:37:56'),
(9, 'MQ Coconut Oil Amino Acid Facial Cleanser', '88', '<p><span id=\"docs-internal-guid-64cfd0ef-7fff-7aa4-8cff-8c2f258b75e5\"><span style=\"font-size: 11pt; font-family: \'Quattrocento Sans\', sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">1) </span><span style=\"font-size: 11pt; font-family: Calibri, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">Cleanse morning and evening (effective in removing makeup)</span></span></p>\r\n<p><span id=\"docs-internal-guid-211b80e0-7fff-a1c1-c2d8-88e257d8fbdd\"><span style=\"font-size: 11pt; font-family: Calibri, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">2) </span><span style=\"font-size: 11pt; font-family: Calibri, sans-serif; color: #202124; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">Take appropriate amount of water or warm water to make rich bubbles</span></span></p>\r\n<p><span id=\"docs-internal-guid-47f38701-7fff-c820-14f6-053f63ae7517\"><span style=\"font-size: 11pt; font-family: \'Quattrocento Sans\', sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">3) </span><span style=\"font-size: 11pt; font-family: Calibri, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">Gently massage a small amount using circular motions onto damp skin</span></span></p>\r\n<p><span id=\"docs-internal-guid-a4f7ea20-7fff-eae6-872e-a5b54dcd76f8\"><span style=\"font-size: 11pt; font-family: \'Quattrocento Sans\', sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">4) </span><span style=\"font-size: 11pt; font-family: Calibri, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">Rinse using warm water and pat dry with a soft face cloth</span></span></p>', '30', '<p><span id=\"docs-internal-guid-2e01741f-7fff-cdbb-93b8-bd657cd39aee\"><span style=\"font-size: 11pt; font-family: Calibri, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">Water, Sodium lauroyl isethionate, Sodium cocoyl amino acid, Cocamidopropyl betaine, Glycerin, Stearic acid, Ethylene glycol distearate, Acrylic (ester) copolymer, Yellow crude gum, Cocos nucifera oil, Potassium hydroxide, Disodium EDTA, Caprylic hydroxamic acid, Ethylhexyl glycerol</span></span></p>', 'product/product_imagee/pic3.jpg', 'product//product_imagec/product_imagec26_11_21_05_11MQ Coconut Oil Amino Acid Facial Cleanser.jpg', 'product//gallery_imagee/gallery_imagee26_11_21_05_11MQ Coconut Oil Amino Acid Facial CleanserBs1Gb.jpg', 'product//gallery_imagec/gallery_imagec26_11_21_05_11MQ Coconut Oil Amino Acid Facial Cleanserpglo5.jpg', '', '', 1, 3, '88', '88', '88', NULL, NULL, NULL, NULL, '1', '<p dir=\"ltr\" style=\"line-height: 1.295; margin-top: 0pt; margin-bottom: 8pt;\"><span style=\"font-size: 11pt; font-family: Calibri,sans-serif; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">1️)&nbsp; Balance and soothe the skin</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.295; margin-top: 0pt; margin-bottom: 8pt;\"><span style=\"font-size: 11pt; font-family: Calibri,sans-serif; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">2️) Gentle exfoliation</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.295; margin-top: 0pt; margin-bottom: 8pt;\"><span style=\"font-size: 11pt; font-family: Calibri,sans-serif; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">3️) remove blackheads</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.295; margin-top: 0pt; margin-bottom: 8pt;\"><span style=\"font-size: 11pt; font-family: Calibri,sans-serif; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">4️) Dissolve excess oil</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.295; margin-top: 0pt; margin-bottom: 8pt;\"><span style=\"font-size: 11pt; font-family: Calibri,sans-serif; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">5️)&nbsp; In addition to mites and anti-acne</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.295; margin-top: 0pt; margin-bottom: 8pt;\"><span style=\"font-size: 11pt; font-family: Calibri,sans-serif; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">6️)&nbsp; Whitening and moisturizing</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.295; margin-top: 0pt; margin-bottom: 8pt;\"><span style=\"font-size: 11pt; font-family: Calibri,sans-serif; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">7️)&nbsp; Brighten skin tone</span></p>\r\n<p>&nbsp;</p>\r\n<p dir=\"ltr\" style=\"line-height: 1.542857142857143; margin-top: -1pt; margin-bottom: -1pt;\"><span style=\"font-size: 11pt; font-family: Calibri,sans-serif; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">8️)&nbsp; Purifies the skin, tightens the pores, and does not tighten after use!</span></p>', NULL, NULL, 'product//main_components_image_eng/MQ Coconut Oil Amino Acid Facial Cleanser_main_components_image_eng26_11_21_05_11.jpg', 'product//main_components_image_chn/MQ Coconut Oil Amino Acid Facial Cleanser_main_components_image_chn26_11_21_05_11.jpg', 'product//effects_image_eng/MQ Coconut Oil Amino Acid Facial Cleanser_effects_image_eng26_11_21_05_11.jpg', 'product//effects_image_chn/MQ Coconut Oil Amino Acid Facial Cleanser_effects_image_chn26_11_21_05_11.jpg', 'product//method_image_eng/MQ Coconut Oil Amino Acid Facial Cleanser_method_image_eng26_11_21_05_11.png', 'product//method_image_chn/MQ Coconut Oil Amino Acid Facial Cleanser_method_image_chn26_11_21_05_11.png', '2021-11-25 21:46:06', '2021-11-25 21:46:06');

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Image_eng` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Image_ch` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pv_points`
--

CREATE TABLE `pv_points` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `point` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pv_points`
--

INSERT INTO `pv_points` (`id`, `user_id`, `product_id`, `point`, `order_id`, `created_at`, `updated_at`) VALUES
(1, '16', '8', '88', '3', '2022-02-14 08:55:25', '2022-02-14 08:55:25'),
(2, '16', '7', '88', '4', '2022-02-14 08:56:47', '2022-02-14 08:56:47'),
(3, '16', '7', '88', '5', '2022-02-14 09:07:24', '2022-02-14 09:07:24'),
(4, '16', '8', '88', '5', '2022-02-14 09:07:24', '2022-02-14 09:07:24'),
(5, '1', '8', '88', '11', '2022-02-16 06:12:39', '2022-02-16 06:12:39'),
(6, '1', '8', '88', '15', '2022-02-16 06:21:36', '2022-02-16 06:21:36'),
(7, '1', '9', '88', '16', '2022-02-16 06:24:41', '2022-02-16 06:24:41'),
(8, '1', '8', '88', '17', '2022-02-16 06:25:30', '2022-02-16 06:25:30'),
(9, '1', '8', '88', '18', '2022-02-16 06:26:11', '2022-02-16 06:26:11'),
(10, '1', '8', '88', '19', '2022-02-16 06:31:00', '2022-02-16 06:31:00'),
(11, '1', '9', '88', '20', '2022-02-16 06:32:40', '2022-02-16 06:32:40'),
(12, '23', '9', '88', '21', '2022-02-17 05:27:43', '2022-02-17 05:27:43'),
(13, '23', '8', '88', '21', '2022-02-17 05:27:43', '2022-02-17 05:27:43'),
(14, '41', '8', '88', '34', '2022-03-07 07:39:14', '2022-03-07 07:39:14'),
(15, '44', '8', '88', '35', '2022-03-09 01:54:19', '2022-03-09 01:54:19'),
(16, '45', '8', '88', '36', '2022-03-09 02:11:52', '2022-03-09 02:11:52'),
(17, '46', '9', '88', '37', '2022-03-09 02:48:28', '2022-03-09 02:48:28'),
(18, '48', '7', '88', '38', '2022-03-09 03:10:34', '2022-03-09 03:10:34'),
(19, '50', '8', '88', '39', '2022-03-10 06:50:23', '2022-03-10 06:50:23'),
(20, '45', '8', '88', '3', '2022-03-26 09:20:52', '2022-03-26 09:20:52'),
(21, '16', '7', '352', '2', '2022-03-26 10:05:47', '2022-03-26 10:05:47'),
(22, '16', '8', '88', '2', '2022-03-26 10:05:47', '2022-03-26 10:05:47'),
(23, '16', '9', '88', '2', '2022-03-26 10:05:47', '2022-03-26 10:05:47'),
(24, '48', '8', '0', '2', '2022-03-26 10:05:47', '2022-03-26 10:05:47'),
(25, '48', '8', '0', '2', '2022-03-26 10:05:47', '2022-03-26 10:05:47'),
(26, '16', '7', '88', '1', '2022-03-26 11:44:42', '2022-03-26 11:44:42'),
(27, '51', '9', '0', '1', '2022-03-26 11:44:42', '2022-03-26 11:44:42'),
(28, '46', '8', '0', '1', '2022-03-26 11:44:42', '2022-03-26 11:44:42'),
(29, '53', '8', '88', '4', '2022-03-29 06:22:43', '2022-03-29 06:22:43'),
(30, '54', '8', '88', '5', '2022-03-29 06:31:36', '2022-03-29 06:31:36'),
(31, '55', '8', '88', '6', '2022-03-29 23:43:14', '2022-03-29 23:43:14'),
(32, '56', '8', '88', '7', '2022-03-30 00:03:53', '2022-03-30 00:03:53'),
(33, '45', '7', '88', '8', '2022-04-12 00:06:47', '2022-04-12 00:06:47'),
(34, '46', '7', '88', '9', '2022-04-12 05:27:53', '2022-04-12 05:27:53'),
(35, '46', '7', '88', '10', '2022-04-12 06:37:45', '2022-04-12 06:37:45'),
(36, '50', '7', '88', '11', '2022-04-13 07:50:14', '2022-04-13 07:50:14'),
(37, '57', '8', '88', '12', '2022-04-14 08:08:36', '2022-04-14 08:08:36'),
(38, '45', '7', '88', '13', '2022-05-05 01:12:59', '2022-05-05 01:12:59'),
(39, '45', '8', '88', '13', '2022-05-05 01:12:59', '2022-05-05 01:12:59'),
(40, '45', '9', '88', '13', '2022-05-05 01:12:59', '2022-05-05 01:12:59'),
(41, '45', '8', '88', '14', '2022-05-05 07:59:50', '2022-05-05 07:59:50'),
(42, '45', '7', '88', '15', '2022-05-05 08:37:02', '2022-05-05 08:37:02'),
(43, '46', '8', '88', '1', '2022-05-10 12:36:02', '2022-05-10 12:36:02'),
(44, '48', '9', '88', '2', '2022-05-10 12:36:58', '2022-05-10 12:36:58'),
(45, '50', '8', '88', '3', '2022-05-10 12:38:04', '2022-05-10 12:38:04'),
(46, '51', '9', '88', '4', '2022-05-10 12:40:17', '2022-05-10 12:40:17'),
(47, '57', '9', '88', '5', '2022-05-10 12:45:25', '2022-05-10 12:45:25'),
(48, '58', '8', '88', '6', '2022-05-13 13:34:51', '2022-05-13 13:34:51'),
(49, '58', '8', '88', '7', '2022-05-13 17:01:27', '2022-05-13 17:01:27'),
(50, '58', '8', '88', '8', '2022-05-14 09:39:54', '2022-05-14 09:39:54'),
(51, '46', '8', '88', '1', '2022-05-14 12:41:06', '2022-05-14 12:41:06'),
(52, '48', '9', '88', '2', '2022-05-14 12:42:56', '2022-05-14 12:42:56'),
(53, '48', '8', '88', '1', '2022-05-14 12:51:55', '2022-05-14 12:51:55'),
(54, '46', '8', '88', '2', '2022-05-14 12:52:47', '2022-05-14 12:52:47'),
(55, '46', '8', '88', '1', '2022-05-14 12:56:26', '2022-05-14 12:56:26'),
(56, '48', '8', '88', '2', '2022-05-14 12:57:49', '2022-05-14 12:57:49'),
(57, '46', '8', '88', '3', '2022-05-16 09:24:24', '2022-05-16 09:24:24'),
(58, '48', '8', '88', '4', '2022-05-16 09:25:34', '2022-05-16 09:25:34'),
(59, '46', '8', '88', '5', '2022-05-16 09:38:53', '2022-05-16 09:38:53'),
(60, '48', '9', '88', '6', '2022-05-16 09:39:45', '2022-05-16 09:39:45'),
(61, '48', '8', '88', '1', '2022-05-16 09:44:17', '2022-05-16 09:44:17'),
(62, '46', '8', '88', '2', '2022-05-16 09:45:18', '2022-05-16 09:45:18'),
(63, '46', '8', '88', '1', '2022-05-16 10:34:53', '2022-05-16 10:34:53'),
(64, '48', '8', '88', '2', '2022-05-16 10:36:01', '2022-05-16 10:36:01'),
(65, '51', '8', '88', '3', '2022-05-16 10:37:10', '2022-05-16 10:37:10'),
(66, '50', '8', '88', '4', '2022-05-16 10:38:02', '2022-05-16 10:38:02'),
(67, '46', '8', '88', '5', '2022-05-17 10:05:39', '2022-05-17 10:05:39'),
(68, '48', '9', '88', '6', '2022-05-17 10:06:36', '2022-05-17 10:06:36'),
(69, '50', '9', '88', '7', '2022-05-17 10:08:01', '2022-05-17 10:08:01'),
(70, '51', '7', '88', '8', '2022-05-17 10:08:52', '2022-05-17 10:08:52'),
(71, '46', '8', '88', '9', '2022-05-17 10:27:05', '2022-05-17 10:27:05'),
(72, '48', '7', '88', '10', '2022-05-17 10:28:06', '2022-05-17 10:28:06'),
(73, '50', '8', '88', '11', '2022-05-17 10:29:10', '2022-05-17 10:29:10'),
(74, '51', '8', '88', '12', '2022-05-17 10:30:03', '2022-05-17 10:30:03'),
(75, '46', '8', '88', '1', '2022-05-17 10:47:26', '2022-05-17 10:47:26'),
(76, '48', '8', '88', '2', '2022-05-17 10:48:17', '2022-05-17 10:48:17'),
(77, '51', '8', '88', '3', '2022-05-17 10:49:05', '2022-05-17 10:49:05'),
(78, '50', '8', '88', '4', '2022-05-17 10:49:54', '2022-05-17 10:49:54'),
(79, '46', '8', '88', '5', '2022-05-19 14:19:36', '2022-05-19 14:19:36'),
(80, '48', '9', '88', '6', '2022-05-19 14:20:33', '2022-05-19 14:20:33'),
(81, '51', '8', '88', '7', '2022-05-19 14:21:22', '2022-05-19 14:21:22'),
(82, '50', '8', '88', '8', '2022-05-19 14:22:07', '2022-05-19 14:22:07');

-- --------------------------------------------------------

--
-- Table structure for table `racks`
--

CREATE TABLE `racks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warehouses_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `racks`
--

INSERT INTO `racks` (`id`, `name`, `detail`, `warehouses_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, 1, 1, '2021-10-08 18:49:29', '2021-10-08 18:49:29'),
(2, 'Demo', NULL, 1, 1, '2021-10-20 20:52:49', '2021-10-20 20:52:49');

-- --------------------------------------------------------

--
-- Table structure for table `rankings`
--

CREATE TABLE `rankings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `points` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rankings`
--

INSERT INTO `rankings` (`id`, `type`, `details`, `points`, `created_at`, `updated_at`) VALUES
(1, 'Normal Member', 'Normal Member', '88', '2021-10-21 04:58:19', '2021-10-21 04:58:19'),
(2, 'Silver Member\n', 'Silver Member\n', '500', '2021-10-21 04:58:19', '2021-10-21 04:58:19'),
(3, 'Gold Member', 'Gold Member', '1000', '2021-10-21 04:59:10', '2021-10-21 04:59:10'),
(4, 'Diamond Member', 'Diamond Member', '2000', '2021-10-21 04:59:10', '2021-10-21 04:59:10');

-- --------------------------------------------------------

--
-- Table structure for table `redeem_credit_points`
--

CREATE TABLE `redeem_credit_points` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `credit_points` decimal(50,0) NOT NULL,
  `status` int(11) NOT NULL,
  `redemption_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `redeem_credit_points`
--

INSERT INTO `redeem_credit_points` (`id`, `user_id`, `credit_points`, `status`, `redemption_date`) VALUES
(1, 'MQU0000003', 60, 1, '2022-04-09 05:16:34'),
(2, 'MQU0000003', 20, 1, '2022-04-09 06:32:28');

-- --------------------------------------------------------

--
-- Table structure for table `referals`
--

CREATE TABLE `referals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `referal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `referals`
--

INSERT INTO `referals` (`id`, `user_id`, `referal_code`, `created_at`, `updated_at`) VALUES
(1, 'MQU0000001', 'MQRF0000001', '2022-02-13 05:00:45', '2022-02-13 05:00:45'),
(16, 'MQU0000002', 'MQRF0000002', '2022-02-14 05:20:41', '2022-02-14 05:20:41'),
(17, 'MQU0000003', 'MQRF0000003', '2022-02-15 02:37:18', '2022-02-15 02:37:18'),
(18, 'MQU0000004', 'MQRF0000004', '2022-02-15 03:46:11', '2022-02-15 03:46:11'),
(19, 'MQU0000002', 'MQRF0000005', '2022-02-15 22:39:17', '2022-02-15 22:39:17'),
(20, 'MQU0000003', 'MQRF0000006', '2022-02-15 23:05:25', '2022-02-15 23:05:25'),
(21, 'MQU0000004', 'MQRF0000007', '2022-02-16 02:27:44', '2022-02-16 02:27:44'),
(22, 'MQU0000005', 'MQRF0000008', '2022-02-16 02:29:04', '2022-02-16 02:29:04'),
(23, 'MQU0000002', 'MQRF0000009', '2022-02-17 05:20:45', '2022-02-17 05:20:45'),
(24, 'MQU0000003', 'MQRF0000010', '2022-02-17 23:30:13', '2022-02-17 23:30:13'),
(25, 'MQU0000004', 'MQRF0000011', '2022-02-18 02:40:16', '2022-02-18 02:40:16'),
(26, 'MQU0000003', 'MQRF0000012', '2022-02-18 23:44:16', '2022-02-18 23:44:16'),
(27, 'MQU0000003', 'MQRF0000013', '2022-02-18 23:59:14', '2022-02-18 23:59:14'),
(28, 'MQU0000004', 'MQRF0000014', '2022-02-19 01:06:30', '2022-02-19 01:06:30'),
(29, 'MQU0000005', 'MQRF0000015', '2022-02-19 01:18:02', '2022-02-19 01:18:02'),
(30, 'MQU0000006', 'MQRF0000016', '2022-02-19 02:53:22', '2022-02-19 02:53:22'),
(31, 'MQU0000007', 'MQRF0000017', '2022-02-20 22:12:42', '2022-02-20 22:12:42'),
(32, 'MQU0000003', 'MQRF0000018', '2022-02-21 23:04:11', '2022-02-21 23:04:11'),
(33, 'MQU0000003', 'MQRF0000019', '2022-02-24 00:19:17', '2022-02-24 00:19:17'),
(34, 'MQU0000004', 'MQRF0000020', '2022-02-24 01:10:04', '2022-02-24 01:10:04'),
(35, 'MQU0000005', 'MQRF0000021', '2022-02-24 02:07:35', '2022-02-24 02:07:35'),
(36, 'MQU0000006', 'MQRF0000022', '2022-02-24 23:30:41', '2022-02-24 23:30:41'),
(37, 'MQU0000007', 'MQRF0000023', '2022-02-25 00:20:18', '2022-02-25 00:20:18'),
(38, 'MQU0000008', 'MQRF0000024', '2022-03-07 06:44:49', '2022-03-07 06:44:49'),
(39, 'MQU0000009', 'MQRF0000025', '2022-03-07 07:19:32', '2022-03-07 07:19:32'),
(40, 'MQU0000003', 'MQRF0000026', '2022-03-07 07:37:32', '2022-03-07 07:37:32'),
(41, 'MQU0000004', 'MQRF0000027', '2022-03-08 04:48:40', '2022-03-08 04:48:40'),
(42, 'MQU0000005', 'MQRF0000028', '2022-03-08 06:50:55', '2022-03-08 06:50:55'),
(43, 'MQU0000003', 'MQRF0000029', '2022-03-09 01:51:52', '2022-03-09 01:51:52'),
(44, 'MQU0000003', 'MQRF0000030', '2022-03-09 02:09:13', '2022-03-09 02:09:13'),
(45, 'MQU0000004', 'MQRF0000031', '2022-03-09 02:46:28', '2022-03-09 02:46:28'),
(46, 'MQU0000005', 'MQRF0000032', '2022-03-09 02:50:26', '2022-03-09 02:50:26'),
(47, 'MQU0000005', 'MQRF0000033', '2022-03-09 02:52:30', '2022-03-09 02:52:30'),
(48, 'MQU0000006', 'MQRF0000034', '2022-03-10 06:42:40', '2022-03-10 06:42:40'),
(49, 'MQU0000006', 'MQRF0000035', '2022-03-10 06:48:07', '2022-03-10 06:48:07'),
(50, 'MQU0000007', 'MQRF0000036', '2022-03-26 00:01:51', '2022-03-26 00:01:51'),
(51, 'MQU0000008', 'MQRF0000037', '2022-03-29 06:14:47', '2022-03-29 06:14:47'),
(52, 'MQU0000008', 'MQRF0000038', '2022-03-29 06:17:25', '2022-03-29 06:17:25'),
(53, 'MQU0000008', 'MQRF0000039', '2022-03-29 06:29:04', '2022-03-29 06:29:04'),
(54, 'MQU0000008', 'MQRF0000040', '2022-03-29 23:37:41', '2022-03-29 23:37:41'),
(55, 'MQU0000008', 'MQRF0000041', '2022-03-30 00:01:29', '2022-03-30 00:01:29'),
(56, 'MQU0000008', 'MQRF0000042', '2022-04-14 08:04:57', '2022-04-14 08:04:57'),
(57, 'MQU0000009', 'MQRF0000043', '2022-05-13 13:33:10', '2022-05-13 13:33:10');

-- --------------------------------------------------------

--
-- Table structure for table `returns`
--

CREATE TABLE `returns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `productid` int(11) NOT NULL,
  `warehouseid` int(11) NOT NULL,
  `rackid` int(11) NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `self_picks`
--

CREATE TABLE `self_picks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `self_picks`
--

INSERT INTO `self_picks` (`id`, `user_id`, `order_id`, `country`, `state`, `zip`, `created_at`, `updated_at`) VALUES
(1, 16, 1, 'Singapore', 'Bihar', '851204', '2022-02-14 06:21:23', '2022-02-14 06:21:23'),
(2, 16, 2, 'Singapore', 'Bihar', '851204', '2022-02-14 08:02:41', '2022-02-14 08:02:41'),
(3, 16, 3, 'Singapore', 'Bihar', '851204', '2022-02-14 08:55:25', '2022-02-14 08:55:25'),
(4, 16, 4, 'Singapore', 'Bihar', '851204', '2022-02-14 08:56:47', '2022-02-14 08:56:47'),
(5, 16, 5, 'Singapore', 'Bihar', '851204', '2022-02-14 09:07:24', '2022-02-14 09:07:24'),
(6, 1, 6, 'Singapore', 'Delhi', '457845', '2022-02-16 02:36:23', '2022-02-16 02:36:23'),
(7, 1, 7, 'Singapore', 'Delhi', '457845', '2022-02-16 02:37:00', '2022-02-16 02:37:00'),
(8, 1, 8, 'Singapore', 'Delhi', '457845', '2022-02-16 02:37:50', '2022-02-16 02:37:50'),
(9, 1, 9, 'Singapore', 'Delhi', '457845', '2022-02-16 02:37:50', '2022-02-16 02:37:50'),
(10, 1, 10, 'Singapore', 'Delhi', '457845', '2022-02-16 02:37:53', '2022-02-16 02:37:53'),
(11, 1, 11, 'Singapore', 'Delhi', '457845', '2022-02-16 06:12:39', '2022-02-16 06:12:39'),
(12, 1, 12, 'Singapore', 'Delhi', '457845', '2022-02-16 06:15:53', '2022-02-16 06:15:53'),
(13, 1, 13, 'Singapore', 'Delhi', '457845', '2022-02-16 06:16:04', '2022-02-16 06:16:04'),
(14, 1, 14, 'Singapore', 'Delhi', '457845', '2022-02-16 06:18:19', '2022-02-16 06:18:19'),
(15, 1, 15, 'Singapore', 'Delhi', '457845', '2022-02-16 06:21:36', '2022-02-16 06:21:36'),
(16, 1, 16, 'Singapore', 'Delhi', '457845', '2022-02-16 06:24:40', '2022-02-16 06:24:40'),
(17, 1, 17, 'Singapore', 'Delhi', '457845', '2022-02-16 06:25:30', '2022-02-16 06:25:30'),
(18, 1, 18, 'Singapore', 'Delhi', '457845', '2022-02-16 06:26:11', '2022-02-16 06:26:11'),
(19, 1, 19, 'Singapore', 'Delhi', '457845', '2022-02-16 06:31:00', '2022-02-16 06:31:00'),
(20, 1, 20, 'Singapore', 'Delhi', '457845', '2022-02-16 06:32:40', '2022-02-16 06:32:40'),
(21, 23, 21, 'Singapore', 'Bihar', '801503', '2022-02-17 05:27:42', '2022-02-17 05:27:42'),
(22, 40, 22, 'Singapore', 'xyz', '12345', '2022-03-07 07:21:26', '2022-03-07 07:21:26'),
(23, 40, 26, 'Singapore', 'xyz', '12345', '2022-03-07 07:23:53', '2022-03-07 07:23:53'),
(24, 40, 27, 'Singapore', 'xyz', '12345', '2022-03-07 07:24:38', '2022-03-07 07:24:38'),
(25, 40, 28, 'Singapore', 'xyz', '12345', '2022-03-07 07:25:21', '2022-03-07 07:25:21'),
(26, 40, 29, 'Singapore', 'xyz', '12345', '2022-03-07 07:25:44', '2022-03-07 07:25:44'),
(27, 40, 30, 'Singapore', 'xyz', '12345', '2022-03-07 07:27:26', '2022-03-07 07:27:26'),
(28, 40, 31, 'Singapore', 'xyz', '12345', '2022-03-07 07:29:31', '2022-03-07 07:29:31'),
(29, 40, 32, 'Singapore', 'xyz', '12345', '2022-03-07 07:29:51', '2022-03-07 07:29:51'),
(30, 40, 33, 'Singapore', 'xyz', '12345', '2022-03-07 07:32:48', '2022-03-07 07:32:48'),
(31, 41, 34, 'Singapore', 'xyz', '123456', '2022-03-07 07:39:14', '2022-03-07 07:39:14'),
(32, 44, 35, 'Singapore', 'xyz', '123456', '2022-03-09 01:54:19', '2022-03-09 01:54:19'),
(33, 45, 36, 'Singapore', 'XYZ', '123456', '2022-03-09 02:11:51', '2022-03-09 02:11:51'),
(34, 46, 37, 'Singapore', 'XYZ', '123456', '2022-03-09 02:48:27', '2022-03-09 02:48:27'),
(35, 48, 38, 'Singapore', 'XYZ', '12345', '2022-03-09 03:10:34', '2022-03-09 03:10:34'),
(36, 50, 39, 'Singapore', 'XYZ', '123456', '2022-03-10 06:50:21', '2022-03-10 06:50:21'),
(37, 45, 3, 'Singapore', 'XYZ', '123456', '2022-03-15 00:05:42', '2022-03-15 00:05:42'),
(38, 46, 4, 'Singapore', 'XYZ', '123456', '2022-03-15 00:16:26', '2022-03-15 00:16:26'),
(39, 50, 5, 'Singapore', 'XYZ', '123456', '2022-03-15 00:34:24', '2022-03-15 00:34:24'),
(40, 45, 3, 'Singapore', 'XYZ', '123456', '2022-03-26 09:20:51', '2022-03-26 09:20:51'),
(41, 53, 4, 'Singapore', 'Punjab', '12345', '2022-03-29 06:22:41', '2022-03-29 06:22:41'),
(42, 54, 5, 'Singapore', 'Auckland', '123456', '2022-03-29 06:31:36', '2022-03-29 06:31:36'),
(43, 55, 6, 'Singapore', 'Punjab', '123456', '2022-03-29 23:43:13', '2022-03-29 23:43:13'),
(44, 56, 7, 'Singapore', 'Punjab', '123456', '2022-03-30 00:03:53', '2022-03-30 00:03:53'),
(45, 45, 8, 'Singapore', 'XYZ', '123456', '2022-04-12 00:06:45', '2022-04-12 00:06:45'),
(46, 46, 9, 'Singapore', 'XYZ', '123456', '2022-04-12 05:27:51', '2022-04-12 05:27:51'),
(47, 46, 10, 'Singapore', 'XYZ', '123456', '2022-04-12 06:37:44', '2022-04-12 06:37:44'),
(48, 50, 11, 'Singapore', 'XYZ', '123456', '2022-04-13 07:50:12', '2022-04-13 07:50:12'),
(49, 57, 12, 'Singapore', 'Punjab', '4235315', '2022-04-14 08:08:35', '2022-04-14 08:08:35'),
(50, 45, 13, 'Singapore', 'XYZ', '123456', '2022-05-05 01:12:58', '2022-05-05 01:12:58'),
(51, 45, 14, 'Singapore', 'XYZ', '123456', '2022-05-05 07:59:48', '2022-05-05 07:59:48'),
(52, 45, 15, 'Singapore', 'XYZ', '123456', '2022-05-05 08:37:02', '2022-05-05 08:37:02'),
(53, 46, 1, 'Singapore', 'XYZ', '123456', '2022-05-10 12:36:02', '2022-05-10 12:36:02'),
(54, 48, 2, 'Singapore', 'XYZ', '12345', '2022-05-10 12:36:58', '2022-05-10 12:36:58'),
(55, 50, 3, 'Singapore', 'XYZ', '123456', '2022-05-10 12:38:04', '2022-05-10 12:38:04'),
(56, 51, 4, 'Singapore', 'XYZ', '23214', '2022-05-10 12:40:17', '2022-05-10 12:40:17'),
(57, 57, 5, 'Singapore', 'Punjab', '4235315', '2022-05-10 12:45:25', '2022-05-10 12:45:25'),
(58, 58, 6, 'Singapore', 'Tamilnadu', '638455', '2022-05-13 13:34:50', '2022-05-13 13:34:50'),
(59, 58, 7, 'Singapore', 'Tamilnadu', '638455', '2022-05-13 17:01:27', '2022-05-13 17:01:27'),
(60, 58, 8, 'Singapore', 'Tamilnadu', '638455', '2022-05-14 09:39:54', '2022-05-14 09:39:54'),
(61, 46, 1, 'Singapore', 'XYZ', '123456', '2022-05-14 12:41:06', '2022-05-14 12:41:06'),
(62, 48, 2, 'Singapore', 'XYZ', '12345', '2022-05-14 12:42:56', '2022-05-14 12:42:56'),
(63, 48, 1, 'Singapore', 'XYZ', '12345', '2022-05-14 12:51:55', '2022-05-14 12:51:55'),
(64, 46, 2, 'Singapore', 'XYZ', '123456', '2022-05-14 12:52:47', '2022-05-14 12:52:47'),
(65, 46, 1, 'Singapore', 'XYZ', '123456', '2022-05-14 12:56:26', '2022-05-14 12:56:26'),
(66, 48, 2, 'Singapore', 'XYZ', '12345', '2022-05-14 12:57:49', '2022-05-14 12:57:49'),
(67, 46, 3, 'Singapore', 'XYZ', '123456', '2022-05-16 09:24:24', '2022-05-16 09:24:24'),
(68, 48, 4, 'Singapore', 'XYZ', '12345', '2022-05-16 09:25:34', '2022-05-16 09:25:34'),
(69, 46, 5, 'Singapore', 'XYZ', '123456', '2022-05-16 09:38:53', '2022-05-16 09:38:53'),
(70, 48, 6, 'Singapore', 'XYZ', '12345', '2022-05-16 09:39:45', '2022-05-16 09:39:45'),
(71, 48, 1, 'Singapore', 'XYZ', '12345', '2022-05-16 09:44:17', '2022-05-16 09:44:17'),
(72, 46, 2, 'Singapore', 'XYZ', '123456', '2022-05-16 09:45:18', '2022-05-16 09:45:18'),
(73, 46, 1, 'Singapore', 'XYZ', '123456', '2022-05-16 10:34:53', '2022-05-16 10:34:53'),
(74, 48, 2, 'Singapore', 'XYZ', '12345', '2022-05-16 10:36:01', '2022-05-16 10:36:01'),
(75, 51, 3, 'Singapore', 'XYZ', '23214', '2022-05-16 10:37:10', '2022-05-16 10:37:10'),
(76, 50, 4, 'Singapore', 'XYZ', '123456', '2022-05-16 10:38:01', '2022-05-16 10:38:01'),
(77, 46, 5, 'Singapore', 'XYZ', '123456', '2022-05-17 10:05:39', '2022-05-17 10:05:39'),
(78, 48, 6, 'Singapore', 'XYZ', '12345', '2022-05-17 10:06:36', '2022-05-17 10:06:36'),
(79, 50, 7, 'Singapore', 'XYZ', '123456', '2022-05-17 10:08:01', '2022-05-17 10:08:01'),
(80, 51, 8, 'Singapore', 'XYZ', '23214', '2022-05-17 10:08:52', '2022-05-17 10:08:52'),
(81, 46, 9, 'Singapore', 'XYZ', '123456', '2022-05-17 10:27:05', '2022-05-17 10:27:05'),
(82, 48, 10, 'Singapore', 'XYZ', '12345', '2022-05-17 10:28:06', '2022-05-17 10:28:06'),
(83, 50, 11, 'Singapore', 'XYZ', '123456', '2022-05-17 10:29:10', '2022-05-17 10:29:10'),
(84, 51, 12, 'Singapore', 'XYZ', '23214', '2022-05-17 10:30:03', '2022-05-17 10:30:03'),
(85, 46, 1, 'Singapore', 'XYZ', '123456', '2022-05-17 10:47:26', '2022-05-17 10:47:26'),
(86, 48, 2, 'Singapore', 'XYZ', '12345', '2022-05-17 10:48:17', '2022-05-17 10:48:17'),
(87, 51, 3, 'Singapore', 'XYZ', '23214', '2022-05-17 10:49:05', '2022-05-17 10:49:05'),
(88, 50, 4, 'Singapore', 'XYZ', '123456', '2022-05-17 10:49:54', '2022-05-17 10:49:54'),
(89, 46, 5, 'Singapore', 'XYZ', '123456', '2022-05-19 14:19:36', '2022-05-19 14:19:36'),
(90, 48, 6, 'Singapore', 'XYZ', '12345', '2022-05-19 14:20:33', '2022-05-19 14:20:33'),
(91, 51, 7, 'Singapore', 'XYZ', '23214', '2022-05-19 14:21:22', '2022-05-19 14:21:22'),
(92, 50, 8, 'Singapore', 'XYZ', '123456', '2022-05-19 14:22:07', '2022-05-19 14:22:07');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shipping_charges`
--

CREATE TABLE `shipping_charges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `referal_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `name`, `referal_code`, `email`, `password`, `remember_token`, `email_verified_at`, `created_at`, `updated_at`) VALUES
(1, 'MQU0000001', 'Admin', 'MQRF0000001', 'admin@gmail.com', '$2y$10$KrSVdZ.z/4mrP.GX7u8HwercyTmrC2bI2xWiwGGNmnnETCpDkyyfK', NULL, NULL, '2022-02-13 05:00:45', '2022-02-13 05:00:45'),
(23, 'MQU0000002', 'Abhijeet Kumar', 'MQRF0000002', 'test9@gmail.com', '$2y$10$KAnDRO5mDkTu8IldpixIfOnwXbaXW6gKGNqPRAUI7Ze.OJPG56/ZS', NULL, NULL, '2022-02-17 05:20:45', '2022-02-17 05:20:45'),
(45, 'MQU0000003', 'Amrit', 'MQRF0000003', 'amrit123@yopmail.com', '$2y$10$3D2EYiQ4DHo8umgWmcXcEe5q0.gzgVWPVxpOxvOFrkf.byiv5V1tS', NULL, NULL, '2022-03-09 02:09:13', '2022-03-09 02:09:13'),
(46, 'MQU0000004', 'Sarb', 'MQRF0000004', 'sarb123@yopmail.com', '$2y$10$Jt0z8m.SGgT61YMHhFWGwumJvnzzVfq9O1mzLlO.b6HVQ7pz5UPOi', NULL, NULL, '2022-03-09 02:46:28', '2022-03-09 02:46:28'),
(48, 'MQU0000005', 'Raman', 'MQRF0000005', 'raman123@yopmail.com', '$2y$10$f0BCIokC/Bh/4x2aOJ7rgueFkOCyW1pTjMregoiTP6c01q/HaibIO', NULL, NULL, '2022-03-09 02:52:30', '2022-03-09 02:52:30'),
(50, 'MQU0000006', 'Dilpreet', 'MQRF0000006', 'dilpreet123@yopmail.com', '$2y$10$BCLb1GPHYyvXVMFHCIUqI.Elw5.NywjmKaCJ4x/J9Nxa6E0/tJfIm', NULL, NULL, '2022-03-10 06:48:07', '2022-03-10 06:48:07'),
(51, 'MQU0000007', 'Mehak', 'MQRF0000007', 'Mehak123@yopmail.com', '$2y$10$raWcTf84RXvAqahW.EOcbuAMHT4vkw6rjOn8L99dYY2UCCI78/oAm', NULL, NULL, '2022-03-26 00:01:51', '2022-03-26 00:01:51'),
(57, 'MQU0000008', 'Supdipta', 'MQRF0000003', 'supdita@yopmail.com', '$2y$10$3D2EYiQ4DHo8umgWmcXcEe5q0.gzgVWPVxpOxvOFrkf.byiv5V1tS', NULL, NULL, '2022-04-14 08:04:57', '2022-04-14 08:04:57'),
(58, 'MQU0000009', 'testnew', 'MQRF0000001', 'testnew@gmail.com', '$2y$10$G9JjlHwvSJMGgHHNgCXkyOmVbMDV22/o0TDJDp5JzE0eqwgzdYq0y', NULL, NULL, '2022-05-13 13:33:10', '2022-05-13 13:33:10');

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(20,2) NOT NULL,
  `screen_shot` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `user_id`, `amount`, `screen_shot`, `payment_type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'MQU0000003', 10.00, NULL, 'MCT Pay', 0, '2021-10-26 22:06:47', '2021-10-26 22:06:47'),
(2, 'MQU0000003', 10.00, 'wallet/paynow/1635260889_10.jpg', 'Pay Now', 0, '2021-10-26 22:08:09', '2021-10-26 22:08:09'),
(3, '2', 10.00, NULL, 'MCT Pay', 0, '2021-10-26 22:10:30', '2021-10-26 22:10:30'),
(4, '2', 10.00, NULL, 'MCT Pay', 0, '2021-10-26 19:50:52', '2021-10-26 19:50:52'),
(5, 'MQU0000003', 100.00, 'wallet/paynow/1635263470_100.png', 'Pay Now', 0, '2021-10-26 19:51:10', '2021-10-26 19:51:10'),
(6, '1', 100.00, NULL, 'MCT Pay', 1, '2021-10-29 14:16:53', '2021-10-29 14:18:11');

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `name`, `country`, `detail`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Debasis', 'Singapore', NULL, 1, '2021-10-20 19:32:10', '2021-10-20 19:32:10');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_loyalitypoints_details`
--

CREATE TABLE `withdraw_loyalitypoints_details` (
  `id` int(11) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `credit_points` decimal(10,0) NOT NULL,
  `status` int(11) NOT NULL,
  `redemption_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `withdraw_loyalitypoints_details`
--

INSERT INTO `withdraw_loyalitypoints_details` (`id`, `user_id`, `credit_points`, `status`, `redemption_date`) VALUES
(1, 'MQU0000003', 10, 1, '2022-04-08'),
(2, 'MQU0000003', 20, 1, '2022-04-09'),
(3, 'MQU0000003', 20, 1, '2022-04-09'),
(4, 'MQU0000003', 20, 1, '2022-05-05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billings`
--
ALTER TABLE `billings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `direct_sponsors`
--
ALTER TABLE `direct_sponsors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `forcasts`
--
ALTER TABLE `forcasts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leadership_bonus`
--
ALTER TABLE `leadership_bonus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loyality_points_wallet`
--
ALTER TABLE `loyality_points_wallet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matching_bonuses`
--
ALTER TABLE `matching_bonuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mlm_users`
--
ALTER TABLE `mlm_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_c_t_pays`
--
ALTER TABLE `m_c_t_pays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_l_m_withdraw`
--
ALTER TABLE `m_l_m_withdraw`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offline_pays`
--
ALTER TABLE `offline_pays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_statuses`
--
ALTER TABLE `order_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pv_points`
--
ALTER TABLE `pv_points`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `racks`
--
ALTER TABLE `racks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rankings`
--
ALTER TABLE `rankings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `redeem_credit_points`
--
ALTER TABLE `redeem_credit_points`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referals`
--
ALTER TABLE `referals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `returns`
--
ALTER TABLE `returns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `self_picks`
--
ALTER TABLE `self_picks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_charges`
--
ALTER TABLE `shipping_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_loyalitypoints_details`
--
ALTER TABLE `withdraw_loyalitypoints_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `billings`
--
ALTER TABLE `billings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `direct_sponsors`
--
ALTER TABLE `direct_sponsors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forcasts`
--
ALTER TABLE `forcasts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `leadership_bonus`
--
ALTER TABLE `leadership_bonus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `loyality_points_wallet`
--
ALTER TABLE `loyality_points_wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `matching_bonuses`
--
ALTER TABLE `matching_bonuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `mlm_users`
--
ALTER TABLE `mlm_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `m_c_t_pays`
--
ALTER TABLE `m_c_t_pays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `m_l_m_withdraw`
--
ALTER TABLE `m_l_m_withdraw`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `offline_pays`
--
ALTER TABLE `offline_pays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `order_statuses`
--
ALTER TABLE `order_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pv_points`
--
ALTER TABLE `pv_points`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `racks`
--
ALTER TABLE `racks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rankings`
--
ALTER TABLE `rankings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `redeem_credit_points`
--
ALTER TABLE `redeem_credit_points`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `referals`
--
ALTER TABLE `referals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `returns`
--
ALTER TABLE `returns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `self_picks`
--
ALTER TABLE `self_picks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shipping_charges`
--
ALTER TABLE `shipping_charges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdraw_loyalitypoints_details`
--
ALTER TABLE `withdraw_loyalitypoints_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

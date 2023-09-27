-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:8111
-- Generation Time: Sep 27, 2023 at 08:26 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `startlar`
--

-- --------------------------------------------------------

--
-- Table structure for table `assign_subcategories`
--

CREATE TABLE `assign_subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assign_subcategories`
--

INSERT INTO `assign_subcategories` (`id`, `category_id`, `subcategory_id`, `created_at`, `updated_at`) VALUES
(8, 7, 2, '2023-07-04 04:40:22', '2023-07-04 04:40:22'),
(9, 8, 1, '2023-07-04 04:40:47', '2023-07-04 04:40:47'),
(10, 8, 3, '2023-07-04 04:40:47', '2023-07-04 04:40:47'),
(11, 9, 8, '2023-07-04 04:48:06', '2023-07-04 04:48:06'),
(12, 9, 9, '2023-07-04 04:50:00', '2023-07-04 04:50:00'),
(13, 9, 10, '2023-07-04 04:52:35', '2023-07-04 04:52:35');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `created_at`, `updated_at`) VALUES
(7, 'vegetarian', '2023-07-04 02:05:30', '2023-07-04 02:05:54'),
(8, 'non-vegetarian', '2023-07-04 02:05:40', '2023-07-04 02:05:40'),
(9, 'see food', '2023-07-04 04:42:36', '2023-07-04 04:42:36');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Cname` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `Cname`, `status`, `created_at`, `updated_at`) VALUES
(1, 'btech', 1, NULL, NULL),
(2, 'MCA', 2, NULL, NULL),
(3, 'BCA', 0, NULL, NULL),
(4, 'MSC', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('M','F','O') COLLATE utf8mb4_unicode_ci NOT NULL,
  `adderss` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `confirm` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `gender`, `adderss`, `image`, `dob`, `password`, `confirm`, `created_at`, `updated_at`) VALUES
(16, 'sandeep sir', 'M', 'mohali', 'car.jpg', '2023-06-01', '332532dcfaa1cbf61e2a266bd723612c', '332532dcfaa1cbf61e2a266bd723612c', NULL, NULL),
(19, 'kamlesh', 'M', 'dundun', 'close.png', '2023-06-01', 'eb159b3990833f56d7f202fc12900aad', 'eb159b3990833f56d7f202fc12900aad', NULL, NULL),
(21, 'kamali', 'M', 'rampur', 'bg3.png', '2023-06-09', 'eb82b3716a1ea1953ceb29a879cae466', 'eb82b3716a1ea1953ceb29a879cae466', NULL, NULL),
(23, 'rajjo', 'F', 'panchkula', 'STAR.jpg', '2023-06-02', 'fccecbd3b1b5d5c0212273ab5ba49275', 'fccecbd3b1b5d5c0212273ab5ba49275', NULL, NULL),
(24, 'vikram', 'M', 'la;kuan', 'car.jpg', '2023-05-30', 'd861c87e8c8f9aa9d0ca5ca78514a2a4', 'd861c87e8c8f9aa9d0ca5ca78514a2a4', NULL, NULL),
(26, 'hemu', 'M', 'ksndiksd', '1686134808.png', '2023-06-30', 'vickyrawat', 'vickyrawat', NULL, NULL),
(27, 'raju', 'M', 'rajhisthan', '1686135161.jpg', '2023-06-28', 'rajurawat', 'rajurawat', NULL, '2023-06-07 05:22:41'),
(28, 'majnu', 'M', 'bhai', '1686136764.jpg', '2023-06-06', 'majnubhai', 'majnubhai', NULL, NULL),
(29, 'chota dom', 'M', 'chota area', 'moon.jpg', '2023-06-06', '25d127dc7efc7e3de5ec775ed185516e', '25d127dc7efc7e3de5ec775ed185516e', NULL, NULL),
(30, 'vicky', 'M', 'sitargANJ', '1688478999.gif', '2023-06-03', 'bf3d319dc6dc74ba35df93bc3b15d6a8', 'bf3d319dc6dc74ba35df93bc3b15d6a8', NULL, '2023-07-04 08:26:39');

-- --------------------------------------------------------

--
-- Table structure for table `dummies`
--

CREATE TABLE `dummies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `member_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dummies`
--

INSERT INTO `dummies` (`id`, `name`, `member_id`, `created_at`, `updated_at`) VALUES
(1, 'Ayush', 5, '2023-06-13 02:43:41', '2023-06-13 04:42:03'),
(2, 'kamal', 3, '2023-06-13 03:00:57', '2023-06-13 03:00:57'),
(3, 'Rudrakshi', 4, '2023-06-13 03:01:21', '2023-06-13 03:01:21'),
(4, 'Ayush', 5, '2023-06-13 03:01:39', '2023-06-13 03:01:39'),
(5, 'Ayush', 5, '2023-06-13 04:30:23', '2023-06-13 04:30:23');

-- --------------------------------------------------------

--
-- Table structure for table `dummys`
--

CREATE TABLE `dummys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `member_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_06_02_071938_create_customers_table', 2),
(8, '2023_06_02_141405_create_posts_table', 3),
(9, '2023_06_06_054508_create_user_addressses_table', 3),
(11, '2023_06_06_115622_create_courses_table', 4),
(13, '2023_06_06_120430_create_user_courses_table', 5),
(16, '2023_06_13_075151_create_dummys_table', 6),
(17, '2023_06_13_081218_create_dummies_table', 7),
(20, '2023_06_21_064630_create_modules_table', 8),
(21, '2023_06_21_070845_create_roles_table', 9),
(22, '2023_06_21_082930_create__role_module_table', 10),
(23, '2023_06_22_134625_create_roles_table', 11),
(24, '2023_06_23_060404_create_roles_table', 12),
(25, '2023_06_23_063519_create_roles_table', 13),
(26, '2023_06_23_065656_create_roles_table', 14),
(27, '2023_06_23_065749_create_role_managers_table', 14),
(28, '2023_06_23_070402_create_role_managers_table', 15),
(29, '2023_06_23_100951_create_role_assigns_table', 16),
(30, '2023_06_28_134955_create_permissions_table', 17),
(31, '2023_06_29_063631_create_role_managers_table', 18),
(32, '2023_06_29_064653_create_role_managers_table', 19),
(33, '2023_06_29_071604_create_permissions_table', 20),
(34, '2023_06_29_071823_create_role_managers_table', 21),
(35, '2023_06_29_072335_create_role_managers_table', 22),
(36, '2023_07_03_110817_create_categories_table', 23),
(37, '2023_07_03_130014_create_sub_categories_table', 24),
(38, '2023_07_04_070242_create_products_table', 25),
(39, '2023_07_04_073301_create_subcategories_table', 26),
(40, '2023_07_04_074014_assign_subcategory', 27),
(41, '2023_07_04_075559_create_assign_subcategories_table', 28),
(42, '2023_07_04_131406_create_products_table', 29),
(43, '2023_07_05_100706_create_products_table', 30),
(44, '2023_07_05_101002_create_products_table', 31),
(45, '2023_07_05_101920_create_products_table', 32),
(46, '2023_07_05_112833_create_products_table', 33);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `name`, `url`, `status`, `created_at`, `updated_at`) VALUES
(1, 'USERS', '/user', 1, NULL, NULL),
(2, 'ROLE', '/role', 1, NULL, NULL),
(3, 'CATEGORY', '/Category', 1, NULL, NULL),
(4, 'SUBCATEGORY', '/Subcategory', 1, NULL, NULL),
(5, 'PRODUCT', '/Product', 1, NULL, NULL),
(6, 'ASSIGN ROLE', '/Assignrole', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'create', NULL, NULL),
(2, 'read', NULL, NULL),
(3, 'update', NULL, NULL),
(4, 'delete', NULL, NULL);

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `final` double(8,2) NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `price`, `discount`, `final`, `img`, `status`, `category_id`, `subcategory_id`, `created_at`, `updated_at`) VALUES
(1, 'tofu lover', 'i will kill animals for it.', 987, 2, 967.26, 'GIT.png', 'active', 7, 2, '2023-07-05 06:08:48', '2023-07-05 08:01:34');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(4, 'senior', '2023-06-23 01:49:43', '2023-06-23 01:49:43'),
(5, 'junior', '2023-06-23 01:49:53', '2023-06-23 01:49:53'),
(6, 'first_role', '2023-06-23 05:29:48', '2023-06-23 05:29:48'),
(7, 'php dev', '2023-06-27 05:26:04', '2023-06-27 05:26:04'),
(8, 'chota dom', '2023-06-29 01:22:24', '2023-06-29 01:22:24'),
(9, 'munna', '2023-06-29 07:43:04', '2023-06-29 07:43:04'),
(11, 'kanta bai', '2023-06-30 04:25:14', '2023-06-30 04:25:14');

-- --------------------------------------------------------

--
-- Table structure for table `role_assigns`
--

CREATE TABLE `role_assigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_assigns`
--

INSERT INTO `role_assigns` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(27, 8, 7, '2023-06-29 05:29:54', '2023-06-29 05:29:54'),
(36, 22, 4, '2023-07-03 02:22:18', '2023-07-03 02:22:18'),
(37, 22, 5, '2023-07-03 02:22:18', '2023-07-03 02:22:18'),
(38, 9, 4, '2023-07-03 04:37:18', '2023-07-03 04:37:18'),
(39, 9, 5, '2023-07-03 04:37:18', '2023-07-03 04:37:18'),
(40, 21, 6, '2023-07-03 04:41:41', '2023-07-03 04:41:41');

-- --------------------------------------------------------

--
-- Table structure for table `role_managers`
--

CREATE TABLE `role_managers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `module_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_managers`
--

INSERT INTO `role_managers` (`id`, `user_id`, `role_id`, `module_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(74, 8, 9, 1, 1, '2023-06-30 03:02:06', '2023-06-30 03:02:06'),
(75, 8, 9, 1, 2, '2023-06-30 03:02:06', '2023-06-30 03:02:06'),
(76, 8, 9, 1, 3, '2023-06-30 03:02:06', '2023-06-30 03:02:06'),
(77, 8, 9, 1, 4, '2023-06-30 03:02:06', '2023-06-30 03:02:06'),
(78, 8, 9, 2, 1, '2023-06-30 03:02:06', '2023-06-30 03:02:06'),
(79, 8, 9, 2, 2, '2023-06-30 03:02:06', '2023-06-30 03:02:06'),
(80, 8, 9, 3, 2, '2023-06-30 03:02:06', '2023-06-30 03:02:06'),
(86, 8, 11, 1, 1, '2023-06-30 04:25:41', '2023-06-30 04:25:41'),
(87, 8, 11, 1, 2, '2023-06-30 04:25:41', '2023-06-30 04:25:41'),
(88, 8, 11, 3, 1, '2023-06-30 04:25:41', '2023-06-30 04:25:41'),
(89, 8, 11, 3, 2, '2023-06-30 04:25:41', '2023-06-30 04:25:41'),
(90, 8, 11, 3, 3, '2023-06-30 04:25:41', '2023-06-30 04:25:41'),
(91, 8, 11, 4, 2, '2023-06-30 04:25:41', '2023-06-30 04:25:41'),
(92, 8, 11, 4, 3, '2023-06-30 04:25:41', '2023-06-30 04:25:41'),
(135, 8, 5, 6, 1, '2023-06-30 07:07:57', '2023-06-30 07:07:57'),
(136, 8, 5, 6, 2, '2023-06-30 07:07:57', '2023-06-30 07:07:57'),
(167, 8, 4, 1, 2, '2023-07-03 02:22:37', '2023-07-03 02:22:37'),
(168, 8, 4, 1, 4, '2023-07-03 02:22:37', '2023-07-03 02:22:37'),
(176, 8, 6, 2, 2, '2023-07-03 04:55:14', '2023-07-03 04:55:14');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'piyush', '2023-07-04 02:32:13', '2023-07-04 02:32:13'),
(2, 'vicky', '2023-07-04 02:32:22', '2023-07-04 02:32:22'),
(3, 'rajat', '2023-07-04 02:42:34', '2023-07-04 02:42:34'),
(4, 'neeraj', '2023-07-04 02:42:48', '2023-07-04 02:42:48'),
(8, 'nigga', '2023-07-04 04:48:06', '2023-07-04 04:48:06'),
(9, 'puneet', '2023-07-04 04:50:00', '2023-07-04 04:50:00'),
(10, 'akshat', '2023-07-04 04:52:35', '2023-07-04 04:52:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isadmin` bigint(20) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `isadmin`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(8, 'vicky', 'vickyrawatji855@gmail.com', 1, NULL, '$2y$10$2f1nbwCczzMGmnEik./mjeJ8POdwtmRkH2O8JXHEUnhs7Kuz2/exe', NULL, '2023-06-19 04:04:07', '2023-06-19 04:04:07'),
(9, 'kamal', 'kamal@123', 0, NULL, '$2y$10$JLSWyH7nuCckFLMdbP/Os.uJ8UTPRHH4vDcqEelgJNghmNybE9IdW', NULL, '2023-06-22 04:48:44', '2023-06-22 04:48:44'),
(10, 'neeraj', 'neemraj@123', 1, NULL, '$2y$10$IkJTHw3OMYYwZCI8RlYKO.WGGXTFgZd4Qi.MPmxwuBF8ojfU/hwya', NULL, '2023-06-22 04:50:38', '2023-06-22 04:50:38'),
(20, 'nitin', 'nitin@1234', 0, NULL, '$2y$10$B5ewgYOcqaeNr8WYXYN6VO7ZCVI5h2sYICTYlJvrrALIoOWxqB4JG', NULL, '2023-06-27 05:02:53', '2023-06-27 05:02:53'),
(21, 'manoj', 'manoj@12346', 0, NULL, '$2y$10$I5FQr3niMrnuiEUhfAvdb.yV8VegdWVulw9a7qYjchII3/zbasMT2', NULL, '2023-06-27 05:03:30', '2023-06-27 05:03:30'),
(22, 'kapil', 'kapil@paji12', 0, NULL, '$2y$10$lN3qlHnoWmVVqNinPPB4Te.22EWuEpMxFyai7P9EiciJ3GUKH9wYa', NULL, '2023-06-27 05:24:00', '2023-06-27 05:24:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_addressses`
--

CREATE TABLE `user_addressses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `City` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_addressses`
--

INSERT INTO `user_addressses` (`id`, `user_id`, `City`, `state`, `country`, `created_at`, `updated_at`) VALUES
(7, 16, 'chd', 'punjab', 'india', '2023-06-06 06:05:23', '2023-06-06 06:05:23'),
(10, 19, 'bhopal', 'gujrat', 'india', '2023-06-06 08:38:04', '2023-06-06 08:38:04'),
(12, 21, 'haldwani', 'uk', 'ind', '2023-06-06 23:57:25', '2023-06-06 23:57:25'),
(14, 23, 'mohali', 'punjab', 'india', '2023-06-07 00:15:19', '2023-06-07 00:15:19'),
(15, 24, 'hld', 'uk', 'india', '2023-06-07 00:20:07', '2023-06-07 00:20:07'),
(17, 26, 'kal', 'uk', 'india', '2023-06-07 00:29:52', '2023-06-07 00:29:52'),
(18, 27, 'hld', 'raj', 'ind', '2023-06-07 05:19:42', '2023-06-07 05:19:42'),
(19, 28, 'hld', 'uk', 'india', '2023-06-07 05:47:40', '2023-06-07 05:47:40'),
(20, 29, 'delhi', 'up', 'ind', '2023-06-08 06:55:59', '2023-06-08 06:55:59'),
(21, 30, 'HLD', 'UK', 'INDIA', '2023-06-19 04:46:00', '2023-06-19 04:46:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_courses`
--

CREATE TABLE `user_courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_courses`
--

INSERT INTO `user_courses` (`id`, `user_id`, `course_id`, `created_at`, `updated_at`) VALUES
(9, 26, 2, '2023-06-07 05:16:48', '2023-06-07 05:16:48'),
(14, 27, 4, '2023-06-07 05:22:41', '2023-06-07 05:22:41'),
(21, 28, 1, '2023-06-07 05:54:48', '2023-06-07 05:54:48'),
(22, 28, 2, '2023-06-07 05:54:48', '2023-06-07 05:54:48'),
(23, 28, 3, '2023-06-07 05:54:48', '2023-06-07 05:54:48'),
(24, 28, 4, '2023-06-07 05:54:48', '2023-06-07 05:54:48'),
(26, 29, 1, '2023-06-08 06:55:59', '2023-06-08 06:55:59'),
(28, 30, 2, '2023-07-04 08:26:39', '2023-07-04 08:26:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assign_subcategories`
--
ALTER TABLE `assign_subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assign_subcategories_category_id_foreign` (`category_id`),
  ADD KEY `assign_subcategories_subcategory_id_foreign` (`subcategory_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dummies`
--
ALTER TABLE `dummies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dummys`
--
ALTER TABLE `dummys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_subcategory_id_foreign` (`subcategory_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_assigns`
--
ALTER TABLE `role_assigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_assigns_user_id_foreign` (`user_id`),
  ADD KEY `role_assigns_role_id_foreign` (`role_id`);

--
-- Indexes for table `role_managers`
--
ALTER TABLE `role_managers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_managers_user_id_foreign` (`user_id`),
  ADD KEY `role_managers_role_id_foreign` (`role_id`),
  ADD KEY `role_managers_module_id_foreign` (`module_id`),
  ADD KEY `role_managers_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_addressses`
--
ALTER TABLE `user_addressses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_addressses_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_courses`
--
ALTER TABLE `user_courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_courses_user_id_foreign` (`user_id`),
  ADD KEY `user_courses_course_id_foreign` (`course_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assign_subcategories`
--
ALTER TABLE `assign_subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `dummies`
--
ALTER TABLE `dummies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dummys`
--
ALTER TABLE `dummys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `role_assigns`
--
ALTER TABLE `role_assigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `role_managers`
--
ALTER TABLE `role_managers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `user_addressses`
--
ALTER TABLE `user_addressses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user_courses`
--
ALTER TABLE `user_courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assign_subcategories`
--
ALTER TABLE `assign_subcategories`
  ADD CONSTRAINT `assign_subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assign_subcategories_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_assigns`
--
ALTER TABLE `role_assigns`
  ADD CONSTRAINT `role_assigns_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_assigns_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_managers`
--
ALTER TABLE `role_managers`
  ADD CONSTRAINT `role_managers_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_managers_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_managers_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_managers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_addressses`
--
ALTER TABLE `user_addressses`
  ADD CONSTRAINT `user_addressses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_courses`
--
ALTER TABLE `user_courses`
  ADD CONSTRAINT `user_courses_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_courses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

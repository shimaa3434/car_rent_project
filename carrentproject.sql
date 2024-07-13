-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2024 at 04:53 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrentproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('902ba3cda1883801594b6e1b452790cc53948fda', 'i:1;', 1720813163),
('902ba3cda1883801594b6e1b452790cc53948fda:timer', 'i:1720813163;', 1720813163),
('bwmn900@gmail.com|127.0.0.1', 'i:1;', 1720799315),
('bwmn900@gmail.com|127.0.0.1:timer', 'i:1720799315;', 1720799315),
('c1dfd96eea8cc2b62785275bca38ac261256e278', 'i:1;', 1720811526),
('c1dfd96eea8cc2b62785275bca38ac261256e278:timer', 'i:1720811526;', 1720811526),
('fe5dbbcea5ce7e2988b8c69bcfdfde8904aabc1f', 'i:1;', 1720882161),
('fe5dbbcea5ce7e2988b8c69bcfdfde8904aabc1f:timer', 'i:1720882161;', 1720882161);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `luggage` int(11) DEFAULT NULL,
  `door` int(11) DEFAULT 4,
  `passengers` int(11) DEFAULT NULL,
  `price` decimal(8,2) DEFAULT 0.00,
  `active` enum('yes','no') DEFAULT 'no',
  `image` blob DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `title`, `content`, `luggage`, `door`, `passengers`, `price`, `active`, `image`, `category_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'test 11', 'test 11Contents Lorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati, laboriosam.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati, laboriosam.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati, laboriosam.', 2, 4, 2, 1234.00, 'no', 0x313732303639383038322e6a7067, 3, 5, '2024-07-11 08:41:23', '2024-07-11 12:59:07'),
(2, 'test 22', 'test 22Contents Lorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati, laboriosam.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati, laboriosam.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati, laboriosam.', 2, 4, 2, 1234.00, 'no', 0x313732303639383136382e6a7067, 5, 5, '2024-07-11 08:42:48', '2024-07-11 12:59:33'),
(4, 'test car 333 update', 'Contents test car 333 Lorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati, laboriosam.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati, laboriosam.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati, laboriosam.', 3, 4, 2, 123.00, 'no', 0x313732303730323632332e6a7067, 5, 5, '2024-07-11 09:57:04', '2024-07-11 12:59:59'),
(5, 'test car 44', 'Contents test car 44 Lorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati, laboriosam.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati, laboriosam.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati, laboriosam.', 2, 3, 3, 1234.00, 'no', 0x313732303730323834362e6a7067, 3, 5, '2024-07-11 10:00:46', '2024-07-11 13:00:26'),
(6, 'car 123', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati, laboriosam.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati, laboriosam.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati, laboriosam.', 2, 4, 2, 12.00, 'no', 0x313732303731333338312e6a7067, 6, 5, '2024-07-11 12:56:21', '2024-07-11 12:56:21'),
(7, 'car 1234', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati, laboriosam.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati, laboriosam.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati, laboriosam.', 3, 4, 5, 12.00, 'no', 0x313732303731333434362e6a7067, 5, 5, '2024-07-11 12:57:26', '2024-07-11 12:57:26'),
(8, 'qwsazx', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati, laboriosam.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati, laboriosam.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati, laboriosam. Contents', 2, 4, 12, 125.00, 'no', 0x313732303731333530372e6a7067, 3, 5, '2024-07-11 12:58:27', '2024-07-11 12:58:27');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(3, 'CAT3 up', '2024-07-07 16:45:26', '2024-07-12 16:18:23'),
(5, 'cat 5', '2024-07-08 14:09:11', '2024-07-08 14:09:11'),
(6, 'cat 6', '2024-07-11 12:03:04', '2024-07-11 12:03:04');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `massages`
--

CREATE TABLE `massages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `is_read` enum('yes','no') DEFAULT 'no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `massages`
--

INSERT INTO `massages` (`id`, `fname`, `lname`, `email`, `content`, `is_read`, `created_at`, `updated_at`) VALUES
(1, 'ahmed', 'shaban', 'qq@qq.com', 'message one', 'no', '2024-07-11 11:47:20', '2024-07-11 11:47:20'),
(2, 'azx', 'sxc', 'azx@sxc.com', 'السلام عليكم ورحمة الله وبركاته', 'yes', '2024-07-12 13:18:33', '2024-07-12 13:19:35'),
(6, 'edc', 'rfv', 'edc@rfv.com', 'test', 'no', '2024-07-12 15:06:40', '2024-07-12 15:06:40'),
(8, 'asd', 'asd', 'asd@asd.com', 'asd test m', 'yes', '2024-07-12 15:21:07', '2024-07-12 15:31:14'),
(10, 'test 1', 'test 2', 'test@test.com', 'تجربة جزء الاتصال وارسال الايميل', 'no', '2024-07-13 11:49:59', '2024-07-13 11:49:59');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_07_07_134305_add_username_to_user_table', 1),
(5, '2024_07_07_135641_add_is_admin_to_user_table', 1),
(6, '2024_07_07_161928_create_categories_table', 2),
(7, '2024_07_07_162257_create_massages_table', 2),
(8, '2024_07_07_162326_create_testimonials_table', 2),
(9, '2024_07_07_162621_create_blog_categories_table', 3),
(10, '2024_07_07_185724_blog', 4),
(11, '2024_07_07_185906_cars', 5),
(12, '2024_07_08_193058_update_testimonials_table', 6),
(13, '2024_07_08_200524_update_testimonials_table', 7),
(14, '2024_07_11_133421_add_active_user_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('HapcPPTh1mnCjewf9nvJU6n6lRV82uszeFG2TNWi', 7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:121.0) Gecko/20100101 Firefox/121.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiQk91MFBEZHZHOHdiR3JmdGpNUTB3TURPUzlqc2R1NnVRcHBOdmV5dCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjc7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2Rhc2hib2FyZCI7fX0=', 1720813221),
('XgYFWhL6OaKo1z1tOcIUhDDuUXpKcMl6YS2JBO5Z', 8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:121.0) Gecko/20100101 Firefox/121.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiVWw4MWRzWFJNbEc5blk3OHNKRXhnYjFCVVdXdDFjRUVXQWR0ek56bSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjM6InVybCI7YToxOntzOjg6ImludGVuZGVkIjtzOjMxOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZGFzaGJvYXJkIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6ODt9', 1720882339),
('ZaLOHteL1jetG7T5CRkx6xhIXJo4Rm34pa5lI38K', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:121.0) Gecko/20100101 Firefox/121.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSE5ySHZJRkdJVWdPRGE4QVJOTEdpb0tzdFRwRUxOaldXQ0VTVXVmdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1720808839),
('ZCYNq5HYxJf123mvsj1vs46aqZYRWBcDx9NlYYgy', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:121.0) Gecko/20100101 Firefox/121.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRElQaWJweTB1ZGNJR2p4T2oyUnNhVDI5eHlCNlV4czhTMUdNV3Q5VyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2Rhc2hib2FyZCI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMxOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZGFzaGJvYXJkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1720808838);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` blob DEFAULT NULL,
  `published` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `position`, `content`, `image`, `published`, `created_at`, `updated_at`) VALUES
(1, 'shimaa', 'web', 'Contents Lorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati, laboriosam. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati, laboriosam. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati, laboriosam.', 0x313732303830303736312e706e67, 0, '2024-07-08 15:20:29', '2024-07-12 13:12:41'),
(8, 'nbv', 'nbv', 'Contents nbv Lorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati, laboriosam. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati, laboriosam. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati, laboriosam.', 0x313732303830303739302e706e67, 0, '2024-07-12 13:04:56', '2024-07-12 13:13:10'),
(9, 'hhhh', 'hhhhh', 'Contents Contents Lorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati, laboriosam. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati, laboriosam. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati, laboriosam.', 0x313732303831333231332e706e67, 0, '2024-07-12 16:40:13', '2024-07-12 16:40:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `is_admin` enum('yes','no') DEFAULT 'no',
  `active` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `username`, `is_admin`, `active`) VALUES
(1, 'shimaa', 'ss@ss.com', NULL, '$2y$12$oWbfWR4hQQd/T05d9J59fe9jhHKKwI24nTS/Kov6JmZ8iEnuf424C', NULL, '2024-07-11 05:55:28', '2024-07-11 05:55:28', 'shimaa3434', 'no', 0),
(2, 'hhhh update', 'hh@hh.com', NULL, '$2y$12$HErA4Ia7CrSSLNHKDi4h7ub3GB2TMPhZi4OyIb9ng7Wq0x264Cnmq', NULL, '2024-07-11 10:52:58', '2024-07-11 11:24:29', 'hhhh22 up', 'no', 0),
(3, 'www', 'www33@ww.com', NULL, '$2y$12$07SSW/OLcjt63hA4QVDBkeTItuxilCwjnZGLudt4ItAGwhdKz4Tlu', NULL, '2024-07-11 10:53:44', '2024-07-11 10:53:44', 'www33', 'no', 0),
(4, 'qaz', 'qaz@qaz.com', NULL, '$2y$12$.TYliTTcNej.tWGSKU95N.XnMm9YHRIGwRKQFH/ZTJ2FC0gyCW/He', NULL, '2024-07-11 10:57:31', '2024-07-11 10:57:31', 'qaz111', 'no', 1),
(5, 'qazwsc', 'q@q.com', NULL, '$2y$12$MZXMxleEar5j4wFtYPmyEOZuYcJ5lW5t77zuv6yTEq0Y.oY3WSz3e', NULL, '2024-07-11 12:15:49', '2024-07-11 12:15:49', 'qazwsc', 'no', 0),
(6, 'wdv', 'wdv@wdv.com', '2024-07-12 16:11:06', '$2y$12$Js55qPagXnj5hfqOyqdYhuE3cuv7UO74NX9m0eCjFnSZE6v8bEy5u', NULL, '2024-07-12 16:08:49', '2024-07-12 16:11:06', 'wdv', 'no', 0),
(7, 'qaz', 'qaz@qaz2.com', '2024-07-12 16:13:14', '$2y$12$gcSXEAFzu4vPOAQV6QTxfOeaA504nORmyPxdiiwmaZ6TeuKbMqmPq', NULL, '2024-07-12 16:12:58', '2024-07-12 16:13:14', 'qaz', 'no', 0),
(8, 'plm', 'plm@plm.com', '2024-07-13 11:48:21', '$2y$12$jpL171AhR26iCX2OFL598edf7zYgxMuRFiO3WrgIxWkdLeXOLFJau', NULL, '2024-07-13 11:48:02', '2024-07-13 11:48:21', 'plm', 'no', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cars_category_id_foreign` (`category_id`),
  ADD KEY `cars_user_id_foreign` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `massages`
--
ALTER TABLE `massages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
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
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `massages`
--
ALTER TABLE `massages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cars`
--
ALTER TABLE `cars`
  ADD CONSTRAINT `cars_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `cars_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

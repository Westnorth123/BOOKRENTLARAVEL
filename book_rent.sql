-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2023 at 08:09 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book_rent`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'in stock',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `book_code`, `title`, `cover`, `slug`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'DB001', 'Laravel', 'Laravel-1672123984.jpg', 'Laravel', 'not available', NULL, '2022-12-28 20:18:32', NULL),
(3, 'DB002', 'PHP', 'PHP-1672125750.jpg', 'php', 'not available', '2022-12-18 20:58:22', '2022-12-27 00:22:30', NULL),
(7, 'DB003', 'HTML', 'HTML-1673580702.jpg', 'html', 'not available', '2022-12-18 21:04:30', '2023-01-12 20:31:42', NULL),
(8, 'DB005', 'Laravel', 'Laravel-1672124010.jpg', 'laravel', 'in stock', '2022-12-21 19:39:55', '2022-12-26 23:53:46', NULL),
(10, 'DB004', 'CSS For Noob', 'CSS For Noob-1672124041.jpg', 'css-for-noob', 'not available', '2022-12-21 19:47:34', '2023-01-12 21:30:08', NULL),
(11, 'DB007', 'CSS For Noob', 'CSS For Noob-1673580775.jpg', 'css-for-noob-2', 'not available', '2022-12-21 20:20:21', '2023-01-12 20:32:55', NULL),
(12, 'DB008-111', 'CSS For Noob1', 'CSS For Noob1-1673580792.jpg', 'css-for-noob-3', 'in stock', '2022-12-21 20:22:44', '2023-01-12 20:33:12', NULL),
(13, 'DB007-1', 'CSS For Pro', 'CSS For Pro-1673580803.jpg', 'css-for-pro', 'in stock', '2022-12-25 21:33:26', '2023-01-12 20:33:23', NULL),
(14, 'DB001-01', 'Laravel', 'Laravel-1672124479.jpg', 'laravel', 'not available', '2022-12-27 00:01:19', '2022-12-28 20:29:14', NULL),
(15, 'Db001-02', 'CSS For Noob', '', 'css-for-noob', 'not available', '2022-12-27 00:02:40', '2022-12-28 20:29:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `book_category`
--

CREATE TABLE `book_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_category`
--

INSERT INTO `book_category` (`id`, `book_id`, `category_id`, `created_at`, `updated_at`) VALUES
(3, 12, 2, NULL, NULL),
(4, 12, 5, NULL, NULL),
(5, 13, 1, NULL, NULL),
(6, 13, 4, NULL, NULL),
(7, 13, 5, NULL, NULL),
(8, 11, 1, NULL, NULL),
(9, 11, 3, NULL, NULL),
(10, 11, 5, NULL, NULL),
(11, 10, 3, NULL, NULL),
(12, 10, 6, NULL, NULL),
(16, 3, 2, NULL, NULL),
(17, 3, 9, NULL, NULL),
(18, 7, 5, NULL, NULL),
(19, 7, 12, NULL, NULL),
(20, 2, 3, NULL, NULL),
(21, 2, 6, NULL, NULL),
(22, 14, 9, NULL, NULL),
(23, 15, 8, NULL, NULL),
(24, 15, 9, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'comic', 'comic', NULL, '2022-12-18 19:40:53', NULL),
(2, 'novel', 'novel', NULL, NULL, NULL),
(3, 'fantasy', 'fantasy', NULL, NULL, NULL),
(4, 'fiction', 'fiction', NULL, NULL, NULL),
(5, 'mystery', 'mystery', NULL, NULL, NULL),
(6, 'horror', 'horror', NULL, NULL, NULL),
(7, 'romance', 'romance', NULL, NULL, NULL),
(8, 'western', 'western', NULL, NULL, NULL),
(9, 'Sciences', 'sciences', '2022-12-12 21:02:36', '2023-01-02 00:05:57', NULL),
(10, 'eastern', 'eastern', '2022-12-12 21:13:07', '2022-12-18 19:56:22', NULL),
(12, 'sport', 'sport', '2022-12-14 23:25:55', '2022-12-18 19:39:35', NULL),
(14, 'his fic', 'his-fic', '2022-12-15 00:00:08', '2023-01-12 21:20:51', NULL);

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_12_09_021544_create_roles_table', 1),
(6, '2022_12_09_022956_add_role_id_column_to_users_table', 2),
(10, '2022_12_09_024214_create_categories_table', 3),
(11, '2022_12_09_024308_create_books_table', 3),
(12, '2022_12_09_024549_create_book_category_table', 3),
(13, '2022_12_09_025351_create_rent_logs_table', 4),
(14, '2022_12_15_063148_add_slug_column_to_categories_table', 5),
(15, '2022_12_15_065043_change_slug_column_into_nullable_in_categories_table', 6),
(16, '2022_12_15_073350_add_soft_delete_column_to_categories_table', 7),
(17, '2022_12_19_030144_add_slug_cover_colimn_to_books_table', 8),
(18, '2022_12_26_025321_add_soft_delete_to_books_table', 9),
(19, '2022_12_26_074501_add_slug_to_users_table', 10),
(20, '2022_12_27_032556_add_softdelete_to_users_table', 11);

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rent_logs`
--

CREATE TABLE `rent_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `rent_date` date NOT NULL,
  `return_date` date NOT NULL,
  `actual_return_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rent_logs`
--

INSERT INTO `rent_logs` (`id`, `user_id`, `book_id`, `rent_date`, `return_date`, `actual_return_date`, `created_at`, `updated_at`) VALUES
(1, 8, 2, '2022-12-29', '2023-01-01', NULL, '2022-12-28 20:18:32', '2022-12-28 20:18:32'),
(2, 8, 14, '2022-12-29', '2023-01-01', '2023-01-01', '2022-12-28 20:29:14', '2022-12-28 20:29:14'),
(3, 8, 15, '2022-12-29', '2023-01-01', '2023-01-02', '2022-12-28 20:29:22', '2022-12-28 20:29:22'),
(4, 8, 7, '2022-12-29', '2023-01-01', '2023-01-13', '2022-12-28 20:34:36', '2023-01-12 20:26:50'),
(5, 3, 11, '2023-01-02', '2023-01-05', '2023-01-13', '2023-01-02 00:10:43', '2023-01-12 21:08:35'),
(6, 3, 10, '2023-01-13', '2023-01-16', NULL, '2023-01-12 21:30:08', '2023-01-12 21:30:08');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, NULL),
(2, 'client', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `slug`, `password`, `phone`, `address`, `status`, `created_at`, `updated_at`, `deleted_at`, `role_id`) VALUES
(1, 'admin', 'admin', '$2y$10$YELU0f09ZjCKyoNDd2ib6ert2M2HRCtIUL6y8LuTSk7twMVZowmXi', '089776', 'Rental Buku', 'active', NULL, NULL, NULL, 1),
(2, 'ben', 'ben', '$2y$10$YELU0f09ZjCKyoNDd2ib6ert2M2HRCtIUL6y8LuTSk7twMVZowmXi', '0897655', 'tes', 'active', NULL, '2022-12-27 21:38:25', NULL, 2),
(3, 'jenni', 'jenni', '$2y$10$YELU0f09ZjCKyoNDd2ib6ert2M2HRCtIUL6y8LuTSk7twMVZowmXi', NULL, 'tes2', 'active', NULL, '2022-12-26 21:11:55', NULL, 2),
(8, 'andy', 'andy', '$2y$10$Efw5/D.O1FcDabYN6XZHtu2wL2j4JBUil4NGO0SgFEY8U.sX04FBW', '123', 'tes', 'active', '2022-12-11 20:16:06', '2022-12-27 21:38:29', NULL, 2),
(9, 'billy', 'billy', '$2y$10$ENaNhRymrO8HA2mRuUnR4O3ratIplxS2P4s.uuOLzldnTKmRceiXW', '093746', 'tes', 'active', '2022-12-26 00:51:47', '2022-12-26 21:12:08', NULL, 2),
(12, 'bonni', 'bonni', '$2y$10$0BJfGOuMheuHch/4RGZPpOFKHxNCY9C7fMMNN3ShbyBI1.dl0rcNO', '123456', 'Solo', 'active', '2022-12-28 00:07:52', '2022-12-28 00:10:13', NULL, 2),
(13, 'joko', 'joko', '$2y$10$5RvcsiMyMLe1Gy7dvmWh8u4Dbdq0EJVEV5vUzc9QChJXlLq0cvBz2', '1234597', 'Solo', 'active', '2022-12-28 00:08:17', '2022-12-28 00:10:22', NULL, 2),
(14, 'Bono', 'bono', '$2y$10$hE/AmW0amqvIm10JfdXVfehNm3P9Qm2YGfvb7R4EQYZFzDiDSawMS', '087535', 'Solo', 'active', '2022-12-28 00:08:35', '2022-12-28 00:10:31', NULL, 2),
(15, 'Boni', 'koplo', '$2y$10$PjrkzVrKiVTOHo4pA3nweODIdrVm2IBNvDbbkl7BkYuaUVjgkSZaW', '0862252', 'tes1', 'inactive', '2023-01-02 00:23:05', '2023-01-02 00:23:05', NULL, 2),
(16, 'Rudi', 'rudi', '$2y$10$Wap4xAMrolAmQrSGSNW4v.UKoLQq1cX7aYKRKYRqkPMuojhUt9kXe', '12356', 'Tes', 'active', '2023-01-12 21:19:25', '2023-01-12 21:20:03', NULL, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_category`
--
ALTER TABLE `book_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_category_book_id_foreign` (`book_id`),
  ADD KEY `book_category_category_id_foreign` (`category_id`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `rent_logs`
--
ALTER TABLE `rent_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rent_logs_user_id_foreign` (`user_id`),
  ADD KEY `rent_logs_book_id_foreign` (`book_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `book_category`
--
ALTER TABLE `book_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rent_logs`
--
ALTER TABLE `rent_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book_category`
--
ALTER TABLE `book_category`
  ADD CONSTRAINT `book_category_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `book_category_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `rent_logs`
--
ALTER TABLE `rent_logs`
  ADD CONSTRAINT `rent_logs_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `rent_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

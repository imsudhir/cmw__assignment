-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2022 at 07:24 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cmw_assignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_infos`
--

CREATE TABLE `contact_infos` (
  `id` int(10) NOT NULL,
  `city` varchar(255) NOT NULL,
  `profile_image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_infos`
--

INSERT INTO `contact_infos` (`id`, `city`, `profile_image`, `created_at`, `updated_at`, `phone`, `user_id`) VALUES
(5, 'updated', '1648016060.jpg', '2022-03-23 00:44:20', '2022-03-23 00:44:20', '8820832089', 2),
(6, 'lucknow', '1648024443.jpg', '2022-03-23 03:04:03', '2022-03-23 03:04:03', '12349192190', 3),
(7, 'lkou', '1648025070.jpg', '2022-03-23 03:14:30', '2022-03-23 03:14:30', '965612213400', 4),
(8, 'lucknow updated', '1648025762.jpg', '2022-03-23 03:26:02', '2022-03-23 03:26:02', '9989098700', 5),
(9, 'delhi updated', '1648025986.jpg', '2022-03-23 03:29:46', '2022-03-23 03:29:46', '7878797979', 6),
(10, 'noidaupdated', '1648134629.jpg', '2022-03-24 09:40:29', '2022-03-24 09:40:29', '7878788770', 1),
(11, 'yuu', '1648146016.jpg', '2022-03-24 12:50:16', '2022-03-24 12:50:16', '7887878780', 7);

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
(1, '2014_10_12_000000_create_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$kWAw.gvfjm0MSi2YJDHtzuOjF4XaWEoRveH9aHj1Px7dQUHe3geGG', NULL, '2022-03-22 14:59:37', '2022-03-22 14:59:37'),
(2, 'sudhir kumar singh', 'sudhir@gmail.com', NULL, '$2y$10$5IAmwYamnX2Mm3kMEwy4qO0nznp0phiMUowGgt1CNIN4RyzLNWELe', NULL, '2022-03-22 23:36:46', '2022-03-22 23:36:46'),
(3, 'sudhir test', 'test@gmail.com', NULL, '$2y$10$cBs3dNvOQS3inSQKDBK/Zu60E3SWaTpVl0YHubCNRt9PJI1xazTWy', NULL, '2022-03-23 03:00:39', '2022-03-23 03:00:39'),
(4, 'sudhir testt', 'test2@gmail.com', NULL, '$2y$10$AbqhAhm710QRNp/o6pTGJ.8qVzidcQotSjL/8RKV7lwbwVQk0U2Ba', NULL, '2022-03-23 03:11:57', '2022-03-23 03:11:57'),
(5, 'sudhir testing', 'test01@gmail.com', NULL, '$2y$10$bRjt.yZjGdebl30Qeofp6ub9hmh43o6Jtk29BVfrxHveetlxVg.Le', NULL, '2022-03-23 03:24:30', '2022-03-23 03:24:30'),
(6, 'sudhir testt', 'test02@gmail.com', NULL, '$2y$10$UvcQ3KfMlZgpj1/lYFdbI.ZcmVV.UvILHot3DZyAQynFA1R7Fht.O', NULL, '2022-03-23 03:28:05', '2022-03-23 03:28:05'),
(7, 'ttt', '1@gmail.com', NULL, '$2y$10$5MAojN3k6m4MxM.av2Y5kucL8sSZyDQHso.Db7eyGnrdcVVwV8MM2', NULL, '2022-03-24 12:11:26', '2022-03-24 12:11:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_infos`
--
ALTER TABLE `contact_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- AUTO_INCREMENT for table `contact_infos`
--
ALTER TABLE `contact_infos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2025 at 04:36 AM
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
-- Database: `lms_angkatan_2`
--

-- --------------------------------------------------------

--
-- Table structure for table `instructors`
--

CREATE TABLE `instructors` (
  `id` int(11) NOT NULL,
  `id_role` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `education` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `deleted_at` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instructors`
--

INSERT INTO `instructors` (`id`, `id_role`, `name`, `gender`, `education`, `phone`, `email`, `password`, `address`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 6, 'Erssa', 1, 'S1', '09999999999', 'dummy@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'New York', '2025-06-03 10:02:43', '2025-06-12 00:35:14', 0),
(7, 6, 'Erssa Istary Yusuf', 1, 'S2', '0895331020847', 'dummy1@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Jakarta', '2025-06-04 04:48:57', '2025-06-12 00:36:13', 0),
(8, 4, 'Erssa Istary Yusuf', 1, '', '111111111111111', 'ersaistary31@gmail.com', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 'XXX', '2025-06-11 13:42:31', '2025-06-11 13:42:45', 1);

-- --------------------------------------------------------

--
-- Table structure for table `instructors_majors`
--

CREATE TABLE `instructors_majors` (
  `id` int(11) NOT NULL,
  `id_majors` int(11) NOT NULL,
  `id_instructors` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instructors_majors`
--

INSERT INTO `instructors_majors` (`id`, `id_majors`, `id_instructors`, `created_at`, `updated_at`) VALUES
(7, 11, 7, '2025-06-04 07:10:56', NULL),
(16, 20, 1, '2025-06-05 01:07:58', NULL),
(17, 17, 1, '2025-06-05 01:57:08', NULL),
(18, 7, 1, '2025-06-05 02:00:26', '2025-06-05 02:42:51');

-- --------------------------------------------------------

--
-- Table structure for table `majors`
--

CREATE TABLE `majors` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `deleted_at` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `majors`
--

INSERT INTO `majors` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Web Programming', '2025-06-03 09:53:52', '2025-06-03 09:55:43', 0),
(5, 'Mobile Programming', '2025-06-04 02:23:22', NULL, 0),
(6, 'Akuntansi Junior', '2025-06-04 02:24:06', NULL, 0),
(7, 'Digital Marketing', '2025-06-04 02:24:18', NULL, 0),
(8, 'Barista', '2025-06-04 02:24:23', NULL, 0),
(9, 'Bahasa Inggris', '2025-06-04 02:24:32', NULL, 0),
(10, 'Content Creator', '2025-06-04 02:24:43', NULL, 0),
(11, 'Desainer Grafis Madya', '2025-06-04 02:24:57', NULL, 0),
(12, 'Make Up Artist', '2025-06-04 02:25:05', NULL, 0),
(13, 'Data Management Staff', '2025-06-04 02:25:16', NULL, 0),
(14, 'Tata Boga', '2025-06-04 02:25:26', NULL, 0),
(15, 'Tata Busana', '2025-06-04 02:25:33', NULL, 0),
(16, 'Perhotelan', '2025-06-04 02:25:44', NULL, 0),
(17, 'Konstruksi Bangunan dengan CAD', '2025-06-04 02:25:50', NULL, 0),
(18, 'Teknisi Komputer', '2025-06-04 02:25:59', NULL, 0),
(19, 'Desainer Multimedia', '2025-06-04 02:26:12', NULL, 0),
(20, 'Bahasa Korea', '2025-06-04 02:26:24', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `parent_id` int(5) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `url` varchar(50) DEFAULT NULL,
  `urutan` int(5) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `parent_id`, `name`, `icon`, `url`, `urutan`, `created_at`, `updated_at`) VALUES
(1, 0, 'Dashboard', 'bi bi-grid', 'home.php', 1, '2025-06-11 04:21:50', NULL),
(2, 0, 'Master Data', 'bi bi-menu-button-wide', '', 2, '2025-06-11 04:28:32', NULL),
(3, 0, 'Modul', 'bi bi-book', '?page=moduls', 3, '2025-06-11 04:29:57', NULL),
(4, 2, 'Instructor', 'bi bi-circle', 'instructors', 1, '2025-06-11 04:31:01', '2025-06-11 12:36:31'),
(5, 2, 'Major', 'bi bi-circle', 'majors', 2, '2025-06-11 04:32:09', '2025-06-11 12:36:26'),
(6, 2, 'Menu', 'bi bi-circle', 'menus', 3, '2025-06-11 04:32:23', '2025-06-11 12:36:24'),
(7, 2, 'Role', 'bi bi-circle', 'roles', 4, '2025-06-11 04:32:43', '2025-06-11 12:36:21'),
(12, 2, 'User', 'bi bi-circle', 'user', 0, '2025-06-11 16:06:55', '2025-06-11 16:07:54');

-- --------------------------------------------------------

--
-- Table structure for table `menu_roles`
--

CREATE TABLE `menu_roles` (
  `id` int(11) NOT NULL,
  `id_roles` int(11) NOT NULL,
  `id_menus` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu_roles`
--

INSERT INTO `menu_roles` (`id`, `id_roles`, `id_menus`, `created_at`, `updated_at`) VALUES
(18, 1, 1, '2025-06-12 06:50:47', NULL),
(19, 1, 2, '2025-06-12 06:50:47', NULL),
(20, 1, 12, '2025-06-12 06:50:47', NULL),
(21, 1, 4, '2025-06-12 06:50:47', NULL),
(22, 1, 5, '2025-06-12 06:50:47', NULL),
(23, 1, 6, '2025-06-12 06:50:47', NULL),
(24, 1, 7, '2025-06-12 06:50:47', NULL),
(25, 1, 3, '2025-06-12 06:50:47', NULL),
(26, 5, 1, '2025-06-12 06:51:17', NULL),
(27, 5, 2, '2025-06-12 06:51:17', NULL),
(28, 5, 12, '2025-06-12 06:51:17', NULL),
(29, 5, 4, '2025-06-12 06:51:17', NULL),
(30, 5, 5, '2025-06-12 06:51:17', NULL),
(31, 5, 3, '2025-06-12 06:51:17', NULL),
(34, 7, 1, '2025-06-12 06:51:51', NULL),
(35, 7, 2, '2025-06-12 06:51:51', NULL),
(36, 7, 12, '2025-06-12 06:51:51', NULL),
(37, 7, 4, '2025-06-12 06:51:51', NULL),
(38, 7, 5, '2025-06-12 06:51:51', NULL),
(39, 7, 6, '2025-06-12 06:51:51', NULL),
(40, 7, 7, '2025-06-12 06:51:51', NULL),
(41, 7, 3, '2025-06-12 06:51:51', NULL),
(42, 8, 1, '2025-06-12 06:51:58', NULL),
(43, 8, 3, '2025-06-12 06:51:58', NULL),
(106, 6, 1, '2025-06-12 07:44:23', NULL),
(107, 6, 2, '2025-06-12 07:44:23', NULL),
(108, 6, 12, '2025-06-12 07:44:23', NULL),
(109, 6, 4, '2025-06-12 07:44:23', NULL),
(110, 6, 5, '2025-06-12 07:44:23', NULL),
(111, 6, 3, '2025-06-12 07:44:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `moduls`
--

CREATE TABLE `moduls` (
  `id` int(11) NOT NULL,
  `id_majors` int(11) NOT NULL,
  `id_instructors` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `moduls`
--

INSERT INTO `moduls` (`id`, `id_majors`, `id_instructors`, `name`, `created_at`, `updated_at`) VALUES
(9, 7, 1, 'dummy-1', '2025-06-10 04:06:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `moduls_details`
--

CREATE TABLE `moduls_details` (
  `id` int(11) NOT NULL,
  `id_moduls` int(11) NOT NULL,
  `file` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `moduls_details`
--

INSERT INTO `moduls_details` (`id`, `id_moduls`, `file`, `created_at`, `updated_at`) VALUES
(8, 9, '6847af59162fc-black.png', '2025-06-10 04:06:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `deleted_at` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', '2025-06-03 09:31:31', '2025-06-12 02:28:37', 0),
(5, 'PIC', '2025-06-04 02:14:40', NULL, 0),
(6, 'Instructors', '2025-06-04 02:14:46', NULL, 0),
(7, 'Administrator', '2025-06-04 02:23:03', NULL, 0),
(8, 'Students', '2025-06-11 13:03:50', NULL, 0),
(9, 'aaaaaaaa', '2025-06-12 02:24:18', '2025-06-12 02:24:23', 1);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `id_majors` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `education` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `deleted_at` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `id_majors`, `name`, `gender`, `education`, `phone`, `email`, `password`, `address`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 7, 'Student 1', 1, 'S1', '09999999999', 'student1@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'New York', '2025-06-03 10:02:43', '2025-06-10 08:26:25', 0),
(7, 1, 'Erssa Istary Yusuf', 1, 'S2', '0895331020847', 'student2@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Jakarta', '2025-06-04 04:48:57', '2025-06-10 07:40:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `deleted_at` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'eca', 'admin@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '2025-06-03 02:50:40', '2025-06-04 01:39:20', 0),
(12, 'aaaaaaaa', 'ersaistary31@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '2025-06-04 01:39:50', '2025-06-12 00:28:33', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `instructors`
--
ALTER TABLE `instructors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instructors_majors`
--
ALTER TABLE `instructors_majors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `majors`
--
ALTER TABLE `majors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_roles`
--
ALTER TABLE `menu_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `moduls`
--
ALTER TABLE `moduls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `moduls_details`
--
ALTER TABLE `moduls_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `instructors`
--
ALTER TABLE `instructors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `instructors_majors`
--
ALTER TABLE `instructors_majors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `majors`
--
ALTER TABLE `majors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `menu_roles`
--
ALTER TABLE `menu_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `moduls`
--
ALTER TABLE `moduls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `moduls_details`
--
ALTER TABLE `moduls_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

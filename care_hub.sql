-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2021 at 07:30 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `care_hub`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `doctor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fullname` varchar(250) DEFAULT NULL,
  `governorate_id` varchar(2) DEFAULT NULL,
  `city_id` int(20) DEFAULT NULL,
  `adress` varchar(250) DEFAULT NULL,
  `adress2` varchar(250) DEFAULT NULL,
  `request_id` int(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `phone2` varchar(250) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `gender` int(1) DEFAULT NULL,
  `type` int(1) DEFAULT NULL,
  `emergency` int(1) NOT NULL DEFAULT 0,
  `specialty_id` int(20) DEFAULT NULL,
  `service_id` int(20) DEFAULT NULL,
  `visit_time_day` date DEFAULT NULL,
  `visit_time_from` time DEFAULT NULL,
  `visit_time_to` time DEFAULT NULL,
  `arrive_on` time DEFAULT NULL,
  `doc_states` int(1) DEFAULT NULL,
  `user_states` int(1) DEFAULT NULL,
  `states` int(1) DEFAULT 1,
  `doc_rate` int(1) DEFAULT NULL,
  `user_rate` int(1) DEFAULT NULL,
  `admin_id` int(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `doctor_id`, `fullname`, `governorate_id`, `city_id`, `adress`, `adress2`, `request_id`, `phone`, `phone2`, `birth_date`, `gender`, `type`, `emergency`, `specialty_id`, `service_id`, `visit_time_day`, `visit_time_from`, `visit_time_to`, `arrive_on`, `doc_states`, `user_states`, `states`, `doc_rate`, `user_rate`, `admin_id`, `created_at`, `updated_at`) VALUES
(0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(7, 3, 5, 'qqqqqqq', '2', 2, 'qqwqwqwqqqqwqwq', 'cvcvcvccv', NULL, '01121426196', '1111111111111111111112222', NULL, NULL, NULL, 0, 1, 1, '2021-12-20', '15:29:00', '20:29:00', NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-12-20 17:11:33', '2021-12-20 17:32:30'),
(9, 2, 5, 'Mohamed Rafaat Mohamed Mohamed Kamel', '2', 2, 'شرخ 45', 'cvcvcvccv', NULL, '01121426196', '222222', NULL, NULL, NULL, 0, 1, 1, '2021-12-22', '21:19:00', '21:19:00', NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-12-20 17:18:04', '2021-12-20 17:18:04'),
(11, 2, 5, 'modd1 ra144444', '3', 110, 'qqwweerrtt', '11115qqwwqqw', 3, '01121426196', '000000007878787', '1996-10-01', 2, NULL, 0, 1, NULL, '2021-12-18', '15:42:00', '16:42:00', NULL, NULL, NULL, 1, NULL, NULL, 1, '2021-12-21 15:28:23', '2021-12-22 16:22:42'),
(12, 2, 5, 'modd1 ra1', '3', 110, 'qqwweerrtt', NULL, NULL, '01121426196', '00000000', '1996-10-01', 2, NULL, 0, 1, NULL, '2021-12-15', '22:16:00', '20:19:00', NULL, NULL, NULL, 1, NULL, NULL, 1, '2021-12-22 16:24:26', '2021-12-22 16:24:26'),
(14, 3, 5, 'aa bb', '2', 3, 'qqwqwqwqqqqwqwq', 'cvcvcvccv', NULL, '011214261961', NULL, '2015-02-25', 1, NULL, 0, 1, NULL, '2021-12-20', '22:26:00', '12:26:00', NULL, NULL, NULL, 1, NULL, NULL, 1, '2021-12-22 16:26:45', '2021-12-22 16:26:45'),
(15, 2, 5, 'modd1 ra1', '3', 110, 'qqwweerrtt', NULL, 7, '01121426196', '00000000', '1996-10-01', 2, NULL, 0, 1, NULL, '2021-12-28', '20:31:00', '20:31:00', NULL, NULL, NULL, 1, NULL, NULL, 1, '2021-12-22 16:27:18', '2021-12-22 16:27:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_id` (`city_id`),
  ADD KEY `doctor_id` (`doctor_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `service_id` (`service_id`),
  ADD KEY `specialty_id` (`specialty_id`),
  ADD KEY `request_id` (`request_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_ibfk_4` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`),
  ADD CONSTRAINT `orders_ibfk_5` FOREIGN KEY (`specialty_id`) REFERENCES `specialty` (`id`),
  ADD CONSTRAINT `orders_ibfk_6` FOREIGN KEY (`request_id`) REFERENCES `request` (`id`),
  ADD CONSTRAINT `orders_ibfk_7` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

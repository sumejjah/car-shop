-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 23, 2018 at 03:03 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `petworld_development`
--

-- --------------------------------------------------------

--
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
CREATE TABLE IF NOT EXISTS `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ar_internal_metadata`
--

INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`) VALUES
('environment', 'development', '2018-05-06 11:23:20', '2018-05-06 11:23:20');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
CREATE TABLE IF NOT EXISTS `carts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_carts_on_user_id` (`user_id`),
  KEY `index_carts_on_product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `histories`
--

DROP TABLE IF EXISTS `histories`;
CREATE TABLE IF NOT EXISTS `histories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_histories_on_user_id` (`user_id`),
  KEY `index_histories_on_product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `histories`
--

INSERT INTO `histories` (`id`, `user_id`, `product_id`, `quantity`, `date`, `created_at`, `updated_at`) VALUES
(1, 4, 5, 1, '2018-03-02', '2018-05-19 13:53:32', '2018-05-19 13:53:32'),
(2, 4, 2, 1, '2018-03-02', '2018-05-19 13:56:25', '2018-05-19 13:56:25'),
(3, 4, 4, 1, '2018-03-02', '2018-05-19 13:56:25', '2018-05-19 13:56:25'),
(4, 4, 5, 1, '2018-03-02', '2018-05-19 13:56:25', '2018-05-19 13:56:25'),
(5, 3, 4, 1, '2018-03-02', '2018-05-23 13:55:58', '2018-05-23 13:55:58'),
(6, 3, 2, 1, '2018-05-23', '2018-05-23 14:32:56', '2018-05-23 14:32:56'),
(7, 3, 2, 1, '2018-05-23', '2018-05-23 14:32:56', '2018-05-23 14:32:56'),
(8, 3, 5, 1, '2018-05-23', '2018-05-23 14:38:10', '2018-05-23 14:38:10'),
(9, 3, 4, 1, '2018-05-23', '2018-05-23 14:38:11', '2018-05-23 14:38:11'),
(10, 3, 3, 1, '2018-05-23', '2018-05-23 14:46:00', '2018-05-23 14:46:00'),
(11, 3, 2, 1, '2018-05-23', '2018-05-23 14:46:00', '2018-05-23 14:46:00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `availability` tinyint(1) DEFAULT NULL,
  `code` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `availability`, `code`, `created_at`, `updated_at`, `price`) VALUES
(2, 'aspirin', 'plus c', 1, 123, '2018-05-06 11:45:17', '2018-05-06 11:45:17', 3.4),
(3, 'Češalj', 'Mekani češalj za vašeg ljubimca.', 1, 456, '2018-05-17 00:00:00', '2018-05-17 00:00:00', 6.7),
(4, 'Šampon', 'Ovo će biti novi omiljeni šampon vašeg ljubimca.', 1, 789, '2018-05-17 00:00:00', '2018-05-17 00:00:00', 3.8),
(5, 'Kupka za pse', 'Najnoviji proizvod na tržištu. Ovo je kupka čiji će miris oduševiti vašeg psa.', 1, 147, '2018-05-17 00:00:00', '2018-05-17 00:00:00', 7.2);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_name`, `created_at`, `updated_at`) VALUES
(1, 'Employee', '2018-05-01 00:00:00', '2018-05-06 00:00:00'),
(2, 'Client', '2018-05-02 00:00:00', '2018-05-06 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20180425212219'),
('20180425212454'),
('20180506113755'),
('20180515204456'),
('20180515204916'),
('20180517023422');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_users_on_role_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `username`, `password`, `role_id`, `created_at`, `updated_at`) VALUES
(2, 'Amina Mahmutovic', 'amina1', 'pass', 1, '2018-05-06 12:38:23', '2018-05-06 12:38:23'),
(3, 'Sumejja Halilovic', 'sumejja1', 'pass', 2, '2018-05-06 12:48:26', '2018-05-06 12:48:26'),
(4, 'Delila Halilović', 'delila1', 'pass', 2, '2018-05-19 11:34:25', '2018-05-19 11:34:25');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `fk_rails_916f2a1419` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `fk_rails_ea59a35211` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `histories`
--
ALTER TABLE `histories`
  ADD CONSTRAINT `fk_rails_2d3eabb939` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `fk_rails_ddbf5f9cca` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_rails_642f17018b` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 01, 2019 at 07:51 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(25, 2, 3, 1, '2019-09-01 14:19:58', '2019-09-01 14:19:58'),
(26, 2, 3, 1, '2019-09-01 14:19:58', '2019-09-01 14:19:58'),
(27, 2, 3, 1, '2019-09-01 14:19:59', '2019-09-01 14:19:59'),
(28, 4, 7, 1, '2019-09-01 16:50:15', '2019-09-01 16:50:15'),
(29, 4, 12, 1, '2019-09-01 16:50:32', '2019-09-01 16:50:32');

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

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
(11, 3, 2, 1, '2018-05-23', '2018-05-23 14:46:00', '2018-05-23 14:46:00'),
(12, 4, 3, 1, '2019-09-01', '2019-09-01 14:18:46', '2019-09-01 14:18:46');

-- --------------------------------------------------------

--
-- Table structure for table `newtests`
--

DROP TABLE IF EXISTS `newtests`;
CREATE TABLE IF NOT EXISTS `newtests` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `image` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `availability`, `code`, `created_at`, `updated_at`, `price`, `image`, `quantity`, `picture`) VALUES
(2, 'Honda Accord', 'The versatile, family-friendly CR-V should be at the top of any compact crossover shopping list.', 1, 123, '2018-05-06 11:45:17', '2018-05-06 11:45:17', 120000, 'https://www.nfcworld.com/wp-content/uploads/2016/07/alibabacar200.jpg', 0, NULL),
(3, 'Subaru Foresterrr', 'Redesigned for 2019, the RAV4 gets serious upgrades to power, in-car tech and available features.', 1, 456, '2018-05-17 00:00:00', '2019-09-01 14:21:02', 450000, 'http://pngimg.com/uploads/alfa_romeo/alfa_romeo_PNG76.png', 2, NULL),
(4, 'Mazda MX-5', 'With an updated look and more standard safety features, the 2019 Civic is a clear class leader.', 1, 788, '2018-05-17 00:00:00', '2019-09-01 14:22:34', 920000, 'https://img.icons8.com/bubbles/2x/car.png', 3, NULL),
(5, 'Mitsubishi Carisma', 'The three-row SUV segment is highly competitive, and the Highlander is right in the mix.\r\n\r\n', 1, 145, '2018-05-17 00:00:00', '2018-05-17 00:00:00', 620000, NULL, 33, NULL),
(6, 'Toyota Yaris', 'An excellent combination of performance, comfort and utility makes the CX-5 a standout SUV.', 1, 124, '2018-05-06 11:45:17', '2018-05-06 11:45:17', 150000, NULL, 44, NULL),
(7, 'Honda Civic', 'The Accord is a perennial favorite in the midsize class, and this newest model is no different.', 1, 458, '2018-05-17 00:00:00', '2018-05-17 00:00:00', 350000, NULL, 6, NULL),
(8, 'Nissan Almera', 'From workhorse to polo pony, the 2019 Ram 1500 adapts to whatever you require from a truck.', 1, 781, '2018-05-17 00:00:00', '2018-05-17 00:00:00', 690000, NULL, 23, NULL),
(9, 'Honda CR-V', 'The Equinox isn\'t class-leading, but you\'ll like its luxury features and performance.', 1, 149, '2018-05-17 00:00:00', '2018-05-17 00:00:00', 520000, NULL, 66, NULL),
(10, 'Toyota RAV4', 'The all-new Telluride has much to offer shoppers looking for a versatile and upscale three-row SUV.', 1, 455, '2018-05-17 00:00:00', '2018-05-17 00:00:00', 450000, NULL, 44, NULL),
(11, 'Nissan Micra', 'The 2019 Chevrolet Traverse is one of the roomiest three-row crossovers SUVs you\'ll find.', 1, 785, '2018-05-17 00:00:00', '2018-05-17 00:00:00', 370000, NULL, 4, NULL),
(12, 'Lexus IS 200', 'It isn\'t exactly refined, but the Tacoma is one of the world\'s most capable trucks, on- or off-road.', 1, 142, '2018-05-17 00:00:00', '2018-05-17 00:00:00', 840000, 'https://www.nfcworld.com/wp-content/uploads/2016/07/alibabacar200.jpg', 5, NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_name`, `created_at`, `updated_at`) VALUES
(1, 'Employee', '2018-05-01 00:00:00', '2018-05-06 00:00:00'),
(2, 'Client', '2018-05-02 00:00:00', '2018-05-06 00:00:00'),
(3, 'Serviser', '2019-09-01 00:00:00', '2019-09-01 00:00:00');

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
('20180517023422'),
('20180523211709'),
('20180527194758'),
('20180531123227'),
('20180601193116'),
('20190131234511');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
CREATE TABLE IF NOT EXISTS `services` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `car_name` varchar(255) DEFAULT NULL,
  `bought_here` tinyint(1) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_services_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `car_name`, `bought_here`, `user_id`, `description`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Honda', 0, 3, 'broken door', 'new', '2019-09-01 16:56:10', '2019-09-01 16:59:54'),
(4, 'Megan', 1, 3, 'broken window', 'in progress', '2019-09-01 17:01:14', '2019-09-01 17:01:14'),
(5, 'BMW', 1, 4, 'can\'t open door', 'done', '2019-09-01 17:02:14', '2019-09-01 17:02:14');

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
(3, 'Sumejja Halilovic', 'sumejja1', 'pass', 3, '2018-05-06 12:48:26', '2018-05-06 12:48:26'),
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

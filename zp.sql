-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2024 at 08:02 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zp`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`id`, `name`, `email`, `password`) VALUES
(1, 'Kevin Yank', 'thatguy@kevinyank.com', ''),
(2, 'Tom Butler', 'tom@r.je', ''),
(3, 'Ghena', 'info@tahograf.md', '$2y$10$CgWpeoW53zOhmicU2w.kqutIhZQpgGZ5DXipWUP.4OrsY27Ze0RBK');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`) VALUES
(2, 'EURO'),
(1, 'MDL'),
(32, 'Poudns'),
(31, 'RON'),
(30, 'UAH'),
(3, 'USD');

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

CREATE TABLE `income` (
  `id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `total_amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `income`
--

INSERT INTO `income` (`id`, `created`, `total_amount`) VALUES
(4, '2024-01-23 00:00:00', '7200.00'),
(6, '2024-01-25 00:00:00', '13800.00'),
(7, '2024-01-26 00:00:00', '3450.00'),
(9, '2024-01-29 00:00:00', '4150.00'),
(10, '2024-01-31 00:00:00', '32000.00'),
(11, '2024-02-02 00:00:00', '15200.00'),
(12, '2024-02-06 00:00:00', '9600.00'),
(13, '2024-02-07 00:00:00', '4800.00'),
(14, '2024-02-08 00:00:00', '3200.00'),
(15, '2024-02-09 00:00:00', '1250.00'),
(16, '2024-02-12 00:00:00', '8800.00'),
(17, '2024-02-13 00:00:00', '20800.00'),
(18, '2024-02-17 00:00:00', '2800.00'),
(19, '2024-02-20 00:00:00', '19200.00'),
(26, '2024-02-21 00:00:00', '19200.00');

-- --------------------------------------------------------

--
-- Table structure for table `income_facevalues`
--

CREATE TABLE `income_facevalues` (
  `id` int(10) NOT NULL,
  `income_id` int(11) NOT NULL,
  `currency_id` int(10) NOT NULL,
  `facevalue` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `rate` decimal(6,2) NOT NULL,
  `summ` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `income_facevalues`
--

INSERT INTO `income_facevalues` (`id`, `income_id`, `currency_id`, `facevalue`, `quantity`, `amount`, `rate`, `summ`) VALUES
(127, 4, 1, 200, 36, 7200, '1.00', '7200.00'),
(194, 6, 2, 20, 22, 440, '20.00', '8800.00'),
(195, 6, 2, 10, 1, 10, '20.00', '200.00'),
(196, 6, 2, 5, 1, 5, '20.00', '100.00'),
(197, 6, 1, 500, 3, 1500, '1.00', '1500.00'),
(198, 6, 1, 200, 14, 2800, '1.00', '2800.00'),
(199, 6, 1, 100, 2, 200, '1.00', '200.00'),
(200, 6, 1, 50, 4, 200, '1.00', '200.00'),
(207, 7, 1, 50, 1, 50, '1.00', '50.00'),
(208, 7, 1, 100, 16, 1600, '1.00', '1600.00'),
(209, 7, 1, 200, 9, 1800, '1.00', '1800.00'),
(212, 9, 1, 500, 1, 500, '1.00', '500.00'),
(213, 9, 1, 200, 13, 2600, '1.00', '2600.00'),
(214, 9, 1, 100, 1, 100, '1.00', '100.00'),
(215, 9, 1, 50, 19, 950, '1.00', '950.00'),
(216, 10, 1, 200, 112, 22400, '1.00', '22400.00'),
(217, 10, 2, 20, 24, 480, '20.00', '9600.00'),
(226, 11, 1, 200, 11, 2200, '1.00', '2200.00'),
(227, 11, 3, 100, 2, 200, '18.00', '3600.00'),
(228, 11, 2, 20, 2, 50, '20.00', '1000.00'),
(229, 11, 2, 10, 2, 20, '20.00', '400.00'),
(230, 11, 2, 50, 8, 400, '20.00', '8000.00'),
(244, 12, 2, 50, 2, 100, '20.00', '2000.00'),
(245, 12, 1, 1000, 1, 1000, '1.00', '1000.00'),
(246, 12, 1, 500, 3, 1500, '1.00', '1500.00'),
(247, 12, 1, 200, 3, 600, '1.00', '600.00'),
(248, 12, 1, 100, 22, 2200, '1.00', '2200.00'),
(249, 12, 1, 200, 6, 1200, '1.00', '1200.00'),
(250, 12, 1, 500, 1, 500, '1.00', '500.00'),
(251, 12, 1, 100, 6, 600, '1.00', '600.00'),
(252, 13, 1, 100, 48, 4800, '1.00', '4800.00'),
(253, 14, 1, 200, 16, 3200, '1.00', '3200.00'),
(254, 15, 1, 200, 4, 800, '1.00', '800.00'),
(255, 15, 1, 100, 2, 200, '1.00', '200.00'),
(256, 15, 1, 50, 5, 250, '1.00', '250.00'),
(257, 16, 1, 100, 2, 200, '1.00', '200.00'),
(258, 16, 1, 200, 43, 8600, '1.00', '8600.00'),
(263, 17, 2, 50, 1, 50, '20.00', '1000.00'),
(264, 17, 1, 500, 2, 1000, '1.00', '1000.00'),
(265, 17, 1, 200, 13, 2600, '1.00', '2600.00'),
(266, 17, 1, 100, 2, 200, '1.00', '200.00'),
(267, 17, 2, 50, 16, 800, '20.00', '16000.00'),
(268, 18, 1, 200, 14, 2800, '1.00', '2800.00'),
(269, 19, 2, 100, 1, 100, '20.00', '2000.00'),
(270, 19, 2, 20, 11, 220, '20.00', '4400.00'),
(271, 19, 2, 50, 1, 50, '20.00', '1000.00'),
(272, 19, 2, 10, 2, 20, '20.00', '400.00'),
(273, 19, 2, 5, 1, 5, '20.00', '100.00'),
(274, 19, 1, 1000, 2, 2000, '1.00', '2000.00'),
(275, 19, 1, 200, 34, 6800, '1.00', '6800.00'),
(276, 19, 1, 100, 25, 2500, '1.00', '2500.00'),
(284, 26, 32, 20, 4, 80, '20.00', '1600.00'),
(285, 26, 32, 10, 1, 10, '20.00', '200.00'),
(286, 26, 2, 50, 4, 200, '20.00', '4000.00'),
(287, 26, 2, 10, 1, 10, '20.00', '200.00'),
(288, 26, 1, 200, 27, 5400, '1.00', '5400.00'),
(289, 26, 1, 50, 4, 200, '1.00', '200.00'),
(290, 26, 2, 100, 2, 200, '20.00', '4000.00'),
(291, 26, 1, 200, 18, 3600, '1.00', '3600.00');

-- --------------------------------------------------------

--
-- Table structure for table `rates`
--

CREATE TABLE `rates` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `currency_id` int(10) NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `new_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rates`
--

INSERT INTO `rates` (`id`, `date`, `currency_id`, `rate`, `new_id`) VALUES
(1, '2023-07-31', 3, '18.00', NULL),
(13, '2023-07-31', 2, '20.00', NULL),
(22, '2023-08-28', 31, '3.90', NULL),
(23, '2023-08-28', 30, '0.48', NULL),
(28, '2024-01-25', 1, '1.00', NULL),
(31, '2024-02-21', 32, '20.00', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `income`
--
ALTER TABLE `income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `income_facevalues`
--
ALTER TABLE `income_facevalues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `incomes_ibfk_1` (`currency_id`),
  ADD KEY `income_id` (`income_id`);

--
-- Indexes for table `rates`
--
ALTER TABLE `rates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `currency_id` (`currency_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `income`
--
ALTER TABLE `income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `income_facevalues`
--
ALTER TABLE `income_facevalues`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=292;

--
-- AUTO_INCREMENT for table `rates`
--
ALTER TABLE `rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `income_facevalues`
--
ALTER TABLE `income_facevalues`
  ADD CONSTRAINT `income_facevalues_ibfk_1` FOREIGN KEY (`income_id`) REFERENCES `income` (`id`);

--
-- Constraints for table `rates`
--
ALTER TABLE `rates`
  ADD CONSTRAINT `rates_ibfk_1` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

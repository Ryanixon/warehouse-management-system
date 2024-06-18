-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2024 at 07:44 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `warehouse`
--

-- --------------------------------------------------------

--
-- Table structure for table `buydetails`
--

CREATE TABLE `buydetails` (
  `id` int(11) NOT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `buyerName` varchar(255) DEFAULT NULL,
  `buyerAddress` varchar(255) DEFAULT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buydetails`
--

INSERT INTO `buydetails` (`id`, `productName`, `price`, `quantity`, `buyerName`, `buyerAddress`, `date`) VALUES
(131, 'TV', 1950000.00, 13, 'AFAFS', 'FAFAF', '2024-02-28 10:33:41'),
(132, 'TV', 8250000.00, 55, 'safsf', 'fafafa', '2024-02-28 10:35:30'),
(133, 'TV', 8250000.00, 55, 'sfasfas', 'fafff', '2024-02-28 10:37:45'),
(134, 'faafa', 110.00, 11, 'fsafasf', 'afafas', '2024-02-28 10:38:07'),
(135, 'fafaf', 131310.00, 10, 'vxvz', 'zvzvz', '2024-02-28 10:39:50'),
(136, 'TV', 99999999.99, 10000, 'fasfa', 'fafafs', '2024-02-28 10:43:38'),
(137, 'TV', 99999999.99, 50000, 'gdga', 'gsgsg', '2024-02-28 10:46:26'),
(138, 'TV', 99999999.99, 900, 'gdga', 'gsgsg', '2024-02-28 10:46:38'),
(139, 'TV', 150000.00, 1, 'gdga', 'gsgsg', '2024-02-28 10:46:42'),
(140, 'TV', 99999999.99, 900, 'gdgd', 'dsgsdgdgs', '2024-02-28 10:47:16'),
(141, 'TV', 15000000.00, 100, 'fsfsafafa', 'fafafafsf', '2024-02-28 10:47:27'),
(142, 'TV', 15000000.00, 100, 'sdffs', 'fafafa', '2024-02-28 10:47:37'),
(143, 'TV', 15150000.00, 101, 'fsaffa', 'afaf', '2024-02-28 10:48:13'),
(144, 'TV', 15000000.00, 100, 'fsaffa', 'afaf', '2024-02-28 10:48:23'),
(145, 'Remote', 26262000.00, 2000, 'sdfsf', 'fafafs', '2024-02-28 10:51:13'),
(146, 'Hair dryer', 1000.00, 100, 'dgdgs', 'ggsg', '2024-02-28 10:52:12'),
(147, 'Dolo 600', 4000.00, 40, 'dgds', 'gsgdsg', '2024-02-28 12:01:14'),
(148, 'Bat', 5000000.00, 1000, 'Dmart', 'afhafkashfas', '2024-02-28 12:09:50'),
(149, 'Bat', 5000000.00, 1000, 'faafsaf', 'afaffsf', '2024-02-28 12:12:25');

--
-- Triggers `buydetails`
--
DELIMITER $$
CREATE TRIGGER `insertTIME2` BEFORE INSERT ON `buydetails` FOR EACH ROW SET NEW.date = NOW()
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `insertTime` BEFORE INSERT ON `buydetails` FOR EACH ROW SET NEW.date = NOW()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(10) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(11, 'Telecommunication'),
(13, 'Medicine'),
(14, 'Cold Beverages'),
(19, 'Wood category'),
(20, 'Sports');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `ProductName` varchar(255) NOT NULL,
  `Price` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `category_name` varchar(100) DEFAULT NULL,
  `Status1` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `ProductName`, `Price`, `Quantity`, `category_name`, `Status1`) VALUES
(44, 'Bat', 5000, 1000, 'Sports', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'vivek', '12345'),
(2, 'swaroop', '54321');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buydetails`
--
ALTER TABLE `buydetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_name`),
  ADD UNIQUE KEY `category_id` (`category_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_for` (`category_name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buydetails`
--
ALTER TABLE `buydetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `cat_for` FOREIGN KEY (`category_name`) REFERENCES `category` (`category_name`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

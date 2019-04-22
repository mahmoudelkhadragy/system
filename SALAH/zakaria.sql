-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2019 at 04:55 PM
-- Server version: 5.6.37
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zakaria`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `id` int(50) NOT NULL,
  `client` varchar(300) DEFAULT NULL,
  `client_address` varchar(300) NOT NULL,
  `client_phone` varchar(300) NOT NULL,
  `client_ident` varchar(300) NOT NULL,
  `client_account` varchar(300) NOT NULL,
  `client_info` varchar(300) NOT NULL,
  `date` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `save_log`
--

CREATE TABLE IF NOT EXISTS `save_log` (
  `id` int(11) NOT NULL,
  `money` double NOT NULL,
  `money_f` double DEFAULT NULL,
  `d` int(10) NOT NULL,
  `m` int(10) NOT NULL,
  `y` int(10) NOT NULL,
  `date` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) NOT NULL,
  `balance` double NOT NULL DEFAULT '0',
  `balance_f` double DEFAULT '0',
  `password` varchar(300) NOT NULL,
  `buyprice` double NOT NULL,
  `sellprice` double NOT NULL,
  `earning` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `balance`, `balance_f`, `password`, `buyprice`, `sellprice`, `earning`) VALUES
(1, 0, 0, '123456', 3.9, 3.96, 0);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE IF NOT EXISTS `suppliers` (
  `id` int(50) NOT NULL,
  `client` varchar(300) DEFAULT NULL,
  `client_address` varchar(300) NOT NULL,
  `client_phone` varchar(300) NOT NULL,
  `client_ident` varchar(300) NOT NULL,
  `client_account` varchar(300) NOT NULL,
  `client_info` varchar(300) NOT NULL,
  `balance` double NOT NULL,
  `balance_f` double DEFAULT NULL,
  `date` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE IF NOT EXISTS `transfers` (
  `id` int(11) NOT NULL,
  `supplierid` int(50) NOT NULL,
  `getmoney` double NOT NULL,
  `lebymoney` double NOT NULL,
  `price` double NOT NULL,
  `notes` varchar(300) NOT NULL,
  `d` int(50) NOT NULL,
  `m` int(50) NOT NULL,
  `y` int(50) NOT NULL,
  `date` int(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `transition`
--

CREATE TABLE IF NOT EXISTS `transition` (
  `id` int(11) NOT NULL,
  `clientsid` int(50) NOT NULL,
  `suplierid` int(50) DEFAULT NULL,
  `egprice` double NOT NULL,
  `dolprice` double NOT NULL,
  `buyprice` double NOT NULL,
  `sellprice` double NOT NULL,
  `type` varchar(300) NOT NULL,
  `money` double NOT NULL,
  `d` int(50) NOT NULL,
  `m` int(50) NOT NULL,
  `y` int(50) NOT NULL,
  `notes` text,
  `date` int(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `save_log`
--
ALTER TABLE `save_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transition`
--
ALTER TABLE `transition`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `save_log`
--
ALTER TABLE `save_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `transition`
--
ALTER TABLE `transition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

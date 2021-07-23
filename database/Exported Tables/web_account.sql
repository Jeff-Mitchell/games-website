-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 23, 2021 at 08:02 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jmitchell25`
--

-- --------------------------------------------------------

--
-- Table structure for table `web_account`
--

CREATE TABLE `web_account` (
  `account_id` int(8) NOT NULL,
  `account_type_id` int(8) NOT NULL DEFAULT 1,
  `account_first_name` varchar(128) NOT NULL,
  `account_last_name` varchar(128) NOT NULL,
  `account_username` varchar(128) NOT NULL,
  `account_password` varchar(128) NOT NULL,
  `preference1` varchar(128) DEFAULT NULL,
  `preference2` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `web_account`
--

INSERT INTO `web_account` (`account_id`, `account_type_id`, `account_first_name`, `account_last_name`, `account_username`, `account_password`, `preference1`, `preference2`) VALUES
(1001, 2, 'Admin', 'Account', 'admin@web.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'Action', 'PS3'),
(1008, 1, 'User', 'Account', 'user@web.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'Racing', 'X360');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `web_account`
--
ALTER TABLE `web_account`
  ADD PRIMARY KEY (`account_id`),
  ADD KEY `FK-account-account_type` (`account_type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `web_account`
--
ALTER TABLE `web_account`
  MODIFY `account_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1018;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `web_account`
--
ALTER TABLE `web_account`
  ADD CONSTRAINT `FK-account-account_type` FOREIGN KEY (`account_type_id`) REFERENCES `web_account_type` (`account_type_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

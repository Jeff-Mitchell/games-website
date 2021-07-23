-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 23, 2021 at 08:03 PM
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
-- Table structure for table `web_toppublishers`
--

CREATE TABLE `web_toppublishers` (
  `publisher_id` int(8) NOT NULL,
  `publisher_name` varchar(128) NOT NULL,
  `publisher_release_year` int(4) NOT NULL,
  `publisher_published_games` int(10) NOT NULL,
  `img` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `web_toppublishers`
--

INSERT INTO `web_toppublishers` (`publisher_id`, `publisher_name`, `publisher_release_year`, `publisher_published_games`, `img`) VALUES
(1, 'Nintendo', 1889, 706, 'https://i.ibb.co/qj6SQjV/nintendo.png'),
(2, 'Sony', 1946, 552, 'images/sony.svg'),
(3, 'Microsoft Studios', 1975, 346, 'images/xbox_games.svg'),
(4, 'Activision', 1979, 134, 'images/activision.svg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `web_toppublishers`
--
ALTER TABLE `web_toppublishers`
  ADD PRIMARY KEY (`publisher_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `web_toppublishers`
--
ALTER TABLE `web_toppublishers`
  MODIFY `publisher_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

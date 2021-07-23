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
-- Table structure for table `web_topplatforms`
--

CREATE TABLE `web_topplatforms` (
  `platform_id` int(8) NOT NULL,
  `platform_name` varchar(128) NOT NULL,
  `platform_release_year` int(4) NOT NULL,
  `platform_playable_games` int(10) NOT NULL,
  `img` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `web_topplatforms`
--

INSERT INTO `web_topplatforms` (`platform_id`, `platform_name`, `platform_release_year`, `platform_playable_games`, `img`) VALUES
(1, 'Playstation 2', 2000, 3800, 'https://i.ibb.co/RDH5sQY/ps2.jpg'),
(2, 'Playstation 4', 2013, 3147, 'https://i.ibb.co/WyRky7p/ps4.png'),
(3, 'Playstation 3', 2006, 2278, 'https://i.ibb.co/8MYDByw/playstation-3.png'),
(4, 'XBox 360', 2005, 2154, 'https://i.ibb.co/tCc24Ys/xbox.jpg'),
(5, 'Nintendo DS', 2004, 2029, ''),
(6, 'Wii', 2006, 1597, ''),
(7, 'Game Boy Advance', 2001, 1498, ''),
(8, 'Game Boy', 1989, 1046, ''),
(9, 'NES', 1983, 706, ''),
(10, 'Nintendo 3DS', 2010, 49, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `web_topplatforms`
--
ALTER TABLE `web_topplatforms`
  ADD PRIMARY KEY (`platform_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `web_topplatforms`
--
ALTER TABLE `web_topplatforms`
  MODIFY `platform_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

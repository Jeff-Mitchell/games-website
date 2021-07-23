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
-- Table structure for table `web_topgames`
--

CREATE TABLE `web_topgames` (
  `topgame_id` int(8) NOT NULL,
  `game_id` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `web_topgames`
--

INSERT INTO `web_topgames` (`topgame_id`, `game_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `web_topgames`
--
ALTER TABLE `web_topgames`
  ADD PRIMARY KEY (`topgame_id`),
  ADD KEY `FK-topgamess` (`game_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `web_topgames`
--
ALTER TABLE `web_topgames`
  MODIFY `topgame_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `web_topgames`
--
ALTER TABLE `web_topgames`
  ADD CONSTRAINT `FK-topgamess` FOREIGN KEY (`game_id`) REFERENCES `web_allgames` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

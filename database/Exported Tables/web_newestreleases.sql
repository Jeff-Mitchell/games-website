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
-- Table structure for table `web_newestreleases`
--

CREATE TABLE `web_newestreleases` (
  `release_id` int(8) NOT NULL,
  `game_id` int(11) NOT NULL,
  `img` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `web_newestreleases`
--

INSERT INTO `web_newestreleases` (`release_id`, `game_id`, `img`) VALUES
(1, 222, 'https://i.ibb.co/MsTVnpf/fifa-17.jpg'),
(2, 272, 'https://i.ibb.co/f0FhLHM/uncharted-4.jpg'),
(3, 352, 'https://i.ibb.co/ZHSVTFg/the-division.jpg'),
(4, 1027, 'https://i.ibb.co/hHxV92z/overwatch.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `web_newestreleases`
--
ALTER TABLE `web_newestreleases`
  ADD PRIMARY KEY (`release_id`),
  ADD KEY `FK-newestreleases` (`game_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `web_newestreleases`
--
ALTER TABLE `web_newestreleases`
  MODIFY `release_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `web_newestreleases`
--
ALTER TABLE `web_newestreleases`
  ADD CONSTRAINT `FK-newestreleases` FOREIGN KEY (`game_id`) REFERENCES `web_allgames` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

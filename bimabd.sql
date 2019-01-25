-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2019 at 06:53 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bimabd`
--

-- --------------------------------------------------------

--
-- Table structure for table `age_table`
--

CREATE TABLE `age_table` (
  `age_id` int(10) NOT NULL,
  `ageS` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `age_table`
--

INSERT INTO `age_table` (`age_id`, `ageS`) VALUES
(1, '0.5 To 40 Years Old '),
(2, '41 To 50 Years Old');

-- --------------------------------------------------------

--
-- Table structure for table `omc_premium`
--

CREATE TABLE `omc_premium` (
  `premium_id` int(10) NOT NULL,
  `region` int(10) NOT NULL,
  `day_init` int(10) NOT NULL,
  `day_range` int(10) NOT NULL,
  `age` int(10) NOT NULL,
  `net_premium` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `omc_premium`
--

INSERT INTO `omc_premium` (`premium_id`, `region`, `day_init`, `day_range`, `age`, `net_premium`) VALUES
(1, 1, 0, 7, 1, '1394'),
(2, 1, 8, 10, 1, '1394'),
(3, 1, 11, 14, 1, '1394'),
(4, 1, 15, 21, 1, '1453'),
(5, 1, 0, 7, 2, '1667'),
(6, 1, 8, 10, 2, '2000'),
(7, 1, 11, 14, 2, '2092'),
(8, 1, 15, 21, 2, '2231'),
(9, 2, 0, 7, 1, '2553'),
(10, 2, 8, 10, 1, '2553'),
(11, 2, 11, 14, 1, '2553'),
(12, 2, 15, 21, 1, '2712'),
(13, 2, 0, 7, 2, '3000'),
(14, 2, 8, 10, 2, '3600'),
(15, 2, 11, 14, 2, '4600'),
(16, 2, 15, 21, 2, '5061');

-- --------------------------------------------------------

--
-- Table structure for table `rgion_table`
--

CREATE TABLE `rgion_table` (
  `reg_id` int(10) NOT NULL,
  `region_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rgion_table`
--

INSERT INTO `rgion_table` (`reg_id`, `region_type`) VALUES
(1, 'Schengen Countries'),
(2, 'Worldwide Including Schengen Countries');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `age_table`
--
ALTER TABLE `age_table`
  ADD PRIMARY KEY (`age_id`);

--
-- Indexes for table `omc_premium`
--
ALTER TABLE `omc_premium`
  ADD PRIMARY KEY (`premium_id`),
  ADD KEY `region` (`region`),
  ADD KEY `age` (`age`);

--
-- Indexes for table `rgion_table`
--
ALTER TABLE `rgion_table`
  ADD PRIMARY KEY (`reg_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `age_table`
--
ALTER TABLE `age_table`
  MODIFY `age_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `omc_premium`
--
ALTER TABLE `omc_premium`
  MODIFY `premium_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `rgion_table`
--
ALTER TABLE `rgion_table`
  MODIFY `reg_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `omc_premium`
--
ALTER TABLE `omc_premium`
  ADD CONSTRAINT `omc_premium_ibfk_1` FOREIGN KEY (`region`) REFERENCES `rgion_table` (`reg_id`),
  ADD CONSTRAINT `omc_premium_ibfk_2` FOREIGN KEY (`age`) REFERENCES `age_table` (`age_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

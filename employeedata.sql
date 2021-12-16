-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2021 at 06:58 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employeedata`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` bigint(20) NOT NULL,
  `mobile_number` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `f_name` varchar(255) DEFAULT NULL,
  `id_card_number` varchar(255) DEFAULT NULL,
  `l_name` varchar(255) DEFAULT NULL,
  `landline` varchar(255) DEFAULT NULL,
  `permanent_address` varchar(255) DEFAULT NULL,
  `secondary_contact` varchar(255) DEFAULT NULL,
  `temporary_address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `mobile_number`, `dob`, `f_name`, `id_card_number`, `l_name`, `landline`, `permanent_address`, `secondary_contact`, `temporary_address`) VALUES
(3, '0312345678', '2021-12-01', 'Adil', '345621784432', 'Hassan', '11111111', 'maqwswede', '1111122222', 'zzzzssaqws'),
(6, '1233333333333', '2016-02-03', 'zzzz', 'as1112211', 'xxxxx', '111111111111', 'dddsssss', '2222222222', 'ssaaqqqqw'),
(7, '0333 22222222', '2021-12-01', 'axaxaxaxxx', '123456790987', 'aaaaaaaaaaa', '111111111111', 'bbbbbbbbbbbbbbb', '22112212', 'aaaaaaaaaaaaaaaa'),
(8, '11122223333', '2005-02-02', 'Hassan', '123454322', 'Ali', '22221111223', 'cdcdcdcdcdcdcdcdc', '12121212121', 'asasasasasasa');

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

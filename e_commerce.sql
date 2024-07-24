-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2024 at 12:16 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e_commerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `AddressId` int(11) NOT NULL,
  `UserId` int(11) DEFAULT NULL,
  `Street` varchar(100) DEFAULT NULL,
  `City` varchar(50) NOT NULL,
  `Zip_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`AddressId`, `UserId`, `Street`, `City`, `Zip_code`) VALUES
(1, 1, 'Kings', 'Nakuru', 1200),
(2, 2, 'Kisom', 'Eldoret', 70100),
(3, 3, 'Fidel', 'Mombasa', 20100),
(4, 4, 'Lenana', 'Nairobi', 54340),
(5, 5, 'Kweli', 'Kisumu', 340001),
(6, 6, 'Eden', 'Kigali', 20300),
(7, 7, 'Rambatu', 'Bujumbura', 20600);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserId` int(11) NOT NULL,
  `First_Name` varchar(50) DEFAULT NULL,
  `Last_Name` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Passwords` varchar(50) DEFAULT NULL,
  `Phone_No` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserId`, `First_Name`, `Last_Name`, `Email`, `Passwords`, `Phone_No`) VALUES
(1, 'Lucius', 'Swafi', 'l.swafi@gmail.com', 'swaficius221', 112345623),
(2, 'Jayson', 'Kombo', 'sonomb@gmail.com', 'hugme2dei', 789287546),
(3, 'Severa', 'Mshai', 'msevera@gmail.com', 'bubbly2true', 700321456),
(4, 'Said', 'Ali', 'alsa@gmail.com', 'kommit2', 789321456),
(5, 'David', 'Jira', 'davira@gmail.com', 'gol2ath', 760321456),
(6, 'Swafi', 'Kombo', 'swafkom@gmail.com', '10over9', 700778996),
(7, 'Lornix', 'slayqueen', 'slaynix@gmail.com', 'deal2fiti', 540032456);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`AddressId`),
  ADD KEY `UserId` (`UserId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `AddressId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `users` (`UserId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

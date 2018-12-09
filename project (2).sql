-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2018 at 04:29 PM
-- Server version: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE IF NOT EXISTS `booking` (
  `ID` int(11) NOT NULL,
  `status` varchar(45) CHARACTER SET latin1 NOT NULL,
  `date` varchar(45) CHARACTER SET latin1 NOT NULL,
  `time` varchar(45) CHARACTER SET latin1 NOT NULL,
  `usersid` int(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`ID`, `status`, `date`, `time`, `usersid`) VALUES
(1, 'paid', '12/8/2018', '3:00pm', 0),
(2, 'unpaid', '13/8/2018', '3:00pm', 0);

-- --------------------------------------------------------

--
-- Table structure for table `court`
--

CREATE TABLE IF NOT EXISTS `court` (
  `ID` int(11) NOT NULL,
  `type` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `court`
--

INSERT INTO `court` (`ID`, `type`, `status`) VALUES
(2, 'a', 'Available'),
(3, 'b', 'Available'),
(4, 'c', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `ID` int(11) NOT NULL,
  `mode` varchar(45) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`ID`, `mode`, `date`) VALUES
(1, 'cash', '2018-12-08'),
(2, 'credit', '2018-12-07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `ID` int(11) NOT NULL,
  `password` varchar(45) CHARACTER SET latin1 NOT NULL,
  `role` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `phoneNo` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `password`, `role`, `name`, `phoneNo`, `address`, `gender`) VALUES
(1, '', 'customer', 'zahirul imran', '0102583691', 'No. 51 lorong naluri sukma 8/10', 'male'),
(2, '123', 'staff', 'nuh', '01110543628', 'no 5 lorong cakera purnama, puncak alam', 'male'),
(3, '$2y$10$r7F5ufLBdWtDoEPZbBA.eeoT38x5N5bn.946Cg', 'staff', 'arif amzar', '0104567892', 'saujana utama', 'male'),
(4, '123', 'staff', 'sofea', '10598522', 'Taman LKP', 'female'),
(5, '$2y$10$O8EpgpiYbI34NrYHYOreQeYnofv.29o5/DnrJV', 'staff', 'mira', '0105249713', 'Meru', 'female'),
(6, '$2y$10$FrdBoNBjHeaSPLnGLd/ywuXHwD7N0zG8LM4dLi', 'staff', 'admin', '2342341', 'no 5 lorong cakera purnama, puncak alam', 'male'),
(7, '$2y$10$bGtANp6CKYfcanXbHktTjOQmZtvMSkI8sfYxr2', 'staff', 'hanan', '01245611123', 'kajang', 'male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`),
  ADD KEY `ID_2` (`ID`),
  ADD KEY `ID_3` (`ID`),
  ADD KEY `usersid` (`usersid`);

--
-- Indexes for table `court`
--
ALTER TABLE `court`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `court`
--
ALTER TABLE `court`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

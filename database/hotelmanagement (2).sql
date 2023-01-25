-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2023 at 08:35 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotelmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `reid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `mobile` int(11) NOT NULL,
  `checkin` varchar(255) NOT NULL,
  `checkout` varchar(255) NOT NULL,
  `bedtype` varchar(255) NOT NULL,
  `roomno` varchar(255) NOT NULL,
  `rtype` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`reid`, `name`, `address`, `mobile`, `checkin`, `checkout`, `bedtype`, `roomno`, `rtype`, `amount`) VALUES
('R0001', 'Omaggg', 'yewe', 789456123, '2022-09-17', '2022-09-02', 'Non A/c', 'R0001', 'Single', 15000),
('RE002', 'kirenga', 'martial', 516515615, '2022-25-03', '2022-25-04', 'Non A/c', 'R0003', 'double', 12000),
('RE004', 'omar', 'karake', 1561561, '2022-27-01', '2022-27-02', 'Non A/c', 'R0002', 'Single', 15000),
('RE005', 'eliAS', 'NYAGATRE', 785204887, '2022-00-03', '2022-19-04', 'Non A/c', 'R0002', 'Single', 100000);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `rid` varchar(255) NOT NULL,
  `rtype` varchar(255) NOT NULL,
  `btype` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`rid`, `rtype`, `btype`, `amount`) VALUES
('R0001', 'A/c', 'Single', 5000),
('R0002', 'Non A/c', 'double', 15000),
('R0003', 'A/c', 'double', 55550),
('R0004', 'Non A/c', 'double', 141410);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `name`, `username`, `password`) VALUES
(1, 'omar', 'omarion', '12345'),
(2, 'yewe', 'yewe', 'kintu'),
(6, 'niyomukiza', 'ismael', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`reid`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

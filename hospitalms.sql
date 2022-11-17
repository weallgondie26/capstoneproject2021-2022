-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2022 at 05:28 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospitalms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admintb`
--

CREATE TABLE `admintb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admintb`
--

INSERT INTO `admintb` (`username`, `password`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `appointmenttb`
--

CREATE TABLE `appointmenttb` (
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(11) NOT NULL,
  `doctor` varchar(30) NOT NULL,
  `docFees` int(5) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `userStatus` int(5) NOT NULL,
  `doctorStatus` int(5) NOT NULL,
  `service` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointmenttb`
--

INSERT INTO `appointmenttb` (`pid`, `ID`, `fname`, `lname`, `gender`, `email`, `contact`, `doctor`, `docFees`, `appdate`, `apptime`, `userStatus`, `doctorStatus`, `service`) VALUES
(15, 19, 'Brylle', 'Jovellanos', 'Male', 'rish.beckette@gmail.com', '9214937870', 'LMC', 600, '2022-03-02', '10:00:00', 1, 0, ''),
(15, 20, 'Brylle', 'Jovellanos', 'Male', 'rish.beckette@gmail.com', '9214937870', 'ewewew', 5000, '2022-02-07', '16:00:00', 0, 1, ''),
(15, 21, 'Brylle', 'Jovellanos', 'Male', 'rish.beckette@gmail.com', '9214937870', 'LMC', 600, '2022-02-15', '12:00:00', 0, 1, ''),
(15, 22, 'Brylle', 'Jovellanos', 'Male', 'rish.beckette@gmail.com', '9214937870', 'VMH', 1500, '2022-02-16', '14:00:00', 0, 1, ''),
(15, 23, 'Brylle', 'Jovellanos', 'Male', 'rish.beckette@gmail.com', '9214937870', 'TMC', 700, '2022-02-07', '12:00:00', 0, 1, ''),
(16, 24, 'Ryl', 'Jay', 'Male', 'brylle.jovellanos@yahoo.com', '09214937870', 'ROMC', 750, '2022-02-16', '12:00:00', 1, 1, ''),
(16, 25, 'Ryl', 'Jay', 'Male', 'brylle.jovellanos@yahoo.com', '09214937870', 'ROMC', 750, '2022-02-21', '14:00:00', 1, 1, ''),
(16, 26, 'Ryl', 'Jay', 'Male', 'brylle.jovellanos@yahoo.com', '09214937870', 'ROMC', 750, '2022-02-15', '14:00:00', 1, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(30) NOT NULL,
  `email` text NOT NULL,
  `contact` varchar(11) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `doctb`
--

CREATE TABLE `doctb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `doctorname` varchar(255) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `docFees` int(10) NOT NULL,
  `haddress` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctb`
--

INSERT INTO `doctb` (`username`, `password`, `doctorname`, `email`, `spec`, `docFees`, `haddress`) VALUES
('ROMC', '09066094930', 'Region One Medical Center', 'ROMC@gmail.com', 'RT-PCR (Nasal)', 750, 'Arellano Street'),
('LMC', '09066094930', 'Luzon Medical Center', 'LMC@gmail.com', 'Antibody Test (Blood)', 800, 'Perez Street'),
('TMC', '09066094930', 'The Medical City', 'TMC@gmail.com', 'RTK-Ag Test (Nasal)', 760, 'Pantal ');

-- --------------------------------------------------------

--
-- Table structure for table `patreg`
--

CREATE TABLE `patreg` (
  `pid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(11) NOT NULL,
  `password` varchar(30) NOT NULL,
  `cpassword` varchar(30) NOT NULL,
  `paddress` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patreg`
--

INSERT INTO `patreg` (`pid`, `fname`, `lname`, `gender`, `email`, `contact`, `password`, `cpassword`, `paddress`) VALUES
(15, 'Brylle', 'Jovellanos', 'Male', 'rish.beckette@gmail.com', '9214937870', '09066094930', '09066094930', ''),
(16, 'Ryl', 'Jay', 'Male', 'brylle.jovellanos@yahoo.com', '09214937870', '09066094930', '09066094930', ''),
(17, 'Ryl', 'Jay', 'Male', 'brylle.jovellanos@yahoo.com', '09214937870', '123456', '123456', ''),
(18, 'Ryl', 'Jay', 'Male', 'brylle.jovellanos@yahoo.com', '09214937870', '123123', '123123', ''),
(19, 'Ryl', 'Jay', 'Male', 'brylle.jovellanos@yahoo.com', '09214937870', '123123', '123123', ''),
(20, 'Ryl', 'Jay', 'Male', 'brylle.jovellanos@yahoo.com', '09214937870', '123123', '123123', 'Pogo Chico');

-- --------------------------------------------------------

--
-- Table structure for table `prestb`
--

CREATE TABLE `prestb` (
  `doctor` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `disease` varchar(250) NOT NULL,
  `allergy` varchar(250) NOT NULL,
  `prescription` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prestb`
--

INSERT INTO `prestb` (`doctor`, `pid`, `ID`, `fname`, `lname`, `appdate`, `apptime`, `disease`, `allergy`, `prescription`) VALUES
('LMC', 15, 19, 'Brylle', 'Jovellanos', '2022-03-02', '10:00:00', 'wew', 'wew', 'wew'),
('ewewew', 15, 20, 'Brylle', 'Jovellanos', '2022-02-07', '16:00:00', 'eeee', 'wwwww', 'aaaaa'),
('LMC', 15, 21, 'Brylle', 'Jovellanos', '2022-02-15', '12:00:00', 'sakit sa puso', 'wala', 'good job'),
('ROMC', 16, 24, 'Ryl', 'Jay', '2022-02-16', '12:00:00', 'Ayoko na', 'Sakit na ng ulo ko', 'huhu'),
('ROMC', 16, 25, 'Ryl', 'Jay', '2022-02-21', '14:00:00', 'yoko naaaa', 'tama na tooo', 'T_T');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `patreg`
--
ALTER TABLE `patreg`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `patreg`
--
ALTER TABLE `patreg`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

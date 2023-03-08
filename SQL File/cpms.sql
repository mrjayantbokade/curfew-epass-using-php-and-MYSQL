-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2022 at 05:47 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cpms`
--

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `email` text NOT NULL,
  `name` text NOT NULL,
  `phone` text NOT NULL,
  `identity_type` text NOT NULL,
  `id_no` text NOT NULL,
  `category` text NOT NULL,
  `gender` text NOT NULL,
  `fdate` text NOT NULL,
  `tdate` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`email`, `name`, `phone`, `identity_type`, `id_no`, `category`, `gender`, `fdate`, `tdate`) VALUES
('email', 'jayan', '', 'driving_license', 'idno', 'cleaning', 'male', 'date', 'date2'),
('emai', 'name', '', 'aadhar_card', 'idno', 'cleaning', 'female', 'date', 'date2'),
('email', 'nadjkfllksda', '99', 'aadhar_card', '99008080', 'cleaning', 'female', '67989', '8748743'),
('email', 'name', '', 'aadhar_card', 'idno', 'medicalproblem', 'male', 'datre', 'to date'),
('mrjayant81@gmail.com', 'jayant bokade', '8806901090', 'aadhar_card', '642328288066', 'medicalproblem', 'male', 'ajj se ', 'kal tak');

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'SuperSoldiers', 'admin', 8806901090, 'mrjayant81@gmail.com', '5a5ee40d5aa976da2e27e1762c634bf2', '2022-02-22 06:44:27');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `ID` int(10) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`ID`, `CategoryName`, `CreationDate`) VALUES
(1, 'Logistic Deliveries', '2020-04-14 07:27:32'),
(2, 'Cleaning', '2020-04-14 07:49:09'),
(3, 'Essential Services', '2020-04-14 07:49:22'),
(4, 'eccomerce delivery boys', '2020-04-14 07:49:47'),
(5, 'Medical Supply', '2020-04-14 07:50:36'),
(8, 'Buy Grocery', '2020-06-30 15:05:55');

-- --------------------------------------------------------

--
-- Table structure for table `tblpass`
--

CREATE TABLE `tblpass` (
  `ID` int(10) NOT NULL,
  `PassNumber` varchar(200) DEFAULT NULL,
  `FullName` varchar(200) DEFAULT NULL,
  `ContactNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `IdentityType` varchar(200) DEFAULT NULL,
  `IdentityCardno` varchar(200) DEFAULT NULL,
  `Category` varchar(100) DEFAULT NULL,
  `FromDate` varchar(200) DEFAULT NULL,
  `ToDate` varchar(200) DEFAULT NULL,
  `PasscreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpass`
--

INSERT INTO `tblpass` (`ID`, `PassNumber`, `FullName`, `ContactNumber`, `Email`, `IdentityType`, `IdentityCardno`, `Category`, `FromDate`, `ToDate`, `PasscreationDate`) VALUES
(5, '460737139', 'sani patil', 8888888888, 'dummy@gmail.com', 'Voter Card', '2251', 'Cleaning', '2022-03-01', '2022-03-03', '2022-09-01 15:43:54'),
(6, '963522979', 'vaibhav dhongade', 99999999, 'dksfjdslkjf@gmail.com', 'Voter Card', '559', 'Cleaning', '2022-04-05', '2022-04-06', '2022-09-01 15:44:39'),
(7, '516758822', 'Jayant Bokade', 8806901090, 'mrjayant81@gmail.com', 'Adhar Card', '642328288066', 'Medical Supply', '2022-04-08', '2022-09-09', '2022-09-01 15:46:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpass`
--
ALTER TABLE `tblpass`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblpass`
--
ALTER TABLE `tblpass`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

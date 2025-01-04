-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 24, 2024 at 03:25 PM
-- Server version: 8.2.0
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pgasdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `name` varchar(65) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` mediumint DEFAULT NULL,
  `feedback` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`name`, `email`, `phone`, `feedback`) VALUES
('amit', 'Amit@gmail.com', 8388607, 'good area'),
('Anoop', 'Anoop@gmail.com', 8388607, 'thank you'),
('Jerry', 'jerry@gmail.com', 8388607, 'sdfas a'),
('kannan', 'adithyanadi@gmail.com', 8388607, 'dah shwn hns bw s');

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

DROP TABLE IF EXISTS `tbladmin`;
CREATE TABLE IF NOT EXISTS `tbladmin` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 1234561230, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbookpg`
--

DROP TABLE IF EXISTS `tblbookpg`;
CREATE TABLE IF NOT EXISTS `tblbookpg` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Userid` int DEFAULT NULL,
  `Pgid` int DEFAULT NULL,
  `BookingNumber` int NOT NULL,
  `CheckinDate` date DEFAULT NULL,
  `UserMsg` varchar(250) DEFAULT NULL,
  `BookingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Remark` varchar(50) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `RemDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `feedback` varchar(256) DEFAULT NULL,
  `rooms` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbookpg`
--

INSERT INTO `tblbookpg` (`ID`, `Userid`, `Pgid`, `BookingNumber`, `CheckinDate`, `UserMsg`, `BookingDate`, `Remark`, `Status`, `RemDate`, `feedback`, `rooms`) VALUES
(10, 5, 14, 154143106, '2024-09-02', 'rgs', '2024-09-21 09:26:04', NULL, NULL, NULL, NULL, 0),
(11, 5, 14, 673727546, '2024-09-28', 'zcz', '2024-09-21 09:27:50', NULL, NULL, NULL, NULL, 0),
(12, 5, 14, 969422040, '2024-10-05', 'saD', '2024-09-21 09:29:11', NULL, NULL, NULL, NULL, 0),
(13, 5, 14, 726314629, '2024-09-28', '76hgjh', '2024-09-21 09:30:51', NULL, NULL, NULL, NULL, 0),
(14, 5, 25, 674031688, '2024-09-28', 'ascds', '2024-09-21 13:21:47', NULL, NULL, NULL, NULL, 0),
(15, 5, 25, 131493158, '2024-09-27', 'rth', '2024-09-21 13:29:35', NULL, NULL, NULL, NULL, 0),
(16, 5, 25, 127219206, '2024-09-28', 'dcscz', '2024-09-21 13:34:06', NULL, NULL, NULL, NULL, 0),
(17, 5, 25, 525600591, '2024-09-28', 'dcscz', '2024-09-21 13:35:49', NULL, NULL, NULL, NULL, 0),
(18, 5, 25, 100383060, '2024-09-11', 'rgbc', '2024-09-21 13:54:48', NULL, NULL, NULL, NULL, 0),
(19, 5, 25, 606050038, '2024-09-11', 'rgbc', '2024-09-21 13:56:04', NULL, NULL, NULL, NULL, 0),
(36, 5, 11, 314913844, '2024-09-20', ' kjn;', '2024-09-21 15:01:25', NULL, NULL, NULL, NULL, 3),
(47, 5, 25, 898602682, '2024-09-25', 'aSD', '2024-09-21 16:31:23', NULL, NULL, NULL, NULL, 1),
(48, 5, 14, 154484130, '2024-09-25', 'ac', '2024-09-21 16:36:38', NULL, NULL, NULL, NULL, 12),
(49, 5, 11, 816024759, '2024-09-27', 'ds', '2024-09-21 16:48:23', NULL, NULL, NULL, NULL, 5),
(50, 5, 13, 694327006, '2024-09-28', 'sAX', '2024-09-21 17:20:01', NULL, NULL, NULL, NULL, 6),
(51, 5, 25, 103297549, '2024-09-27', 'adcx', '2024-09-21 17:40:54', NULL, NULL, NULL, NULL, 13),
(52, 5, 16, 526370850, '2024-09-27', 'dbfxv', '2024-09-21 17:52:22', NULL, NULL, NULL, NULL, 13),
(53, 5, 20, 416740782, '2024-09-27', 'aSD sd', '2024-09-21 18:17:03', NULL, NULL, NULL, NULL, 12),
(54, 5, 16, 470988810, '2024-09-28', 'ad', '2024-09-21 18:18:48', NULL, NULL, NULL, NULL, 12),
(55, 5, 11, 596777664, '2024-09-19', 'sgd', '2024-09-21 18:33:30', NULL, NULL, NULL, NULL, 3),
(56, 5, 11, 771554650, '2024-09-28', 'ads', '2024-09-21 18:36:19', NULL, NULL, NULL, NULL, 2),
(57, 5, 20, 365534645, '2024-09-27', 'sfc', '2024-09-21 18:36:40', NULL, NULL, NULL, NULL, 56),
(58, 3, 16, 639275602, '2024-09-04', 'new book', '2024-09-22 04:46:26', NULL, NULL, NULL, NULL, 30),
(59, 3, 26, 411809968, '2024-09-02', 'students ', '2024-09-22 04:58:06', 'booked', 'Confirmed', '2024-09-22 04:58:56', NULL, 5),
(63, 6, 27, 684422257, '2024-10-11', 'book', '2024-10-21 11:50:11', 'gud', 'Confirmed', '2024-10-21 11:51:08', NULL, 3),
(65, 6, 27, 802325562, '2024-10-31', 'plzz book', '2024-10-21 16:28:02', 'okk confirm', 'Confirmed', '2024-10-21 16:29:00', NULL, 4),
(66, 6, 27, 130849429, '2024-10-10', 'latest', '2024-10-21 16:31:18', 'cannot', 'Cancelled', '2024-10-21 16:32:00', NULL, 1),
(67, 6, 27, 463496174, '2024-10-19', 'no more', '2024-10-21 16:32:37', 'ok last', 'Confirmed', '2024-10-21 16:33:05', NULL, 1),
(68, 7, 28, 317305113, '2024-10-17', 'book plzz', '2024-10-23 14:27:06', 'approved', 'Confirmed', '2024-10-23 14:32:00', NULL, 3),
(69, 7, 29, 589333889, '2024-07-05', 'book plzz', '2024-10-23 15:29:23', 'Enjoy the days', 'Confirmed', '2024-10-23 15:30:33', NULL, 2),
(70, 7, 30, 323168243, '2024-10-02', 'book now', '2024-10-24 05:23:45', NULL, NULL, NULL, NULL, 1),
(71, 8, 28, 111812537, '2024-10-11', 'book', '2024-10-24 07:45:56', NULL, NULL, NULL, NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tblcity`
--

DROP TABLE IF EXISTS `tblcity`;
CREATE TABLE IF NOT EXISTS `tblcity` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `StateID` int DEFAULT NULL,
  `City` varchar(120) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcity`
--

INSERT INTO `tblcity` (`ID`, `StateID`, `City`, `CreationDate`) VALUES
(3, 3, 'Allahabad', '2023-07-07 08:41:00'),
(4, 3, 'Aligarh', '2023-07-07 08:41:00'),
(5, 3, 'Lucknow', '2023-07-07 08:41:00'),
(6, 2, 'Jaipur', '2023-07-07 08:41:00'),
(7, 8, 'Gangtok', '2023-07-07 08:41:00'),
(8, 8, 'Peeling', '2023-07-07 08:41:00'),
(10, 8, 'Ravangla', '2023-07-07 08:41:00'),
(11, 8, 'Mangan', '2023-07-07 08:41:00'),
(12, 2, 'Bhopal', '2023-07-07 08:41:00'),
(15, 11, 'Chennai', '2023-07-07 08:41:00'),
(17, 5, 'Delhi', '2023-07-25 18:30:01');

-- --------------------------------------------------------

--
-- Table structure for table `tblowner`
--

DROP TABLE IF EXISTS `tblowner`;
CREATE TABLE IF NOT EXISTS `tblowner` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `FullName` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblowner`
--

INSERT INTO `tblowner` (`ID`, `FullName`, `Email`, `MobileNumber`, `Password`, `RegDate`) VALUES
(5, 'anoop s', 'anoop@gmail.com', 9447178134, 'f925916e2754e5e03f75dd58a5733251', '2024-09-22 04:51:06'),
(6, 'karthik', 'karthik@gmail.com', 9633166057, 'f925916e2754e5e03f75dd58a5733251', '2024-09-24 17:34:30');

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

DROP TABLE IF EXISTS `tblpages`;
CREATE TABLE IF NOT EXISTS `tblpages` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext,
  `PageDescription` mediumtext,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Fulfillment` mediumtext NOT NULL,
  `FutureServices` mediumtext NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `UpdationDate`, `Fulfillment`, `FutureServices`) VALUES
(1, 'aboutus', 'About Us', '                                <div style=\"text-align: left;\"><b>PG Accommodation&nbsp;System</b></div><div style=\"text-align: left;\"><br></div><div style=\"text-align: left;\">The aim of pg accommodation system to provide user friendly environment to pg seeker at affordable price. Test data</div>', '2023-07-21 18:15:38', 'The technological revolution in computers has enhanced our abilities to teach. MDS has remained on the cutting edge by instituting the use of computer simulators and remote Web-accessed study material. The company will continue to seek new ways to provide a better and more convenient teaching environment through technology. The virtual class room is a thing of the near future, and we are positioning ourselves to be among the first who will provide such services.', 'The company is in the process of launching a new division for the Seattle office that will encompass training classes for commercial drivers licenses and motorcycle licenses. These services will include comprehensive indoor training classes, job placement assistance for truck and bus drivers, and rented vehicles to practice with, and use for license testing. This program will be launched in 3rd quarter 2004. Depending on its success, management plans to incorporate this program into all the field offices by 3rd quarter 2005..'),
(2, 'contactus', 'Contact Us', '<b>PG Accomodation System</b><div><b>Contact Number:</b>+91-96784532143</div><div><b>email: </b>info@gmail.com</div><div><b>Address : kollam ,kerala</b></div>', '2024-10-23 14:41:02', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblpg`
--

DROP TABLE IF EXISTS `tblpg`;
CREATE TABLE IF NOT EXISTS `tblpg` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `OwnerID` int NOT NULL,
  `StateName` varchar(200) DEFAULT NULL,
  `CityName` varchar(200) DEFAULT NULL,
  `PGTitle` varchar(200) DEFAULT NULL,
  `Type` varchar(120) DEFAULT NULL,
  `RPmonth` varchar(120) DEFAULT NULL,
  `norooms` varchar(45) DEFAULT NULL,
  `Address` varchar(120) DEFAULT NULL,
  `Image` varchar(200) DEFAULT NULL,
  `Electricity` varchar(40) DEFAULT NULL,
  `Parking` varchar(40) DEFAULT NULL,
  `Refregerator` varchar(40) DEFAULT NULL,
  `Furnished` varchar(40) DEFAULT NULL,
  `AC` varchar(40) DEFAULT NULL,
  `Balcony` varchar(40) DEFAULT NULL,
  `StudyTable` varchar(40) DEFAULT NULL,
  `Laundry` varchar(40) DEFAULT NULL,
  `Security` varchar(40) DEFAULT NULL,
  `MealsBreakfast` varchar(45) DEFAULT NULL,
  `MealLunch` varchar(45) NOT NULL,
  `MealDinner` varchar(45) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `IsActive` int DEFAULT NULL,
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpg`
--

INSERT INTO `tblpg` (`ID`, `OwnerID`, `StateName`, `CityName`, `PGTitle`, `Type`, `RPmonth`, `norooms`, `Address`, `Image`, `Electricity`, `Parking`, `Refregerator`, `Furnished`, `AC`, `Balcony`, `StudyTable`, `Laundry`, `Security`, `MealsBreakfast`, `MealLunch`, `MealDinner`, `RegDate`, `IsActive`, `LastUpdationDate`) VALUES
(26, 5, 'Delhi/NCR', 'Delhi', 'SKYLINE', '', '5000', '4', 'kedernath nagar 234 ', 'efc7da8df082905ed77570509e96f33c.jpg', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '2024-09-22 04:54:55', NULL, '2024-10-23 15:18:04'),
(27, 6, 'Tamilnadu', 'Chennai', 'TAJ ', '', '5000', '0', 'santhi nagar 233', '5f732a84bfba6ba0230e11ef4e49ba38.jpg', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '2024-09-24 17:38:05', NULL, '2024-10-23 15:23:41'),
(28, 6, 'Tamilnadu', 'Chennai', 'NANI', '', '6000', '5', 'kersava bhavanam 143', '750df99ebc5eb4d709fd96a35f57de6ajpeg', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'Yes', '2024-10-23 14:19:51', NULL, '2024-10-24 05:27:12'),
(29, 5, 'Madhya Pradesh', 'Jaipur', 'THAR', 'Boys', '7000', '4', 'shristi nagar 344', 'd89f8359edc7d84465db4be60b9b9420.jpg', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '2024-10-23 15:17:07', NULL, '2024-10-23 15:30:33'),
(30, 6, 'Madhya Pradesh', 'Jaipur', 'ASSET', 'Both', '6000', '4', 'sathi nagar 5443', 'cc6cbcc3c987ea01bf1ea1ea9a58d0c2.jpg', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'No', 'Yes', 'Yes', 'Yes', '2024-10-23 15:23:26', NULL, NULL),
(31, 6, 'Sikkim', 'Gangtok', 'ELITE', 'Boys', '5000', '3', 'harthi sathar 272', '11991d15f6b374fd94b1be9dc8471259.jpg', 'Yes', 'No', 'No', 'Yes', 'No', 'Yes', 'No', 'Yes', 'No', 'Yes', 'Yes', 'Yes', '2024-10-23 15:27:56', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstate`
--

DROP TABLE IF EXISTS `tblstate`;
CREATE TABLE IF NOT EXISTS `tblstate` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `StateName` varchar(120) DEFAULT NULL,
  `RegState` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstate`
--

INSERT INTO `tblstate` (`ID`, `StateName`, `RegState`) VALUES
(2, 'Madhya Pradesh', '2023-07-21 07:07:03'),
(3, 'Uttar Pradesh', '2023-07-21 07:07:03'),
(4, 'Andra Pradesh', '2023-07-21 07:07:03'),
(5, 'Delhi/NCR', '2023-07-21 07:07:03'),
(6, 'Kerala', '2023-07-21 07:07:03'),
(7, 'Arunachal Pradesh', '2023-07-21 07:07:03'),
(8, 'Sikkim', '2023-07-21 07:07:03'),
(9, 'Maharastra', '2023-07-21 07:07:03'),
(10, 'Gujrat', '2023-07-21 07:07:03'),
(11, 'Tamilnadu', '2023-07-21 07:07:03');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

DROP TABLE IF EXISTS `tbluser`;
CREATE TABLE IF NOT EXISTS `tbluser` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `FullName` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint DEFAULT NULL,
  `FatherName` varchar(120) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `ComAddress` varchar(250) DEFAULT NULL,
  `EmergencyNumber` bigint DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FullName`, `Email`, `MobileNumber`, `FatherName`, `dob`, `ComAddress`, `EmergencyNumber`, `Password`, `RegDate`, `LastUpdationDate`) VALUES
(6, 'Akash', 'akash@gmail.com', 8283838322, NULL, NULL, NULL, NULL, 'f925916e2754e5e03f75dd58a5733251', '2024-09-24 17:41:42', NULL),
(7, 'Anoop', 'Anoop@gmail.com', 9765434588, NULL, NULL, NULL, NULL, 'f925916e2754e5e03f75dd58a5733251', '2024-10-23 13:29:34', NULL),
(8, 'babu', 'babu@gmail.com', 9776564674, NULL, NULL, NULL, NULL, 'f925916e2754e5e03f75dd58a5733251', '2024-10-24 07:41:44', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

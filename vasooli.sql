-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 01, 2018 at 05:42 PM
-- Server version: 5.5.34
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `vasooli`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `event_Id` int(12) NOT NULL AUTO_INCREMENT,
  `event_Name` varchar(500) NOT NULL,
  `event_Date` date NOT NULL,
  `event_Notes` text,
  `event_Status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`event_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `events`
--


-- --------------------------------------------------------

--
-- Table structure for table `eventtype`
--

CREATE TABLE IF NOT EXISTS `eventtype` (
  `eventType_Id` int(12) NOT NULL AUTO_INCREMENT,
  `eventType_Name` varchar(250) NOT NULL,
  `eventType_Amount` int(12) NOT NULL,
  `eventType_Status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`eventType_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `eventtype`
--

INSERT INTO `eventtype` (`eventType_Id`, `eventType_Name`, `eventType_Amount`, `eventType_Status`) VALUES
(1, 'Birthday', 200, 1),
(2, 'Farewell', 100, 1),
(3, 'Wedding', 100, 1);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE IF NOT EXISTS `members` (
  `member_Id` int(12) NOT NULL AUTO_INCREMENT,
  `member_EmpId` int(12) NOT NULL,
  `member_Name` varchar(250) NOT NULL,
  `member_EmailId` varchar(250) NOT NULL,
  `member_Image` varchar(500) DEFAULT NULL,
  `member_Role` tinyint(1) NOT NULL COMMENT '1-admin, 0-member',
  `member_DateOfBirth` date DEFAULT NULL,
  `member_Password` varchar(250) DEFAULT NULL,
  `member_Status` smallint(5) NOT NULL DEFAULT '0' COMMENT '0-inactive,1-active',
  `member_CreatedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `member_CreatedBy` int(12) NOT NULL COMMENT 'foreignkey in future',
  `member_PhoneNumber` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`member_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `members`
--


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

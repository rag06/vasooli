-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 12, 2018 at 04:10 AM
-- Server version: 5.5.34
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ams`
--

-- --------------------------------------------------------

--
-- Table structure for table `admission_events`
--

CREATE TABLE IF NOT EXISTS `admission_events` (
  `admission_id` varchar(500) NOT NULL,
  `admission_EventName` varchar(500) NOT NULL,
  `admission_StartDate` date NOT NULL,
  `admission_EndDate` date DEFAULT NULL,
  `admission_termsandcondition` text,
  `admission_attachment` varchar(500) DEFAULT NULL,
  `admission_classId` int(12) NOT NULL,
  `admission_SchoolId` varchar(500) NOT NULL,
  `admission_status` smallint(6) NOT NULL,
  `admission_createdOn` datetime NOT NULL,
  PRIMARY KEY (`admission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admission_events`
--


-- --------------------------------------------------------

--
-- Table structure for table `admission_quota`
--

CREATE TABLE IF NOT EXISTS `admission_quota` (
  `admission_quota_id` varchar(500) NOT NULL,
  `admission_quota_admission_id` varchar(500) NOT NULL,
  `admission_quota_seats` int(12) NOT NULL DEFAULT '0',
  `admission_quota_fees` decimal(10,2) NOT NULL DEFAULT '0.00',
  `admission_quota_status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`admission_quota_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admission_quota`
--


-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE IF NOT EXISTS `attachments` (
  `attachments_id` varchar(500) NOT NULL,
  `attachments_path` varchar(500) NOT NULL,
  `attachments_size` int(11) NOT NULL,
  `attachments_status` tinyint(1) NOT NULL DEFAULT '1',
  `attachments_createdOn` datetime DEFAULT NULL,
  PRIMARY KEY (`attachments_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attachments`
--


-- --------------------------------------------------------

--
-- Table structure for table `masters_city`
--

CREATE TABLE IF NOT EXISTS `masters_city` (
  `city_id` varchar(500) NOT NULL,
  `city_name` varchar(500) NOT NULL,
  `city_states` varchar(500) NOT NULL,
  `city_status` tinyint(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `masters_city`
--


-- --------------------------------------------------------

--
-- Table structure for table `masters_country`
--

CREATE TABLE IF NOT EXISTS `masters_country` (
  `country_id` varchar(500) NOT NULL,
  `country_name` varchar(500) NOT NULL,
  `country_status` tinyint(1) NOT NULL DEFAULT '2',
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `masters_country`
--


-- --------------------------------------------------------

--
-- Table structure for table `masters_locality`
--

CREATE TABLE IF NOT EXISTS `masters_locality` (
  `locality_id` varchar(500) NOT NULL,
  `locality_name` varchar(500) NOT NULL,
  `locality_city` varchar(500) NOT NULL,
  `locality_status` tinyint(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`locality_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `masters_locality`
--


-- --------------------------------------------------------

--
-- Table structure for table `masters_school_board`
--

CREATE TABLE IF NOT EXISTS `masters_school_board` (
  `school_board_id` int(12) NOT NULL AUTO_INCREMENT,
  `school_board_name` varchar(500) NOT NULL,
  `school_board_code` varchar(250) DEFAULT NULL,
  `school_board_status` tinyint(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`school_board_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `masters_school_board`
--


-- --------------------------------------------------------

--
-- Table structure for table `masters_school_classes`
--

CREATE TABLE IF NOT EXISTS `masters_school_classes` (
  `school_classes_id` int(12) NOT NULL,
  `school_classes_name` varchar(500) NOT NULL,
  `school_classes_status` tinyint(1) NOT NULL DEFAULT '1',
  `school_classes_sequence` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `masters_school_classes`
--


-- --------------------------------------------------------

--
-- Table structure for table `masters_school_medium`
--

CREATE TABLE IF NOT EXISTS `masters_school_medium` (
  `school_medium_id` int(12) NOT NULL AUTO_INCREMENT,
  `school_medium_name` varchar(250) NOT NULL,
  `school_medium_status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`school_medium_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `masters_school_medium`
--


-- --------------------------------------------------------

--
-- Table structure for table `masters_states`
--

CREATE TABLE IF NOT EXISTS `masters_states` (
  `states_id` varchar(500) NOT NULL,
  `states_name` varchar(500) NOT NULL,
  `states_country` varchar(500) NOT NULL,
  `states_status` tinyint(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `masters_states`
--


-- --------------------------------------------------------

--
-- Table structure for table `masters_user_roles`
--

CREATE TABLE IF NOT EXISTS `masters_user_roles` (
  `user_role_id` int(12) unsigned NOT NULL,
  `user_role_name` varchar(500) NOT NULL,
  `user_role_status` tinyint(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`user_role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `masters_user_roles`
--


-- --------------------------------------------------------

--
-- Table structure for table `mastes_quota`
--

CREATE TABLE IF NOT EXISTS `mastes_quota` (
  `quota_id` int(12) NOT NULL AUTO_INCREMENT,
  `quota_name` varchar(500) NOT NULL,
  `quota_short_code` varchar(250) NOT NULL,
  `quota_status` tinyint(2) NOT NULL DEFAULT '1',
  `quota_sequence` int(10) DEFAULT NULL,
  PRIMARY KEY (`quota_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `mastes_quota`
--


-- --------------------------------------------------------

--
-- Table structure for table `notice_board`
--

CREATE TABLE IF NOT EXISTS `notice_board` (
  `notice_board_id` varchar(500) NOT NULL,
  `notice_board_title` varchar(500) NOT NULL,
  `notice_board_content` text NOT NULL,
  `notice_board_schoolId` varchar(500) NOT NULL,
  `notice_board_classId` int(12) NOT NULL,
  `notice_board_status` tinyint(1) NOT NULL DEFAULT '1',
  `notice_board_createdOn` datetime DEFAULT NULL,
  `notice_board_modifiedOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`notice_board_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice_board`
--


-- --------------------------------------------------------

--
-- Table structure for table `school_classes`
--

CREATE TABLE IF NOT EXISTS `school_classes` (
  `school_classes_id` varchar(500) NOT NULL,
  `school_classes_schoolId` varchar(500) NOT NULL,
  `school_classes_classId` int(12) NOT NULL,
  `school_classes_status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`school_classes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_classes`
--


-- --------------------------------------------------------

--
-- Table structure for table `school_info`
--

CREATE TABLE IF NOT EXISTS `school_info` (
  `school_id` varchar(500) NOT NULL,
  `school_name` varchar(500) NOT NULL,
  `school_displayName` varchar(250) NOT NULL,
  `school_phone` varchar(50) NOT NULL,
  `school_email` varchar(250) NOT NULL,
  `school_address` varchar(500) NOT NULL,
  `school_pincode` varchar(100) NOT NULL,
  `school_locality` varchar(500) NOT NULL,
  `school_city` varchar(500) NOT NULL,
  `school_state` varchar(500) NOT NULL,
  `school_country` varchar(500) NOT NULL,
  `school_medium` int(12) NOT NULL,
  `school_board` int(12) NOT NULL,
  `school_affliationNo` varchar(250) NOT NULL,
  `school_logo` varchar(500) NOT NULL,
  `school_status` smallint(6) NOT NULL DEFAULT '0',
  `school_createdOn` datetime DEFAULT NULL,
  `school_modifiedOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`school_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_info`
--


-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE IF NOT EXISTS `user_info` (
  `user_id` varchar(2) NOT NULL,
  `user_name` varchar(11) NOT NULL,
  `user_displayName` varchar(11) NOT NULL,
  `user_phone` varchar(11) NOT NULL,
  `user_email` varchar(11) NOT NULL,
  `user_username` varchar(11) NOT NULL,
  `user_password` varchar(500) NOT NULL,
  `user_roleId` int(12) NOT NULL,
  `user_schoolId` varchar(500) NOT NULL,
  `user_createdOn` datetime DEFAULT NULL,
  `user_modifiedOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `user_verifyCode` varchar(50) DEFAULT NULL,
  `user_status` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

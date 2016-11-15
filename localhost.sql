-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Oct 08, 2016 at 12:47 PM
-- Server version: 5.5.52-cll
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mnvbcou1_musiccafe`
--
CREATE DATABASE IF NOT EXISTS `mnvbcou1_musiccafe` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mnvbcou1_musiccafe`;

-- --------------------------------------------------------

--
-- Table structure for table `bg_points`
--

CREATE TABLE IF NOT EXISTS `bg_points` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `player_name` varchar(30) NOT NULL,
  `points` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `bg_points`
--

INSERT INTO `bg_points` (`id`, `player_name`, `points`) VALUES
(1, 'Alberto', 5),
(2, 'Brs_Edu2', 5),
(3, 'CarminhaCCR', 5),
(4, 'Chessykatz', 5),
(5, 'da_terminator_x', 5),
(6, 'IFeelADouble6', 5),
(7, 'MRC_Melisa_', 5),
(8, 'UBG_Angel_D_8', 5),
(9, 'victor54', 5),
(10, 'devinm21', 60),
(11, 'poppop', 60),
(12, 'TM7_CharrM5_', 90),
(13, 'MC_Vicky', 120),
(14, 'EU_IT_mirejo', 5),
(15, 'nanatravels', 5),
(16, 'Obonogo', 5),
(17, 'UBG_Angel_D_8', 5),
(18, 'UBG_Steely1', 5),
(19, 'Casperssun', 10),
(20, 'humanbean650', 10),
(21, 'MC_Vicky', 10),
(22, 'soundofthunder', 10),
(23, 'TM7_TheGiggler', 10),
(24, 'BFCPISLIK', 15),
(25, 'CarminhaCCR', 15),
(26, 'real_chainsaw', 15),
(27, 'Brs_Edu2', 70),
(28, 'EU_IT_VIANG', 95),
(29, 'victor54', 130);

-- --------------------------------------------------------

--
-- Table structure for table `crib_points`
--

CREATE TABLE IF NOT EXISTS `crib_points` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `nic` varchar(30) DEFAULT NULL,
  `points` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_id` int(11) NOT NULL,
  `menu_name` varchar(30) NOT NULL,
  `position` int(3) NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `subject_id`, `menu_name`, `position`, `visible`, `content`) VALUES
(1, 1, 'Home', 1, 1, '<p><strong><span style="color: #000080;">Welcome To The&nbsp;<span style="text-decoration: underline;"><em>Music Cafe</em></span></span></strong><span style="color: #000080;"><em> Home Page!</em></span></p>'),
(2, 1, 'Host Area', 2, 1, 'Welcome to the host Area.........'),
(3, 2, 'Backgammon Points', 1, 1, 'This is where all the player points will be shown....'),
(7, 2, 'Cribbage Points', 2, 1, 'This is where all the player points will be shown....'),
(8, 3, 'Admin Login', 1, 1, '<a href="staff.php">Login to Admin Area</a>'),
(9, 6, 'Tim''s Test Page', 1, 0, '<p>This is a test page</p>');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE IF NOT EXISTS `subjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(30) NOT NULL,
  `position` int(3) NOT NULL,
  `visible` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `menu_name`, `position`, `visible`) VALUES
(1, 'Music Cafe Home', 1, 1),
(2, 'Points', 2, 1),
(3, 'About Us', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `hashed_password` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `hashed_password`) VALUES
(2, 'mike', '0a1b87f9b591e351aebd2a55101747dfc2aa7624'),
(3, 'Waitress', '36c616f6ca7a3f585838793d9c3b29f3df7224ba'),
(4, 'tim', '6367c48dd193d56ea7b0baad25b19455e529f5ee');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

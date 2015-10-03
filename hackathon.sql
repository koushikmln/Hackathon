-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 03, 2015 at 09:07 PM
-- Server version: 5.5.44-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hackathon`
--

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE IF NOT EXISTS `game` (
  `nick` varchar(30) NOT NULL,
  `level` int(11) NOT NULL DEFAULT '1',
  `score` int(11) NOT NULL DEFAULT '0',
  `skip` int(11) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`nick`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`nick`, `level`, `score`, `skip`, `time`) VALUES
('aahachooplo', 7, 21, 0, '2015-10-03 07:28:05'),
('adm_illuminati', 1, 200, 0, '2015-10-03 05:16:21'),
('alasort', 9, 36, 0, '2015-10-03 07:29:40'),
('aur_upar', 8, 28, 0, '2015-10-03 07:40:29'),
('axel17', 2, 1, 0, '2015-10-03 05:47:45'),
('call_us_KRaTA', 5, 10, 0, '2015-10-03 07:26:57'),
('Carbon Dioxide', 5, 10, 0, '2015-10-03 07:03:53'),
('DigitalMachine', 5, 10, 0, '2015-10-03 07:30:49'),
('error', 5, 10, 0, '2015-10-03 07:27:34'),
('ERROR 404', 5, 10, 0, '2015-10-03 07:05:48'),
('FURIOUS 8', 5, 10, 0, '2015-10-03 07:27:32'),
('GravityChildren', 6, 15, 0, '2015-10-03 07:30:45'),
('grey', 5, 10, 0, '2015-10-03 07:06:51'),
('limitless', 8, 28, 0, '2015-10-03 07:31:17'),
('Mast-Vast', 5, 10, 0, '2015-10-03 07:07:58'),
('noob', 3, 3, 0, '2015-10-03 05:13:39'),
('Nutz', 5, 10, 0, '2015-10-03 07:05:43'),
('OlogN', 10, 45, 0, '2015-10-03 07:22:24'),
('OPTIMAL', 4, 6, 0, '2015-10-03 05:57:58'),
('Red_Devils', 6, 15, 0, '2015-10-03 07:11:44'),
('The 8ackerz', 5, 10, 0, '2015-10-03 07:04:58'),
('void', 7, 21, 0, '2015-10-03 07:12:35'),
('winstrap', 7, 21, 0, '2015-10-03 07:10:21');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE IF NOT EXISTS `logs` (
  `nick` varchar(30) NOT NULL,
  `level` int(11) NOT NULL,
  `answer` varchar(100) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`nick`, `level`, `answer`, `time`) VALUES
('ERROR 404', 4, '550', '2015-10-03 07:05:48'),
('grey', 4, '529', '2015-10-03 07:05:50'),
('call_us_KRaTA', 4, '421', '2015-10-03 07:05:51'),
('call_us_KRaTA', 4, '422', '2015-10-03 07:05:53'),
('grey', 4, '530', '2015-10-03 07:05:53'),
('call_us_KRaTA', 4, '423', '2015-10-03 07:05:54'),
('alasort', 8, 'virus', '2015-10-03 07:05:56'),
('call_us_KRaTA', 4, '424', '2015-10-03 07:05:56'),
('call_us_KRaTA', 4, '425', '2015-10-03 07:05:57'),
('grey', 4, '531', '2015-10-03 07:05:57'),
('call_us_KRaTA', 4, '426', '2015-10-03 07:05:58'),
('Carbon Dioxide', 5, 'justchill', '2015-10-03 07:05:59'),
('call_us_KRaTA', 4, '27', '2015-10-03 07:05:59'),
('grey', 4, '532', '2015-10-03 07:06:00'),
('call_us_KRaTA', 4, '8', '2015-10-03 07:06:00'),
('grey', 4, '533', '2015-10-03 07:06:02'),
('call_us_KRaTA', 4, '427', '2015-10-03 07:06:03'),
('grey', 4, '534', '2015-10-03 07:06:04'),
('call_us_KRaTA', 4, '428', '2015-10-03 07:06:05'),
('grey', 4, '535', '2015-10-03 07:06:06'),
('call_us_KRaTA', 4, '430', '2015-10-03 07:06:08'),
('grey', 4, '536', '2015-10-03 07:06:09'),
('call_us_KRaTA', 4, '431\\', '2015-10-03 07:06:10'),
('grey', 4, '537', '2015-10-03 07:06:11'),
('call_us_KRaTA', 4, '431', '2015-10-03 07:06:12'),
('call_us_KRaTA', 4, '432', '2015-10-03 07:06:13'),
('grey', 4, '538', '2015-10-03 07:06:15'),
('call_us_KRaTA', 4, '433', '2015-10-03 07:06:15'),
('call_us_KRaTA', 4, '434', '2015-10-03 07:06:18'),
('grey', 4, '539', '2015-10-03 07:06:18'),
('call_us_KRaTA', 4, '435', '2015-10-03 07:06:19'),
('grey', 4, '540', '2015-10-03 07:06:21'),
('call_us_KRaTA', 4, '436', '2015-10-03 07:06:21'),
('call_us_KRaTA', 4, '437', '2015-10-03 07:06:23'),
('call_us_KRaTA', 4, '438', '2015-10-03 07:06:25'),
('grey', 4, '541', '2015-10-03 07:06:25'),
('grey', 4, '542', '2015-10-03 07:06:27'),
('grey', 4, '543', '2015-10-03 07:06:30'),
('grey', 4, '544', '2015-10-03 07:06:32'),
('grey', 4, '545', '2015-10-03 07:06:35'),
('grey', 4, '546', '2015-10-03 07:06:38'),
('grey', 4, '547', '2015-10-03 07:06:41'),
('grey', 4, '548', '2015-10-03 07:06:44'),
('grey', 4, '549', '2015-10-03 07:06:48'),
('grey', 4, '550', '2015-10-03 07:06:51'),
('winstrap', 6, '1', '2015-10-03 07:07:12'),
('void', 6, '45895', '2015-10-03 07:07:20'),
('void', 6, '45895', '2015-10-03 07:07:28'),
('winstrap', 6, '2', '2015-10-03 07:07:30'),
('winstrap', 6, '3', '2015-10-03 07:07:32'),
('winstrap', 6, '4', '2015-10-03 07:07:33'),
('winstrap', 6, '5', '2015-10-03 07:07:35'),
('winstrap', 6, '6', '2015-10-03 07:07:36'),
('winstrap', 6, '7', '2015-10-03 07:07:37'),
('winstrap', 6, '8', '2015-10-03 07:07:39'),
('winstrap', 6, '9', '2015-10-03 07:07:40'),
('winstrap', 6, '10', '2015-10-03 07:07:43'),
('winstrap', 6, '11', '2015-10-03 07:07:45'),
('winstrap', 6, '12', '2015-10-03 07:07:47'),
('winstrap', 6, '13', '2015-10-03 07:07:50'),
('mast-vast', 4, '550', '2015-10-03 07:07:58'),
('OlogN', 8, 'PINGU', '2015-10-03 07:08:32'),
('Red_Devils', 4, '5504', '2015-10-03 07:08:55'),
('Red_Devils', 4, '550', '2015-10-03 07:08:59'),
('Red_Devils', 5, '550', '2015-10-03 07:09:00'),
('FURIOUS 8', 4, '19', '2015-10-03 07:09:29'),
('winstrap', 6, '42678', '2015-10-03 07:10:21'),
('Carbon Dioxide', 5, 'adm_illuminati', '2015-10-03 07:10:25'),
('The 8ackerz', 5, 'answer', '2015-10-03 07:10:26'),
('Carbon Dioxide', 5, 'admin', '2015-10-03 07:10:30'),
('The 8ackerz', 5, 'hackathon', '2015-10-03 07:10:36'),
('The 8ackerz', 5, '200', '2015-10-03 07:10:36'),
('Carbon Dioxide', 5, 'illuminati', '2015-10-03 07:10:38'),
('The 8ackerz', 5, 'hack', '2015-10-03 07:10:40'),
('void', 6, '45895', '2015-10-03 07:10:49'),
('void', 6, '45895', '2015-10-03 07:10:52'),
('limitless', 6, '19850', '2015-10-03 07:11:26'),
('Red_Devils', 5, 'pikachu', '2015-10-03 07:11:44'),
('void', 6, '42678', '2015-10-03 07:12:35'),
('limitless', 6, '42678', '2015-10-03 07:12:37'),
('winstrap', 7, '7277', '2015-10-03 07:14:08'),
('winstrap', 7, 'naruto', '2015-10-03 07:14:24'),
('Nutz', 5, 'leaderboard', '2015-10-03 07:15:10'),
('alasort', 8, 'php', '2015-10-03 07:15:32'),
('winstrap', 7, 'raichu', '2015-10-03 07:15:35'),
('alasort', 8, 'server', '2015-10-03 07:15:35'),
('alasort', 8, 'tomcat', '2015-10-03 07:15:38'),
('alasort', 8, 'apache', '2015-10-03 07:15:41'),
('OlogN', 9, '9bf25b8a51f4b537725e7c8a9b6d9585', '2015-10-03 07:15:45'),
('FURIOUS 8', 4, '420', '2015-10-03 07:16:01'),
('winstrap', 7, 'anime', '2015-10-03 07:16:17'),
('aur_upar', 4, '550', '2015-10-03 07:17:17'),
('aahachooplo', 6, '1035', '2015-10-03 07:17:23'),
('aahachooplo', 6, '1889', '2015-10-03 07:18:47'),
('aur_upar', 5, 'pikachu', '2015-10-03 07:18:59'),
('aahachooplo', 6, '2337', '2015-10-03 07:19:44'),
('aahachooplo', 6, '854', '2015-10-03 07:20:11'),
('OPTIMAL', 4, 'quotes', '2015-10-03 07:20:31'),
('OlogN', 9, 'getkey', '2015-10-03 07:20:35'),
('OPTIMAL', 4, 'loop', '2015-10-03 07:20:36'),
('aahachooplo', 6, '28182', '2015-10-03 07:21:02'),
('limitless', 7, '1234', '2015-10-03 07:21:27'),
('limitless', 7, '1441', '2015-10-03 07:21:34'),
('limitless', 7, '2132', '2015-10-03 07:21:39'),
('limitless', 7, '0000', '2015-10-03 07:21:44'),
('limitless', 7, '0001', '2015-10-03 07:21:48'),
('limitless', 7, '0001', '2015-10-03 07:21:53'),
('limitless', 7, '0002', '2015-10-03 07:21:57'),
('limitless', 7, '0003', '2015-10-03 07:22:01'),
('limitless', 7, '0004', '2015-10-03 07:22:05'),
('OPTIMAL', 4, '3', '2015-10-03 07:22:12'),
('OlogN', 9, 'alibaba', '2015-10-03 07:22:24'),
('winstrap', 7, 'wrong', '2015-10-03 07:22:26'),
('aahachooplo', 6, '1708', '2015-10-03 07:22:51'),
('aahachooplo', 6, '1738', '2015-10-03 07:24:02'),
('aahachooplo', 6, '43500', '2015-10-03 07:26:30'),
('aur_upar', 6, '33678', '2015-10-03 07:26:41'),
('call_us_KRaTA', 4, '550', '2015-10-03 07:26:56'),
('aahachooplo', 6, '42786', '2015-10-03 07:27:26'),
('FURIOUS 8', 4, '550', '2015-10-03 07:27:32'),
('error', 4, '550', '2015-10-03 07:27:34'),
('Red_Devils', 6, '101', '2015-10-03 07:27:34'),
('aahachooplo', 6, '42876', '2015-10-03 07:27:36'),
('aur_upar', 6, '42678', '2015-10-03 07:28:03'),
('aahachooplo', 6, '42678', '2015-10-03 07:28:05'),
('call_us_KRaTA', 5, '550', '2015-10-03 07:28:46'),
('OPTIMAL', 4, '477', '2015-10-03 07:28:49'),
('call_us_KRaTA', 5, '550', '2015-10-03 07:28:50'),
('OPTIMAL', 4, '400', '2015-10-03 07:29:09'),
('Carbon Dioxide', 5, 'sql', '2015-10-03 07:29:12'),
('Carbon Dioxide', 5, 'sqlinjection\\', '2015-10-03 07:29:19'),
('Carbon Dioxide', 5, 'hack', '2015-10-03 07:29:30'),
('Red_Devils', 6, '100', '2015-10-03 07:29:33'),
('alasort', 8, 'pingu', '2015-10-03 07:29:33'),
('Red_Devils', 6, '1010', '2015-10-03 07:29:37'),
('alasort', 8, 'PINGU', '2015-10-03 07:29:40'),
('Red_Devils', 6, '1001', '2015-10-03 07:29:40'),
('Red_Devils', 6, '1021', '2015-10-03 07:29:43'),
('Red_Devils', 6, '1034', '2015-10-03 07:29:46'),
('call_us_KRaTA', 5, '550', '2015-10-03 07:30:29'),
('GravityChildren', 5, 'pikachu', '2015-10-03 07:30:45'),
('DigitalMachine', 4, '550', '2015-10-03 07:30:49'),
('limitless', 7, 'clementine', '2015-10-03 07:31:17'),
('aur_upar', 7, '5555', '2015-10-03 07:35:09'),
('aur_upar', 7, '6565', '2015-10-03 07:35:24'),
('aur_upar', 7, 'clemenite', '2015-10-03 07:37:21'),
('aur_upar', 7, 'clemenite', '2015-10-03 07:37:38'),
('aur_upar', 7, 'clemanite', '2015-10-03 07:38:18'),
('aur_upar', 7, '1209', '2015-10-03 07:40:05'),
('aur_upar', 7, 'clementine', '2015-10-03 07:40:29');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `level` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL DEFAULT 'null.jpg',
  `answer` varchar(100) NOT NULL,
  `hint` varchar(100) NOT NULL,
  `hint_type` int(11) NOT NULL,
  PRIMARY KEY (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`level`, `title`, `image`, `answer`, `hint`, `hint_type`) VALUES
(0, '', 'lvl0.png', 'mystique', '', 0),
(1, '', 'lvl1.jpg', 'fairelabise', 'buccae', 1),
(2, 'Greatness', 'lvl2.jpg', 'nelsonmandela', '', 1),
(3, 'S', 'lvl3.jpg', 'seanbean', 'valar morghulis', 1),
(4, 'H', 'lvl4.png', 'hitopadesha', 'prince', 1),
(5, 'E', 'lvl5.png', 'ellysealexandraperry', '"+(111101)"', 1),
(6, 'R', 'lvl6.png', 'retcon', 'convenience', 1),
(7, 'L', 'vijay.png', 'lalbahadurshastri', '232101', 1),
(8, 'O', 'lvl8.png', 'opium', '', 0),
(9, 'C', 'lvl9.png', 'cripwalk', 'LA gang', 1),
(10, 'K', 'lvl10.png', 'krypton', '', 0),
(11, '', 'book.png', 'julesverne', 'Favet Neptunus eunti', 1),
(12, '', 'cryptography.png', 'alanturing', '', 0),
(13, '', 'lvl13.png', 'marcbodnick', 'Community & Business Team Leader', 2),
(14, '', 'lvl14.png', 'anagram', '1C8cslt', 1),
(15, '', 'lvl15.png', 'thomasthetankengine', 'LBSC', 1),
(16, '', 'lvl16.png', 'backrub', 'origins', 1),
(17, 'Babaji ki Booti', 'lvl17.png', 'splhcb', '', 0),
(18, 'Father', 'lvl18.png', 'thewealthofnations', 'MDCCLXXVI', 1),
(19, '', 'lvl19.png', 'escopetarra', 'Make music not violence', 1),
(20, '', 'hiddeninplainsight.png', 'prembeharinarainraizada', '', 0),
(21, '', 'lvl21.png', 'isaacnewton', 'malus', 1),
(22, '', 'lvl22.jpg', 'mtgox', '650000', 1),
(23, '', 'trip.png', 'thedivertinghistoryofjohngilpin', '', 0),
(24, '', 'lvl24.png', 'imp', 'Astas ''M''athchomaroon'' okeosaan naqisa anni', 1),
(25, 'Rise and Rise', 'caesar.png', 'nawazuddinsiddiqui', 'MbnPjh-RASI', 1),
(26, '', 'lvl26.png', 'wolfgangamadeusmozart', 'porta', 1),
(27, '', 'lvl27.png', 'avoirdupois', '', 0),
(28, 'Look closely', 'null.jpg', 'venice', 'http://i.imgur.com/Z952wYl.png', 2),
(29, '', 'bride.png', 'killbillvolume1', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE IF NOT EXISTS `registration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name1` varchar(50) NOT NULL,
  `name2` varchar(50) NOT NULL,
  `roll1` varchar(20) NOT NULL,
  `roll2` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nick` varchar(30) NOT NULL,
  `email1` varchar(50) NOT NULL,
  `email2` varchar(50) NOT NULL,
  `college` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nick` (`nick`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `name1`, `name2`, `roll1`, `roll2`, `password`, `nick`, `email1`, `email2`, `college`) VALUES
(15, 'Subham', 'Yash Vardhan', 'BE/10123/2013', 'BE/10205/2013', '$2y$10$3soXYMbTX64arbhJhFrBveiQ6mdJ1P2Ejk0IeL0FHEacOf.JCla3i', 'winstrap', 'sbhm94@gmail.com', 'yashv28@gmail.com', 'BIT Mesra'),
(16, 'Sushant Kumar Gupta', 'Yash Deep', 'BE/10058/2015', 'BE/10073/2015', '$2y$10$v5Q79WiqwCf8hRbFNTn0I.eUSS3uTELm553nyCEMn1CguJPoyiJJ2', 'Carbon Dioxide', 'sushantgupta4@yahoo.com', 'yashdeep_8@yahoo.com', 'BIT Mesra'),
(17, 'MRINALINI', 'ANJALI KUMARI', 'BE/10086/14', 'BE/10059/14', '$2y$10$oCUNZfk95kYz9goUWdhVXOq7qhCqJawRaZUWhTn.svtqOrUeasV5u', 'OPTIMAL', 'minal1969@rediffmail.com', 'luckyanjali008@gmail.com', 'BIT MESRA'),
(18, 'Pratik Nagelia', 'Anirudh Singh Rathore', 'BE/10010/2013', 'BE/10150/2013', '$2y$10$ZnZ0uyOyVCG8TAmjH.fOQe7W/zGdIEDUWGclJ2VSAHOR5n.eBBn62', 'limitless', 'pratik0204@gmail.com', 'singh16anirudh@gmail.com', 'Birla Institute Of Technology Mesra'),
(19, 'Avinash Tiwary', '', 'Be/10298/2015', '', '$2y$10$7HLjBefOcLIcxMSCH.nURup4BK9i8Sw.bm4Yd.9ut/YKom2XVj92q', 'Axel17', 'avinash.assassin17@gmail.com', '', 'BIT mesra'),
(20, 'Aditya Pal', 'R Sriraj', 'BE/10094/2015', 'BE/10107/2015', '$2y$10$vupExZqTTLuKmSmb9kjNQOpB/V4CAeLBIXCr07U2R.X6gl5fzZKDS', 'The 8ackerz', 'aditya.pal.science@gmail.com', 'srirajrocks@gmail.com', 'BIT'),
(21, 'Rahul Singhania', 'Sanatt Abrol', 'BE/10416/15', 'BE/10489/15', '$2y$10$1UtLXsehUk0iTvRUI10n6e8fD7wVRLNC8wPFTtk9ivIeH7O7DGDXa', 'DigitalMachine', 'rahulsinghania0820@gmail.com', 'sanatt.abroll.in@gmail.com', 'BIT Mesra'),
(22, 'Abhinav kumar Singh', 'Samujjal Das', 'BE/10476/2015', 'BE/10370/2015', '$2y$10$7Zd.iXRnbHS1zf.5zfhFuOskpoLSKuvSvUZRC7otz2AHpxUASWC/S', 'FURIOUS 8', 'abhinavkumarsingh064@gmail.com', 'samujjalsam@gmail.com', 'BIT MESRA'),
(23, 'Mohit Choudhary', 'Siddharth Agarwal', 'BE/10065/2015', 'BE/10116/2015', '$2y$10$FbeMrwRLBaoAmYq9OpC0/e7cUdeqSs80xSF/qAsqt/YJYUbMi2.fi', 'Nutz', 'mohitc16@gmail.com', 'sid.agarwal01@gmail.com', 'BIT Mesra'),
(24, 'Shubham', 'Abhikant', 'BE/10292/2015', 'BE/10306/2015', '$2y$10$TWbjGuGKBfWktHEcJBPNg.c1G6QhZYpflspvOQaXHPSYA4XVebqfe', 'Mast-Vast', 'chetah00@gmail.com', 'abhikantpratyushsingh007@gmail.com', 'BIT Mesra'),
(25, 'Abhishek Prakash', 'Partho Paul', 'BE/10221/2015', 'BE/10534/2015', '$2y$10$v1un2.aUK0EiO6V1CAbzIO4wW2CZLMT6q7otURgAUavgF1n0n2RaW', 'ERROR 404', 'abhishekprakash1996@gmail.com', 'partho8897@gmail.com', 'BIT Mesra, Ranchi'),
(26, 'SURUCHI SUMAN', 'SHRUTI CHANDRA', 'BE/10453/2014', 'BE/10454/2014', '$2y$10$1QdrC7g4UfXYvVlcYjrfI.UK4pkf/LhpNJ6z4SCOzexCm6iKh92aq', 'error', 'suruchisuman710@gmail.com', 'shrutichandra17@gmail.com', 'BIT MESRA PATNA CAMPUS'),
(27, 'Rajat Goyal', 'Ashish Gaurav', 'BE/10013/2013', 'BE/10408/2013', '$2y$10$i.kkh1D3VLvmSrXi6yG2MOWoxGocfAVd76i8KrvVp.7hI3467s2am', 'OlogN', 'rajat1881@gmail.com', 'agaurav77@yahoo.com', 'BIT MESRA '),
(28, 'Swapnanil Saha', 'Sandeep Alajangi', 'BE/10158/2013', 'BE/10155/2013', '$2y$10$dZgqtZRdY0CWKX.MruVOperht1IguQyQVJDy.TGRTqFIOzqRUStDy', 'alasort', 'swapnanilsaha26@gmail.com', 'alajangi.sandeep@gmail.com', 'BIT Mesra'),
(29, 'Rishabh Saxena', 'Tanmay Gupta', 'BE/10652/2014', 'BE/10580/2014', '$2y$10$l.A1BC7GFbs.jLa4iL.QNuYIyFyou6rgchAlYpk9WUi.9cp/7xT9C', 'void', 'orishabh1@gmail.com', 'tanmay.tat11@gmail.com', 'BIT Mesra'),
(30, 'shreya sikarwar', 'neelansh', 'be/10233/2015', 'be/10147/2015', '$2y$10$ShT0G0HEtvhDQlOM6yHaZOZAtPhUYLj4hVUp/UFQ1FZYdr6jZmWyu', 'grey', 'sikarwarshreya@gmail.com', 'neelansh2013@gmail.com', 'bit mesra ranchi'),
(31, 'Shikhar thakur', 'Ricky Saurav', 'BE/10627/2014', 'BE/10378/2014', '$2y$10$tU3h0Y6LJhtAbS9RXO3QRuydoY64QRifUlEOWy6CW8OkzWnB22WQG', 'GravityChildren', 'shikhar.thakur835@gmail.com', 'luckyricky007@gmail.com', 'BIT, Mesra'),
(32, 'koushik', '', 'be102272012', '', '$2y$10$2L8WfTMLVtoGwxlYE3uvqu7onxjyAUaRvmvMfKBipvtRTYh2zJNSa', 'adm_illuminati', 'mln02koushik@gmail.com', 'mln02koushik@gmail.com', 'bit mesra'),
(33, 'Chinmoy Roy', 'Saurabh Sinha', 'BE/10159/2013', 'BE/10234/2013', '$2y$10$aCk6Q1YuiE9g2B8zjEm6TuspcsgPn8Om9.fH4sZaRoSzGaUqI/vNG', 'Red_Devils', 'roy.chinmoyroy24@gmail.com', 'saurabhsinha.green@gmail.com', 'Bit Mesra , Ranchi'),
(34, 'Shubham Bhagat', 'Ankit Kumar', 'be/10382/13', 'BE/10326/13', '$2y$10$CRtxpTCtaeNr6Bm/zhAjW.PDqmqWsZM5LLKt6n08yijVWKBJeeNr2', 'aur_upar', 'bhagatshubham@hotmail.com', 'krankit007@gmail.com', 'BIT mesra'),
(35, 'Darpan Bansal', 'Krantideep', 'BE/10574/2013', 'BE/10619/2013', '$2y$10$BvFmwot7SXhruZkixOHGoeidG24WxZXJsmRNcv76PkKnj40Vnl/8O', 'aahachooplo', 'sad@gmail.com', 'sad@gmail.com', 'BIT Mesra'),
(36, 'Krishna', 'Tarun', 'BE/10596/2013', 'BE/10595/2013', '$2y$10$XngYw3DTI.5ojSgyCXrQxuwqUCXKX85RxOyL9unx84Q3W67SGogru', 'call_us_KRaTA', 'kkr.rathi@gmail.com', '', 'BIT Mesra'),
(37, 'as', 'bs', 'be/1111/222', 'be/3333/2222', '$2y$10$jv7zrxKQGyfUFq6aO5vCOOB9FAA7SnPHk4a9yTKJDUuzeQHPLI4Uu', 'noob', 'a@b.c', 'a@b.c', 'mesra');

-- --------------------------------------------------------

--
-- Table structure for table `sql`
--

CREATE TABLE IF NOT EXISTS `sql` (
  `sl` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`sl`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `sql`
--

INSERT INTO `sql` (`sl`, `user`, `password`) VALUES
(1, 'sylar', '1010');

-- --------------------------------------------------------

--
-- Table structure for table `xss`
--

CREATE TABLE IF NOT EXISTS `xss` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `nick` varchar(100) NOT NULL,
  `comment` varchar(10000) NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=60 ;

--
-- Dumping data for table `xss`
--

INSERT INTO `xss` (`sno`, `nick`, `comment`) VALUES
(1, 'adm_illuminati', 'kmln02'),
(2, 'adm_illuminati', 'pingu'),
(3, 'adm_illuminati', 'pingu'),
(4, 'adm_illuminati', '<script>alert("hello");</script>'),
(5, 'adm_illuminati', '<script>alert("hello");</script>'),
(6, 'adm_illuminati', '<script></script>'),
(7, 'adm_illuminati', '<script></script>'),
(8, 'adm_illuminati', 'kmln027898we'),
(9, 'adm_illuminati', 'kmln027898we'),
(10, 'adm_illuminati', 'kmln027898we'),
(11, 'adm_illuminati', 'kmln027898we'),
(12, 'adm_illuminati', 'kmln027898we'),
(13, 'adm_illuminati', 'hello\r\n'),
(14, 'adm_illuminati', 'hello\r\n'),
(15, 'adm_illuminati', 'adi raj'),
(16, 'adm_illuminati', 'hello pingu'),
(17, 'adm_illuminati', 'pikachuuuu'),
(18, 'adm_illuminati', 'droid kid'),
(19, 'adm_illuminati', 'droidnospaceki'),
(20, 'adm_illuminati', 'spacekid'),
(21, 'adm_illuminati', '<script>getkey();</script>'),
(22, 'adm_illuminati', '<script>getkey();</script>'),
(23, 'adm_illuminati', 'hrllo\r\n'),
(24, 'adm_illuminati', 'hello'),
(25, 'adm_illuminati', 'hello'),
(26, 'adm_illuminati', '<script>getkey();</script>'),
(27, 'noob', '<script>getkey();</script>'),
(28, 'OlogN', 'was nice \r\n'),
(29, 'OlogN', 'okay '),
(30, 'OlogN', 'shows one less comment \r\n'),
(31, 'OlogN', 'okay '),
(32, 'OlogN', 'was nice \r\n'),
(33, 'OlogN', 'yo'),
(34, 'OlogN', 'hi'),
(35, 'OlogN', 'yo'),
(36, 'OlogN', 'sorry for absurd comment \r\n'),
(37, 'OlogN', 'sorry for absurd comment \r\n'),
(38, 'OlogN', 'hi'),
(39, 'OlogN', 'sorry for absurd comment \r\n'),
(40, 'OlogN', 'hi'),
(41, 'OlogN', 'hi'),
(42, 'OlogN', 'sorry for absurd comment \r\n'),
(43, 'OlogN', 'sorry for absurd comment \r\n'),
(44, 'OlogN', 'sorry for absurd comment \r\n'),
(45, 'OlogN', 'sorry for absurd comment \r\n'),
(46, 'OlogN', 'sorry for absurd comment \r\n'),
(47, 'OlogN', '9bf25b8a51f4b537725e7c8a9b6d9585'),
(48, 'OlogN', '9bf25b8a51f4b537725e7c8a9b6d9585'),
(49, 'OlogN', 'sorry for absurd comment \r\n'),
(50, 'OlogN', 'getkey'),
(51, 'OlogN', 'getkey'),
(52, 'OlogN', 'getkey'),
(53, 'OlogN', 'getkey\r\n'),
(54, 'alasort', 'hi\r\n'),
(55, 'alasort', 'hello'),
(56, 'alasort', 'hello\r\n'),
(57, 'alasort', 'comment'),
(58, 'alasort', 'hey\r\n\r\n'),
(59, 'alasort', 'fuck u\r\n');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

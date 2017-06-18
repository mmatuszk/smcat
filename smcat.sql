-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2017 at 09:51 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smcat`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_name`) VALUES
(7, 'Clinical'),
(8, 'Admin'),
(9, 'Thank you');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `msg_txt` varchar(1024) NOT NULL,
  `msg_mrn` varchar(16) NOT NULL,
  `msg_to` varchar(16) NOT NULL,
  `msg_ts` timestamp NOT NULL,
  `msg_reviewed` int(11) NOT NULL DEFAULT '0',
  `msg_assigned` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`msg_id`, `msg_txt`, `msg_mrn`, `msg_to`, `msg_ts`, `msg_reviewed`, `msg_assigned`) VALUES
(1, 'Message text 1', '150222', 'E663486', '2016-01-01 20:00:00', 0, 1),
(2, 'Message text 3', '150222', 'E663488', '2016-01-01 20:02:00', 0, 1),
(3, 'Message text 4', '150222', 'E663489', '2016-01-01 20:03:00', 0, 1),
(4, 'Message text 5', '150222', 'E663490', '2016-01-01 20:04:00', 0, 0),
(5, 'Message text 6', '150222', 'E663491', '2016-01-01 20:05:00', 0, 0),
(6, 'Message text 7', '150222', 'E663492', '2016-01-01 20:06:00', 0, 0),
(7, 'Message text 8', '150222', 'E663493', '2016-01-01 20:07:00', 0, 0),
(8, 'Message text 9', '150222', 'E663494', '2016-01-01 20:08:00', 0, 0),
(9, 'Message text 10', '150222', 'E663495', '2016-01-01 20:09:00', 0, 0),
(10, 'Message text 11', '150222', 'E663496', '2016-01-01 20:10:00', 0, 0),
(11, 'Message text 12', '150222', 'E663497', '2016-01-01 20:11:00', 0, 0),
(12, 'Message text 13', '150222', 'E663498', '2016-01-01 20:12:00', 0, 0),
(13, 'Message text 14', '150222', 'E663499', '2016-01-01 20:13:00', 0, 0),
(14, 'Message text 15', '150222', 'E663500', '2016-01-01 20:14:00', 0, 0),
(15, 'Message text 16', '150222', 'E663501', '2016-01-01 20:15:00', 0, 0),
(16, 'Message text 17', '150222', 'E663502', '2016-01-01 20:16:00', 0, 0),
(17, 'Message text 18', '150222', 'E663503', '2016-01-01 20:17:00', 0, 0),
(18, 'Message text 19', '150222', 'E663504', '2016-01-01 20:18:00', 0, 0),
(19, 'Message text 20', '150222', 'E663505', '2016-01-01 20:19:00', 0, 0),
(20, 'Message text 21', '150222', 'E663506', '2016-01-01 20:20:00', 0, 0),
(21, 'Message text 22', '150222', 'E663507', '2016-01-01 20:21:00', 0, 0),
(22, 'Message text 23', '150222', 'E663508', '2016-01-01 20:22:00', 0, 0),
(23, 'Message text 24', '150222', 'E663509', '2016-01-01 20:23:00', 0, 0),
(24, 'Message text 25', '150222', 'E663510', '2016-01-01 20:24:00', 0, 0),
(25, 'Message text 26', '150222', 'E663511', '2016-01-01 20:25:00', 0, 0),
(26, 'Message text 27', '150222', 'E663512', '2016-01-01 20:26:00', 0, 0),
(27, 'Message text 28', '150222', 'E663513', '2016-01-01 20:27:00', 0, 0),
(28, 'Message text 29', '150222', 'E663514', '2016-01-01 20:28:00', 0, 0),
(29, 'Message text 30', '150222', 'E663515', '2016-01-01 20:29:00', 0, 0),
(30, 'Message text 31', '150222', 'E663516', '2016-01-01 20:30:00', 0, 0),
(31, 'Message text 32', '150222', 'E663517', '2016-01-01 20:31:00', 0, 0),
(32, 'Message text 33', '161555', 'E663518', '2016-01-01 20:32:00', 0, 0),
(33, 'Message text 34', '161555', 'E663519', '2016-01-01 20:33:00', 0, 0),
(34, 'Message text 35', '161555', 'E663520', '2016-01-01 20:34:00', 0, 0),
(35, 'Message text 36', '161555', 'E663521', '2016-01-01 20:35:00', 0, 0),
(36, 'Message text 37', '161555', 'E663522', '2016-01-01 20:36:00', 0, 0),
(37, 'Message text 38', '161555', 'E663523', '2016-01-01 20:37:00', 0, 0),
(38, 'Message text 39', '161555', 'E663524', '2016-01-01 20:38:00', 0, 0),
(39, 'Message text 40', '161555', 'E663525', '2016-01-01 20:39:00', 0, 0),
(40, 'Message text 41', '161555', 'E663526', '2016-01-01 20:40:00', 0, 0),
(41, 'Message text 42', '161555', 'E663527', '2016-01-01 20:41:00', 0, 0),
(42, 'Message text 43', '161555', 'E663528', '2016-01-01 20:42:00', 0, 0),
(43, 'Message text 44', '161555', 'E663529', '2016-01-01 20:43:00', 0, 0),
(44, 'Message text 45', '161555', 'E663530', '2016-01-01 20:44:00', 0, 0),
(45, 'Message text 46', '161555', 'E663531', '2016-01-01 20:45:00', 0, 0),
(46, 'Message text 47', '161555', 'E663532', '2016-01-01 20:46:00', 0, 0),
(47, 'Message text 48', '161555', 'E663533', '2016-01-01 20:47:00', 0, 0),
(48, 'Message text 49', '161555', 'E663534', '2016-01-01 20:48:00', 0, 0),
(49, 'Message text 50', '161555', 'E663535', '2016-01-01 20:49:00', 0, 0),
(50, 'Message text 51', '161555', 'E663536', '2016-01-01 20:50:00', 0, 0),
(51, 'Message text 52', '161555', 'E663537', '2016-01-01 20:51:00', 0, 0),
(52, 'Message text 53', '161555', 'E663538', '2016-01-01 20:52:00', 0, 0),
(53, 'Message text 54', '161555', 'E663539', '2016-01-01 20:53:00', 0, 0),
(54, 'Message text 55', '161555', 'E663540', '2016-01-01 20:54:00', 0, 0),
(55, 'Message text 56', '161555', 'E663541', '2016-01-01 20:55:00', 0, 0),
(56, 'Message text 57', '161555', 'E663542', '2016-01-01 20:56:00', 0, 0),
(57, 'Message text 58', '161555', 'E663543', '2016-01-01 20:57:00', 0, 0),
(58, 'Message text 59', '161555', 'E663544', '2016-01-01 20:58:00', 0, 0),
(59, 'Message text 60', '161555', 'E663545', '2016-01-01 20:59:00', 0, 0),
(60, 'Message text 61', '161555', 'E663546', '2016-01-01 21:00:00', 0, 0),
(61, 'Message text 62', '161555', 'E663547', '2016-01-01 21:01:00', 0, 0),
(62, 'Message text 63', '159000', 'E663548', '2016-01-01 21:02:00', 0, 0),
(63, 'Message text 64', '159000', 'E663549', '2016-01-01 21:03:00', 0, 0),
(64, 'Message text 65', '159000', 'E663550', '2016-01-01 21:04:00', 0, 0),
(65, 'Message text 66', '159000', 'E663551', '2016-01-01 21:05:00', 0, 0),
(66, 'Message text 67', '159000', 'E663552', '2016-01-01 21:06:00', 0, 0),
(67, 'Message text 68', '159000', 'E663553', '2016-01-01 21:07:00', 0, 0),
(68, 'Message text 69', '159000', 'E663554', '2016-01-01 21:08:00', 0, 0),
(69, 'Message text 70', '159000', 'E663555', '2016-01-01 21:09:00', 0, 0),
(70, 'Message text 71', '159000', 'E663556', '2016-01-01 21:10:00', 0, 0),
(71, 'Message text 72', '159000', 'E663557', '2016-01-01 21:11:00', 0, 0),
(72, 'Message text 73', '159000', 'E663558', '2016-01-01 21:12:00', 0, 0),
(73, 'Message text 74', '159000', 'E663559', '2016-01-01 21:13:00', 0, 0),
(74, 'Message text 75', '159000', 'E663560', '2016-01-01 21:14:00', 0, 0),
(75, 'Message text 76', '159000', 'E663561', '2016-01-01 21:15:00', 0, 0),
(76, 'Message text 77', '159000', 'E663562', '2016-01-01 21:16:00', 0, 0),
(77, 'Message text 78', '159000', 'E663563', '2016-01-01 21:17:00', 0, 0),
(78, 'Message text 79', '159000', 'E663564', '2016-01-01 21:18:00', 0, 0),
(79, 'Message text 80', '159000', 'E663565', '2016-01-01 21:19:00', 0, 0),
(80, 'Message text 81', '159000', 'E663566', '2016-01-01 21:20:00', 0, 0),
(81, 'Message text 82', '159000', 'E663567', '2016-01-01 21:21:00', 0, 0),
(82, 'Message text 83', '159000', 'E663568', '2016-01-01 21:22:00', 0, 0),
(83, 'Message text 84', '159000', 'E663569', '2016-01-01 21:23:00', 0, 0),
(84, 'Message text 85', '159000', 'E663570', '2016-01-01 21:24:00', 0, 0),
(85, 'Message text 86', '159000', 'E663571', '2016-01-01 21:25:00', 0, 0),
(86, 'Message text 87', '159000', 'E663572', '2016-01-01 21:26:00', 0, 0),
(87, 'Message text 88', '159000', 'E663573', '2016-01-01 21:27:00', 0, 0),
(88, 'Message text 89', '159000', 'E663574', '2016-01-01 21:28:00', 0, 0),
(89, 'Message text 90', '159000', 'E663575', '2016-01-01 21:29:00', 0, 0),
(90, 'Message text 91', '159000', 'E663576', '2016-01-01 21:30:00', 0, 0),
(91, 'Message text 92', '159000', 'E663577', '2016-01-01 21:31:00', 0, 0),
(92, 'Message text 93', '159000', 'E663578', '2016-01-01 21:32:00', 0, 0),
(93, 'Message text 94', '159000', 'E663579', '2016-01-01 21:33:00', 0, 0),
(94, 'Message text 95', '159000', 'E663580', '2016-01-01 21:34:00', 0, 0),
(95, 'Message text 96', '159000', 'E663581', '2016-01-01 21:35:00', 0, 0),
(96, 'Message text 97', '159000', 'E663582', '2016-01-01 21:36:00', 0, 0),
(97, 'Message text 98', '159000', 'E663583', '2016-01-01 21:37:00', 0, 0),
(98, 'Message text 99', '159000', 'E663584', '2016-01-01 21:38:00', 0, 0),
(99, 'Message text 100', '159000', 'E663585', '2016-01-01 21:39:00', 0, 0),
(100, 'Message text 1', '150222', 'E663486', '2016-01-01 20:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `reviewers`
--

CREATE TABLE `reviewers` (
  `reviewer_id` int(11) NOT NULL,
  `reviewer_nuid` varchar(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reviewers`
--

INSERT INTO `reviewers` (`reviewer_id`, `reviewer_nuid`) VALUES
(1, 'E643486'),
(2, 'B643400');

-- --------------------------------------------------------

--
-- Table structure for table `review_queue`
--

CREATE TABLE `review_queue` (
  `q_id` int(11) NOT NULL,
  `msg_id` int(11) NOT NULL,
  `reviewer_id` int(11) NOT NULL,
  `q_ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `subcat_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `subcat_name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`),
  ADD UNIQUE KEY `cat_name` (`cat_name`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `reviewers`
--
ALTER TABLE `reviewers`
  ADD PRIMARY KEY (`reviewer_id`);

--
-- Indexes for table `review_queue`
--
ALTER TABLE `review_queue`
  ADD PRIMARY KEY (`q_id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`subcat_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `reviewers`
--
ALTER TABLE `reviewers`
  MODIFY `reviewer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `review_queue`
--
ALTER TABLE `review_queue`
  MODIFY `q_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `subcat_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

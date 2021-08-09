-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2021 at 08:11 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kenya_courts`
--

-- --------------------------------------------------------

--
-- Table structure for table `cases`
--

CREATE TABLE `cases` (
  `id` int(11) NOT NULL,
  `litigant_id` varchar(30) NOT NULL,
  `severity` varchar(30) NOT NULL,
  `notes` varchar(200) NOT NULL,
  `case_num` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cases`
--

INSERT INTO `cases` (`id`, `litigant_id`, `severity`, `notes`, `case_num`) VALUES
(2, '1029482', 'Critical', '<p>Cyber crimes</p>', '201809111431489832'),
(3, '1029482', 'Critical', '<p>Cyber crimes</p>', '20180911143244.2511'),
(4, '1029482', 'Critical', '<p>Cyber crimes</p>', '20180911143429.2461'),
(5, '1938203', 'Danger', 'Human trafficing ', '20210712110223.3551');

-- --------------------------------------------------------

--
-- Table structure for table `litigants`
--

CREATE TABLE `litigants` (
  `id` int(11) NOT NULL,
  `litigant_id` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `surname` varchar(30) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(2) NOT NULL,
  `joined` varchar(30) NOT NULL,
  `tmp` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `litigants`
--

INSERT INTO `litigants` (`id`, `litigant_id`, `name`, `surname`, `phone`, `email`, `gender`, `joined`, `tmp`) VALUES
(4, '1938203', 'wise', 'wise', '0770404030', 'wise@gmail.com', 'M', ' 10 Sep 2020 ', '5267'),
(7, '1939882', 'kaugi', 'kaugi', '2540720303088', 'kaugikaugi@gmail.com', 'F', ' 12 Jul 2021 ', '7125');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(30) NOT NULL,
  `convo_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `message` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=unread , 1= read',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `convo_id`, `user_id`, `message`, `status`, `date_created`) VALUES
(1, 1, 2, 'hi', 1, '2020-10-13 21:03:22'),
(2, 2, 3, 'yow', 0, '2020-10-13 16:58:22');

-- --------------------------------------------------------

--
-- Table structure for table `picture`
--

CREATE TABLE `picture` (
  `id` int(11) NOT NULL,
  `tmp` varchar(90) NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `picture`
--

INSERT INTO `picture` (`id`, `tmp`, `name`) VALUES
(2, '1301', 'user1301.jpg'),
(3, '5267', 'user5267.jpg'),
(4, '6954', 'user6954.jpg'),
(5, '7731', 'user7731.jpg'),
(6, '6941', 'user6941.jpg'),
(7, '1367', 'user1367.jpg'),
(8, '5220', 'user5220.jpg'),
(9, '2259', 'user2259.png'),
(10, '3596', 'user3596.jpg'),
(11, '6237', 'user6237.jpg'),
(12, '9285', 'user9285.jpg'),
(13, '5168', 'user5168.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `thread`
--

CREATE TABLE `thread` (
  `id` int(30) NOT NULL,
  `user_ids` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `thread`
--

INSERT INTO `thread` (`id`, `user_ids`) VALUES
(1, '2,3'),
(2, '1,2');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `surname` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `joined` varchar(30) NOT NULL,
  `type` varchar(10) NOT NULL,
  `permission` varchar(10) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `avatar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `email`, `username`, `password`, `joined`, `type`, `permission`, `gender`, `phone`, `avatar`) VALUES
(7, 'Kaugi', 'Kaugi', 'kaugi@gmail.com', 'Kaugi', '827ccb0eea8a706c4c34a16891f84e7b', ' 20 june 2021 ', 'user', '1', 'M', '0740303088', ''),
(8, 'wairimu', 'wairimu', 'felixkaugi8@gmail.com', 'wairimu', '81dc9bdb52d04dc20036dbd8313ed055', ' 12 Jul 2021 ', 'user', 'Manager', 'F', '2540740303188', ''),
(9, 'felix', 'felix', 'kaugikawise@gmail.com', 'felix', '25779f8829ab7a7650e85a4cc871e6ac', ' 12 Jul 2021 ', 'user', 'User', 'M', '2540740303189', ''),
(10, 'Ben', 'Ben', 'ben@gmail.com', 'ben', 'be983803ad5ab866d33a1709c182f326', ' 14 Jul 2021 ', 'user', 'User', 'M', '2540123456885', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cases`
--
ALTER TABLE `cases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `litigants`
--
ALTER TABLE `litigants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `picture`
--
ALTER TABLE `picture`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thread`
--
ALTER TABLE `thread`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cases`
--
ALTER TABLE `cases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `litigants`
--
ALTER TABLE `litigants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `picture`
--
ALTER TABLE `picture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `thread`
--
ALTER TABLE `thread`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2023 at 08:18 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cems`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(11) NOT NULL,
  `event_title` varchar(50) NOT NULL,
  `event_price` int(11) DEFAULT NULL,
  `participents` int(100) DEFAULT 0,
  `img_link` text DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `event_title`, `event_price`, `participents`, `img_link`, `type_id`) VALUES
(2, 'Poster presentation', 50, 2, 'image/Poster.jpeg', 1),
(3, 'Technical-Quiz', 50, 2, 'images/quiz.png', 1),
(4, 'Competitive-Coding', 50, 1, 'images/coding.jpg', 1),
(5, 'Puzzle', 50, 1, 'image/puzzle.jpeg', 2),
(6, 'Pubg', 100, 1, 'image/pubg.jpeg', 2),
(7, 'Skit', 200, 1, 'image/skit1.jpeg', 3),
(8, 'Dance', 100, 4, 'image/dance1.jpeg', 3),
(9, 'Singing', 50, 2, 'image/song1.jpeg', 3),
(10, 'Dumb sharades', 100, 1, 'image/dumb.jpeg', 3),
(11, 'Cooking-Without-Fire', 50, 4, 'images/cook.jpg', 4),
(12, 'Drawing', 200, 10, 'image/draw.jpeg', 4),
(13, 'Mehandi', 100, 1, 'image/Mehendi.jpeg', 4),
(14, 'Rangoli', 50, 2, 'image/Rangoli.jpeg', 4);

-- --------------------------------------------------------

--
-- Table structure for table `event_info`
--

CREATE TABLE `event_info` (
  `event_id` int(10) NOT NULL,
  `Date` date DEFAULT NULL,
  `time` varchar(20) NOT NULL,
  `location` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `event_info`
--

INSERT INTO `event_info` (`event_id`, `Date`, `time`, `location`) VALUES
(1, '2024-04-02', '3.00pm', '208 Room'),
(2, '2024-04-02', '1.00pm', 'AV Hall'),
(3, '2024-04-03', '11.00am', '208 Room'),
(4, '2024-04-03', '9.30am', '01 Lab'),
(5, '2024-04-04', '10.00am', '02 Lab'),
(6, '2024-04-03', '11.00am', '03 Lab'),
(7, '2024-04-02', '9.30pm', 'ON Stage'),
(8, '2024-04-02', '7.00pm', 'ON Stage'),
(9, '2024-04-03', '5.00pm', 'ON Stage'),
(10,'2024-04-04', '6.00pm', 'ON Stage'),
(11,'2024-04-04', '10.30am', '207 Room'),
(12,'2024-04-04', '10.00am', '209 Room'),
(13,'2024-04-04', '3pm', '207 Room'),
(14,'2024-04-03', '2.00pm', 'Corridor');

-- --------------------------------------------------------

--
-- Table structure for table `event_type`
--

CREATE TABLE `event_type` (
  `type_id` int(10) NOT NULL,
  `type_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `event_type`
--

INSERT INTO `event_type` (`type_id`, `type_title`) VALUES
(1, 'Technical Events'),
(2, 'Gaming Events'),
(3, 'On Stage Events'),
(4, 'Off Stage Events');

-- --------------------------------------------------------

--
-- Table structure for table `participent`
--

CREATE TABLE `participent` (
  `usn` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `branch` varchar(11) NOT NULL,
  `sem` int(11) NOT NULL,
  `email` varchar(300) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `college` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `participent`
--

INSERT INTO `participent` (`usn`, `name`, `branch`, `sem`, `email`, `phone`, `college`) VALUES
('1VA17CS005', 'Alisha', 'CSE', 5, 'alisha@gmail.com', '8123300011', 'vcet'),
('1VA17CS012', 'BHAVANA', 'cse', 5, 'BHAVANA@GMAIL.COM', '9934736623', 'vcet'),
('1VA17CS022', 'Kavya', 'cse', 5, 'Kavya@gmail.com', '7888387323', 'vcet'),
('1VA17CS025', 'Mythri', 'ISE', 5, 'mythri@saividya.ac.in', '8998848488', 'vcet'),
('1VA17CS034', 'Prajwal', 'cse', 5, 'prajwal@gmail.com', '9858787438', 'vcet'),
('1VA17IS045', 'Prathiksha', 'ISE', 5, 'prathi@gmail.com', '7897854345', 'vcet'),
('2872262', 'tsgshgjs', 'cs', 5, 'sjjsjhgj@gmail.com', '21315160198', 'shshxhg'),
('4vp20cs001', 'Abhijna kj', 'cse', 5, 'abhi@gmail.com', '965485515', 'vcet'),
('4vp20cs034', 'keerthi', 'cse', 5, 'thrishabhat30@gmail.com', '123456789', 'vcet'),
('4vp20cs078', 'sam', 'cse', 5, 'sam@gmail.com', '8525421', 'vcet'),
('4vp20cs098', 'thrisha', 'cse', 5, 'thrishabhat30@gmail.com', '34567', 'vcet');

-- --------------------------------------------------------

--
-- Table structure for table `registered`
--

CREATE TABLE `registered` (
  `rid` int(11) NOT NULL,
  `usn` varchar(20) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `registered`
--

INSERT INTO `registered` (`rid`, `usn`, `event_id`) VALUES
(1, '4VP21AI098', 2),
(2, '4VP21AI078', 4),
(3, '4VP21AI001', 2),
(4, '4VP21AI005', 3),
(5, '4VP21AI078', 3),
(6, '4VP21AI078', 5),
(8, '4VP21AI005', 6),
(10,'4VP21AI067', 7),
(11, '4VP21AI098', 9),
(8, '4VP21AI034', 12);

--
-- Triggers `registered`
--
DELIMITER $$
CREATE TRIGGER `count` AFTER INSERT ON `registered` FOR EACH ROW update events
set events.participents=events.participents+1
WHERE events.event_id=new.event_id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `staff_coordinator`
--

CREATE TABLE `staff_coordinator` (
  `stid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `staff_coordinator`
--

INSERT INTO `staff_coordinator` (`stid`, `name`, `phone`, `event_id`) VALUES
(1, 'Pramod', '9956436610', 1),
(2, 'Nithin kurup', '9956436123', 2),
(3, 'Bharathi ', '9956436456', 3),
(4, 'Jeevitha', '9956436789', 4),
(5, 'Krishna mohan', '9956436101', 5),
(6, 'Thapaswini', '9123436610', 6),
(7, 'Raghavendra', '9456436610', 7),
(8, 'Priyanka yalgach', '9789436610', 8),
(9, 'Mahesh prasanna', '9956412310', 9),
(10, 'Shreesharanya', '9956445610', 10),
(11, 'Madhavi patel', '9956473510', 11),
(12, 'Deepthi', '9955636610', 12),
(13, 'Ajith', '8948476464', 13),
(14, 'Bhanupriya', '9876543210', 14);

-- --------------------------------------------------------

--
-- Table structure for table `student_coordinator`
--

CREATE TABLE `student_coordinator` (
  `sid` int(11) NOT NULL,
  `st_name` varchar(100) NOT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student_coordinator`
--

INSERT INTO `student_coordinator` (`sid`, `st_name`, `phone`, `event_id`) VALUES
(1, 'Shravya k bangera', '6956436610', 1),
(2, 'Varun kg', '7956436123', 2),
(3, 'Shravya k', '8956436456', 3),
(4, 'Neeraja kokkadan', '6956436789', 4),
(5, 'vindhya p', '7956436101', 5),
(6, 'Shreenidhi k', '8123436610', 6),
(7, 'Chyavan acharya', '6456436610', 7),
(8, 'Anusha shanbog', '7789436610', 8),
(9, 'Sukesh B', '7956412310', 9),
(10, 'Kanhi suvarna', '7956445610', 10),
(11, 'Ananya bhat', '6956473510', 11),
(12, 'Sushmitha bhat', '8955636610', 12),
(13, 'Keerthi G', '8994874384', 13),
(14, 'Anjali vasanth', NULL, 14);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `event_info`
--
ALTER TABLE `event_info`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `event_type`
--
ALTER TABLE `event_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `participent`
--
ALTER TABLE `participent`
  ADD PRIMARY KEY (`usn`);

--
-- Indexes for table `registered`
--
ALTER TABLE `registered`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `staff_coordinator`
--
ALTER TABLE `staff_coordinator`
  ADD PRIMARY KEY (`stid`);

--
-- Indexes for table `student_coordinator`
--
ALTER TABLE `student_coordinator`
  ADD PRIMARY KEY (`sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event_info`
--
ALTER TABLE `event_info`
  MODIFY `event_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `registered`
--
ALTER TABLE `registered`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `staff_coordinator`
--
ALTER TABLE `staff_coordinator`
  MODIFY `stid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `student_coordinator`
--
ALTER TABLE `student_coordinator`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

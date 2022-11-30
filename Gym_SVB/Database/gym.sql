-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2021 at 04:32 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gym`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlog`
--

CREATE TABLE `adminlog` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `pass` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `adminlog`
--

INSERT INTO `adminlog` (`id`, `name`, `pass`) VALUES
(1, 'Komal', 'kasak'),
(2, 'Mansi', 'manu11'),
(6, 'admin', 'admin'),
(4, 'palak', 'palak');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `c_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `image` text COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`c_id`, `name`, `image`) VALUES
(1, 'Dumbells', 'C_img/dumbells.jpg'),
(2, 'TredMill', 'C_img/TredMill (1).jpg'),
(3, 'MultiGym', 'C_img/multigym.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `img` text COLLATE latin1_general_ci NOT NULL,
  `des` text COLLATE latin1_general_ci NOT NULL,
  `t_name` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `time` varchar(15) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `fees` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `name`, `img`, `des`, `t_name`, `time`, `fees`) VALUES
(1, 'Aerobics', 'C_img/aerobics.jpg', 'It is a Aerobics Class', 'Asif Ali', '7:00 to 8:00', ''),
(2, 'Cardio', 'C_img/cardio.jpg', 'It is a Cardio Class', 'Gautam Ali', '8:00 to 9:00', ''),
(4, 'Core Workout', 'C_img/cardio2.jpg', 'It is a Core Workout1', 'Asif Ali', '9:00 to 10:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `que` text COLLATE latin1_general_ci NOT NULL,
  `ans` text COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `name`, `que`, `ans`) VALUES
(1, 'Mansi', 'Which type of eqipments???', 'All Type'),
(3, 'test', 'how to decrease a waight?', 'To making Excersise.'),
(4, 'yukta', 'do i work out every day ?', 'Yes'),
(5, 'khushi', 'how do i get a six-packs ?', 'Do More Cardio'),
(6, 'Mansi', 'how does exercise help mental health ?', 'Do More Yoga ');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `email` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `comment` text COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `comment`) VALUES
(1, 'Mehta Chetana', 'chetana123@gmail.com', 'This Website is Very Useful...'),
(2, 'Joshi Divya', 'joshidivya98@gmail.com', 'It is Very Good Information For Us.....'),
(3, 'ravi', 'ravi@gmail.com', 'nice'),
(5, 'palak', 'palak123@gmail.com', 'nice work'),
(6, 'cheet', 'cheetpatel@gmail.com', 'good machinary'),
(7, 'ruhi', 'ruha@gmail.com', 'excellent'),
(8, 'niva', 'nivup@gmail.com', 'good trainers'),
(9, 'jisha', 'jisha89@gmail.com', 'great classes & staff'),
(10, 'nikhil', 'nikhil89@yahoo.com', 'friendly gym !');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `image` text COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `image`) VALUES
(8, 'G_img/7-tips-for-a-successful-return-to-the-gym-after-lockdown-1.jpg'),
(7, 'G_img/10.jpg'),
(9, 'G_img/210308-gym-masks-bd-2x1.jpg'),
(10, 'G_img/eight_col_26457257_xl.jpg'),
(11, 'G_img/stock-photo-female-hobby-indoor-strong-athlete-fitness-workout-motivation-muscle-f61d5b81-a0a5-49b8-a75f-a5298beeed18.jpg'),
(12, 'G_img/images (1).jpg'),
(14, 'G_img/images.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `ordermaster`
--

CREATE TABLE `ordermaster` (
  `o_id` int(11) NOT NULL,
  `name` varchar(36) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `address` text COLLATE latin1_general_ci NOT NULL,
  `city` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `t_item` int(15) NOT NULL DEFAULT '0',
  `o_date` date NOT NULL DEFAULT '0000-00-00',
  `t_quantity` int(10) NOT NULL DEFAULT '0',
  `t_price` int(10) NOT NULL DEFAULT '0',
  `payment` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `email_id` varchar(70) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `contact_no` int(13) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `ordermaster`
--

INSERT INTO `ordermaster` (`o_id`, `name`, `address`, `city`, `t_item`, `o_date`, `t_quantity`, `t_price`, `payment`, `email_id`, `contact_no`) VALUES
(1, 'aaa', 'sss', 'jnd', 2, '2020-10-16', 3, 27157, 'Cash On Delivery', 'd@gmail.com', 2147483647),
(2, 'aaa', 'sss', 'jnd', 1, '2020-10-22', 1, 400, 'Cash On Delivery', 'd@gmail.com', 2147483647),
(3, 'aaa', 'sss', 'jnd', 2, '2021-07-01', 3, 27157, 'Cash On Delivery', 'd@gmail.com', 2147483647),
(4, 'aaa', 'sss', 'jnd', 2, '2021-07-01', 2, 15999, 'Cash On Delivery', 'd@gmail.com', 2147483647),
(5, 'aaa', 'sss', 'jnd', 3, '2021-07-01', 3, 42356, 'Cash On Delivery', 'd@gmail.com', 2147483647),
(6, 'aaa', 'sss', 'jnd', 1, '2021-08-23', 1, 2000, 'Cash On Delivery', 'd@gmail.com', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `p_id` int(11) NOT NULL,
  `pname` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `c_id` int(11) NOT NULL DEFAULT '0',
  `pimage` text COLLATE latin1_general_ci NOT NULL,
  `des` text COLLATE latin1_general_ci NOT NULL,
  `price` bigint(20) NOT NULL DEFAULT '0',
  `discount` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`p_id`, `pname`, `c_id`, `pimage`, `des`, `price`, `discount`) VALUES
(1, 'Dumbells stand', 1, 'C_img/flat-dumbell-press-machine-500x500.jpg', 'Dum11', 400, '10'),
(2, 'TredMill', 2, 'C_img/TredMill (1).jpg', 'TredMill', 13999, '10'),
(3, 'MultiGym', 3, 'C_img/multigym.jpg', 'MiltiGym', 26357, '10'),
(4, 'TredMill', 2, 'C_img/TredMill (5).jpg', 'It is a TredMill', 2000, '10');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `user_id` int(11) NOT NULL,
  `name` varchar(45) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `pass` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `birthdate` date NOT NULL DEFAULT '0000-00-00',
  `gender` varchar(8) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `address` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `city` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `email_id` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `contact_no` varchar(13) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `sque` text COLLATE latin1_general_ci NOT NULL,
  `sans` varchar(150) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `regdate` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`user_id`, `name`, `pass`, `birthdate`, `gender`, `address`, `city`, `email_id`, `contact_no`, `sque`, `sans`, `regdate`) VALUES
(3, 'palak', 'palak', '1998-01-01', 'Female', 'university road', 'rajkot', 'palak1243@gmail.com', '9876134534', 'What is your Favourite Hobby?', 'tt', '2021-10-01'),
(2, 'rucha', 'rucha123', '1999-01-01', 'Female', 'moti baug', 'junagadh', 'rucha1243@gmail.com', '9876134534', 'What is Your Nick Name?', 'ruhi', '2021-10-01'),
(4, 'shruti', 'shruti', '2000-01-01', 'Female', 'green city road', 'surat', 'shruti1243@gmail.com', '9876134534', 'What is your Favourite Color?', 'yellow', '2021-10-01'),
(5, 'Cheet', '12345', '2002-07-29', 'Male', 'makkarpura', 'baroda', 'cheetpatel@gmail.com', '8967468907', 'What is Your Nick Name?', 'cheetu', '2021-10-01'),
(7, 'Yug', '89765', '2002-06-19', 'Male', 'indira circle', 'rajkot', 'yugpatel@gmail.com', '8784689073', 'What is your Favourite Food?', 'pizza', '2021-10-01'),
(8, 'nikhil', 'nik567', '2003-05-08', 'Male', 'near big bazar', 'ahemdabad', 'nik90@gmail.com', '9876589764', 'What is your Favourite Hobby?', 'play cricket', '2021-10-01'),
(9, 'yukti', 'yukti890', '2002-10-08', 'Female', 'near sardar baug', 'junagadh', 'yukta@gmail.com', '9987904797', 'Who is your Favourite Idol?', 'msd', '2021-10-01');

-- --------------------------------------------------------

--
-- Table structure for table `trainers`
--

CREATE TABLE `trainers` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `img` text COLLATE latin1_general_ci NOT NULL,
  `email` varchar(60) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `contact` varchar(15) COLLATE latin1_general_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `trainers`
--

INSERT INTO `trainers` (`id`, `name`, `img`, `email`, `contact`) VALUES
(1, 'Gautam Ali', 'C_img/trainer1.png', 'gautamali123@gmail.com', '9874785124'),
(2, 'Asif Ali', 'C_img/trainer3.png', 'asifali786@gmail.com', '7845123698'),
(3, 'Kosha Ali', 'C_img/trainer2.png', 'kosha45@gmail.com', '9865321472');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlog`
--
ALTER TABLE `adminlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordermaster`
--
ALTER TABLE `ordermaster`
  ADD PRIMARY KEY (`o_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `trainers`
--
ALTER TABLE `trainers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminlog`
--
ALTER TABLE `adminlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `ordermaster`
--
ALTER TABLE `ordermaster`
  MODIFY `o_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `trainers`
--
ALTER TABLE `trainers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

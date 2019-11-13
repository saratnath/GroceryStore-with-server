-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2019 at 04:56 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grocery`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2018-05-25 05:51:25');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categry` varchar(100) NOT NULL,
  `cateimg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categry`, `cateimg`) VALUES
(20, 'Food', '20191110031135000000.png'),
(21, 'Home & Cleaning', '20191110031140000000.png'),
(22, 'Baby & Child Care', '20191110031119000000.png'),
(23, 'Pet Care', '20191110031138000000.png'),
(24, 'Sports & Nutrition', '20191110031155000000.png'),
(25, 'Health & HouseHold', '20191110031113000000.png');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `attribute` varchar(100) NOT NULL,
  `currency` varchar(100) NOT NULL DEFAULT 'Rs.',
  `discount` varchar(100) NOT NULL,
  `price` varchar(50) NOT NULL,
  `image` varchar(200) NOT NULL,
  `homepage` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `category`, `description`, `attribute`, `currency`, `discount`, `price`, `image`, `homepage`) VALUES
(10, 'Kesar mango', 'Food', 'The Kesar mango is one of the rarest and best mangoes, which are famous for their fruit quality, attractiveness fruit and pulp colour, taste & good', '1Kg', 'Rs.', '110', '130', '20191110031111000000.png', ''),
(11, 'Yellow Mango', 'Food', '1 piece = 250 - 350 grams (approx.) Sri Lanka is truly the land of mangoes, boasting more varieties than you can count on your fingers. ', '1Kg', 'Rs.', '130', '150', '20191110031155000000.png', ''),
(13, 'Apple Fruit', 'Food', 'Hari Vithal Export Import - offering Apple Fruit, Apple Fruit, ?????, ??? at Rs 200 /kilogram in Valsad, Gujarat. Get best price and read about', '1Kg', 'Rs.', '200', '250', '20191110031151000000.png', ''),
(14, 'Apple Red (6 Pcs Big size)', 'Food', 'Fresh red apple, 6 big sizes in a pack', '1Kg', 'Rs.', '220', '270', '20191110041121000000.png', 'YES'),
(15, 'Orange Fruit', 'Food', '', '1Kg', 'Rs.', '90', '100', '20191110041112000000.png', 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `mobile` varchar(25) NOT NULL,
  `area` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `status` varchar(50) NOT NULL,
  `user_id` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `fname`, `lname`, `mobile`, `area`, `address`, `status`, `user_id`) VALUES
(17000041, 'Santosh', ' ', '9778178337', 'Bhubaneswar', 'Test Address', '', '23'),
(17000042, 'Santosh', ' ', '9778178337', 'Bhubaneswar', 'Test Address', '', '23'),
(17000043, 'Santosh', ' ', '9778178337', 'Bhubaneswar', 'Test Address', '', '23'),
(17000044, 'Santosh', ' ', '9778178337', 'Bhubaneswar', 'Test Address', '', '23'),
(17000045, 'Santosh', ' ', '9778178337', 'Bhubaneswar', 'Test Address', '', '23'),
(17000046, 'Santosh', ' ', '9778178337', 'Bhubaneswar', 'Test Address', '', '23'),
(17000047, 'Santosh', ' ', '9778178337', 'Bhubaneswar', 'Test Address', '', '23'),
(17000048, 'Santosh', ' ', '9778178337', 'Bhubaneswar', 'Test Address', '', '23');

-- --------------------------------------------------------

--
-- Table structure for table `orderslist`
--

CREATE TABLE `orderslist` (
  `id` int(50) NOT NULL,
  `orderid` varchar(50) NOT NULL,
  `itemname` varchar(500) NOT NULL,
  `itemquantity` varchar(100) NOT NULL,
  `attribute` varchar(100) NOT NULL,
  `currency` varchar(100) NOT NULL,
  `itemImage` varchar(250) DEFAULT NULL,
  `itemprice` varchar(30) NOT NULL,
  `itemtotal` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderslist`
--

INSERT INTO `orderslist` (`id`, `orderid`, `itemname`, `itemquantity`, `attribute`, `currency`, `itemImage`, `itemprice`, `itemtotal`) VALUES
(2018088, '17000044', 'Kesar mango', '3', '1Kg', 'Rs.', NULL, '130', '390.0'),
(2018089, '17000045', 'Kesar mango', '3', '1Kg', 'Rs.', '20191110031111000000.png', '130', '390.0'),
(2018090, '17000046', 'Kesar mango', '3', '1Kg', 'Rs.', '20191110031111000000.png', '130', '390.0'),
(2018091, '17000047', 'Kesar mango', '3', '1Kg', 'Rs.', '20191110031111000000.png', '130', '390.0'),
(2018092, '17000048', 'Kesar mango', '3', '1Kg', 'Rs.', '20191110031111000000.png', '130', '390.0');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `area` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `state` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `zip` varchar(11) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `area`, `address`, `state`, `city`, `zip`, `mobile`, `email`, `password`) VALUES
(23, 'Santosh', '', '', 'Test Address', 'Odisha', 'Bhubaneswar', '075698', '9778178337', 'Santosh@quintuslabs.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderslist`
--
ALTER TABLE `orderslist`
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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17000049;

--
-- AUTO_INCREMENT for table `orderslist`
--
ALTER TABLE `orderslist`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2018093;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
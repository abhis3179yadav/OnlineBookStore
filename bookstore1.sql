-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2024 at 11:58 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore1`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteRecord` (IN `added_by_user` VARCHAR(25))   delete  from  cartdetails where added_by_user=added_by_user$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `stockupdate` (IN `stock_unit` INT(10), IN `book_id` INT(10))   update  book_details p set p.stock_unit = stock_unit where p.book_id=book_id$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `book_details`
--

CREATE TABLE `book_details` (
  `book_id` int(20) NOT NULL,
  `book_name` varchar(20) NOT NULL,
  `price` int(20) NOT NULL,
  `stock_unit` int(20) NOT NULL,
  `book_desc` varchar(300) NOT NULL,
  `book_img` varchar(80) NOT NULL,
  `Category` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_details`
--

INSERT INTO `book_details` (`book_id`, `book_name`, `price`, `stock_unit`, `book_desc`, `book_img`, `Category`) VALUES
(20, 'Harry Potter', 500, 148, '\"Follow Harry Potter\'s journey at Hogwarts, where he learns magic, faces challenges, and confronts the dark wizard Voldemort', 'harrayporter.jpeg', 'Biography'),
(23, 'Ramayan', 1555, 134, 'Explore the epic Ramayana\'s tale of Prince Rama\'s quest to rescue his wife Sita from the demon king Ravana', 'ramayan.jpeg', 'Religious'),
(25, 'The Time Machine', 15000, 150, 'Discover H.G. Wells\' \'The Time Machine,\' where a scientist travels to the future, encountering wonders and dystopian societies', 'scifibook.jpg', 'Science fiction'),
(31, 'Geeta', 1555, 150, 'The Bhagavad Gita: ancient Hindu scripture of dialogue between Prince Arjuna and Lord Krishna, discussing duty, righteousness, and spirituality\r\n', 'bhgavatgeeta.jpeg', 'Religious'),
(33, 'The Time Machine', 1550, 5000, 'nice book', 'biograhy.jpeg', 'Science fiction');

-- --------------------------------------------------------

--
-- Table structure for table `cartdetails`
--

CREATE TABLE `cartdetails` (
  `book_no` int(10) NOT NULL,
  `book_name` varchar(50) NOT NULL,
  `unit` int(11) NOT NULL,
  `amount` bigint(11) NOT NULL,
  `added_by_user` varchar(80) NOT NULL,
  `book_img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`) VALUES
(1, 'Biography'),
(2, 'Science fiction'),
(5, 'Religious'),
(8, 'History');

-- --------------------------------------------------------

--
-- Table structure for table `contactdetails`
--

CREATE TABLE `contactdetails` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phoneNumber` varchar(20) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contactdetails`
--

INSERT INTO `contactdetails` (`id`, `name`, `email`, `phoneNumber`, `message`, `phone_number`) VALUES
(10, 'Abhishek Yadav', 'ay3773986@gmail.com', NULL, 'Hello From Abhishek', '09137968403');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `order_no` int(10) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `Address` varchar(225) NOT NULL,
  `postcode` int(10) NOT NULL,
  `city` varchar(20) NOT NULL,
  `phone` int(15) NOT NULL,
  `Additional_information` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`order_no`, `first_name`, `last_name`, `Address`, `postcode`, `city`, `phone`, `Additional_information`) VALUES
(41, 'Abhishek', 'Yadav', 'Mevalal pardesi chawl', 400601, 'Thane', 0, 'hello'),
(42, 'Abhishek', 'Yadav', 'Mevalal pardesi chawl', 400601, 'Thane', 0, 'hello'),
(43, 'Abhishek', 'Yadav', 'Mevalal pardesi chawl', 400601, 'Thane', 0, 'hello'),
(44, 'Abhishek', 'Yadav', 'Mevalal pardesi chawl', 400601, 'Thane', 0, 'hello'),
(45, 'Abhishek', 'Yadav', 'Mevalal pardesi chawl', 400601, 'Thane', 0, 'eggeadbgaeb'),
(46, 'Abhishek', 'Yadav', 'Mevalal pardesi chawl', 400601, 'Thane', 0, 'wegwg'),
(47, 'Abhishek', 'Yadav', 'Mevalal pardesi chawl', 400601, 'Thane', 0, 'ASFSG'),
(48, 'Abhishek', 'Yadav', 'Mevalal pardesi chawl', 400601, 'Thane', 0, 'ASFSG'),
(49, 'Abhishek', 'Yadav', 'Mevalal pardesi chawl', 400601, 'Thane', 0, 'ASFSG'),
(65, 'Abhishek', 'Yadav', 'Mevalal pardesi chawl', 400601, 'Thane', 0, 'Need this'),
(66, 'Abhishek', 'Yadav', 'Mevalal pardesi chawl', 400601, 'Thane', 0, 'Buying'),
(67, 'Abhishek', 'Yadav', 'Mevalal pardesi chawl', 400601, 'Thane', 0, 'Buying'),
(68, 'Abhishek', 'Yadav', 'Mevalal pardesi chawl', 400601, 'Thane', 0, 'hello'),
(69, 'Abhishek', 'Yadav', 'Mevalal pardesi chawl', 400601, 'Thane', 0, 'Hello'),
(70, 'Abhishek', 'Yadav', 'Mevalal pardesi chawl', 400601, 'Thane', 0, 'Hello'),
(71, 'Abhishek', 'Yadav', 'Mevalal pardesi chawl', 400601, 'Thane', 0, 'Need Urgent'),
(72, 'Abhishek', 'Yadav', 'Mevalal pardesi chawl', 400601, 'Thane', 0, 'Hello from user'),
(73, 'Abhishek', 'Yadav', 'Mevalal pardesi chawl', 400601, 'Thane', 0, 'Mumbai'),
(74, 'Abhishek', 'Yadav', 'Mevalal pardesi chawl', 400601, 'Thane', 0, 'Mumbai');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `e_mail` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Role` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `e_mail`, `password`, `Address`, `Role`) VALUES
(10, 'Abhishek', 'Yadav', 'ay3773986@gmail.com', '123456', 'Mevalal pardesi chawl\r\nGokuldaswadi khopat\r\nPokhran road no1', 'Admin'),
(13, 'Sultan', 'Shaikh', 'Sultan@gmail.com', '123456', 'Abc thane', 'User'),
(14, 'Suraj', 'yadav', 'ys3718189@gmail.com', '1234', 'SHIRKE CHAWL,GOKULDASWADI KHOPAT POKHARAN ROAD 1', 'User'),
(16, 'Akhila', 'G', 'abc@gmail.com', '12345', 'SHIRKE CHAWL,GOKULDASWADI KHOPAT POKHARAN ROAD 1', 'User'),
(17, 'Abhi', 'Yadav', 'abhi31@gmail.com', '123456', 'Mumbai', 'User'),
(18, 'Anil ', 'chauhan', 'Anil1234@gmail.com', 'Anil@1234', 'Mumbai Andheri', 'User'),
(19, 'Abhay', 'Yadav', 'abhayadav31@gmail.com', 'Abhi@3179', 'Room no 02 Kalwa ishwar nagar Thane West ', 'User'),
(20, 'Abhi', 'yadav', 'abhi31@gmail.com', 'Abhi@3179', 'Mumbai', 'User');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_details`
--
ALTER TABLE `book_details`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `cartdetails`
--
ALTER TABLE `cartdetails`
  ADD PRIMARY KEY (`book_no`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactdetails`
--
ALTER TABLE `contactdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`order_no`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_details`
--
ALTER TABLE `book_details`
  MODIFY `book_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `cartdetails`
--
ALTER TABLE `cartdetails`
  MODIFY `book_no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contactdetails`
--
ALTER TABLE `contactdetails`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `order_no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

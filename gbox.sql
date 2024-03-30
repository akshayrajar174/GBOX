-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2023 at 03:35 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gbox`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_booking`
--

CREATE TABLE IF NOT EXISTS `tbl_booking` (
  `booking_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` bigint(20) NOT NULL,
  `amount` bigint(20) NOT NULL,
  `booking_date` date NOT NULL,
  `bill_no` bigint(20) NOT NULL,
  `booking_status` varchar(40) NOT NULL,
  PRIMARY KEY (`booking_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tbl_booking`
--

INSERT INTO `tbl_booking` (`booking_id`, `customer_id`, `product_id`, `quantity`, `amount`, `booking_date`, `bill_no`, `booking_status`) VALUES
(1, 5, 1, 1, 5000, '2023-12-01', 2008, 'PAID'),
(2, 5, 1, 3, 15000, '2023-12-01', 2009, 'PAID'),
(3, 5, 3, 1, 5600, '2023-12-01', 2009, 'PAID'),
(4, 5, 1, 2, 10000, '2023-12-05', 2010, 'PAID'),
(5, 5, 1, 3, 15000, '2023-12-06', 2013, 'PAID'),
(6, 5, 4, 5, 3100, '2023-12-06', 2022, 'PAID'),
(7, 6, 4, 4, 2480, '2023-12-06', 2033, 'PAID');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bookingmaster`
--

CREATE TABLE IF NOT EXISTS `tbl_bookingmaster` (
  `bookingmaster_id` int(11) NOT NULL AUTO_INCREMENT,
  `bill_no` bigint(20) NOT NULL,
  `total_amount` bigint(20) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`bookingmaster_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `tbl_bookingmaster`
--

INSERT INTO `tbl_bookingmaster` (`bookingmaster_id`, `bill_no`, `total_amount`, `status`) VALUES
(1, 2001, 5000, 'PAID'),
(2, 2002, 5000, 'PAID'),
(3, 2003, 5000, 'PAID'),
(4, 2004, 5000, 'PAID'),
(5, 2005, 5000, 'PAID'),
(6, 2006, 5000, 'PAID'),
(7, 2007, 5000, 'PAID'),
(8, 2008, 5000, 'PAID'),
(9, 2009, 20600, 'PAID'),
(10, 2010, 10000, 'PAID'),
(11, 2011, 10000, 'PAID'),
(12, 2012, 10000, 'PAID'),
(13, 2013, 15000, 'PAID'),
(14, 2014, 15000, 'PAID'),
(15, 2015, 15000, 'PAID'),
(16, 2016, 15000, 'PAID'),
(17, 2017, 15000, 'PAID'),
(18, 2018, 15000, 'PAID'),
(19, 2019, 15000, 'PAID'),
(20, 2020, 15000, 'PAID'),
(21, 2021, 15000, 'PAID'),
(22, 2022, 3100, 'PAID'),
(23, 2023, 3100, 'PAID'),
(24, 2024, 3100, 'PAID'),
(25, 2025, 3100, 'PAID'),
(26, 2026, 3100, 'PAID'),
(27, 2027, 3100, 'PAID'),
(28, 2028, 3100, 'PAID'),
(29, 2029, 3100, 'PAID'),
(30, 2030, 3100, 'PAID'),
(31, 2031, 3100, 'PAID'),
(32, 2032, 3100, 'PAID'),
(33, 2033, 2480, 'PAID');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE IF NOT EXISTS `tbl_cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) NOT NULL,
  `quantity` bigint(20) NOT NULL,
  `Total` float NOT NULL,
  `customer_id` int(11) NOT NULL,
  `status` varchar(40) NOT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`cart_id`, `product_id`, `quantity`, `Total`, `customer_id`, `status`) VALUES
(1, 1, 2, 10000, 1, 'carted'),
(9, 4, 4, 2480, 6, 'carted'),
(10, 1, 3, 15000, 5, 'carted');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE IF NOT EXISTS `tbl_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(40) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`) VALUES
(1, 'GAMES'),
(2, 'ACCESSORIES');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_delivery`
--

CREATE TABLE IF NOT EXISTS `tbl_delivery` (
  `delivery_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `address` varchar(40) NOT NULL,
  `district_id` int(11) NOT NULL,
  `landmark` varchar(100) NOT NULL,
  `pincode` bigint(20) NOT NULL,
  `phoneno` bigint(20) NOT NULL,
  PRIMARY KEY (`delivery_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `tbl_delivery`
--

INSERT INTO `tbl_delivery` (`delivery_id`, `name`, `address`, `district_id`, `landmark`, `pincode`, `phoneno`) VALUES
(1, 'abc', 'adsf', 3, 'sgdhj', 2633222, 23588544),
(2, 'AMALA SHIBU', 'PULICKAL', 6, 'hp petrol ', 686668, 523363),
(3, 'AMALA SHIBU', 'PULICKAL', 4, 'hp petrol ', 686668, 523363),
(4, 'AMALA SHIBU', 'PULICKAL', 9, 'hp petrol ', 686668, 523363),
(5, 'AMALA SHIBU', 'PULICKAL', 9, 'hp petrol ', 686668, 523363),
(6, 'AMALA SHIBU', 'PULICKAL', 5, 'hp petrol ', 686668, 523363),
(7, 'AMALA SHIBU', 'PULICKAL', 4, 'hp petrol ', 686668, 523363),
(8, 'AMALA SHIBU', 'PULICKAL', 14, 'hp petrol ', 686668, 523363),
(9, 'AMALA SHIBU', 'PULICKAL', 8, 'hp petrol ', 686668, 523363),
(10, 'AMALA SHIBU', 'PULICKAL', 15, 'hp petrol ', 686668, 523363),
(11, 'AMALA SHIBU', 'PULICKAL', 6, 'hp petrol ', 686668, 523363),
(12, 'AMALA SHIBU', 'PULICKAL', 13, 'hp petrol ', 686668, 523363);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_district`
--

CREATE TABLE IF NOT EXISTS `tbl_district` (
  `district_id` int(11) NOT NULL AUTO_INCREMENT,
  `district_name` varchar(50) NOT NULL,
  PRIMARY KEY (`district_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `tbl_district`
--

INSERT INTO `tbl_district` (`district_id`, `district_name`) VALUES
(3, 'Kasargod'),
(4, 'kannur'),
(5, 'Wayanad'),
(6, 'Kozhikode'),
(8, 'Malappuram'),
(9, 'Palakkad'),
(10, 'Thiruvanathapuram'),
(11, 'Kollam'),
(12, 'Alappuzha'),
(13, 'Ernakulam'),
(14, 'Pathanamthitta'),
(15, 'Kannur'),
(16, 'Kottayam'),
(18, 'Idukki');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_location`
--

CREATE TABLE IF NOT EXISTS `tbl_location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `location_name` varchar(50) NOT NULL,
  `district_id` int(11) NOT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tbl_location`
--

INSERT INTO `tbl_location` (`location_id`, `location_name`, `district_id`) VALUES
(2, 'THODUPUZHA', 18),
(3, 'PALA', 16),
(4, 'PALARIVATTOM', 13),
(5, 'MUKKAM', 12),
(6, 'ERATTY', 15),
(7, 'KONDOTI', 8),
(8, 'CHAVARA', 11);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE IF NOT EXISTS `tbl_login` (
  `login_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `role` varchar(30) NOT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`login_id`, `username`, `password`, `role`) VALUES
(1, 'Admin', 'Admin', 'Admin'),
(2, 'ss', 'dssd', 'User'),
(3, 'ss', 'dssd', 'User'),
(4, 'aaa', '1111', 'User'),
(5, 'amala', '12345', 'User'),
(6, 'arya', 'arya', 'User'),
(7, 'liya', 'liya', 'User'),
(8, 'arya', 'arya', 'User'),
(9, 'arya', 'arya', 'User');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE IF NOT EXISTS `tbl_payment` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `bookingdate` date NOT NULL,
  `bookingstatus` varchar(20) NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`payment_id`, `customer_id`, `amount`, `bookingdate`, `bookingstatus`) VALUES
(1, 5, 5000, '2023-12-01', 'PAID'),
(2, 5, 5000, '2023-12-01', 'PAID'),
(3, 5, 5000, '2023-12-01', 'PAID'),
(4, 5, 5000, '2023-12-01', 'PAID'),
(5, 5, 20600, '2023-12-01', 'PAID'),
(6, 5, 10000, '2023-12-05', 'PAID'),
(7, 5, 10000, '2023-12-05', 'PAID'),
(8, 5, 10000, '2023-12-05', 'PAID'),
(9, 5, 15000, '2023-12-06', 'PAID'),
(10, 5, 15000, '2023-12-06', 'PAID'),
(11, 5, 15000, '2023-12-06', 'PAID'),
(12, 5, 15000, '2023-12-06', 'PAID'),
(13, 5, 15000, '0000-00-00', 'PAID'),
(14, 5, 15000, '2023-12-06', 'PAID'),
(15, 5, 15000, '2023-12-06', 'PAID'),
(16, 5, 3100, '2023-12-06', 'PAID'),
(17, 5, 3100, '2023-12-06', 'PAID'),
(18, 5, 3100, '2023-12-06', 'PAID'),
(19, 5, 3100, '2023-12-06', 'PAID'),
(20, 5, 3100, '2023-12-06', 'PAID'),
(21, 5, 3100, '2023-12-06', 'PAID'),
(22, 5, 3100, '2023-12-06', 'PAID'),
(23, 5, 3100, '2023-12-06', 'PAID'),
(24, 5, 3100, '2023-12-06', 'PAID'),
(25, 6, 2480, '2023-12-06', 'PAID');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE IF NOT EXISTS `tbl_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(30) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `image` varchar(155) NOT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(600) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_name`, `subcategory_id`, `image`, `price`, `description`) VALUES
(1, 'Need For Speed', 1, 'OIP.jpg', 5000, 'The open-world action in Need for Speed Most Wanted gives you the freedom to drive your way. Hit jumps and shortcuts, switch cars, lie low, or head for terrain that plays to your vehicle’s unique strengths. Fight your way past cops and rivals using skill, high-end car tech, and tons of nitrous. It’s all about you, your friends, and a wild selection of cars. Let’s see what you can do.'),
(3, 'GTA V', 1, 'Capture.PNG', 5600, 'The recreation of the Los Angeles of GTA San Andreas appears once again in this GTA 5 - Grand Theft Auto, a game in which its three main characters (a swindler, a bank robber, and a psycho) get involved with the worst criminals around, corrupt US government officers and the showtime business. From there on, you know what''s going to happen: violence, the underworld, and a huge world to be explored and where our missions have to be completed.'),
(4, 'Red Gear RGB', 2, '31gtK7P+F+L._SY300_SX300_.jpg', 620, 'Redgear Shadow Blade Mechanical Keyboard with Drive Customization, Spectrum LED Lights, Media Control Knob and Wrist Support (Black)'),
(5, 'GTA V', 1, 'OIP.jpg', 5000, ' GTA V IS ADVENTURE GAME');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_register`
--

CREATE TABLE IF NOT EXISTS `tbl_register` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `district_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `pincode` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `login_id` int(11) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tbl_register`
--

INSERT INTO `tbl_register` (`customer_id`, `firstname`, `lastname`, `email`, `gender`, `age`, `address`, `district_id`, `location_id`, `pincode`, `username`, `password`, `date`, `login_id`) VALUES
(4, 'AMALA', 'SHIBU', 'vaishnavidasdas@gmail.com', 'Female', 22, 'Pulickal (h)', 13, 1, 564788, 'amala', '12345', '2023-11-25', 5),
(5, 'Arya', 'Pradeep', 'vaishnavidasdas@gmail.com', 'Male', 23, 'sdghkll', 9, 7, 414555, 'arya', 'arya', '2023-12-06', 6),
(6, 'liya', 'tom', 'vaishnavidasdas@gmail.com', 'Female', 23, 'sdghkll', 3, 2, 414555, 'liya', 'liya', '2023-12-06', 7),
(7, 'Arya', 'Pradeep', 'vaishnavidasdas@gmail.com', 'Female', 22, 'srfsf', 11, 8, 5555555, 'arya', 'arya', '2023-12-06', 8),
(8, 'Arya', 'Pradeep', 'vaishnavidasdas@gmail.com', 'Female', 22, 'srfsf', 14, 6, 5555555, 'arya', 'arya', '2023-12-06', 9);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subcategory`
--

CREATE TABLE IF NOT EXISTS `tbl_subcategory` (
  `subcategory_id` int(11) NOT NULL AUTO_INCREMENT,
  `subcategory_name` varchar(50) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`subcategory_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_subcategory`
--

INSERT INTO `tbl_subcategory` (`subcategory_id`, `subcategory_name`, `category_id`) VALUES
(1, 'ADVENTURE', 1),
(2, 'KEYBOARD', 2),
(3, 'MOUSE', 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

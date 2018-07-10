-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2018 at 08:12 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `c_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `u_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`c_id`, `p_id`, `product_name`, `product_price`, `file_name`, `quantity`, `u_id`) VALUES
(1, 2, 'Tide Plus', '190', 'Tide_plus.jpg', 1, 3),
(2, 1, 'Surf Excel', '360', 'Surf_Excel.jpg', 1, 3),
(3, 11, 'Kellogg\'s', '170', 'kelloggs.jpg', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `pending_orders`
--

CREATE TABLE `pending_orders` (
  `po_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `cart_total` varchar(100) NOT NULL,
  `bill_fname` varchar(100) NOT NULL,
  `bill_lname` varchar(100) NOT NULL,
  `bill_add` varchar(100) NOT NULL,
  `bill_city` varchar(100) NOT NULL,
  `bill_email` varchar(100) NOT NULL,
  `bill_phone` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pending_orders`
--

INSERT INTO `pending_orders` (`po_id`, `u_id`, `cart_total`, `bill_fname`, `bill_lname`, `bill_add`, `bill_city`, `bill_email`, `bill_phone`, `status`, `date`) VALUES
(1, 2, '1230', 'Gopal', 'krishnan', '46,bharathi cross street', 'khi', 'krishnan.gopal34@gmail.com', '8939244089', 'delivered', '2018-06-15 21:27:19'),
(2, 3, '1880', 'Muthu', 'Kumaran', '46,bharathi cross street', 'khi', 'babuselvam4@gmail.com', '8939244089', 'delivered', '2018-06-16 09:36:19'),
(3, 2, '380', 'gopal', 'Kumaran', '46,bharathi cross street', 'Tamil Nadu', 'anuradharajaprabhu@bsauniv.ac.in', '8939244089', 'delivered', '2018-06-16 16:30:24'),
(4, 4, '290', 'daswanth', 'siva', 'no 1/64 nadu street ', 'Tamil Nadu', 'daswanthvms05@gmail.com', '9600271355', '', '2018-06-16 16:39:56');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `p_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_category` varchar(100) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `offer` varchar(100) NOT NULL,
  `product_des` varchar(1000) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `file_path` varchar(100) NOT NULL,
  `file_ext` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`p_id`, `product_name`, `product_category`, `product_price`, `offer`, `product_des`, `file_name`, `file_path`, `file_ext`) VALUES
(1, 'Surf Excel', 'householdcare', '360', '260', 'Household care', 'Surf_Excel.jpg', 'C:/xampp/htdocs/shopping1/uploads/', '.jpg'),
(2, 'Tide Plus', 'householdcare', '190', '150', 'Tide Plus', 'Tide_plus.jpg', 'C:/xampp/htdocs/shopping1/uploads/', '.jpg'),
(3, 'Comfort', 'householdcare', '60', '150', 'Comfort', 'comfort.jpg', 'C:/xampp/htdocs/shopping1/uploads/', '.jpg'),
(4, 'Rin', 'householdcare', '170', '150', 'Rin', 'rin.jpg', 'C:/xampp/htdocs/shopping1/uploads/', '.jpg'),
(5, 'Ariel', 'householdcare', '170', '150', 'Ariel', 'ariel.jpg', 'C:/xampp/htdocs/shopping1/uploads/', '.jpg'),
(6, 'Sunfeast Dark Fantasy', 'snacksbeverage', '30', '150', 'Sunfeast dark Fantasy', 'sunfeast_dark_fantasy.jpg', 'C:/xampp/htdocs/shopping1/uploads/', '.jpg'),
(7, 'Lays', 'snacksbeverage', '40', '150', 'Lays', 'lays.jpg', 'C:/xampp/htdocs/shopping1/uploads/', '.jpg'),
(8, 'Lipton Green Tea', 'snacksbeverage', '450', '150', 'Lipton Green Tea', 'lipton.jpg', 'C:/xampp/htdocs/shopping1/uploads/', '.jpg'),
(9, 'BRU', 'snacksbeverage', '170', '150', 'BRU', 'bru.jpg', 'C:/xampp/htdocs/shopping1/uploads/', '.jpg'),
(10, 'Tropicana', 'snacksbeverage', '100', '150', 'Tropicana', 'tropicana.jpg', 'C:/xampp/htdocs/shopping1/uploads/', '.jpg'),
(11, 'Kellogg\'s', 'packagedfood', '170', '150', 'Kellogg\'s', 'kelloggs.jpg', 'C:/xampp/htdocs/shopping1/uploads/', '.jpg'),
(12, 'Maggi', 'packagedfood', '100', '150', 'Maggi', 'maggi.jpg', 'C:/xampp/htdocs/shopping1/uploads/', '.jpg'),
(13, 'Maggi Ketchup', 'packagedfood', '200', '150', 'Ketchup', 'maggi_ketchup.jpg', 'C:/xampp/htdocs/shopping1/uploads/', '.jpg'),
(14, 'Cadbury Dairy Milk', 'packagedfood', '150', '150', 'Dairy Milk', 'cadbury_dairy_milk.jpg', 'C:/xampp/htdocs/shopping1/uploads/', '.jpg'),
(15, 'Dove', 'personalbabycare', '160', '150', 'Dove', 'dove.jpg', 'C:/xampp/htdocs/shopping1/uploads/', '.jpg'),
(16, 'Head & Shoulders', 'personalbabycare', '200', '150', '', 'head___shoulder.jpg', 'C:/xampp/htdocs/shopping1/uploads/', '.jpg'),
(17, 'Colgate', 'personalbabycare', '100', '150', 'Colgate', 'colgate.jpg', 'C:/xampp/htdocs/shopping1/uploads/', '.jpg'),
(18, 'Axe', 'personalbabycare', '180', '150', 'Axe', 'axe.jpg', 'C:/xampp/htdocs/shopping1/uploads/', '.jpg'),
(19, 'gopal', 'householdcare', '200', '150', 'gopal', 'colgate1.jpg', 'C:/xampp/htdocs/shopping1/uploads/', '.jpg'),
(20, 'gopal', 'householdcare', '200', '150', 'gopal', 'colgate2.jpg', 'C:/xampp/htdocs/shopping1/uploads/', '.jpg'),
(21, 'krishnan', 'householdcare', '200', '150', 'krishnan', 'head___shoulder1.jpg', 'C:/xampp/htdocs/shopping1/uploads/', '.jpg'),
(22, 'magesh', 'householdcare', '200', '100', 'magsh', 'dove1.jpg', 'C:/xampp/htdocs/shopping1/uploads/', '.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_history`
--

CREATE TABLE `purchase_history` (
  `ph_id` int(11) NOT NULL,
  `oh` int(11) NOT NULL,
  `p_name` varchar(100) NOT NULL,
  `p_price` varchar(100) NOT NULL,
  `p_qty` varchar(100) NOT NULL,
  `u_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_history`
--

INSERT INTO `purchase_history` (`ph_id`, `oh`, `p_name`, `p_price`, `p_qty`, `u_id`, `date`) VALUES
(1, 1, 'Ariel', '230', '1', 2, '2018-06-15 21:25:53'),
(2, 2, 'Ariel', '230', '1', 3, '2018-06-16 09:33:59'),
(3, 2, 'Ariel', '230', '2', 3, '2018-06-16 09:33:59'),
(4, 2, 'Tide Plus', '190', '1', 3, '2018-06-16 09:33:59'),
(5, 3, 'Tide Plus', '190', '2', 2, '2018-06-16 16:21:44'),
(6, 4, 'Comfort', '60', '2', 4, '2018-06-16 16:39:56'),
(7, 4, 'BRU', '170', '1', 4, '2018-06-16 16:39:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `fname`, `lname`, `username`, `email`, `password`, `status`) VALUES
(1, 'Abmin', 'admin', 'admin', 'admin@gmail.com', 'admin', 'admin'),
(2, 'gopal', 'krishnan', 'gopal', 'gopal@gmail.com', 'gopal', ''),
(3, 'Muthu', 'Kumaran', 'muthu', 'muthu@gmail.com', 'muthu', ''),
(4, 'daswanth', 'siva', 'daswanthsiva', 'daswanthvms05@gmail.com', 'daswanth123', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`po_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `purchase_history`
--
ALTER TABLE `purchase_history`
  ADD PRIMARY KEY (`ph_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `purchase_history`
--
ALTER TABLE `purchase_history`
  MODIFY `ph_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

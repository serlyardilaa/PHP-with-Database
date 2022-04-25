-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2022 at 08:21 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `student_data`
--

CREATE TABLE `student_data` (
  `id` int(10) NOT NULL,
  `u_card` varchar(12) NOT NULL,
  `u_f_name` text NOT NULL,
  `u_l_name` text NOT NULL,
  `u_father` text NOT NULL,
  `u_aadhar` varchar(12) NOT NULL,
  `u_birthday` text NOT NULL,
  `u_gender` varchar(6) NOT NULL,
  `u_email` text NOT NULL,
  `u_phone` varchar(10) NOT NULL,
  `u_state` varchar(12) NOT NULL,
  `u_dist` text NOT NULL,
  `u_village` text NOT NULL,
  `u_police` text NOT NULL,
  `u_pincode` text NOT NULL,
  `file` longblob NOT NULL,
  `u_mother` varchar(30) NOT NULL,
  `u_family` text NOT NULL,
  `staff_id` varchar(12) NOT NULL,
  `image` varchar(150) NOT NULL,
  `uploaded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_data`
--

INSERT INTO `student_data` (`id`, `u_card`, `u_f_name`, `u_l_name`, `u_father`, `u_aadhar`, `u_birthday`, `u_gender`, `u_email`, `u_phone`, `u_state`, `u_dist`, `u_village`, `u_police`, `u_pincode`, `file`, `u_mother`, `u_family`, `staff_id`, `image`, `uploaded`) VALUES
(124, '20050974034', 'Muslich', 'Romadhon', '', '', '2001-11-16', 'Male', 'muslich.20034@mhs.unesa.ac.id', '111', 'Choose...', '', '', '', '', '', '', '', '', 'HBD Muslekk.jpg', '2022-04-23 13:20:06'),
(125, '2', 'Wahyu', 'Rahman', '', '', '', 'Male', '', '222222', 'Choose...', '', '', '', '', '', '', '', '', 'MUSLEK TEP.jpg', '2022-04-23 13:21:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(93, 'muslich', '$2y$10$/X7Dsm9VkzLrZMyIdBL3GOTVqI0KgAO1xUpXXwtn6WrOlA4Xy74xG', '2022-04-23 13:10:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student_data`
--
ALTER TABLE `student_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student_data`
--
ALTER TABLE `student_data`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

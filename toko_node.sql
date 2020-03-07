-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2020 at 11:32 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_node`
--

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_code` int(100) NOT NULL,
  `item_name` varchar(500) NOT NULL,
  `price` varchar(500) NOT NULL,
  `stock` varchar(500) NOT NULL,
  `owner_email` varchar(500) NOT NULL,
  `owner_id` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_code`, `item_name`, `price`, `stock`, `owner_email`, `owner_id`) VALUES
(1, 'Laptop', '15000000', '45', 'harry@gmail.com', '1'),
(2, 'Buku', '15000', '45', 'merlien@gmail.com', '3'),
(3, 'Meja', '150000', '45', 'merlien@gmail.com', '3'),
(4, 'HandPhone', '3000000', '45', 'merlien@gmail.com', '3'),
(5, 'Majalah', '15000', '45', 'merlien@gmail.com', '3');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(10) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `number` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `firstName`, `lastName`, `gender`, `email`, `password`, `number`) VALUES
(1, 'Harry', 'Merlien', 'L', 'harry@gmail.com', '$2b$10$tLM.zdUfwYIqlc0Yd6aAyuX5snxMzeyskLmNLqHR4Assi4j6afrJW', '082147372768'),
(2, 'Hamfa', 'Merlien', 'L', 'hamfa@gmail.com', '$2b$10$xuHsusUxzkNxm2aZV82E8.mvTziPhR1tWgTYSRmvifLH1ZduMZcfC', '082147372768'),
(3, 'Merlien', 'Fadhlurrohman', 'L', 'merlien@gmail.com', '$2b$10$P0tmlZEAqjz6N3oOnR87F.rYpVyuo9l21hR.vbDiReNverX5llgLC', '082147372768');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `kode_transaksi` int(100) NOT NULL,
  `namaBarang` varchar(500) NOT NULL,
  `emailPemilik` varchar(500) NOT NULL,
  `harga` varchar(500) NOT NULL,
  `jumlah` varchar(500) NOT NULL,
  `hargaTotal` varchar(500) NOT NULL,
  `namaPembeli` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`kode_transaksi`, `namaBarang`, `emailPemilik`, `harga`, `jumlah`, `hargaTotal`, `namaPembeli`) VALUES
(1, 'Laptop', 'harry@gmail.com', '15000000', '1', '15000000', 'Merlien'),
(2, 'Laptop', 'harry@gmail.com', '15000000', '2', '30000000', 'Merlien');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_code`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`kode_transaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `item_code` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `kode_transaksi` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

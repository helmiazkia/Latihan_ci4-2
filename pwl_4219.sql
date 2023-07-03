-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2023 at 01:18 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pwl_4219`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `harga` float DEFAULT NULL,
  `diskon` int(11) NOT NULL,
  `hrg_pengurangan` int(11) NOT NULL,
  `hrg_setelah` int(11) NOT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  `foto` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `nama`, `harga`, `diskon`, `hrg_pengurangan`, `hrg_setelah`, `jumlah`, `keterangan`, `foto`) VALUES
(1, 'Indomie Goreng', 2500, 10, 0, 0, 50, 'Indomie Seleraku', 'indomie-mi-goreng-special_detail_094906814 (1).png'),
(2, 'Sari Roti Kismis', 5000, 20, 0, 0, 100, 'Roti Single', 'roti_tawar_raisin1.jpg'),
(3, 'Susu Ultra', 5000, 0, 0, 0, 100, 'Susu UHT', 'e31f03c4-8216-425d-8279-b7cee6e75cf8.jpg'),
(4, 'Dji Sam Soe Refill', 20000, 0, 0, 0, 24, 'Ududnya Orang NU', 'dji-sam-soe-234-premium-12-285587.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `role` varchar(25) NOT NULL,
  `password` varchar(225) NOT NULL,
  `is_aktif` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `role`, `password`, `is_aktif`) VALUES
(1, 'Helmiaz', 'admin', '202cb962ac59075b964b07152d234b70', 1),
(3, 'azkias', 'user', 'd93591bdf7860e1e4ee2fca799911215', 1),
(4, 'hahaha', 'user', '$2y$10$4zCRsMGPCbWh4wnGCTRGW.1Zoef/xnJBqK8L.cL6U52K2SIrpF5wS', 1),
(5, 'register', 'user', '01cfcd4f6b8770febfb40cb906715822', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

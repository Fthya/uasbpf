-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jul 21, 2022 at 04:56 PM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uasbpf`
--

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(25) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `stok` int(25) NOT NULL,
  `harga` int(25) NOT NULL,
  `gambar` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `nama`, `stok`, `harga`, `gambar`) VALUES
(1, 'Cappucino', 10, 25000, 'pic');

-- --------------------------------------------------------

--
-- Table structure for table `shift`
--

CREATE TABLE `shift` (
  `id` int(11) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `posisi` varchar(25) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shift`
--

INSERT INTO `shift` (`id`, `nama`, `posisi`, `email`) VALUES
(2, 'Cia', 'Head Barista', 'cia@mail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `password`, `gambar`, `role`, `date_created`) VALUES
(1, '', 'user@mail.com', '$2y$10$1KiqjuV9n0bJ2.H6erwKQel6AXDopkbd1KKiZZHea13DPI8thV/zC', 'default.jpg', 'user', 1658217120),
(2, '', 'admin@mail.com', '$2y$10$Kh6/EqQxKo4fDTyOfFGcwO9ldERjaZ0DMqBG/zrGsHIHexK814Seq', 'default.jpg', 'admin', 1658221224),
(3, '', 'user2@mail.com', '$2y$10$yx0rC/eD.moEb.XVBqb62OeTyzq4/DNTIFYH3aXiMlMjbtyGP1GeK', 'default.jpg', 'user', 1658313232),
(4, 'ido', 'ido@mail.com', '$2y$10$OFeqXZYpWiq7.5EQzg8OwuAJM1RuZXwbdKmkJn/YPNIVD9D1lD.aG', 'default.jpg', 'User', 1658335837),
(5, 'Admin', 'admin2@mail.com', '$2y$10$U1J2q2RBB3.m30SYMrpTiOh2qsioSulQioDQPVCrsF3PJc2PncgAq', 'default.jpg', 'Admin', 1658337489);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shift`
--
ALTER TABLE `shift`
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
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shift`
--
ALTER TABLE `shift`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

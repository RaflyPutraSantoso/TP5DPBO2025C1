-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2025 at 01:31 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_mahasiswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `bidang_studi`
--

CREATE TABLE `bidang_studi` (
  `id` int(11) NOT NULL,
  `nama_bidang_studi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bidang_studi`
--

INSERT INTO `bidang_studi` (`id`, `nama_bidang_studi`) VALUES
(1, 'RPL'),
(2, 'SI'),
(3, 'Data'),
(4, 'Multimedia'),
(5, 'Jaringan');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nim` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `bidang_studi_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nim`, `nama`, `jenis_kelamin`, `bidang_studi_id`) VALUES
(1, '2203999', 'Amelia Zalfa Julianti', 'Perempuan', 1),
(2, '2202292', 'Muhammad Iqbal Fadhilah', 'Laki-laki', 2),
(3, '2202346', 'Muhammad Rifky Afandi', 'Laki-laki', 3),
(4, '2210239', 'Muhammad Hanif Abdillah', 'Laki-laki', 4),
(5, '2202046', 'Nurainun', 'Perempuan', 5),
(6, '2205101', 'Kelvin Julian Putra', 'Laki-laki', 1),
(7, '2200163', 'Rifanny Lysara Annastasya', 'Perempuan', 2),
(8, '2202869', 'Revana Faliha Salma', 'Perempuan', 3),
(9, '2209489', 'Rakha Dhifiargo Hariadi', 'Laki-laki', 4),
(10, '2203142', 'Roshan Syalwan Nurilham', 'Laki-laki', 5),
(11, '2200311', 'Raden Rahman Ismail', 'Laki-laki', 1),
(12, '2200978', 'Ratu Syahirah Khairunnisa', 'Perempuan', 2),
(13, '2204509', 'Muhammad Fahreza Fauzan', 'Laki-laki', 3),
(14, '2205027', 'Muhammad Rizki Revandi', 'Laki-laki', 4),
(15, '2203484', 'Arya Aydin Margono', 'Laki-laki', 5),
(16, '2200481', 'Marvel Ravindra Dioputra', 'Laki-laki', 1),
(17, '2209889', 'Muhammad Fadlul Hafiizh', 'Laki-laki', 2),
(18, '2206697', 'Rifa Sania', 'Perempuan', 3),
(19, '2207260', 'Imam Chalish Rafidhul Haque', 'Laki-laki', 4),
(20, '2204343', 'Meiva Labibah Putri', 'Perempuan', 5),
(24, '2100846', 'Rafly Putra Santoso', 'Laki-laki', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bidang_studi`
--
ALTER TABLE `bidang_studi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_nim` (`nim`),
  ADD KEY `fk_bidang_studi` (`bidang_studi_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bidang_studi`
--
ALTER TABLE `bidang_studi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `fk_bidang_studi` FOREIGN KEY (`bidang_studi_id`) REFERENCES `bidang_studi` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

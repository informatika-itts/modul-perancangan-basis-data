-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2023 at 03:03 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `modul5`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id_customer` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id_customer`, `nama`, `alamat`, `jenis_kelamin`, `tanggal_lahir`) VALUES
(1, 'John', 'Jl. ABC No. 123', 'L', '1990-01-15'),
(2, 'Jane', 'Jl. XYZ No. 456', 'P', '1988-05-20'),
(3, 'Michael', '123 Main St', 'L', '1985-07-10'),
(4, 'Emily', '456 Elm St', 'P', '1992-03-30'),
(5, 'Robert', '789 Oak St', 'L', '1983-09-25'),
(6, 'Sarah', '111 Pine St', 'P', '1991-12-05'),
(7, 'William', '222 Cedar St', 'L', '1987-02-14'),
(8, 'Olivia', '333 Birch St', 'P', '1986-06-22'),
(9, 'David', '444 Maple St', 'L', '1993-04-18'),
(10, 'Ava', '555 Spruce St', 'P', '1994-08-08'),
(11, 'James', '666 Oak St', 'L', '1989-11-02'),
(12, 'Sophia', '777 Elm St', 'P', '1984-10-11'),
(13, 'Daniel', '888 Pine St', 'L', '1995-07-03'),
(14, 'Olivia', '999 Cedar St', 'P', '1993-02-25'),
(15, 'Ethan', '111 Birch St', 'L', '1990-09-17'),
(16, 'Emma', '222 Maple St', 'P', '1986-03-14'),
(17, 'Logan', '333 Spruce St', 'L', '1984-12-09'),
(18, 'Ava', '444 Oak St', 'P', '1992-08-19'),
(19, 'Liam', '555 Elm St', 'L', '1991-06-26'),
(20, 'Mia', '666 Cedar St', 'P', '1994-04-10'),
(21, 'Noah', '777 Pine St', 'L', '1993-01-28'),
(22, 'Isabella', '888 Main St', 'P', '1988-10-02'),
(23, 'Sophia', '999 Birch St', 'P', '1987-04-23'),
(24, 'Mason', '111 Elm St', 'L', '1985-07-29'),
(25, 'Oliver', '222 Oak St', 'L', '1995-03-31'),
(26, 'Emma', '333 Spruce St', 'P', '1990-12-12'),
(27, 'Harper', '444 Cedar St', 'P', '1991-05-15'),
(28, 'Charlotte', '555 Maple St', 'P', '1989-09-08'),
(29, 'Liam', '666 Birch St', 'L', '1988-11-27'),
(30, 'Benjamin', '777 Elm St', 'L', '1994-02-07'),
(31, 'Amelia', '888 Pine St', 'P', '1993-07-09'),
(32, 'Evelyn', '999 Main St', 'P', '1992-08-21'),
(33, 'Mia', '111 Cedar St', 'P', '1991-06-29'),
(34, 'William', '222 Birch St', 'L', '1990-05-24'),
(35, 'Abigail', '333 Elm St', 'P', '1987-03-26'),
(36, 'Henry', '444 Spruce St', 'L', '1986-10-03'),
(37, 'Oliver', '555 Cedar St', 'L', '1993-04-15'),
(38, 'Ella', '666 Oak St', 'P', '1994-09-26'),
(39, 'Sofia', '777 Pine St', 'P', '1995-01-19'),
(40, 'Samuel', '888 Main St', 'L', '1989-02-14'),
(41, 'Ava', '999 Maple St', 'P', '1988-06-05'),
(42, 'Lucas', '111 Elm St', 'L', '1992-03-21'),
(43, 'Jackson', '222 Cedar St', 'L', '1991-08-14'),
(44, 'Scarlett', '333 Oak St', 'P', '1987-12-19'),
(45, 'Sophia', '444 Elm St', 'P', '1990-07-26'),
(46, 'Liam', '555 Pine St', 'L', '1989-09-30'),
(47, 'Aiden', '666 Birch St', 'L', '1993-02-18'),
(48, 'Madison', '777 Spruce St', 'P', '1986-06-22'),
(49, 'Ava', '888 Cedar St', 'P', '1988-04-07'),
(50, 'Lily', '999 Birch St', 'P', '1991-05-30');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `id_pembelian` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `produk_id` int(11) DEFAULT NULL,
  `jumlah_pembelian` int(11) DEFAULT NULL,
  `tanggal_pembelian` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`id_pembelian`, `customer_id`, `produk_id`, `jumlah_pembelian`, `tanggal_pembelian`) VALUES
(1, 35, 5, 19, '2023-11-03'),
(2, 5, 3, 15, '2023-11-08'),
(3, 3, 10, 5, '2023-11-11'),
(4, 2, 13, 11, '2023-10-15'),
(5, 3, 14, 7, '2023-10-23'),
(6, 4, 12, 16, '2023-10-15'),
(7, 4, 14, 1, '2023-10-14'),
(8, 12, 9, 3, '2023-10-26'),
(9, 8, 10, 2, '2023-10-24'),
(10, 9, 2, 22, '2023-10-20'),
(11, 8, 3, 8, '2023-10-28'),
(12, 13, 12, 19, '2023-11-06'),
(13, 21, 9, 2, '2023-10-20'),
(14, 17, 9, 4, '2023-10-31'),
(15, 30, 8, 1, '2023-10-18'),
(16, 5, 13, 8, '2023-10-31'),
(17, 2, 13, 10, '2023-11-12'),
(18, 5, 12, 12, '2023-10-22'),
(19, 7, 2, 16, '2023-10-15'),
(20, 5, 4, 13, '2023-10-25'),
(21, 9, 14, 13, '2023-10-30'),
(22, 6, 4, 7, '2023-11-02'),
(23, 40, 5, 1, '2023-11-12'),
(24, 10, 14, 23, '2023-10-30'),
(25, 12, 14, 7, '2023-10-23'),
(26, 14, 7, 2, '2023-10-23'),
(27, 5, 9, 24, '2023-10-31'),
(28, 13, 8, 19, '2023-11-02'),
(29, 9, 7, 4, '2023-11-04'),
(30, 7, 10, 24, '2023-11-02'),
(31, 9, 6, 6, '2023-10-15'),
(32, 4, 14, 6, '2023-10-14'),
(33, 13, 11, 4, '2023-10-31'),
(34, 23, 11, 5, '2023-11-10'),
(35, 8, 9, 5, '2023-11-08'),
(36, 9, 11, 11, '2023-11-12'),
(37, 25, 11, 9, '2023-11-05'),
(38, 2, 10, 25, '2023-11-11'),
(39, 28, 11, 16, '2023-10-15'),
(40, 29, 7, 8, '2023-10-30'),
(41, 21, 8, 7, '2023-10-20'),
(42, 25, 9, 4, '2023-11-03'),
(43, 20, 15, 23, '2023-10-26'),
(44, 12, 6, 22, '2023-10-22'),
(45, 32, 9, 23, '2023-10-25'),
(46, 34, 9, 8, '2023-10-28'),
(47, 23, 7, 24, '2023-11-03'),
(48, 24, 5, 12, '2023-10-21'),
(49, 14, 6, 13, '2023-10-27'),
(50, 11, 9, 4, '2023-10-30');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `judul_produk` varchar(50) DEFAULT NULL,
  `harga_produk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `judul_produk`, `harga_produk`) VALUES
(1, 'The Originote Ceramella Sunscreen SPF50 PA+++', 42000),
(2, 'Lilith and Eve Black Opium Eau De Parfum', 78000),
(3, 'SKINTIFIC Alaska Volcano Pore Clay Stick', 88000),
(4, 'L’Oreal Paris 32 Hr Foundation', 160000),
(5, 'SOMETHINC HOOMAN Breathable Cushion', 189000),
(6, 'SOMETHINC Hooman Under Control', 130000),
(7, 'Maybelline Vinyl Ink', 110000),
(8, 'Maybelline Sky High Mascara', 125000),
(9, 'Maybelline Hypersharp EyeLiner', 145000),
(10, 'Nivea Body Lotion', 45000),
(11, 'Cetaphil Face Wash', 120000),
(12, 'Skintific Fondation', 190000),
(13, 'Skintific Tranexamideacid', 130000),
(14, 'Azarine Barier Moisturizer', 50000),
(15, 'Skintific Niacinamide', 250000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `produk_id` (`produk_id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id_customer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD CONSTRAINT `pembelian_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id_customer`),
  ADD CONSTRAINT `pembelian_ibfk_2` FOREIGN KEY (`produk_id`) REFERENCES `produk` (`id_produk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

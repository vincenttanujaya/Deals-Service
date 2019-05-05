-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Bulan Mei 2019 pada 17.37
-- Versi server: 10.1.31-MariaDB
-- Versi PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `deals`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `deals`
--

CREATE TABLE `deals` (
  `id_deals` int(11) NOT NULL,
  `deals_name` varchar(50) NOT NULL,
  `deals_description` varchar(400) NOT NULL,
  `deals_exp` date NOT NULL,
  `deals_start_date` date NOT NULL,
  `deals_type` varchar(50) NOT NULL,
  `deals_disc_type` varchar(50) NOT NULL,
  `deals_discount` int(11) DEFAULT NULL,
  `deals_max_value` int(11) DEFAULT NULL,
  `deals_min_payment` int(11) DEFAULT NULL,
  `deals_pict` varchar(1024) NOT NULL DEFAULT 'deals.jpg',
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `deals`
--

INSERT INTO `deals` (`id_deals`, `deals_name`, `deals_description`, `deals_exp`, `deals_start_date`, `deals_type`, `deals_disc_type`, `deals_discount`, `deals_max_value`, `deals_min_payment`, `deals_pict`, `created_date`) VALUES
(3, 'PROMO MERDEKA', 'Disc 50% Maks. 20000', '2019-05-31', '2019-05-01', 'Makanan', 'Discount', 50, 2000, 0, 'images.jpg', '2019-05-05 10:23:33'),
(4, 'PROMO MERDEKAAAA', 'Disc 50% Maks. 20000', '2019-05-31', '2019-05-01', 'Makanan', 'Discount', 50, 2000, 0, 'images.jpsg', '2019-05-05 14:39:49'),
(6, 'PROMO MERDEKA', 'Disc 50% Maks. 20000', '2019-05-31', '2019-05-01', 'Makanan', 'Discount', 50, 2000, 0, 'images.jpg', '2019-05-05 15:35:16'),
(7, 'PROMO MERDEKA', 'Disc 50% Maks. 20000', '2019-05-31', '2019-05-01', 'Makanan', 'Discount', 50, 2000, 0, 'images.jpg', '2019-05-05 15:35:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `deals_record`
--

CREATE TABLE `deals_record` (
  `id_record_deals` int(11) NOT NULL,
  `id_deals` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `deals`
--
ALTER TABLE `deals`
  ADD PRIMARY KEY (`id_deals`);

--
-- Indeks untuk tabel `deals_record`
--
ALTER TABLE `deals_record`
  ADD PRIMARY KEY (`id_record_deals`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `deals`
--
ALTER TABLE `deals`
  MODIFY `id_deals` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `deals_record`
--
ALTER TABLE `deals_record`
  MODIFY `id_record_deals` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

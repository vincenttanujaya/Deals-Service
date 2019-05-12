-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Bulan Mei 2019 pada 18.40
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
  `id_restoran` int(11) DEFAULT NULL,
  `deals_name` varchar(50) NOT NULL,
  `deals_description` varchar(400) NOT NULL,
  `deals_max_use` int(11) DEFAULT NULL,
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

INSERT INTO `deals` (`id_deals`, `id_restoran`, `deals_name`, `deals_description`, `deals_max_use`, `deals_exp`, `deals_start_date`, `deals_type`, `deals_disc_type`, `deals_discount`, `deals_max_value`, `deals_min_payment`, `deals_pict`, `created_date`) VALUES
(3, 1, 'PROMO MERDEKA', 'Disc 50% Maks. 20000', 3, '2019-05-31', '2019-05-01', 'Makanan', 'Discount', 50, 2000, 0, 'images.jpg', '2019-05-05 10:23:33'),
(4, NULL, 'PROMO MERDEKAAAA', 'Disc 50% Maks. 20000', 3, '2019-05-31', '2019-05-01', 'Makanan', 'Discount', 50, 2000, 0, 'images.jpsg', '2019-05-05 14:39:49'),
(6, NULL, 'PROMO MERDEKA', 'Disc 50% Maks. 20000', 3, '2019-05-31', '2019-05-01', 'Makanan', 'Discount', 50, 2000, 0, 'images.jpg', '2019-05-05 15:35:16'),
(7, NULL, 'PROMO MERDEKA', 'Disc 50% Maks. 20000', NULL, '2019-05-31', '2019-05-01', 'Makanan', 'Discount', 50, 2000, 0, 'images.jpg', '2019-05-05 15:35:24'),
(10, NULL, 'WKWK', 'hehehe', NULL, '2019-05-23', '2019-05-01', 'Makanan', 'Potongan', 4000, 4000, 0, 'deals.jpg', '2019-05-06 05:34:19'),
(11, NULL, 'PROMO RAMADHAN', 'Disc 50% Maks. 20000', NULL, '2019-05-31', '2019-05-01', 'Makanan', 'Discount', 50, 2000, 0, 'images.jpg', '2019-05-06 05:34:49'),
(12, NULL, 'PROMO BUKA', 'Disc 50% Maks. 20000', NULL, '2019-05-31', '2019-05-01', 'Makanan', 'Discount', 50, 2000, 0, 'images.jpg', '2019-05-06 08:42:16'),
(13, NULL, 'PROMO BUKA', 'Disc 50% Maks. 20000', NULL, '2019-05-31', '2019-05-01', 'Makanan', 'Discount', 50, 2000, 0, 'images.jpg', '2019-05-06 08:42:45'),
(22, NULL, 'PROMO MERDEKAAAA', 'Disc 50% Maks. 20000', 3, '2019-05-31', '2019-05-01', 'Makanan', 'Discount', 50, 2000, 0, 'images.jpsg', '2019-05-12 16:39:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `deals_record`
--

CREATE TABLE `deals_record` (
  `id_record_deals` int(11) NOT NULL,
  `id_deals` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `deals_record`
--

INSERT INTO `deals_record` (`id_record_deals`, `id_deals`, `id_customer`) VALUES
(2, 4, 3),
(3, 3, 3),
(4, 3, 3),
(5, 3, 3),
(6, 3, 3),
(7, 1, 3),
(8, 2, 3),
(9, 2, 3);

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
  MODIFY `id_deals` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `deals_record`
--
ALTER TABLE `deals_record`
  MODIFY `id_record_deals` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

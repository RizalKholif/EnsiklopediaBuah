-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 01 Des 2018 pada 19.40
-- Versi Server: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kantinum`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `konsumen`
--

CREATE TABLE `konsumen` (
  `nama` varchar(50) NOT NULL,
  `tempat` varchar(50) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `waktu_pesan` varchar(50) NOT NULL,
  `id_pesanan` int(11) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Waiting'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `konsumen`
--

INSERT INTO `konsumen` (`nama`, `tempat`, `no_telp`, `waktu_pesan`, `id_pesanan`, `status`) VALUES
('aku', 'disini', '11', '1011112029', 1, 'diterima'),
('dan kau', 'disana', '22', '1011112104', 2, 'diterima'),
('lolo', 'lili', '1010', '1011013255', 3, 'diterima'),
('iwan', 'a1 japan', '00000', '1111034810', 4, 'diterima'),
('jono', 'g4', '000011', '1111035117', 5, 'diterima'),
('joni', 'g3', '213123', '1111040702', 6, 'menunggu'),
('reno', 'h5', '123', '1111040822', 7, 'menunggu'),
('koko', 'h5 depan', '21111', '1111041116', 8, 'menunggu'),
('niki', 'g2', '11111', '1111041150', 9, 'menunggu'),
('wong sugeh', 'istana', '777777777', '1111054735', 10, 'diterima'),
('budi', 'cafe warna a1', '214205136', '1211085104', 11, 'menunggu'),
('saya', 'disini', '123456', '1311021336', 12, 'menunggu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `nama` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL,
  `jenis` varchar(8) NOT NULL,
  `status` varchar(7) NOT NULL,
  `gambar` varchar(25) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`nama`, `harga`, `jenis`, `status`, `gambar`, `jumlah`, `rating`) VALUES
('Air Mineral', 3000, 'minuman', 'ada', 'img/mnn/air.jpg', 112, 4),
('Ayam Bakar', 11000, 'makanan', 'ada', 'img/mkn/ay_bakar.jpg', 100, 4),
('Ayam Geprek', 10000, 'makanan', 'ada', 'img/mkn/ayam_geprek.jpg', 106, 4),
('Ayam Goreng', 10000, 'makanan', 'ada', 'img/mkn/ayam_goreng.jpg', 101, 4),
('Burger', 10000, 'snack', 'ada', 'img/snk/burger.jpg', 113, 4),
('Cap Cay', 12000, 'makanan', 'ada', 'img/mkn/capcay.jpg', 114, 5),
('Es Campur', 8000, 'minuman', 'ada', 'img/mnn/es_campur.jpg', 117, 4),
('Es Coklat', 7000, 'minuman', 'ada', 'img/mnn/coklat.jpg', 115, 4),
('Es Jeruk', 4000, 'minuman', 'ada', 'img/mnn/jeruk.jpg', 102, 3),
('Es Teh', 3000, 'mnn', 'ada', 'img/mnn/teh.jpg', 105, 5),
('Gado-Gado', 10000, 'makanan', 'ada', 'img/mkn/gado_gado.jpg', 118, 4),
('Jamur Crispy', 7000, 'makanan', 'ada', 'img/mkn/jamur.jpg', 121, 4),
('Jus Jambu', 7000, 'minuman', 'ada', 'img/mnn/jambu.jpg', 110, 5),
('Jus Strawberry', 7000, 'minuman', 'ada', 'img/mnn/strawberry.jpg', 107, 4),
('Kentang Goreng', 6000, 'snack', 'ada', 'img/snk/kentang.jpg', 108, 4),
('Kopi', 5000, 'minuman', 'ada', 'img/mnn/kopi.jpg', 122, 4),
('Lalapan', 8000, 'makanan', 'ada', 'img/mkn/lalapan.jpg', 124, 4),
('Macaron', 14000, 'snack', 'ada', 'img/snk/macaron.jpg', 127, 5),
('Martabak Manis', 12000, 'snack', 'ada', 'img/snk/mtb_manis.jpg', 120, 4),
('Martabak Telur', 10000, 'snack', 'ada', 'img/snk/mtb_telur.jpg', 123, 4),
('Mie Goreng', 10000, 'makanan', 'ada', 'img/mkn/mie_grg.jpg', 103, 4),
('Mie Kuah', 9000, 'makanan', 'ada', 'img/mkn/mie_kuah.jpg', 109, 4),
('MilkShake Coklat', 10000, 'minuman', 'ada', 'img/mnn/milks_coklat.jpg', 119, 4),
('Nasi Goreng', 12000, 'makanan', 'ada', 'img/mkn/nasi_goreng.jpg', 111, 5),
('Pisang Goreng', 4000, 'snack', 'ada', 'img/snk/pisang_goreng.jpg', 126, 3),
('Risoles', 5000, 'snack', 'ada', 'img/snk/risoles.jpg', 125, 3),
('Seblak', 6000, 'snack', 'ada', 'img/snk/seblak.jpg', 104, 5),
('Seblak Ceker', 7000, 'makanan', 'ada', 'img/mkn/ceker.jpg', 116, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE `pesanan` (
  `id_pesanan` int(11) NOT NULL,
  `menu` varchar(50) NOT NULL,
  `jumlah` int(11) DEFAULT '1',
  `harga` int(11) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pesanan`
--

INSERT INTO `pesanan` (`id_pesanan`, `menu`, `jumlah`, `harga`, `rating`) VALUES
(1, 'Ayam Bakar', 1, 10000, 4),
(1, 'Ayam Goreng', 1, 10000, 5),
(1, 'Air Mineral', 2, 6000, 5),
(1, 'Brownies', 1, 12000, 3),
(2, 'Es Teh', 2, 6000, 5),
(2, 'Burger', 3, 30000, 2),
(3, 'Ayam Bakar', 4, 40000, 4),
(3, 'Air Mineral', 2, 6000, 5),
(3, 'Es Teh', 2, 6000, 5),
(3, 'Brownies', 1, 12000, 1),
(4, 'Ayam Bakar', 2, 20000, 4),
(4, 'Es Teh', 2, 6000, 4),
(5, 'Ayam Goreng', 3, 30000, 5),
(5, 'Air Mineral', 1, 3000, 5),
(5, 'Es Teh', 2, 6000, 5),
(5, 'Burger', 1, 10000, 3),
(5, 'Ayam Geprek', 1, 10000, 4),
(6, 'Ayam Goreng', 2, 20000, 4),
(6, 'Es Teh', 2, 6000, 4),
(7, 'Burger', 2, 20000, 2),
(8, 'Burger', 3, 30000, 3),
(9, 'Ayam Goreng', 2, 20000, 5),
(9, 'Es Teh', 2, 6000, 5),
(10, 'Ayam Bakar', 5, 50000, 5),
(10, 'Ayam Geprek', 3, 30000, 5),
(10, 'Ayam Goreng', 4, 40000, 5),
(10, 'Es Teh', 12, 36000, 5),
(10, 'Brownies', 5, 60000, 3),
(10, 'Burger', 5, 50000, 2),
(11, 'Ayam Goreng', 2, 20000, 5),
(11, 'Es Teh', 1, 3000, 4),
(11, 'Air Mineral', 1, 3000, 4),
(12, 'Ayam Bakar', 3, 30000, 3),
(12, 'Es Teh', 4, 12000, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `konsumen`
--
ALTER TABLE `konsumen`
  ADD PRIMARY KEY (`id_pesanan`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`nama`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `konsumen`
--
ALTER TABLE `konsumen`
  MODIFY `id_pesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

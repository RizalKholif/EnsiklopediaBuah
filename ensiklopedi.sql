-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Des 2018 pada 02.36
-- Versi server: 10.1.32-MariaDB
-- Versi PHP: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ensiklopedi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `content`
--

CREATE TABLE `content` (
  `nama_buah` varchar(200) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `konten` varchar(3000) NOT NULL,
  `tag` varchar(50) NOT NULL,
  `gambar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `content`
--

INSERT INTO `content` (`nama_buah`, `kategori`, `konten`, `tag`, `gambar`) VALUES
('Apel', 'A', '  Tanaman buah apel yang memiliki nama latin Pyrus Malus Mill tumbuh didaerah rendah dan dataran tinggi. Jenis tanaman apel didunia ada sekitar 7500 jenis varietas. Buah apel kaya kandungan nutrisi, vitamin A, C, dan mineral. Kandungan mineral dan serat baik untuk dikonsumsi sebagai asupan saat sedang program diet yang mampu turunkan berat badan. Terdapat juga kandungan antioksidan dapat menjaga kesehatan jantung, mencegah penyakit kanker, dan mengobati penyakit asma. Gula yang baik terkandung pada buah apel dapat menghindarkan dari penyakit diabetes.\r\n\r\n  Pola tanaman  buah apel secara monokultur sehingga rimbun dan kebutuhan cahaya matahari dapat terpenuhi sera sirkulasi udara baik. Penanaman dilakukan dengan memasukkan bibit ke dalam lubang tanam yang sudah dibuat berukurang 50x50x50 cm hingga 1x1x1 meter dengan bagian atas dan bawa sudah diberikan pupuk yang kemudian ditimbun dengan tanah yang tidak terlalu tebal.\r\n\r\n  Pemupukan dilakukan saat musim hujan dengan memberikan pupuk kandang yang ditambahkan pupuk urea 1-2 bulan sekali sebanyak 5 gram. Penyiraman tanaman buah apel juga diperlukan satu minggu sekali. Untuk menghindari hama dan penyakit dapat disemprotkan insektisida dan fungisida sebanyak 2x dalam satu bulan.\r\n\r\n  Tanaman buah apel yang sudah berumur 4-5 bulan umumnya sudah dapat dipanen. Idealnya pemanenan dilakukan pada buah apel yang telah mencapai ukuran maksimal dengan mengeluarkan aroma wangi buah yang menyengat dan warna buah masak lebih jelas terlihat. Siklus pemanenan buah apel dapat dilakukan setiap 6 bulan sekali.\r\n \r\n Dapat ditanam pada daerah yang memiliki curah hujan normal yaitu 1000-2600 mm/tahun dengan 110-150 hari hujan/tahun dan 6-7 bulan hujan atau 3-4 bulan kering. Intensitas cahaya per harinya antara 50-60% dengan suhu lingkungan berkisar 16o-27oC dan tingkat kelembaban udara antara 75%-85%.', 'Kesehatan', 'img/buah/apel.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`nama_buah`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

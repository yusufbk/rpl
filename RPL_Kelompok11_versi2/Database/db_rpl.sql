-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 17 Mei 2017 pada 03.10
-- Versi Server: 5.7.17-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_rpl`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins`
--

CREATE TABLE `admins` (
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `admins`
--

INSERT INTO `admins` (`username`, `password`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_transaksi`
--

CREATE TABLE `data_transaksi` (
  `id_transaksi` int(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `id_kota` int(5) NOT NULL,
  `id_kustomer` int(5) NOT NULL,
  `status_order` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Baru',
  `tgl_order` date NOT NULL,
  `jam_order` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `data_transaksi`
--

INSERT INTO `data_transaksi` (`id_transaksi`, `nama`, `alamat`, `telepon`, `id_kota`, `id_kustomer`, `status_order`, `tgl_order`, `jam_order`) VALUES
(92, 'aaa', '111', '222', 4, 26, 'Baru', '2017-05-16', '19:11:51'),
(93, 'aa', '11', '33', 10, 26, 'Baru', '2017-05-16', '19:12:45'),
(94, 'aa', '11', '33', 10, 26, 'Baru', '2017-05-16', '19:13:42'),
(95, 'aa', '11', '33', 10, 26, 'Baru', '2017-05-16', '19:14:14'),
(96, 'cobalagiii', 'coba', '888', 5, 26, 'Baru', '2017-05-16', '19:22:01'),
(97, '', '', '', 0, 26, 'Baru', '2017-05-16', '19:23:54'),
(98, 'coab', 'kkk', '888', 8, 26, 'Baru', '2017-05-16', '19:29:54'),
(99, 'auisuais', '8888', '0000', 6, 26, 'Baru', '2017-05-16', '19:30:22'),
(100, 'auisuais', '8888', '0000', 6, 26, 'Baru', '2017-05-16', '19:32:00'),
(101, 'aaaaaaaaaaaaa', 'aaaa', '11', 6, 26, 'Baru', '2017-05-16', '19:32:16'),
(102, 'tratarta', 'kljl', '999', 10, 26, 'Baru', '2017-05-16', '19:33:32'),
(103, 'aacacsas', 'aa', '11', 7, 26, 'Baru', '2017-05-16', '19:36:31'),
(104, 'aaaaaaaaa', '33', '11', 5, 26, 'Baru', '2017-05-16', '19:38:21'),
(105, 'qqaq', '11', '11', 3, 26, 'Baru', '2017-05-16', '19:40:28'),
(106, 'aa', '12', '12', 3, 26, 'Baru', '2017-05-16', '19:43:03'),
(107, '12q', '11122', '222', 10, 26, 'Baru', '2017-05-16', '19:43:35'),
(108, '12q', '11122', '222', 10, 26, 'Baru', '2017-05-16', '20:12:50'),
(109, 'cobaoboabosd', 'jojo', '999', 3, 26, 'Baru', '2017-05-16', '20:13:19'),
(110, 'lalala', 'uuu', '999', 3, 26, 'Baru', '2017-05-16', '20:16:55'),
(111, 'aaaa', 'xjnakjx', '000', 8, 26, 'Baru', '2017-05-16', '20:17:23'),
(112, 'cobaa', 'kmslkms', '888', 1, 26, 'Baru', '2017-05-16', '20:19:00'),
(113, 'anu', 'asda', '211', 5, 0, 'Baru', '2017-05-17', '01:05:00'),
(114, 'yoza', 'as', '12', 5, 27, 'Baru', '2017-05-17', '01:06:41'),
(115, 'yoza', 'saasa', '123', 11, 27, 'Baru', '2017-05-17', '01:07:13'),
(116, 'yoza', '12w', '123', 3, 27, 'Baru', '2017-05-17', '01:07:33'),
(117, 'yoza', '12', '123', 3, 27, 'Baru', '2017-05-17', '01:24:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(20) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(12, 'Jaket'),
(9, 'Baju Kerja'),
(10, 'Kemeja'),
(13, 'Kaos'),
(16, 'Jas Kerja');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kota`
--

CREATE TABLE `kota` (
  `id_kota` int(3) NOT NULL,
  `nama_kota` varchar(30) NOT NULL,
  `ongkos_kirim` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kota`
--

INSERT INTO `kota` (`id_kota`, `nama_kota`, `ongkos_kirim`) VALUES
(1, 'Jakarta', 13000),
(2, 'Bandung', 13500),
(3, 'Semarang', 10000),
(4, 'Medan', 20000),
(5, 'Aceh', 25000),
(6, 'Banjarmasin', 17500),
(7, 'Balikpapan', 18500),
(8, 'Samarinda', 19500),
(9, 'Lainnya', 10000),
(10, 'Palembang', 23000),
(11, 'Surabaya', 13000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kustomer`
--

CREATE TABLE `kustomer` (
  `id_kustomer` int(5) NOT NULL,
  `email` varchar(25) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `kustomer`
--

INSERT INTO `kustomer` (`id_kustomer`, `email`, `password`) VALUES
(26, 'anu@a.co', '202cb962ac59075b964b07152d234b70'),
(27, 'anu@anu.anu', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders_detail`
--

CREATE TABLE `orders_detail` (
  `id_transaksi` int(5) NOT NULL,
  `id_produk` int(5) NOT NULL,
  `jumlah` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `orders_detail`
--

INSERT INTO `orders_detail` (`id_transaksi`, `id_produk`, `jumlah`) VALUES
(71, 32, 1),
(72, 31, 1),
(73, 31, 1),
(76, 30, 1),
(78, 31, 1),
(81, 31, 1),
(92, 31, 1),
(93, 32, 1),
(96, 30, 1),
(98, 31, 1),
(99, 30, 1),
(101, 32, 1),
(102, 31, 1),
(103, 31, 1),
(104, 31, 1),
(105, 30, 1),
(106, 32, 1),
(107, 32, 1),
(109, 31, 1),
(110, 30, 1),
(111, 30, 1),
(112, 32, 2),
(113, 32, 2),
(114, 31, 1),
(115, 31, 1),
(116, 31, 1),
(117, 30, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders_temp`
--

CREATE TABLE `orders_temp` (
  `id_orders_temp` int(5) NOT NULL,
  `id_produk` int(5) NOT NULL,
  `id_session` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `jumlah` int(5) NOT NULL,
  `tgl_order_temp` date NOT NULL,
  `jam_order_temp` time NOT NULL,
  `stok_temp` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(5) NOT NULL,
  `id_kategori` int(5) NOT NULL,
  `nama_produk` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `deskripsi` text COLLATE latin1_general_ci NOT NULL,
  `harga` int(20) NOT NULL,
  `stok` int(5) NOT NULL,
  `berat` decimal(5,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `tgl_masuk` date NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `id_kategori`, `nama_produk`, `deskripsi`, `harga`, `stok`, `berat`, `tgl_masuk`, `gambar`) VALUES
(36, 12, 'Jaket Hoodie', 'Jaket ini gaul dan kekinian.\r\n\r\nCocok digunakan untuk main, santai atau bepergian.\r\n\r\nMemiliki hoodie atau penutup kepala yang bisa digunakan untuk melindungi kepala dari terik sinar matahari ataupun hanya sekedar untuk bergaya.\r\n\r\nAnda akan terlihat lebih keren jika memakai jaket ini  B-)', 180000, 10, '1.00', '2017-05-17', '22jaket.jpg'),
(37, 12, 'Jaket', 'Jaket untuk pria yang ingin tampil keren.\r\n\r\nCocok digunakan untuk aktivitas dalam maupun luar ruangan.', 160000, 10, '1.00', '2017-05-17', '13jaket2.jpg'),
(38, 12, 'Jaket Outdoor', 'Jaket ini merupakan jaket yang dikhususkan untuk aktivitas luar ruangan.\r\n\r\nCocok digunakan untuk Petualangan di alam liar ataupun bepergian biasa.\r\n\r\nBerbahan kuat dan memiliki daya tahan lebih tinggi.', 200000, 10, '1.00', '2017-05-17', '88jaket3.jpg'),
(39, 16, 'Jas Kerja Biasa', 'Jas ini cocok digunakan untuk aktivitas organisasi.\r\n\r\nDengan desain yang menarik, membuat aktivitas anda menjadi lebih bersemangat dengan memakai jas ini.', 120000, 10, '1.00', '2017-05-17', '59jas-kerja.jpg'),
(40, 16, 'Jas Kerja Pro', 'Jas kerja ini cocok digunakan untuk aktivitas organisasi.\r\n\r\nMemiliki bahan katun yang sangat reliable, sehingga lebih nyaman dan lebih awet.\r\n\r\nDengan desain yang menarik sehingga membuat aktivitas pekerjaan anda menjadi lebih bersemangat.', 150000, 10, '1.00', '2017-05-17', '47jas-kerja2.jpg'),
(41, 13, 'Kaos Oblong', 'Kaos ini memiliki bahan katun yang lembut, sehingga nyaman dipakai.\r\n\r\nKain yang dipakai tidak terlalu tebal sehingga tidak akan membuat anda merasa gerah.\r\n\r\nTidak luntur.', 40000, 10, '0.50', '2017-05-17', '48kaos2.jpg'),
(42, 13, 'Kaos Polo', 'Kaos berkerah yang gaul dan kekinian.\r\n\r\nMendukung penampilan anda sehingga membuat anda tampil lebih keren.\r\n\r\nBerbahan kain katun yang nyaman dipakai.', 60000, 10, '0.50', '2017-05-17', '11kaos.jpg'),
(43, 10, 'Kemeja Lengan Panjang', 'Kemeja ini memiliki desain yang keren, untuk mendukung penampilan anda.\r\n\r\nCocok digunakan untuk aktivitas dengan rekan2 anda.\r\n\r\nMemiliki bahan yang nyaman dipakai.', 80000, 10, '0.50', '2017-05-17', '70kemeja.jpg'),
(44, 10, 'Kemeja Lengan Panjang Pro', 'Kemeja ini memiliki desain yang keren, untuk mendukung penampilan anda.\r\n\r\nCocok digunakan untuk aktivitas dengan rekan2 anda.\r\n\r\nMemiliki bahan yang sangat nyaman dipakai.', 110000, 10, '0.50', '2017-05-17', '82kemeja2.jpg'),
(34, 9, 'Baju Kerja Lengan Pendek', 'Baju Kerja ini cocok digunakan untuk pekerja kantor.\r\n\r\nMemiliki bahan katun dan nyaman dipakai.\r\n\r\nMembuat anda lebih bersemangat dalam menjalankan pekerjaan anda.', 70000, 10, '0.50', '2017-05-17', '28baju-kerja.jpg'),
(35, 9, 'Baju Kerja Laboratorium', 'Baju Kerja ini Digunakan untuk Bekerja di  Laboratorium.\r\n\r\nTerbuat dari bahan kain katun dan nyaman dipakai.\r\n\r\nFleksibel dan tidak membuat gerah, sehingga tidak mengganggu aktivitas laboratorium. ', 90000, 10, '0.50', '2017-05-17', '31baju-kerja2.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `data_transaksi`
--
ALTER TABLE `data_transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`id_kota`);

--
-- Indexes for table `kustomer`
--
ALTER TABLE `kustomer`
  ADD PRIMARY KEY (`id_kustomer`);

--
-- Indexes for table `orders_temp`
--
ALTER TABLE `orders_temp`
  ADD PRIMARY KEY (`id_orders_temp`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_transaksi`
--
ALTER TABLE `data_transaksi`
  MODIFY `id_transaksi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `kota`
--
ALTER TABLE `kota`
  MODIFY `id_kota` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `kustomer`
--
ALTER TABLE `kustomer`
  MODIFY `id_kustomer` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `orders_temp`
--
ALTER TABLE `orders_temp`
  MODIFY `id_orders_temp` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=296;
--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

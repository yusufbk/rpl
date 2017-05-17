-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2017 at 04:36 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_toko`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`username`, `password`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `data_transaksi`
--

CREATE TABLE `data_transaksi` (
  `id_transaksi` int(5) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `id_kota` int(5) NOT NULL,
  `id_kustomer` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data_transaksi`
--

INSERT INTO `data_transaksi` (`id_transaksi`, `id_produk`, `nama`, `alamat`, `telepon`, `id_kota`, `id_kustomer`) VALUES
(1, 0, 'ayya', 'ayya', '9809', 10, 26);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(20) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(12, 'Jaket'),
(9, 'Baju Kerja'),
(10, 'Kemeja'),
(13, 'Kaos');

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE `kota` (
  `id_kota` int(3) NOT NULL,
  `nama_kota` varchar(30) NOT NULL,
  `ongkos_kirim` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kota`
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
-- Table structure for table `kustomer`
--

CREATE TABLE `kustomer` (
  `id_kustomer` int(5) NOT NULL,
  `email` varchar(25) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `kustomer`
--

INSERT INTO `kustomer` (`id_kustomer`, `email`, `password`) VALUES
(26, 'anu@a.co', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id_orders` int(5) NOT NULL,
  `status_order` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT 'Baru',
  `tgl_order` date NOT NULL,
  `jam_order` time NOT NULL,
  `id_kustomer` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id_orders`, `status_order`, `tgl_order`, `jam_order`, `id_kustomer`) VALUES
(26, 'Lunas', '2017-05-11', '07:16:11', 8),
(27, 'Baru', '2017-05-11', '08:08:40', 8),
(28, 'Baru', '2017-05-11', '08:08:42', 8),
(29, 'Baru', '2017-05-11', '08:53:04', 9),
(30, 'Baru', '2017-05-11', '08:54:25', 9),
(31, 'Baru', '2017-05-11', '08:55:03', 9),
(32, 'Baru', '2017-05-11', '08:57:02', 9),
(33, 'Baru', '2017-05-11', '08:57:36', 9),
(34, 'Baru', '2017-05-11', '09:15:49', 9),
(35, 'Baru', '2017-05-11', '09:18:20', 9),
(36, 'Baru', '2017-05-11', '09:49:56', 9),
(37, 'Baru', '2017-05-11', '09:50:26', 9),
(38, 'Baru', '2017-05-11', '09:55:46', 9),
(39, 'Baru', '2017-05-11', '09:56:17', 9),
(40, 'Baru', '2017-05-11', '10:01:02', 9),
(41, 'Baru', '2017-05-11', '10:01:59', 9),
(42, 'Baru', '2017-05-11', '10:04:19', 9),
(43, 'Baru', '2017-05-11', '10:09:34', 9),
(44, 'Baru', '2017-05-11', '10:09:57', 9),
(45, 'Baru', '2017-05-11', '10:22:05', 9),
(46, 'Baru', '2017-05-11', '10:22:44', 9),
(47, 'Baru', '2017-05-11', '10:32:02', 9),
(48, 'Baru', '2017-05-11', '10:32:29', 9),
(49, 'Baru', '2017-05-11', '10:38:09', 9),
(50, 'Baru', '2017-05-11', '10:43:27', 9),
(51, 'Baru', '2017-05-11', '10:43:34', 9),
(52, 'Baru', '2017-05-11', '10:44:49', 9),
(53, 'Baru', '2017-05-11', '10:45:47', 9),
(54, 'Baru', '2017-05-11', '10:46:18', 9),
(55, 'Baru', '2017-05-11', '10:48:08', 9),
(56, 'Baru', '2017-05-11', '10:51:40', 9),
(57, 'Baru', '2017-05-11', '10:56:37', 9),
(58, 'Baru', '2017-05-12', '04:09:38', 9),
(59, 'Baru', '2017-05-14', '16:50:32', 9),
(60, 'Baru', '2017-05-15', '03:10:57', 26),
(61, 'Baru', '2017-05-15', '03:14:27', 26),
(62, 'Baru', '2017-05-15', '03:14:47', 26),
(63, 'Baru', '2017-05-15', '03:15:07', 26),
(64, 'Baru', '2017-05-15', '03:15:45', 26),
(65, 'Baru', '2017-05-15', '03:16:53', 26),
(66, 'Baru', '2017-05-15', '03:17:11', 26),
(67, 'Baru', '2017-05-15', '03:17:32', 26),
(68, 'Baru', '2017-05-15', '03:19:07', 26),
(69, 'Baru', '2017-05-15', '03:19:29', 26),
(70, 'Baru', '2017-05-15', '03:20:26', 26),
(71, 'Baru', '2017-05-15', '03:20:43', 26),
(72, 'Baru', '2017-05-15', '03:21:11', 26),
(73, 'Baru', '2017-05-15', '03:21:30', 26),
(74, 'Baru', '2017-05-15', '03:52:43', 26),
(75, 'Baru', '2017-05-15', '04:02:26', 26),
(76, 'Baru', '2017-05-15', '04:02:52', 26),
(77, 'Baru', '2017-05-15', '04:02:55', 26),
(78, 'Baru', '2017-05-15', '04:03:57', 26),
(79, 'Baru', '2017-05-15', '04:04:51', 26),
(80, 'Baru', '2017-05-15', '04:08:15', 26),
(81, 'Baru', '2017-05-15', '04:09:24', 26),
(82, 'Baru', '2017-05-15', '04:09:43', 26),
(83, 'Baru', '2017-05-15', '04:13:41', 26),
(84, 'Baru', '2017-05-15', '04:14:01', 26),
(85, 'Baru', '2017-05-15', '04:16:00', 26),
(86, 'Baru', '2017-05-15', '04:48:52', 26),
(87, 'Baru', '2017-05-15', '04:51:31', 26),
(88, 'Baru', '2017-05-15', '04:51:57', 26),
(89, 'Baru', '2017-05-15', '04:54:09', 26),
(90, 'Baru', '2017-05-15', '04:55:15', 26),
(91, 'Baru', '2017-05-15', '04:58:25', 26),
(92, 'Baru', '2017-05-15', '05:00:20', 26),
(93, 'Baru', '2017-05-15', '05:10:34', 26),
(94, 'Baru', '2017-05-15', '05:12:25', 26),
(95, 'Baru', '2017-05-15', '05:13:59', 26),
(96, 'Baru', '2017-05-15', '05:14:40', 26),
(97, 'Baru', '2017-05-15', '05:16:24', 26),
(98, 'Baru', '2017-05-15', '05:19:05', 26),
(99, 'Baru', '2017-05-15', '05:19:58', 26),
(100, 'Baru', '2017-05-15', '05:20:12', 26),
(101, 'Baru', '2017-05-15', '05:21:17', 26),
(102, 'Baru', '2017-05-15', '05:25:18', 26),
(103, 'Baru', '2017-05-15', '05:25:42', 26),
(104, 'Baru', '2017-05-16', '04:29:17', 26),
(105, 'Baru', '2017-05-16', '04:30:25', 26);

-- --------------------------------------------------------

--
-- Table structure for table `orders_detail`
--

CREATE TABLE `orders_detail` (
  `id_orders` int(5) NOT NULL,
  `id_produk` int(5) NOT NULL,
  `jumlah` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `orders_detail`
--

INSERT INTO `orders_detail` (`id_orders`, `id_produk`, `jumlah`) VALUES
(26, 27, 1),
(27, 32, 1),
(29, 31, 1),
(29, 32, 1),
(31, 31, 1),
(33, 32, 1),
(34, 31, 1),
(36, 32, 1),
(37, 32, 1),
(39, 32, 1),
(40, 32, 1),
(41, 32, 1),
(44, 31, 1),
(46, 32, 1),
(48, 32, 1),
(49, 32, 1),
(52, 32, 1),
(54, 32, 1),
(55, 32, 1),
(56, 32, 1),
(57, 32, 2),
(58, 32, 2),
(59, 32, 1),
(59, 30, 1),
(59, 31, 2),
(60, 30, 2),
(64, 31, 1),
(67, 31, 1),
(69, 31, 1),
(71, 31, 1),
(73, 31, 1),
(74, 31, 1),
(75, 32, 1),
(78, 31, 1),
(80, 31, 1),
(82, 32, 1),
(84, 32, 1),
(86, 32, 4),
(86, 31, 2),
(88, 31, 1),
(90, 31, 1),
(91, 32, 1),
(92, 30, 2),
(93, 32, 1),
(94, 32, 1),
(96, 32, 1),
(101, 32, 1),
(103, 32, 1),
(104, 32, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders_temp`
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
-- Table structure for table `produk`
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
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dibeli` int(5) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `id_kategori`, `nama_produk`, `deskripsi`, `harga`, `stok`, `berat`, `tgl_masuk`, `gambar`, `dibeli`) VALUES
(27, 7, 'Asus A450CA-WX103D - 14\" - Merah', '<p>\r\n<strong>Spesifikasi : \r\n</strong>\r\n</p>\r\n<p>\r\nSKU 	\r\nAS100ELACFEAANID-131894\r\nModel 	A450CA-WX103D\r\nUkuran (L x W x H cm) 	34.8 x 24.1 x 2.48 cm\r\nBerat (kg) 	2.4\r\nWarna 	Merah\r\nUkuran Layar (in) 	14.0\r\nHard Disk 	500\r\nRAM 	2\r\nFitur 	Bluetooth|Wi-Fi|DVD\r\nGaransi produk 	1 Tahun Garansi Spare-Part &amp; Servis\r\nKoneksi Nirkabel 	Bluetooth|WiFi\r\n</p>\r\n<p>\r\n<strong>Ulasan :&nbsp;\r\n</strong>\r\n</p>\r\n<p>\r\nDidesain dengan konsep untuk membuat laptop lebih personal, Asus \r\nA450CA-WX103D - 14&quot; - Biru hadir dengan layar sebesar 14&quot;. Ukurannya \r\nyang kompak membuat notebook ini menjadi lebih ringan dengan bobot 2.4 \r\nkg. Tampil dengan desain yang modern serta dinamis, laptop ini sangat \r\ncocok untuk menemani kegiatan Anda bersama pekerjaan sehari-hari. \r\n</p>\r\n<div class=\"prd-package-content rfloat box\">\r\n<h3 class=\"txtLight\">Apa yang ada di dalam kotak:</h3>\r\n<ul class=\"ui-listBulleted\">\r\n	<li><span>Asus A450CA-WX103D - 14&quot; - Merah</span></li>\r\n	<li><span>Charger</span></li>\r\n	<li><span>Driver</span></li>\r\n	<li><span>Manual Book</span></li>\r\n	<li><span>Kartu Garansi</span></li>\r\n	<li><span>Tas Laptop</span></li>\r\n</ul>\r\n</div>\r\n<p>\r\n&nbsp;\r\n</p>\r\n', 4199000, 13, '2.40', '2014-04-14', '56asus.jpg', 2),
(28, 7, 'HP Pavillion 1000 - 1432TU - Hitam', '<p>\r\nHP Pavillion 1000 -1432TU merupakan laptop performa tinggi dengan harga \r\nyang terjangkau. Dirancang khusus memenuhi tuntutan komputasi Anda. \r\nDibekali dengan prosesor Intel Celeron Dual Core berkecepatan 1.8 GHz, 2\r\nGB RAM serta 320 GB HDD, Anda dapat dengan mudah melakukan multitasking\r\ndimana saja. Dengan desainnya yang ramping dan ringan, notebook dengan \r\nukuran 14&quot; ini dirancang bagi Anda yang membutuhkan kemudahan \r\nportabilitas tanpa mengorbankan pengalaman komputasi yang optimal.\r\n</p>\r\n<p>\r\n<strong>Spesifikasi</strong> : SKU 	\r\nHP467ELACITLANID-137484\r\nModel 	Pavillion 1000 - 1432TU\r\nUkuran (L x W x H cm) 	15 x 50 x 37\r\nBerat (kg) 	2.2 kg\r\nWarna 	Hitam\r\nGaransi produk 	1 Tahun Garansi Resmi HP\r\n</p>\r\n', 3799000, 50, '2.20', '2014-04-14', '67hp-0945-507711-2-zoom.jpg', 1),
(29, 7, 'ASUS X200CA-KX184D DOS Putih - 11.6\" - 500 GB', '<p>\r\nASUS X200CA-KX184D hadir dengan desain yang kompak dan dikemas dengan \r\nlayar berukuran 11.6&quot;. Dengan bobot dibawah 3 kg, Asus menyertakan \r\nberbagai teknologi yang hanya terdapat pada produknya seperti \r\nSonicMaster, Instan On, juga Ice Cool.<br />\r\n<br />\r\n<strong>Kinerja Optimal</strong><br />\r\nLaptop ini didukung dengan prosesor Dual Core 1007 berkecepatan 1.5 \r\nGHz, memori 2 GB RAM akan memberikan kemudahan bagi Anda dalam \r\nmengerjakan pekerjaan yang multitasking. Untuk grafisnya dibekali dengan\r\nIntel HD Graphics 4000. Dengan kapasitas memori penyimpanan 500 GB, \r\nAnda memiliki ruang penyimpanan yang cukup besar untuk menyimpan \r\nberbagai data berharga Anda.\r\n</p>\r\n<p>\r\n<strong>&nbsp;Spesifikasi :</strong>\r\n</p>\r\nSKU 	\r\nAS100ELABQVKANID-91057\r\nUkuran (L x W x H cm) 	1x1x1\r\nBerat (kg) 	-\r\nWarna 	Putih\r\nUkuran Layar (in) 	11.6\r\nKecepatan CPU 	1.50\r\nSistem Operasi 	Free DOS \r\nFitur Tampilan 	HD\r\nFitur 	Dual Core\r\nGaransi produk 	2 Tahun Garansi Global\r\nInput 	USB|LAN\r\nKoneksi Nirkabel 	WiFi\r\nKamera 	Ya\r\nBuilt in Memory 	2GB\r\nKapasitas Penyimpanan 	500GB\r\nTipe Processor 	Dual Core 1007\r\n', 3379000, 8, '2.00', '2014-04-14', '64asus-9605-88418-1-.jpg', 1),
(30, 12, 'Epson L210 - All In One', 'Sistem tinta Epson L210 akan memberikan Anda performa yang lebih baik dengan biaya yang sangat rendah.<br />\r\n<div id=\"prd-detail-page\">\r\n<div>\r\n<div id=\"prodinfo\" class=\"l-main prd-detail-wrapper\">\r\n<div class=\"prd-description\">\r\n<p style=\"text-align: justify\">\r\n&nbsp;\r\n</p>\r\n<p style=\"text-align: justify\">\r\n<strong>Desain Minimalis</strong><br />\r\nPrinter Epson L210 memiliki desain yang kompak untuk kemudahan dalam \r\npenempatannya, membutuhkan sedikit ruang jika dibanding dengan printer \r\nlain, sehingga Anda bisa dengan mudah menempatkannya dimana saja.<br />\r\n&nbsp;\r\n</p>\r\n<p>\r\n<img style=\"width: 420px; height: 257px; display: inline\" class=\"productlazyimage\" src=\"https://lh6.googleusercontent.com/-RFz10r4mtbg/UhbV0ZKVZEI/AAAAAAAAETY/syfejVnThHw/w420-h257-no/Epson+L210+%25281%2529.png\" alt=\"\" />\r\n</p>\r\n<p style=\"text-align: justify\">\r\n<br />\r\n<strong>Hemat Tinta</strong><br />\r\nDengan menggunakan tinta asli dari Epson, Anda bisa melakukan \r\npenghematan hingga 4.000 halaman (tinta hitam) dengan biaya yang sangat \r\nmurah. Selain itu juga printer ini memiliki sistem pengisian tinta yang \r\nsangat mudah dilakukan.\r\n</p>\r\n</div>\r\n</div>\r\n<div class=\"l-main prd-detail-wrapper\">\r\n<div id=\"productDetails\" class=\"prd-descriptionWrapper\" style=\"display: block\">\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p>\r\n&nbsp;\r\n</p>\r\n', 2100000, 4, '4.40', '2014-04-14', '76Epson L210 (32).jpg', 1),
(31, 12, 'Canon Pixma iP2770', '<p>\r\n<strong>Spesifikasi Canon Pixma iP2770 - Inkjet - Hitam</strong>\r\n</p>\r\n<p>\r\nSKU 	\r\nCA189EL61JZEALID-6738\r\nModel 	Printer Inkjet\r\nUkuran (L x W x H cm) 	44.5 x 25 x 13 cm\r\nBerat (kg) 	1\r\nWarna 	Hitam\r\nTipe 	Canon Pixma iP2770\r\nGaransi produk 	1 Tahun Garansi (Spare-part dan Servis)\r\nInput 	USB\r\nKonsumsi Daya 	11 W\r\nMetode Cetak 	Inkjet\r\nResolusi Cetak Maksimum (warna) 	4800 x 1200 dpi\r\nResolusi Cetak Maksimum (monokrom) 	4800 x 1200 dpi\r\nKecepatan Cetak (warna) 	4.8 ipm\r\nKecepatan Cetak (monokrom) 	7 ipm\r\nTipe Media 	A4, Letter, Legal, A5, B5, Envelope\r\nKapasitas Tray 	100 Lembar\r\n</p>\r\n<p style=\"text-align: justify\">\r\nCanon Pixma iP2770 dapat mampu mencetak dengan kecepatan hingga 4,8 ipm,\r\nuntuk tinta warna dan 7.0 ipm untuk tinta hitam. Produk tersebut juga \r\ndilengkapi fitur Auto Photo Fix II pada printer yang dapat diakses \r\nmelalui software EX-Cetak EasyPhoto, untuk dapat mengkoreksi gambar \r\nsehingga Anda dapat mendapatkan kualitas gambar terbaik dan dengan \r\nmaksimal resolusi sebesar 4800x1200 dpi.<br />\r\n&nbsp;\r\n</p>\r\n<p>\r\n<img style=\"display: inline\" class=\"productlazyimage\" src=\"https://lh5.googleusercontent.com/-qQbdQh34AqU/Uh7NNppvf9I/AAAAAAAAEhU/oa1Kp892TIY/w958-h574-no/Canon%252BPIXMA%252BiP36801.jpg\" alt=\"\" width=\"313\" height=\"145\" />\r\n</p>\r\n<p style=\"text-align: justify\">\r\n<br />\r\n<strong>Teknologi FINE&trade; print head</strong><br />\r\nSesuatu yang unik dalam dunia percetakan, teknologi FINE&trade; print head \r\nmilik Canon memungkinkan photolab untuk menghasilkan kualitas dengan \r\ndetail yang jelas tanpa mengorbankan kecepatan. Tetesan ejeksi yang \r\nstabil, kualitas luar biasa dan daya tahan yang lama telah dicapai untuk\r\nmenghasilkan gambar dengan kualitas tertinggi.\r\n</p>\r\n<p style=\"text-align: justify\">\r\n&nbsp;\r\n</p>\r\n<p style=\"text-align: justify\">\r\n<strong><img style=\"float: left; margin: 5px 10px; display: block\" class=\"productlazyimage\" src=\"https://lh6.googleusercontent.com/-UdjQ9Toorrw/UdY3k-8JofI/AAAAAAAAC5Q/K0xV_LW_P6Y/w209-h100-no/pixma-usb2highspeed.jpg\" alt=\"\" width=\"265\" height=\"126\" />Mencetak A4 Tanpa Batas</strong><br />\r\nMencetak foto yang indah dan gambar hingga ukuran A4 dengan fungsi \r\npencetakan tanpa batas - memudahkan Anda membuat album foto profesional,\r\nmenu gambar, presentasi bisnis dan banyak lagi.\r\n</p>\r\n<p style=\"text-align: justify\">\r\n<br />\r\n<strong>USB 2.0</strong><br />\r\nDengan koneksi built-in USB 2.0 berkecepatan tinggi, Anda dapat dengan \r\nmudah dan transfer dengan kecepatan penuh antara perangkat dan printer \r\nPIXMA tanpa jeda waktu atau keterlambatan. Anda cukup memasukkan kabel \r\nuntuk printer dan secara langsung akan melakukan setting.\r\n</p>\r\n<p>\r\n&nbsp;\r\n</p>\r\n', 627000, 5, '1.00', '2014-04-14', '17canon-4163-8376-2-zoom.jpg', 1),
(32, 13, 'Lenovo M70e (Tower) DOS + LCD - 18.5\"', '<p>\r\nLenovo menghadirkan PC Lenovo M70e (Tower) untuk memenuhi kebutuhan \r\npersonal komputer yang akan membantu Anda dalam kegiatan komputasi \r\nsehari-hari baik di rumah maupun di kantor. Dilengkapi dengan layar 18.5\r\nkeyboard dan mouse, personal komputer ini dapat menjadi pilihan bagi \r\nyang mencari PC dengan kinerja optimal dan handal.<br />\r\n<br />\r\n<strong>Kinerja Optimal</strong><br />\r\nAnda dapat dengan mudah melakukan banyak tugas tanpa masalah karena PC \r\nLenovo M70e (Tower) menawarkan Processor Dual Core E5800 3.2Ghz 2MB L2 \r\nCache 800Mhz, Memory 2GB DDR3, Chipset G41, Hard Disk 500GB, DVDRW, \r\nIntegrated Video GMA 4500, Gigabit Ethernet, Keyboard Scroll Lock, \r\nMouse,&nbsp; LCD 18.5&quot;, dan dilengkapi pula dengan DOS<br />\r\n<br />\r\n<strong>Konektivitas</strong><br />\r\nTerdapat berbagai pilihan konektivitas dalam laptop ini antara lain port\r\nUSB 2.0 dan Bluetooth. Anda juga dapat menemukan 6-in-1 Card Reader \r\nuntuk membaca berbagai macam kartu memori milik Anda. Untuk keperluan \r\njaringan, laptop ini dilengkapi dengan Ethernet LAN dan Wireless LAN \r\nyang memungkinkan Anda untuk berbagi data dengan kecepatan tinggi dan \r\nterhubung ke internet.\r\n</p>\r\n<p>\r\n&nbsp;\r\n</p>\r\n<p>\r\n<strong>Spesifikasi Lengkap :</strong>\r\n</p>\r\n<p>\r\n&nbsp;\r\n</p>\r\n<p>\r\nSKU 	\r\nLE629ELABPDSANID-87405\r\nUkuran (L x W x H cm) 	107.1 x.40.6 x 98.5 cm\r\nBerat (kg) 	12\r\nWarna 	Hitam\r\nTipe 	Lenovo M70e\r\nUkuran Layar (in) 	18.5\r\nHard Disk 	500\r\nRAM 	2\r\nKapasitas Penyimpanan 	500\r\nMemori Grafis 	2\r\nKecepatan CPU 	3.20\r\nSistem Operasi 	Free DOS \r\nGaransi produk 	3 Tahun Garansi (Spare-part dan Servis)\r\nInput 	USB|Card Reader|LAN\r\nOutput 	3.5mm jack|USB\r\nKoneksi Nirkabel 	Bluetooth|WiFi\r\nTipe Memori 	DDR3\r\nBuilt in Memory 	2 GB RAM\r\nTipe Layar 	LCD\r\nKapasitas Penyimpanan 	500 GB\r\nKecepatan Processor 	3.2 GHz\r\nTipe Processor 	Processor Dual Core E5800\r\n</p>\r\n', 5150000, 14, '12.00', '2014-04-14', '15lenovo-9079-25597-1-zoom.jpg', 2);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_orders`);

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
  MODIFY `id_transaksi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `kota`
--
ALTER TABLE `kota`
  MODIFY `id_kota` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `kustomer`
--
ALTER TABLE `kustomer`
  MODIFY `id_kustomer` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id_orders` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
--
-- AUTO_INCREMENT for table `orders_temp`
--
ALTER TABLE `orders_temp`
  MODIFY `id_orders_temp` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;
--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

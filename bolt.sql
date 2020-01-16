-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Jan 2020 pada 05.04
-- Versi server: 10.4.8-MariaDB
-- Versi PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bolt`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` int(15) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_desc` varchar(255) NOT NULL,
  `price` int(10) NOT NULL,
  `units` int(5) NOT NULL,
  `total` int(15) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `email` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `product_code`, `product_name`, `product_desc`, `price`, `units`, `total`, `date`, `email`) VALUES
(12, 'B002', 'Drone Dji Inspire', 'DJI Inspire 2 adalah drone quadcopter terbaru dari DJI yang merupakan seri terbaru dari pendahulunya Inspire 1. DJI Inspire 2 mampu terbang dengan kecepatan dari 0 sampai 50mph (80kph) hanya dalam 4 detik dan kecepatan maksimum 67mph (108kph). DJI Inspire', 20000000, 7, 140000000, '2020-01-14 07:38:16', 'donnixajj@gmail.com'),
(13, 'B003', 'Lensa Canon 16-35mm', 'The EF 16-35mm f/2.8L II USM Lens from Canon is a high performance, water-resistant, ultra wide-angle L-series zoom lens. An f/2.8 maximum aperture is effective in low light situations and offers shallow depth of field focus control. The optical design ha', 1000000, 1, 1000000, '2020-01-14 08:07:08', 'egaoyoy@gmail.com'),
(14, 'B004', 'Tripod Camera', 'Manfrotto MT055XPRO3 055 memiliki kaki yang dapat diperpanjang dan menyesuaikan dengan cepat, berkat tuas Quick Power Lock yang menghalangi dan membuka blokir setiap bagian kaki. Desain khusus dari tuas QPL memungkinkan membuka semua bagian kaki dengan sa', 350000, 1, 350000, '2020-01-14 08:07:08', 'egaoyoy@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_code` varchar(60) NOT NULL,
  `product_name` varchar(60) NOT NULL,
  `product_desc` mediumtext NOT NULL,
  `product_img_name` varchar(60) NOT NULL,
  `qty` int(5) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `product_code`, `product_name`, `product_desc`, `product_img_name`, `qty`, `price`) VALUES
(1, 'B001', 'Camera Sony A7R', 'Sony A7R Kamera Mirrorless Body Only adalah kamera mirrorless dari Sony yang di rancang untuk para fotografer professional terutama untuk foto landscape, foto untuk iklan, foto produk, foto untuk fashion, dan lainnya. Sony A7R hadir dengan memadukan full-frame Exmor CMOS sensor kedalam E-Mount body yang setara dengan kamera DSLR profesional seperti Nikon D810, Canon 5D dan DSLR Profesional lainnya sehingga Sony A7R mampu menghasilkan foto lebih tajam, kaya warna dan juga lebih mendetail.', 'camera.jpg', 30, '6350000.00'),
(2, 'B002', 'Drone Dji Inspire', 'DJI Inspire 2 adalah drone quadcopter terbaru dari DJI yang merupakan seri terbaru dari pendahulunya Inspire 1. DJI Inspire 2 mampu terbang dengan kecepatan dari 0 sampai 50mph (80kph) hanya dalam 4 detik dan kecepatan maksimum 67mph (108kph). DJI Inspire 2 menggunakan sistem baterai ganda yang dapat terbang dengan waktu maksimal hingga 27 menit (jika menggunakan dengann kamera X4S).', 'Drone.png', 10, '20000000.00'),
(3, 'B003', 'Lensa Canon 16-35mm', 'The EF 16-35mm f/2.8L II USM Lens from Canon is a high performance, water-resistant, ultra wide-angle L-series zoom lens. An f/2.8 maximum aperture is effective in low light situations and offers shallow depth of field focus control. The optical design has been improved to offer better edge-to-edge image quality. In addition, it features 3 high-precision aspherical lens elements, each of a different type: ground, replica and GMo. Its ultrasonic motor (USM) and improved AF algorithms will help the lens to focus faster and quieter. Precise manual focus is supported even in One Shot AF mode and a truly round aperture results in pleasing background blur.\r\n', 'lensa.jpg', 40, '1000000.00'),
(4, 'B004', 'Tripod Camera', 'Manfrotto MT055XPRO3 055 memiliki kaki yang dapat diperpanjang dan menyesuaikan dengan cepat, berkat tuas Quick Power Lock yang menghalangi dan membuka blokir setiap bagian kaki. Desain khusus dari tuas QPL memungkinkan membuka semua bagian kaki dengan satu tangan dalam satu tindakan. Desain tuas QPL juga menawarkan penguncian yang lebih kuat dari setiap bagian, yang berarti tripod dapat lebih stabil dan kaku dari pada desain tuas tradisional. Penyeleksi sudut kaki intuitif dan ergonomis memungkinkan setiap kaki secara independen dan kokoh diatur ke salah satu sudut yang telah ditetapkan.', 'tripod.jpg', 0, '350000.00'),
(5, 'B005', 'Tas Camera', 'Tas Backpack yang di desain khusus untuk para fotografi, profesional desain yang memberikan banyak ruang untuk Anda menaruh banyak perlengkapan fotografi dan terdapat banyak lapisan busa untuk melindungi kamera DSLR Anda dari benturan maupun cipratan air.\r\nFeatures\r\n', 'taskamera.jpg', 20, '300000.00'),
(6, 'B006', 'SD Card Lexar 16 Gb', 'Kartu Lexar Professional 400x SDXCTM UHS-I memanfaatkan teknologi UHS-I untuk menghadirkan kinerja dan keandalan kecepatan tinggi tingkat profesional, dengan 400x (60MB / s) jaminan minimum kecepatan transfer baca yang berkelanjutan. Simpan gambar berkualitas tinggi dan panjang video 1080p HD dengan opsi berkapasitas tinggi kartu, dan transfer file lebih cepat untuk mempercepat alur kerja. Termasuk perangkat lunak Image Rescue 4 dan disertai dengan garansi seumur hidup terbatas.', 'sdcard.jpg', 20, '220000.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `pin` int(6) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(15) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `address`, `city`, `pin`, `email`, `password`, `type`) VALUES
(1, 'Donnix', 'Afrilliando', 'Jalan Raya Tajur\r\n', 'Bogor', 95014, 'donnixajj@gmail.com', 'donnix', 'admin'),
(4, 'Ega', 'Test', 'JL. Tajur', 'Bogor', 175483, 'egaoyoy@gmail.com', 'ega12345', 'user'),
(5, 'Faisal', 'test', 'JL. Tajur', 'Bogor', 23423, 'admin@admin.com', 'donnix', 'user');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code` (`product_code`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

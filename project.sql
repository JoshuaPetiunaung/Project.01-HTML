-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2024 at 04:06 PM
-- Server version: 10.11.2-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `excerpt` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `content`, `excerpt`) VALUES
(1, 'Tips Meningkatkan Produktivitas di Tempat Kerja', 'Produktivitas yang tinggi di tempat kerja sangat penting untuk mencapai tujuan-tujuan perusahaan. Berikut beberapa tips yang dapat membantu Anda meningkatkan produktivitas di tempat kerja: <ul><li>Buatlah daftar prioritas setiap hari untuk menentukan tugas yang paling penting.</li><li>Pastikan untuk mengatur jeda istirahat yang cukup agar otak Anda tetap segar.</li><li>Gunakan teknologi dan alat bantu untuk mengelola waktu dan tugas dengan lebih efisien.</li><li>Kolaborasi dengan rekan kerja untuk mendukung dan memotivasi satu sama lain.</li><li>Evaluasi dan tinjau kembali rutinitas kerja Anda secara teratur untuk menemukan cara untuk meningkatkan efisiensi.</li></ul>', 'Produktivitas yang tinggi di tempat kerja sangat penting untuk mencapai tujuan-tujuan perusahaan. Berikut beberapa tips yang dapat membantu Anda meningkatkan produktivitas di tempat kerja.'),
(2, 'Mempelajari Bahasa Pemrograman Python untuk Pemula', 'Python adalah salah satu bahasa pemrograman yang paling populer dan mudah dipelajari untuk pemula. Berikut beberapa langkah untuk memulai belajar Python: <ol><li>Instal Python di komputer Anda dan pastikan untuk memilih versi terbaru.</li><li>Gunakan sumber daya online seperti tutorial, buku, dan kursus daring untuk belajar dasar-dasar Python.</li><li>Praktekkan apa yang Anda pelajari dengan menulis kode, menyelesaikan tantangan pemrograman, dan membangun proyek sederhana.</li><li>Terlibat dalam komunitas pengembang Python untuk mendapatkan dukungan dan belajar dari pengalaman orang lain.</li><li>Eksplorasi lebih lanjut tentang topik khusus dalam Python seperti pemrograman web, pengembangan game, atau kecerdasan buatan.</li></ol>', 'Python adalah salah satu bahasa pemrograman yang paling populer dan mudah dipelajari untuk pemula. Berikut beberapa langkah untuk memulai belajar Python.'),
(3, 'Manfaat Olahraga untuk Kesehatan Mental', 'Olahraga tidak hanya baik untuk kesehatan fisik, tetapi juga memiliki manfaat yang signifikan untuk kesehatan mental. Berikut beberapa manfaat olahraga untuk kesehatan mental: <ul><li>Meningkatkan suasana hati dan mengurangi stres dan kecemasan.</li><li>Merangsang pelepasan endorfin yang dapat meningkatkan perasaan bahagia dan euforia.</li><li>Memperbaiki kualitas tidur dan membantu mengatasi gangguan tidur seperti insomnia.</li><li>Meningkatkan rasa percaya diri dan harga diri.</li><li>Mengurangi risiko terjadinya depresi dan penyakit mental lainnya.</li></ul>', 'Olahraga tidak hanya baik untuk kesehatan fisik, tetapi juga memiliki manfaat yang signifikan untuk kesehatan mental. Berikut beberapa manfaat olahraga untuk kesehatan mental.');

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `konten` text DEFAULT NULL,
  `tanggal_publikasi` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id`, `judul`, `konten`, `tanggal_publikasi`) VALUES
(1, 'Tes', 'tessss', '2024-05-19 14:51:55');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `created_at`) VALUES
(1, 'tes', 'a@a.com', 'tes', '2024-05-25 13:15:59'),
(2, 'a', 'a@a.com', 'tes', '2024-05-25 13:16:42'),
(3, '8dauwdaiwd', 'awdiaiwd@9awjdand.com', 'a', '2024-05-27 10:01:29'),
(4, 'iada9widj', 'hduad@wuidjc.com', 'adai9daj', '2024-05-27 10:02:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`) VALUES
(1, '1', '$2y$10$6isMMvxDTC/B8uOclic94O1dUBB/dRqR3IwzAtOdOKX2VEuDVUbHS', '1@onti.com'),
(9, 'tesss', '$2y$10$ExrnnNOtxHXosraUFZZ.z.EKEC8mekGuNvbnYNjm/BghhNrwPHp1O', 'a@a.com'),
(11, 'a', '$2y$10$zin9KmZ0OHDa2XfVJf.23.aKpkIo71pCM52mUIdpvr2x420LM7N1e', 'yy@adhawd.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

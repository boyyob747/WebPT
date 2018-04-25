-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2018 at 11:07 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ad01_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cauhoi`
--

CREATE TABLE `cauhoi` (
  `MaCH` int(10) UNSIGNED NOT NULL,
  `NoiDungCH` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MaLCH` int(10) UNSIGNED NOT NULL,
  `MaPKS` int(10) UNSIGNED NOT NULL,
  `BatBuoc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chucvu`
--

CREATE TABLE `chucvu` (
  `MaCV` int(10) UNSIGNED NOT NULL,
  `TenCV` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chucvu`
--

INSERT INTO `chucvu` (`MaCV`, `TenCV`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '2018-04-24 17:00:00', '2018-04-24 17:00:00'),
(2, 'Mod', '2018-04-24 17:00:00', '2018-04-24 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `lienhe`
--

CREATE TABLE `lienhe` (
  `MaLienHe` int(10) UNSIGNED NOT NULL,
  `HoTen` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ChuDe` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NoiDung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loaicauhoi`
--

CREATE TABLE `loaicauhoi` (
  `MaLCH` int(10) UNSIGNED NOT NULL,
  `TenLCH` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_04_25_081945_create_chucvu_table', 1),
(4, '2018_04_25_082044_create_user_table', 1),
(5, '2018_04_25_082112_create_lienhe_table', 1),
(6, '2018_04_25_082150_create_nganhhoc_table', 1),
(7, '2018_04_25_082205_create_truong_table', 1),
(8, '2018_04_25_082235_create_nganhtruong_table', 1),
(9, '2018_04_25_082257_create_sinhvien_table', 1),
(10, '2018_04_25_082334_create_loaicauhoi_table', 1),
(11, '2018_04_25_082409_create_phieukhaosat_table', 1),
(12, '2018_04_25_082438_create_phieuketquakhaosat_table', 1),
(13, '2018_04_25_082501_create_cauhoi_table', 1),
(14, '2018_04_25_082525_create_thongtindienkhaosat_table', 1),
(15, '2018_04_25_085824_create_option_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nganhhoc`
--

CREATE TABLE `nganhhoc` (
  `MaNH` int(10) UNSIGNED NOT NULL,
  `TenNH` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MoTa` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nganhtruong`
--

CREATE TABLE `nganhtruong` (
  `id` int(10) UNSIGNED NOT NULL,
  `MaTruong` int(10) UNSIGNED NOT NULL,
  `MaNganh` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `option`
--

CREATE TABLE `option` (
  `MaOption` int(10) UNSIGNED NOT NULL,
  `NoiDungOption` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MaCH` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phieuketquakhaosat`
--

CREATE TABLE `phieuketquakhaosat` (
  `MaPKQKS` int(10) UNSIGNED NOT NULL,
  `ThoiGianNopKS` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MaPKS` int(10) UNSIGNED NOT NULL,
  `MaSV` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phieukhaosat`
--

CREATE TABLE `phieukhaosat` (
  `MaPKS` int(10) UNSIGNED NOT NULL,
  `TieuDe` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MoTa` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `TrangThai` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sinhvien`
--

CREATE TABLE `sinhvien` (
  `MaSV` int(10) UNSIGNED NOT NULL,
  `TenSV` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MaTruong` int(10) UNSIGNED NOT NULL,
  `MaNganh` int(10) UNSIGNED NOT NULL,
  `GioiTinh` tinyint(1) NOT NULL,
  `Email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NgaySinh` date NOT NULL,
  `DienThoai` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DiaChiThuongTru` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DiaChiTamTru` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `thongtindienkhatsat`
--

CREATE TABLE `thongtindienkhatsat` (
  `id` int(10) UNSIGNED NOT NULL,
  `MaPKQKS` int(10) UNSIGNED NOT NULL,
  `MaCauHoi` int(10) UNSIGNED NOT NULL,
  `CauTraLoi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `truong`
--

CREATE TABLE `truong` (
  `MaTruong` int(10) UNSIGNED NOT NULL,
  `TenTruong` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DiaChi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NamThanhLap` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TamNhin` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `SuMang` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `GioiThieu` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `HieuTruong` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DienThoai` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserID` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DiaChi` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `GioiTinh` tinyint(1) NOT NULL,
  `NgaySinh` date NOT NULL,
  `SoDienThoai` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TrangThai` tinyint(1) NOT NULL,
  `MaChucVu` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `name`, `username`, `email`, `password`, `DiaChi`, `GioiTinh`, `NgaySinh`, `SoDienThoai`, `TrangThai`, `MaChucVu`, `created_at`, `updated_at`) VALUES
(1, 'Anothay Alounsavanh', 'boyyob747', 'boysavan@gmail.com', '0207540099', 'Laos,Savannakhet', 1, '1995-05-05', '0974867121', 1, 1, '2018-04-24 17:00:00', '2018-04-24 17:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cauhoi`
--
ALTER TABLE `cauhoi`
  ADD PRIMARY KEY (`MaCH`),
  ADD KEY `cauhoi_malch_foreign` (`MaLCH`),
  ADD KEY `cauhoi_mapks_foreign` (`MaPKS`);

--
-- Indexes for table `chucvu`
--
ALTER TABLE `chucvu`
  ADD PRIMARY KEY (`MaCV`);

--
-- Indexes for table `lienhe`
--
ALTER TABLE `lienhe`
  ADD PRIMARY KEY (`MaLienHe`);

--
-- Indexes for table `loaicauhoi`
--
ALTER TABLE `loaicauhoi`
  ADD PRIMARY KEY (`MaLCH`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nganhhoc`
--
ALTER TABLE `nganhhoc`
  ADD PRIMARY KEY (`MaNH`);

--
-- Indexes for table `nganhtruong`
--
ALTER TABLE `nganhtruong`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nganhtruong_matruong_foreign` (`MaTruong`),
  ADD KEY `nganhtruong_manganh_foreign` (`MaNganh`);

--
-- Indexes for table `option`
--
ALTER TABLE `option`
  ADD PRIMARY KEY (`MaOption`),
  ADD KEY `option_mach_foreign` (`MaCH`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `phieuketquakhaosat`
--
ALTER TABLE `phieuketquakhaosat`
  ADD PRIMARY KEY (`MaPKQKS`),
  ADD KEY `phieuketquakhaosat_mapks_foreign` (`MaPKS`),
  ADD KEY `phieuketquakhaosat_masv_foreign` (`MaSV`);

--
-- Indexes for table `phieukhaosat`
--
ALTER TABLE `phieukhaosat`
  ADD PRIMARY KEY (`MaPKS`);

--
-- Indexes for table `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD PRIMARY KEY (`MaSV`),
  ADD KEY `sinhvien_matruong_foreign` (`MaTruong`),
  ADD KEY `sinhvien_manganh_foreign` (`MaNganh`);

--
-- Indexes for table `thongtindienkhatsat`
--
ALTER TABLE `thongtindienkhatsat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thongtindienkhatsat_mapkqks_foreign` (`MaPKQKS`),
  ADD KEY `thongtindienkhatsat_macauhoi_foreign` (`MaCauHoi`);

--
-- Indexes for table `truong`
--
ALTER TABLE `truong`
  ADD PRIMARY KEY (`MaTruong`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `user_username_unique` (`username`),
  ADD KEY `user_machucvu_foreign` (`MaChucVu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cauhoi`
--
ALTER TABLE `cauhoi`
  MODIFY `MaCH` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chucvu`
--
ALTER TABLE `chucvu`
  MODIFY `MaCV` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lienhe`
--
ALTER TABLE `lienhe`
  MODIFY `MaLienHe` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loaicauhoi`
--
ALTER TABLE `loaicauhoi`
  MODIFY `MaLCH` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `nganhhoc`
--
ALTER TABLE `nganhhoc`
  MODIFY `MaNH` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nganhtruong`
--
ALTER TABLE `nganhtruong`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `option`
--
ALTER TABLE `option`
  MODIFY `MaOption` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phieuketquakhaosat`
--
ALTER TABLE `phieuketquakhaosat`
  MODIFY `MaPKQKS` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phieukhaosat`
--
ALTER TABLE `phieukhaosat`
  MODIFY `MaPKS` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sinhvien`
--
ALTER TABLE `sinhvien`
  MODIFY `MaSV` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `thongtindienkhatsat`
--
ALTER TABLE `thongtindienkhatsat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `truong`
--
ALTER TABLE `truong`
  MODIFY `MaTruong` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `UserID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cauhoi`
--
ALTER TABLE `cauhoi`
  ADD CONSTRAINT `cauhoi_malch_foreign` FOREIGN KEY (`MaLCH`) REFERENCES `loaicauhoi` (`MaLCH`) ON DELETE CASCADE,
  ADD CONSTRAINT `cauhoi_mapks_foreign` FOREIGN KEY (`MaPKS`) REFERENCES `phieukhaosat` (`MaPKS`) ON DELETE CASCADE;

--
-- Constraints for table `nganhtruong`
--
ALTER TABLE `nganhtruong`
  ADD CONSTRAINT `nganhtruong_manganh_foreign` FOREIGN KEY (`MaNganh`) REFERENCES `nganhhoc` (`MaNH`) ON DELETE CASCADE,
  ADD CONSTRAINT `nganhtruong_matruong_foreign` FOREIGN KEY (`MaTruong`) REFERENCES `truong` (`MaTruong`) ON DELETE CASCADE;

--
-- Constraints for table `option`
--
ALTER TABLE `option`
  ADD CONSTRAINT `option_mach_foreign` FOREIGN KEY (`MaCH`) REFERENCES `cauhoi` (`MaCH`) ON DELETE CASCADE;

--
-- Constraints for table `phieuketquakhaosat`
--
ALTER TABLE `phieuketquakhaosat`
  ADD CONSTRAINT `phieuketquakhaosat_mapks_foreign` FOREIGN KEY (`MaPKS`) REFERENCES `phieukhaosat` (`MaPKS`) ON DELETE CASCADE,
  ADD CONSTRAINT `phieuketquakhaosat_masv_foreign` FOREIGN KEY (`MaSV`) REFERENCES `sinhvien` (`MaSV`) ON DELETE CASCADE;

--
-- Constraints for table `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD CONSTRAINT `sinhvien_manganh_foreign` FOREIGN KEY (`MaNganh`) REFERENCES `nganhhoc` (`MaNH`) ON DELETE CASCADE,
  ADD CONSTRAINT `sinhvien_matruong_foreign` FOREIGN KEY (`MaTruong`) REFERENCES `truong` (`MaTruong`) ON DELETE CASCADE;

--
-- Constraints for table `thongtindienkhatsat`
--
ALTER TABLE `thongtindienkhatsat`
  ADD CONSTRAINT `thongtindienkhatsat_macauhoi_foreign` FOREIGN KEY (`MaCauHoi`) REFERENCES `cauhoi` (`MaCH`) ON DELETE CASCADE,
  ADD CONSTRAINT `thongtindienkhatsat_mapkqks_foreign` FOREIGN KEY (`MaPKQKS`) REFERENCES `phieuketquakhaosat` (`MaPKQKS`) ON DELETE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_machucvu_foreign` FOREIGN KEY (`MaChucVu`) REFERENCES `chucvu` (`MaCV`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

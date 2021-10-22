-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 23, 2021 at 02:27 AM
-- Server version: 10.3.30-MariaDB-cll-lve
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u1546269_psbwikrama2`
--

-- --------------------------------------------------------

--
-- Table structure for table `buys`
--

CREATE TABLE `buys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nisn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pendaftaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `form1s`
--

CREATE TABLE `form1s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nisn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_lahir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `agama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rw` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kec` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kab` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prov` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kodpos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nohp_siswa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nohp_ortu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asal_smp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jalur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `info` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jurusan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `beasiswa` enum('Umum/normal','lumni SMPN 1 Leles','Alumni SMPN 1 Cilageni','Alumni SMPN 1 Kadungora','Prestasi','Yatim','Dhuafa') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `form1s`
--

INSERT INTO `form1s` (`id`, `nisn`, `nama`, `jk`, `tempat_lahir`, `tanggal_lahir`, `agama`, `email`, `alamat`, `rt`, `rw`, `desa`, `kec`, `kab`, `prov`, `kodpos`, `nohp_siswa`, `nohp_ortu`, `asal_smp`, `jalur`, `info`, `jurusan`, `created_at`, `updated_at`, `beasiswa`) VALUES
(2, '11900561', 'Salwa Amalia', 'perempuan', 'Bogor', '2021-10-16', 'Islam', 'salwa@gmail.com', 'sdsdfsdfsd', '123', '02', 'Pasir Jaya', 'Cigombong', 'Bogor', 'Jawa Barat', '16110', '08877545443', '08762345676', 'SMPN 1 CGB', 'Unggulan (Asrama + Tahfidz)', 'Guru', 'Rekayasa Perangkat Lunak', '2021-10-19 02:35:01', '2021-10-22 12:24:16', 'Dhuafa'),
(6, '11900444', 'Najwa Shihab', 'perempuan', 'Bogor', '2021-10-24', 'Islam', 'najwa@gmail.com', 'Jakarta', '2', '3', 'Padjajaran', 'Sukaindah', 'Bogor-edited', 'Jawa Barat', '16222', '08867578968', '08977787878', 'SMPN 1 Bogor', 'Reguler', 'Orang tua siswa yang menyekolahkan anaknya di SMK Wikrama 1 Garut', 'Bisnis Daring Dan Pemasaran', '2021-10-19 21:48:16', '2021-10-20 21:13:01', 'Yatim');

-- --------------------------------------------------------

--
-- Table structure for table `form2s`
--

CREATE TABLE `form2s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nisn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nik_siswa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_kk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_kk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nik_ibu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ktp_ibu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nik_ayah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ktp_ayah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kesejahtera` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `form2s`
--

INSERT INTO `form2s` (`id`, `nisn`, `nik_siswa`, `no_kk`, `foto_kk`, `nik_ibu`, `ktp_ibu`, `nik_ayah`, `ktp_ayah`, `kip`, `kesejahtera`, `created_at`, `updated_at`) VALUES
(1, '11900561', '11900765422', '87653567', '3.PNG', '1234567', '19.PNG', '1234567', '7.PNG', '6.PNG', '7.PNG', '2021-10-19 01:15:34', '2021-10-19 03:57:55');

-- --------------------------------------------------------

--
-- Table structure for table `form3s`
--

CREATE TABLE `form3s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nisn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ibu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun_ibu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ayah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun_ayah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nohp_ibu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nohp_ayah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pekerjaan_ayah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pekerjaan_ibu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penghasilan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pengeluaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `listrik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bayar_listrik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kesehatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pj_belajar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pj_dana` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `anak` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dari_saudara` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alasan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `form3s`
--

INSERT INTO `form3s` (`id`, `nisn`, `ibu`, `tahun_ibu`, `ayah`, `tahun_ayah`, `nohp_ibu`, `nohp_ayah`, `pekerjaan_ayah`, `pekerjaan_ibu`, `penghasilan`, `pengeluaran`, `listrik`, `bayar_listrik`, `kesehatan`, `pj_belajar`, `pj_dana`, `anak`, `dari_saudara`, `alasan`, `created_at`, `updated_at`) VALUES
(1, '11900561', 'oguyft', 'ohigufyt', 'oiuyt', 'uyzd', 'iuyxt', 'gifuyxtz', 'PNS/TNI/Polri', 'Pedagang listrikil', '2.000.000 - 3.000.0000', 'gufydt', '8765\\', '097867545', 'nbjhvg', 'Ayah', 'Ayah', '876', 'poiu', 'Orang Tua', '2021-10-15 01:51:53', '2021-10-15 01:51:53'),
(2, '22222222222', 'fsf', 'fdsfsdff', 'fdsfds', 'dfsdfs', 'fsdfsdf', 'fsfsd', 'Sudah Meninggal', 'Wirausaha', '500.000 - 1.000.000', 'fdsfsdf', 'fdfs', 'fgfd', 'fdd', 'Wali', 'Kakak', '1', 'sf', 'Intruksi Guru SMP', '2021-10-20 23:09:20', '2021-10-20 23:09:20');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '2021_09_28_032613_create_form1_table', 2),
(51, '2014_10_12_000000_create_users_table', 3),
(52, '2014_10_12_100000_create_password_resets_table', 3),
(53, '2019_08_19_000000_create_failed_jobs_table', 3),
(54, '2019_12_14_000001_create_personal_access_tokens_table', 3),
(55, '2021_09_28_035922_create_form1s_table', 3),
(56, '2021_09_28_062140_create_form2s_table', 3),
(57, '2021_10_09_090436_create_buys_table', 3),
(58, '2021_10_14_060842_create_form3s_table', 3),
(59, '2021_10_15_070408_add_column_to_users_table', 4),
(60, '2021_10_19_131049_create_add_column_to_form1s_table', 5),
(64, '2021_10_19_131459_add_column_to_form1s_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nisn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','user') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ig` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tes` enum('sudah','belum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'belum',
  `status` enum('diverifikasi','diterima','ditolak','belum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'belum'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nisn`, `name`, `email`, `role`, `no`, `fb`, `ig`, `password`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`, `tes`, `status`) VALUES
(1, '11900', 'admin', 'admin@admin.com', 'admin', '088765424719', 'Admin', '@admin', '$2y$10$X3v6bW/ZwFDLiLCCTbl.JensP79ad7tdy5vOWTBzYFV3qA9zk6F2y', NULL, NULL, '2021-10-14 23:24:10', '2021-10-14 23:24:10', 'belum', 'belum'),
(2, '11900561', 'Salwa Amalia', 'salwa@gmail.com', NULL, '0876675687', 'Salwa', '@salwa', '$2y$10$X3v6bW/ZwFDLiLCCTbl.JensP79ad7tdy5vOWTBzYFV3qA9zk6F2y', NULL, NULL, '2021-10-14 23:25:33', '2021-10-19 06:53:25', 'belum', 'belum'),
(3, '11900555', 'Ardhito Pramono', 'ardito@gmail.com', NULL, '0876175615', 'Ardhito', '@ardhito', '$2y$10$nuETXZEqFjVb57alW0QaDuYWOsUSTlYPAdNwWAHmUnvtZVfRFRvBO', NULL, NULL, '2021-10-19 21:15:45', '2021-10-20 20:33:00', 'belum', 'belum'),
(4, '11900444', 'Najwa Shihab', 'najwa@gmail.com', NULL, '08866456455', 'Najwa', '@najwa', '$2y$10$H4BUH95.SzQED7ff5wlTg./3L19pCEv6DmoAClYZr4/g9yDvG3G5i', NULL, NULL, '2021-10-19 21:36:50', '2021-10-20 20:33:48', 'belum', 'diterima'),
(5, '11900777', 'Iqbaal Ramadhan', 'iqbaal@gmail.com', NULL, '0861761881681', 'iqbaal', '@iqbaal', '$2y$10$6FDPkdRLh0kgYpauSc.aju8BgxMbtAS.o.0ToqPRtpaL6SQ68Kj2.', NULL, NULL, '2021-10-19 22:51:38', '2021-10-20 20:36:07', 'belum', 'belum');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buys`
--
ALTER TABLE `buys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `form1s`
--
ALTER TABLE `form1s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form2s`
--
ALTER TABLE `form2s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form3s`
--
ALTER TABLE `form3s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_nisn_unique` (`nisn`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buys`
--
ALTER TABLE `buys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form1s`
--
ALTER TABLE `form1s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `form2s`
--
ALTER TABLE `form2s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `form3s`
--
ALTER TABLE `form3s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

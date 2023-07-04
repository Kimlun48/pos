-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 23 Nov 2022 pada 05.35
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `marketpos1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(10) UNSIGNED NOT NULL,
  `nama_kategori` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `created_at`, `updated_at`) VALUES
(1, 'Pakaian', '2017-05-20 03:42:43', '2017-06-08 07:36:31'),
(2, 'Makanan', '2017-05-20 03:42:56', '2017-05-20 03:42:56'),
(3, 'Perlengkapan Kebersihan', '2017-05-20 03:43:05', '2017-05-20 03:43:32'),
(4, 'Makanan Ringan', '2017-05-20 03:43:11', '2017-05-20 03:43:11'),
(5, 'Barang Pecah Belah', '2017-05-20 03:43:41', '2017-05-20 03:43:41'),
(6, 'Kerajinan Tangan', '2017-05-20 07:32:51', '2017-05-30 16:09:49'),
(8, 'Alat dapur', '2022-11-20 20:43:23', '2022-11-20 20:43:40'),
(9, 'Sabun', '2022-11-23 02:39:07', '2022-11-23 02:39:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `id_member` int(10) UNSIGNED NOT NULL,
  `kode_member` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `telpon` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`id_member`, `kode_member`, `nama`, `alamat`, `telpon`, `created_at`, `updated_at`) VALUES
(1, 201702080001, 'Natania Hafizah', 'Jl. Citarum, Slawi Wetan, Slawi, Tegal', '085623237898', '2017-05-21 07:35:33', '2017-05-21 07:35:33'),
(2, 201702080002, 'Khalika Zahin', 'Jl. Citarum, Slawi Wetan, Slawi,', '085712344555', '2017-05-21 08:14:55', '2017-05-21 08:14:55'),
(3, 201703230003, 'Abdul Latif', 'Jl. Citarum, Slawi Wetan, Slawi, Tegal', '085623237898', '2017-05-21 08:16:04', '2017-05-21 08:16:04'),
(4, 201703230004, 'Fatihatul Jannah1', 'Jl. Citarum, Slawi Wetan, Slawi, Tegal', '085712344543', '2017-05-21 08:16:33', '2022-11-20 21:45:06'),
(5, 201703230005, 'Afaf Firdaus', 'Susukan, Banjarnegara', '085712344234', '2017-05-21 08:17:12', '2017-05-21 08:17:12'),
(7, 2022, 'Safa', 'JL.Nanjung RT.05 RW.04 Desa/Kec Margaasih Kab Bandung', '085712344555', '2022-11-20 21:45:48', '2022-11-20 21:45:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_05_17_231123_buat_tabel_kategori', 1),
(4, '2017_05_18_000802_buat_tabel_produk', 2),
(5, '2017_05_18_103204_buat_tabel_supplier', 3),
(6, '2017_05_18_103438_buat_tabel_member', 4),
(7, '2017_05_18_103716_buat_tabel_pembelian', 5),
(8, '2017_05_18_104108_buat_tabel_pembelian_detail', 6),
(9, '2017_05_18_104505_buat_tabel_penjualan', 7),
(10, '2017_05_18_110941_buat_tabel_penjualan_detail', 8),
(11, '2017_05_18_111512_buat_tabel_pengeluaran', 9),
(12, '2017_05_18_111942_buat_tabel_setting', 10),
(13, '2017_05_18_112540_ubah_tabel_users', 11);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian`
--

CREATE TABLE `pembelian` (
  `id_pembelian` int(10) UNSIGNED NOT NULL,
  `id_supplier` int(10) UNSIGNED NOT NULL,
  `total_item` int(10) UNSIGNED NOT NULL,
  `total_harga` bigint(20) UNSIGNED NOT NULL,
  `diskon` int(10) UNSIGNED NOT NULL,
  `bayar` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pembelian`
--

INSERT INTO `pembelian` (`id_pembelian`, `id_supplier`, `total_item`, `total_harga`, `diskon`, `bayar`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 50000, 30, 35000, '2017-05-24 06:17:33', '2017-05-24 06:18:18'),
(2, 1, 5, 90000, 20, 72000, '2017-05-25 16:21:16', '2017-05-25 16:36:17'),
(3, 1, 7, 190000, 20, 152000, '2017-06-04 01:07:55', '2017-06-04 01:38:46'),
(24, 5, 0, 0, 0, 0, '2022-11-23 03:50:52', '2022-11-23 03:50:52'),
(25, 5, 0, 0, 0, 0, '2022-11-23 04:01:24', '2022-11-23 04:01:24'),
(26, 5, 1, 2000, 0, 2000, '2022-11-23 04:02:03', '2022-11-23 04:31:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian_detail`
--

CREATE TABLE `pembelian_detail` (
  `id_pembelian_detail` int(10) UNSIGNED NOT NULL,
  `id_pembelian` int(10) UNSIGNED NOT NULL,
  `kode_produk` bigint(20) UNSIGNED NOT NULL,
  `harga_beli` bigint(20) UNSIGNED NOT NULL,
  `jumlah` int(10) UNSIGNED NOT NULL,
  `sub_total` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pembelian_detail`
--

INSERT INTO `pembelian_detail` (`id_pembelian_detail`, `id_pembelian`, `kode_produk`, `harga_beli`, `jumlah`, `sub_total`, `created_at`, `updated_at`) VALUES
(1, 1, 20170200003, 50000, 1, 50000, '2017-05-24 06:17:53', '2017-05-24 06:17:53'),
(3, 2, 20170200003, 50000, 1, 50000, '2017-05-25 16:34:26', '2017-05-25 16:34:26'),
(4, 2, 21070520001, 10000, 4, 40000, '2017-05-25 16:34:47', '2017-05-25 16:34:47'),
(5, 3, 20170200003, 50000, 3, 150000, '2017-06-04 01:11:23', '2017-06-04 01:36:32'),
(10, 3, 21070520001, 10000, 4, 40000, '2017-06-04 01:37:31', '2017-06-04 01:38:28'),
(57, 26, 2022, 2000, 1, 2000, '2022-11-23 04:06:34', '2022-11-23 04:06:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id_pengeluaran` int(10) UNSIGNED NOT NULL,
  `jenis_pengeluaran` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nominal` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pengeluaran`
--

INSERT INTO `pengeluaran` (`id_pengeluaran`, `jenis_pengeluaran`, `nominal`, `created_at`, `updated_at`) VALUES
(1, 'Sewa Gedung', 20000000, '2017-05-21 15:58:32', '2017-05-21 15:58:32'),
(2, 'Bayar Listrik', 1200000, '2017-05-21 16:12:30', '2017-05-21 16:12:30'),
(3, 'Gaji Pegawai', 10200000, '2017-06-08 07:44:58', '2017-06-08 07:45:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(10) UNSIGNED NOT NULL,
  `kode_member` bigint(20) UNSIGNED NOT NULL,
  `total_item` int(10) UNSIGNED NOT NULL,
  `total_harga` bigint(20) UNSIGNED NOT NULL,
  `diskon` int(10) UNSIGNED NOT NULL,
  `bayar` bigint(20) UNSIGNED NOT NULL,
  `diterima` bigint(20) NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `kode_member`, `total_item`, `total_harga`, `diskon`, `bayar`, `diterima`, `id_user`, `created_at`, `updated_at`) VALUES
(2, 201703230004, 16, 1076000, 10, 968400, 1000000, 2, '2017-05-25 20:14:46', '2017-05-25 23:07:00'),
(3, 0, 143, 2000000, 0, 2000000, 0, 2, '2017-05-24 18:43:08', '2017-05-26 18:43:08'),
(5, 0, 134, 1980000, 0, 1980000, 0, 0, '2017-05-20 17:00:00', NULL),
(6, 0, 123, 1560000, 0, 1560000, 0, 0, '2017-05-21 17:00:00', NULL),
(7, 0, 200, 2130000, 0, 2130000, 0, 0, '2017-05-22 17:00:00', NULL),
(19, 201702080002, 3, 36000, 10, 32400, 50000, 4, '2017-06-04 09:10:01', '2017-06-04 09:13:11'),
(23, 201702080002, 2, 24000, 10, 21600, 25000, 4, '2017-06-05 16:21:16', '2017-06-05 16:21:53'),
(24, 201703230003, 1, 12000, 10, 10800, 15000, 4, '2017-06-05 16:27:30', '2017-06-05 16:27:52'),
(25, 201702080002, 9, 388000, 10, 349200, 400000, 4, '2017-06-05 16:48:40', '2017-06-05 16:49:24'),
(27, 201702080002, 4, 320000, 10, 288000, 300000, 4, '2017-06-05 18:05:58', '2017-06-05 18:15:15'),
(29, 201703230004, 9, 436000, 10, 392400, 400000, 4, '2017-06-05 21:52:50', '2017-06-05 21:53:23'),
(30, 201703230003, 9, 388000, 10, 349200, 400000, 4, '2017-06-05 22:30:37', '2017-06-05 22:31:21'),
(40, 201702080001, 2, 5000, 10, 4500, 4000, 7, '2022-11-22 16:53:32', '2022-11-22 16:59:10'),
(43, 0, 1, 80000, 0, 80000, 0, 7, '2022-11-22 17:29:10', '2022-11-22 17:29:35'),
(48, 201703230005, 2, 160000, 10, 144000, 0, 7, '2022-11-23 02:29:26', '2022-11-23 02:32:25'),
(51, 0, 2, 140000, 0, 140000, 0, 7, '2022-11-23 02:43:41', '2022-11-23 02:44:38'),
(52, 0, 6, 420000, 0, 420000, 0, 7, '2022-11-23 02:46:21', '2022-11-23 02:47:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan_detail`
--

CREATE TABLE `penjualan_detail` (
  `id_penjualan_detail` int(10) UNSIGNED NOT NULL,
  `id_penjualan` int(10) UNSIGNED NOT NULL,
  `kode_produk` bigint(20) UNSIGNED NOT NULL,
  `harga_jual` bigint(20) UNSIGNED NOT NULL,
  `jumlah` int(10) UNSIGNED NOT NULL,
  `diskon` int(11) NOT NULL,
  `sub_total` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `penjualan_detail`
--

INSERT INTO `penjualan_detail` (`id_penjualan_detail`, `id_penjualan`, `kode_produk`, `harga_jual`, `jumlah`, `diskon`, `sub_total`, `created_at`, `updated_at`) VALUES
(1, 2, 20170200003, 80000, 13, 0, 80000, '2017-05-25 20:22:17', '2017-05-25 20:30:24'),
(2, 2, 21070520001, 12000, 3, 0, 12000, '2017-05-25 20:35:53', '2017-05-25 23:06:34'),
(3, 3, 20170200003, 80000, 1, 0, 80000, '2017-05-26 18:45:03', '2017-05-26 18:45:03'),
(4, 3, 201702080002, 60000, 1, 0, 60000, '2017-05-26 18:45:09', '2017-05-26 18:45:09'),
(47, 19, 21070520001, 12000, 3, 0, 36000, '2017-06-04 09:10:08', '2017-06-04 09:10:35'),
(57, 23, 21070520001, 12000, 1, 0, 12000, '2017-06-05 16:21:22', '2017-06-05 16:21:22'),
(58, 23, 21070520001, 12000, 1, 0, 12000, '2017-06-05 16:21:23', '2017-06-05 16:21:23'),
(59, 24, 21070520001, 12000, 1, 0, 12000, '2017-06-05 16:27:35', '2017-06-05 16:27:35'),
(60, 25, 20170200003, 80000, 2, 10, 144000, '2017-06-05 16:48:45', '2017-06-05 16:48:58'),
(61, 25, 21070520001, 12000, 4, 0, 48000, '2017-06-05 16:48:49', '2017-06-05 16:48:54'),
(62, 25, 201702080002, 60000, 3, 10, 162000, '2017-06-05 16:48:52', '2017-06-05 16:48:57'),
(63, 27, 20170200003, 80000, 4, 10, 288000, '2017-06-05 18:06:04', '2017-06-05 18:06:10'),
(67, 29, 20170200003, 80000, 2, 10, 144000, '2017-06-05 21:52:55', '2017-06-05 21:53:07'),
(68, 29, 21070520001, 12000, 3, 0, 36000, '2017-06-05 21:52:57', '2017-06-05 21:53:02'),
(69, 29, 201702080002, 60000, 4, 10, 216000, '2017-06-05 21:52:59', '2017-06-05 21:53:02'),
(70, 30, 20170200003, 80000, 2, 10, 144000, '2017-06-05 22:30:42', '2017-06-05 22:30:57'),
(71, 30, 21070520001, 12000, 4, 0, 48000, '2017-06-05 22:30:45', '2017-06-05 22:30:50'),
(72, 30, 201702080002, 60000, 3, 10, 162000, '2017-06-05 22:30:47', '2017-06-05 22:30:51'),
(74, 40, 2022, 2500, 1, 0, 2500, '2022-11-22 16:55:55', '2022-11-22 16:55:55'),
(75, 40, 2022, 2500, 1, 0, 2500, '2022-11-22 16:58:06', '2022-11-22 16:58:06'),
(76, 43, 20170200003, 80000, 1, 10, 72000, '2022-11-22 17:29:17', '2022-11-22 17:29:17'),
(79, 48, 20170200003, 80000, 2, 10, 144000, '2022-11-23 02:30:17', '2022-11-23 02:32:04'),
(80, 51, 202201, 70000, 2, 0, 140000, '2022-11-23 02:44:21', '2022-11-23 02:44:33'),
(81, 52, 202201, 70000, 4, 0, 280000, '2022-11-23 02:46:57', '2022-11-23 02:49:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(10) UNSIGNED NOT NULL,
  `kode_produk` bigint(20) UNSIGNED NOT NULL,
  `id_kategori` int(10) UNSIGNED NOT NULL,
  `nama_produk` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merk` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga_beli` bigint(20) UNSIGNED NOT NULL,
  `diskon` int(10) UNSIGNED NOT NULL,
  `harga_jual` bigint(20) UNSIGNED NOT NULL,
  `stok` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `kode_produk`, `id_kategori`, `nama_produk`, `merk`, `harga_beli`, `diskon`, `harga_jual`, `stok`, `created_at`, `updated_at`) VALUES
(1, 21070520001, 4, 'Kacang Bogares', 'Asli', 10000, 0, 12000, 20, '2017-05-20 07:32:12', '2022-11-22 16:08:38'),
(2, 201702080002, 6, 'Wayang Kertas', '-', 40000, 10, 60000, 26, '2017-05-20 07:33:38', '2022-11-22 16:08:45'),
(3, 20170200003, 6, 'Kacamata Kayu', '-', 50000, 10, 80000, 16, '2017-05-20 07:36:32', '2022-11-23 02:32:25'),
(8, 2022, 2, 'Roti', 'hayhay', 2000, 0, 2500, 5, '2022-11-20 21:06:14', '2022-11-23 04:31:14'),
(9, 2023, 2, 'asin', 'hayhay', 2000, 0, 2500, 12, '2022-11-21 10:55:37', '2022-11-21 10:55:37'),
(10, 202201, 9, 'Sabun cap Onta', 'Camul', 60000, 0, 70000, 4, '2022-11-23 02:40:43', '2022-11-23 02:44:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting`
--

CREATE TABLE `setting` (
  `id_setting` int(10) UNSIGNED NOT NULL,
  `nama_perusahaan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `telepon` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kartu_member` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diskon_member` int(11) NOT NULL,
  `tipe_nota` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `setting`
--

INSERT INTO `setting` (`id_setting`, `nama_perusahaan`, `alamat`, `telepon`, `logo`, `kartu_member`, `diskon_member`, `tipe_nota`, `created_at`, `updated_at`) VALUES
(1, 'MarketPos', 'jl.nanjung no.06 margaasih RT.05 RW.04 Desa/Kec Margaasih', '083822545375', 'logo.jpg', 'card.jpg', 10, 0, NULL, '2022-11-21 09:42:00'),
(2, 'MARKETPOS', 'Jl. Citarum, Bandung', '08382212345', 'logo.png', 'card.png', 10, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` int(10) UNSIGNED NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `telpon` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama`, `alamat`, `telpon`, `created_at`, `updated_at`) VALUES
(1, 'CV. Anugrah', 'Jl. A. Yani, Slawi - Tegal', '085623237898', '2017-05-21 06:36:44', '2017-05-21 06:36:44'),
(2, 'CV. Karya Cendekia', 'Jl. Diponegoro No. 25 Slawi - Tegal', '085712344566', '2017-05-21 06:39:23', '2017-05-21 06:42:42'),
(3, 'CV. Gagah Perkasa 2', 'Jl. Ir. Juanda, Pakembaran, Slawi - Tegal', '085712344555', '2017-06-08 07:44:34', '2022-11-20 21:26:43'),
(5, 'CV Indah Negeriku', 'Jl.bedugul 22', '089656565', '2022-11-20 21:27:21', '2022-11-20 21:27:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `foto` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `foto`, `level`) VALUES
(3, 'Daffa\' Shidqi', 'daffa@gmail.com', '$2y$10$pxz5tn4ugv/OnGKgRBcUeet2Zif3ZsXMMBEIsolt5G8mTF5GzwPXi', 'J4X8yjiez4QV85Ph5Ll3udIDBDlzngVS5Y2rD8ShYsWYvF5i3SfaByzztiY6', NULL, NULL, 'user.png', 1),
(6, 'asep1', 'asep1@gmail.com', '$2y$10$I/HjIHJBpA2S0EkbEbNIRO99d4sLNx29QgPQ9Zfe7iauGIbXwoqly', NULL, NULL, NULL, 'user.png', 1),
(7, 'safa1', 'safa1@gmail.com', '$2y$10$e6IqJXggboW4chLOdCuCDu4AlkyC2GVDMX2o.S5H/aaPgcam2sT1C', NULL, NULL, NULL, 'user.png', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indeks untuk tabel `pembelian_detail`
--
ALTER TABLE `pembelian_detail`
  ADD PRIMARY KEY (`id_pembelian_detail`);

--
-- Indeks untuk tabel `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id_pengeluaran`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indeks untuk tabel `penjualan_detail`
--
ALTER TABLE `penjualan_detail`
  ADD PRIMARY KEY (`id_penjualan_detail`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id_pembelian` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `pembelian_detail`
--
ALTER TABLE `pembelian_detail`
  MODIFY `id_pembelian_detail` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT untuk tabel `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id_pengeluaran` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT untuk tabel `penjualan_detail`
--
ALTER TABLE `penjualan_detail`
  MODIFY `id_penjualan_detail` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `setting`
--
ALTER TABLE `setting`
  MODIFY `id_setting` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_supplier` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

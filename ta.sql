-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Feb 2020 pada 14.33
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ta`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `golongan`
--

CREATE TABLE `golongan` (
  `kode_golongan` varchar(5) NOT NULL,
  `kode_golonganpokok` varchar(5) NOT NULL,
  `judul_golongan` varchar(50) NOT NULL,
  `deskripsi_golongan` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `golonganpokok`
--

CREATE TABLE `golonganpokok` (
  `kode_golonganpokok` varchar(5) NOT NULL,
  `kode_kategori` varchar(5) NOT NULL,
  `judul_golonganpokok` varchar(50) NOT NULL,
  `deskripsi_golonganpokok` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `kode_kategori` varchar(5) NOT NULL,
  `judul_kategori` varchar(50) NOT NULL,
  `deskripsi_kategori` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelompok`
--

CREATE TABLE `kelompok` (
  `kode_kelompok` varchar(5) NOT NULL,
  `kode_subgolongan` varchar(5) NOT NULL,
  `judul_kelompok` varchar(50) NOT NULL,
  `deskripsi_kelompok` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `subgolongan`
--

CREATE TABLE `subgolongan` (
  `kode_subgolongan` varchar(5) NOT NULL,
  `kode_golongan` varchar(5) NOT NULL,
  `judul_subgolongan` varchar(50) NOT NULL,
  `deskripsi_subgolongan` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `level` tinyint(1) NOT NULL,
  `blokir` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `nama`, `level`, `blokir`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 1, 1),
(13, 'dad', 'asdasd', 'dad', 1, 1),
(15, 'icang', '2e4640b95d249830692579dc409a577e', 'icang', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `golongan`
--
ALTER TABLE `golongan`
  ADD PRIMARY KEY (`kode_golongan`),
  ADD KEY `kode_golonganpokok` (`kode_golonganpokok`);

--
-- Indeks untuk tabel `golonganpokok`
--
ALTER TABLE `golonganpokok`
  ADD PRIMARY KEY (`kode_golonganpokok`),
  ADD KEY `kode_kategori` (`kode_kategori`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kode_kategori`);

--
-- Indeks untuk tabel `kelompok`
--
ALTER TABLE `kelompok`
  ADD PRIMARY KEY (`kode_kelompok`),
  ADD KEY `kode_subgolongan` (`kode_subgolongan`);

--
-- Indeks untuk tabel `subgolongan`
--
ALTER TABLE `subgolongan`
  ADD PRIMARY KEY (`kode_subgolongan`),
  ADD KEY `kode_golongan` (`kode_golongan`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `golongan`
--
ALTER TABLE `golongan`
  ADD CONSTRAINT `golongan_ibfk_1` FOREIGN KEY (`kode_golongan`) REFERENCES `golonganpokok` (`kode_golonganpokok`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `golonganpokok`
--
ALTER TABLE `golonganpokok`
  ADD CONSTRAINT `golonganpokok_ibfk_1` FOREIGN KEY (`kode_kategori`) REFERENCES `kategori` (`kode_kategori`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kelompok`
--
ALTER TABLE `kelompok`
  ADD CONSTRAINT `kelompok_ibfk_1` FOREIGN KEY (`kode_subgolongan`) REFERENCES `subgolongan` (`kode_subgolongan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `subgolongan`
--
ALTER TABLE `subgolongan`
  ADD CONSTRAINT `subgolongan_ibfk_1` FOREIGN KEY (`kode_golongan`) REFERENCES `golongan` (`kode_golongan`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

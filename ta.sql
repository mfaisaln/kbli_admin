-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 10, 2020 at 10:12 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

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
-- Table structure for table `golongan`
--

CREATE TABLE `golongan` (
  `kode_golongan` varchar(5) NOT NULL,
  `kode_golonganpokok` varchar(5) NOT NULL,
  `judul_golongan` varchar(50) NOT NULL,
  `deskripsi_golongan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `golongan`
--

INSERT INTO `golongan` (`kode_golongan`, `kode_golonganpokok`, `judul_golongan`, `deskripsi_golongan`) VALUES
('351', '35', 'KETENAGALISTRIKAN', 'Golongan ini mencakup kegiatan pembangkitan, transmisi dan pendistribusian\r\nenergi listrik kepada konsumen akhir. Kegiatan yang tercakup adalah\r\npengoperasian fasilitas pembangkit yang menghasilkan energi listrik,\r\npengoperasian sistem transmisi hingga sistem distribusi ke konsumen akhir,\r\ndan kegiatan penjualan ke konsumen. Golongan ini tidak mencakup produksi\r\nlistrik melalui pembakaran sampah.'),
('352', '35', 'PENGADAAN DAN DISTRIBUSI GAS ALAM DAN BUATAN', 'Golongan ini mencakup pengolahan gas dan pendistribusian gas alam atau gas\r\nbuatan ke konsumen melalui suatu sistem saluran pipa, dan kegiatan penjualan\r\ngas. Golongan ini juga mencakup penyediaan gas melalui berbagai proses,\r\npengangkutan, pendistribusian dan penyediaan semua jenis bahan bakar gas\r\nmelalui pipa saluran, penjualan gas kepada konsumen melalui saluran pipa,\r\ntermasuk kegiatan broker dan agen gas, pertukaran komoditi dan kapasitas\r\npengangkutan bahan bakar gas. '),
('353', '35', 'PENGADAAN UAP/AIR PANAS, UDARA DINGIN DAN PRODUKSI', 'Golongan ini mencakup kegiatan produksi, pengumpulan dan pendistribusian\r\nuap dan air panas untuk pemanas, energi dan tujuan lain, produksi dan\r\ndistribusi udara dingin, air dingin/air es untuk tujuan pendinginan, dan produksi\r\nes, termasuk es untuk kebutuhan makanan/minuman dan tujuan non makanan.');

-- --------------------------------------------------------

--
-- Table structure for table `golonganpokok`
--

CREATE TABLE `golonganpokok` (
  `kode_golonganpokok` varchar(5) NOT NULL,
  `kode_kategori` varchar(5) NOT NULL,
  `judul_golonganpokok` varchar(50) NOT NULL,
  `deskripsi_golonganpokok` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `golonganpokok`
--

INSERT INTO `golonganpokok` (`kode_golonganpokok`, `kode_kategori`, `judul_golonganpokok`, `deskripsi_golonganpokok`) VALUES
('35', 'D', 'PENGADAAN LISTRIK, GAS, UAP/AIR PANAS DAN UDARA DI', 'Golongan pokok ini mencakup kegiatan ekonomi/lapangan usaha pengadaan\r\ntenaga listrik, gas alam, uap panas, air panas dan sejenisnya melalui jaringan,\r\nsaluran atau pipa infrastruktur permanen. Dimensi jaringan/infrastruktur tidak\r\ndapat ditentukan dengan pasti, termasuk kegiatan pendistribusian listrik, gas,\r\nuap panas dan air panas serta sejenisnya dalam lokasi pabrik atau bangunan\r\ntempat tinggal.');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kode_kategori` varchar(5) NOT NULL,
  `judul_kategori` varchar(50) NOT NULL,
  `deskripsi_kategori` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kode_kategori`, `judul_kategori`, `deskripsi_kategori`) VALUES
('D', 'PENGADAAN LISTRIK, GAS, UAP/AIR PANAS DAN UDARA DI', 'Kategori ini mencakup kegiatan ekonomi/lapangan usaha pengadaan tenaga\r\nlistrik, gas alam, uap panas, air panas dan sejenisnya melalui jaringan, saluran\r\natau pipa infrastruktur permanen. Dimensi jaringan/infrastruktur tidak dapat\r\nditentukan dengan pasti, termasuk kegiatan pendistribusian listrik, gas, uap\r\npanas dan air panas serta sejenisnya dalam lokasi pabrik atau bangunan\r\ntempat tinggal.');

-- --------------------------------------------------------

--
-- Table structure for table `kelompok`
--

CREATE TABLE `kelompok` (
  `kode_kelompok` varchar(5) NOT NULL,
  `kode_subgolongan` varchar(5) NOT NULL,
  `judul_kelompok` varchar(50) NOT NULL,
  `deskripsi_kelompok` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kelompok`
--

INSERT INTO `kelompok` (`kode_kelompok`, `kode_subgolongan`, `judul_kelompok`, `deskripsi_kelompok`) VALUES
('35101', '3510', 'PEMBANGKITAN TENAGA LISTRIK', 'Kelompok ini mencakup usaha pembangkitan tenaga listrik dan pengoperasian\r\nfasilitas pembangkit yang menghasilkan energi listrik, yang berasal dari\r\nberbagai sumber energi, seperti tenaga air (hidroelektrik), batu bara, gas (turbin\r\ngas), bahan bakar minyak, diesel dan energi yang dapat diperbarui, tenaga\r\nsurya, angin, arus laut, panas bumi (energi termal), tenaga nuklir dan lain-lain.'),
('35102', '3510', 'TRANSMISI TENAGA LISTRIK', 'Kelompok ini mencakup usaha pengoperasian sistim transmisi atau usaha\r\npenyaluran tenaga listrik dari pembangkit ke jaringan distribusi melalui jaringan\r\ntenaga listrik yang bertegangan tinggi (antara 35 kilovolt s.d 245 kilovolt) dan\r\natau bertegangan ekstra tinggi (lebih besar dari 245 kilovolt) termasuk\r\ngardu-gardu induknya, baik berasal dari produksi sendiri maupun dari produksi\r\npihak lain.'),
('35103', '3510', 'TRANSMISI TENAGA LISTRIK', 'Kelompok ini mencakup usaha pengoperasian sistim distribusi atau usaha\r\npenyaluran tenaga listrik melalui jaringan tenaga listrik yang bertegangan\r\nmenengah ke bawah (di bawah 35 kilovolt) sampai ke konsumen atau\r\npelanggan termasuk dengan gardu-gardu distribusinya baik berasal dari\r\nproduksi sendiri maupun dari produksi pihak lain.'),
('35104', '3510', 'TRANSMISI TENAGA LISTRIK', 'Kelompok ini mencakup usaha/kegiatan yang secara langsung berhubungan\r\ndengan usaha ketenagalistrikan, seperti jasa pencatatan meteran dan\r\npemberian tagihan. Termasuk kegiatan perdagangan listrik ke konsumen,\r\nkegiatan agen tenaga listrik yang melakukan penjualan listrik melalui sistem\r\ndistribusi tenaga listrik yang dioperasikan oleh pihak lain, kegiatan\r\npengoperasian pertukaran kapasitas transmisi dan daya tenaga listrik, serta\r\nkegiatan perdagangan pulsa/token listrik dan kegiatan penunjang kelistrikan\r\nlainnya.');

-- --------------------------------------------------------

--
-- Table structure for table `subgolongan`
--

CREATE TABLE `subgolongan` (
  `kode_subgolongan` varchar(5) NOT NULL,
  `kode_golongan` varchar(5) NOT NULL,
  `judul_subgolongan` varchar(50) NOT NULL,
  `deskripsi_subgolongan` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subgolongan`
--

INSERT INTO `subgolongan` (`kode_subgolongan`, `kode_golongan`, `judul_subgolongan`, `deskripsi_subgolongan`) VALUES
('3510', '351', 'KETENAGALISTRIKAN', 'Subgolongan ini mencakup kegiatan pembangkitan, transmisi tenaga listrik dari\r\nfasilitas pembangkit ke pusat distribusi dan distribusi energi listrik kekonsumen.\r\nSubgolongan ini mencakup :\r\n- Pengoperasian fasilitas pembangkit yang menghasilkan energi listrik, yang\r\nberasal dari sumber energi, seperti energi termal, nuklir, hidroelektrik, turbin\r\ngas, diesel dan energi yang dapat diperbarui\r\n- Pengoperasian sistim transmisi yang menghantarkan listrik dari fasilitas\r\npembangkit ke sistim distribusi\r\n- Pengoperasian sistim distribusi (yaitu, terdiri dari jalur/saluran, kutub,\r\npengukur dan kabel) yang menghantarkan tenaga listrik yang diterima dari\r\nfasilitas pembangkit atau sistim transmisi ke konsumen\r\n- Perdagangan listrik ke konsumen\r\n- Kegiatan agen tenaga listrik yang melakukan penjualan listrik melalui sistim\r\ndistribusi tenaga listrik yang dioperasikan oleh pihak lain\r\n- Pengoperasian pertukaran kapasitas transmisi dan daya tenaga listrik\r\nSubgolongan ini tidak mencakup :\r\n- Produksi atau pembangkitan listrik melalui pembakaran sampah, lihat 3821');

-- --------------------------------------------------------

--
-- Table structure for table `user`
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
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `nama`, `level`, `blokir`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 1, 1),
(15, 'icang', '2e4640b95d249830692579dc409a577e', 'icang', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `golongan`
--
ALTER TABLE `golongan`
  ADD PRIMARY KEY (`kode_golongan`),
  ADD KEY `kode_golonganpokok` (`kode_golonganpokok`);

--
-- Indexes for table `golonganpokok`
--
ALTER TABLE `golonganpokok`
  ADD PRIMARY KEY (`kode_golonganpokok`),
  ADD KEY `kode_kategori` (`kode_kategori`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kode_kategori`);

--
-- Indexes for table `kelompok`
--
ALTER TABLE `kelompok`
  ADD PRIMARY KEY (`kode_kelompok`),
  ADD KEY `kode_subgolongan` (`kode_subgolongan`);

--
-- Indexes for table `subgolongan`
--
ALTER TABLE `subgolongan`
  ADD PRIMARY KEY (`kode_subgolongan`),
  ADD KEY `kode_golongan` (`kode_golongan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `golongan`
--
ALTER TABLE `golongan`
  ADD CONSTRAINT `golongan_ibfk_1` FOREIGN KEY (`kode_golonganpokok`) REFERENCES `golonganpokok` (`kode_golonganpokok`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `golonganpokok`
--
ALTER TABLE `golonganpokok`
  ADD CONSTRAINT `golonganpokok_ibfk_1` FOREIGN KEY (`kode_kategori`) REFERENCES `kategori` (`kode_kategori`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kelompok`
--
ALTER TABLE `kelompok`
  ADD CONSTRAINT `kelompok_ibfk_1` FOREIGN KEY (`kode_subgolongan`) REFERENCES `subgolongan` (`kode_subgolongan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subgolongan`
--
ALTER TABLE `subgolongan`
  ADD CONSTRAINT `subgolongan_ibfk_1` FOREIGN KEY (`kode_golongan`) REFERENCES `golongan` (`kode_golongan`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

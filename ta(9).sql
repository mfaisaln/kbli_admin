-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 01 Bulan Mei 2020 pada 09.51
-- Versi server: 5.5.65-MariaDB
-- Versi PHP: 7.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
  `judul_golongan` varchar(255) NOT NULL,
  `deskripsi_golongan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `golongan`
--

INSERT INTO `golongan` (`kode_golongan`, `kode_golonganpokok`, `judul_golongan`, `deskripsi_golongan`) VALUES
('051', '05', 'PERTAMBANGAN BATU BARA', 'Golongan ini mencakup pertambangan batu bara; penambangan di permukaan\r\ntanah atau bawah tanah dan melalui metode pencairan dan pembersihan,\r\nperekatan, pelumatan, pemadatan dan lain-lain untuk menggolongkan dan\r\nmeningkatkan kualitas atau untuk memudahkan pengangkutan. Kegiatan ini\r\njuga mencakup pencarian batu bara dari kumpulan tepung bara.'),
('052', '05', 'PERTAMBANGAN LIGNIT ', 'Golongan ini mencakup pertambangan lignit (batu bara muda) dengan cara\r\npenambangan di permukaan tanah, termasuk penambangan dengan metode\r\npencairan dan kegiatan lain untuk meningkatkan kualitas dan memudahkan\r\npengangkutan atau penyimpanan.'),
('061', '06', 'PERTAMBANGAN MINYAK BUMI ', ''),
('062', '06', 'PERTAMBANGAN GAS ALAM DAN PENGUSAHAAN TENAGA PANAS BUMI ', 'Golongan ini mencakup produksi gas dan hidrokarbon cair melalui metode\r\npencairan dan pirolisis batu bara di lokasi penambangan. Golongan ini juga\r\nmencakup pengambilan kondensat gas, pemisahan dan pengaliran fraksi\r\nhidrokarbon cair dan desulfurisasi gas dan kegiatan pencarian dan pengeboran\r\ntenaga panas bumi.'),
('071', '07', 'PERTAMBANGAN PASIR BESI DAN BIJIH BESI ', 'Golongan ini mencakup pertambangan pasir besi dan bijih besi dan\r\npeningkatan mutu dan proses aglomerasi bijih besi.'),
('072', '07', 'PERTAMBANGAN BIJIH LOGAM YANG TIDAK MENGANDUNG BESI,\r\nTIDAK TERMASUK BIJIH LOGAM MULIA', 'Golongan ini mencakup pertambangan dan pengolahan bijih logam yang tidak\r\nmengandung besi, seperti bijih thorium dan uranium, alumunium (bauksit),\r\ntembaga, timah, seng, timah hitam, mangaan, krom, nikel kobalt dan lain-lain.\r\nTidak termasuk bijih logam mulia.'),
('073', '07', 'PERTAMBANGAN BIJIH LOGAM MULIA ', 'Golongan ini mencakup pertambangan bijih logam mulia, seperti emas, platina,\r\nperak dan logam mulia lainnya. Golongan ini juga mencakup proses pemisahan bagian non-logam dari logam mulia.'),
('081', '08', 'PENGGALIAN BATU, PASIR DAN TANAH LIAT ', 'Golongan ini mencakup penggalian pemotongan dan penghalusan batu kasar\r\nseperti jade, rubi, marmer, granit, batu pasir, batu gamping, penambangan gips,\r\nanhidrit, kapur dan dolomit tidak beroksidasi. Golongan ini juga mencakup\r\npengambilan dan pengerukan pasir industri, pemecahan dan penghancuran\r\nbatu dan kerikil, penggalian pasir dan pertambangan tanah liat. Golongan ini\r\ntidak mencakup pemotongan dan penyelesaian batu di luar penggalian.'),
('089', '08', 'PERTAMBANGAN DAN PENGGALIAN LAINNYA YTDL ', 'Golongan ini mencakup pertambangan fosfat alam, garam kalsium, belerang\r\nmurni; pengambilan dan pengolahan pirit dan pyrrhotite, kecuali pembakaran;\r\npertambangan barium karbonat dan barium sulfat alam, borat alam, magnesium\r\nsulfat alam; pengambilan dan aglomerasi tanah gemuk bakar (peat),\r\npertambangan earth colours (semacam pigmen dari mineral), fluorspor (mineral\r\nyang berpendar) dan mineral lain sebagai bahan baku kimia. Golongan ini juga\r\nmencakup penambangan guano (pupuk dari kotoran burung/kelelawar),\r\npengambilan garam dari dalam tanah dan produksi garam dengan proses\r\npenguapan air laut serta penghancuran, pemurnian dan penyulingan garam,\r\ntetapi tidak termasuk pengolahan garam menjadi garam dapur/meja/makan;\r\npenambangan dan penggalian berbagai mineral dan bahan kimia lain termasuk\r\npada golongan ini.'),
('091', '09', 'AKTIVITAS PENUNJANG PERTAMBANGAN MINYAK BUMI DAN GAS\r\nALAM', 'Golongan ini mencakup kegiatan jasa pertambangan atas dasar balas jasa\r\n(fee) atau kontrak pada pengambilan minyak dan gas. Golongan ini mencakup\r\njasa eksplorasi yang berhubungan dengan pengambilan minyak bumi dan gas\r\nalam, pengeboran dan pengeboran ulang secara langsung, pemasangan alat\r\npemboran minyak di lokasi pertambangan, penyemenan, perbaikan dan pembongkaran pinggiran sumur minyak dan gas, pemompaan sumur,\r\npenyumbatan dan penutupan sumur, perubahan menjadi gas kembali dan\r\npencairan gas alam untuk kemudahan pengangkutan yang dilakukan di lokasi\r\npertambangan. Golongan ini juga mencakup jasa pemompaan dan penyaluran\r\npada pengeboran percobaan dan jasa pemadam kebakaran di ladang atau\r\nsumur minyak dan gas bumi.'),
('099', '09', 'AKTIVITAS PENUNJANG PERTAMBANGAN DAN PENGGALIAN LAINNYA ', 'Golongan ini mencakup jasa penunjang atas dasar balas jasa (fee) atau\r\nkontrak, yang dibutuhkan kegiatan pertambangan dan penggalian selain\r\nminyak bumi dan gas alam. Golongan ini juga mencakup jasa eksplorasi, jasa\r\npemompaan dan pengeringan dan pengeboran percobaan dan pengeboran\r\nsumur atau ladang percobaan.'),
('351', '35', 'KETENAGALISTRIKAN', 'Golongan ini mencakup kegiatan pembangkitan, transmisi dan pendistribusian\r\nenergi listrik kepada konsumen akhir. Kegiatan yang tercakup adalah\r\npengoperasian fasilitas pembangkit yang menghasilkan energi listrik,\r\npengoperasian sistem transmisi hingga sistem distribusi ke konsumen akhir,\r\ndan kegiatan penjualan ke konsumen. Golongan ini tidak mencakup produksi\r\nlistrik melalui pembakaran sampah.'),
('352', '35', 'PENGADAAN DAN DISTRIBUSI GAS ALAM DAN BUATAN', 'Golongan ini mencakup pengolahan gas dan pendistribusian gas alam atau gas\r\nbuatan ke konsumen melalui suatu sistem saluran pipa, dan kegiatan penjualan\r\ngas. Golongan ini juga mencakup penyediaan gas melalui berbagai proses,\r\npengangkutan, pendistribusian dan penyediaan semua jenis bahan bakar gas\r\nmelalui pipa saluran, penjualan gas kepada konsumen melalui saluran pipa,\r\ntermasuk kegiatan broker dan agen gas, pertukaran komoditi dan kapasitas\r\npengangkutan bahan bakar gas. '),
('353', '35', 'PENGADAAN UAP/AIR PANAS, UDARA DINGIN DAN PRODUKSI ES ', 'Golongan ini mencakup kegiatan produksi, pengumpulan dan pendistribusian\r\nuap dan air panas untuk pemanas, energi dan tujuan lain, produksi dan\r\ndistribusi udara dingin, air dingin/air es untuk tujuan pendinginan, dan produksi\r\nes, termasuk es untuk kebutuhan makanan/minuman dan tujuan non makanan.'),
('551', '55', 'PENYEDIAAN AKOMODASI JANGKA PENDEK ', 'olongan ini mencakup penyediaan akomodasi, khususnya untuk harian atau\r\nmingguan, pada prinsipnya untuk tinggal dalam jangka pendek sebagai\r\npengunjung. Termasuk penyediaan akomodasi dengan furnitur, lengkap\r\ndengan dapur, dengan atau tanpa jasa pramuwisma dan sering kali termasuk\r\nbeberapa tambahan jasa dan fasilitas seperti fasilitas parkir, binatu, kolam\r\nrenang, ruang olahraga, fasilitas rekreasi dan ruang rapat. Termasuk juga\r\nakomodasi yang disediakan oleh berbagai macam hotel, penginapan, losmen,\r\nhostel, villa dan lain-lain.'),
('559', '55', 'PENYEDIAAN AKOMODASI LAINNYA', 'Golongan pokok ini mencakup penyediaan akomodasi untuk jangka yang lebih\r\nlama atau sementara baik kamar sendiri atau kamar bersama atau asrama\r\nuntuk pelajar, pekerja musiman dan sejenisnya. Termasuk kegiatan penyediaan\r\nakomodasi ini mencakup tempat tinggal pelajar, asrama sekolah, asrama atau\r\npondok pekerja dan rumah kost.'),
('561', '56', 'RESTORAN DAN PENYEDIAAN MAKANAN KELILING', 'Golongan ini mencakup kegiatan yang menyediakan jasa makanan untuk\r\nkonsumen, baik dilayani maupun swalayan atau diantar. Termasuk penyiapan dan penyajian makanan untuk dikonsumsi segera dari restoran, kafetaria,\r\nrestoran cepat saji, penjaja es krim, kendaraan bermotor atau tidak bermotor,\r\nmakan keliling dan penyediaan makanan dalam kedai pasar. Juga termasuk\r\nkegiatan restoran yang terdapat dalam sarana angkutan, bila dilaksanakan oleh\r\nunit ekonomi yang terpisah.'),
('562', '56', 'JASA BOGA UNTUK SUATU EVENT TERTENTU (EVENT CATERING) DAN\r\nPENYEDIAAN MAKANAN LAINNYA', 'Golongan ini mencakup kegiatan katering untuk acara individu atau untuk acara\r\npada periode waktu tertentu dan pelaksanaan jasa katering berdasarkan\r\nperjanjian, seperti pada fasilitas olahraga atau sejenis.'),
('563', '56', 'PENYEDIAAN MINUMAN ', 'Golongan pokok ini mencakup kegiatan menyiapkan dan menyajikan minuman\r\nuntuk dikonsumsi di tempat sesuai pesanan, termasuk bar atau pub, kedai\r\nminuman, kedai koktil, diskotik (yang utamanya layanan minuman), kedai kopi,\r\npenjual minuman keliling dan sejenisnya.'),
('990', '99', 'AKTIVITAS BADAN INTERNASIONAL DAN BADAN EKSTRA\r\nINTERNASIONAL LAINNYA', 'Golongan ini mencakup kegiatan Badan Internasional, seperti Perserikatan\r\nBangsa-Bangsa dan perwakilan Perserikatan Bangsa-Bangsa, Badan Regional\r\ndan lain-lain, termasuk The International MonetaryFund, The World Bank, The\r\nWorld Customs Organization (WHO), the Organization for Economic\r\nCo-operation and Development (OECD), the Organization of Petroleum\r\nExporting Countries (OPEC), the European Communities, the European Free\r\nTrade Association dan lain-lain.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `golonganpokok`
--

CREATE TABLE `golonganpokok` (
  `kode_golonganpokok` varchar(5) NOT NULL,
  `kode_kategori` varchar(5) NOT NULL,
  `judul_golonganpokok` varchar(255) NOT NULL,
  `deskripsi_golonganpokok` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `golonganpokok`
--

INSERT INTO `golonganpokok` (`kode_golonganpokok`, `kode_kategori`, `judul_golonganpokok`, `deskripsi_golonganpokok`) VALUES
('05', 'B', 'PERTAMBANGAN BATU BARA DAN LIGNIT', 'Golongan pokok ini mencakup pertambangan batu bara dan lignit melalui\r\npenambangan bawah tanah atau penambangan terbuka. Kegiatan ini juga\r\nmencakup pekerjaan seperti penggolongan, pembersihan, pemadatan dan\r\nlangkah-langkah lain yang diperlukan dalam pengangkutan untuk dijual'),
('06', 'B', 'PERTAMBANGAN MINYAK BUMI DAN GAS ALAM DAN PANAS BUMI', 'Golongan pokok ini mencakup produksi minyak bumi mentah, pertambangan\r\ndan pengambilan minyak dari serpihan minyak dan pasir minyak dan produksi\r\ngas alam serta pencarian cairan hidrokarbon. Golongan pokok ini juga\r\nmencakup kegiatan operasi dan atau pengembangan lokasi penambangan\r\nminyak dan gas.'),
('07', 'B', 'PERTAMBANGAN BIJIH LOGAM ', 'Golongan pokok ini mencakup pertambangan bijih logam, yang dilakukan\r\nmelalui penambangan bawah tanah, penambangan terbuka (open-cast), dasar\r\nlaut dan lain-lain. Kegiatan ini juga mencakup pengolahan dan peningkatan\r\nmanfaat seperti penghancuran, pengasahan, pencucian, pengeringan, sintering\r\n(pemanasan tanpa pelelehan). '),
('08', 'B', 'PERTAMBANGAN DAN PENGGALIAN LAINNYA ', 'Golongan pokok ini mencakup pengambilan mineral dari tambang dan galian,\r\njuga pengerukan tanah endapan, penghancuran batu dan pengambilan garam.\r\nSebagian besar hasil pertambangan dan penggalian mineral ini digunakan\r\npada bidang konstruksi (pasir, batu dan lain-lain), industri bahan galian (tanah\r\nliat, gips, kapur dan lain-lain), industri bahan-bahan kimia dan lain-lain.'),
('09', 'B', 'AKTIVITAS JASA PENUNJANG PERTAMBANGAN ', 'Golongan pokok ini mencakup jasa penunjang yang dikhususkan untuk\r\npertambangan atas dasar balas jasa (fee) atau kontrak. Golongan pokok ini\r\nmencakup jasa eksplorasi dengan cara pencarian tradisional, seperti\r\npengambilan contoh bijih logam dan melakukan observasi geologi dengan cara\r\npengeboran, pengeboran percobaan atau pengeboran ulang sumur minyak,\r\nmineral logam dan bukan logam.'),
('35', 'D', 'PENGADAAN LISTRIK, GAS, UAP/AIR PANAS DAN UDARA DINGIN ', 'Golongan pokok ini mencakup kegiatan ekonomi/lapangan usaha pengadaan\r\ntenaga listrik, gas alam, uap panas, air panas dan sejenisnya melalui jaringan,\r\nsaluran atau pipa infrastruktur permanen. Dimensi jaringan/infrastruktur tidak\r\ndapat ditentukan dengan pasti, termasuk kegiatan pendistribusian listrik, gas,\r\nuap panas dan air panas serta sejenisnya dalam lokasi pabrik atau bangunan\r\ntempat tinggal.'),
('55', 'I', 'PENYEDIAAN AKOMODASI ', 'Golongan pokok ini mencakup penyediaan akomodasi jangka pendek untuk\r\npengunjung dan pelancong lainnya. Termasuk penyediaan akomodasi yang\r\nlebih lama untuk pelajar, pekerja dan sejenisnya.'),
('56', 'I', 'PENYEDIAAN MAKANAN DAN MINUMAN', 'Golongan pokok ini mencakup kegiatan pelayanan makan minum yang\r\nmenyediakan makanan atau minuman untuk dikonsumsi segera, baik restoran\r\ntradisional, restoran \"self service\" atau restoran \"take away\", baik di tempat\r\ntetap maupun sementara dengan atau tanpa tempat duduk.'),
('99', 'U', 'AKTIVITAS BADAN INTERNASIONAL DAN BADAN EKSTRA\r\nINTERNASIONAL LAINNYA', 'Golongan pokok ini mencakup kegiatan Badan Internasional, seperti\r\nPerserikatan Bangsa-Bangsa dan perwakilan Perserikatan Bangsa-Bangsa,\r\nBadan Regional dan lain-lain, termasuk The International Monetary Fund, The\r\nWorld Bank, The World Customs Organization (WHO), the Organization for\r\nEconomic Co-operation and Development (OECD), the Organization of\r\nPetroleum Exporting Countries (OPEC), the European Communities, the\r\nEuropean Free Trade Association dan lain-lain.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `kode_kategori` varchar(5) NOT NULL,
  `judul_kategori` varchar(255) NOT NULL,
  `deskripsi_kategori` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`kode_kategori`, `judul_kategori`, `deskripsi_kategori`) VALUES
('A', 'PERTANIAN, KEHUTANAN DAN PERIKANAN', 'Kategori ini mencakup semua kegiatan ekonomi/lapangan usaha, yang meliputi pertanian tanaman pangan, perkebunan, hortikultura, peternakan, pemanenan hasil hutan serta penangkapan dan budidaya ikan/biota air. Kategori ini juga mencakup jasa penunjang masing-masing kegiatan ekonomi tersebut.'),
('B', 'PERTAMBANGAN DAN PENGGALIAN', 'Kategori ini mencakup kegiatan ekonomi/lapangan usaha pengambilan mineral\r\ndalam bentuk alami, yaitu padat (batu bara dan bijih logam), cair (minyak bumi)\r\natau gas (gas alam)'),
('C', 'INDUSTRI PENGOLAHAN', 'Kategori ini meliputi kegiatan ekonomi/lapangan usaha di bidang perubahan secara kimia atau fisik dari bahan, unsur atau komponen menjadi produk baru. Bahan baku industri pengolahan berasal dari produk pertanian, kehutanan, perikanan, pertambangan atau penggalian seperti produk dari kegiatan industri pengolahan lainnya. Perubahan, pembaharuan atau rekonstruksi yang pokok dari barang secara umum diperlakukan sebagai industri pengolahan. Unit industri pengolahan digambarkan sebagai pabrik, mesin atau peralatan yang khusus digerakkan dengan mesin dan tangan. Termasuk kategori industri pengolahan di sini adalah unit yang mengubah bahan menjadi produk baru dengan menggunakan tangan, kegiatan maklon atau kegiatan penjualan produk yang dibuat di tempat yang sama di mana produk tersebut dijual dan unit yang melakukan pengolahan bahan-bahan dari pihak lain atas dasar kontrak.\r\n'),
('D', 'PENGADAAN LISTRIK, GAS, UAP/AIR PANAS DAN UDARA DINGIN', 'Kategori ini mencakup kegiatan ekonomi/lapangan usaha pengadaan tenaga\r\nlistrik, gas alam, uap panas, air panas dan sejenisnya melalui jaringan, saluran\r\natau pipa infrastruktur permanen. Dimensi jaringan/infrastruktur tidak dapat\r\nditentukan dengan pasti, termasuk kegiatan pendistribusian listrik, gas, uap\r\npanas dan air panas serta sejenisnya dalam lokasi pabrik atau bangunan\r\ntempat tinggal.'),
('E', 'PENGELOLAAN AIR, PENGELOLAAN AIR LIMBAH, PENGELOLAAN DAN\r\nDAUR ULANG SAMPAH, DAN AKTIVITAS REMEDIASI', 'Kategori ini mencakup kegiatan ekonomi/lapangan usaha yang berhubungan dengan pengelolaan air. Kategori ini juga mencakup pengelolaan  berbagai bentuk limbah/sampah, seperti limbah/sampah padat atau bukan yang berasal dari rumah tangga dan industri, yang dapat mencemari lingkungan.  Hasil dari proses pengolahan limbah/sampah dapat dibuang atau menjadi input dalam proses produksi lainnya.\r\n'),
('F', 'KONSTRUKSI', 'Kategori ini mencakup kegiatan ekonomi/lapangan usaha di bidang konstruksi, yaitu kegiatan konstruksi umum dan konstruksi khusus pekerjaan bangunan gedung dan bangunan sipil. Kegiatan konstruksi mencakup pekerjaan baru, perbaikan, penambahan dan perubahan, pendirian bangunan atau struktur prafabrikasi di lokasi proyek dan juga konstruksi yang bersifat sementara.\r\nKegiatan konstruksi umum berupa konstruksi bangunan tempat tinggal, bangunan kantor, pertokoan, dan bangunan lainnya. Sedangkan konstruksi bangunan sipil seperti jalan kendaraan bermotor, jalan raya, jembatan, terowongan, jalan rel, lapangan udara, pelabuhan dan bangunan air lainnya, sistem irigasi, sistem limbah, fasilitas industri, jaringan pipa dan jaringan listrik, fasilitas olahraga, dan lain-lain.\r\nKegiatan konstruksi khusus, seperti penyiapan lahan, instalasi gedung dan penyelesaian gedung dan lain-lain.\r\nPekerjaan konstruksi dapat dilakukan atas nama sendiri atau atas dasar balas jasa/kontrak. Sebagian pekerjaan dan dimungkinkan keseluruhan pekerjaan konstruksi dapat disubkontrakan. Unit yang melakukan subkontrak kegiatan konstruksi diklasifikasikan di sini.\r\nKategori ini mencakup juga kegiatan perbaikan bangunan gedung dan bangunan sipil.\r\nKategori ini dibedakan menjadi konstruksi lengkap bangunan gedung (Golongan Pokok 41), konstruksi lengkap bangunan sipil (Golongan Pokok 42), dan juga kegiatan konstruksi khusus, jika hanya melakukan sebagian proses konstruksi (Golongan Pokok 43).\r\nPersewaan peralatan konstruksi dengan operatornya diklasifikasikan sebagai kegiatan konstruksi khusus (Golongan pokok 43).\r\nKategori ini juga mencakup pengembangan proyek konstruksi untuk bangunan gedung atau bangunan sipil dengan menggabungkan semua unsur keuangan, teknik dan fisik untuk mewujudkan proyek konstruksi dengan tujuan untuk dijual. Jika proyek konstruksi dari kegiatan tersebut dilakukan tidak untuk dijual, tetapi untuk dioperasikan (yaitu ruangan dalam bangunan tersebut disewakan, kegiatan industri pengolahan dalam pabrik), maka diklasifikasikan sesuai dengan kegiatan operasionalnya, yaitu real estat atau industri pengolahan.\r\n'),
('G', 'PERDAGANGAN BESAR DAN ECERAN; REPARASI DAN PERAWATAN\r\nMOBIL DAN SEPEDA MOTOR', 'Kategori ini meliputi kegiatan ekonomi/lapangan usaha di bidang perdagangan besar dan eceran (yaitu penjualan tanpa perubahan teknis) dari berbagai jenis barang, dan memberikan imbalan jasa yang mengiringi penjualan barang-barang tersebut. Baik penjualan secara grosir (perdagangan besar) maupun eceran merupakan tahap akhir dalam pendistribusian barang dagangan. Kategori ini juga mencakup reparasi mobil dan sepeda motor.    \r\nPenjualan tanpa perubahan teknis juga mengikutkan kegiatan yang terkait dengan perdagangan, seperti penyortiran, pemisahan kualitas dan penyusunan barang, pencampuran, pembotolan, pengepakan, pembongkaran dari ukuran besar dan pengepakan ulang menjadi ukuran yang lebih kecil, penggudangan, baik dengan pendingin maupun tidak, pembersihan dan pengeringan hasil pertanian, pemotongan lembaran kayu atau logam.    \r\nPerdagangan besar adalah penjualan kembali (tanpa perubahan teknis) baik barang baru maupun barang bekas kepada pengecer, industri, komersial, institusi atau pengguna profesional, atau kepada pedagang besar lainnya, atau yang bertindak sebagai agen atau broker dalam pembelian atau penjualan barang, baik perorangan maupun perusahaan. Bentuk utama kegiatan ini mencakup pedagang atau saudagar perdagangan besar, yaitu pedagang perdagangan besar yang mendapatkan hak atas barang-barang yang dijualnya, seperti pedagang grosir, pemborong, distributor, eksportir, importir, asosiasi koperasi, kantor penjualan dan kantor cabang penjualan (tetapi bukan toko pengecer) yang dikelola oleh unit-unit perusahaan industri maupun pertambangan, terpisah dari lokasi industri atau penambangan dengan tujuan untuk memasarkan hasil, dengan demikian tidak hanya menerima pesanan yang harus dipenuhi melalui pengapalan langsung dari lokasi industri maupun penambangan. Termasuk juga broker barang dagangan, pedagang komisi dan agen serta pedagang pengumpul, pembeli dan asosiasi koperasi yang diikutsertakan dalam pemasaran hasil-hasil pertanian. Pedagang besar seringkali secara fisik mengumpulkan, menyortir dan memisahkan kualitas barang dalam ukuran besar, membongkar dari ukuran besar dan mengepak ulang menjadi ukuran yang lebih kecil, misalnya produk farmasi;  menyimpan, mendinginkan, mengantar dan memasang barang-barang, terlibat dalam promosi penjualan untuk pelanggannya dan perancangan label.    \r\nPerdagangan eceran adalah penjualan kembali (tanpa perubahan teknis), baik barang baru maupun bekas, utamanya kepada masyarakat umum untuk konsumsi atau penggunaan perorangan maupun rumah tangga, melalui toko, departement store, kios, mail-order houses, penjual dari pintu ke pintu, pedagang keliling, koperasi konsumsi, rumah pelelangan, dan lain-lain. Pada umumnya pedagang pengecer memperoleh hak atas barang-barang yang dijualnya, tetapi beberapa pedagang pengecer bertindak sebagai agen, dan menjual atas dasar konsinyasi atau komisi.\r\n'),
('H', 'PENGANGKUTAN DAN PERGUDANGAN', 'Kategori ini mencakup penyediaan angkutan penumpang atau barang, baik yang berjadwal maupun tidak, dengan menggunakan jalan rel, saluran pipa, darat, perairan atau udara dan kegiatan yang berhubungan dengan itu seperti fasilitas terminal dan parkir, penanganan kargo/ bongkar muat barang, pergudangan dan lain-lain. Termasuk dalam kategori ini penyewaan alat angkutan dengan pengemudi atau operator, juga kegiatan pos dan kurir.\r\nKategori ini tidak mencakup: - Pemeliharaan dan perbaikan kendaraan bermotor dan alat angkutan lainnya (lihat subgolongan 4520 dan 3315), - Konstruksi, pemeliharaan dan perbaikan jalan, rel, pelabuhan, lapangan udara (lihat subgolongan 4211-4212  dan 4291-4292), - Penyewaan alat angkutan tanpa pengemudi atau operator (lihat subgolongan 7710 dan 7730).\r\n'),
('I', 'PENYEDIAAN AKOMODASI DAN PENYEDIAAN MAKAN MINUM', 'Kategori ini mencakup penyediaan akomodasi penginapan jangka pendek\r\nuntuk pengunjung dan pelancong lainnya serta penyediaan makanan dan\r\nminuman untuk konsumsi segera.'),
('J', 'INFORMASI DAN KOMUNIKASI', 'Kategori ini mencakup produksi dan distribusi informasi dan produk kebudayaan, penyediaan sarana untuk mengirimkan atau mendistribusikan produk-produk tersebut, dan juga data atau kegiatan komunikasi, teknologi informasi dan pengolahan data serta kegiatan jasa informasi lainnya.\r\nKomponen utama dari kategori ini adalah kegiatan penerbitan (golongan pokok 58), termasuk penerbitan perangkat lunak (software), film dan kegiatan perekaman suara (golongan pokok 59), kegiatan pemrograman dan penyiaran radio dan TV  (golongan pokok 60), kegiatan telekomunikasi (golongan pokok 61) dan kegiatan teknologi informasi  (golongan pokok 62) dan kegiatan jasa informasi lainnya (golongan pokok 63).\r\nPenerbitan termasuk perolehan hak cipta untuk isi (produk informasi) dan membuat isi ini tersedia untuk masyarakat umum melalui kegiatan reproduksi dan distribusi isi ini dalam berbagai bentuk. Semua bentuk yang mungkin dari penerbitan (dalam bentuk cetak, elektronik atau audio; pemasangan di internet; sebagai produk multimedia seperti CD-ROM dari buku referensi; dan lain-lain) termasuk dalam kategori ini.\r\nKegiatan yang berkaitan dengan produksi dan distribusi pemrograman TV meliputi golongan pokok  59, 60 dan 61, yang mencerminkan berbagai tahap dalam proses ini. Komponen individu, seperti film, film berseri di televisi, dan lain-lain diproduksi oleh kegiatan di golongan pokok 59, sementara penciptaan program saluran televisi lengkap, dari komponen yang diproduksi di golongan pokok 59 atau komponen lainnya (seperti pemrograman berita secara langsung/live) termasuk dalam golongan pokok 60 . Golongan pokok 60 juga mencakup penyiaran program ini oleh produser. Pendistribusian program televisi lengkap oleh pihak ketiga (tanpa perubahan isi) termasuk dalam golongan pokok 61. Pendistribusian dalam golongan pokok 61 ini dapat dilakukan melalui penyiaran, sistem satelit atau  kabel.\r\n'),
('K', 'AKTIVITAS KEUANGAN DAN ASURANSI', 'Kategori ini mencakup aktivitas keuangan, termasuk asuransi, reasuransi dan kegiatan dana pensiun dan jasa penunjang keuangan. \r\nKategori ini juga mencakup kegiatan dari pemegang aset, seperti kegiatan perusahaan holding dan kegiatan dari lembaga penjaminan atau pendanaan dan  lembaga keuangan sejenis.\r\n'),
('L', 'REAL ESTAT', 'Kategori ini mencakup kegiatan orang yang menyewakan, agen dan atau broker/perantara dalam penjualan atau pembelian real estat, penyewaan real estat dan penyediaan jasa real estat lainnya, seperti jasa penaksir real estat atau bertindak sebagai agen pemegang wasiat real estat. Kegiatan dalam kategori ini bisa dilakukan atas milik sendiri atau milik orang lain yang disewa dan bisa dilakukan atas dasar balas jasa atau kontrak. Termasuk kegiatan pembangunan gedung, yang disatukan dengan pemeliharaan atau penyewaan bangunan tersebut. Kategori ini mencakup pengelola bangunan real estat. Real estat adalah properti berupa tanah dan bangunan.'),
('M', 'AKTIVITAS PROFESIONAL, ILMIAH DAN TEKNIS', 'Kategori ini mencakup khususnya kegiatan profesional, ilmu pengetahuan dan teknik, kegiatan ini membutuhkan suatu tingkat pelatihan yang tinggi dan menghasilkan ilmu pengetahuan dan ketrampilan khusus yang tersedia untuk pengguna.\r\n'),
('N', 'AKTIVITAS PENYEWAAN DAN SEWA GUNA USAHA TANPA HAK OPSI,\r\nKETENAGAKERJAAN, AGEN PERJALANAN DAN PENUNJANG USAHA\r\nLAINNYA', 'Kategori ini mencakup berbagai macam kegiatan yang mendukung operasional usaha atau bisnis secara umum. Kegiatan ini berbeda dari kegiatan yang termasuk dalam kategori M, karena tujuan utamanya bukanlah transfer ilmu pengetahuan khusus.\r\n'),
('O', 'ADMINISTRASI PEMERINTAHAN, PERTAHANAN DAN JAMINAN SOSIAL\r\nWAJIB', 'Kategori ini mencakup kegiatan yang sifatnya pemerintahan, yang umumnya dilakukan oleh administrasi pemerintahan.  Kategori ini juga mencakup perundang-undangan dan penerjemahan hukum yang berkaitan dengan pengadilan dan menurut peraturannya, seperti halnya administrasi program berdasarkan peraturan perundangan-undangan, kegiatan legislatif, perpajakan, pertahanan negara, keamanan dan keselatan negara, pelayanan imigrasi, hubungan luar negeri dan administrasi program pemerintah.  Kategori ini juga mencakup kegiatan jaminan sosial wajib.  Status hukum atau institusi bukanlah, (termasuk didalamnya) faktor penentu bagi suatu kegiatan termasuk kategori ini dari pada kegiatan yang sudah disebutkan sebelumnya.  Hal ini dimaksudkan bahwa kegiatan yang diklasifikasikan di tempat lain dalam KBLI tidak termasuk pada kategori ini, meskipun juga dilakukan oleh Badan pemerintahan.  Sebagai contoh, administrasi sistem sekolah (peraturan, pemeriksaan, dan kurikulum) termasuk pada kategori ini, tetapi pengajaran itu sendiri tidak (kategori P), dan rumah sakit penjara atau militer diklasifikasikan pada kategori kesehatan (Q). Demikian pula, beberapa kegiatan yang disebutkan pada kategori ini mungkin saja dilakukan oleh selain badan pemerintah.\r\n'),
('P', 'PENDIDIKAN', 'Kategori ini mencakup kegiatan pendidikan pada berbagai tingkatan dan untuk berbagai pekerjaan, baik secara lisan atau tertulis seperti halnya dengan berbagai cara komunikasi.  Kategori ini juga mencakup pendidikan yang diselenggarakan oleh institusi yang berbeda dalam sistem sekolah umum pada tingkat yang berbeda-beda seperti halnya pendidikan untuk usia dewasa, program literasi dan lain-lain. Juga mencakup akademi dan sekolah militer, sekolah penjara dan lain-lain sesuai dengan tingkatan masing-masing.     Untuk setiap tingkat pendidikan pertama,  kelompok ini mencakup pendidikan khusus termasuk siswa cacat baik mental atau fisik.     Kategori ini mencakup pendidikan negeri dan swasta juga mencakup pengajaran yang terutama mengenai kegiatan olahraga dan hiburan dan kegiatan penunjang pendidikan.  Pendidikan dapat disediakan dalam ruangan, melalui penyiaran radio dan televisi, internet dan surat menyurat.\r\n'),
('Q', 'AKTIVITAS KESEHATAN MANUSIA DAN AKTIVITAS SOSIAL', 'Kategori ini mencakup kegiatan penyediaan jasa kesehatan dan aktivitas sosial. Kegiatan yang termasuk cukup  luas cakupannya, dimulai dari pelayanan kesehatan yang diberikan oleh tenaga profesional terlatih di rumah sakit dan fasilitas kesehatan lain, sampai kegiatan perawatan di rumah yang melibatkan tingkatan kegiatan pelayanan kesehatan sampai kegiatan sosial yang tidak melibatkan tenaga kesehatan profesional.\r\n'),
('R', 'KESENIAN, HIBURAN DAN REKREASI', 'Kategori ini mencakup kegiatan yang cukup luas untuk memenuhi kebutuhan kesenian/kebudayaan, hiburan dan rekreasi masyarakat umum, termasuk pertunjukan langsung, pengoperasian tempat bersejarah, tempat perjudian, olahraga dan rekreasi.'),
('S', 'AKTIVITAS JASA LAINNYA', 'Kategori ini (sebagai kategori sisaan) mencakup kegiatan dari keanggotaan organisasi, reparasi komputer dan barang-barang rumah tangga dan barang pribadi, berbagai kegiatan jasa perorangan yang tidak dicakup di tempat lain dalam klasifikasi ini.\r\n'),
('T', 'AKTIVITAS RUMAH TANGGA SEBAGAI PEMBERI KERJA; AKTIVITAS YANG MENGHASILKAN BARANG DAN JASA OLEH RUMAH TANGGA YANG DIGUNAKAN UNTUK MEMENUHI KEBUTUHAN SENDIRI', 'Kategori  ini mencakup kegiatan rumah tangga sebagai pemberi kerja dan kegiatan yang menghasilkan barang dan jasa oleh rumah tangga yang digunakan untuk memenuhi kebutuhan sendiri.'),
('U', 'AKTIVITAS BADAN INTERNASIONAL DAN BADAN EKSTRA\r\nINTERNASIONAL LAINNYA', 'Kategori ini mencakup kegiatan Badan Internasional, seperti Perserikatan\r\nBangsa-Bangsa dan perwakilan Perserikatan Bangsa-Bangsa, Badan Regional\r\ndan lain-lain, termasuk The International Monetary Fund, The World Bank, The\r\nWorld Customs Organization (WHO), the Organization for Economic\r\nCo-operation and Development (OECD), the Organization of Petroleum\r\nExporting Countries (OPEC), the European Communities, the European Free\r\nTrade Association dan lain-lain. ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelompok`
--

CREATE TABLE `kelompok` (
  `kode_kelompok` varchar(5) NOT NULL,
  `kode_subgolongan` varchar(5) NOT NULL,
  `judul_kelompok` varchar(255) NOT NULL,
  `deskripsi_kelompok` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kelompok`
--

INSERT INTO `kelompok` (`kode_kelompok`, `kode_subgolongan`, `judul_kelompok`, `deskripsi_kelompok`) VALUES
('05101', '0510', 'PERTAMBANGAN BATU BARA', 'Kelompok ini mencakup usaha operasi penambangan, pengeboran berbagai\r\nkualitas batu bara seperti antrasit, bituminous dan subbitominous baik\r\npertambangan di permukaan tanah atau bawah tanah, termasuk pertambangan\r\ndengan cara pencairan (liquefaction). Operasi pertambangan tersebut meliputi\r\npenggalian, penghancuran, pencucian, penyaringan dan pencampuran serta\r\npemadatan meningkatkan kualitas atau memudahkan pengangkutan dan\r\npenyimpanan/penampungan. Termasuk pencarian batu bara dari kumpulan\r\ntepung bara (culm bank).'),
('05102', '0510', 'GASIFIKASI BATU BARA DI LOKASI PENAMBANGAN ', 'Kelompok ini mencakup usaha memproduksi gas dari batu bara di lokasi\r\npenambangan (on site gasification of coal).'),
('05200', '0520', 'PERTAMBANGAN LIGNIT', 'Kelompok ini mencakup usaha operasi penambangan, pengeboran berbagai\r\nkualitas lignit, seperti pertambangan lignit di permukaan tanah atau bawah\r\ntanah, termasuk pertambangan dengan cara pencairan (liquefaction). Operasi\r\npertambangan tersebut meliputi penggalian, penghancuran, pencucian,\r\npenyaringan dan pencampuran serta pemadatan lignit untuk meningkatkan\r\nkualitas dan memudahkan pengangkutan dan penyimpanan/penampungan.'),
('06100', '0610', 'PERTAMBANGAN MINYAK BUMI', 'Kelompok ini mencakup usaha atau kegiatan pertambangan minyak bumi\r\nmentah termasuk usaha pencarian kandungan minyak bumi, pengeboran,penambangan, pemisahan serta penampungan, produksi minyak bumi mentah\r\nkondensat, pemrosesan untuk menghasilkan minyak mentah dengan cara\r\npenampungan, penyaringan, pengeringan, stabilisasi dan lain-lain. Hasil\r\npertambangan minyak bumi antara lain minyak mentah atau crude oil dan\r\nkondensat. Kelompok ini juga mencakup usaha operasi penambangan pasir\r\nbituminous atau oil shale (serpihan minyak) dan pasir aspal. Kegiatan\r\npertambangan tersebut meliputi penggalian, pengeboran, penghancuran,\r\npencucian, penyaringan dan pencampuran serta penampungan. Termasuk\r\nkegiatan produksi minyak bumi mentah dari serpihan minyak dan pasir\r\nbituminous jika terkait dengan pertambangannya. Pengolahan lanjut dari hasil\r\nminyak bumi dimasukkan dalam kelompok 19211'),
('06201', '0620', 'PERTAMBANGAN GAS ALAM', 'Kelompok ini mencakup usaha pencarian kandungan gas alam, pengeboran,\r\npenambangan, pemisahan serta penampungan. Hasil pertambangan gas alam\r\nantara lain gas alam. Pencairan gas alam menjadi LNG sampai\r\nkepengapalannya masih termasuk kegiatan pertambangan. Termasuk kegiatan CBM (Coalbed Methane).'),
('06202', '0620', 'PENGUSAHAAN TENAGA PANAS BUMI ', 'Kelompok ini mencakup usaha pencarian dan pengeboran tenaga panas bumi.\r\nTermasuk kegiatan lain yang berhubungan dengan pengusahaan tenaga panas\r\nbumi sampai ke tempat pemanfaatannya. Kegiatan pengubahan tenaga panas\r\nbumi menjadi tenaga listrik termasuk golongan pokok 35.'),
('07101', '0710', 'PERTAMBANGAN PASIR BESI ', 'Kelompok ini mencakup usaha penambangan pasir besi. Termasuk kegiatan\r\npemurnian, sortasi, pemisahan dan pembersihan yang tidak dapat dipisahkan\r\nsecara administratif dari usaha pertambangan pasir besi tersebut.'),
('07102', '0710', 'PERTAMBANGAN BIJIH BESI ', 'Kelompok ini mencakup usaha penambangan bijih besi termasuk kegiatan\r\npeningkatan mutu dan aglomerasi bijih besi dan pengolahan lebih lanjut bijih\r\nbesi menjadi bijih logam.'),
('07210', '0721', 'PERTAMBANGAN BIJIH URANIUM DAN THORIUM ', 'Kelompok ini mencakup usaha penambangan bijih uranium dan thorium.\r\nTermasuk kegiatan pemurnian konsentrat uranium dan thorium dan produksi\r\nyellow cake.'),
('07291', '0729', 'PERTAMBANGAN BIJIH TIMAH', 'Kelompok ini mencakup usaha penambangan dan pengolahan bijih timah.\r\nKegiatan pembuatan dan pemurnian yang tidak dapat dipisahkan secara\r\nadministratif dari usaha pertambangan bijih timah, dimasukkan dalam kelompok ini'),
('07292', '0729', 'PERTAMBANGAN BIJIH TIMAH HITAM', 'Kelompok ini mencakup usaha penambangan dan pengolahan bijih timah\r\nhitam. Kegiatan pembersihan, pemisahan dan pemurnian yang tidak dapat\r\ndipisahkan secara administratif dari usaha pertambangan bijih timah hitam,\r\ndimasukkan dalam kelompok ini.'),
('07293', '0729', 'PERTAMBANGAN BIJIH BAUKSIT/ALUMINIUM', 'Kelompok ini mencakup usaha penambangan, penampungan dan pengolahan\r\nbijih bauksit. Kegiatan pemurnian yang tidak dapat dipisahkan secara\r\nadministratif dari usaha pertambangan bijih bauksit, dimasukkan dalam\r\nkelompok ini'),
('07294', '0729', 'PERTAMBANGAN BIJIH TEMBAGA', 'Kelompok ini mencakup usaha penambangan dan pengolahan bijih tembaga,\r\nyang terdiri dari kalkosit serta batuan berupa campuran monticellit dan\r\nskarnyakut. Kegiatan pemurnian yang tidak dapat dipisahkan secara\r\nadministratif dari usaha pertambangan bijih tembaga, dimasukkan dalam\r\nkelompok ini.'),
('07295', '0729', 'PERTAMBANGAN BIJIH NIKEL', 'Kelompok ini mencakup usaha penambangan dan pengolahan bijih nikel.\r\nTermasuk juga usaha pemanfaatannya yang tidak dapat dipisahkan secara\r\nadministratif dari usaha pertambangan bijih nikel, dimasukkan dalam kelompok\r\nini.'),
('07296', '0729', 'PERTAMBANGAN BIJIH MANGAN ', 'Kelompok ini mencakup usaha penambangan, pengolahan dan pemurnian bijih\r\nmangan. Termasuk juga usaha pemanfaatannya yang tidak dapat dipisahkan\r\ndari usaha pertambangan bijih mangan, dimasukkan dalam kelompok ini'),
('07299', '0729', 'PERTAMBANGAN BAHAN GALIAN LAINNYA YANG TIDAK MENGANDUNG\r\nBIJIH BESI', 'Kelompok ini mencakup usaha penambangan dan pengolahan bahan galian\r\nlainnya yang tidak mengandung bijih besi yang belum termasuk kelompok\r\n07291 s.d. 07296, seperti bijih seng platinum dan silicon. Kegiatan\r\npembersihan dan pemurnian yang tidak dapat dipisahkan secara administratif\r\ndari usaha pertambangan bijih logam lainnya, dimasukkan dalam kelompok ini.'),
('07301', '0730', 'PERTAMBANGAN EMAS DAN PERAK ', 'Kelompok ini mencakup usaha penambangan dan pengolahan bijih emas dan\r\nperak. Kegiatan pembersihan, pemisahan dan pemurnian yang tidak dapat\r\ndipisahkan secara administratif dari usaha pertambangan bijih emas dan perak,\r\ndimasukkan dalam kelompok ini.'),
('07309', '0730', 'PERTAMBANGAN BIJIH LOGAM MULIA LAINNYA ', 'Kelompok ini mencakup usaha penambangan dan pengolahan bijih logam\r\nmulia lainnya, selain bijih logam emas dan perak, seperti bijih platina. Kegiatan\r\npembersihan dan pemurnian yang tidak dapat dipisahkan secara administratif\r\ndari usaha pertambangan bijih logam lainnya, dimasukkan dalam kelompok ini.'),
('08101', '0810', 'PENGGALIAN BATU HIAS DAN BATU BANGUNAN ', 'Kelompok ini mencakup usaha penggalian batu hias dan batu bangunan,\r\nseperti batu pualam atau marmer, batu split (batu gajah, base course, batu\r\npecah), paras, obsidian, andesit dan granit. Kegiatan pemecahan,\r\npembersihan, pengangkutan dan penjualan, yang tidak dapat dipisahkan\r\nsecara administratif dari usaha penggalian batu hias dan bangunan,\r\ndimasukkan dalam kelompok ini.'),
('08102', '0810', 'PENGGALIAN BATU KAPUR/GAMPING ', 'Kelompok ini mencakup usaha penggalian batu batu kapur atau gamping.\r\nKegiatan pemecahan, penghancuran, penyaringan dan penghalusan, termasuk\r\npengangkutan dan penjualan yang tidak dapat dipisahkan secara administratif\r\ndari usaha penggalian batu kapur/gamping, dimasukkan dalam kelompok ini.'),
('08103', '0810', 'PENGGALIAN KERIKIL (SIRTU) ', 'Kelompok ini mencakup usaha penggalian, pembersihan dan pemisahan kerikil.\r\nHasil dari penggalian kerikil antara lain batu pasir, bongkah keras dan pasir\r\nkerikil.'),
('08104', '0810', 'PENGGALIAN PASIR ', 'Kelompok ini mencakup usaha penggalian, pembersihan dan pemisahan pasir.\r\nHasil dari penggalian pasir berupa pasir beton, pasir pasang (sedikit\r\nmengandung tanah), pasir uruk (banyak mengandung tanah) dan lainnya.'),
('08105', '0810', 'PENGGALIAN TANAH DAN TANAH LIAT ', 'Kelompok ini mencakup usaha penggalian tanah dan tanah liat. Kegiatan pembentukan, penghancuran dan penggilingan yang tidak dapat dipisahkan\r\nsecara administratif dari usaha penggalian tanah dan tanah liat dimasukkan\r\ndalam kelompok ini. Hasil dari penggalian tanah dan tanah liat/lempung antara\r\nlain kaolin (china clay), ball clay (firing clay), abu bumi, serpih dan tanah urug.'),
('08106', '0810', 'PENGGALIAN GIPS ', 'Kelompok ini mencakup usaha penggalian gips. Kegiatan pembersihan,\r\npemurnian dan penghalusan gips yang tidak dapat dipisahkan secara\r\nadministratif dari usaha penggalian gips dimasukkan dalam kelompok ini.'),
('08107', '0810', 'PENGGALIAN TRAS', 'Kelompok ini mencakup usaha penggalian tras (batuan gunung api yang\r\nmengalami perubahan kimia karena pelapukan dan kondisi air bawah tanah).'),
('08108', '0810', 'PENGGALIAN BATU APUNG', 'Kelompok ini mencakup usaha penggalian batu apung (jenis batuan yang\r\nberwarna terang, mengandung buih yang terbuat dari gelembung berdinding\r\ngelas, dan biasanya disebut juga sebagai batuan gelas vulkanik silikat).'),
('08109', '0810', 'PENGGALIAN BATU, PASIR DAN TANAH LIAT LAINNYA ', 'Kelompok ini mencakup usaha penggalian batu, pasir dan tanah liat lainnya,\r\nyang tidak terklasifikasikan di kelompok 08101 - 08108. Kegiatan penggalian\r\nyang masuk dalam kelompok ini seperti penggalian batu tulis/sabak, diorit,\r\nbasalt, breksi, dan lainnya.'),
('08911', '0891', 'PERTAMBANGAN BELERANG', 'Kelompok ini mencakup usaha penambangan bijih belerang. Termasuk juga\r\nkegiatan penghancuran, pembersihan dan pengolahan terhadap mineral\r\nbelerang yang tidak dapat dipisahkan secara administratif dari usaha\r\npertambangan belerang tersebut. Pengolahan lanjutan dari mineral belerang\r\nyang tidak ada hubungannya dengan kegiatan atau usaha penambangan\r\ndimasukkan dalam kelompok 20114.'),
('08912', '0891', 'PERTAMBANGAN FOSFAT ', 'Kelompok ini mencakup usaha penambangan bahan galian fosfat. Kegiatan\r\npemurnian, sortasi, penghancuran, pembersihan dan peningkatan kadar bahan\r\ngalian fosfat yang tidak dapat dipisahkan secara administratif dari usaha\r\npertambangan fosfat dimasukkan dalam kelompok ini.'),
('08913', '0891', 'PERTAMBANGAN NITRAT', 'Kelompok ini mencakup usaha penambangan bahan galian nitrat. Kegiatan\r\npembersihan, pemurnian, pemecahan, sortasi dan pengolahan dengan cara\r\nlain terhadap bahan galian nitrat yang tidak dapat dipisahkan secara\r\nadministratif dari usaha pertambangan nitrat dimasukkan dalam kelompok ini.'),
('08914', '0891', 'PERTAMBANGAN YODIUM ', 'Kelompok ini mencakup usaha penambangan ekstraksi air tanah yang\r\nmengandung yodium. Kegiatan distilasi dan pemurnian dari ekstraksi mineral\r\ntersebut yang tidak dapat dipisahkan secara administratif dari usaha\r\npertambangan yodium dimasukkan dalam kelompok ini.'),
('08915', '0891', 'PERTAMBANGAN POTASH (KALIUM KARBONAT) ', 'Kelompok ini mencakup usaha penambangan potash dalam bentuk garam,\r\nfeldpar dan leusit analeum. Kegiatan penghancuran dan pembersihan terhadap\r\nmineral tersebut yang tidak dapat dipisahkan secara administratif dari usaha\r\npertambangan potash dimasukkan dalam kelompok ini.'),
('08919', '0891', 'PERTAMBANGAN MINERAL, BAHAN KIMIA DAN BAHAN PUPUK LAINNYA', 'Kelompok ini mencakup usaha penambangan mineral bahan kimia dan bahan\r\npupuk lainnya yang belum tercakup dalam kelompok 08911 s.d. 08915.\r\nMisalnya penambangan barium sulfat alam dan karbonat (barite dan witherit),\r\nborat alam, magnesium sulfat alam (kiserit), penambangan earth coulor, flour,\r\nbentonite, dolomit, magnesit, phiroplit, tawas, diatomea, dan mineral lain yang\r\nutamanya sebagai bahan kimia dan penambangan guano (bahan pupuk dari\r\nkotoran burung atau kelelawar. Kegiatan pembersihan, pemurnian, pemisahan\r\ndan sortasi yang tidak dapat dipisahkan secara administratif dari usaha\r\npertambangan mineral bahan kimia dan bahan pupuk lainnya dimasukkan\r\ndalam kelompok ini.'),
('08920', '0892', 'EKSTRAKSI TANAH GEMUK (PEAT) ', 'Kelompok ini mencakup usaha operasi ekstraksi dan penggalian tanah gemuk,\r\naglomerasi tanah gemuk dan pengolahan tanah gemuk (peat) untuk\r\nmeningkatkan kualitas atau memudahkan pengangkutan atau penyimpanan.\r\nOperasi ekstraksi tersebut meliputi penggalian, penghancuran, pencucian,\r\npenyaringan, dan pencampuran serta penampungan.'),
('08930', '0893', 'EKSTRAKSI GARAM', 'Kelompok ini mencakup usaha ekstraksi garam yaitu pengambilan garam dari\r\nbawah tanah termasuk dengan pelarutan dan pemompaan, serta produksi\r\ngaram dengan penguapan air laut atau air garam lainnya di\r\ntambak/empang/media lainnya, dan penghancuran, pemurnian dan penyulingan\r\ngaram oleh petani garam. termasuk juga kegiatan pengumpulan, pembersihan,\r\npenggilingan, penghancuran, dan pengolahan terhadap mineral garam yang\r\ntidak dapat dipisahkan secara administratif dari usaha ekstraksi tersebut.'),
('08991', '0899', 'PERTAMBANGAN BATU MULIA ', 'Kelompok ini mencakup usaha penambangan dan penggalian batu mulia/batu\r\npermata, seperti intan. Termasuk kegiatan pemurnian, pemisahan/sortasi,\r\npembersihan dan pengolahan dengan cara lain terhadap batu mulia/batu\r\npermata yang tidak dapat dipisahkan secara administratif dari usaha\r\npertambangan dan penggalian lainnya tersebut.'),
('08992', '0899', 'PENGGALIAN FELDSPAR DAN KALSIT', 'Kelompok ini mencakup usaha penggalian feldspar dan kalsit. Kegiatan\r\npemecahan, penghancuran, penyaringan dan penghalusan, termasuk\r\npengangkutan dan penjualan yang tidak dapat dipisahkan secara administratif\r\ndari usaha penggalian feldspar dan kalsit/batu bintang, dimasukkan dalam\r\nkelompok ini.'),
('08993', '0899', 'PERTAMBANGAN ASPAL ALAM ', 'Kelompok ini mencakup usaha penambangan aspal alam, batu beraspal dan\r\nbitumen padat alam. Kegiatan pemurnian, pemisahan dan penuangan terhadap\r\nmineral tersebut yang tidak dapat dipisahkan secara administratif dari usaha\r\npertambangan aspal alam dimasukkan dalam kelompok ini.'),
('08994', '0899', 'PENGGALIAN ASBES ', 'Kelompok ini mencakup usaha penggalian asbes dalam bentuk serabut\r\nmaupun tidak. Kegiatan pembersihan dan pemisahan yang tidak dapat\r\ndipisahkan secara administratif dari usaha penggalian asbes dimasukkan\r\ndalam kelompok ini.'),
('08995', '0899', 'PENGGALIAN KUARSA/PASIR KUARSA ', 'Kelompok ini mencakup usaha penggalian kuarsa/pasir kuarsa/pasir silika.\r\nKegiatan pemecahan, penghancuran, penyaringan dan penghalusan, termasuk\r\npengangkutan dan penjualan yang tidak dapat dipisahkan secara administratif\r\ndari usaha penggalian kuarsa/pasir kuarsa/pasir silika, dimasukkan dalam\r\nkelompok ini.'),
('08999', '0899', 'PERTAMBANGAN DAN PENGGALIAN LAINNYA YTDL', 'Kelompok ini mencakup usaha penambangan dan penggalian bahan galian\r\nlainnya yang belum termasuk dalam golongan manapun. Termasuk kegiatan\r\npemurnian, pemisahan/sortasi, pembersihan dan pengolahan dengan cara lain\r\nterhadap bahan tambang/galian yang tidak dapat dipisahkan secara\r\nadministratif dari usaha pertambangan dan penggalian lainnya tersebut.\r\nPertambangan dan penggalian ini antara lain mika, leusit, yarosit, zeolit, batu\r\npenggosok, grafit alam, steatite (talc), tepung fosil siliceous, oker, toseki dan\r\nlainnya.'),
('09100', '0910', 'AKTIVITAS PENUNJANG PERTAMBANGAN MINYAK BUMI DAN GAS\r\nALAM', 'Kelompok ini mencakup kegiatan jasa yang berkaitan dengan pertambangan\r\nminyak dan gas bumi yang dilakukan atas dasar balas jasa (fee) atau kontrak,\r\nseperti jasa eksplorasi pengambilan minyak atau gas dengan cara tradisional yaitu membuat observasi geologi, pemasangan alat pengeboran, perbaikan dan\r\npembongkaran penyemenan sumur minyak dan sumur gas, pembuatan\r\nsaluran sumur, pemompaan sumur produksi, penyumbatan dan penutupan\r\nsumur produksi, pengujian produksi, dismantling, pencairan dan regasifikasi\r\ngas alam untuk kebutuhan transportasi di lokasi pertambangan, pengeboran\r\npercobaan dalam rangka penyulingan minyak bumi dan gas alam dan jasa\r\npemadam kebakaran ladang minyak bumi dan gas alam.'),
('09900', '0990', 'AKTIVITAS PENUNJANG PERTAMBANGAN DAN PENGGALIAN LAINNYA ', 'Kelompok ini mencakup jasa penunjang atas dasar balas jasa atau kontrak,\r\nyang dibutuhkan dalam kegiatan pertambangan golongan pokok 05, 07, dan\r\n08, seperti jasa eksplorasi misalnya dengan cara tradisional seperti mengambil\r\ncontoh bijih dan membuat observasi geologi, jasa pemompaan dan penyaluran\r\nhasil tambang dan jasa percobaan penggalian dan pengeboran ladang atau\r\nsumur tambang.'),
('35101', '3510', 'PEMBANGKITAN TENAGA LISTRIK', 'Kelompok ini mencakup usaha pembangkitan tenaga listrik dan pengoperasian\r\nfasilitas pembangkit yang menghasilkan energi listrik, yang berasal dari\r\nberbagai sumber energi, seperti tenaga air (hidroelektrik), batu bara, gas (turbin\r\ngas), bahan bakar minyak, diesel dan energi yang dapat diperbarui, tenaga\r\nsurya, angin, arus laut, panas bumi (energi termal), tenaga nuklir dan lain-lain.'),
('35102', '3510', 'TRANSMISI TENAGA LISTRIK', 'Kelompok ini mencakup usaha pengoperasian sistim transmisi atau usaha\r\npenyaluran tenaga listrik dari pembangkit ke jaringan distribusi melalui jaringan\r\ntenaga listrik yang bertegangan tinggi (antara 35 kilovolt s.d 245 kilovolt) dan\r\natau bertegangan ekstra tinggi (lebih besar dari 245 kilovolt) termasuk\r\ngardu-gardu induknya, baik berasal dari produksi sendiri maupun dari produksi\r\npihak lain.'),
('35103', '3510', 'TRANSMISI TENAGA LISTRIK', 'Kelompok ini mencakup usaha pengoperasian sistim distribusi atau usaha\r\npenyaluran tenaga listrik melalui jaringan tenaga listrik yang bertegangan\r\nmenengah ke bawah (di bawah 35 kilovolt) sampai ke konsumen atau\r\npelanggan termasuk dengan gardu-gardu distribusinya baik berasal dari\r\nproduksi sendiri maupun dari produksi pihak lain.'),
('35104', '3510', 'TRANSMISI TENAGA LISTRIK', 'Kelompok ini mencakup usaha/kegiatan yang secara langsung berhubungan\r\ndengan usaha ketenagalistrikan, seperti jasa pencatatan meteran dan\r\npemberian tagihan. Termasuk kegiatan perdagangan listrik ke konsumen,\r\nkegiatan agen tenaga listrik yang melakukan penjualan listrik melalui sistem\r\ndistribusi tenaga listrik yang dioperasikan oleh pihak lain, kegiatan\r\npengoperasian pertukaran kapasitas transmisi dan daya tenaga listrik, serta\r\nkegiatan perdagangan pulsa/token listrik dan kegiatan penunjang kelistrikan\r\nlainnya.'),
('35201', '3520', 'PENGADAAN GAS ALAM DAN BUATAN ', 'Kelompok ini mencakup usaha pengolahan bahan bakar gas yang dapat\r\ndimanfaatkan secara langsung sebagai bahan bakar di mana pembuatannya\r\ndisertai usaha peningkatan mutu gas, seperti pemurnian, pencampuran dan\r\nproses lainnya yang dihasilkan dari gas alam (termasuk LPG), karbonasi dan\r\ngasifikasi batu bara, atau bahan hidrokarbon lain.'),
('35202', '3520', 'DISTRIBUSI GAS ALAM DAN BUATAN', 'Kelompok ini mencakup usaha penyaluran gas melalui jaringan yang\r\nbertekanan ekstra tinggi (lebih dari 10 bar); yang bertekanan tinggi (antara 4\r\nbar s.d. 10 bar); dan yang bertekanan menengah ke bawah (di bawah 4 bar)\r\nbaik berasal dari produksi sendiri maupun produksi pihak lain sampai ke\r\nkonsumen atau pelanggan. Penyaluran gas melalui pipa atas dasar balas jasa\r\natau fee, dimasukkan dalam kelompok 49300. Termasuk penyaluran, distribusi\r\ndan pengadaan semua jenis bahan bakar gas melalui sistim saluran,\r\nperdagangan gas kepada konsumen melalui saluran, kegiatan agen gas yang\r\nmelakukan perdagangan gas melalui sistim distribusi gas yang dioperasikan\r\noleh pihak lain dan pengoperasian pertukaran komoditas dan kapasitas\r\npengangkutan bahan bakar gas.'),
('35203', '3520', 'PENGADAAN GAS BIO', 'Kelompok ini mencakup usaha pengolahan bahan bakar gas yang dapat\r\ndimanfaatkan secara langsung sebagai bahan bakar yang dihasilkan dari\r\nproduk sampingan pertanian, perkebunan, peternakan, atau sampah/limbah\r\ndimana pembuatannya disertai usaha peningkatan mutu gas, seperti\r\npemurnian, pencampuran dan proses lainnya.'),
('35301', '3530', 'PENGADAAN UAP/AIR PANAS DAN UDARA DINGIN ', 'Kelompok ini mencakup kegiatan memproduksi dan mendistribusikan uap dan\r\nair panas untuk pemanasan, pembangkit tenaga dan penggunaan lainnya.\r\nKegiatannya seperti produksi, pengumpulan dan distribusi uap dan air panas\r\nuntuk pemanas, energi dan kegunaan lain dan kegiatan produksi dan distribusi\r\nudara dingin.'),
('35302', '3530', 'PRODUKSI ES', 'Kelompok ini mencakup kegiatan produksi dan distribusi air dingin/air es untuk\r\nkebutuhan pendinginan, dan produksi es, termasuk es untuk kebutuhan\r\nmakanan atau minuman dan kegunaan lain (misal pendinginan).'),
('55111', '5511', 'HOTEL BINTANG LIMA', 'Kelompok ini mencakup usaha penyediaan jasa pelayanan penginapan, makan minum serta jasa lainnya bagi umum dengan menggunakan sebagian atau\r\nseluruh bangunan. Usaha ini dikelola secara komersial serta memenuhi\r\nketentuan persyaratan sebagai hotel bintang lima (termasuk lima berlian) yang\r\nditetapkan dalam surat keputusan instansi yang membinanya.'),
('55112', '5511', 'HOTEL BINTANG EMPAT ', 'Kelompok ini mencakup usaha penyediaan jasa pelayanan penginapan, makan\r\nminum serta jasa lainnya bagi umum dengan menggunakan sebagian atau\r\nseluruh bangunan. Usaha ini dikelola secara komersial serta memenuhi\r\nketentuan persyaratan sebagai hotel bintang empat yang ditetapkan dalam\r\nsurat keputusan instansi yang membinanya'),
('55113', '5511', 'HOTEL BINTANG TIGA', 'Kelompok ini mencakup usaha penyediaan jasa pelayanan penginapan, makan\r\nminum serta jasa lainnya bagi umum dengan menggunakan sebagian atau\r\nseluruh bangunan. Usaha ini dikelola secara komersial serta memenuhi\r\nketentuan persyaratan sebagai hotel bintang tiga yang ditetapkan dalam surat\r\nkeputusan instansi yang membinanya.'),
('55114', '5511', 'HOTEL BINTANG DUA', 'Kelompok ini mencakup usaha penyediaan jasa pelayanan penginapan, makan\r\nminum serta jasa lainnya bagi umum dengan menggunakan sebagian atau\r\nseluruh bangunan. Usaha ini dikelola secara komersial serta memenuhi\r\nketentuan persyaratan sebagai hotel bintang dua yang ditetapkan dalam surat\r\nkeputusan instansi yang membinanya.'),
('55115', '5511', 'HOTEL BINTANG SATU', 'Kelompok ini mencakup usaha penyediaan jasa pelayanan penginapan, makan\r\nminum serta jasa lainnya bagi umum dengan menggunakan sebagian atau\r\nseluruh bangunan. Usaha ini dikelola secara komersial serta memenuhi\r\nketentuan persyaratan sebagai hotel bintang satu yang ditetapkan dalam surat\r\nkeputusan instansi yang membinanya.'),
('55120', '5512', 'HOTEL MELATI ', 'Kelompok ini mencakup usaha penyediaan jasa layanan penginapan bagi\r\numum yang dikelola secara komersial dengan menggunakan sebagian atau\r\nseluruh bagian bangunan yang telah memenuhi ketentuan sebagai hotel melati yang ditetapkan dalam surat keputusan instansi yang membinanya.'),
('55130', '5513', 'PONDOK WISATA', 'Kelompok ini mencakup usaha penyediaan jasa pelayanan penginapan bagi\r\numum dengan pembayaran harian yang dilakukan perseorangan dengan\r\nmenggunakan bangunan rumah tinggal yang dihuni oleh pemiliknya dan\r\ndimanfaatkan sebagian untuk disewakan dengan memberikan kesempatan\r\nkepada wisatawan untuk berinteraksi dalam kehidupan sehari-hari pemiliknya.'),
('55191', '5519', 'PENGINAPAN REMAJA (YOUTH HOSTEL) ', 'Kelompok ini mencakup usaha penyediaan jasa penginapan yang biasanya\r\ndigunakan bagi remaja sebagai akomodasi dalam rangka kegiatan pariwisata\r\ndengan tujuan untuk rekreasi, memperluas pengetahuan/pengalaman dan\r\nperjalanan.'),
('55192', '5519', 'BUMI PERKEMAHAN', 'Kelompok ini mencakup usaha penyediaan tempat penginapan di alam terbuka\r\ndengan menggunakan tenda. Misalnya Bumi Perkemahan Cibubur.'),
('55193', '5519', 'PERSINGGAHAN KARAVAN ', 'Kelompok ini mencakup usaha penyediaan tempat penginapan di alam terbuka\r\ndengan menggunakan caravan, termasuk pula caravan (kereta gandengan)\r\nyang dibawa sendiri. Misalnya Persinggahan Karavan Taman Safari'),
('55194', '5519', 'VILA', 'Kelompok ini mencakup usaha penyediaan jasa pelayanan penginapan bagi\r\numum yang merupakan rumah-rumah pribadi yang khusus disewakan kepada\r\nwisatawan berikut fasilitasnya dan dikelola sendiri oleh pemiliknya.'),
('55195', '5519', 'APARTEMEN HOTEL ', 'Kelompok ini mencakup usaha penyediaan jasa pelayanan penginapan bagi\r\numum yang mengelola dan menfungsikan apartemen sebagai hotel untuk\r\ntempat tinggal sementara, dengan perhitungan pembayaran sesuai ketentuan. Misalnya apartemen hotel/kondominium hotel (apartel/kondotel).'),
('55199', '5519', 'PENYEDIAAN AKOMODASI JANGKA PENDEK LAINNYA ', 'Kelompok ini mencakup usaha penyediaan jasa pelayanan penginapan yang\r\nbelum termasuk dalam subgolongan 5511 sampai dengan 5513, seperti usaha\r\npenyediaan akomodasi jangka pendek lainnya seperti bungalo, cottage dan\r\nlain-lain. Termasuk motel dan pondok tamu (guesthouse).'),
('55900', '5590', 'PENYEDIAAN AKOMODASI LAINNYA ', 'Kelompok ini mencakup usaha penyediaan jasa pelayanan penginapan dalam\r\nperiode waktu yang tidak singkat. Termasuk usaha penyediaan akomodasi\r\nuntuk jangka yang lebih lama atau sementara baik kamar sendiri atau kamar\r\nbersama atau asrama untuk pelajar, pekerja musiman dan sejenisnya. Misalnya\r\nkegiatan penyediaan akomodasi ini mencakup tempat tinggal pelajar, asrama\r\nsekolah, asrama atau pondok pekerja dan rumah kost, baik dengan makan\r\n(indekos) maupun tidak dengan makan.'),
('56101', '5610', 'RESTORAN', 'Kelompok ini mencakup jenis usaha jasa pangan yang bertempat di sebagian\r\natau seluruh bangunan permanen yang menjual dan menyajikan makanan dan\r\nminuman untuk umum di tempat usahanya, baik dilengkapi dengan\r\nperalatan/perlengkapan untuk proses pembuatan dan penyimpanan maupun\r\ntidak dan telah mendapatkan surat keputusan sebagai restoran/rumah makan\r\ndari instansi yang membinanya.'),
('56102', '5610', 'WARUNG MAKAN', 'Kelompok ini mencakup jenis usaha jasa pangan yang bertempat di sebagian\r\natau seluruh bangunan tetap (tidak berpindah-pindah), yang menyajikan dan\r\nmenjual makanan dan minuman di tempat usahanya baik dilengkapi maupun\r\ntidak dengan peralatan dan perlengkapan untuk proses pembuatan maupun\r\npenyimpanan dan belum mendapatkan ijin dan surat keputusan dari instansi\r\nyang membinanya.'),
('56103', '5610', 'KEDAI MAKANAN', 'Kelompok ini mencakup usaha jasa pangan yang menjual dan menyajikan\r\nmakanan siap dikonsumsi yang melalui proses pembuatan di tempat tetap yang\r\ndapat dipindah-pindahkan atau dibongkar pasang, biasanya dengan\r\nmenggunakan tenda, seperti kedai seafood, pecel ayam dan lain-lain.'),
('56104', '5610', 'PENYEDIAAN MAKANAN KELILING/TEMPAT TIDAK TETA', 'Kelompok ini mencakup usaha jasa pangan yang menjual dan menyajikan\r\nmakanan siap dikonsumsi yang didahului dengan proses pembuatan dan\r\nbiasanya dijual dengan cara berkeliling, seperti tukang bakso keliling, tukang\r\ngorengan keliling, tukang otak-otak keliling, tukang empek-empek keliling dan\r\nlain-lain.'),
('56109', '5610', 'RESTORAN DAN PENYEDIAAN MAKANAN KELILING LAINNYA ', 'Kelompok ini mencakup kegiatan yang menyediakan jasa pangan lainnya yang\r\nbelum termasuk dalam kelompok 56101-56104, seperti kegiatan penyediaan\r\njasa makanan siap saji di pasar atau supermarket, kegiatan bar dan restoran\r\nyang berhubungan dengan angkutan, apabila dikelola secara terpisah dan\r\nkegiatan jasa pangan lainnya.'),
('56210', '5621', 'JASA BOGA UNTUK SUATU EVENT TERTENTU (EVENT CATERING) ', 'Kelompok ini mencakup penyediaan jasa makanan atas dasar kontrak\r\nperjanjian dengan pelanggan, lokasi ditentukan oleh pelanggan untuk suatu\r\neven tertentu. Kelompok ini mencakup usaha jasa makanan jadi (siap\r\ndikonsumsi) yang terselenggara melalui pesanan-pesanan untuk kantor,\r\nperayaan, pesta, seminar, rapat dan sejenisnya. Biasanya makanan jadi yang\r\ndipesan diantar ke tempat kerja, pesta, seminar, rapat dan sejenisnya berikut\r\npramusaji yang akan melayani tamu-tamu/peserta seminar atau rapat pada\r\nsaat pesta/seminar berlangsung.'),
('56290', '5629', 'PENYEDIAAN MAKANAN LAINNYA ', 'Kelompok ini mencakup jasa katering yaitu jasa penyediaan makanan atas\r\ndasar kontrak perjanjian dengan pelanggan, untuk periode waktu tertentu.\r\nKegiatannya mencakup kontraktor jasa makanan (misalnya untuk perusahaan transportasi), jasa katering berdasarkan perjanjian di fasilitas olahraga dan\r\nfasilitas sejenis, kantin atau kafetaria (misalnya untuk pabrik, perkantoran,\r\nrumah sakit atau sekolah) atas dasar konsesi, jasa katering yang melayani\r\nrumah tangga. Termasuk dalam kelompok ini jasa katering yang melayani\r\ntempat pengeboran minyak dan lokasi penggergajian kayu. Misalnya\r\nAerowisata.'),
('56301', '5630', 'BAR', 'Kelompok ini mencakup usaha yang kegiatannya menghidangkan minuman\r\nberalkohol dan nonalkohol serta makanan kecil untuk umum di tempat\r\nusahanya dan telah mendapatkan ijin dari instansi yang membinanya.'),
('56302', '5630', 'KELAB MALAM ATAU DISKOTIK YANG UTAMANYA MENYEDIAKAN\r\nMINUMAN', 'Kelompok ini mencakup suatu usaha penyediaan jasa pelayanan minum\r\nsebagai kegiatan utama di mana menyediakan juga tempat dan fasilitas untuk\r\nmenari dengan diiringi musik hidup, atraksi pertunjukkan lampu sebagai\r\nlayanan tambahan serta pramuria.'),
('56303', '5630', 'RUMAH MINUM/KAFE ', 'Kelompok ini mencakup jenis usaha jasa pangan yang bertempat di sebagian\r\natau seluruh bangunan permanen yang menjual dan menyajikan utamanya\r\nminuman untuk umum di tempat usahanya, baik dilengkapi dengan\r\nperalatan/perlengkapan untuk proses pembuatan dan penyimpanan maupun\r\ntidak dan baik telah mendapatkan surat keputusan sebagai rumah minum dari\r\ninstansi yang membinanya maupun belum.'),
('56304', '5630', 'KEDAI MINUMAN ', 'Kelompok ini mencakup usaha penyediaan jasa pelayanan minum yang\r\nutamanya menyajikan minuman siap dikonsumsi yang melalui proses\r\npembuatan di tempat tetap yang dapat dipindah- pindahkan atau dibongkar\r\npasang, biasanya dengan menggunakan tenda, seperti kedai kopi, kedai jus\r\ndan minuman lainnya.'),
('56305', '5630', 'RUMAH/KEDAI OBAT TRADISIONAL', 'Kelompok ini mencakup jenis usaha yang bertempat di sebagian atau seluruh\r\nbangunan permanen yang menjual dan menyajikan minuman jamu atau obat\r\ntradisional untuk umum di tempat usahanya, baik dilengkapi dengan\r\nperalatan/perlengkapan untuk proses pembuatan dan penyimpanan maupun\r\ntidak dan baik telah mendapatkan surat keputusan sebagai rumah jamu dari\r\ninstansi yang membinanya maupun belum. Kelompok ini juga mencakup usaha\r\npenyediaan jasa pelayanan minum yang menyajikan minuman jamu siap\r\ndikonsumsi yang melalui proses pembuatan di tempat tetap yang dapat\r\ndipindah- pindahkan atau dibongkar pasang, biasanya dengan menggunakan\r\ntenda, seperti kedai jamu.'),
('56306', '5630', 'PENYEDIAAN MINUMAN KELILING/TEMPAT TIDAK TETAP', 'Kelompok ini mencakup usaha penyediaan jasa pelayanan minum yang\r\nmenyajikan minuman siap dikonsumsi yang didahului dengan proses\r\npembuatan dan biasanya dijual dengan cara berkeliling, seperti penyedia\r\nminuman es doger, penyedia minuman es cincau, usaha jamu gendong dan\r\nlain-lain.'),
('99000', '9900', 'AKTIVITAS BADAN INTERNASIONAL DAN BADAN EKSTRA\r\nINTERNASIONAL LAINNYA', 'Kelompok ini mencakup kegiatan lembaga/badan/instansi dari perwakilan\r\nnegara asing, badan internasional dan regional lainnya, badan keuangan dan\r\nmoneter internasional, bank dunia, organisasi bea cukai dunia, organisasi untuk\r\nkerjasama dan pengembangan ekonomi, organisasi negara-negara pengekspor\r\nminyak, perhimpunan negara-negara Eropa, perhimpunanperdagangan bebas\r\nnegara-negara Eropa dan lain-lain, seperti perwakilan PBB dan suborganisasi,\r\nUNICEF, UNESCO, UNDP, WHO, ILO, ASEAN, IMF, OECD dan OPEC dan\r\nlain-lain serta kedutaan besar, dan konsulat yang ditentukan oleh negara\r\ndimana berada daripada negara yang diwakilinya.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `saran`
--

CREATE TABLE `saran` (
  `kode_saran` int(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `subjek` varchar(20) NOT NULL,
  `pesan` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `saran`
--

INSERT INTO `saran` (`kode_saran`, `nama`, `email`, `subjek`, `pesan`) VALUES
(1, 'faisal', 'mfaisaln26@gmail.com', 'coba', 'coba'),
(2, 'Ihsan', 'ihsanuddienullah@gma', 'Tes', 'Iya'),
(3, 'Ihsan', 'ihsanuddienullah@gma', 'Tes', 'Iya'),
(4, 'Ihsan', 'ihsanuddienullah@gma', 'Tes', 'Iya'),
(5, 'Ihsan', 'ihsanuddienullah@gma', 'Tes', 'Iya'),
(6, 'Ihsan', 'ihsanuddienullah@gma', 'Tes', 'Iya'),
(7, 'Ihsan', 'ihsanuddienullah@gma', 'Tes', 'Iya'),
(8, 'Ihsan', 'ihsanuddienullah@gma', 'Tes', 'Iya'),
(9, 'Ihsan', 'ihsanuddienullah@gma', 'Tes', 'Iya'),
(10, 'Ihsan', 'ihsanuddienullah@gma', 'Tes', 'Iya'),
(11, 'Ihsan', 'ihsanuddienullah@gma', 'Tes', 'Iya'),
(12, 'Ihsan', 'ihsanuddienullah@gma', 'Tes', 'Iya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `subgolongan`
--

CREATE TABLE `subgolongan` (
  `kode_subgolongan` varchar(5) NOT NULL,
  `kode_golongan` varchar(5) NOT NULL,
  `judul_subgolongan` varchar(255) NOT NULL,
  `deskripsi_subgolongan` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `subgolongan`
--

INSERT INTO `subgolongan` (`kode_subgolongan`, `kode_golongan`, `judul_subgolongan`, `deskripsi_subgolongan`) VALUES
('0510', '051', 'PERTAMBANGAN BATU BARA ', 'Subgolongan ini mencakup :\r\n- Pertambangan batu bara, seperti pertambangan di permukaan tanah atau\r\nbawah tanah, termasuk pertambangan dengan cara pencairan (liquefaction)\r\n- Pembersihan, perekatan, penghancuran, dan pemadatan batu bara muda\r\nuntuk penggolongan, meningkatkan kualitas atau memudahkan pengangkutan\r\ndan penyimpanan\r\n- Pencarian batu bara dari kumpulan tepung bara (culm bank)\r\nSubgolongan ini tidak mencakup :\r\n- Pertambangan lignit, lihat 0520\r\n- Penggalian dan aglomerasi tanah gemuk (peat), lihat 0892\r\n- Pengeboran percobaan batu bara, lihat 0990\r\n- Jasa penunjang pertambangan batu bara, lihat 0990\r\n- Tungku batu arang untuk memproduksi bahan bakar padat, lihat 1910\r\n- Industri pengolahan bahan bakar briket batu bara, lihat 1929\r\n- Pekerjaan untuk mengembangkan atau menyiapkan properti untuk\r\npertambangan batu bara, lihat 4312'),
('0520', '052', 'PERTAMBANGAN LIGNIT', 'Subgolongan ini mencakup :\r\n- Pertambangan lignit, seperti pertambangan lignit di permukaan tanah atau\r\nbawah tanah, termasuk pertambangan dengan cara pencairan (liquefaction)\r\n- Pembersihan, perekatan, penghancuran dan pemadatan lignit untuk\r\nmeningkatkan kualitas dan memudahkan pengangkutan dan penyimpanan\r\nSubgolongan ini tidak mencakup :\r\n- Pertambangan batu bara, lihat 0510\r\n- Penggalian peat, lihat 0892\r\n- Pengeboran percobaan batu bara, lihat 0990\r\n- Jasa penunjang pertambangan lignit, lihat 0990\r\n- Industri pengolahan bahan bakar briket lignit, lihat 1929\r\n- Pekerjaan untuk mengembangkan atau menyiapkan properti untuk\r\npertambangan batu bara, lihat 4312'),
('0610', '061', 'PERTAMBANGAN MINYAK BUMI ', 'Subgolongan ini mencakup :\r\n- Pertambangan minyak bumi mentah\r\n- Pertambangan bituminous atau oil shale (serpihan minyak) dan pasir aspal\r\n- Produksi minyak bumi mentah dari serpihan dan pasir bituminous\r\n- Produksi kondensat (minyak bumi dengan kadar karbon tinggi)\r\n- Pemrosesan untuk menghasilkan minyak mentah, seperti penampungan,\r\npenyaringan, pengeringan, stabilisasi dan lain-lain\r\nSubgolongan ini tidak mencakup :\r\n- Jasa penunjang pertambangan minyak dan gas, lihat 0910\r\n- Jasa eksplorasi minyak dan gas, lihat 0910\r\n- Industri pengolahan penyulingan minyak bumi, lihat 1921\r\n- Produksi LPG dari hasil penyulingan minyak bumi, lihat 1921\r\n- Pengoperasian pipa saluran, lihat 4930'),
('0620', '062', 'PERTAMBANGAN GAS ALAM DAN PENGUSAHAAN TENAGA PANAS BUMI ', 'Subgolongan ini mencakup :\r\n- Produksi gas hidrokarbon mentah (gas alam)\r\n- Pertambangan kondensat gas (embun gas)\r\n- Pengeringan dan pemisahan bagian-bagian (fraksi) hidrokarbon cair\r\n- Desulfurisasi gas\r\n- Pertambangan hidrokarbon cair yang dihasilkan melalui pencairan\r\n(liquefaction) atau pirolisis\r\n- Kegiatan pencarian dan pengeboran tenaga panas bumi\r\nSubgolongan ini tidak mencakup :\r\n- Jasa penunjang pertambangan minyak dan gas, lihat 0910\r\n- Jasa eksplorasi minyak dan gas, lihat 0910\r\n- Produksi LPG dari hasil penyulingan kembali minyak bumi, lihat 1921\r\n- Industri gas industri, lihat 2011\r\n- Pengoperasian pipa saluran, lihat 4930'),
('0710', '071', 'PERTAMBANGAN PASIR BESI DAN BIJIH BESI ', 'Subgolongan ini mencakup :\r\n- Pertambangan pasir besi\r\n- Pertambangan bijih besi\r\n- Peningkatan mutu dan aglomerasi bijih besi\r\nSubgolongan ini tidak mencakup :\r\n- Pertambangan dan pengolahan pyrites dan pyrrihotite (kecuali\r\npemanggangan/roasting), lihat 0891'),
('0721', '072', 'PERTAMBANGAN BIJIH URANIUM DAN THORIUM ', 'Subgolongan ini mencakup :\r\n- Pertambangan bijih yang mengandung konsentrat uranium dan thorium,\r\nbijih uranium (pitchblende)\r\n- Pemurnian uranium dan thorium\r\n- Produksi yellow cake\r\nSubgolongan ini tidak mencakup :\r\n- Peningkatan kadar atau mutu bijih uranium dan thorium, lihat 2011\r\n- Produksi logam uranium dari bijih uranium dan torium lainnya, lihat 2420\r\n- Pengolahan lebih lanjut uranium, seperti peleburan atau penyulingan, lihat\r\n2420'),
('0729', '072', 'PERTAMBANGAN BIJIH LOGAM LAINNYA YANG TIDAK MENGANDUNG\r\nBESI, TIDAK TERMASUK BIJIH LOGAM MULIA', 'Subgolongan ini mencakup :\r\n- Pertambangan dan penyiapan bijih logam yang utamanya tidak\r\nmengandung logam besi, seperti alumunium (bauksit), tembaga, timah putih,\r\ntimah hitam, seng, mangan, krom, nikel, kobal, molybdenum, tantalum,\r\nvanadium dan lain-lain\r\nSubgolongan ini tidak mencakup :\r\n- Pertambangan dan penyiapan bijih uranium dan thorium, lihat 0721\r\n- Produksi alumunium oksida dan bahan nikel atau tembaga, lihat 2420'),
('0730', '073', 'PERTAMBANGAN BIJIH LOGAM MULIA', 'Subgolongan ini mencakup pertambangan bijih logam mulia seperti emas,\r\nplatina, perak dan logam mulia lainnya. Subgolongan ini juga mencakup proses\r\npemisahan bagian non-logam dari logam mulia.'),
('0810', '081', 'PENGGALIAN BATU, PASIR DAN TANAH LIAT ', 'Subgolongan ini mencakup :\r\n- Penggalian dan pemotongan batu hias dan batu bangunan seperti batu\r\npualam, granit, batu pasir atau paras dan lain-lain\r\n- Penggalian, pembersihan dan pemisahan batu kapur\r\n- Penambangan gips dan anhidrit\r\n- Penambangan kapur dan uncalcined dolomit\r\n- Pengambilan dan pengerukan pasir industri, pasir untuk konstruksi dan\r\nkerikil\r\n- Pemecahan dan pemisahan batu dan kerikil\r\n- Penggalian pasir\r\n- Penambangan tanah liat, refraktori tanah liat dan kaolin\r\nSubgolongan ini tidak mencakup :\r\n- Penambangan pasir bituminous, lihat 0610\r\n- Penambangan mineral bahan kimia dan bahan pupuk, lihat 0891\r\n- Produksi calcined dolomit, lihat 2394\r\n- Pemotongan, pembentukan dan penyelesaian batu di luar penggalian, lihat\r\n2396'),
('0891', '089', 'PERTAMBANGAN MINERAL, BAHAN KIMIA DAN BAHAN PUPUK ', 'Subgolongan ini mencakup :\r\n- Penambangan fosfat alam dan garam potasium alam\r\n- Penambangan sulfur alam\r\n- Pengambilan dan pengolahan pyrit dan pyrhotite, kecuali pemanggangan\r\n(roasting)\r\n- Penambangan barium sulfat alam dan karbonat (barite dan witherit), borat\r\nalam, magnesium sulfat alam (kiserit)\r\n- Penambangan earth coulor, flour dan mineral lain yang utamanya sebagai\r\nbahan kimia\r\n- Penambangan guano (bahan pupuk dari kotoran burung atau kelelawar)\r\nSubgolongan ini tidak mencakup :\r\n- Pengambilan garam, lihat 0893\r\n- Pemanggangan bijih besi, lihat 2011\r\n- Industri pupuk buatan (fertilizer sintetis) dan komponen/senyawa nitrogen,\r\nlihat 2012'),
('0892', '089', 'EKSTRAKSI TANAH GEMUK (PEAT) ', 'Subgolongan ini mencakup :\r\n- Penggalian tanah gemuk (peat)\r\n- Aglomerasi tanah gemuk (peat)\r\n- Pengolahan tanah gemuk (peat) untuk meningkatkan kualitas atau\r\nmemudahkan pengangkutan atau penyimpanan\r\nSubgolongan ini tidak mencakup :\r\n- Jasa penunjang penggalian tanah gemuk (peat), lihat 0990\r\n- Industri barang dari tanah gemuk (peat), lihat 2399'),
('0893', '089', 'EKSTRAKSI GARAM', 'Subgolongan ini mencakup :\r\n- Pengambilan garam dari bawah tanah termasuk dengan pelarutan dan\r\npemompaan\r\n- Produksi garam dengan penguapan air laut atau air garam lainnya\r\n- Penghancuran, pemurnian dan penyulingan garam oleh petani garam\r\nSubgolongan ini tidak mencakup :\r\n- Pengolahan garam menjadi garam dapur, seperti garam beryodium, lihat\r\n1077\r\n- Produksi air minum dengan penguapan air garam, lihat 3600'),
('0899', '089', 'PERTAMBANGAN DAN PENGGALIAN LAINNYA YTDL ', 'Subgolongan ini mencakup :\r\n- Pertambangan dan penggalian bermacam-macam material dan mineral,\r\nseperti batu penggosok, asbes, grafit alam, steatite (talc), feldspar, tepung fosil\r\nsiliceous; aspal alam, batu beraspal dan bitumen padat alam; dan batu\r\npermata, kuarsa, mika dan lain-lain'),
('0910', '091', 'AKTIVITAS PENUNJANG PERTAMBANGAN MINYAK BUMI DAN GAS\r\nALAM', 'Subgolongan ini mencakup kegiatan jasa pengambilan minyak dan gas atas\r\ndasar balas jasa atau kontrak.\r\nSubgolongan ini mencakup :\r\n- Jasa eksplorasi dalam hubungannya dengan pengambilan minyak atau gas\r\ndengan cara tradisional, contohnya membuat observasi geologi pada tambang\r\nberprospek\r\n- Pengeboran dan pengeboran ulang; pemasangan alat pengeboran di lokasi\r\npertambangan; perbaikan dan pembongkaran penyemenan sumur minyak dan\r\nsumur gas; pembuatan saluran sumur; penyumbatan dan penutupan sumur\r\n- Pencairan dan regasifikasi gas alami untuk kebutuhan transportasi,\r\ndikerjakan di lokasi pertambangan\r\n- Jasa pemompaan dan penyaluran tambang atas dasar balas jasa atau\r\nkontrak\r\n- Pengeboran percobaan dalam hubungannya dengan penyulingan minyak\r\nbumi dan gas\r\n- Jasa pemadam kebakaran ladang minyak dan gas\r\nSubgolongan ini tidak mencakup :\r\n- Jasa operator pada ladang minyak bumi dan gas, lihat 0610, 0620\r\n- Jasa perbaikan khusus mesin pertambangan, lihat 3312\r\n- Pencairan dan regasifikasi gas alam untuk kebutuhan transportasi,\r\ndikerjakan di luar lokasi pertambangan, lihat 5221\r\n- Survei geofisika, geologi dan seismic, lihat 7110'),
('0990', '099', 'AKTIVITAS PENUNJANG PERTAMBANGAN DAN PENGGALIAN LAINNYA ', 'Subgolongan ini mencakup jasa penunjang atas dasar balas jasa atau kontrak,\r\nyang dibutuhkan dalam kegiatan pertambangan golongan pokok 05, 07, dan\r\n08.\r\nSubgolongan ini mencakup :\r\n- Jasa eksplorasi, misalnya dengan cara tradisional seperti mengambil\r\ncontoh bijih dan membuat observasi geologi pada tambang berprospek\r\n- Jasa pemompaan dan pengeringan hasil tambang\r\n- Percobaan penggalian dan pengeboran sumur atau ladang tambang\r\nSubgolongan ini tidak mencakup :\r\n- Pengoperasian tambang atau penggalian atas dasar balas jasa atau\r\nkontrak, lihat golongan pokok 05,07, dan 08\r\n- Jasa reparasi khusus mesin pertambangan, lihat 3312\r\n- Jasa survei geofisika atas dasar balas jasa atau kontrak, lihat 7110'),
('3510', '351', 'KETENAGALISTRIKAN', 'Subgolongan ini mencakup kegiatan pembangkitan, transmisi tenaga listrik dari\r\nfasilitas pembangkit ke pusat distribusi dan distribusi energi listrik kekonsumen.\r\nSubgolongan ini mencakup :\r\n- Pengoperasian fasilitas pembangkit yang menghasilkan energi listrik, yang\r\nberasal dari sumber energi, seperti energi termal, nuklir, hidroelektrik, turbin\r\ngas, diesel dan energi yang dapat diperbarui\r\n- Pengoperasian sistim transmisi yang menghantarkan listrik dari fasilitas\r\npembangkit ke sistim distribusi\r\n- Pengoperasian sistim distribusi (yaitu, terdiri dari jalur/saluran, kutub,\r\npengukur dan kabel) yang menghantarkan tenaga listrik yang diterima dari\r\nfasilitas pembangkit atau sistim transmisi ke konsumen\r\n- Perdagangan listrik ke konsumen\r\n- Kegiatan agen tenaga listrik yang melakukan penjualan listrik melalui sistim\r\ndistribusi tenaga listrik yang dioperasikan oleh pihak lain\r\n- Pengoperasian pertukaran kapasitas transmisi dan daya tenaga listrik\r\nSubgolongan ini tidak mencakup :\r\n- Produksi atau pembangkitan listrik melalui pembakaran sampah, lihat 3821'),
('3520', '352', 'PENGADAAN DAN DISTRIBUSI GAS ALAM DAN BUATAN ', 'Subgolongan ini mencakup pengolahan gas dan distribusi gas alam atau\r\nbuatan atau sintetis kepada konsumen melalui sistim saluran, pemasar atau\r\nagen gas, yang melakukan penjualan gas alam melalui sistem distribusi yang\r\ndioperasikan pihak lain. Tidak termasuk pengoperasian terpisah saluran pipa\r\ngas, khususnya dilakukan pada jarak yang jauh, menghubungkan produsen\r\ndengan distributor gas atau antara pusat-pusat kota, yang diklasifikasikan\r\ndalam kegiatan pengangkutan atau transportasi pipa saluran lainnya.\r\nSubgolongan ini mencakup :\r\n- Produksi gas untuk tujuan penyediaan atau suplai gas dengan karbonasi\r\nbatubara, dari produk sampingan pertanian atau sampah\r\n- Industri bahan bakar gas dengan nilai kalor tertentu, melalui pemurnian,\r\npencampuran dan proses lainnya dari berbagai macam gas termasuk gas alam\r\n- Transportasi, distribusi, dan suplai semua jenis bahan bakar gas melalui\r\nsistem saluran\r\n- Perdagangan gas kepada konsumen melalui saluran\r\n- Kegiatan agen gas yang mengurus perdagangan gas melalui sistim\r\ndistribusi gas yang dioperasikan oleh pihak lain\r\n- Pengoperasian pertukaran komoditas dan kapasitas pengangkutan bahan\r\nbakar gas\r\nSubgolongan ini tidak mencakup :\r\n- Pengoperasian oven batubara, lihat 1910\r\n- Industri penyulingan minyak bumi, lihat 1921\r\n- Industri gas industri, lihat 2011\r\n- Perdagangan besar bahan bakar gas, lihat 4661\r\n- Perdagangan eceran gas dalam kemasan (botol atau tabung), lihat 4773\r\n- Perdagangan bahan bakar secara langsung, lihat 4799\r\n- Transportasi (jarak jauh) gas atau penyaluran gas melalui pipa saluran, lihat\r\n4930'),
('3530', '353', 'PENGADAAN UAP/AIR PANAS, UDARA DINGIN DAN PRODUKSI ES ', 'Subgolongan ini mencakup :\r\n- Produksi, pengumpulan dan distribusi uap dan air panas untuk pemanas,\r\nenergi dan kegunaan lain\r\n- Produksi dan distribusi udara dingin\r\n- Produksi dan distribusi air dingin/air es untuk kebutuhan pendinginan\r\n- Produksi es, termasuk es untuk kebutuhan makanan atau minuman dan\r\nkegunaan lain (misal pendinginan)'),
('5511', '551', 'HOTEL BINTANG', 'Subgolongan ini mencakup usaha penyediaan akomodasi yang memenuhi\r\nketentuan sebagai hotel bintang yang ditetapkan dalam surat keputusan\r\ninstansi yang membinanya.\r\nSubgolongan ini mencakup :\r\n- Hotel Bintang Lima\r\n- Hotel Bintang Empat\r\n- Hotel Bintang Tiga\r\n- Hotel Bintang Dua\r\n- Hotel Bintang Satu'),
('5512', '551', 'HOTEL MELATI ', 'Subgolongan ini mencakup usaha penyediaan akomodasi yang memenuhi\r\nketentuan sebagai hotel melati yang ditetapkan dalam surat keputusan instansi\r\nyang membinanya.'),
('5513', '551', 'PONDOK WISATA', 'Subgolongan ini mencakup usaha penyediaan akomodasi pondok wisata (home\r\nstay).'),
('5519', '551', 'PENYEDIAAN AKOMODASI JANGKA PENDEK LAINNYA ', 'Subgolongan ini mencakup usaha penyediaan akomodasi jangka pendek\r\nlainnya seperti penginapan remaja (Youth Hostel), vila, bungalo, cottage, bumi\r\nperkemahan, taman atau persinggahan karavan atau trailer dan lain-lain.\r\nTermasuk motel dan pondok tamu (guesthouse).'),
('5590', '559', 'PENYEDIAAN AKOMODASI LAINNYA ', 'Subgolongan ini mencakup penyediaan akomodasi untuk jangka yang lebih\r\nlama atau sementara baik kamar sendiri atau kamar bersama atau asrama\r\nuntuk pelajar, pekerja musiman dan sejenisnya. Termasuk kegiatan penyediaan\r\nakomodasi ini mencakup tempat tinggal pelajar, asrama sekolah, asrama atau\r\npondok pekerja dan rumah kost.'),
('5610', '561', 'RESTORAN DAN PENYEDIAAN MAKANAN KELILING ', 'Subgolongan ini mencakup kegiatan yang menyediakan jasa makanan kepada\r\npembeli, baik apakah pembeli disediakan makanan saat mereka duduk atau\r\npembeli mengambil sendiri dari tempat makanan yang telah tersedia, baik\r\napakah pembeli makan makanan yang telah disediakan di tempat tersebut,\r\nmembawa makanan pulang atau menerima makanan tersebut yang diantar ke\r\nrumah pembeli. Ini termasuk menyiapkan dan menghidangkan makanan untuk\r\nsegera dikonsumsi (siap saji) baik dijual dalam kendaraan bermotor maupun\r\ntidak atau gerobak dorong.'),
('5621', '562', 'JASA BOGA UNTUK SUATU EVENT TERTENTU (EVENT CATERING) ', 'Subgolongan ini mencakup penyediaan jasa makanan atas dasar kontrak\r\nperjanjian dengan pelanggan, lokasi ditentukan oleh pelanggan untuk suatu\r\neven tertentu.\r\nSubgolongan ini mencakup :\r\n- Katering untuk event atau kegiatan tertentu Subgolongan ini tidak mencakup :\r\n- Industri dari jenis makanan yang tidak tahan lama untuk dijual kembali, lihat\r\n1079\r\n- Perdagangan eceran jenis makanan yang tidak tahan lama, lihat golongan\r\npokok 47'),
('5629', '562', 'PENYEDIAAN MAKANAN LAINNYA', 'Subgolongan ini mencakup jasa katering yaitu jasa penyediaan makanan atas\r\ndasar kontrak perjanjian dengan pelanggan, untuk periode waktu tertentu. Juga\r\ntermasuk jasa katering berdasarkan perjanjian di fasilitas olahraga dan tempat\r\nlain yang sejenis.\r\nSubgolongan ini mencakup :\r\n- Kegiatan kontraktor jasa makanan (misalnya untuk perusahaan\r\ntransportasi)\r\n- Kegiatan jasa katering berdasarkan perjanjian di fasilitas olahraga dan\r\nfasilitas sejenis\r\n- Kegiatan kantin atau kafetaria (misalnya untuk pabrik, perkantoran, rumah\r\nsakit atau sekolah) atas dasar konsesi\r\n- Kegiatan jasa katering yang melayani rumah tangga\r\nSubgolongan ini tidak mencakup :\r\n- Industri dari jenis makanan yang tidak tahan lama untuk dijual kembali, lihat\r\n1079\r\n- Perdagangan eceran jenis-jenis makanan yang tidak tahan lama, lihat\r\ngolongan pokok 47'),
('5630', '563', 'PENYEDIAAN MINUMAN ', 'Subgolongan ini mencakup kegiatan menyiapkan dan menyajikan minuman\r\nuntuk dikonsumsi di tempat sesuai pesanan.\r\nSubgolongan ini mencakup kegitan:\r\n- Bar atau pub\r\n- Kedai minuman\r\n- Kedai koktil\r\n- Diskotik (yang utamanya layanan minuman)\r\n- Kedai kopi\r\n- Penjual minuman keliling dan sejenisnya\r\nSubgolongan ini tidak mencakup :\r\n- Penjualan ulang minuman yang sudah dikemas atau disiapkan, lihat 4711,\r\n4722, 4781, 4799\r\n- Diskotik tanpa layanan jasa minuman, lihat 9329'),
('9900', '990', 'AKTIVITAS BADAN INTERNASIONAL DAN BADAN EKSTRA\r\nINTERNASIONAL LAINNYA', 'Subgolongan ini mencakup :\r\n- Kegiatan organisasi internasional seperti PBB dan agen-agen khusussistem PBB, badan regional, badan keuangan dan moneter internasional, bank\r\ndunia, organisasi bea cukai dunia, organisasi untuk kerjasama dan\r\npengembangan ekonomi, organisasi negara-negara pengekspor minyak\r\nperhimpunan negara-negara Eropa, perhimpunan perdagangan bebas\r\nnegara-negara Eropa dan lain-lain');

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
(1, 'admin', '43751df25670514f9ef4b5d91f5a6e73', 'admin', 1, 1),
(15, 'ihsan', 'f9c8074d5a013e0729373f8f74cd0648', 'ihsan', 1, 1),
(21, 'hendro', '66cb5177a2d8017b6e71983e95659388', 'hendro', 1, 1),
(23, 'pegawai', '047aeeb234644b9e2d4138ed3bc7976a', 'pegawai', 0, 1),
(24, 'eli', '0a57258559de00695ffb0f1d46bba388', 'eli', 1, 1);

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
-- Indeks untuk tabel `saran`
--
ALTER TABLE `saran`
  ADD PRIMARY KEY (`kode_saran`);

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
-- AUTO_INCREMENT untuk tabel `saran`
--
ALTER TABLE `saran`
  MODIFY `kode_saran` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `golongan`
--
ALTER TABLE `golongan`
  ADD CONSTRAINT `golongan_ibfk_1` FOREIGN KEY (`kode_golonganpokok`) REFERENCES `golonganpokok` (`kode_golonganpokok`) ON DELETE CASCADE ON UPDATE CASCADE;

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

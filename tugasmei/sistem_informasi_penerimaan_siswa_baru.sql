-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Jun 2019 pada 13.07
-- Versi server: 10.1.30-MariaDB
-- Versi PHP: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistem_informasi_penerimaan_siswa_baru`
--

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `data_administrasi`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `data_administrasi` (
`nama` varchar(30)
,`tempat_lahir` varchar(15)
,`tanggal` datetime
,`alamat` varchar(50)
,`pendidikan` varchar(20)
,`tahun` varchar(4)
,`agama` varchar(10)
,`no_kelengkapan` int(11)
,`sttb` varchar(5)
,`skck` varchar(5)
,`akta` varchar(5)
,`transkip` varchar(5)
,`no_siswa` int(11)
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_kelengkapan`
--

CREATE TABLE `tabel_kelengkapan` (
  `no_kelengkapan` int(11) NOT NULL,
  `STTB` varchar(5) NOT NULL,
  `SKCK` varchar(5) NOT NULL,
  `foto` varchar(5) NOT NULL,
  `akta` varchar(5) NOT NULL,
  `transkip` varchar(5) NOT NULL,
  `no_siswa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_kelengkapan`
--

INSERT INTO `tabel_kelengkapan` (`no_kelengkapan`, `STTB`, `SKCK`, `foto`, `akta`, `transkip`, `no_siswa`) VALUES
(1, '1', '1', '1', '1', '1', 1),
(2, '2', '2', '2', '2', '2', 2),
(3, '3', '3', '3', '3', '3', 3),
(4, '4', '4', '4', '4', '4', 4),
(5, '5', '5', '5', '5', '5', 5),
(6, '6', '6', '6', '6', '6', 6),
(7, '7', '7', '7', '7', '7', 7),
(8, '8', '8', '8', '8', '8', 8),
(9, '9', '9', '9', '9', '9', 9),
(10, '10', '10', '10', '10', '10', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_nilai`
--

CREATE TABLE `tabel_nilai` (
  `no_nilai` int(11) NOT NULL,
  `nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_nilai`
--

INSERT INTO `tabel_nilai` (`no_nilai`, `nilai`) VALUES
(1, 50),
(2, 60),
(3, 70),
(4, 75),
(5, 79),
(6, 80),
(7, 89),
(8, 90),
(9, 95),
(10, 99);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_orangtua`
--

CREATE TABLE `tabel_orangtua` (
  `no_orangtua` int(11) NOT NULL,
  `nama_ortu` varchar(30) NOT NULL,
  `hubungan` varchar(9) NOT NULL,
  `pekerjaan` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `agama` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_orangtua`
--

INSERT INTO `tabel_orangtua` (`no_orangtua`, `nama_ortu`, `hubungan`, `pekerjaan`, `alamat`, `agama`) VALUES
(1, 'karsih', 'anak', 'buruh tani', 'cikijing', 'islam'),
(2, 'inoh', 'anak', 'wirasuasta', 'maja', 'islam'),
(3, 'sarga', 'anak', 'wirasuasta', 'majalengka', 'islam '),
(4, 'inah', 'anak', 'PNS', 'kuningan ', 'islam'),
(5, 'kasih', 'anak ', 'wirasuasta', 'talaga', 'islam'),
(6, 'hali', 'anak', 'PNS', 'kuningan', 'islam'),
(7, 'kasman ', 'anak', 'pedagang', 'maja', 'islam'),
(8, 'nano', 'anak', 'pedagang', 'kuningan', 'islam'),
(9, 'idut', 'anak', 'pedagang', 'maja', 'islam'),
(10, 'masha', 'anak', 'petani', 'maja', 'islam');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_pembayaran`
--

CREATE TABLE `tabel_pembayaran` (
  `no_pembayaran` int(11) NOT NULL,
  `nokwitansi` varchar(10) NOT NULL,
  `terbilang` varchar(50) NOT NULL,
  `untuk` varchar(50) NOT NULL,
  `nominal` int(11) NOT NULL,
  `tanggal` datetime NOT NULL,
  `no_siswa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_pembayaran`
--

INSERT INTO `tabel_pembayaran` (`no_pembayaran`, `nokwitansi`, `terbilang`, `untuk`, `nominal`, `tanggal`, `no_siswa`) VALUES
(1, '01', 'Dua Ratus Lima Puluh Ribu Rupiah', 'Registrasi', 250, '2017-05-01 00:00:00', 1),
(2, '02', 'Satu Juta Lima Ratus Ribu Rupiah ', 'Biaya Pendaftaran', 1500, '2017-05-03 00:00:00', 2),
(3, '03', 'Tiga Ratus Ribu Rupiah ', 'SPP (Bayar bulanan)', 300, '2017-05-11 00:00:00', 3),
(4, '04', 'Tiga Juta Rupiah ', 'Perlengkapan Sekolah (Seragam Sekolah Dan Buku)', 3000, '2017-03-05 00:00:00', 4),
(5, '05', 'Lima Ratus Ribu Rupiah', 'Pengambilan Ijazah Dan Kelulusan', 500, '2018-08-14 00:00:00', 5),
(6, '06', 'Satu Juta Lima Ratus Ribu Rupiah', 'Biaya Pendaftaran', 1500, '2019-01-06 00:00:00', 6),
(7, '07', 'Tiga Ratus Lima Puluh Ribu Rupiah', 'SPP (Bayar bulanan)', 350, '2019-01-11 00:00:00', 7),
(8, '08', 'Tiga Juta Rupiah', 'Perlengkapan Sekolah (Seragam Sekolah Dan Buku)', 3000, '2019-03-22 00:00:00', 8),
(9, '09', 'Lima Ratus Ribu Rupiah ', 'Pengambilan Ijazah Dan Kelulusan ', 500, '2019-08-15 00:00:00', 9),
(10, '10', 'Enam Ratus Ribu Rupiah', 'Perpisahan ', 600, '2019-12-09 00:00:00', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_siswa`
--

CREATE TABLE `tabel_siswa` (
  `no_siswa` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `tempat_lahir` varchar(15) NOT NULL,
  `tanggal` datetime NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `pendidikan` varchar(20) NOT NULL,
  `tahun` varchar(4) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `no_kelengkapan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_siswa`
--

INSERT INTO `tabel_siswa` (`no_siswa`, `nama`, `tempat_lahir`, `tanggal`, `alamat`, `pendidikan`, `tahun`, `agama`, `no_kelengkapan`) VALUES
(1, 'Dinda Fdhillah', 'Indramayu', '2000-03-06 00:00:00', 'Ds. bugis kec. anjatan Kab. Indramayu', 'MTS', '2014', 'Islam', 1),
(2, 'Dinda Sri Wulansari', 'majalengka', '2000-02-29 00:00:00', 'Kareo', 'SMP', '2014', 'Islam', 2),
(3, 'Mei Liyana Ababiel', 'Cirebon', '2000-05-29 00:00:00', 'Majalengka', 'SMP', '2014', 'Islam', 3),
(4, 'Iis Nur Aeni ', 'Sumedang', '1999-11-08 00:00:00', 'Majalengka ', 'SMP', '2014', 'Islam', 4),
(5, 'Komalasari', 'Subang', '1999-12-25 00:00:00', 'Ds. pamanukan', 'MTS', '2014', 'Islam', 5),
(6, 'Nisa Nur Kholistyani', 'Subang', '1999-10-18 00:00:00', 'Ds.Pamanukan', 'SMP', '2014', 'Islam', 6),
(7, 'Fifi sonya', 'Tegal', '1999-12-01 00:00:00', 'tegal', 'MTS', '2014', 'Islam', 7),
(8, 'Dewi Atika Firdayanti', 'Indramayu', '1998-12-30 00:00:00', 'Ds. Kertasemaya', 'MTS', '2014', 'Islam', 8),
(9, 'Junaedi', 'Brebes', '1998-03-20 00:00:00', 'Brebes', 'SMP', '2014', 'Islam', 9),
(10, 'Shurottun annisa', 'Subang', '1999-03-31 00:00:00', 'Ds.Pamanukan', 'SMP', '2014', 'Islam', 10);

-- --------------------------------------------------------

--
-- Struktur untuk view `data_administrasi`
--
DROP TABLE IF EXISTS `data_administrasi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `data_administrasi`  AS  select `tabel_siswa`.`nama` AS `nama`,`tabel_siswa`.`tempat_lahir` AS `tempat_lahir`,`tabel_siswa`.`tanggal` AS `tanggal`,`tabel_siswa`.`alamat` AS `alamat`,`tabel_siswa`.`pendidikan` AS `pendidikan`,`tabel_siswa`.`tahun` AS `tahun`,`tabel_siswa`.`agama` AS `agama`,`tabel_kelengkapan`.`no_kelengkapan` AS `no_kelengkapan`,`tabel_kelengkapan`.`STTB` AS `sttb`,`tabel_kelengkapan`.`SKCK` AS `skck`,`tabel_kelengkapan`.`akta` AS `akta`,`tabel_kelengkapan`.`transkip` AS `transkip`,`tabel_pembayaran`.`no_siswa` AS `no_siswa` from ((`tabel_siswa` join `tabel_kelengkapan` on((`tabel_kelengkapan`.`no_siswa` = `tabel_siswa`.`no_siswa`))) join `tabel_pembayaran` on((`tabel_pembayaran`.`no_siswa` = `tabel_siswa`.`no_siswa`))) ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tabel_kelengkapan`
--
ALTER TABLE `tabel_kelengkapan`
  ADD PRIMARY KEY (`no_kelengkapan`),
  ADD KEY `no_siswa` (`no_siswa`);

--
-- Indeks untuk tabel `tabel_nilai`
--
ALTER TABLE `tabel_nilai`
  ADD PRIMARY KEY (`no_nilai`);

--
-- Indeks untuk tabel `tabel_orangtua`
--
ALTER TABLE `tabel_orangtua`
  ADD PRIMARY KEY (`no_orangtua`);

--
-- Indeks untuk tabel `tabel_pembayaran`
--
ALTER TABLE `tabel_pembayaran`
  ADD PRIMARY KEY (`no_pembayaran`),
  ADD KEY `no_siswa` (`no_siswa`);

--
-- Indeks untuk tabel `tabel_siswa`
--
ALTER TABLE `tabel_siswa`
  ADD PRIMARY KEY (`no_siswa`),
  ADD KEY `no_kelengkapan` (`no_kelengkapan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tabel_kelengkapan`
--
ALTER TABLE `tabel_kelengkapan`
  MODIFY `no_kelengkapan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tabel_pembayaran`
--
ALTER TABLE `tabel_pembayaran`
  ADD CONSTRAINT `tabel_pembayaran_ibfk_1` FOREIGN KEY (`no_siswa`) REFERENCES `tabel_siswa` (`no_siswa`);

--
-- Ketidakleluasaan untuk tabel `tabel_siswa`
--
ALTER TABLE `tabel_siswa`
  ADD CONSTRAINT `tabel_siswa_ibfk_1` FOREIGN KEY (`no_kelengkapan`) REFERENCES `tabel_kelengkapan` (`no_kelengkapan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

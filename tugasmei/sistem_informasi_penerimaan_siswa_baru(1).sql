-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Bulan Mei 2019 pada 13.07
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
-- Struktur dari tabel `tabel_kelengkapan`
--

CREATE TABLE `tabel_kelengkapan` (
  `no` int(11) NOT NULL,
  `STTB` varchar(5) NOT NULL,
  `SKCK` varchar(5) NOT NULL,
  `foto` varchar(5) NOT NULL,
  `akta` varchar(5) NOT NULL,
  `transkip` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_kelengkapan`
--

INSERT INTO `tabel_kelengkapan` (`no`, `STTB`, `SKCK`, `foto`, `akta`, `transkip`) VALUES
(1, '1', '1', '1', '1', '1'),
(2, '2', '2', '2', '2', '2'),
(3, '3', '3', '3', '3', '3'),
(4, '4', '4', '4', '4', '4'),
(5, '5', '5', '5', '5', '5'),
(6, '6', '6', '6', '6', '6'),
(7, '7', '7', '7', '7', '7'),
(8, '8', '8', '8', '8', '8'),
(9, '9', '9', '9', '9', '9'),
(10, '10', '10', '10', '10', '10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_nilai`
--

CREATE TABLE `tabel_nilai` (
  `no` int(11) NOT NULL,
  `nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_nilai`
--

INSERT INTO `tabel_nilai` (`no`, `nilai`) VALUES
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
  `no` int(11) NOT NULL,
  `nama_ortu` varchar(30) NOT NULL,
  `hubungan` varchar(9) NOT NULL,
  `pekerjaan` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `agama` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_orangtua`
--

INSERT INTO `tabel_orangtua` (`no`, `nama_ortu`, `hubungan`, `pekerjaan`, `alamat`, `agama`) VALUES
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
  `no` int(11) NOT NULL,
  `nokwitansi` varchar(10) NOT NULL,
  `terbilang` varchar(50) NOT NULL,
  `untuk` varchar(50) NOT NULL,
  `nominal` int(11) NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_pembayaran`
--

INSERT INTO `tabel_pembayaran` (`no`, `nokwitansi`, `terbilang`, `untuk`, `nominal`, `tanggal`) VALUES
(1, '01', 'Dua Ratus Lima Puluh Ribu Rupiah', 'Registrasi', 250, '2017-05-01 00:00:00'),
(2, '02', 'Satu Juta Lima Ratus Ribu Rupiah ', 'Biaya Pendaftaran', 1500, '2017-05-03 00:00:00'),
(3, '03', 'Tiga Ratus Ribu Rupiah ', 'SPP (Bayar bulanan)', 300, '2017-05-11 00:00:00'),
(4, '04', 'Tiga Juta Rupiah ', 'Perlengkapan Sekolah (Seragam Sekolah Dan Buku)', 3000, '2017-03-05 00:00:00'),
(5, '05', 'Lima Ratus Ribu Rupiah', 'Pengambilan Ijazah Dan Kelulusan', 500, '2018-08-14 00:00:00'),
(6, '06', 'Satu Juta Lima Ratus Ribu Rupiah', 'Biaya Pendaftaran', 1500, '2019-01-06 00:00:00'),
(7, '07', 'Tiga Ratus Lima Puluh Ribu Rupiah', 'SPP (Bayar bulanan)', 350, '2019-01-11 00:00:00'),
(8, '08', 'Tiga Juta Rupiah', 'Perlengkapan Sekolah (Seragam Sekolah Dan Buku)', 3000, '2019-03-22 00:00:00'),
(9, '09', 'Lima Ratus Ribu Rupiah ', 'Pengambilan Ijazah Dan Kelulusan ', 500, '2019-08-15 00:00:00'),
(10, '10', 'Enam Ratus Ribu Rupiah', 'Perpisahan ', 600, '2019-12-09 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_siswa`
--

CREATE TABLE `tabel_siswa` (
  `no` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `tempat_lahir` varchar(15) NOT NULL,
  `tanggal` datetime NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `pendidikan` varchar(20) NOT NULL,
  `tahun` varchar(4) NOT NULL,
  `agama` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_siswa`
--

INSERT INTO `tabel_siswa` (`no`, `nama`, `tempat_lahir`, `tanggal`, `alamat`, `pendidikan`, `tahun`, `agama`) VALUES
(1, 'Dinda Fdhillah', 'Indramayu', '2000-03-06 00:00:00', 'Ds. bugis kec. anjatan Kab. Indramayu', 'MTS', '2014', 'Islam'),
(2, 'Dinda Sri Wulansari', 'majalengka', '2000-02-29 00:00:00', 'Kareo', 'SMP', '2014', 'Islam'),
(3, 'Mei Liyana Ababiel', 'Cirebon', '2000-05-29 00:00:00', 'Majalengka', 'SMP', '2014', 'Islam'),
(4, 'Iis Nur Aeni ', 'Sumedang', '1999-11-08 00:00:00', 'Majalengka ', 'SMP', '2014', 'Islam'),
(5, 'Komalasari', 'Subang', '1999-12-25 00:00:00', 'Ds. pamanukan', 'MTS', '2014', 'Islam'),
(6, 'Nisa Nur Kholistyani', 'Subang', '1999-10-18 00:00:00', 'Ds.Pamanukan', 'SMP', '2014', 'Islam'),
(7, 'Fifi sonya', 'Tegal', '1999-12-01 00:00:00', 'tegal', 'MTS', '2014', 'Islam'),
(8, 'Dewi Atika Firdayanti', 'Indramayu', '1998-12-30 00:00:00', 'Ds. Kertasemaya', 'MTS', '2014', 'Islam'),
(9, 'Junaedi', 'Brebes', '1998-03-20 00:00:00', 'Brebes', 'SMP', '2014', 'Islam'),
(10, 'Shurottun annisa', 'Subang', '1999-03-31 00:00:00', 'Ds.Pamanukan', 'SMP', '2014', 'Islam');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tabel_kelengkapan`
--
ALTER TABLE `tabel_kelengkapan`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `tabel_nilai`
--
ALTER TABLE `tabel_nilai`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `tabel_orangtua`
--
ALTER TABLE `tabel_orangtua`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `tabel_pembayaran`
--
ALTER TABLE `tabel_pembayaran`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `tabel_siswa`
--
ALTER TABLE `tabel_siswa`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tabel_kelengkapan`
--
ALTER TABLE `tabel_kelengkapan`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

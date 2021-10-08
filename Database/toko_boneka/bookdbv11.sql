-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Waktu pembuatan: 15. Agustus 2012 jam 23:23
-- Versi Server: 5.5.8
-- Versi PHP: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bookdb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `biaya_kirim`
--

CREATE TABLE IF NOT EXISTS `biaya_kirim` (
  `id_kota` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kota` varchar(30) NOT NULL,
  `biaya` int(11) NOT NULL,
  PRIMARY KEY (`id_kota`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data untuk tabel `biaya_kirim`
--

INSERT INTO `biaya_kirim` (`id_kota`, `nama_kota`, `biaya`) VALUES
(2, 'Semarang', 12000),
(3, 'Bandung', 14000),
(4, 'Jakarta', 10000),
(6, 'Ambon', 39000),
(7, 'Jayapura', 60000),
(8, 'Medan', 21000),
(9, 'Pekan Baru', 19000),
(10, 'Malang', 9000),
(11, 'Pontianak', 20000),
(12, 'Balikpapan', 28000),
(13, 'Samarinda', 31500),
(14, 'Sumbawa', 31500),
(15, 'Surabaya', 17000),
(16, 'cilacap', 2000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE IF NOT EXISTS `buku` (
  `kd_buku` varchar(6) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `pengarang` varchar(30) NOT NULL,
  `kd_kategori` varchar(6) NOT NULL,
  `kd_penerbit` varchar(6) NOT NULL,
  `harga` int(11) NOT NULL,
  `cover` varchar(30) NOT NULL,
  `deskripsi` text NOT NULL,
  PRIMARY KEY (`kd_buku`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`kd_buku`, `judul`, `pengarang`, `kd_kategori`, `kd_penerbit`, `harga`, `cover`, `deskripsi`) VALUES
('B0001', 'Pemrograman PHP untuk Pemula', 'Kasiman Peranginangin', 'K01', 'P01', 20000, 'beginingphp.jpg', '\r\nDalam buku ini dijelaskan pemrograman web menggunakan PHP dengan database MySQL yang dapat dijadikan referensi untuk mempelajari PHP secara umum. Penjelasan yang diberikan cukup mudah dimengerti disertai contoh-contoh script yang telah diuji-coba di lingkungan server web Windows.\r\n\r\nBuku ini ditujukan bagi Anda yang ingin mempelajari dasar pemrograman web menggunakan PHP dengan database MySQL. '),
('B0002', 'Jaringan komputer ', 'Candra', 'K04', 'P02', 100000, 'jar_kom_2008.gif', 'buku tentang jaringan komputer, membahas tentang TCP IP, Mikrotik, Cisco dan penerapannya di lapangan. Sangat cocok di pakai oleh admin jaringan atau mahasiswa '),
('B0003', 'jQuery', 'candra', 'K04', 'P02', 30000, '2011-10-01 18.35.49.jpg', 'Windows XP unlocks the world of digital media! Record your own favorite tunes or find music online. Play exciting games on your computer and on the Internet. Learn how easy it is to view, organize, and store digital photos, and share them in e-mail or online with family, friends, and colleagues.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `kd_pemesan` varchar(20) NOT NULL,
  `Nama` varchar(25) NOT NULL,
  `Alamat` varchar(30) NOT NULL,
  `kd_pos` char(5) NOT NULL,
  `No_telp` varchar(12) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `id_kota` int(11) NOT NULL,
  `kd_pesan` varchar(6) NOT NULL,
  PRIMARY KEY (`kd_pemesan`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`kd_pemesan`, `Nama`, `Alamat`, `kd_pos`, `No_telp`, `Email`, `id_kota`, `kd_pesan`) VALUES
('C001', 'haryanto', 'jl jant', '12244', '2343443', 'haryanto@gmail.com', 6, 'P002');

-- --------------------------------------------------------

--
-- Struktur dari tabel `det_pesan`
--

CREATE TABLE IF NOT EXISTS `det_pesan` (
  `no_det_pesan` int(4) NOT NULL AUTO_INCREMENT,
  `no_pesan` varchar(20) NOT NULL,
  `kd_buku` varchar(6) NOT NULL,
  `total_pesan` int(11) NOT NULL,
  PRIMARY KEY (`no_det_pesan`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `det_pesan`
--

INSERT INTO `det_pesan` (`no_det_pesan`, `no_pesan`, `kd_buku`, `total_pesan`) VALUES
(1, 'P001', 'B0001', 1),
(2, 'P001', 'B0002', 2),
(3, 'P002', 'B0001', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `kd_kategori` char(4) NOT NULL,
  `nama_kategori` varchar(10) NOT NULL,
  PRIMARY KEY (`kd_kategori`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`kd_kategori`, `nama_kategori`) VALUES
('K01', 'PHP'),
('K02', 'MySQL'),
('K03', 'Multimedia'),
('K04', 'Jaringan'),
('K05', 'Linux'),
('K06', 'Apple'),
('K07', 'jQuery');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE IF NOT EXISTS `pembayaran` (
  `no` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `kd_pesan` varchar(20) NOT NULL,
  `total_bayar` int(11) NOT NULL,
  `status` enum('sudah','belum') NOT NULL DEFAULT 'belum'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`no`, `tanggal`, `kd_pesan`, `total_bayar`, `status`) VALUES
(0, '0000-00-00', '', 0, 'belum');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penerbit`
--

CREATE TABLE IF NOT EXISTS `penerbit` (
  `kd_penerbit` varchar(6) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `website` varchar(30) NOT NULL,
  PRIMARY KEY (`kd_penerbit`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penerbit`
--

INSERT INTO `penerbit` (`kd_penerbit`, `nama`, `alamat`, `telepon`, `email`, `website`) VALUES
('P01', 'Andi', 'Jl Beo 123', '123456', 'andi@gmail.com', 'http://www.andipublisher.com'),
('P02', 'Lokomedia', 'Jl janti', '123434', 'asal@gmail.com', 'lokomedia.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengelola`
--

CREATE TABLE IF NOT EXISTS `pengelola` (
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pengelola`
--

INSERT INTO `pengelola` (`username`, `password`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3'),
('candra', '2614ae3c375c3095dc536283672548bd'),
('tes', '098f6bcd4621d373cade4e832627b4f6');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesan`
--

CREATE TABLE IF NOT EXISTS `pesan` (
  `kd_pesan` varchar(30) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `total_bayar` int(11) NOT NULL,
  PRIMARY KEY (`kd_pesan`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pesan`
--

INSERT INTO `pesan` (`kd_pesan`, `tgl_pesan`, `total_bayar`) VALUES
('P001', '2012-08-04 13:15:41', 220000),
('P002', '2012-08-04 14:15:40', 60000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `propinsi`
--

CREATE TABLE IF NOT EXISTS `propinsi` (
  `id_propinsi` int(11) NOT NULL AUTO_INCREMENT,
  `nama_propinsi` varchar(50) NOT NULL,
  `ibukota` varchar(50) NOT NULL,
  PRIMARY KEY (`id_propinsi`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data untuk tabel `propinsi`
--

INSERT INTO `propinsi` (`id_propinsi`, `nama_propinsi`, `ibukota`) VALUES
(5, 'Jawa tengah', 'Semarang'),
(6, 'jawa Barat', 'Bandung'),
(7, 'Jakarta', 'Jakarta'),
(8, 'Jawa Timur', 'Surabaya'),
(9, 'Bali', 'Denpasar'),
(10, 'Padang ', 'd');

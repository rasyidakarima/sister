-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2019 at 03:02 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_boneka`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(2) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kd_barang` char(5) NOT NULL,
  `nm_barang` varchar(100) NOT NULL,
  `harga_modal` int(12) NOT NULL,
  `harga_jual` int(12) NOT NULL,
  `stok` int(4) NOT NULL,
  `keterangan` text NOT NULL,
  `file_gambar` varchar(100) NOT NULL,
  `kd_kategori` char(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kd_barang`, `nm_barang`, `harga_modal`, `harga_jual`, `stok`, `keterangan`, `file_gambar`, `kd_kategori`) VALUES
('B0014', 'Boneka Tas Angrybird', 50000, 85000, 12, '<p><strong>Boneka Tas AngryBird </strong>ini sangat cocok buat adik yang baru masuk sekolah, pasti adik makin semangat belajarnya kalo ditemenin sama tas Angrybird yang super keren ini deh.</p>\r\n<p>Spesifikasi :<br />- Tas gendong- Ukuran sedang 40x20 cm<br />- Warna sesuai dengan gambar</p>', 'B0014.angtas.jpg', 'K015'),
('B0004', 'Boneka Doraemon Xl', 60000, 71000, 4, '<p><strong>Boneka Doraemon XL</strong> dengan wajah Tersenyum sambil menjulurkan lidahnya, sehingga tampak lucu dan imut. Kedua matanya dibuat dari plastik.</p>\r\n<p>Keterangan lain:</p>\r\n<p>- Boneka terbuat dari bahan velboa yang lembut tidak berbulu<br />- Tersedia Ukuran XL 45x25cm<br />- Kualitas boneka sangat baik</p>', 'B0004.Boneka-Doraemon-XL.jpg', 'K003'),
('B0005', 'Guling Doraemon', 45000, 60000, 9, '<p><strong>Boneka Doraemon</strong> yang lucu, dapat dipakai buat teman saat bobok, bisa juga dibuat untuk hadiah ke pacar, atau juga untuk adik kecil yang imut. Ukuran L</p>', 'B0005.Guling-Doraemon-Ukuran-L.jpg', 'K011'),
('B0006', 'Boneka Doremon Baling-baling Bambu', 17000, 24000, 7, '<p>Boneka Doremon Baling-baling Bambu mini, seukuran 1,5x pensil, sangat cocok dipakai buat menambah koleksi Anda.</p>', 'B0006.Boneka-Doremon-Baling-baling-Bambu.jpg', 'K003'),
('B0007', 'Boneka Beruang (kecil) Dengan Bantal', 15000, 20000, 8, '<p>Boneka Beruang (Kecil) dengan Bantal, ukurannya kecil, 1,3 x ukuran spidol, bisa dipakai buat gantungan di kaca mobol Anda, pkoknya lucu deh</p>', 'B0007.Boneka-Beruang-(Kecil)-dengan-Bantal.jpg', 'K008'),
('B0008', 'Guling Mini Boneka Gajah', 15000, 350000, 10, '<p>Guling Mini Boneka Gajah dengan ukuran 2x besar spidol, bagus buat menambah koleksi Anda, bentuknya lucu, juga bisa dipakai buat hiasan di mobil.</p>', 'B0008.Guling-Mini-Boneka-Gajah.jpg', 'K011'),
('B0009', 'Boneka Hello Kitty', 15000, 20000, 10, '<p><strong>Boneka Hello Kity</strong> ukuran mini, 1,2 x ukuran spidol, pilihan warna Merah, Biru dan Kuning, dapat dipakai buat gantungan hiasan di kamar atau di kaca mobil.</p>', 'B0009.Boneka-Hello-Kity-warna-Biru-dan-Merah.jpg', 'K005'),
('B0010', 'Hello Kitty Gantungan Kunci', 7000, 10000, 10, '<p>Hello Kity Gantungan Kunci sekurang 0,8x besar spidol, cocok buat gantungan kunci anda, juga bisa dipakai buat hiasan pada kamar dan mobil.</p>', 'B0010.Hello-Kity-Gantungan-Kunci.jpg', 'K017'),
('B0011', 'Hello Kitty Guling Mini', 15000, 20000, 10, '<p>Hello Kity Guling Mini yang imut, cocok buat mainan si kecil, juga bisa dipakai buat teman bobok si kecil, seukuran 2x spidol.</p>', 'B0011.Hello-Kity-Guling-Mini.jpg', 'K011'),
('B0012', 'Hello Kitty Sandal', 25000, 35000, 10, '<p>Hello Kity Sandal yang lucu, bisa buat gaul saat kumpul dengan teman-teman, atau dipakai buat harian di dalam rumah dan kamar.</p>', 'B0012.Hello-Kity-Sandal.jpg', 'K012'),
('B0013', 'Hello Kitty Tas', 35000, 45000, 10, '<p>Hello Kity Tas yang cocok buat kamu para cewek cewek ABG, bisa buat gaul loch.....pokoknya lucu abis</p>', 'B0013.Hello-Kity-Tas.jpg', 'K015'),
('B0003', 'Boneka Beruang Jericho', 150000, 180000, 4, '<div id=\"Deskripsi\" class=\"ui-tabs-panel ui-widget-content ui-corner-bottom\">\r\n<p><strong>Boneka Beruang Bear Jericho </strong>adalah boneka beruang berukuran besar, bentuknya lucu dan menggemaskan, boneka ini didesain dengan mengenakan kaos bergambar beruang dan bertuliskan \"I Think..\". Boneka beruang ini cocok untuk dihadiahkan untuk sang kekasih, atau untuk Anda sendiri.</p>\r\n<p>Deskripsi :</p>\r\n<p>- Bahan Snail<br />- mengenakan kaos dari bahan kain warna merah<br />- Ukuran Tinggi 75cm</p>\r\n</div>', 'B0003.Boneka Beruang Jericho - Beruang.jpg', 'K008'),
('B0001', 'Bantal Angry Birds', 55000, 65000, 0, '<p><strong>Boneka Bantal Angry Birds</strong> ini dapat Anda gunakan untuk teman bobok, sangat cocok untuk dijadikan sebagai hadian kepada sang pacar saat ulang tahun, atau hari spesial.</p>\r\n<p>Detailnya adalah :<br /> - Angry Birds yang dibuat sebagai bantal<br /> - Bentuk ramping<br /> - Mata dan patuk dari gambar bordir<br /> - Dengan bordir tulisan \"Angry Birds\"<br /> - Cocok sebagai alas kepala<br /> - Ukuran : 45cm x 35cm<br /> - Terbuat dari bahan rasfur yang halus dan lembut<br /> - Bantal dengan kualitas sangat baik</p>', 'B0001.Boneka-Bantal-Angry-Birds.jpg', 'K011'),
('B0002', 'Boneka Bear Love You', 80000, 99000, 3, '<div id=\"Deskripsi\" class=\"ui-tabs-panel ui-widget-content ui-corner-bottom\">\r\n<p><strong>Boneka Bear Love You</strong>, boneka beruang ini sangat cocok untuk diberikan sebagai hadiah kepada sang pacar atau pasangan Anda.</p>\r\n<p>Deskripsi :</p>\r\n<p>- Boneka Bear warna pink<br />- Dengan bantal hati bertuliskan \"I Love You\"<br />- Terbuat dari Bahan vonel<br />- Ukuran tinggi 55cm</p>\r\n</div>', 'B0002.Boneka-Bear-Love-You---Beruang.jpg', 'K008'),
('B0015', 'Boneka Baymax Putih', 30000, 50000, 5, '<p>\"Hai, Saya Baymax\" yang udh nonton Big Hero 6 pasti tau dong <strong>Boneka Baymax </strong>gendut yang super lucu ini, yuk diorder kaka..!!</p>\r\n<p>Spesifikasi :</p>\r\n<p>- Terbuat dari bahan <em>Yelvo</em> yang lembut dan empuk<br />- Tinggi boneka 25 cm</p>', 'B0015.bay.jpg', 'K018'),
('B0016', 'Boneka Baymax Merah', 30000, 55000, 5, '<p>Masih inget kan pas Baymax lagi pake armour warna merah di film Big Hero 6? Yuk diorder bonekanya ..</p>\r\n<p>Spesifikasi</p>\r\n<p>- Terbuat dari bahan Yelvo yang lembut- Ukuran 25 cm</p>', 'B0016.bay1.jpg', 'K018'),
('B0017', 'Boneka Tas Pretty', 40000, 75000, 10, '<p><strong>Boneka Tas Pretty</strong></p>\r\n<p>Spesifikasi :</p>\r\n<p>- Terbuat dari bahan <em>Rasfur</em> lembut dan halus- Ukuran 30x30cm<br />- Tersedia dalam warna biru tua, biru muda, orange, pink dan merah</p>', 'B0017.bontas.jpg', 'K015'),
('B0018', 'Boneka Domba Lucu', 40000, 80000, 15, '<p><strong>Boneka Domba Lucu</strong></p>\r\n<p>Spesifikasi :</p>\r\n<p>- Terbuat dari bahan <em>rasfur</em> yang lembut dan empuk<br />- Ukuran 70x40cm</p>', 'B0018.domba.JPG', 'K002'),
('B0019', 'Boneka Headphone Doraemon', 30000, 55000, 5, '<p><strong>Boneka Headphone Doraemon</strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan Nylex<br />- Ukuran 20cm</p>', 'B0019.dora.jpg', 'K003'),
('B0020', 'Boneka Doraemon Sedang', 30000, 65000, 8, '<p><strong>Boneka Doraemon Sedang</strong></p>\r\n<p>Spesifikasi :- Terbuat dari bahan Nylex dan Rasfur<br />- Ukuran 40cm</p>', 'B0020.dora1.jpg', 'K003'),
('B0021', 'Boneka Bantal Doraemon', 35000, 70000, 10, '<p><strong>Boneka Bantal Doraemon</strong></p>\r\n<p>Spesifikasi :</p>\r\n<p>- Terbuat dari bahan <em>Velboa</em>, lembut, empuk, nyaman untuk bayi<br />- Ukuran 40x60cm</p>', 'B0021.doraban.jpg', 'K011'),
('B0022', 'Boneka Kepala Doraemon', 30000, 55000, 8, '<p><strong>Boneka Kepala Doraemon</strong></p>\r\n<p>Spesifikasi :- Terbuat dari bahan <em>Rasfur</em><br />- Ukuran diameter 30cm</p>', 'B0022.doraban1.jpg', 'K003'),
('B0023', 'Boneka Kepala Doraemon Snail', 45000, 75000, 10, '<p><strong>Boneka Kepala Doraemon Snail</strong></p>\r\n<p>Spesifikasi :- Terbuat dari bahan snail yang lembut dan halus<br />- Ukuran 30x30cm</p>', 'B0023.doraban2.jpg', 'K003'),
('B0024', 'Boneka Sandal Doraemon 1', 25000, 45000, 5, '<p><strong>Boneka Sandal Doraemon 1</strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan Nylex<br />- Ukuran 35-40</p>', 'B0024.dorasan.jpg', 'K012'),
('B0025', 'Boneka Sandal Doraemon 2', 30000, 50000, 15, '<p><strong>Boneka Sandal Doraemon 2</strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan <em>Yelvo</em> yg empuk<br />- Ukuran 35-40</p>', 'B0025.dorasan2.JPG', 'K012'),
('B0026', 'Boneka Tas Doraemon', 20000, 40000, 10, '<p><strong>Boneka Tas Doraemon</strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dr bahan <em>yelvo<br />- </em>Ukuran 40cm</p>', 'B0026.dortas.jpg', 'K015'),
('B0027', 'Boneka Mammooth', 40000, 80000, 20, '<p><strong>Boneka Mammooth</strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan Rasfur lembut dan empuk<br />- Ukuran 30cm</p>', 'B0027.gajah.jpg', 'K002'),
('B0028', 'Boneka Hello Kitty 1', 30000, 50000, 15, '<p><strong>Boneka Hello Kitty 1</strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan <em>Yelvo</em>- Ukuran 30cm</p>', 'B0028.helkit.jpg', 'K005'),
('B0029', 'Boneka Bantal Hello Kitty', 35000, 70000, 20, '<p><strong>Boneka Bantal Hello Kitty </strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan Velboa- Ukuran 70x30cm dan 50x20m</p>', 'B0029.helkitban.jpg', 'K011'),
('B0030', 'Boneka Kepala Hello Kitty', 35000, 50000, 25, '<p><strong>Boneka Kepala Hello Kitty</strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan <em>Snail</em> yang lembut<br />- Ukuran 30cm</p>', 'B0030.helkitban2.jpg', 'K005'),
('B0031', 'Boneka Hello Kitty 2', 25000, 45000, 18, '<p><strong>Boneka Hello Kitty 2</strong></p>\r\n<p>Spesifikasi : <br />- Terbuat dari bahan <em>Yelvo</em><br />- Ukuran 20cm</p>', 'B0031.helkitban3.JPG', 'K005'),
('B0032', 'Boneka Hello Kitty 3', 30000, 75000, 30, '<p><strong>Boneka Hello Kitty 3</strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan <em>Yelvo</em> yang lembut<br />- Ukuran 60cm</p>', 'B0032.helkitbig.jpg', 'K005'),
('B0033', 'Hello Kitty Couple 1', 40000, 85000, 15, '<p><strong>Hello Kitty Couple 1 </strong>kini hadir edisi Couple yang lucu dan romantis, cocok dijadikan kado untuk orang yang tersayang.</p>\r\n<p>Spesifikasi :- Terbuat dari bahan yelvo yang lembut<br />- Ukuran 20cm, 2pieces</p>', 'B0033.helkitcop1.jpg', 'K005'),
('B0034', 'Hello Kitty Couple 2', 40000, 85000, 10, '<p><strong>Hello Kitty Couple 2 </strong>kini hadir edisi Couple lucu dan romantis, cocok dijadikan kado buat orang yang tersayang.</p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan <em>Rasfur</em> yang halus dan lembut<br />- Ukuran 20cm, 2pieces</p>', 'B0034.helkitcop2.jpg', 'K005'),
('B0035', 'Hello Kitty Couple 3 Limited Edition', 43000, 85000, 10, '<p><strong>Hello Kitty Couple 3 </strong>edisi Couple spesial Imlek, Limited Edition</p>\r\n<p>Spesifikasi :- Terbuat dari bahan <em>Yelvo</em><br />- Ukuran 20cm</p>', 'B0035.helkitcop3.jpg', 'K005'),
('B0036', 'Hello Kitty Couple 4', 40000, 80000, 20, '<p><strong>Hello Kitty Couple 4</strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan <em>Rasfur<br />- </em>Ukuran 20cm, 2pieces</p>', 'B0036.helkitcop4.jpg', 'K005'),
('B0037', 'Hello Kitty Couple 5', 40000, 85000, 15, '<p><strong>Hello Kitty Couple 5<br /></strong>Spesifikasi :<br />- Terbuat dari bahan <em>Yelvo</em> lembut<br />- Ukuran 20cm, 2pieces</p>', 'B0037.helkitcoup.jpg', 'K005'),
('B0038', 'Hello Kitty Gantungan Kunci', 5000, 10000, 20, '<p>Si Hello Kitty imut ada gantungan kuncinya juga loh</p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan Nylex<br />- Ukuran 8cm</p>', 'B0038.helkitgan.jpg', 'K017'),
('B0039', 'Hello Kitty Gantungan Kunci Lucu', 5500, 12000, 25, '<p><strong>Hello Kitty Gantungan Kunci Lucu</strong></p>\r\n<p>Spesifikasi :- Terbuat dari bahan <em>Rasfur</em> lembut<br />- Ukuran 5cm<br />- Bisa ditempel di kaca mobil</p>', 'B0039.helkitgan1.jpg', 'K017'),
('B0040', 'Hello Kitty Gantungan Imut', 5000, 9500, 25, '<p><strong>Hello Kitty Gantungan Imut</strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan <em>Rasfur<br /></em>- Ukuran 5cm<br />- Tersedia warna pink dan merah</p>', 'B0040.helkitgan2.jpg', 'K017'),
('B0041', 'Bangul Hello Kitty', 80000, 150000, 10, '<p><strong>Bangul Hello Kitty</strong> Bantal guling Hello Kitty</p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan <em>Veltboa</em> yang lembut, empuk, cocok untuk bayi<br />- Ukuran 90x40cm</p>', 'B0041.helkitgul.jpg', 'K011'),
('B0042', 'Guling Hello Kitty', 40000, 55000, 20, '<p><strong>Guling Hello Kitty</strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan <em>Snail</em> yang halus<br />- Ukuran 70cm<br />- Tersedia dalam warna hijau, ungu, merah, pink, pink muda</p>', 'B0042.helkitgul1.jpg', 'K011'),
('B0043', 'Kursi Hello Kitty', 90000, 165000, 5, '<p><strong>Kursi Hello Kitty</strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan <em>Veltboa</em> yang lembut<br />- Ukuran 60cm</p>', 'B0043.helkitkur.jpg', 'K016'),
('B0044', 'Kursi Bulat Hello Kitty', 75000, 95000, 4, '<p><strong>Kursi Bulat Hello Kitty</strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan <em>Rasfur</em><br />- Ukuran 60cm</p>', 'B0044.helkitkur1.jpg', 'K016'),
('B0045', 'Kursi Cantik Hello Kitty', 70000, 115000, 6, '<p><strong>Kursi Cantik Hello Kitty</strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan <em>Rasfur</em><br />- Ukuran 80cm</p>', 'B0045.helkitkur2.jpg', 'K016'),
('B0046', 'Hello Kitty Sandal 2', 25000, 45000, 15, '<p><strong>Hello Kitty Sandal 2</strong></p>\r\n<p>Spesifikasi :- Terbuat dari bahan <em>Nylex</em><br />- Ukuran 35-40</p>', 'B0046.helkitsan.jpg', 'K012'),
('B0047', 'Hello Kitty Sandal 3', 27000, 45000, 10, '<p><strong>Hello Kitty Sandal 3</strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan <em>Yelvo</em><br />- Ukuran 36-40</p>', 'B0047.helkitsan1.JPG', 'K012'),
('B0048', 'Hello Kitty Sandal 4', 30000, 48000, 12, '<p><strong>Hello Kitty Sandal 4</strong></p>\r\n<p>Spesifikasi&nbsp; :<br />- Terbuat dari bahan <em>Yelvo</em><br />- Ukuran 35-40</p>', 'B0048.helkitsan2.jpg', 'K012'),
('B0049', 'Hello Kitty Sandal 5', 30000, 45000, 10, '<p><strong>Hello Kitty Sandal 5</strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan <em>Rasfur</em><br />- Ukuran 38-40</p>', 'B0049.helkitsan3.jpeg', 'K012'),
('B0050', 'Hello Kitty Sandal 6', 25000, 40000, 20, '<p><strong>Hello Kitty Sandal 6</strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan <em>Snail</em><br />- Ukuran 38-40<br />- Tersedia dalam warna pink, ungu, merah dan biru</p>', 'B0050.helkitsan4.jpg', 'K012'),
('B0051', 'Tas Hello Kitty Slempang', 15000, 45000, 10, '<p><strong>Tas Hello Kitty Slempang</strong></p>\r\n<p>Spesifikasi :- Terbuat dari bahan <em>Yelvo</em> lembut<br />- Ukuran 30cm<br /><br /></p>', 'B0051.heltas.jpg', 'K015'),
('B0052', 'Tas Gendong Hello Kitty', 30000, 60000, 25, '<p><strong>Tas Gendong Hello Kitty</strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan <em>Yelvo<br />- </em>Ukuran 30x50cm</p>', 'B0052.heltas1.jpg', 'K015'),
('B0053', 'Tas Gendong Hello Kitty 2', 35000, 65000, 10, '<p><strong>Tas Gendong Hello Kitty 2</strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dari campuran bahan <em>Yelvo</em> dan <em>Nylex</em><em><br />-</em> Ukuran 30x50cm</p>', 'B0053.heltas2.jpg', 'K015'),
('B0054', 'Kerropi Nanas', 20000, 35000, 8, '<p><strong>Kerropi Nanas</strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan <em>Rasfur</em> lembut dan empuk<br />- Ukuran 20cm</p>', 'B0054.kerban.JPG', 'K006'),
('B0055', 'Bantal Keroppi', 20000, 30000, 5, '<p><strong>Bantal Keroppi</strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan <em>rasfur </em><br />- Ukuran 20x20cm</p>', 'B0055.kerban1.JPG', 'K011'),
('B0056', 'Banbul Keroppi', 20000, 35000, 5, '<p><strong>Banbul Keroppi</strong><br />Spesifikasi :<br />- Terbuat dari bahan <em>Snail</em><em><br />- </em>Ukuran 25cm</p>', 'B0056.kerban3.jpg', 'K011'),
('B0057', 'Tas Gendong Keroppi', 30000, 45000, 10, '<p><strong>Tas Gendong Keroppi</strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dr bahan <em>Yelvo<br />- </em>Ukuran 40cm</p>', 'B0057.kertas.jpg', 'K015'),
('B0058', 'Love1', 20000, 35000, 6, '<p><strong>Love1</strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan <em>Yelvo</em><br />- Ukuran 30cm</p>', 'B0058.love.jpg', 'K014'),
('B0059', 'Love2', 30000, 50000, 10, '<p><strong>Love2</strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dari campuran bahan <em>Rasfur</em> dan <em>Yelvo</em>- Ukuran 30cm</p>', 'B0059.love1.jpg', 'K014'),
('B0060', 'Love3', 25000, 45000, 12, '<p><strong>Love3</strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan <em>Snail</em> dan <em>Yelvo</em><br />-Ukuran 30 cm</p>', 'B0060.love3.jpg', 'K014'),
('B0061', 'Love Hello Kitty', 20000, 35000, 4, '<p><strong>Love Hello Kitty</strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan <em>Yelvo</em><em><br />- </em>Ukuran 25cm</p>', 'B0061.lovekit.jpg', 'K005'),
('B0062', 'Mickey & Minnie', 45000, 85000, 5, '<p><strong>Mickey &amp; Minnie</strong><br />Spesifikasi :<br />- Terbuat dari bahan <em>Nylex</em><br />- Ukuran 40cm, 2pieces</p>', 'B0062.mic.jpg', 'K013'),
('B0063', 'Mickey & Minnie 2', 48000, 80000, 4, '<p><strong>Mickey &amp; Minnie 2</strong><br />Spesifikasi :<br />- Terbuat dari bahan <em>Nylex</em><br />- Ukuran 35cm</p>', 'B0063.mic1.jpg', 'K013'),
('B0064', 'Mickey & Minnie 3', 40000, 80000, 8, '<p><strong>Mickey &amp; Minnie 3<br /><br /></strong>Spesifikasi :<br />- Terbuat dari bahan Yelvo<br />- Ukuran 20cm, 2pieces</p>', 'B0064.mic2.jpg', 'K013'),
('B0065', 'Mickey & Minnie 4', 42000, 89000, 3, '<p><strong>Mickey &amp; Minnie 4</strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan Yelvo dan Nylex<br />- Ukuran 40cm, 2 pieces</p>', 'B0065.mic3.jpg', 'K013'),
('B0066', 'Mickey Mouse', 30000, 35000, 6, '<p><strong>Mickey Mouse </strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dari Bahan Yelvo<br />- Ukuran 20cm</p>', 'B0066.mic4.jpg', 'K013'),
('B0067', 'Minnie Mouse', 30000, 35000, 5, '<p><strong>Minnie Mouse </strong></p>\r\n<p>Sspesifikasi :<br />- Terbuat dari bahan Yelvo<br />- Ukuran 20cm</p>', 'B0067.mic5.jpg', 'K013'),
('B0068', 'Minions', 30000, 42000, 8, '<p><strong>Minions</strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan Nylex- Ukuran 40cm</p>', 'B0068.mini.jpg', 'K019'),
('B0069', 'Minions 2', 35000, 45000, 5, '<p><strong>Minions 2</strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan <em>Yelvo</em><br />- Ukuran 45cm</p>', 'B0069.mini1.jpg', 'K019'),
('B0070', 'Boneka Monyet', 40000, 65000, 3, '<p><strong>Boneka Monyet</strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan <em>Yelvo</em><br />-<em> </em>Ukuran 30 cm</p>', 'B0070.monyet.JPG', 'K002'),
('B0071', 'Boneka Burung Hantu', 32000, 60000, 4, '<p><strong>Boneka Burung Hantu</strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan <em>Yelvo</em> <br />- Ukuran 30 cm</p>', 'B0071.owl.jpg', 'K002'),
('B0072', 'Boneka Burung Hantu 2', 30000, 65000, 3, '<p><strong>Boneka Burung Hantu 2 </strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan <em>Yelvo</em><br />- Ukuran 30cm</p>', 'B0072.owl1.jpg', 'K002'),
('B0073', 'Boneka Babi', 25000, 40000, 4, '<p><strong>Boneka Babi</strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan <em>Rasfur</em><br />- Ukuran 25cm</p>', 'B0073.pig.jpg', 'K002'),
('B0074', 'Boneka Rillakuma', 30000, 45000, 15, '<p><strong>Boneka Rillakuma</strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan Velboa<br />- Tersedia dalam 3 ukuran kecil 25000, sedang 30000, besar 45000</p>', 'B0074.rill.jpg', 'K004'),
('B0075', 'Rillakuma Dress', 30000, 54000, 8, '<p><strong>Rillakuma dress<br /></strong>Spesifikasi :<br />- Terbuat dari bahan <em>Yelvo</em><br />- Ukuran 20cm<br />- 2 pieces</p>', 'B0075.rill1.jpg', 'K004'),
('B0076', 'Boneka Rillakuma Lucu', 35000, 45000, 13, '<p><strong>Boneka Rillakuma Lucu<br /></strong>Spesifikasi :<br />- Terbuat dari bahan <em>Yelvo</em><br />- Ukuran 25cm</p>', 'B0076.rill2.jpg', 'K004'),
('B0077', 'Rillakuma Sailor Dress', 46000, 85000, 15, '<p><strong>Rillakuma Sailor dress<br /></strong>Spesifikasi :<br />- Terbuat dari bahan <em>Yelvo</em><br />- Ukuran 20cm</p>', 'B0077.rill3.jpg', 'K004'),
('B0078', 'Rillakuma Lucu', 30000, 45000, 14, '<p><strong>Rillakuma Lucu</strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan <em>Yelvo</em><br />- ukuran 2ocm</p>', 'B0078.rill4.jpg', 'K004'),
('B0079', 'Boneka Spongebob', 35000, 53000, 9, '<p><strong>Boneka Spongebob<br /></strong>Spesifikasi :<br />- Terbuat dari bahan <em>Yelvo</em><br />- Ukuran 30x30cm</p>', 'B0079.sp2.jpg', 'K020'),
('B0080', 'Stitch Hug Me', 20000, 35000, 18, '<p><strong>Stitch Hug Me<br /></strong>Spesifikasi :<br />- Terbuat dari bahan Yelvo<br />- Ukuran 25cm</p>', 'B0080.st.jpg', 'K009'),
('B0081', 'Stitch', 22000, 36000, 7, '<p><strong>Stitch</strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan <em>Yelvo<br />- </em>Ukuran 20 cm</p>', 'B0081.st1.jpg', 'K009'),
('B0082', 'Stitch Hawaii', 28000, 44000, 9, '<p><strong>Stitch Hawaii</strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan <em>Yelvo<br />- </em>Ukuran 20 cm</p>', 'B0082.st2.jpg', 'K009'),
('B0083', 'Stitch Lucu', 25000, 46500, 10, '<p><strong>Stitch Lucu</strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan <em>Yelvo</em><br />- Ukuran 25cm</p>', 'B0083.st3.jpg', 'K009'),
('B0084', 'Bantal Stitch', 40000, 76000, 11, '<p><strong>Bantal Stitch</strong> bantal lucu dengan aksen kuping stitch yg bikin gemes</p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan <em>Yelvo</em> lembut<br />- Ukuran 60x40cm</p>', 'B0084.stitchban.jpg', 'K011'),
('B0085', 'Big Teddy ', 65000, 120000, 3, '<p><strong>Big Teddy</strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan <em>Rasfur</em> halus<br />- Ukuran 70cm</p>', 'B0085.tedybig.jpg', 'K008'),
('B0086', 'Teddy Hijau', 60000, 90000, 4, '<p><strong>Teddy Hijau</strong></p>\r\n<p>Spesifikasi : <br />- Terbuat dari bhan <em>Rasfur</em> dan <em>Nylex</em><br />- Ukuran 60cm</p>', 'B0086.tedybig1.png', 'K008'),
('B0087', 'Teddy Pink', 50000, 85000, 5, '<p><strong>Teddy Pink</strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan <em>Rasfur</em><br />- Ukuran 60cm</p>', 'B0087.tedybig2.jpg', 'K008'),
('B0088', 'Boneka Unta', 30000, 45000, 6, '<p><strong>Boneka Unta </strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan <em>Yelvo</em> dan sedikit <em>rasfur</em><br />- Ukuran 25cm</p>', 'B0088.unta.JPG', 'K002'),
('B0089', 'Boneka Anjing With Love', 25000, 35000, 13, '<p><strong>Boneka Anjing With Love</strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan <em>Rasfur</em> lembut<br />- Ukuran 25cm</p>', 'B0089.an.jpg', 'K002'),
('B0090', 'Boneka Anjing Besar', 45000, 75000, 20, '<p><strong>Boneka Anjing Besar</strong></p>\r\n<p>Spesifikasi : <br />- Terbuat dari bahan <em>Rasfur</em> lembut<br />- Ukuran 60cm</p>', 'B0090.an1.JPG', 'K002'),
('B0091', 'Boneka Ayam Chicken Little', 30000, 55000, 9, '<p><strong>Boneka Ayam Chicken Little</strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan <em>Rasfur</em> pendek dan halus<br />- Ukuran 25cm</p>', 'B0091.ayam.jpg', 'K002'),
('B0092', 'Boneka Ayam Chubby', 35000, 58000, 8, '<p><strong>Boneka Ayam Chubby</strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan <em>Yelvo</em><br />-Ukuran 20 cm</p>', 'B0092.ayam1.jpg', 'K002'),
('B0093', 'Boneka Bebek Sedang', 30000, 50000, 4, '<p><strong>Boneka Bebek Sedang</strong></p>\r\n<p>Spesifikasi :- Terbuat dari bahan <em>Yelvo</em> dan <em>Nylex</em><br /><em>-</em> Ukuran 50cm</p>', 'B0093.beb.jpg', 'K002'),
('B0094', 'Boneka Jerapah Imut', 20000, 35000, 15, '<p><strong>Boneka Jerapah Imut</strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan Yelvo dan sedikit rasfur<br />- Tinggi 30cm</p>', 'B0094.jer.jpg', 'K002'),
('B0095', 'Boneka Jerapah Super Imut', 15000, 40000, 20, '<p><strong>Boneka Jerapah Super Imut</strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan <em>Yelvo</em>- Ukuran 15cm<br />- Tersedia dalam variasi warna hijau-merah, pink-ungu, ungu-pink, kuning-coklat, pink-hijau, biru-biru tua</p>', 'B0095.jer2.jpg', 'K002'),
('B0096', 'Matras Angrybird', 250000, 320000, 10, '<p><strong>Matras Angrybird</strong><br />Spesifikasi :<br />ukuran untuk 1 orng = 1 x 2.5 mtr<br />bahan velboa dacron = halus, lembut, tidak kempes dan adem<br />tebal 15cm</p>', 'B0096.kasbonang.jpg', 'K021'),
('B0097', 'Matras Cars', 300000, 375000, 8, '<p><strong>Matras Cars</strong></p>\r\n<p>Spesifikasi :<br />ukuran untuk 1 orng = 1 x 2.5 mtr<br />bahan velboa dacron = halus, lembut, tidak kempes dan adem<br />tebal 15cm</p>', 'B0097.kasbonmo.jpg', 'K021'),
('B0098', 'Matras Pooh', 250000, 300000, 4, '<p><strong>Matras Pooh</strong></p>\r\n<p>Spesifikasi :<br />ukuran untuk 1 orng = 1 x 2.5 mtr<br />bahan velboa yang halus dan lembut<br />tinggi 15 cm</p>', 'B0098.kasbonpo.jpg', 'K021'),
('B0099', 'Matras Rillakuma', 220000, 285000, 3, '<p><strong>Matras Rillakuma </strong></p>\r\n<p>Spesifikasi:<br />ukuran untuk 1 orng = 1 x 2.5 mtr<br />bahan velboa yang halus, lembut, tidak kempes<br />tinggi 20cm</p>', 'B0099.kasbonril.jpg', 'K004'),
('B0100', 'Matras Totoro', 350000, 420000, 6, '<p><strong>Matras Totoro</strong></p>\r\n<p>Spesifikasi :<br />matras boneka +selimut +bantal kecil<br />ukuran untuk 1 orng = 1 x 2.5 mtr<br />ukuran untuk 2 orang = 2 x 2.5 mtr<br />bahan verboa dacron = halus, lembut, tidak kempes dan adem<br />tebal 25cm<br />selimut bisa di lepas pasang dan ada bantalnya</p>', 'B0100.kasbonto.jpg', 'K021'),
('B0101', 'Matras Totoro Coklat', 250000, 330000, 3, '<p><strong>Matras Totoro Coklat</strong></p>\r\n<p>Spesfikasi: <br />ukuran untuk 1 orng = 1 x 2.5 mtr<br />bahan velboa halus, lembut, tidak kempes dan adem<br />tebal 15cm</p>', 'B0101.kasbonto1.jpg', 'K021'),
('B0102', 'Mr. Krab Rajutan', 20000, 35000, 7, '<p><strong>MR. Krab Rajutan</strong></p>\r\n<p>Spesifikasi :<br />- Boneka dibuat dengan cara dirajut<br />- Ukuran 15cm</p>', 'B0102.krab.jpg', 'K020'),
('B0103', 'Boneka Kucing Pink', 35000, 45000, 8, '<p><strong>Boneka Kucing Pink</strong><br />&nbsp;Spesifikasi :<br />- Terbuat dari bahan Yelvo dan sedikit Rasfur<br />- Ukuran 25cm</p>', 'B0103.ku1.JPG', 'K002'),
('B0104', 'Kucing Imut', 30000, 37500, 10, '<p><strong>Kucing Imut </strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan yelvo halus<br />- Ukuran 25cm</p>', 'B0104.ku2.jpg', 'K002'),
('B0105', 'Kucing Hitam Putih', 30000, 38000, 10, '<p><strong>Kucing Hitam Putih<br /></strong>Spesifikasi :<br />- Terbuat dari bahan yelvo<br />- Ukuran 25cm</p>', 'B0105.kuc.jpg', 'K002'),
('B0106', 'Ikan Nemo', 20000, 30000, 8, '<p><strong>Nemo</strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan Nylex<br />- Ukuran 30cm</p>', 'B0106.ne.jpg', 'K002'),
('B0107', 'Ikan Paus Besar', 65000, 135000, 3, '<p><strong>Paus Besar </strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan Yelvo<br />- Ukuran 1m</p>', 'B0107.ne1.gif', 'K002'),
('B0108', 'Ikan Warna-warni', 25000, 40000, 4, '<p><strong>Ikan Warna-Warni</strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan rasfur pendek<br />- Ukuran 40cm</p>', 'B0108.ne2.JPG', 'K002'),
('B0109', 'Gantungan Patrick', 70000, 12500, 25, '<p><strong>Gantungan Patrick</strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan Yelvo<br />- Ukuran 10cm</p>', 'B0109.pat.jpg', 'K017'),
('B0110', 'Patrick Star', 30000, 45000, 12, '<p><strong>Patrick Star</strong></p>\r\n<p>Spesifikasi :- Terbuat dari bahan Yelvo halus<br />- Ukuran 25cm</p>', 'B0110.pat1.jpg', 'K020'),
('B0111', 'Piglet', 20000, 30000, 8, '<p><strong>Piglet </strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan Yelvo<br />- Ukuran 25cm</p>', 'B0111.pig.jpg', 'K022'),
('B0113', 'Pooh Besar', 50000, 85000, 4, '<p><strong>Pooh Besar</strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan Yelvo<br />- Ukuran 60cm</p>', 'B0113.po.jpg', 'K022'),
('B0114', 'Pooh Sedang', 45000, 65000, 6, '<p><strong>Pooh Sedang </strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan Yelvo<br />- Ukuran 50cm</p>', 'B0114.po1.JPG', 'K022'),
('B0115', 'Kelinci Lucu', 20000, 35000, 9, '<p><strong>Kelinci Lucu </strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan Yelvo halus<br />- Ukuran 20cm</p>', 'B0115.rab.jpg', 'K002'),
('B0116', 'Kelinci Imut', 22000, 40000, 16, '<p><strong>Kelinci Imut </strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan Rasfur<br />- Uukuran 20cm</p>', 'B0116.rab1.jpg', 'K002'),
('B0117', 'Boneka Tiger', 40000, 75000, 10, '<p><strong>Boneka Tiger</strong></p>\r\n<p>Spesifikasi :<br />- Terbuat dari bahan rasfur pendek yang halus<br />- Ukuran 60cm</p>', 'B0117.tig.JPG', 'K022');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kd_kategori` char(4) NOT NULL,
  `nm_kategori` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kd_kategori`, `nm_kategori`) VALUES
('K002', 'Boneka Binatang'),
('K003', 'Boneka Doraemon'),
('K004', 'Boneka Rillakuma'),
('K005', 'Boneka  Hello Kitty'),
('K006', 'Boneka Keroppi'),
('K021', 'Boneka Matras'),
('K008', 'Boneka Teddy Bear'),
('K009', 'Boneka Stitch'),
('K022', 'Boneka Pooh'),
('K011', 'Boneka Bantal'),
('K012', 'Boneka Sandal'),
('K013', 'Boneka Mickey Mouse'),
('K014', 'Boneka Love'),
('K015', 'Boneka Tas'),
('K016', 'Boneka Kursi'),
('K017', 'Boneka Gantungan Kunci'),
('K018', 'Boneka Big Hero'),
('K019', 'Boneka Minions'),
('K020', 'Boneka Spongebob');

-- --------------------------------------------------------

--
-- Table structure for table `konfirmasi`
--

CREATE TABLE `konfirmasi` (
  `id` int(4) NOT NULL,
  `no_pemesanan` varchar(8) NOT NULL,
  `nm_pelanggan` varchar(100) NOT NULL,
  `jumlah_transfer` int(12) NOT NULL,
  `keterangan` text NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konfirmasi`
--

INSERT INTO `konfirmasi` (`id`, `no_pemesanan`, `nm_pelanggan`, `jumlah_transfer`, `keterangan`, `tanggal`) VALUES
(10, 'PS000014', 'Dicsr', 1200000, 'Baik', '2016-05-19'),
(9, '131', 'taylor', 75131, 'Sudah saya transfer ke No.Rek. Mandiri, saya tunggu barangnya yaa', '2015-05-26');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `kd_pelanggan` char(6) NOT NULL,
  `nm_pelanggan` varchar(100) NOT NULL,
  `kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `tgl_daftar` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`kd_pelanggan`, `nm_pelanggan`, `kelamin`, `email`, `no_telepon`, `username`, `password`, `tgl_daftar`) VALUES
('P00001', 'Indah Indriyanna', 'Perempuan', 'indah_say@yahoo.com', '0819123412', 'indah', 'f3385c508ce54d577fd205a1b2ecdfb7', '2014-03-03'),
('P00002', 'Septi Suhesti', 'Perempuan', 'septi_hesti@yahoo.com', '0819234512', 'septi', 'd58d8a16aa666d48fbcc30bd3217fb17', '2014-03-03'),
('P00003', 'Fitria Prasetiawati', 'Perempuan', 'fitria_wati@yahoo.com', '0852111122222', 'fitria', 'ef208a5dfcfc3ea9941d7a6c43841784', '2014-03-03'),
('P00004', 'Dion Alfantinus', 'Laki-laki', 'dion_alfa@yahoo.com', '08219999199', 'dion', '982c500a206551c665f746cc9e77a961', '2014-03-03'),
('P00005', 'Asyifa Indriana', 'Perempuan', 'asyifa@gmail.com', '085222111000', 'asyifa', 'e42c130e4e8dfb6a5c95260846a1a17c', '2014-03-04'),
('P00006', 'taylor', 'Perempuan', 'sarrahsiti@gmail.com', '085759595773', 'taylor', '7d8bc5f1a8d3787d06ef11c97d4655df', '2015-05-23');

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `no_pemesanan` char(8) NOT NULL,
  `kd_pelanggan` char(6) NOT NULL,
  `tgl_pemesanan` date NOT NULL DEFAULT '0000-00-00',
  `nama_penerima` varchar(60) NOT NULL,
  `alamat_lengkap` varchar(200) NOT NULL,
  `kd_provinsi` char(3) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `kode_pos` varchar(6) NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `status_bayar` enum('Pesan','Lunas','Batal') NOT NULL DEFAULT 'Pesan'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`no_pemesanan`, `kd_pelanggan`, `tgl_pemesanan`, `nama_penerima`, `alamat_lengkap`, `kd_provinsi`, `kota`, `kode_pos`, `no_telepon`, `status_bayar`) VALUES
('PS000001', 'P00001', '2014-03-04', 'Indah Indriyanna', 'Jl. Margahayu, Way Jepara, Lampung Timur', 'P17', 'Sukadana', '12345', '081911111111', 'Lunas'),
('PS000002', 'P00001', '2014-03-04', 'teti winarni', 'jl. palbapang no 32, sewon, bantul', 'P05', 'bantu', '55667', '08156767890', 'Lunas'),
('PS000003', 'P00003', '2014-03-04', 'Fitria Prasetiawati', 'jln. palbapang no 69, sewo, bantul', 'P05', 'Bantul', '66909', '08675987890', 'Lunas'),
('PS000004', 'P00004', '2014-03-12', 'Dion Alfantinus Markucel', 'Jl. Janti, 111, Karang Jambe, Yogyakarta', 'P05', 'Banguntapan', '55221', '081918181818', 'Lunas'),
('PS000005', 'P00003', '2014-03-12', 'Fitria Prasetiawati', 'Jl. Parangtritis, No 111, Bantul Kota, Yogyakarta', 'P05', 'Bantul', '55222', '085222111000', 'Lunas'),
('PS000006', 'P00005', '2014-03-12', 'Asyifa Indriana', 'Jl. Parangtritis, No 111, Bantul Kota, Yogyakarta', 'P05', 'Bantul', '55222', '085222111000', 'Lunas'),
('PS000007', 'P00001', '2014-03-12', 'Indah Indriyanna', 'Jl. Pramuka, Margayahu, Labuhan Ratu 1, Way Jepara', 'P17', 'Sukadana', '12345', '0819123123123', 'Lunas'),
('PS000008', 'P00002', '2014-03-12', 'Septi Suhesti', 'Jl. Suhada, Margahayu, Labuhan Ratu Baru, Way Jepara', 'P17', 'Sukadana', '34196', '085712345678', 'Lunas'),
('PS000009', 'P00003', '2014-03-12', 'Fitria Prasetiawati', 'Jl. Janti, Karang Jambe, 111, Bangungatan, Bantul', 'P05', 'Jogja', '55222', '081912345123', 'Pesan'),
('PS000010', 'P00003', '2014-04-03', 'Fitria Prasetiawati', 'Jl. Pasar Tempel, Raman Aji, Persil 1, Lampung Timur', 'P17', 'Sukadana', '12345', '081234561234', 'Pesan'),
('PS000011', 'P00006', '2015-05-23', 'sarah', 'jalan bhayangkara no.45 sukabumi', 'P02', 'sukabumi', '43122', '085759595773', 'Pesan'),
('PS000012', 'P00006', '2015-05-26', 'Sarah', 'Komplek Setukpa Polri, Sukabumi', 'P02', 'Sukabumi', '43122', '08981873131', 'Lunas'),
('PS000013', 'P00007', '2015-06-21', 'Didik', 'Jawa Barat', 'P02', 'Bandung', '12345', '1234567', 'Lunas'),
('PS000014', 'P00008', '2016-05-19', 'Dicsr', 'Jawa Barat', 'P02', 'Sukabumi', '12345', '123456789', 'Pesan');

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan_item`
--

CREATE TABLE `pemesanan_item` (
  `id` int(4) NOT NULL,
  `no_pemesanan` char(8) NOT NULL,
  `kd_barang` char(5) NOT NULL,
  `harga` int(12) NOT NULL,
  `jumlah` int(3) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemesanan_item`
--

INSERT INTO `pemesanan_item` (`id`, `no_pemesanan`, `kd_barang`, `harga`, `jumlah`) VALUES
(1, 'PS000001', 'B0002', 99000, 1),
(2, 'PS000002', 'B0004', 71000, 1),
(3, 'PS000003', 'B0001', 65000, 1),
(4, 'PS000004', 'B0001', 65000, 1),
(5, 'PS000004', 'B0002', 99000, 1),
(6, 'PS000005', 'B0001', 65000, 1),
(7, 'PS000005', 'B0003', 180000, 1),
(8, 'PS000006', 'B0005', 60000, 1),
(9, 'PS000007', 'B0007', 20000, 1),
(10, 'PS000007', 'B0006', 24000, 1),
(11, 'PS000008', 'B0007', 20000, 1),
(12, 'PS000008', 'B0006', 24000, 2),
(13, 'PS000009', 'B0010', 10000, 2),
(14, 'PS000009', 'B0006', 24000, 1),
(15, 'PS000009', 'B0005', 60000, 1),
(16, 'PS000010', 'B0009', 20000, 2),
(17, 'PS000010', 'B0001', 65000, 1),
(18, 'PS000011', 'B0009', 20000, 5),
(19, 'PS000012', 'B0001', 65000, 1),
(20, 'PS000013', 'B0001', 65000, 1),
(21, 'PS000014', 'B0001', 65000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `provinsi`
--

CREATE TABLE `provinsi` (
  `kd_provinsi` char(3) NOT NULL,
  `nm_provinsi` varchar(100) NOT NULL,
  `biaya_kirim` int(12) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provinsi`
--

INSERT INTO `provinsi` (`kd_provinsi`, `nm_provinsi`, `biaya_kirim`) VALUES
('P01', 'Jawa Tengah', 15000),
('P02', 'Jawa Barat', 10000),
('P03', 'Jawa Timur', 15000),
('P04', 'DKI Jakarta', 15000),
('P05', 'Yogyakarta, D.I', 30000),
('P06', 'Bali', 20000),
('P07', 'Bengkulu', 20000),
('P08', 'Banten', 20000),
('P09', 'Gorontalo', 35000),
('P10', 'Irian Jaya Barat', 35000),
('P11', 'Jambi', 25000),
('P12', 'Kalimantan Barat', 30000),
('P13', 'Kalimantan Tengah', 30000),
('P14', 'Kalimantan Timur', 30000),
('P15', 'Kalimantan Selatan', 30000),
('P16', 'Kepulauan Bangka Belitung', 30000),
('P17', 'Lampung', 20000),
('P18', 'Maluku', 25000),
('P19', 'Maluku Utara', 25000),
('P20', 'Aceh, D.I', 30000),
('P21', 'Nusa Tenggara Barat', 25000),
('P22', 'Nusa Tenggara Timur', 25000),
('P23', 'Papua', 35000),
('P24', 'Riau', 25000),
('P25', 'Kepulauan Riau', 25000),
('P26', 'Sulawesi Barat', 25000),
('P27', 'Sulawesi Tengah', 25000),
('P28', 'Sulawesi Tenggara', 25000),
('P29', 'Sulawesi Selatan', 25000),
('P30', 'Sulawesi Utara', 25000),
('P31', 'Sumatera Barat', 34000),
('P32', 'Sumatera Selatan', 35000);

-- --------------------------------------------------------

--
-- Table structure for table `tmp_keranjang`
--

CREATE TABLE `tmp_keranjang` (
  `id` int(5) NOT NULL,
  `kd_barang` char(5) NOT NULL,
  `harga` int(12) NOT NULL,
  `jumlah` int(3) NOT NULL DEFAULT '0',
  `tanggal` date NOT NULL DEFAULT '0000-00-00',
  `kd_pelanggan` char(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmp_keranjang`
--

INSERT INTO `tmp_keranjang` (`id`, `kd_barang`, `harga`, `jumlah`, `tanggal`, `kd_pelanggan`) VALUES
(6, '1', 0, 0, '0000-00-00', ''),
(28, 'B0009', 20000, 1, '2015-05-26', 'P00006'),
(23, 'B0001', 65000, 1, '2014-04-03', 'P00003'),
(24, 'B0009', 20000, 1, '2014-04-03', 'P00003');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kd_barang`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kd_kategori`);

--
-- Indexes for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`kd_pelanggan`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`no_pemesanan`);

--
-- Indexes for table `pemesanan_item`
--
ALTER TABLE `pemesanan_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`kd_provinsi`);

--
-- Indexes for table `tmp_keranjang`
--
ALTER TABLE `tmp_keranjang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `pemesanan_item`
--
ALTER TABLE `pemesanan_item`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `tmp_keranjang`
--
ALTER TABLE `tmp_keranjang`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

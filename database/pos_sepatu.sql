-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 17 Des 2020 pada 17.56
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.3.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos_sepatu`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akun`
--

CREATE TABLE `akun` (
  `id` int(11) NOT NULL,
  `kode_akun` int(11) NOT NULL,
  `nama_akun` varchar(100) NOT NULL,
  `c_d` enum('c','d') NOT NULL,
  `kelompok` enum('1','2') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `akun`
--

INSERT INTO `akun` (`id`, `kode_akun`, `nama_akun`, `c_d`, `kelompok`) VALUES
(3, 209, 'Penjualan', 'c', '1'),
(4, 211, 'Harga Pokok Penjualan', 'd', '2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL,
  `kode_barang` varchar(20) DEFAULT NULL,
  `barcode` varchar(20) DEFAULT NULL,
  `nama_barang` varchar(50) DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `id_satuan` int(11) DEFAULT NULL,
  `harga_beli` varchar(30) DEFAULT NULL,
  `harga_jual` varchar(30) DEFAULT NULL,
  `harga_pelanggan` int(11) DEFAULT NULL,
  `harga_toko` int(11) DEFAULT NULL,
  `harga_sales` int(11) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `kode_barang`, `barcode`, `nama_barang`, `id_kategori`, `id_satuan`, `harga_beli`, `harga_jual`, `harga_pelanggan`, `harga_toko`, `harga_sales`, `stok`, `is_active`) VALUES
(1, 'BRG-00001', '-', 'Delmonte Ketchup Saus Tomat 5,7 Kg', 4, 1, '71500', '80000', 79000, 78000, 77000, 11, 1),
(2, 'BRG-00002', '8997011700062 ', 'Bihun Jagung Padamu 175 gram ', 4, 5, '3100', '4000', 4500, 4500, 4500, 30, 1),
(3, 'BRG-00003', '8998888710536', 'Delmonte Ekstra Pedas 5,5 Kg', 4, 1, '91500', '103000', 103000, 103000, 103000, 20, 1),
(4, 'BRG-00004', '-', 'Telur 1 Kg', 4, 4, '16800', '18000', 18000, 18000, 18000, 16, 1),
(5, 'BRG-00005', '-', 'Tepung Kentang 1 Kg', 4, 4, '73000', '82000', 82000, 82000, 82000, 18, 1),
(6, 'BRG-00006', '711844110519', 'ABC Kecap Manis 6 Kg', 4, 1, '107500', '120000', 119000, 117000, 118000, 20, 1),
(7, 'BRG-00007', '8850213602001', 'Finna King Lobster 200 ml', 4, 1, '11700', '13000', 13000, 13000, 13000, 20, 1),
(8, 'BRG-00008', '8992770096142', 'Saori Saus Tiram 1000 ml', 4, 1, '39000', '42500', 42500, 42500, 42500, 20, 1),
(9, 'BRG-00009', '8993296101112', 'Tepung Cakra Kembar Premium 1Kg', 4, 1, '10000', '10500', 10500, 10500, 10500, 20, 1),
(10, 'BRG-00010', '3178990433195', 'Maizena Royal Holland 160 gram', 4, 1, '2250', '3000', 3000, 3000, 3000, 4, 1),
(11, 'BRG-00011', '711844120617', 'ABC Sambal Asli 5,7 Kg', 4, 1, '115500', '129000', 129000, 129000, 129000, 20, 1),
(12, 'BRG-00012', '089686400526', 'Indofood SamBal Pedas Manis 135 ml', 4, 1, '11700', '13000', 13000, 13000, 13000, 2, 1),
(13, 'BRG-00013', '711844154506', 'Sirup ABC Coco Pandan 485 ml', 1, 6, '18000', '20000', 20000, 20000, 20000, 2, 1),
(14, 'BRG-00014', '-', 'Abon Sapi Super 1 Kg', 3, 4, '110000', '140000', 140000, 140000, 140000, 19, 1),
(15, 'BRG-00015', '8992717900310', 'Kara Santan Bubuk 20 gram', 4, 1, '1300', '1500', 1500, 1500, 1500, 18, 1),
(16, 'BRG-00016', '8992696426528', 'Susu Nestle Carnation 495 gram', 1, 5, '10800', '12500', 12500, 12500, 12500, 20, 1),
(17, 'BRG-00016', '711844110113', 'ABC Kecap Manis 135 ml', 4, 1, '5800', '6500', 6500, 6500, 6500, 20, 1),
(18, 'BRG-00017', '711844110762', 'ABC Kecap Ekstra Pedas 135 ml', 4, 1, '7300', '8000', 8000, 8000, 8000, 20, 1),
(19, 'BRG-00018', '711844115057', 'ABC Kecap Asin 133 ml', 4, 1, '3300', '4000', 4000, 4000, 4000, 18, 1),
(20, 'BRG-00019', '711844120082', 'ABC SamBal Exstra Pedas 135 ml', 4, 1, '5850', '6500', 6500, 6500, 6500, 20, 1),
(21, 'BRG-00020', '711844120037', 'ABC SamBal Asli 135 ml', 4, 1, '5850', '6500', 6500, 6500, 6500, 20, 1),
(22, 'BRG-00021', '711844130111', 'ABC Saus Tomat 135 ml', 4, 1, '4950', '5500', 5500, 5500, 5500, 20, 1),
(23, 'BRG-00022', '711844120105', 'ABC SamBal Manis Pedas 135 ml', 4, 1, '4950', '5500', 5500, 5500, 5500, 19, 1),
(24, 'BRG-00023', '8995102707112', 'MamaSuka Hot Lava 135 ml', 4, 1, '6750', '7500', 7500, 7500, 7500, 20, 1),
(25, 'BRG-00024', '8995102707129', 'MamaSuka Hot lava 260 ml', 4, 1, '11700', '13000', 7500, 7500, 7500, 18, 1),
(26, 'BRG-00025', '711844110052', 'ABC Kecap Manis 620 ml', 4, 1, '24300', '27000', 27000, 27000, 27000, 20, 1),
(27, 'BRG-00026', '711844115033', 'ABC Kecap Asin 620 ml', 4, 1, '10800', '12000', 12000, 12000, 12000, 20, 1),
(28, 'BRG-00027', '8997024460373', 'Mc Lewis Sweet Mayonnaise 1Kg', 4, 1, '26100', '29000', 29000, 29000, 29000, 20, 1),
(29, 'BRG-00038', '089686405163', 'Indofood Fried Chicken Saset', 4, 1, '4350', '4500', 4500, 4500, 4500, 20, 1),
(30, 'BRG-00042', '8997024460021', 'Mc Lewis Chili Saus Saset 225 gram', 4, 1, '4950', '5500', 5500, 5500, 5500, 18, 1),
(31, 'BRG-00043', '8997024460595', 'Mc Lewis Tomat Saus 500 gram', 4, 1, '5850', '6500', 6500, 6500, 6500, 20, 1),
(32, 'BRG-00044', '8997024460588', 'Mc Lewis Chili Saus 500 gram', 4, 1, '6300', '7000', 7000, 7000, 7000, 20, 1),
(33, 'BRG-00049', '711844130050', 'ABC Saus Tomat 1Kg', 4, 1, '14400', '16000', 16000, 16000, 16000, 20, 1),
(34, 'BRG-00050', '711844120358', 'ABC SamBal Asli 1Kg', 4, 1, '18900', '21000', 21000, 21000, 21000, 20, 1),
(35, 'BRG-00051', '8997005571531', 'Mazzoni Saus Teriyaki 250 gram ', 4, 1, '9000', '10000', 10000, 10000, 10000, 20, 1),
(36, 'BRG-00052', '8997005571517', 'Mazzoni Saus Lada Hitam 250 gram', 4, 1, '9000', '10000', 10000, 10000, 10000, 20, 1),
(37, 'BRG-00053', '8888900700037', 'Lafonte Saus Bolognese 290 gram', 4, 1, '16200', '18000', 18000, 18000, 18000, 20, 1),
(38, 'BRG-00054', '8888900700006', 'Lafonte Saus Bolognese 315 gram', 4, 1, '16650', '18500', 18500, 18500, 18500, 18, 1),
(39, 'BRG-00055', '8888900700020', 'Lafonte Saus Hotuna 270 gram', 4, 1, '18900', '21000', 21000, 21000, 21000, 20, 1),
(40, 'BRG-00056', '8992628010139', 'Minyak Goreng Bimoli 5 Liter', 4, 1, '64000', '65000', 65000, 65000, 65000, 20, 1),
(41, 'BRG-00057', '8992826111065', 'Minyak Goreng Filma 5 Liter', 4, 1, '63000', '64000', 64000, 64000, 64000, 18, 1),
(42, 'BRG-00058', '8997002290633', 'Minyak Goreng Lavenia 5 Liter', 4, 1, '49500', '51000', 51000, 51000, 51000, 20, 1),
(43, 'BRG-00059', '8997002290671', 'Minyak Goreng Lavenia 600 ml Btl', 4, 1, '8000', '9000', 9000, 9000, 9000, 25, 1),
(44, 'BRG-00060', '8997002290749', 'Minyak Goreng Lasani 800 ml', 4, 1, '8584', '9500', 9500, 9500, 9500, 20, 1),
(45, 'BRG-00061', '8997002290312', 'Minyak Goreng Lavenia 900 ml', 4, 1, '9000', '10000', 10000, 10000, 10000, 18, 1),
(46, 'BRG-00062', '8993496106504', 'Minyak Goreng Fortune 1 Liter', 4, 1, '10000', '11000', 11000, 11000, 11000, 20, 1),
(47, 'BRG-00063', '8992753720507', 'Susu Frisisan Flag Coco Pandan 370 gram', 1, 1, '11500', '12500', 12500, 12500, 12500, 18, 1),
(48, 'BRG-00064', '8992702000018', 'Susu Indomilk Putih 370 gram', 1, 1, '8700', '9500', 9500, 9500, 9500, 20, 1),
(49, 'BRG-00065', '8992702000063', 'Susu Indomilk Coklat 370 gram', 1, 1, '8300', '9000', 9000, 9000, 9000, 18, 1),
(50, 'BRG-00066', '8993007002936', 'Susu Indofood Kremer 500 gram', 1, 1, '9000', '10000', 10000, 10000, 10000, 24, 1),
(51, 'BRG-00067', '8994094000027', 'Susu Dairy Champ 500 gram', 1, 1, '9300', '10500', 10500, 10500, 10500, 20, 1),
(52, 'BRG-00068', '8993007002967', 'Susu Indofood Tiga Sapi 500 gram', 1, 1, '9300', '10500', 10500, 10500, 10500, 20, 1),
(53, 'BRG-00069', '8993007000086', 'UHT Susu Indomilk Coklat 1000 ml', 1, 1, '14500', '16000', 16000, 16000, 16000, 20, 1),
(54, 'BRG-00070', '8993007000680', 'UHT Susu Indomilk Cream 1000 ml', 1, 1, '15000', '16500', 16500, 16500, 16500, 16, 1),
(55, 'BRG-00071', '8999898962533', 'UHT Susu Diamond Milk Cream', 1, 1, '13000', '15000', 15000, 15000, 15000, 18, 1),
(56, 'BRG-00075', '089686017755', 'Sarimi 2  Soto Koya Jeruk Nipis', 3, 1, '3800', '4500', 4500, 4500, 4500, 20, 1),
(57, 'BRG-00077', '089686010947', 'Indomie Mie Goreng', 3, 1, '2300', '3000', 3000, 3000, 3000, 20, 1),
(58, 'BRG-00078', '089686043433', 'Indomie Mie Goreng Ayam Geprek', 3, 1, '2300', '3000', 3000, 3000, 3000, 20, 1),
(59, 'BRG-00080', '1578009093', 'Aqua 250ml', 1, 6, '1500', '2500', 2500, 2500, 2500, 20, 1),
(60, 'BRG-00081', '-', 'OPP 13x27 10 Pax', 7, 7, '67500', '70500', 70500, 70500, 70500, 20, 1),
(61, 'BRG-00082', '-', 'OPP Tanpa Lem 10x10 1 Pax', 7, 7, '4500', '6000', 6000, 6000, 6000, 19, 1),
(62, 'BRG-00083', '-', 'Mika KD 1 ', 7, 1, '250', '300', 300, 300, 300, 20, 1),
(63, 'BRG-00084', '-', 'Ornamen Payung 1pcs', 8, 1, '820', '1000', 1000, 1000, 1000, 20, 1),
(64, 'BRG-00085', '-', 'Alas Tar Bulat 20/10pcs', 9, 15, '18500', '20000', 20000, 20000, 20000, 20, 1),
(65, 'BRG-00086', '-', 'Kresek Plastik', 7, 1, '200', '1000', 1000, 1000, 1000, 20, 1),
(66, 'BRG-00087', '-', 'Skincare Pemutih', 12, 1, '240000', '300000', 300000, 300000, 300000, 16, 1),
(67, 'BRG-00088', '-', 'Vitamin Rambut', 12, 1, '20000', '25000', 25000, 25000, 25000, 13, 1),
(71, 'BRG-00089', '111', '111', 4, 6, '111', '111', 111, 111, 111, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `id_cs` int(11) NOT NULL,
  `kode_cs` varchar(20) DEFAULT NULL,
  `nama_cs` varchar(100) DEFAULT NULL,
  `jenis_kelamin` varchar(20) DEFAULT NULL,
  `telp` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `jenis_cs` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`id_cs`, `kode_cs`, `nama_cs`, `jenis_kelamin`, `telp`, `email`, `alamat`, `jenis_cs`) VALUES
(1, 'CS-000001', 'Umum', 'Umum', 'Umum', 'Umum', 'Umum', 'Umum'),
(2, 'CS-000002', 'Bambang', 'Laki-Laki', '08109257094', 'bambang@gmail.com', 'Bangorejo', 'Toko'),
(6, 'CS-000002', 'Untung', 'Laki-Laki', '087367123654', 'untung12@gmail.com', 'Banyuwangi', 'Sales'),
(7, 'CS-000003', 'Bu Susiati', 'Perempuan', '082781673645', 'susiati@gmail.com', 'Rogojampi', 'Pelanggan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detil_penjualan`
--

CREATE TABLE `detil_penjualan` (
  `id_detil_jual` bigint(20) NOT NULL,
  `id_jual` int(11) DEFAULT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `kode_detil_jual` varchar(20) DEFAULT NULL,
  `diskon` int(11) DEFAULT NULL,
  `harga_item` int(11) DEFAULT NULL,
  `qty_jual` int(11) DEFAULT NULL,
  `subtotal` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detil_penjualan`
--

INSERT INTO `detil_penjualan` (`id_detil_jual`, `id_jual`, `id_barang`, `kode_detil_jual`, `diskon`, `harga_item`, `qty_jual`, `subtotal`) VALUES
(3, 114, 25, 'DJ-0000001', 0, 13000, 1, '13000'),
(4, 114, 4, 'DJ-0000002', 0, 18000, 2, '36000'),
(5, 115, 45, 'DJ-0000003', 0, 10000, 2, '20000'),
(6, 115, 49, 'DJ-0000004', 0, 9000, 2, '18000'),
(7, 115, 1, 'DJ-0000005', 0, 77000, 3, '231000'),
(10, 117, 41, 'DJ-0000008', 0, 64000, 1, '64000'),
(11, 118, 41, 'DJ-0000009', 0, 64000, 1, '64000'),
(12, 118, 4, 'DJ-0000010', 0, 18000, 2, '36000'),
(38, 120, 23, 'DJ-0000011', 0, 5500, 1, '5500'),
(39, 120, 54, 'DJ-0000012', 0, 16500, 2, '33000'),
(44, 123, 1, 'DJ-0000013', 0, 80000, 2, '160000'),
(45, 124, 4, 'DJ-0000014', 0, 18000, 1, '18000'),
(55, 158, 4, 'DJ-0000015', 0, 18000, 1, '18000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurnal_umum`
--

CREATE TABLE `jurnal_umum` (
  `id` int(11) NOT NULL,
  `id_jual` int(11) NOT NULL,
  `id_akun` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `nominal` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jurnal_umum`
--

INSERT INTO `jurnal_umum` (`id`, `id_jual`, `id_akun`, `tgl`, `nominal`) VALUES
(3, 158, 3, '2020-12-17', '18000'),
(4, 158, 4, '2020-12-17', '16800'),
(5, 153, 3, '2020-12-18', '18000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `kategori` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`) VALUES
(1, 'Minuman'),
(3, 'Makanan'),
(4, 'Bahan Produksi'),
(7, 'Plastik'),
(8, 'Mainan'),
(9, 'Perabot'),
(12, 'Kecantikan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `id_jual` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_cs` int(11) DEFAULT NULL,
  `kode_jual` varchar(20) DEFAULT NULL,
  `invoice` varchar(50) DEFAULT NULL,
  `method` varchar(30) DEFAULT NULL,
  `bayar` int(11) DEFAULT NULL,
  `kembali` int(11) DEFAULT NULL,
  `ppn` int(11) DEFAULT NULL,
  `tgl` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`id_jual`, `id_user`, `id_cs`, `kode_jual`, `invoice`, `method`, `bayar`, `kembali`, `ppn`, `tgl`) VALUES
(114, 1, 1, 'KJ-0000001', 'POS20200727205538', 'Cash', 100000, 46100, 4900, '2020-07-26 20:55:38'),
(115, 1, 6, 'KJ-0000002', 'POS20200727215651', 'Cash', 300000, 4100, 26900, '2020-07-27 21:56:51'),
(117, 1, 2, 'KJ-0000004', 'POS20200728203357', 'Cash', 100000, 36000, 0, '2020-07-28 20:33:57'),
(118, 1, 7, 'KJ-0000005', 'POS20200728210021', 'Kredit', 80000, 0, 0, '2020-07-28 21:00:21'),
(119, 1, 1, 'KJ-0000006', 'POS20200730144657', 'Cash', 10000, 0, 0, '2020-07-30 14:46:57'),
(120, 1, 2, 'KJ-0000007', 'POS20200731203519', 'Cash', 50000, 11500, 0, '2020-07-31 20:35:19'),
(123, 1, 1, 'KJ-0000009', 'POS20201209214849', 'Cash', 200000, 40000, 0, '2020-12-09 21:48:49'),
(124, 1, 2, 'KJ-0000010', 'POS20201210203214', 'Cash', 20000, 200, 1800, '2020-12-10 20:32:14'),
(158, 1, 1, 'KJ-0000011', 'POS20201217214407', 'Cash', 18000, 0, 0, '2020-12-17 21:44:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `profil_perusahaan`
--

CREATE TABLE `profil_perusahaan` (
  `id_toko` int(11) NOT NULL,
  `nama_toko` varchar(100) DEFAULT NULL,
  `alamat_toko` varchar(100) DEFAULT NULL,
  `telp_toko` varchar(15) DEFAULT NULL,
  `fax_toko` varchar(15) DEFAULT NULL,
  `email_toko` varchar(50) DEFAULT NULL,
  `website_toko` varchar(50) DEFAULT NULL,
  `logo_toko` varchar(50) DEFAULT NULL,
  `IG` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `profil_perusahaan`
--

INSERT INTO `profil_perusahaan` (`id_toko`, `nama_toko`, `alamat_toko`, `telp_toko`, `fax_toko`, `email_toko`, `website_toko`, `logo_toko`, `IG`) VALUES
(1, 'Toko Barokah', 'Jln. Piere Tendean, Banyuwangi', '085674893092', '(0333) 094837', 'barokah@gmail.com', 'www.barokah.com', 'cart.png', 'brusedbykarin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `satuan`
--

CREATE TABLE `satuan` (
  `id_satuan` int(11) NOT NULL,
  `satuan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `satuan`
--

INSERT INTO `satuan` (`id_satuan`, `satuan`) VALUES
(1, 'PCS'),
(4, 'Kg'),
(5, 'Gr'),
(6, 'BTL'),
(7, 'SLP'),
(9, 'Liter'),
(15, 'Pax'),
(18, 'Lusin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `stok`
--

CREATE TABLE `stok` (
  `id_stok` bigint(20) NOT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `jml` int(11) DEFAULT NULL,
  `nilai` int(11) DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `jenis` varchar(50) DEFAULT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `stok`
--

INSERT INTO `stok` (`id_stok`, `id_barang`, `jml`, `nilai`, `tanggal`, `jenis`, `keterangan`) VALUES
(9, 1, 1, 71500, '2020-12-09 15:47:21', 'Stok Masuk', 'sdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `password` varchar(225) DEFAULT NULL,
  `tipe` varchar(30) DEFAULT NULL,
  `alamat_user` varchar(100) DEFAULT NULL,
  `telp_user` varchar(15) DEFAULT NULL,
  `email_user` varchar(50) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `nama_lengkap`, `password`, `tipe`, `alamat_user`, `telp_user`, `email_user`, `is_active`) VALUES
(1, 'admin', 'Administrator', '$2y$10$oagi0l6Q3v.bwPCCVgOQXOnWX1FPLAvIiIfMJwIrJjk4212ACLN7.', 'Administrator', 'Banyuwagi', '085647382748', 'admin@gmail.com', 1),
(3, 'kasir', 'Kasir', '$2y$10$nWBEdyFeReNQtbr4lGUWmuN9SXKRtpqdog2CtXPFcmqCzb6p5Bmp6', 'Kasir', 'Banyuwangi', '082236578566', 'kasir@gmail.com', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`),
  ADD KEY `ID_KATEGORI` (`id_kategori`),
  ADD KEY `ID_SATUAN` (`id_satuan`);

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_cs`);

--
-- Indeks untuk tabel `detil_penjualan`
--
ALTER TABLE `detil_penjualan`
  ADD PRIMARY KEY (`id_detil_jual`),
  ADD KEY `FK_BARANG_PENJUALAN_DETIL` (`id_barang`),
  ADD KEY `FK_PENJUALAN_DETIL` (`id_jual`);

--
-- Indeks untuk tabel `jurnal_umum`
--
ALTER TABLE `jurnal_umum`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_akun` (`id_akun`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_jual`),
  ADD KEY `FK_MELAYANI` (`id_user`),
  ADD KEY `FK_TRANSAKSI` (`id_cs`);

--
-- Indeks untuk tabel `profil_perusahaan`
--
ALTER TABLE `profil_perusahaan`
  ADD PRIMARY KEY (`id_toko`);

--
-- Indeks untuk tabel `satuan`
--
ALTER TABLE `satuan`
  ADD PRIMARY KEY (`id_satuan`);

--
-- Indeks untuk tabel `stok`
--
ALTER TABLE `stok`
  ADD PRIMARY KEY (`id_stok`),
  ADD KEY `id_barang` (`id_barang`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `akun`
--
ALTER TABLE `akun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT untuk tabel `customer`
--
ALTER TABLE `customer`
  MODIFY `id_cs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `detil_penjualan`
--
ALTER TABLE `detil_penjualan`
  MODIFY `id_detil_jual` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT untuk tabel `jurnal_umum`
--
ALTER TABLE `jurnal_umum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_jual` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT untuk tabel `profil_perusahaan`
--
ALTER TABLE `profil_perusahaan`
  MODIFY `id_toko` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `satuan`
--
ALTER TABLE `satuan`
  MODIFY `id_satuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `stok`
--
ALTER TABLE `stok`
  MODIFY `id_stok` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `KATEGORI_BARANG` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `SATUAN_BARANG` FOREIGN KEY (`id_satuan`) REFERENCES `satuan` (`id_satuan`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detil_penjualan`
--
ALTER TABLE `detil_penjualan`
  ADD CONSTRAINT `FK_BARANG_PENJUALAN_DETIL` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`),
  ADD CONSTRAINT `FK_PENJUALAN_DETIL` FOREIGN KEY (`id_jual`) REFERENCES `penjualan` (`id_jual`);

--
-- Ketidakleluasaan untuk tabel `jurnal_umum`
--
ALTER TABLE `jurnal_umum`
  ADD CONSTRAINT `jurnal_umum_ibfk_1` FOREIGN KEY (`id_akun`) REFERENCES `akun` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `stok`
--
ALTER TABLE `stok`
  ADD CONSTRAINT `stok_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

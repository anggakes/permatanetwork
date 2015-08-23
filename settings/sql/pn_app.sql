-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2015 at 05:25 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pn_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `activation_member_logs`
--

CREATE TABLE IF NOT EXISTS `activation_member_logs` (
`id` int(10) unsigned NOT NULL,
  `id_member` int(10) unsigned NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tahap_aktivasi` enum('voucher','transfer') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activation_member_logs`
--

INSERT INTO `activation_member_logs` (`id`, `id_member`, `keterangan`, `created_at`, `tahap_aktivasi`) VALUES
(16, 8, 'Aktivasi dengan Voucher b971-80bd-6b97-4f4d', '2015-07-01 08:14:34', 'voucher'),
(17, 8, 'Aktifasi selesai transfer referral', '2015-07-01 09:02:02', 'transfer'),
(18, 10, 'Aktivasi dengan Voucher 0069-1bc7-58ac-cad6', '2015-07-01 09:09:23', 'voucher');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`id` int(10) unsigned NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_login` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `super_admin` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `username`, `nama`, `password`, `updated_at`, `created_at`, `last_login`, `super_admin`) VALUES
(1, 'admin@admin', 'admin', 'admin', '$2y$10$T44VIlj2nuZg8ZWsCAzZhevADpzQ2RwUq5N6redAtwNWwia7P8ZNC', '2015-07-03 10:13:16', '2015-06-27 17:00:00', '2015-07-03 10:13:16', 1),
(2, 'isa@isa.com', 'isa9x', 'Muhammad Isa', '$2y$10$nniOwKD3/Lyluf6oCcEziuka73e45Osdk0hK9e6lYPWf/gKJw/5o2', '2015-07-01 09:14:25', '2015-07-01 09:13:34', '2015-07-01 09:14:25', 0),
(3, 'isa1@isa.com', 'isa1x', 'Muhammad Isa', '$2y$10$Xdiz3ZbDogQiw3OQ5yMNqur09zLpjzar0EowzPj9RG1ARBf/I0Pji', '2015-07-03 07:26:31', '2015-07-03 07:26:10', '2015-07-03 07:26:31', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE IF NOT EXISTS `bank` (
`id` int(10) unsigned NOT NULL,
  `nama_bank` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`id`, `nama_bank`) VALUES
(1, 'BCA'),
(2, 'Bank Mandiri'),
(3, 'Bank Mega'),
(4, 'BNI'),
(5, 'Bank CIMB Niaga'),
(6, 'BRI'),
(7, 'Bank Permata'),
(8, 'BII'),
(9, 'Bank Panin'),
(10, 'BTN'),
(11, 'Bank Danamon');

-- --------------------------------------------------------

--
-- Table structure for table `captcha`
--

CREATE TABLE IF NOT EXISTS `captcha` (
`captcha_id` int(10) unsigned NOT NULL,
  `captcha_time` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(16) DEFAULT NULL,
  `word` varchar(20) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=159 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `captcha`
--

INSERT INTO `captcha` (`captcha_id`, `captcha_time`, `ip_address`, `word`) VALUES
(46, 1435471582, '::1', '93OJffuE'),
(45, 1435471340, '::1', 'legTCm1S'),
(44, 1435471337, '::1', 'AOvoSJTM'),
(43, 1435471331, '::1', 'J5oCqsSY'),
(42, 1435471314, '::1', 'ofzwETnk'),
(41, 1435471298, '::1', 'VY3nCaLK'),
(40, 1435471230, '::1', 'nioMpkyZ'),
(39, 1435471013, '::1', '0Bwwfpbm'),
(38, 1435471010, '::1', 'ezd3WIkv'),
(37, 1435470686, '::1', 'nny7ZcWU'),
(36, 1435470655, '::1', '987bZZsR'),
(35, 1435470400, '::1', '8SZJMKBO'),
(34, 1435469587, '::1', 'gX5i35fQ'),
(33, 1435468797, '::1', 'UHGj7JYf'),
(32, 1435468716, '::1', 'aM1E2K05'),
(47, 1435479555, '::1', 'H7JByGCP'),
(48, 1435479692, '::1', 'ZQ0XX0PJ'),
(49, 1435479758, '::1', 'NJKA12MA'),
(50, 1435480022, '::1', 'nRua0sia'),
(51, 1435480087, '::1', 'UVDAe2V7'),
(52, 1435480129, '::1', 'TuovTVWA'),
(53, 1435480184, '::1', 'i5f1n6zB'),
(54, 1435480187, '::1', 'zuTLd1Uk'),
(55, 1435480266, '::1', 'YtesQRKj'),
(56, 1435480268, '::1', 'O6mwDk8D'),
(57, 1435480330, '::1', 'GNDStXDr'),
(58, 1435480332, '::1', 'GhHhRe7e'),
(59, 1435480379, '::1', 'fFaUr19z'),
(60, 1435480381, '::1', '39VOshLT'),
(61, 1435480438, '::1', 'wLbmg74R'),
(62, 1435480440, '::1', 'BXAdQmrM'),
(63, 1435508120, '::1', '494a1hfX'),
(64, 1435508183, '::1', 'pErWWohN'),
(65, 1435508288, '::1', 'oVz8OhlO'),
(66, 1435508290, '::1', '7H4lGCVR'),
(67, 1435515561, '::1', 'X1L27HLJ'),
(68, 1435515779, '::1', 'rglCARV9'),
(69, 1435516068, '::1', 'GsFPPd7b'),
(70, 1435529382, '::1', 'TUkKQX44'),
(71, 1435530220, '::1', 'JC6ODcfy'),
(72, 1435530262, '::1', 'yLyWQ4GC'),
(73, 1435530274, '::1', 'QQ7YdEdg'),
(74, 1435530297, '::1', 'RvKCIPwy'),
(75, 1435530309, '::1', 'hgOUZw0w'),
(76, 1435615590, '::1', 'YieyKdnO'),
(77, 1435615874, '::1', 'QnkKwuWn'),
(78, 1435615941, '::1', 'DPwFzVAa'),
(79, 1435615971, '::1', 'rn7814Vj'),
(80, 1435615984, '::1', 'NztbMWel'),
(81, 1435616007, '::1', 'LNcnprzP'),
(82, 1435616027, '::1', 'Fl3D0CGM'),
(83, 1435616067, '::1', 'hJB9iW2F'),
(84, 1435616097, '::1', 'pMi77ad3'),
(85, 1435616195, '::1', 'r6AQgMG5'),
(86, 1435616250, '::1', '1yAgDXGm'),
(87, 1435616262, '::1', 'nCboGOXi'),
(88, 1435616279, '::1', 'ssN8bMCz'),
(89, 1435616382, '::1', 'H2sf6cvj'),
(90, 1435616477, '::1', 'AzY3hFpY'),
(91, 1435616505, '::1', 'v5NgCcVa'),
(92, 1435616548, '::1', 'oaSJsGo1'),
(93, 1435616561, '::1', 'yVznVCFV'),
(94, 1435616585, '::1', 'ITngRPrF'),
(95, 1435616776, '::1', '5golJDEM'),
(96, 1435619022, '::1', 'Vna47O48'),
(97, 1435619038, '::1', 'UPntGN74'),
(98, 1435619091, '::1', 'jKIDHPSF'),
(99, 1435619899, '::1', '8phbL6cM'),
(100, 1435620100, '::1', 'X4oo9x24'),
(101, 1435620671, '::1', 'PQoAH8rP'),
(102, 1435621076, '::1', 'Iat0l2Ye'),
(103, 1435621149, '::1', 'WaitfIeh'),
(104, 1435621230, '::1', 'TT6KxTjx'),
(105, 1435621299, '::1', '7DEzlNJj'),
(106, 1435621378, '::1', 'aj1c09AX'),
(107, 1435621494, '::1', '3p4YEwIs'),
(108, 1435621552, '::1', '2fXoU7pt'),
(109, 1435621577, '::1', 'oohM6oHI'),
(110, 1435621598, '::1', 'dQjR9Fld'),
(111, 1435621753, '::1', 'fMW6KZv5'),
(112, 1435621827, '::1', 'h2KQ7iuX'),
(113, 1435621862, '::1', '8crXewwn'),
(114, 1435621931, '::1', 'YQCvBxWj'),
(115, 1435621962, '::1', 'rPouLW2k'),
(116, 1435622008, '::1', 'oiwxq068'),
(117, 1435622049, '::1', 'bsZX4AsL'),
(118, 1435622762, '::1', 'ouYBs7XC'),
(119, 1435622865, '::1', 'tpktjgZo'),
(120, 1435637740, '::1', 't6O4a67h'),
(121, 1435715605, '::1', 't9FCijcA'),
(122, 1435740554, '::1', 'cPvEyqtf'),
(123, 1435741533, '::1', 'w5Gbx5Tj'),
(124, 1435873542, '::1', 'MCzCUR2N'),
(125, 1435874889, '::1', 'Niif4UDg'),
(126, 1435915030, '::1', 'f9gGfS56'),
(127, 1435915042, '::1', '5bBTco5l'),
(128, 1435915224, '::1', 'pw41dVI4'),
(129, 1435916010, '::1', 'Jhl8rAhQ'),
(130, 1435916045, '::1', '1aZzL0OZ'),
(131, 1435916276, '::1', 'SsIstgWA'),
(132, 1435916313, '::1', 'og4K0O5z'),
(133, 1435916400, '::1', 'Y4aO4RRu'),
(134, 1435916445, '::1', 'h3JFUrgz'),
(135, 1435916473, '::1', 'gBgd4EDM'),
(136, 1435916479, '::1', 'MqMUYDwL'),
(137, 1435916499, '::1', 'QhuOn4cl'),
(138, 1435916532, '::1', 'pzHUL4FV'),
(139, 1435916537, '::1', 'Z0Q4W8qt'),
(140, 1435916779, '::1', 'wArBp1Gl'),
(141, 1435916910, '::1', 'D7QA7DCQ'),
(142, 1435917483, '::1', 'oC7v8MYz'),
(143, 1435917549, '::1', 'FTcrB44q'),
(144, 1435917556, '::1', 'YSsfxGbr'),
(145, 1435917559, '::1', 'mGfLlMLZ'),
(146, 1435917577, '::1', 'tmTfNUVB'),
(147, 1435917706, '::1', 'mo4LXbN5'),
(148, 1435917735, '::1', 'Up8lKnRk'),
(149, 1435917778, '::1', 'RTxkLeEZ'),
(150, 1435917890, '::1', 'kXLUycX1'),
(151, 1435917894, '::1', 'pdPRDWsq'),
(152, 1435918070, '::1', 'yCrcG4uO'),
(153, 1435918172, '::1', 'Nmv7qOyJ'),
(154, 1435918213, '::1', '1A0XdG9u'),
(155, 1435918228, '::1', 'AoOWaYNs'),
(156, 1435918259, '::1', '3cVyOt8X'),
(157, 1435918282, '::1', 'nPm7C17W'),
(158, 1435918294, '::1', '51nhzCmN');

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE IF NOT EXISTS `contents` (
`id` int(10) unsigned NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `jenis` int(10) unsigned NOT NULL,
  `slug` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `judul`, `isi`, `jenis`, `slug`, `updated_at`, `created_at`) VALUES
(1, 'homepage', '<h2 class="font_2" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-weight: normal; font-size: 24px; font-family: raleway, sans-serif; color: rgb(89, 89, 89); text-align: center; background: transparent;">\r\n	<img alt="" src="http://permatanetwork.com/ag/0/source/a4868e_93abe2a6402a40e198c1f57e3a1f9eda.jpg" style="width: 200px; height: 200px;" />&nbsp; &nbsp;<img alt="" src="http://permatanetwork.com/ag/0/source/a4868e_8f4dcdeae9ec47a9a622e713b1dd2503.jpg" style="width: 200px; height: 200px;" />&nbsp; &nbsp;<img alt="" src="http://permatanetwork.com/ag/0/source/a4868e_112a0e1e33fe439ea1b160b78b337e7c.jpg" style="width: 200px; height: 200px;" />&nbsp; &nbsp;<img alt="" src="http://permatanetwork.com/ag/0/source/a4868e_23779e3f9cab48fba7290bd40ec7a362.jpg" style="width: 200px; height: 200px;" />&nbsp; &nbsp;&nbsp; &nbsp;</h2>\r\n<hr />\r\n<h2 class="font_2" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-weight: normal; font-stretch: normal; font-size: 24px; font-family: raleway, sans-serif; color: rgb(89, 89, 89); text-align: justify; background: transparent;">\r\n	<span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-weight: bold; background: transparent;">Apa itu Batu Kecubung?</span></span></h2>\r\n<p>\r\n	&nbsp;</p>\r\n<p style="text-align: justify;">\r\n	<span style="color: rgb(89, 89, 89); font-size: 18px; font-family: raleway, sans-serif; text-align: justify; background-color: transparent;">Batu Kecubung adalah nama pasaran untuk batu permata jenis Amethyst.&nbsp;Nama Amethyst sendiri berasal dari kata Yunani &ldquo;Amethystos&rdquo; yang artinya &ldquo;Tidak Mabuk&rdquo;, karena sering digunakan sebagai jimat untuk melindungi diri dari keracunan. Sejak batu Kecubung dijadikan penangkal terhadap mabuk, banyak gelas anggur yang kemudian menggunakan ukiran batu Kecubung pada desainnya. Sampai dengan hari ini, batu Kecubung berwarna ungu adalah simbol ketenangan.</span></p>\r\n<p class="font_8" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-stretch: normal; font-size: 14px; font-family: raleway, sans-serif; color: rgb(48, 48, 48); text-align: justify; background: transparent;">\r\n	&nbsp;</p>\r\n<p class="font_7" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-stretch: normal; font-size: 18px; font-family: raleway, sans-serif; color: rgb(89, 89, 89); text-align: justify; background: transparent;">\r\n	<span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;">Batu kecubung dipercaya memiliki sifat yang membawa stabilitas, perdamaian, keseimbangan, keberanian, kekuatan internal, ketulusan, dan ketenangan.</span></p>\r\n<p class="font_7" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-stretch: normal; font-size: 18px; font-family: raleway, sans-serif; color: rgb(89, 89, 89); text-align: justify; background: transparent;">\r\n	<span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;">Batu ini juga diyakini efektif mengobati masalah kesehatan yang berhubungan dengan gejala kecanduan, sakit kepala, insomnia, artritis, nyeri, masalah sistem peredaran darah, dan penyembuhan secara umum.</span></p>\r\n<p class="font_7" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-stretch: normal; font-size: 18px; font-family: raleway, sans-serif; color: rgb(89, 89, 89); text-align: justify; background: transparent;">\r\n	<span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;">Dengan mengacu pada asal kata Yunani, batu kecubung dianggap sebagai batu yang bisa mencegah dan mengobati mabuk alkohol dan jenis kecanduan lain.</span></p>\r\n<p class="font_7" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-stretch: normal; font-size: 18px; font-family: raleway, sans-serif; color: rgb(89, 89, 89); text-align: justify; background: transparent;">\r\n	<span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;">Oleh karena itu, batu kecubung bertindak sebagai kekuatan stabilisasi bagi mereka yang berusaha untuk mengatasi perilaku adiktif.</span></p>\r\n<p class="font_7" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-stretch: normal; font-size: 18px; font-family: raleway, sans-serif; color: rgb(89, 89, 89); text-align: justify; background: transparent;">\r\n	&nbsp;</p>\r\n<p style="text-align: justify;">\r\n	<span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-weight: bold; background: transparent;"><img alt="" src="http://permatanetwork.com/ag/0/source/1.jpg" style="width: 257px; height: 220px; float: left; margin: 10px 30px;" /></span></span><span style="color: rgb(48, 48, 48); font-family: raleway, sans-serif; font-size: 18px; text-align: justify;">Khasiat batu kecubung &ndash; Kecubung atau Amethyst merupakan jenis batu mulia populer didunia dengan warna umum ungu berkilau, merah muda dan kebiruan. Batu permata ini di Indonesia lebih dikenal dengan sebutan batu kecubung ungu dan dipercaya memiliki khasiat. Sedangkan harga nya bisa ratusan sampai puluhan juta rupiah untuk jenis batu terbaik.</span></p>\r\n<p style="text-align: justify;">\r\n	<span style="color: rgb(48, 48, 48); font-family: raleway, sans-serif; font-size: 18px; text-align: justify;">Batu Amethyst (kecubung) merupakan batuan mineral kuarsa atau jenis mineral berstruktur kristal heksagonal terbuat dari silika (silikon dioksida) dengan tingkat kekerasan hingga 7 mohs. Keunikan warna pada batu permata ini menimbulkan daya tarik tersendiri dan tidak dimiliki jenis batu mulia lainnya.</span></p>\r\n<p style="text-align: justify;">\r\n	<span style="color: rgb(48, 48, 48); font-family: raleway, sans-serif; font-size: 18px; text-align: justify;">Terkait mitos yang berkembang, batu ini juga dianggap sebagai batu kelahiran Februari dalam zodiak. Sebutan pada batu ini juga tidak lepas dengan mitos yang berkembang pada zamat itu dan dikenal dengan istilah&lsquo;amethyst&rsquo; asal kata Yunani &lsquo;amethystos&rsquo; yang berarti obat untuk mencegah mabuk.Sehingga batu ini dipercaya bisa membawa keberuntungan bagi pemiliknya terutama mereka yang punya kelahiran bulan Februari. Pada zaman dulu batu ini banyak dipakai kalangan raja-raja, pangeran dan puteri kerjaan sebagai pembangkit aura baik untuk kecantikan atau untuk menambah kewibawaan.</span></p>\r\n', 2, 'homepage', '2015-07-01 02:18:43', '2015-06-30 21:18:43');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE IF NOT EXISTS `members` (
`id` int(10) unsigned NOT NULL,
  `code` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_login` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `limited_transfer_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `referral_code` varchar(10) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `code`, `email`, `username`, `password`, `updated_at`, `created_at`, `last_login`, `limited_transfer_at`, `activation_at`, `referral_code`, `status`) VALUES
(1, 'L4PR01D', 'first@first.com', 'first', '$2y$10$vzgcMQvzSyFoEtWJ39AhGev1C9.aJsg88IjfY4xhH4Y/a0OGrNhl6', '2015-07-01 08:58:44', '2015-06-27 17:00:00', '2015-07-01 08:58:44', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 1),
(2, '73DD48C', 'isa1@isa.com', 'isa1', '$2y$10$Uybk0xk6If58kmrnMuxRuOECj1KJby8LXNP3N1EE8R3Q6WRaz3XKW', '2015-07-03 08:23:58', '2015-06-28 08:28:30', '2015-07-03 08:23:58', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'L4PR01D', 1),
(3, 'CFB3350', 'isa2@isa.com', 'isa2', '$2y$10$jWvO.K12nVb6zTaZvnZ4Ke9Yzag4ibGucfyVHYtubFBFgVrdwiPyW', '2015-07-01 09:00:13', '2015-06-28 08:29:39', '2015-07-01 09:00:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '73DD48C', 1),
(4, 'B5E4C8A', 'isa3@isa.com', 'isa3', '$2y$10$nqe0bf/5ZjFo9fUcD8ziiOtFbU8Clbq4D5rxNKBB6f2AuDdfrl2Za', '2015-07-03 08:39:59', '2015-06-28 08:31:02', '2015-07-03 08:39:59', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CFB3350', 1),
(5, '4539A08', 'isa4@isa.com', 'isa4', '$2y$10$1rJoRWxZfOTeC8nn41Ae..QFZHrtjNy0NJCi3wUBjrzkSChqiJkPS', '2015-07-01 09:00:52', '2015-06-28 08:32:07', '2015-07-01 09:00:52', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'B5E4C8A', 1),
(6, '05AA10F', 'isa5@isa.com', 'isa5', '$2y$10$FpQwLsCUQEdU7Wp3QCqFJe/QfiR9tkKu8pr50XwTYWeSiw4FJHX1m', '2015-07-01 09:01:13', '2015-06-28 08:32:57', '2015-07-01 09:01:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '4539A08', 1),
(7, '88DDC5A', 'isa6@isa.com', 'isa6', '$2y$10$FSWONV0E9SBs9594wXdjWu.cL4hHwP7uQiaJHw.aFaUhYTX/714I2', '2015-07-01 09:01:32', '2015-06-28 08:33:55', '2015-07-01 09:01:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '05AA10F', 1),
(8, '083BF11', 'isa7@isa.com', 'isa7', '$2y$10$oCfzbxRwMikgMKXMNBsLzeUREBDw8GwrwpOWant/R/89NDsIMUraK', '2015-07-03 10:14:12', '2015-06-28 08:34:46', '2015-07-03 10:14:12', '2015-07-02 20:14:34', '2015-07-01 09:02:02', '88DDC5A', 1),
(10, 'A23174A', 'isa8@isa.com', 'isa8', '$2y$10$fHRjTsdJV1Qe.cMYrTeHvuSr8L5V9NH3BpnIKJZCgoHus.Hsu.WmC', '2015-07-03 10:12:14', '2015-07-01 09:08:48', '2015-07-03 10:12:14', '2015-07-02 21:09:23', '0000-00-00 00:00:00', '083BF11', -1);

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE IF NOT EXISTS `pengumuman` (
`id` int(10) unsigned NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expired_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE IF NOT EXISTS `profile` (
`id` int(10) unsigned NOT NULL,
  `id_member` int(10) unsigned NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `kota` varchar(255) NOT NULL,
  `provinsi` varchar(255) NOT NULL,
  `kode_pos` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `nama_bank` varchar(255) NOT NULL,
  `no_rekening` varchar(255) NOT NULL,
  `nama_rekening` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `id_member`, `nama`, `alamat`, `kota`, `provinsi`, `kode_pos`, `no_hp`, `nama_bank`, `no_rekening`, `nama_rekening`) VALUES
(1, 1, 'Angga Kesuma', 'jl. sukakarya No.2227 palembang', 'Palembang', 'sumatera selatan', '30152', '089661147512', '', '019283978891923', ''),
(2, 2, 'isa1', 'isa1', 'isa1', 'isa1', '7868', '708998', '', '323223', ''),
(3, 3, 'isa2', 'isa2', 'isa2', 'isa2', '2', '3', '', '3', ''),
(4, 4, 'isa3', 'e', 'e', 'e', 'e', 'e', '', 'e', ''),
(5, 5, 'isa4', 's', 's', 's', '2', '2', '', '2', ''),
(6, 6, 'isa5', '2', '2', '3', '3', '3', '', '2', ''),
(7, 7, 'isa6', '3', '3', '3', '3', '3', '', '3', ''),
(8, 8, 'isa7', '2', '2', '21', '2', '2', '', '2', ''),
(10, 10, 'isa8', 'isa', 'isa', 'isa', '5', '5', 'Bni', '930242', 'isa8');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE IF NOT EXISTS `sliders` (
`id` int(10) unsigned NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `urutan` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image_url`, `caption`, `urutan`) VALUES
(5, '18849-01.jpg', 'Sarana praktis meningkatkan pesona, kewibawaan dan keberuntungan.', 1),
(6, '71e0e-02.jpg', 'Menyimpan energi positif yang berada pada tempat - tempat suci.', 2),
(7, '9bdf8-03.jpg', 'Bermanfaat sebagai penunjang kesuksesan dan kebahagiaan.', 3),
(8, 'f01b3-04.jpg', 'Memancarkan gelombang energi positif ke alam semesta', 4);

-- --------------------------------------------------------

--
-- Table structure for table `transfer_referral`
--

CREATE TABLE IF NOT EXISTS `transfer_referral` (
`id` int(10) unsigned NOT NULL,
  `id_member` int(10) unsigned NOT NULL,
  `id_referral` int(10) unsigned NOT NULL,
  `amount` int(11) NOT NULL,
  `status_transfer` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `transfered_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `confirmation_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transfer_referral`
--

INSERT INTO `transfer_referral` (`id`, `id_member`, `id_referral`, `amount`, `status_transfer`, `updated_at`, `created_at`, `transfered_at`, `confirmation_at`) VALUES
(68, 8, 7, 150000, 2, '2015-07-01 09:01:40', '2015-07-01 08:14:34', '2015-07-01 08:57:33', '2015-07-01 09:01:40'),
(69, 8, 6, 100000, 2, '2015-07-01 09:01:22', '2015-07-01 08:14:34', '2015-07-01 08:56:10', '2015-07-01 09:01:22'),
(70, 8, 5, 100000, 2, '2015-07-01 09:01:03', '2015-07-01 08:14:34', '2015-07-01 08:55:34', '2015-07-01 09:01:03'),
(71, 8, 4, 100000, 2, '2015-07-01 09:00:43', '2015-07-01 08:14:34', '2015-07-01 08:54:52', '2015-07-01 09:00:43'),
(72, 8, 3, 100000, 2, '2015-07-01 09:00:25', '2015-07-01 08:14:34', '2015-07-01 08:54:07', '2015-07-01 09:00:25'),
(73, 8, 1, 100000, 2, '2015-07-01 08:59:07', '2015-07-01 08:14:34', '2015-07-01 08:51:16', '2015-07-01 08:59:07'),
(74, 10, 8, 150000, 1, '2015-07-01 09:11:29', '2015-07-01 09:09:23', '2015-07-01 09:11:29', '0000-00-00 00:00:00'),
(75, 10, 7, 100000, 1, '2015-07-02 22:06:36', '2015-07-01 09:09:23', '2015-07-02 22:06:36', '0000-00-00 00:00:00'),
(76, 10, 6, 100000, 1, '2015-07-02 23:36:42', '2015-07-01 09:09:23', '2015-07-02 23:36:42', '0000-00-00 00:00:00'),
(77, 10, 5, 100000, 0, '2015-07-01 09:09:23', '2015-07-01 09:09:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 10, 4, 100000, 0, '2015-07-01 09:09:23', '2015-07-01 09:09:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 10, 3, 100000, 0, '2015-07-01 09:09:23', '2015-07-01 09:09:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 10, 1, 100000, 0, '2015-07-01 09:09:23', '2015-07-01 09:09:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `transfer_referral_bukti`
--

CREATE TABLE IF NOT EXISTS `transfer_referral_bukti` (
`id` int(10) unsigned NOT NULL,
  `id_transfer_referral` int(10) unsigned NOT NULL,
  `nama_bank_penerima` varchar(255) NOT NULL,
  `nama_rekening_penerima` varchar(255) NOT NULL,
  `no_rekening_penerima` varchar(255) NOT NULL,
  `nama_bank_pengirim` varchar(255) NOT NULL,
  `nama_rekening_pengirim` varchar(255) NOT NULL,
  `no_rekening_pengirim` varchar(255) NOT NULL,
  `bukti_transfer` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transfer_referral_bukti`
--

INSERT INTO `transfer_referral_bukti` (`id`, `id_transfer_referral`, `nama_bank_penerima`, `nama_rekening_penerima`, `no_rekening_penerima`, `nama_bank_pengirim`, `nama_rekening_pengirim`, `no_rekening_pengirim`, `bukti_transfer`) VALUES
(14, 73, 'we', 'erer', '019283978891923', 'er', 'ere', '2', '2015-07-1_15-51-16_73.jpg'),
(15, 72, 'sds', 'sdss', '3', 'sdsd', 'sdsd', '2', '2015-07-1_15-54-07_72.png'),
(16, 71, 'mdsdq', 'dsknf', 'e', 'nmdsn', 'lmlen', '2', '2015-07-1_15-54-52_71.jpg'),
(17, 70, 'sdfd', 'fdfdd', '2', 'dfdfd', 'fdfdfd', '2', '2015-07-1_15-55-34_70.jpg'),
(18, 69, 'fdfd', 'dfdfd', '2', 'dfdf', 'dff', '2', '2015-07-1_15-56-10_69.jpg'),
(19, 68, 'dfdfFSF', 'FEFEF', '3', 'RER', 'RWRER', '2', '2015-07-1_15-57-33_68.jpg'),
(20, 74, 'fdddf', 'wfwf', '3', 'Bni', 'isa8', '930242', '2015-07-1_16-11-29_74.jpg'),
(21, 75, 'BNI', 'erer', '3', 'DANAMON', 'isa8', '930242', '2015-07-3_05-06-36_75.png'),
(22, 76, 'BANK SUMSEL', 'ddfd', '2', 'DANAMON', 'isa8', '930242', '2015-07-3_06-36-42_76.png');

-- --------------------------------------------------------

--
-- Table structure for table `transfer_referral_cancel`
--

CREATE TABLE IF NOT EXISTS `transfer_referral_cancel` (
`id` int(10) unsigned NOT NULL,
  `id_transfer_referral` int(10) unsigned NOT NULL,
  `msg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transfer_referral_conf`
--

CREATE TABLE IF NOT EXISTS `transfer_referral_conf` (
`id` int(10) unsigned NOT NULL,
  `downline` int(11) NOT NULL,
  `max_income` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transfer_referral_conf`
--

INSERT INTO `transfer_referral_conf` (`id`, `downline`, `max_income`) VALUES
(1, 1, 2000000),
(2, 2, 3000000),
(3, 3, 4000000),
(4, 4, 5000000);

-- --------------------------------------------------------

--
-- Table structure for table `transfer_referral_conf_amount`
--

CREATE TABLE IF NOT EXISTS `transfer_referral_conf_amount` (
`id` int(10) unsigned NOT NULL,
  `level` int(11) NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transfer_referral_conf_amount`
--

INSERT INTO `transfer_referral_conf_amount` (`id`, `level`, `value`) VALUES
(1, 1, 150000),
(2, 2, 100000),
(3, 3, 100000),
(4, 4, 100000),
(5, 5, 100000),
(6, 6, 100000),
(7, 7, 100000);

-- --------------------------------------------------------

--
-- Table structure for table `transfer_referral_msg`
--

CREATE TABLE IF NOT EXISTS `transfer_referral_msg` (
`id` int(10) unsigned NOT NULL,
  `id_transfer_referral` int(10) unsigned NOT NULL,
  `msg` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `voucher`
--

CREATE TABLE IF NOT EXISTS `voucher` (
`id` int(10) unsigned NOT NULL,
  `nomor` varchar(19) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3041 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voucher`
--

INSERT INTO `voucher` (`id`, `nomor`) VALUES
(2137, '0015-5a8f-a019-06d5'),
(2621, '002b-f27e-b4bc-ac72'),
(2642, '0058-1248-042c-706c'),
(2230, '005a-5e40-dbe9-be91'),
(3038, '009a-b873-9acd-bf38'),
(2706, '00b7-80d3-17c0-dfe9'),
(2378, '00e0-525e-b2fa-ec43'),
(2923, '010f-4d7e-de90-e99d'),
(2828, '0111-babb-49f1-57b3'),
(2341, '0146-1cdb-4539-59a4'),
(2834, '0159-1ae8-1468-8199'),
(2468, '017a-2a3c-02af-df01'),
(3020, '0182-642c-1086-df6b'),
(2141, '021c-e6aa-56c0-8438'),
(2607, '0224-98da-b747-30a2'),
(2784, '02d7-07ff-e908-fb2a'),
(2701, '02fb-a3e6-c1a7-af3c'),
(2406, '0317-0693-276d-4b0b'),
(2306, '031a-5539-0843-a38f'),
(2550, '031c-3415-6dd7-72bf'),
(2242, '0484-2c0b-d091-41be'),
(2860, '04c3-9440-cd3a-99be'),
(2560, '04c6-4dfa-7984-0d7f'),
(2841, '04ef-cd33-fee1-9b4b'),
(2238, '0584-bce6-c062-be84'),
(2338, '05b7-e577-fb16-e613'),
(2186, '05d5-5b3e-84d9-a7aa'),
(2303, '05eb-66d5-881c-6790'),
(3000, '0602-aaae-4035-72dd'),
(2205, '06e1-fb65-efa7-5d70'),
(2775, '0754-4024-c883-123e'),
(2177, '078a-3bc1-7b69-d850'),
(2619, '079c-bb98-cc85-ea73'),
(2267, '0855-50df-5914-7377'),
(2506, '0859-ea0a-7c64-5035'),
(2598, '08b2-e839-2e4f-c54c'),
(2823, '08d6-3bd3-596a-dfc0'),
(2803, '0900-ab8f-4447-948e'),
(2058, '0925-3e8e-9608-3b86'),
(2553, '09a6-5c4e-4d7f-a94c'),
(2221, '09b5-2ccb-c061-4afc'),
(3009, '0b27-3a7a-ffbb-23a4'),
(2366, '0b92-4535-5945-036d'),
(2839, '0b96-05bd-3bfb-9356'),
(2064, '0bcc-b006-8a36-0be5'),
(2990, '0be8-d6a0-f4e2-15db'),
(2879, '0c8a-1ded-6330-dddf'),
(2349, '0cae-e057-aa9f-7d63'),
(2373, '0d3d-192a-c160-2d50'),
(2727, '0d61-24a6-e6ff-1862'),
(2320, '0d62-6c01-e277-537f'),
(2146, '0d69-7842-d9b0-8ed2'),
(2658, '0d80-0a55-44c0-9e43'),
(2895, '0dbf-f14b-4426-af34'),
(2313, '0f13-0670-f92e-f5bf'),
(2043, '0fa9-e9f5-22f1-ff50'),
(2483, '0ffb-f139-bc27-6de0'),
(2906, '10dd-bc1b-b36e-32bf'),
(2718, '116e-ccbe-78e5-eb63'),
(2930, '11d0-9fc6-6c93-4a72'),
(2886, '125f-e199-628e-85b7'),
(2736, '12f0-a761-b03f-341d'),
(2262, '12fb-093d-d447-0fd9'),
(2649, '1352-c02d-6b09-34c0'),
(2100, '1387-7a6f-d543-d96d'),
(2364, '138f-bb3f-e089-6b6e'),
(2557, '13cc-90fd-0313-2e00'),
(2386, '13f5-3185-a0c8-b681'),
(2300, '1439-3414-2e31-6819'),
(2972, '14a5-2585-1cf2-4034'),
(2209, '14ac-4b81-47b8-b5d7'),
(2979, '1559-22f9-be8f-8ac7'),
(2070, '1567-0bec-3e8c-8bc5'),
(2379, '1597-b0a4-5412-6059'),
(2095, '15c3-cc5b-5713-ce79'),
(2904, '1609-0c43-3e7e-7f90'),
(2761, '160a-5009-e90c-d3fe'),
(2897, '1675-eb3c-5bea-1d7a'),
(2552, '1691-c605-f28e-68fc'),
(3006, '16c3-5dc4-7e2e-3d93'),
(2488, '1747-82da-99b8-5435'),
(2289, '17a1-0019-a0ae-f8a2'),
(2894, '17ba-2b3d-9aca-122b'),
(2422, '1872-07c6-b315-8adb'),
(2984, '1887-b78d-8773-8c6b'),
(2956, '18bf-3679-6785-42be'),
(2723, '18e1-8138-49fb-0f1c'),
(2921, '18e9-7bb1-f345-9617'),
(2866, '194f-92f2-c4d7-d793'),
(2475, '1977-0016-3ef4-d6f1'),
(2757, '1999-465b-c678-d6c9'),
(2396, '19df-fb3f-b611-1c56'),
(2948, '19e2-98b3-3659-75ac'),
(2110, '1a32-1082-5bdb-17f7'),
(2813, '1b43-945c-2d33-6f91'),
(2776, '1b76-fdea-8da0-2c1c'),
(2735, '1b78-a58d-4838-8b06'),
(2935, '1bca-6302-8d70-2f34'),
(2992, '1bf3-dd7e-f23e-604c'),
(2224, '1c1e-114f-b3ce-1bdc'),
(2203, '1c2f-e6f6-13ed-e357'),
(2939, '1c7b-ed87-7f1f-1523'),
(2535, '1d24-b857-b9af-e3ad'),
(2645, '1d39-66ef-644d-9b91'),
(2575, '1e11-faf5-5246-58f5'),
(2540, '1e78-3863-6f74-d0b8'),
(2127, '1e85-9e4e-0a01-addf'),
(2568, '1eaa-461c-c98e-6728'),
(3040, '1fca-9138-f201-c29e'),
(2899, '201d-2af2-7331-f4e2'),
(2311, '2032-a678-e8e4-a428'),
(2957, '2078-96c6-eafb-6d31'),
(2893, '2078-a5ec-249b-21ea'),
(2663, '20ae-1b2d-4fd9-31fa'),
(2273, '20f3-5c12-f9c7-0f76'),
(2967, '2175-d7c6-0208-94a8'),
(2988, '2180-1877-d58a-6d4b'),
(2780, '21b0-a1b2-7d1d-378d'),
(2681, '21fa-f5b3-8530-53d2'),
(2077, '2265-4a39-6a77-b001'),
(2369, '22c3-1322-f03c-e8ba'),
(2225, '22c9-6699-f1a0-d0af'),
(2802, '231e-49e2-b066-c772'),
(2248, '2366-744d-525a-441a'),
(2332, '238f-080b-aeaa-b162'),
(2520, '23d3-f1f4-9823-83c6'),
(2792, '23db-ec6f-540c-cb67'),
(2240, '2413-3917-168f-fac1'),
(2134, '242a-7cd5-4fd3-0ff5'),
(2641, '246f-ce62-1a11-d8d3'),
(2405, '2476-72df-0659-92a6'),
(2970, '256e-9cbd-8f03-8ecd'),
(2519, '258f-ab73-cb3b-d236'),
(2867, '25e2-934d-25f1-76f9'),
(2852, '2633-4b27-6444-8d45'),
(2870, '263b-a4cd-8c69-9fd6'),
(2577, '2656-8d9b-9b74-2e2d'),
(2410, '26a4-bd98-3c5f-75c6'),
(2760, '26a6-3cf4-25b6-9b18'),
(2165, '26a9-0335-bac3-b4d6'),
(2249, '26be-d07c-77ed-a8a5'),
(2243, '26e3-8396-c6f6-c1cb'),
(2536, '26fe-3158-188c-b1b5'),
(2462, '271b-9677-0f74-a223'),
(2983, '276a-615d-960c-bee4'),
(2900, '278d-ccd9-1ea5-5dd6'),
(2280, '27d8-a5f9-27b6-4e96'),
(2309, '2805-ba4c-d467-c7b9'),
(2066, '28a2-bef3-7dc0-c2a9'),
(2109, '28a7-525e-a5a4-2854'),
(2804, '28ae-0c0f-364d-8493'),
(2217, '28d5-a09d-c5cf-7f34'),
(2569, '2937-ae3e-7ddf-10ec'),
(2937, '2948-624d-422d-a1f0'),
(2450, '295f-6df5-b8af-8fd3'),
(2633, '2973-74b0-da77-0416'),
(2617, '2a20-6ece-57c4-66c4'),
(2166, '2a67-43f2-6850-8e3a'),
(2042, '2a84-f763-39ca-93bb'),
(2699, '2a9a-80f9-43f3-8d72'),
(2374, '2aa5-90c4-141a-61dd'),
(2941, '2ac4-372f-f852-e6dd'),
(2079, '2acf-ac6c-6645-a9bb'),
(2926, '2b46-9130-9555-c60d'),
(2692, '2bbd-2316-6176-5414'),
(2777, '2bdd-7e9a-8905-a1cb'),
(2426, '2c1a-c7ac-4d60-5f9e'),
(2778, '2c48-39f6-68e4-b54d'),
(2769, '2c92-bf38-550a-6be7'),
(2140, '2d25-a71f-6baf-972b'),
(2476, '2dc6-6968-2909-0a2d'),
(2567, '2e23-fcd5-564d-86cb'),
(2403, '2e5b-5810-2c5a-efa8'),
(2874, '2e8f-c77b-f4f3-6e6d'),
(2629, '303c-90a1-c475-f749'),
(2677, '3099-68a2-cc3b-53c3'),
(2333, '30af-489f-9b83-601e'),
(2215, '30b3-f891-ed35-59f7'),
(2172, '30c0-4848-ba24-2ab8'),
(2905, '3131-9a91-a8fe-52bf'),
(2096, '317a-c569-bedd-1f18'),
(2093, '31d4-783e-2ec5-25b7'),
(2204, '31e1-0c93-97cb-fd49'),
(2342, '326f-d6aa-f58c-67e5'),
(2845, '329d-35c5-9792-f64c'),
(2563, '329d-36ad-7dbd-8a5f'),
(2174, '32e9-6428-2594-8c31'),
(2648, '330c-4e9d-5b1e-6bc4'),
(2367, '3325-dc0c-f44f-e2a2'),
(2449, '3331-4345-4cea-4702'),
(2534, '333a-7f76-4481-5a08'),
(2067, '3349-6186-1016-d28f'),
(2538, '337d-0f4e-5e40-dd3e'),
(2044, '33b9-9fc4-288f-b75d'),
(3029, '33c1-c337-59db-0d08'),
(2991, '33f4-edf9-ed76-9fbe'),
(2339, '340a-a764-05de-7fa5'),
(3024, '346c-aa44-1249-a178'),
(3003, '3471-7be1-f069-f88f'),
(2631, '3498-6299-a590-84b4'),
(2929, '34e8-8d57-f3ff-fe0e'),
(2859, '351a-638b-23a2-6482'),
(2302, '3541-8831-0171-21f5'),
(3011, '3548-87e2-c5c5-26a5'),
(2537, '35c5-bdab-cda6-fbc7'),
(2830, '35fc-66ad-c9c0-e064'),
(2444, '3654-a1d1-fff2-1754'),
(2062, '3666-1498-f457-b578'),
(2985, '369e-00fa-0207-e5ac'),
(2981, '3706-5485-a312-0e88'),
(3001, '371a-6060-7aea-8ed0'),
(2720, '3725-3332-70a1-c9ff'),
(2971, '374c-5a95-bd15-a80f'),
(2762, '3790-b4a8-3f7f-2337'),
(2178, '3791-ce17-0ae2-6d6f'),
(2589, '3802-419b-0871-d7d6'),
(2352, '3854-8678-7324-ed12'),
(2709, '3860-5a4b-af55-31bf'),
(2773, '38f8-5e00-1ef9-e285'),
(2202, '38ff-6029-c687-f692'),
(2310, '3920-8e5a-94bb-aa05'),
(2950, '3956-eb2c-12b5-f1f1'),
(2832, '396d-16d8-c350-c0dd'),
(3026, '397a-0398-9fe2-5620'),
(2399, '3996-8b56-248e-421b'),
(2121, '39a1-5e12-3f2b-5808'),
(2890, '39ea-7a5a-61b9-db40'),
(2486, '39ee-a2d9-335c-f5e7'),
(2739, '3ab3-de9d-cbf5-6dbc'),
(2171, '3b60-fca3-f124-bf84'),
(2626, '3be3-5346-8dd1-4400'),
(2887, '3bfb-d469-35ab-f341'),
(2368, '3c2d-2c3e-0ed0-8ece'),
(2441, '3c84-7d59-6184-75a5'),
(2292, '3cc2-2eaf-9791-0c0a'),
(2116, '3cde-d5ee-98fd-c9f9'),
(2362, '3d2d-52e4-4a55-e142'),
(2454, '3d6b-ea05-fe3e-de99'),
(2457, '3d78-e740-008a-cbaa'),
(2719, '3dbe-b97b-35e4-8b1d'),
(2128, '3de2-4b3a-9897-e579'),
(2195, '3def-258a-7ed8-e1c8'),
(2198, '3e2b-ab29-99af-0103'),
(2286, '3f1c-fdb5-c818-a0b7'),
(2193, '3f61-5c71-521b-2b51'),
(2544, '3f6d-87e1-9b43-820d'),
(2375, '3fc0-c871-f5da-ac86'),
(3016, '3fc8-566a-d68b-68fc'),
(2060, '3fda-4dda-139a-c270'),
(2910, '3fdd-5b06-a039-b1a9'),
(2647, '405d-5d7a-5dd7-c90d'),
(2584, '407c-d914-98b0-8138'),
(3032, '40cd-b04c-4efe-def3'),
(2561, '4140-10da-f148-aaaf'),
(2750, '4148-e83a-4d3b-505f'),
(2157, '4167-d4c1-4aeb-d1ea'),
(2862, '4173-f5f0-ab56-6713'),
(3008, '41db-2a44-e32c-1043'),
(2081, '42c4-e805-9d74-3f3a'),
(2842, '4319-f4d9-e51c-23de'),
(2416, '4390-cb7d-1096-c78f'),
(2363, '43be-f144-a783-b8fc'),
(2595, '43ca-8bc9-0311-2f79'),
(2857, '43ed-b6ad-a51e-d3e1'),
(2590, '43f7-bc87-902a-b4aa'),
(2421, '43fc-c598-583a-01cb'),
(2453, '443c-065c-1785-b84e'),
(2115, '4492-c8b6-c1b0-bb07'),
(2961, '44c6-b4e4-b1c6-6986'),
(2936, '44ff-3cb6-17b6-a06d'),
(2636, '454e-95ee-dd8d-a3b3'),
(2608, '4561-7ca5-c325-3515'),
(2068, '4595-102d-dd1f-9085'),
(2212, '45ed-568e-ea2b-20f5'),
(2599, '460f-8417-c070-1c4f'),
(2831, '461f-a1de-037b-8ac9'),
(2206, '4624-eb70-68b8-f29b'),
(2078, '468a-04e9-25d6-6313'),
(2799, '468f-91fb-4946-326f'),
(2150, '469c-0fd2-92fb-4d87'),
(2920, '46a1-c5f7-1385-6596'),
(2711, '46e2-a0f9-8c69-813d'),
(2917, '4700-f1eb-b73e-c776'),
(2285, '478d-6f3e-0f7e-ef0e'),
(2869, '4794-1379-e1b4-beae'),
(2464, '47fb-5ceb-edf4-b59c'),
(2543, '48b0-8166-0048-a237'),
(2336, '493a-8bda-e900-a225'),
(2562, '49f6-2ca2-36b9-0605'),
(2402, '4a25-db0d-18f6-4473'),
(2296, '4ad6-ef20-df64-1236'),
(2624, '4ae7-5460-73c0-73bb'),
(2167, '4aec-45a8-9d20-2864'),
(2650, '4bd2-4dbd-720b-ec9e'),
(2873, '4be0-b7ce-e7d7-d989'),
(2565, '4bf2-087e-552b-2361'),
(2742, '4c64-3e42-3f00-d675'),
(2315, '4d14-c6df-9a1f-93e5'),
(2232, '4d16-a1d6-ed22-8e62'),
(2106, '4d1e-cb0d-608b-bcb0'),
(2844, '4d1f-c00b-1887-f724'),
(2998, '4d5e-96e9-6f9d-afac'),
(2279, '4e45-7911-5445-c7c0'),
(2547, '4e4b-07bd-f55a-782c'),
(2585, '4e93-32e9-d570-9c6e'),
(2226, '4ec0-bf10-8e8d-f418'),
(2959, '4ecb-6796-a7f1-5b57'),
(2779, '4f1a-48b0-e755-b2f7'),
(2627, '4f2e-3a15-58ca-9f1f'),
(2356, '4fa8-4f97-b635-42d6'),
(2933, '4ffb-096a-a80d-8900'),
(2418, '5102-0325-859a-faa0'),
(2101, '5144-afc3-eeb4-8b02'),
(2214, '51a8-1371-4a33-d9f4'),
(2999, '51df-5429-03b4-b85a'),
(2903, '5202-fdfa-38c0-bd5c'),
(2269, '5219-24ed-f02c-0969'),
(2686, '523f-c548-139f-e957'),
(2196, '5281-a95a-5827-8ce8'),
(2400, '52e4-d74c-e3a6-36ab'),
(2528, '5345-994e-20bc-69c3'),
(2785, '53e5-44dd-0cf9-8cd9'),
(2459, '53ec-bcf8-ad87-f452'),
(2639, '5454-672f-5ff1-e98b'),
(2508, '5480-ff7c-7e0b-8150'),
(2047, '54e4-2a6e-1f70-9863'),
(2163, '5638-96a7-506e-6934'),
(2129, '568c-f780-0f04-67f4'),
(2246, '56ea-d5a0-4d4c-1e61'),
(2470, '5770-451f-aa82-56ff'),
(2222, '57fe-77a8-7594-5ad8'),
(2448, '5801-729f-c1a9-8794'),
(2968, '5835-89cf-4fc7-f6ea'),
(2705, '585a-b086-3bf8-d81d'),
(2147, '5883-0bc9-64a5-b7d0'),
(2710, '5883-e16a-f4ce-f532'),
(2149, '589f-f1f4-a953-786c'),
(2691, '58b1-aa53-b793-5e58'),
(2452, '58ba-6342-c01d-3fb1'),
(2350, '58d9-19fb-a68f-adc9'),
(2955, '58da-b937-623d-c85c'),
(2640, '5910-1993-3d89-574d'),
(2438, '592b-a16b-7765-b1a1'),
(2674, '5979-0614-8c98-c106'),
(2223, '59fa-9f54-ac62-be8c'),
(2564, '5a08-b8ff-b90c-9779'),
(2596, '5a1d-2c2e-fabe-6810'),
(2184, '5a53-1caa-5f3d-c552'),
(2354, '5a5d-e8ac-092d-c0ba'),
(2943, '5a6a-c341-ea40-dfb4'),
(2616, '5a6d-37ab-8b24-6134'),
(2183, '5add-8a96-84e3-2164'),
(3035, '5b3c-dcab-f4b7-07cc'),
(2759, '5b43-6f39-1cac-2709'),
(2161, '5b55-4d24-f10b-2409'),
(2436, '5bcd-628c-f366-c31d'),
(2083, '5bd6-2536-a6fb-15c1'),
(2913, '5bf4-da7a-5720-f4e4'),
(2724, '5c6e-0c80-bf91-0246'),
(2104, '5c87-f647-46c2-cbee'),
(2069, '5d05-a378-9ddc-b71b'),
(2667, '5d0e-42c6-2438-0a0e'),
(2796, '5d59-f89f-6cc1-0b4a'),
(2891, '5d71-c680-25a3-010e'),
(2977, '5e00-337b-38ce-20e1'),
(2916, '5e00-a35b-3de6-0012'),
(2381, '5e30-6fb6-4c1d-2e91'),
(2586, '5e75-4f1c-534a-4bc4'),
(2348, '5e7f-6f28-0133-14b1'),
(2715, '5e8d-ad49-9b17-7330'),
(2092, '5eab-e9d6-2a91-7fb1'),
(2911, '5ec0-c357-45b7-003b'),
(2404, '5f15-6f93-970e-e9dc'),
(2770, '5f31-cba0-2e16-e83b'),
(2108, '6035-b6af-5d3f-2226'),
(2510, '6039-b236-0578-90af'),
(2497, '60b2-21a0-3cd6-7b9e'),
(2696, '6184-13e3-b88e-883b'),
(2168, '61fe-b3b0-d77d-6395'),
(2615, '6284-0ff2-3e01-5146'),
(2325, '62e4-edb6-9500-3f18'),
(2583, '6381-decb-1ebe-34b2'),
(2261, '63dc-e386-71c4-9344'),
(2340, '6489-cc6c-bc89-ff78'),
(2295, '64af-a1f7-2553-da28'),
(2411, '64b5-63bb-ef71-3b95'),
(2120, '64df-bd47-17c7-ee9a'),
(2922, '64f4-5142-9f51-1824'),
(2858, '6500-da9f-d727-d29e'),
(2387, '651a-f426-d024-5240'),
(2725, '655d-543e-9388-8db0'),
(3013, '6565-aeb1-a78b-4994'),
(2545, '659f-2f96-d1bd-9ba3'),
(2151, '663c-02ee-1fcb-05f2'),
(2604, '666d-09fe-de37-93e7'),
(2277, '6683-a9ee-6e9a-59b9'),
(2931, '66e3-ae12-2141-9f91'),
(2754, '672a-7ab6-d9b6-676e'),
(2797, '6752-9d6b-c3e7-d045'),
(3005, '676a-3577-a542-a842'),
(2888, '680e-d16a-a7f1-517c'),
(2940, '6812-5ea1-baea-17fb'),
(2787, '683d-90b3-6b79-617d'),
(2707, '687f-82d7-8e84-d4ef'),
(2288, '68a1-f705-af40-b4bf'),
(2359, '68e4-f639-7794-5aad'),
(2837, '6915-3a71-ddd5-a47d'),
(2260, '69dd-ef17-406a-bde2'),
(2555, '6a32-168e-0a08-8f77'),
(2997, '6a39-1a77-adee-e78e'),
(2731, '6a3e-aa71-11c1-a31e'),
(2321, '6a67-759e-8206-49ee'),
(2317, '6ad3-4dc9-e73e-9762'),
(2216, '6b08-1137-21ac-ca2c'),
(2809, '6b1e-e012-01bb-d949'),
(2235, '6b25-abde-c5f6-e310'),
(2388, '6b57-a321-af27-3c6c'),
(2680, '6b8f-0ed2-3463-eda0'),
(2513, '6c23-bdb6-7420-30ce'),
(2625, '6c3e-3731-058c-aed8'),
(2748, '6c56-bf3c-37ae-2dca'),
(2291, '6c57-2d04-eab9-a6ab'),
(2076, '6c60-d4b0-8291-5b43'),
(2220, '6d08-f49f-5670-73b6'),
(2812, '6dba-3f7d-d44c-d3ed'),
(2515, '6e52-b5a5-ca8c-fb7b'),
(2412, '6eb2-fe12-2511-23b7'),
(2587, '6eff-f512-a1fa-4dff'),
(2673, '6f63-d961-2713-53d4'),
(2591, '6fe8-59ff-d9e5-3fb2'),
(2351, '703b-dbd5-28ef-f959'),
(2698, '703c-7fc6-cc37-ec98'),
(2085, '70bd-0175-2569-7cbd'),
(2229, '7185-7a33-9318-fca8'),
(2326, '71cf-57ee-264c-3d1d'),
(3023, '7207-fca7-32ff-28fb'),
(2201, '7216-f061-7622-2599'),
(2505, '7237-26da-0555-eaf4'),
(2934, '7244-d3a8-7856-7c54'),
(2793, '728d-2b19-3141-3585'),
(2824, '72ae-4631-a196-5f15'),
(2255, '72b6-d67a-a0ba-892e'),
(2322, '72e8-4a29-4dc9-558f'),
(2679, '72e9-a7a3-2720-8d38'),
(2623, '72ea-b3ee-b70f-75b0'),
(2293, '737b-d932-4cd1-12f5'),
(2335, '740d-8fd8-3252-ef36'),
(2531, '7443-3380-d09d-23d1'),
(2319, '7452-a072-6d27-76ff'),
(2353, '7452-ec6b-4385-6e50'),
(2265, '7456-bd0f-1042-019e'),
(2672, '7467-86d5-6aca-b325'),
(2768, '74a2-0aaa-4d37-6d01'),
(2124, '74d9-3e3f-b134-4ebd'),
(2401, '74ed-d318-0edc-3e9c'),
(2798, '7567-c37b-871c-8dd8'),
(3010, '759d-6edf-26d4-1f08'),
(2987, '760c-32a3-f259-eed8'),
(2517, '761e-72e2-0f98-d8b3'),
(2456, '7636-045a-accc-149d'),
(2610, '7650-250f-6a24-85f2'),
(2482, '7667-e3cf-4af0-fd5e'),
(2423, '7711-7769-8b11-d7cb'),
(2962, '774c-52b9-27df-1e9b'),
(2884, '77a9-1994-a40d-92c5'),
(2142, '77ca-6011-952f-d3b1'),
(2846, '77da-9b5d-1c19-9836'),
(2771, '7849-f26e-fbb5-1c3f'),
(2953, '78c0-cc34-8b52-249f'),
(2661, '795c-4882-06dd-70a4'),
(2918, '7961-0c0d-dfe9-b4a2'),
(2666, '79e2-9f2d-69e7-1f60'),
(2849, '7a25-486d-ad43-e49d'),
(2634, '7a53-3369-8275-c242'),
(2743, '7b45-4fe5-a3d0-cd05'),
(2816, '7ca9-5b56-355a-4645'),
(2187, '7cb1-78ee-29b7-b869'),
(2271, '7cba-1d63-1ba6-6f8a'),
(2153, '7cca-715f-a609-8a5f'),
(2071, '7d22-a635-65ba-de6e'),
(3012, '7d35-eecd-49ff-57af'),
(2541, '7d41-035b-0ac9-f7e3'),
(2878, '7dc1-68ca-a795-3e95'),
(2549, '7dcf-5a07-e619-c72d'),
(2425, '7e10-62a4-6dad-0174'),
(2054, '7e81-8352-8317-ca9d'),
(3015, '7ecc-fc86-945c-fe1c'),
(2836, '7f98-7140-41a2-55d2'),
(2782, '7ffd-08b2-531c-a268'),
(2244, '800f-79b8-2f6b-abcd'),
(2385, '8014-5be7-e295-5eed'),
(2606, '80ce-1ee3-0397-ca89'),
(2712, '80ed-5945-0baf-7eeb'),
(2253, '80fe-7d46-00d9-eb19'),
(2819, '8145-48a6-2a7f-512f'),
(2942, '8164-ab23-abe6-f01a'),
(2091, '8179-8b36-0ffb-ce88'),
(2576, '8198-ce68-89b9-1286'),
(2112, '81ed-805d-f824-4c55'),
(2919, '820c-a3fe-88e8-6840'),
(3033, '8236-facf-778b-6beb'),
(2795, '8277-bb70-669c-c677'),
(2355, '8292-26a2-6345-dddd'),
(2294, '834a-d3d7-2903-d592'),
(2938, '8364-fb30-8084-35e5'),
(2756, '84a8-3452-01b2-e22e'),
(2791, '84ad-7c8a-0e41-3d65'),
(3031, '84b2-9ee3-ca41-ffe4'),
(2559, '851c-be4a-07c5-2cdd'),
(2136, '85c4-469b-0137-06d0'),
(2207, '85f3-3855-f132-60e0'),
(2170, '8642-a2bf-5643-002b'),
(2075, '8665-49fe-fdcd-2c93'),
(2125, '869b-2eb2-8e7c-a464'),
(2664, '869e-fd03-983c-7f4c'),
(2783, '86c6-0493-8c76-15bc'),
(2855, '86d9-9fbd-5dcb-9500'),
(2966, '86e1-1ded-2716-2728'),
(3021, '8714-7925-adb8-5a26'),
(2484, '879d-58f8-e2e1-7495'),
(2646, '8845-120e-606a-2c29'),
(2094, '8849-f471-3b6f-5746'),
(2480, '884e-87f6-cf8d-701a'),
(2882, '88fb-d3b8-e8d1-6a35'),
(2601, '8924-5090-c1e4-4ef4'),
(2264, '892b-51e9-935f-fae7'),
(2800, '8968-3512-7ade-e4a1'),
(2676, '8970-ac26-58d6-b5b7'),
(2051, '897d-06db-fb0b-8c32'),
(2316, '898d-adb1-3db2-a27b'),
(2581, '89c9-7c87-2a50-473b'),
(2556, '8a96-db78-c8b2-c11f'),
(2429, '8ab0-737d-6ec8-bdd9'),
(2098, '8ab7-c05d-c570-f9fd'),
(2628, '8ae0-9e5d-45a2-734a'),
(2179, '8b0c-4646-43b1-b8aa'),
(2588, '8b29-ccff-c3c0-60cd'),
(2287, '8b5a-7dd9-e6af-64d8'),
(3017, '8c0d-6f8f-b344-d282'),
(2671, '8c19-5b7b-36af-b0aa'),
(2732, '8c22-f17b-e922-abec'),
(2986, '8c2a-1d89-069d-1e57'),
(2653, '8da6-bf77-a2c9-ce8d'),
(2500, '8e05-e7d1-c3fe-fdce'),
(2516, '8e97-b109-471d-c3e2'),
(2814, '8f58-05b0-4392-affc'),
(2049, '8f5e-2d8b-2be3-e49e'),
(2945, '8f6b-fb88-4cc8-3eab'),
(2820, '8f76-a494-2e88-3b83'),
(2477, '8fc2-6d66-8efb-3441'),
(2090, '8fdc-171e-7e02-a500'),
(2072, '9022-3cc3-dcd9-f1bf'),
(2952, '9062-5ad3-f065-3bf3'),
(2530, '9071-9e30-97be-d7ce'),
(2413, '9091-617b-71fc-52ac'),
(2245, '9125-f866-a3d5-651d'),
(2228, '9172-2c72-e32d-4e9d'),
(2901, '91e4-5505-ae90-c0ee'),
(2872, '9258-00cf-4138-99b3'),
(2592, '92f8-10ed-1456-a27f'),
(2908, '9300-40b7-a44c-bc86'),
(2103, '9350-8061-2c57-8a00'),
(2656, '9372-c5a3-dff7-1c29'),
(2181, '9374-8978-2560-6a43'),
(2145, '93b5-cfe5-bd9d-c5ad'),
(2307, '93d0-2ce3-a8dd-5157'),
(2460, '9427-724e-503b-5d0f'),
(2960, '9488-2403-0c4e-14c6'),
(2693, '94af-3433-3429-d236'),
(2600, '94e9-c819-8bc6-055f'),
(2082, '9580-484b-bd3d-524d'),
(2496, '95aa-c96e-45a6-dd83'),
(2790, '95cf-76bf-3d54-e4cb'),
(2045, '962e-bd7f-0f2e-b0d1'),
(2542, '9644-e9af-f167-1719'),
(2231, '964c-4cbd-dd2e-325e'),
(2323, '96cb-4470-ba03-67de'),
(3030, '9769-e433-4559-2ba9'),
(2471, '97a1-0539-849b-6517'),
(2445, '97c4-76f7-6c89-531f'),
(2853, '988d-d41c-6530-a1f0'),
(2334, '98aa-260f-8ded-778f'),
(2951, '98b3-efc5-53d7-0b12'),
(2447, '98ca-c28b-2874-6a1f'),
(2665, '98ce-61b3-beab-2f72'),
(2384, '98e9-3aa4-3df6-e8a4'),
(2622, '994f-42d0-d1c0-351a'),
(2361, '99fd-5fb3-2899-f4c6'),
(2437, '9a04-da6b-c8bb-b3ce'),
(2102, '9a0e-b990-df4d-1ab8'),
(2169, '9a25-1eca-1807-ada2'),
(2451, '9a39-5ff6-3a69-d042'),
(2308, '9a55-9fff-85c1-52fa'),
(2158, '9a62-98aa-b673-5096'),
(2726, '9ab0-20a5-b6b1-4883'),
(2572, '9aef-ea62-66c1-295b'),
(2772, '9b25-13fa-26f8-6f15'),
(2377, '9b50-c8f0-91f5-2797'),
(2963, '9bad-996a-8e97-0139'),
(2159, '9bdd-7862-0214-5641'),
(2635, '9c03-62b4-6cd9-391d'),
(2669, '9c0c-48c3-d226-6154'),
(2234, '9c21-b2c0-882a-8a64'),
(2298, '9cf0-a545-c74b-15af'),
(2801, '9cf5-a849-22b1-cbac'),
(2825, '9d46-10e1-a72c-e321'),
(2703, '9d75-5aec-7f55-73c1'),
(2827, '9d93-446c-17b7-7faa'),
(2074, '9e75-e306-c363-bf61'),
(2250, '9e89-5fca-405a-63d5'),
(2114, '9f21-572f-1429-91bf'),
(2733, '9f60-4a41-9a9e-6da5'),
(2180, '9f74-85d9-41f4-1f1c'),
(2059, '9ff5-1f88-544d-7375'),
(2197, 'a009-feed-3949-ae19'),
(2208, 'a033-5e71-9a62-78cb'),
(2200, 'a0dc-30ad-4031-00fd'),
(2258, 'a0dd-7493-99a0-506f'),
(3039, 'a0eb-8058-a572-c855'),
(2254, 'a14a-ece5-a7da-78b6'),
(2833, 'a16d-2f29-f1e0-d04b'),
(2721, 'a183-ac83-a9d0-fcce'),
(2263, 'a191-4a63-22f9-d4ba'),
(2702, 'a1d7-cb86-8597-e14b'),
(2504, 'a2f9-5611-fe6c-fbb6'),
(2753, 'a37d-c1fc-bbb4-6461'),
(2474, 'a38d-a902-cf46-ea11'),
(2969, 'a3b4-79a9-d914-946c'),
(2781, 'a3b7-feb1-69b3-611b'),
(2466, 'a4cd-73fb-a1df-16db'),
(2994, 'a522-de5d-b5dc-2ff6'),
(2199, 'a544-1e19-dbc7-0f15'),
(3007, 'a5ba-050c-ac87-3152'),
(2194, 'a5cf-9339-e15f-7c6a'),
(2337, 'a5e9-efa6-bc0e-7175'),
(2086, 'a6a3-bcb2-72a6-df85'),
(2365, 'a6bb-b95b-b60b-c242'),
(2789, 'a6cf-a43b-a8f1-a307'),
(2491, 'a74f-6e1c-d62e-95d6'),
(2885, 'a76f-7ad6-fc1b-2f60'),
(2652, 'a778-08d9-810d-9c45'),
(2582, 'a7aa-bb85-518a-2268'),
(2695, 'a7e3-512b-f1ac-3326'),
(3036, 'a7f5-7f33-13c1-a6c4'),
(2815, 'a815-4ee6-47ae-dd36'),
(2965, 'a81e-511c-1109-85ef'),
(2065, 'a823-abf9-5708-7c43'),
(2514, 'a829-1e21-c5dd-40b8'),
(2305, 'a832-8939-c3ea-a862'),
(2297, 'a84d-cef8-6902-374e'),
(2383, 'a85c-8078-7c7c-bd31'),
(2087, 'a88b-154c-3194-b463'),
(2840, 'a89f-bcd6-61da-e0c3'),
(2499, 'a8b4-5293-d7f3-4194'),
(2461, 'a906-1177-92e4-8ba5'),
(2160, 'a90e-5993-24ce-04db'),
(2236, 'a936-4116-858c-f8a5'),
(2173, 'a9cc-483e-c794-9338'),
(2687, 'a9d8-5ad3-848d-b5f5'),
(2282, 'aa43-7027-5b96-ba67'),
(2143, 'aa97-6a39-b656-a987'),
(2432, 'aa9a-441c-a9ed-d034'),
(2494, 'aab3-1f8b-274a-2b54'),
(2958, 'aad1-2588-2079-0fa7'),
(2502, 'aad4-7122-edd0-de30'),
(2946, 'ab08-acf8-4902-828b'),
(2211, 'ab52-3b03-76e8-a1a6'),
(2570, 'ac2e-0b62-3a56-8fd2'),
(2446, 'ac31-135e-8b5d-4f1f'),
(2980, 'ac81-6d91-ee49-5879'),
(2660, 'acb1-e4dc-f055-7098'),
(2191, 'ad07-5896-93f6-2a26'),
(2472, 'ad84-9bbe-79bd-b46c'),
(2397, 'ad87-6b29-6d65-5bd1'),
(2924, 'ad89-9577-70ba-2a5d'),
(2175, 'ad99-a07f-736a-1c8e'),
(2099, 'ae1a-caa9-e17a-1cf4'),
(2389, 'af07-ff37-4211-5752'),
(2554, 'af0a-db77-dd57-8ccc'),
(2218, 'af1e-4ecb-f871-f1b9'),
(2914, 'af6b-5b0d-d752-c0b3'),
(2892, 'af99-ec57-cdac-344c'),
(2331, 'afa0-5e36-654b-be17'),
(2749, 'afee-6aa4-ce97-ce18'),
(2975, 'b0eb-e032-8b8e-7c17'),
(2233, 'b1c8-6afc-04a3-f11e'),
(2996, 'b1ff-f87c-5fdf-60cf'),
(2774, 'b211-9a1f-a460-bb45'),
(2113, 'b233-5b40-c54a-82ba'),
(2467, 'b2af-3b7c-a083-579e'),
(3028, 'b2fc-f1f8-f00c-9421'),
(2737, 'b30d-84a0-305a-5c22'),
(2678, 'b30d-a349-2f52-808c'),
(2713, 'b35b-cf6b-2b88-6ffc'),
(2251, 'b3e9-2fab-a560-8696'),
(2716, 'b3f4-f0c0-2af1-bf13'),
(2751, 'b413-57c4-1b49-7b2e'),
(2080, 'b447-36dd-a054-0899'),
(2949, 'b516-4f44-a838-55f6'),
(2434, 'b538-c6ec-ac6b-0f46'),
(2329, 'b58d-6ee2-d9f5-dfc4'),
(2854, 'b5a7-331a-9f0f-7e55'),
(2328, 'b5af-d97a-600a-604b'),
(2392, 'b5b7-4313-4026-b457'),
(2944, 'b691-0532-1752-8c1c'),
(2487, 'b699-e49f-49f0-cfa6'),
(2164, 'b6b9-4b24-7751-8a98'),
(2479, 'b6c3-5b37-5c4b-e0a9'),
(2861, 'b722-128e-7381-b8f8'),
(2928, 'b782-93ea-7655-972a'),
(2370, 'b786-f557-6a8a-ebb0'),
(2864, 'b793-70a4-e7a2-64ca'),
(2822, 'b7be-208d-e5f4-c9ff'),
(2057, 'b7e7-a8f3-08c5-ef1e'),
(2826, 'b806-a4d2-94a3-732c'),
(2278, 'b824-9016-9c7a-eee7'),
(2241, 'b844-9b84-a5bf-9107'),
(2659, 'b8f5-9773-2ffa-a8ab'),
(2239, 'b94e-df93-2ba4-084f'),
(2744, 'b995-e245-2cb2-ee71'),
(2574, 'b99b-e33e-0cc8-207d'),
(2501, 'b9c3-fcea-ffcb-eb94'),
(2130, 'b9ce-377b-6d1a-0c06'),
(2668, 'ba79-fefd-6041-0b98'),
(2376, 'ba91-d4bd-f544-c106'),
(2299, 'ba92-a385-12e3-8a37'),
(2752, 'bab2-2d93-fab9-4c33'),
(2847, 'bab5-c473-56b9-7a0c'),
(2806, 'bb4c-ff17-e144-0eb3'),
(2272, 'bb86-cdd4-1f20-1dce'),
(2548, 'bbc1-0094-95c1-2548'),
(2357, 'bbce-7694-d1a5-801a'),
(2117, 'bbdd-4a34-1f15-1089'),
(2133, 'bbed-fcef-5dcf-bf2c'),
(2925, 'bc00-e829-4c46-5dd7'),
(2865, 'bc18-4eb6-52ac-647d'),
(2304, 'bc66-1a66-f03d-4d8a'),
(2382, 'bcd6-86e5-3086-60ca'),
(2314, 'bd48-55e1-9226-3b42'),
(2408, 'bd97-dbf6-b76e-b74f'),
(2993, 'bdca-8480-8868-03cd'),
(2498, 'be02-a196-cd65-f3ed'),
(2880, 'be66-4ee8-324a-7f4a'),
(3022, 'bf3a-f0af-2aa2-2266'),
(2358, 'bf45-35fe-039f-61a7'),
(2651, 'bf55-525a-ea94-fde8'),
(2063, 'bf71-71d9-39c9-a321'),
(2527, 'bf75-edeb-8de8-0290'),
(2107, 'bf7f-0f24-e372-0684'),
(3025, 'bfc8-4d2d-5b97-abb1'),
(2089, 'bfd2-d3b5-efd5-e3f5'),
(2927, 'c01f-96d8-edde-de30'),
(2525, 'c0a2-52b7-10f7-25d9'),
(2312, 'c0b7-e417-83c8-2a9d'),
(2810, 'c106-aba3-ac43-5a8e'),
(2630, 'c10e-9d1e-5cba-33ea'),
(2155, 'c11b-762c-03bf-29db'),
(2152, 'c187-4316-e67d-c54f'),
(2123, 'c1b1-e373-b186-0c59'),
(2947, 'c1ec-b396-a091-0846'),
(2662, 'c217-bcb1-2435-0af7'),
(2694, 'c21c-7885-017d-2367'),
(2786, 'c261-8a0c-aa97-302d'),
(2190, 'c2e4-6f7b-9994-faff'),
(2838, 'c2eb-db40-345a-b147'),
(2050, 'c2ed-4f3d-1aa5-14f5'),
(2391, 'c30b-0264-3aad-2760'),
(2643, 'c347-f155-475d-42da'),
(2738, 'c3f8-1075-4aec-fcfe'),
(2632, 'c406-af2f-7682-1aa7'),
(2135, 'c43b-5cc9-883a-199a'),
(2704, 'c47b-ab3a-2388-86b1'),
(2284, 'c52b-6ca3-2def-c5f9'),
(2420, 'c52c-ebb8-22a8-2dd8'),
(2881, 'c53f-3de7-2d48-48c6'),
(2688, 'c661-1c12-b9b2-46b6'),
(2343, 'c666-e509-558d-84e5'),
(2817, 'c6c0-1189-f692-ad63'),
(3004, 'c6e4-7faa-6bcf-888f'),
(2275, 'c6ea-ea25-2a20-9dda'),
(2182, 'c769-94eb-d06a-0255'),
(2728, 'c778-6860-fe86-ed63'),
(2414, 'c819-2005-427b-6374'),
(2868, 'c825-3ace-2058-3976'),
(2609, 'c86f-c0d9-33ac-60a7'),
(2689, 'c875-810c-8c46-5521'),
(2765, 'c8dc-ca7d-1e9c-47dd'),
(2509, 'c948-791f-c200-261e'),
(2398, 'c9c1-17ad-a9e4-df1b'),
(2219, 'c9c4-1b73-815f-e08a'),
(2898, 'ca28-fbe8-8a13-80ec'),
(2188, 'ca4d-2ea3-85df-1cd7'),
(2227, 'cae8-e30f-8c9f-a2f6'),
(2489, 'cb0d-0c1c-3b06-68c5'),
(2821, 'cbb7-1379-2faa-bdec'),
(2407, 'cbeb-6ab2-59eb-42c0'),
(2524, 'cc23-87e4-1e92-a05a'),
(2073, 'cc50-5892-2adb-0b37'),
(2283, 'cce3-d910-1cd7-4db4'),
(2794, 'cce3-efab-9c16-685e'),
(2907, 'ccfa-bd25-f564-db8e'),
(2346, 'cd3f-f9b2-2ca2-1354'),
(2394, 'cd7d-b78f-821b-0e85'),
(2156, 'cd9a-b23f-2189-8c82'),
(2237, 'cdf2-03ae-d252-9707'),
(2390, 'ce05-a893-e596-540f'),
(2132, 'ce31-76b5-f3ad-8908'),
(2597, 'ce53-60bf-5a50-0db0'),
(2685, 'ce66-942c-9637-433e'),
(2912, 'ce77-a276-d41f-9523'),
(2697, 'ce7d-3213-2cb9-a427'),
(2973, 'ce84-7cc0-7568-efbe'),
(2439, 'ce89-869d-d5c6-139b'),
(2126, 'ceae-233b-9209-d490'),
(2654, 'cf45-b866-2583-4220'),
(2618, 'cf77-a614-ba7f-8133'),
(2473, 'd006-ac89-1478-8954'),
(2430, 'd062-91fe-5b6a-9b55'),
(2670, 'd0ad-3ade-c698-7e20'),
(3002, 'd0fa-7eca-34ce-a5be'),
(2533, 'd144-a34a-73c4-e99b'),
(3014, 'd178-6253-1eaa-602b'),
(2682, 'd1bf-854d-5084-5ba4'),
(2052, 'd2a9-7f8e-7fa3-a181'),
(2507, 'd2d5-ce98-8ba9-3237'),
(2431, 'd2ee-943e-5f23-0741'),
(2902, 'd39d-33e9-c8a7-25e1'),
(2995, 'd3ad-33ae-1b07-562e'),
(2690, 'd3d3-f0fa-1eeb-db06'),
(2327, 'd437-bda7-1682-7a11'),
(2162, 'd4a6-008c-3c12-478c'),
(2111, 'd4ac-b630-bdbf-3ed3'),
(2247, 'd4c7-635f-d76c-b66c'),
(2976, 'd507-cd25-87f0-28ee'),
(2850, 'd551-6564-1518-1e9d'),
(2048, 'd5c5-8737-7e2b-472e'),
(2521, 'd5d7-8eae-8fbc-6697'),
(2105, 'd5ff-f1c8-923c-c42a'),
(2871, 'd635-a591-c689-4aa1'),
(2551, 'd637-bf65-af6c-7a5f'),
(2722, 'd6bb-0428-78ec-6a0a'),
(2605, 'd755-9301-781c-2b22'),
(2915, 'd779-f2bd-22dd-d0d6'),
(2485, 'd790-558a-ee79-e22f'),
(2558, 'd793-8be6-d60c-452e'),
(2442, 'd7d0-743f-3eda-86c5'),
(2276, 'd7d6-ad65-fa54-cd35'),
(2964, 'd7eb-e766-487a-9dd4'),
(2435, 'd81a-44b1-cb01-8b90'),
(2763, 'd83b-bc91-0ea2-ca74'),
(2144, 'd856-f28e-b1f3-0aa5'),
(2767, 'd89d-10e1-c888-e2e3'),
(2593, 'd8db-dc32-8d5d-6ed4'),
(2395, 'd904-0b33-80f2-405b'),
(3027, 'd92c-2328-1159-8167'),
(2380, 'd934-4676-b261-415b'),
(2148, 'd9b8-5be2-2a81-c874'),
(2256, 'd9ed-1193-6cea-a398'),
(2139, 'da55-03f0-a79e-671f'),
(2978, 'daa8-5ec9-408b-3fea'),
(2056, 'daea-9d52-6185-8a16'),
(2345, 'daf7-9b6f-008e-44b7'),
(2417, 'db37-c152-6601-6603'),
(2620, 'db6b-2ba0-05c8-2a01'),
(2613, 'dba9-edad-5a7a-159e'),
(2154, 'dbd7-6da9-8a0d-5fd4'),
(2637, 'dbe3-6d9b-f6e3-fa50'),
(2655, 'dbee-53b2-4a48-b129'),
(2268, 'dc10-cf69-aae8-7451'),
(2469, 'dc7a-8dca-17e0-1de1'),
(2458, 'dca9-fe85-ce9f-f32b'),
(2372, 'dcb7-c9bc-1c32-a1fd'),
(2644, 'dd25-da9a-6dfe-5f0e'),
(2419, 'ddc7-a1c3-1670-a9b9'),
(2393, 'ddda-9a44-9cf1-2486'),
(2684, 'dde6-7852-fa57-3e24'),
(2138, 'ddfe-82bf-3651-cc2b'),
(2683, 'de18-e054-38d8-9ec4'),
(2989, 'de2e-2512-280e-82ba'),
(2122, 'de4f-4630-77a0-6cb4'),
(3037, 'de53-ef97-8ddb-3598'),
(2638, 'de5f-49a1-d8f0-2741'),
(2503, 'de89-da33-e043-0192'),
(2532, 'dece-27ed-0a08-98fc'),
(2481, 'ded1-0144-a1f9-2d78'),
(2492, 'df55-1615-db66-8aa0'),
(2424, 'df8a-1806-a93f-9b76'),
(2427, 'dfe3-5f9d-ac02-a691'),
(2252, 'dff2-d14e-6d36-3482'),
(2848, 'e020-cf8e-976e-cab0'),
(2055, 'e08f-0b3a-9889-2cca'),
(2176, 'e0d2-2beb-e816-1630'),
(2579, 'e114-b1d5-d6eb-acd4'),
(2088, 'e16a-986d-fe36-51bd'),
(2611, 'e1a8-9f13-4a3a-53c2'),
(2440, 'e1de-a0b2-735b-bf65'),
(2755, 'e1e3-296c-becc-0ec3'),
(2546, 'e2c1-bf2a-0e20-32cf'),
(2805, 'e328-f0b8-1135-1b7e'),
(2811, 'e36e-70b3-4f20-0291'),
(2730, 'e37f-979c-6430-104e'),
(2518, 'e3aa-13f3-ddbf-b4f5'),
(2717, 'e497-2e88-2b89-a265'),
(2594, 'e511-3a9b-f62c-4b36'),
(2371, 'e595-2861-75fd-fb17'),
(2877, 'e5b5-0d54-b8e5-b8a9'),
(3019, 'e601-36e8-6c41-5892'),
(2700, 'e644-452a-6b42-91b5'),
(2932, 'e6a0-6b31-b820-8049'),
(2061, 'e717-9e88-c129-88c0'),
(2270, 'e753-32d6-4ba1-4e57'),
(2522, 'e75f-0c2f-d293-8bde'),
(2675, 'e7b9-a30c-3646-4346'),
(2257, 'e7cb-728c-4923-399c'),
(2788, 'e7d7-673a-47cc-0b77'),
(2612, 'e7e1-e9d8-b335-e46f'),
(2573, 'e7fc-aae9-eedd-50d9'),
(2053, 'e800-2ff6-e096-157f'),
(2185, 'e827-6e8e-6251-af4b'),
(2745, 'e84b-fb66-2212-f061'),
(2566, 'ea3e-88d4-e600-edc6'),
(2714, 'ea44-ff4f-a0f9-cb96'),
(2512, 'ea50-9f7c-98eb-cf5c'),
(2213, 'ea83-ebcd-8189-9522'),
(2746, 'ea9a-f90d-2f5d-b348'),
(2883, 'eabd-4b0b-11a4-b61d'),
(2526, 'eb5d-5254-e793-33ce'),
(2835, 'ebec-fa47-76ec-fb83'),
(2807, 'ec79-830e-8bab-7970'),
(2493, 'ec83-8572-87e6-3726'),
(2808, 'ec91-f38f-8d32-ade8'),
(2603, 'ed08-c8fc-a5bd-5ab0'),
(2360, 'ed5e-fb09-43e8-d159'),
(2119, 'ed6c-ed6e-3d19-6764'),
(2863, 'edbf-0f02-149f-5a59'),
(2741, 'edce-6da8-00b9-6ee5'),
(2301, 'ee40-4b73-7356-52f4'),
(2529, 'eed7-eb8a-30e6-dfe2'),
(3018, 'ef13-3cff-ed0c-bee3'),
(2602, 'f027-0546-5425-a8ca'),
(2189, 'f078-7947-9dc6-3a32'),
(2974, 'f092-8468-0084-a6d9'),
(2465, 'f094-6422-f488-e170'),
(2740, 'f09d-dc69-7ab1-c189'),
(2571, 'f101-76bf-d70c-3a8c'),
(2851, 'f109-4987-e8a5-a354'),
(2580, 'f151-aaa3-34cd-a638'),
(2909, 'f22d-88b9-32c4-4289'),
(2523, 'f2ac-7260-cf65-a538'),
(2443, 'f317-535d-f9f6-a220'),
(2347, 'f391-bd73-7984-165c'),
(2578, 'f3fc-fe13-ffd6-81ed'),
(2614, 'f442-16c7-4769-6a01'),
(2266, 'f45a-f74b-dcee-de78'),
(2766, 'f490-8355-1921-7c29'),
(2131, 'f495-c55c-8ae0-421f'),
(2330, 'f497-453b-902a-e0bc'),
(3034, 'f4d9-c6d0-546d-c220'),
(2415, 'f4e4-26c5-e657-d5f1'),
(2259, 'f583-4550-117b-f793'),
(2097, 'f5a3-b441-176a-b218'),
(2324, 'f5bb-70e5-7825-f1a9'),
(2046, 'f65e-6ef3-59e3-7a14'),
(2856, 'f6e4-cb39-2137-733b'),
(2889, 'f756-df5d-0262-d2ef'),
(2843, 'f771-0ea2-9896-5c45'),
(2982, 'f7ad-367d-5263-44a5'),
(2747, 'f7d9-d64d-28cb-090a'),
(2954, 'f7e9-da29-308b-6ec7'),
(2433, 'f80c-db9b-6cbf-1e21'),
(2729, 'f823-c803-eb49-f73c'),
(2896, 'f831-e5dc-29c3-5287'),
(2318, 'f868-fa0f-de00-61f8'),
(2478, 'f880-9f21-2bd7-dcff'),
(2409, 'f8e5-1632-0247-1bb3'),
(2210, 'f981-3dd7-d856-215f'),
(2734, 'f9d8-48cc-e0d6-6eda'),
(2875, 'fa62-f9d1-a214-bad7'),
(2428, 'fa78-e30b-ad8c-3775'),
(2344, 'fa8c-c4e8-99b1-a3b8'),
(2118, 'faaa-fbb7-39cb-81ab'),
(2490, 'fb1c-d169-5938-c758'),
(2041, 'fb43-5340-8ab3-4464'),
(2829, 'fbcd-1c13-ef76-53fd'),
(2758, 'fbec-68ed-a6be-e897'),
(2290, 'fd41-1da2-37f8-8595'),
(2281, 'fd4d-e2a3-9495-846a'),
(2455, 'fd4f-0e3e-2339-23cb'),
(2876, 'fdf0-7156-9b90-b300'),
(2657, 'fe49-07f6-66da-c27d'),
(2084, 'fe6e-40fe-92d1-4809'),
(2708, 'fe92-6ebb-337c-c142'),
(2539, 'fe9f-def5-7e5e-69bd'),
(2818, 'fee4-ca13-be1f-3602'),
(2274, 'ff1d-32a5-e97e-d17a'),
(2192, 'ff35-7ecc-458d-d671'),
(2764, 'ff3b-a42b-9805-7ded'),
(2495, 'ff4f-2f3f-97c4-98df'),
(2463, 'ff73-19fe-de4f-a500'),
(2511, 'fffc-62ac-72f9-0184');

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE IF NOT EXISTS `wallet` (
`id` int(10) unsigned NOT NULL,
  `id_member` int(10) unsigned NOT NULL,
  `balance` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wallet`
--

INSERT INTO `wallet` (`id`, `id_member`, `balance`) VALUES
(1, 1, 200000),
(2, 2, 3000000),
(3, 3, 100000),
(4, 4, 100000),
(5, 5, 100000),
(6, 6, 100000),
(7, 7, 150000),
(8, 10, 0),
(9, 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wallet_logs`
--

CREATE TABLE IF NOT EXISTS `wallet_logs` (
`id` int(10) unsigned NOT NULL,
  `id_member` int(10) unsigned NOT NULL,
  `type` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `amount` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wallet_logs`
--

INSERT INTO `wallet_logs` (`id`, `id_member`, `type`, `message`, `amount`) VALUES
(2, 1, 'deposit', 'deposit referral Rp. 100000', 100000),
(3, 3, 'deposit', 'deposit referral Rp. 100000', 100000),
(4, 4, 'deposit', 'deposit referral Rp. 100000', 100000),
(5, 5, 'deposit', 'deposit referral Rp. 100000', 100000),
(6, 6, 'deposit', 'deposit referral Rp. 100000', 100000),
(7, 7, 'deposit', 'deposit referral Rp. 150000', 150000),
(8, 10, 'created', 'Pembuatan wallet', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activation_member_logs`
--
ALTER TABLE `activation_member_logs`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `captcha`
--
ALTER TABLE `captcha`
 ADD PRIMARY KEY (`captcha_id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`,`email`);

--
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfer_referral`
--
ALTER TABLE `transfer_referral`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfer_referral_bukti`
--
ALTER TABLE `transfer_referral_bukti`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfer_referral_cancel`
--
ALTER TABLE `transfer_referral_cancel`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfer_referral_conf`
--
ALTER TABLE `transfer_referral_conf`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfer_referral_conf_amount`
--
ALTER TABLE `transfer_referral_conf_amount`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfer_referral_msg`
--
ALTER TABLE `transfer_referral_msg`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voucher`
--
ALTER TABLE `voucher`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `nomor` (`nomor`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet_logs`
--
ALTER TABLE `wallet_logs`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activation_member_logs`
--
ALTER TABLE `activation_member_logs`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `captcha`
--
ALTER TABLE `captcha`
MODIFY `captcha_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=159;
--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `transfer_referral`
--
ALTER TABLE `transfer_referral`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT for table `transfer_referral_bukti`
--
ALTER TABLE `transfer_referral_bukti`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `transfer_referral_cancel`
--
ALTER TABLE `transfer_referral_cancel`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `transfer_referral_conf`
--
ALTER TABLE `transfer_referral_conf`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `transfer_referral_conf_amount`
--
ALTER TABLE `transfer_referral_conf_amount`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `transfer_referral_msg`
--
ALTER TABLE `transfer_referral_msg`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `voucher`
--
ALTER TABLE `voucher`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3041;
--
-- AUTO_INCREMENT for table `wallet`
--
ALTER TABLE `wallet`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `wallet_logs`
--
ALTER TABLE `wallet_logs`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

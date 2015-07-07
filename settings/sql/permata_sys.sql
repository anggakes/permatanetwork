-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2015 at 05:38 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `permata_sys`
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activation_member_logs`
--

INSERT INTO `activation_member_logs` (`id`, `id_member`, `keterangan`, `created_at`, `tahap_aktivasi`) VALUES
(16, 8, 'Aktivasi dengan Voucher b971-80bd-6b97-4f4d', '2015-07-01 08:14:34', 'voucher'),
(17, 10, 'Aktivasi dengan Voucher 0069-1bc7-58ac-cad6', '2015-07-01 16:05:03', 'voucher'),
(18, 13, 'Aktivasi dengan Voucher ff67-d71a-bf6e-dca3', '2015-07-03 16:11:38', 'voucher'),
(23, 15, 'Aktivasi dengan Voucher 0289-2fa2-8601-e0c8', '2015-07-03 16:39:01', 'voucher'),
(24, 16, 'Aktivasi dengan Voucher 02ef-a442-b566-2fd4', '2015-07-03 16:43:53', 'voucher'),
(25, 17, 'Aktivasi dengan Voucher 00a7-4c73-b821-3cbe', '2015-07-03 16:48:08', 'voucher'),
(27, 17, 'Aktifasi selesai transfer referral', '2015-07-03 17:01:08', 'transfer'),
(29, 11, 'Aktifasi selesai transfer referral', '2015-07-05 08:45:39', 'transfer'),
(30, 19, 'Aktivasi dengan Voucher 030c-0a94-696b-e824', '2015-07-05 09:02:55', 'voucher'),
(31, 19, 'Aktifasi selesai transfer referral', '2015-07-05 09:10:25', 'transfer'),
(32, 20, 'Aktivasi dengan Voucher 032e-da19-758b-b16a', '2015-07-05 09:35:11', 'voucher'),
(33, 20, 'Aktifasi selesai transfer referral', '2015-07-05 09:55:24', 'transfer'),
(34, 21, 'Aktivasi dengan Voucher 0334-85fa-35b7-be82', '2015-07-05 10:15:44', 'voucher'),
(35, 21, 'Aktifasi selesai transfer referral', '2015-07-05 10:20:39', 'transfer'),
(36, 22, 'Aktivasi dengan Voucher 03e3-a21f-65b1-94f0', '2015-07-05 10:25:22', 'voucher'),
(39, 25, 'Aktivasi dengan Voucher 0485-42b4-e5f1-7266', '2015-07-05 11:04:18', 'voucher'),
(40, 26, 'Aktivasi dengan Voucher 0516-5536-3568-6144', '2015-07-05 11:10:24', 'voucher'),
(41, 27, 'Aktivasi dengan Voucher 0589-23dc-513d-7077', '2015-07-05 16:38:45', 'voucher'),
(42, 28, 'Aktivasi dengan Voucher 0858-20da-90e7-347b', '2015-07-05 16:45:38', 'voucher'),
(43, 29, 'Aktivasi dengan Voucher 05a0-a49b-0122-bdc8', '2015-07-05 17:29:10', 'voucher'),
(44, 28, 'Aktifasi selesai transfer referral', '2015-07-05 17:29:36', 'transfer'),
(45, 30, 'Aktivasi dengan Voucher 0754-9be5-eeeb-2441', '2015-07-05 17:31:32', 'voucher'),
(46, 30, 'Aktifasi selesai transfer referral', '2015-07-05 17:42:44', 'transfer'),
(47, 26, 'Aktifasi selesai transfer referral', '2015-07-05 18:03:23', 'transfer'),
(48, 31, 'Aktivasi dengan Voucher 0567-e289-1bda-eed3', '2015-07-05 18:08:34', 'voucher'),
(49, 32, 'Aktivasi dengan Voucher 05ab-a55f-2422-e2dd', '2015-07-05 18:21:40', 'voucher'),
(50, 34, 'Aktivasi dengan Voucher 05f7-7249-ab53-7648', '2015-07-05 18:44:33', 'voucher'),
(51, 35, 'Aktivasi dengan Voucher 07f5-ad6f-5ee2-e8e6', '2015-07-05 19:02:54', 'voucher'),
(52, 36, 'Aktivasi dengan Voucher 06ae-53c9-f922-bea5', '2015-07-05 19:13:47', 'voucher'),
(53, 36, 'Aktifasi selesai transfer referral', '2015-07-05 19:35:03', 'transfer'),
(54, 37, 'Aktivasi dengan Voucher 0762-433a-a194-f1ad', '2015-07-05 19:40:07', 'voucher'),
(55, 37, 'Aktifasi selesai transfer referral', '2015-07-05 19:47:33', 'transfer'),
(56, 38, 'Aktivasi dengan Voucher 0828-0413-7b44-8a96', '2015-07-05 19:50:26', 'voucher'),
(57, 39, 'Aktivasi dengan Voucher 0b45-94de-54a0-ffe4', '2015-07-05 19:56:37', 'voucher'),
(58, 39, 'Aktifasi selesai transfer referral', '2015-07-05 19:58:02', 'transfer'),
(59, 38, 'Aktifasi selesai transfer referral', '2015-07-05 20:12:17', 'transfer'),
(60, 40, 'Aktivasi dengan Voucher 0890-0f91-3d2e-f098', '2015-07-05 20:16:21', 'voucher'),
(61, 40, 'Aktifasi selesai transfer referral', '2015-07-05 20:26:07', 'transfer'),
(62, 41, 'Aktivasi dengan Voucher 08c4-e925-874b-5539', '2015-07-05 20:27:29', 'voucher'),
(63, 41, 'Aktifasi selesai transfer referral', '2015-07-05 22:00:29', 'transfer'),
(64, 42, 'Aktivasi dengan Voucher 0922-e947-4909-fb88', '2015-07-05 22:19:29', 'voucher'),
(65, 42, 'Aktifasi selesai transfer referral', '2015-07-05 23:11:16', 'transfer'),
(66, 43, 'Aktivasi dengan Voucher 09f9-ce7f-b071-db31', '2015-07-05 23:24:40', 'voucher'),
(67, 43, 'Aktifasi selesai transfer referral', '2015-07-06 08:11:44', 'transfer'),
(68, 44, 'Aktivasi dengan Voucher 0a3f-75a8-b46b-10d9', '2015-07-07 07:19:22', 'voucher');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `username`, `nama`, `password`, `updated_at`, `created_at`, `last_login`, `super_admin`) VALUES
(1, 'admin@admin', 'admin', 'admin', '$2y$10$T44VIlj2nuZg8ZWsCAzZhevADpzQ2RwUq5N6redAtwNWwia7P8ZNC', '2015-07-07 07:44:09', '2015-06-27 17:00:00', '2015-07-07 07:44:09', 1);

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
) ENGINE=MyISAM AUTO_INCREMENT=301 DEFAULT CHARSET=latin1;

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
(122, 1435759309, '36.77.141.244', 'H42iOktk'),
(123, 1435759341, '36.77.141.244', '3JACvVeP'),
(124, 1435761326, '114.121.155.153', 'tbmaJ4FY'),
(125, 1435763078, '36.77.141.244', '9FKmmZxD'),
(126, 1435763083, '36.77.141.244', 'VAnNz5D4'),
(127, 1435763255, '36.77.141.244', '5B6rTF63'),
(128, 1435763289, '36.77.141.244', 'UtEpYPgz'),
(129, 1435763343, '36.77.141.244', 'Akomxhdw'),
(130, 1435763347, '36.77.141.244', 'rEuMDxVm'),
(131, 1435765188, '69.58.178.56', 'LZ1WMB9Q'),
(132, 1435765962, '202.67.42.37', 'bm1eVzwE'),
(133, 1435766140, '36.77.141.244', 'rZoTcOgF'),
(134, 1435766198, '36.77.141.244', 'l5irgt2N'),
(135, 1435766222, '36.77.141.244', 'ucLxhI9D'),
(136, 1435766237, '36.77.141.244', 'HmQEJSik'),
(137, 1435766360, '192.99.150.120', 'JcW2Ipy5'),
(138, 1435766363, '173.252.90.122', 'WguzJYQ1'),
(139, 1435829364, '64.233.173.195', 'O7rTMZks'),
(140, 1435829600, '114.124.25.142', 'k44FuIGM'),
(141, 1435833190, '114.124.24.74', 'oukUd1en'),
(142, 1435833247, '180.252.61.252', 'gxrk36hU'),
(143, 1435833374, '114.124.24.74', 'sRLB3s0t'),
(144, 1435833594, '180.252.62.249', 'A6JptqQH'),
(145, 1435833774, '180.252.62.249', 'm4FmDeJj'),
(146, 1435833848, '168.235.198.217', 'wZkDA3CT'),
(147, 1435834053, '39.213.160.205', 'JbNZUe8e'),
(148, 1435834464, '180.252.62.249', 'TIEmYIvL'),
(149, 1435834767, '146.185.30.93', 'ybnY1FZi'),
(150, 1435836366, '120.172.202.33', 'ruGiAGI9'),
(151, 1435836431, '120.172.202.33', 'fideY7UJ'),
(152, 1435836647, '120.172.202.33', 'S1BAitCG'),
(153, 1435836669, '120.172.202.33', 'lPJvRW4Q'),
(154, 1435836994, '180.214.233.84', 'TTFW3K9F'),
(155, 1435837324, '120.172.202.33', 'EmHfqxA9'),
(156, 1435842460, '36.77.141.244', 'L0CxsTuz'),
(157, 1435842468, '36.77.141.244', 'MV9XAm5L'),
(158, 1435854384, '39.254.218.255', '6SFxQ8ZB'),
(159, 1435858128, '36.77.141.244', '3XfYW7Z9'),
(160, 1435858148, '36.77.141.244', 'y3lQsjY2'),
(161, 1435858281, '36.77.141.244', 'NAxYKd1F'),
(162, 1435867098, '110.137.19.109', 'sKlOPpOm'),
(163, 1435874918, '114.125.42.209', 'sY6ayneK'),
(164, 1435875721, '114.125.15.182', 'D26oV9IV'),
(165, 1435881997, '139.192.85.217', 'NcqHJPdR'),
(166, 1435882120, '139.192.85.217', 'T2FjhirG'),
(167, 1435882242, '139.192.85.217', 'TI6PuupA'),
(168, 1435882342, '139.192.85.217', 'r7CC6PMI'),
(169, 1435882366, '139.192.85.217', 'v3Ocyhe4'),
(170, 1435882368, '139.192.85.217', 'MwGFIzGv'),
(171, 1435883138, '139.192.85.217', 'QBE3b40M'),
(172, 1435888196, '206.183.1.74', 'V1Uofu5V'),
(173, 1435922945, '120.164.43.126', 'aVkKQTZM'),
(174, 1435923023, '120.164.43.126', 'AUrVaNn8'),
(175, 1435935517, '36.77.137.208', 'gOaFp8xX'),
(176, 1435935530, '36.77.137.208', '9KMtUFpI'),
(177, 1435935679, '36.77.137.208', '4omsrox9'),
(178, 1435935687, '36.77.137.208', 'OtQhSznw'),
(179, 1435936232, '36.77.137.208', '9SF44WWm'),
(180, 1435938889, '36.77.137.208', 'QvUYo7Dr'),
(181, 1435938894, '114.125.60.181', 'xQFOJI21'),
(182, 1435938900, '36.77.137.208', 'YWEiWs3t'),
(183, 1435939174, '36.77.137.208', 'EKHnewrX'),
(184, 1435939326, '36.77.137.208', 'DD744NQK'),
(185, 1435939506, '36.77.137.208', 'U07aHtBd'),
(186, 1435939529, '36.77.137.208', '9stwtkJw'),
(187, 1435939696, '36.77.137.208', 'XaboUMds'),
(188, 1435940217, '114.125.60.181', '2yGwzo2p'),
(189, 1435940221, '114.125.60.181', 'e7qttSzH'),
(190, 1435940226, '114.125.60.181', 'Z5dk0vpr'),
(191, 1435940575, '114.125.60.181', '0pdYOFiQ'),
(192, 1435941472, '114.125.60.181', 'ACXJI0HE'),
(193, 1435941698, '114.125.60.181', 'sAePXYIe'),
(194, 1435941930, '36.77.137.208', 'WsqE4TJy'),
(195, 1435941935, '36.77.137.208', 'N4czPm7L'),
(196, 1435941965, '36.77.137.208', '9mQEZhT2'),
(197, 1435942060, '114.125.60.181', 'ZU2GdYId'),
(198, 1435942141, '114.125.60.181', 'SCb4nDEk'),
(199, 1435942167, '114.125.60.181', 'fYBJrVWl'),
(200, 1435944224, '114.125.60.181', 'v4Rdojwd'),
(201, 1435944240, '114.125.60.181', '52gXqWbD'),
(202, 1435944245, '114.125.60.181', 'eUOIC4g2'),
(203, 1435944250, '114.125.60.181', 'IPWZk8dp'),
(204, 1435944260, '114.125.60.181', 'WhOA1uYI'),
(205, 1435944264, '114.125.60.181', 'AzkkqPzH'),
(206, 1435984077, '114.124.3.226', 'qcNop7JD'),
(207, 1436000351, '36.68.43.116', 'ESnTd1Oq'),
(208, 1436000475, '36.68.43.116', 'HIJog6Pp'),
(209, 1436003180, '64.233.173.190', 'XMykQqu2'),
(210, 1436003196, '64.233.173.190', 'hTvxCRto'),
(211, 1436003904, '64.233.173.200', 'GMkAbxna'),
(212, 1436003961, '64.233.173.200', 'cJi6XSnT'),
(213, 1436004009, '64.233.173.195', 'or67TWYz'),
(214, 1436004031, '64.233.173.195', 'CPhpyNFL'),
(215, 1436004054, '64.233.173.195', '6RLNBd36'),
(216, 1436004072, '64.233.173.200', 'u9V55vhN'),
(217, 1436004260, '64.233.173.190', '6Gpmpvov'),
(218, 1436018740, '114.125.14.176', '1l6IM6bN'),
(219, 1436018848, '114.125.14.176', 'MG50oE2d'),
(220, 1436018872, '114.125.14.176', 'CaUE1So1'),
(221, 1436018954, '114.125.14.176', 'zcYccDWr'),
(222, 1436019194, '114.125.14.176', 'qGA7vojs'),
(223, 1436019354, '114.125.14.176', 'CWjyVOhC'),
(224, 1436019397, '114.125.14.176', 'AepvoqNz'),
(225, 1436019415, '114.125.14.176', 'YkikZzG2'),
(226, 1436019437, '114.125.14.176', 'TNWKgHnG'),
(227, 1436019446, '114.125.14.176', 'buIvDTzC'),
(228, 1436019766, '114.125.14.176', 'FvFYe1l9'),
(229, 1436019779, '114.125.14.176', 'p3FFVGWs'),
(230, 1436025761, '114.124.6.176', 'ODvbFrsj'),
(231, 1436033041, '120.175.111.136', 'SAN8U1AH'),
(232, 1436088129, '114.125.9.195', 'yhw8QSA4'),
(233, 1436088142, '114.125.9.195', 'Y5J4GbVw'),
(234, 1436088167, '114.125.9.195', 'fcMdspFx'),
(235, 1436088641, '125.162.59.198', 'x0Nsv1NT'),
(236, 1436088698, '125.162.59.198', 'EMdnmJ1d'),
(237, 1436088988, '125.162.59.198', '2vlniEFu'),
(238, 1436089085, '125.162.59.198', 'cbPr8zyt'),
(239, 1436090250, '125.162.59.198', '4jhhQeNg'),
(240, 1436090646, '125.162.59.198', 'lrqcvxqM'),
(241, 1436090683, '114.125.9.195', '4wRbWH0S'),
(242, 1436090994, '114.125.9.195', 'JjX3ENUH'),
(243, 1436091055, '114.125.9.195', '55thg6wM'),
(244, 1436091756, '125.162.59.198', 'aHOlSjCV'),
(245, 1436091843, '125.162.59.198', '4BnGtPGu'),
(246, 1436091843, '114.125.9.195', 'wKliavuZ'),
(247, 1436092431, '125.162.59.198', 'OwQKPXhY'),
(248, 1436092901, '114.125.9.195', 'DgDLPIUa'),
(249, 1436092915, '114.125.9.195', 'l82j2iTq'),
(250, 1436093557, '125.162.59.198', 'fBrIvU8p'),
(251, 1436093653, '125.162.59.198', '4Gj6vMu5'),
(252, 1436093698, '114.125.9.195', 'U8AdY0Lh'),
(253, 1436093705, '125.162.59.198', 'PMuSi20L'),
(254, 1436093750, '114.125.9.195', 'QWn2IPd7'),
(255, 1436094448, '125.162.59.198', 'dfFpziNK'),
(256, 1436109844, '121.100.31.15', 'VgCQqCyC'),
(257, 1436110135, '114.125.11.189', 'oqyzGXme'),
(258, 1436113205, '202.67.43.46', '5B9O42Ff'),
(259, 1436113474, '202.67.43.46', 'Qqo3JLgq'),
(260, 1436113731, '114.125.11.189', 'l2IA5elf'),
(261, 1436113737, '114.125.11.189', 'pwnQGCqG'),
(262, 1436113804, '114.125.9.55', 'rMfr9AhI'),
(263, 1436114949, '139.192.9.41', '7QqYuXUw'),
(264, 1436116499, '114.125.11.189', 'drD65TBV'),
(265, 1436116521, '114.125.11.189', 'ic7ei5mL'),
(266, 1436116537, '114.125.11.189', 'PWfngxM5'),
(267, 1436116765, '114.125.11.189', '1dmUWnrf'),
(268, 1436116811, '202.67.42.39', 'mudWWA1g'),
(269, 1436116937, '202.67.42.39', 'R9dP3uZx'),
(270, 1436117152, '114.125.9.55', 'NBsBlgSh'),
(271, 1436117415, '114.125.11.189', '4yzj5NPX'),
(272, 1436119476, '125.162.59.198', 'XHELPl47'),
(273, 1436119906, '125.162.59.198', 'NiSLoCR1'),
(274, 1436119948, '125.162.59.198', 'hVqRUIkm'),
(275, 1436120311, '125.162.59.198', 'Nvb9blly'),
(276, 1436120350, '125.162.59.198', 'nm6oVnPF'),
(277, 1436121760, '125.162.59.198', 'mu5kxRS8'),
(278, 1436121813, '125.162.59.198', 'iDQtvOV7'),
(279, 1436122870, '114.125.11.189', 'qkpL1dHU'),
(280, 1436122955, '125.162.59.198', 'YolcJ6UM'),
(281, 1436123039, '125.162.59.198', 'Xj08AxSI'),
(282, 1436123097, '125.162.59.198', 'EwkTNqJ7'),
(283, 1436124730, '125.162.59.198', 'tHdWQTEE'),
(284, 1436124838, '125.162.59.198', '8aUoYYXu'),
(285, 1436124938, '125.162.59.198', '56dBIILr'),
(286, 1436125697, '125.162.59.198', '3QdhgL2l'),
(287, 1436125778, '114.125.11.189', '8CwSLbKj'),
(288, 1436125933, '114.125.11.189', 'ZarVg4Lz'),
(289, 1436126110, '114.125.11.189', 'R2AlPeEK'),
(290, 1436127021, '125.162.59.198', 'LjSUkBNm'),
(291, 1436127075, '125.162.59.198', 'V2XbKnBe'),
(292, 1436127302, '125.162.59.198', 'xmSbO5ga'),
(293, 1436127919, '125.162.59.198', 'lK01U2bI'),
(294, 1436127989, '125.162.59.198', 'kBYZf3UX'),
(295, 1436133749, '125.162.59.198', 'a1tVD0rt'),
(296, 1436137930, '125.162.59.198', 'K3Pfqbr6'),
(297, 1436251012, '::1', 'A6t2R388'),
(298, 1436252738, '::1', 'qYoLOCK2'),
(299, 1436253305, '::1', 'liiFCKVx'),
(300, 1436253515, '::1', 'NZq8m8Xq');

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
(1, 'homepage', '<h2 class="font_2" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-weight: normal; font-size: 24px; font-family: raleway, sans-serif; color: rgb(89, 89, 89); text-align: center; background: transparent;">\r\n	<img alt="" src="http://permatanetwork.com/ag/0/source/a4868e_93abe2a6402a40e198c1f57e3a1f9eda.jpg" style="width: 200px; height: 200px;" />&nbsp; &nbsp;<img alt="" src="http://permatanetwork.com/ag/0/source/a4868e_8f4dcdeae9ec47a9a622e713b1dd2503.jpg" style="width: 200px; height: 200px;" />&nbsp; &nbsp;<img alt="" src="http://permatanetwork.com/ag/0/source/a4868e_112a0e1e33fe439ea1b160b78b337e7c.jpg" style="width: 200px; height: 200px;" />&nbsp; &nbsp;<img alt="" src="http://permatanetwork.com/ag/0/source/a4868e_23779e3f9cab48fba7290bd40ec7a362.jpg" style="width: 200px; height: 200px;" />&nbsp; &nbsp;&nbsp; &nbsp;</h2>\r\n<hr />\r\n<h2 class="font_2" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-weight: normal; font-stretch: normal; font-size: 24px; font-family: raleway, sans-serif; color: rgb(89, 89, 89); text-align: justify; background: transparent;">\r\n	<span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-weight: bold; background: transparent;">Apa itu Batu Kecubung?</span></span></h2>\r\n<p>\r\n	&nbsp;</p>\r\n<p style="text-align: justify;">\r\n	<span style="color: rgb(89, 89, 89); font-size: 18px; font-family: raleway, sans-serif; text-align: justify; background-color: transparent;">Batu Kecubung adalah nama pasaran untuk batu permata jenis Amethyst.&nbsp;Nama Amethyst sendiri berasal dari kata Yunani &ldquo;Amethystos&rdquo; yang artinya &ldquo;Tidak Mabuk&rdquo;, karena sering digunakan sebagai jimat untuk melindungi diri dari keracunan. Sejak batu Kecubung dijadikan penangkal terhadap mabuk, banyak gelas anggur yang kemudian menggunakan ukiran batu Kecubung pada desainnya. Sampai dengan hari ini, batu Kecubung berwarna ungu adalah simbol ketenangan.</span></p>\r\n<p class="font_8" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-stretch: normal; font-size: 14px; font-family: raleway, sans-serif; color: rgb(48, 48, 48); text-align: justify; background: transparent;">\r\n	&nbsp;</p>\r\n<p class="font_7" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-stretch: normal; font-size: 18px; font-family: raleway, sans-serif; color: rgb(89, 89, 89); text-align: justify; background: transparent;">\r\n	<span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;">Batu kecubung dipercaya memiliki sifat yang membawa stabilitas, perdamaian, keseimbangan, keberanian, kekuatan internal, ketulusan, dan ketenangan.</span></p>\r\n<p class="font_7" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-stretch: normal; font-size: 18px; font-family: raleway, sans-serif; color: rgb(89, 89, 89); text-align: justify; background: transparent;">\r\n	<span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;">Batu ini juga diyakini efektif mengobati masalah kesehatan yang berhubungan dengan gejala kecanduan, sakit kepala, insomnia, artritis, nyeri, masalah sistem peredaran darah, dan penyembuhan secara umum.</span></p>\r\n<p class="font_7" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-stretch: normal; font-size: 18px; font-family: raleway, sans-serif; color: rgb(89, 89, 89); text-align: justify; background: transparent;">\r\n	<span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;">Dengan mengacu pada asal kata Yunani, batu kecubung dianggap sebagai batu yang bisa mencegah dan mengobati mabuk alkohol dan jenis kecanduan lain.</span></p>\r\n<p class="font_7" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-stretch: normal; font-size: 18px; font-family: raleway, sans-serif; color: rgb(89, 89, 89); text-align: justify; background: transparent;">\r\n	<span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;">Oleh karena itu, batu kecubung bertindak sebagai kekuatan stabilisasi bagi mereka yang berusaha untuk mengatasi perilaku adiktif.</span></p>\r\n<p class="font_7" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-stretch: normal; font-size: 18px; font-family: raleway, sans-serif; color: rgb(89, 89, 89); text-align: justify; background: transparent;">\r\n	&nbsp;</p>\r\n<h2 class="font_2" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-weight: normal; font-stretch: normal; font-size: 24px; font-family: raleway, sans-serif; color: rgb(89, 89, 89); text-align: justify; background: transparent;">\r\n	<span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-weight: bold; background: transparent;">Manfaat Batu Kecubung</span></span></h2>\r\n<p style="text-align: justify;">\r\n	<span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-weight: bold; background: transparent;"><img alt="" src="http://permatanetwork.com/ag/0/source/1.jpg" style="width: 257px; height: 220px; float: left; margin: 10px 30px;" /></span></span><span style="color: rgb(48, 48, 48); font-family: raleway, sans-serif; font-size: 18px; text-align: justify;">Khasiat batu kecubung &ndash; Kecubung atau Amethyst merupakan jenis batu mulia populer didunia dengan warna umum ungu berkilau, merah muda dan kebiruan. Batu permata ini di Indonesia lebih dikenal dengan sebutan batu kecubung ungu dan dipercaya memiliki khasiat. Sedangkan harga nya bisa ratusan sampai puluhan juta rupiah untuk jenis batu terbaik.</span></p>\r\n<p style="text-align: justify;">\r\n	<span style="color: rgb(48, 48, 48); font-family: raleway, sans-serif; font-size: 18px; text-align: justify;">Batu Amethyst (kecubung) merupakan batuan mineral kuarsa atau jenis mineral berstruktur kristal heksagonal terbuat dari silika (silikon dioksida) dengan tingkat kekerasan hingga 7 mohs. Keunikan warna pada batu permata ini menimbulkan daya tarik tersendiri dan tidak dimiliki jenis batu mulia lainnya.</span></p>\r\n<p style="text-align: justify;">\r\n	<span style="color: rgb(48, 48, 48); font-family: raleway, sans-serif; font-size: 18px; text-align: justify;">Terkait mitos yang berkembang, batu ini juga dianggap sebagai batu kelahiran Februari dalam zodiak. Sebutan pada batu ini juga tidak lepas dengan mitos yang berkembang pada zamat itu dan dikenal dengan istilah&lsquo;amethyst&rsquo; asal kata Yunani &lsquo;amethystos&rsquo; yang berarti obat untuk mencegah mabuk.Sehingga batu ini dipercaya bisa membawa keberuntungan bagi pemiliknya terutama mereka yang punya kelahiran bulan Februari. Pada zaman dulu batu ini banyak dipakai kalangan raja-raja, pangeran dan puteri kerjaan sebagai pembangkit aura baik untuk kecantikan atau untuk menambah kewibawaan.</span></p>\r\n', 2, 'homepage-1', '2015-07-01 16:05:14', '2015-07-01 16:05:14');

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
  `status` int(11) NOT NULL,
  `dikirim` int(10) unsigned NOT NULL,
  `remember_token` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `code`, `email`, `username`, `password`, `updated_at`, `created_at`, `last_login`, `limited_transfer_at`, `activation_at`, `referral_code`, `status`, `dikirim`, `remember_token`) VALUES
(1, 'L4PR01D', 'first@first.com', 'first', '$2y$10$vzgcMQvzSyFoEtWJ39AhGev1C9.aJsg88IjfY4xhH4Y/a0OGrNhl6', '2015-07-07 10:17:40', '2015-06-27 17:00:00', '2015-07-07 10:17:40', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 1, 0, ''),
(2, '73DD48C', 'isa1@isa.com', 'isa1', '$2y$10$Uybk0xk6If58kmrnMuxRuOECj1KJby8LXNP3N1EE8R3Q6WRaz3XKW', '2015-07-07 09:13:39', '2015-06-28 08:28:30', '2015-07-03 16:00:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'L4PR01D', 1, 0, ''),
(3, 'CFB3350', 'isa2@isa.com', 'isa2', '$2y$10$jWvO.K12nVb6zTaZvnZ4Ke9Yzag4ibGucfyVHYtubFBFgVrdwiPyW', '2015-07-07 09:13:39', '2015-06-28 08:29:39', '2015-07-03 15:04:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '73DD48C', 1, 0, ''),
(4, 'B5E4C8A', 'isa3@isa.com', 'isa3', '$2y$10$nqe0bf/5ZjFo9fUcD8ziiOtFbU8Clbq4D5rxNKBB6f2AuDdfrl2Za', '2015-07-07 09:13:39', '2015-06-28 08:31:02', '2015-07-06 08:45:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CFB3350', 1, 0, ''),
(5, '4539A08', 'isa4@isa.com', 'isa4', '$2y$10$1rJoRWxZfOTeC8nn41Ae..QFZHrtjNy0NJCi3wUBjrzkSChqiJkPS', '2015-07-07 09:13:39', '2015-06-28 08:32:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'B5E4C8A', 1, 0, ''),
(6, '05AA10F', 'isa5@isa.com', 'isa5', '$2y$10$FpQwLsCUQEdU7Wp3QCqFJe/QfiR9tkKu8pr50XwTYWeSiw4FJHX1m', '2015-07-07 09:13:39', '2015-06-28 08:32:57', '2015-07-06 15:07:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '4539A08', 1, 0, ''),
(7, '88DDC5A', 'isa6@isa.com', 'isa6', '$2y$10$FSWONV0E9SBs9594wXdjWu.cL4hHwP7uQiaJHw.aFaUhYTX/714I2', '2015-07-07 09:13:39', '2015-06-28 08:33:55', '2015-07-07 06:29:40', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '05AA10F', 1, 0, ''),
(8, '083BF11', 'isa7@isa.com', 'isa7', '$2y$10$oCfzbxRwMikgMKXMNBsLzeUREBDw8GwrwpOWant/R/89NDsIMUraK', '2015-07-07 09:13:39', '2015-06-28 08:34:46', '2015-07-05 17:34:25', '2015-07-02 20:14:34', '0000-00-00 00:00:00', '88DDC5A', -1, 0, ''),
(10, 'ECA8A33', 'ronald99@gmail.com', 'Ronald', '$2y$10$dizi54bwId8LZSbDHFi1gectOfkJparY1hNEB03/95U5fzeX7Hw76', '2015-07-07 09:13:39', '2015-07-01 15:57:34', '2015-07-03 15:00:51', '2015-07-03 04:05:03', '0000-00-00 00:00:00', '88DDC5A', -1, 0, ''),
(11, '084161C', 'hermansemesta@gmail.com', 'semestatest', '$2y$10$Ehh0xS0ZItVviHW1DEwZ8eUtEJUh31T.QyIBk.oGdOfV1SZB2ldpa', '2015-07-07 09:13:39', '2015-07-02 11:43:15', '2015-07-05 08:42:20', '2015-07-06 06:04:48', '2015-07-05 08:45:39', '083BF11', 1, 0, ''),
(12, '26107E6', 'mymiracle89@yahoo.com', 'untungsukses', '$2y$10$ZtxkmmDLKD2WJKjNjkKOau.G1Yb2v792Xub3E9pLOlsPd/sB1kp4e', '2015-07-07 09:13:39', '2015-07-02 11:50:20', '2015-07-02 11:50:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '083BF11', 0, 0, ''),
(13, '9B1C470', 'riki1181@gmail.com', 'Riki', '$2y$10$9tPN1RXhykbyJ2MWZOkg7.WqjGuMXxH0qwFz31w1E66HJxhU/xB/S', '2015-07-07 09:13:39', '2015-07-03 16:09:42', '2015-07-03 16:16:41', '2015-07-05 04:11:38', '0000-00-00 00:00:00', 'L4PR01D', -1, 0, ''),
(14, '22CFEF9', 'isa10@isa.com', 'isa10', '$2y$10$ZGLw8RoDdAHXMENKtJVaY.7sg6DCyKPJ.2yBvO4V14asMmCzNqtam', '2015-07-07 09:13:39', '2015-07-03 16:24:53', '2015-07-03 16:30:56', '2015-07-05 04:37:08', '0000-00-00 00:00:00', 'L4PR01D', -1, 0, ''),
(15, 'F8305E0', 'isa11@isa.com', 'isa11', '$2y$10$n/J4o2M.QzoSpZwBa76MV.8RJN1tPWF7QweXGAkTkELCfIQvlFC9e', '2015-07-07 09:13:39', '2015-07-03 16:38:40', '2015-07-03 16:38:51', '2015-07-05 04:39:01', '0000-00-00 00:00:00', 'L4PR01D', -1, 0, ''),
(16, '40EC8BB', 'isa12@isa.com', 'isa12', '$2y$10$CUIW7Gsjo.xInDlkX6vhgOnMBRWdPkKgNbN8X32V8euTEtRcMBZ7q', '2015-07-07 09:15:05', '2015-07-03 16:42:44', '2015-07-03 16:47:13', '2015-07-05 04:43:53', '0000-00-00 00:00:00', '88DDC5A', -1, 1, ''),
(17, '69150DB', 'dino@yahoo.com', 'Dino', '$2y$10$dmz8KfTDDEzs3J0zttZmZ.a0oStwMEzfpTjD8urgkqGkJQTzX0X6q', '2015-07-07 09:13:39', '2015-07-03 16:47:15', '2015-07-05 17:52:02', '2015-07-05 04:48:08', '2015-07-03 17:01:08', 'L4PR01D', 1, 0, ''),
(18, '9F221EC', 'isa13@isa.com', 'isa13', '$2y$10$aiSYi5dpYamu/EHlG26ERueHDQ5zzuJbCYBbok2iX3cvSUCBnKNee', '2015-07-07 09:13:39', '2015-07-03 16:49:47', '2015-07-03 16:50:02', '2015-07-05 04:50:18', '0000-00-00 00:00:00', '083BF11', -1, 0, ''),
(19, '36FCB78', 'hermansemesta2@gmail.com', 'sejahtera', '$2y$10$7zDwjHsMUZ9w/FmK9RgnN.69sia6CBpZlPDv6DckrzBJbkgVLnMaC', '2015-07-07 09:13:39', '2015-07-04 09:01:41', '2015-07-05 21:00:24', '2015-07-06 21:02:55', '2015-07-05 09:10:25', 'L4PR01D', 1, 0, ''),
(20, '5472CA8', 'hermansemesta5@gmail.com', 'sejahtera2', '$2y$10$teR1hs9WchQqloGFipcs4Ov4ZldEGuOc4IuPIyEK.u1vYqwoUvdVC', '2015-07-07 09:13:39', '2015-07-05 09:34:07', '2015-07-05 21:15:23', '2015-07-06 21:35:11', '2015-07-05 09:55:24', '36FCB78', 1, 0, ''),
(21, 'F211054', 'herman3@gmail.com', 'sejahtera3', '$2y$10$GI1cTJuLwzQ0MrjTjZuII.Cve4/AnccjBn8nFZz6z2JbMtL6kG/gi', '2015-07-07 09:13:39', '2015-07-05 10:14:59', '2015-07-05 22:57:10', '2015-07-06 22:15:44', '2015-07-05 10:20:39', '5472CA8', 1, 0, ''),
(22, '0FE6B2F', 'herman4@gmail.com', 'sejahtera4', '$2y$10$bOEyFyMdb9MXgIxzuSj4m.Qd0fQguqcfMsZgBtNdrsUeRW0Vj9E8G', '2015-07-07 10:28:36', '2015-07-05 10:24:25', '2015-07-06 08:06:04', '2015-07-06 22:25:22', '0000-00-00 00:00:00', 'F211054', -1, 0, ''),
(23, '8BFD71A', 'herman5@gmail.com', 'permata5', '$2y$10$tzHshZmXeiuY7R3OPRdvZ.LEOxwHxQw1KpMjkHCEqEA8N9tv0Yt7q', '2015-07-07 09:13:39', '2015-07-05 10:35:04', '2015-07-06 08:06:30', '2015-07-06 22:50:46', '0000-00-00 00:00:00', '0FE6B2F', 1, 0, ''),
(24, 'AD02348', 'test@yahoo.com', 'test2', '$2y$10$aY4gpTS7Uc03YRhS6ZGxY./p/sZtd.4SfWASPWY0tOm3aIUPkH0Tu', '2015-07-07 09:13:39', '2015-07-05 10:56:12', '2015-07-05 11:03:13', '2015-07-06 23:01:02', '0000-00-00 00:00:00', '0FE6B2F', 1, 0, ''),
(25, '3DC67F8', 'sponsor2@gmail.com', 'sponsor2', '$2y$10$icJpOoNE.0.pGGcfNmYEbO6HJ/8piGllnuSvhFM4WrKSye6MjNS5y', '2015-07-07 09:13:39', '2015-07-05 11:02:57', '2015-07-05 11:03:15', '2015-07-06 23:04:18', '0000-00-00 00:00:00', '36FCB78', 2, 0, ''),
(26, '857A549', 'sponsor3@gmail.com', 'sponsor3', '$2y$10$erj0nVemc0E2d6F87wMvuuocXCfYB2rcvpIotFSpHaXl/3U3LW8Ue', '2015-07-07 09:13:39', '2015-07-05 11:08:41', '2015-07-05 18:42:11', '2015-07-06 23:10:24', '2015-07-05 18:03:23', '36FCB78', 1, 0, ''),
(27, '2931A45', 'isa14@isa.com', 'isa14', '$2y$10$J5t.d0LsHZLiebZqNMpbo.iTyLt4rpm28GT/7fIiO1MbIQUZtPrp2', '2015-07-07 09:13:39', '2015-07-05 16:37:49', '2015-07-06 08:38:21', '2015-07-07 04:38:45', '0000-00-00 00:00:00', '88DDC5A', 2, 0, ''),
(28, 'A9F0E61', 'second@gmail.com', 'second', '$2y$10$IpN./cUMk7vtTFwOfd2rbOSibFMgkmqH6kCgXgo4mpTT1N512o8X6', '2015-07-07 09:13:39', '2015-07-05 16:44:48', '2015-07-05 17:50:56', '2015-07-07 04:45:38', '2015-07-05 17:29:36', 'L4PR01D', 1, 0, ''),
(29, '3FF1C62', 'isa15@isa.com', 'isa15', '$2y$10$dKQYC3Zs9YU7ZBbmLSBbC.OiUUxknL7CPF4r9uMBhYwwp/8AY4vKu', '2015-07-07 09:13:39', '2015-07-05 17:26:42', '2015-07-05 17:32:14', '2015-07-07 05:29:10', '0000-00-00 00:00:00', 'B5E4C8A', 2, 0, ''),
(30, 'DD5C8BF', 'third@gmail.com', 'third', '$2y$10$C/BsByHtWryrq9mqP2kRNuFVNqdjrVyfOGQ1P8iHAygEitEDIN38m', '2015-07-07 09:13:39', '2015-07-05 17:31:01', '2015-07-05 18:00:16', '2015-07-07 05:31:32', '2015-07-05 17:42:44', 'A9F0E61', 1, 0, ''),
(31, '933B1DE', 'samping2@gmail.com', 'samping2', '$2y$10$TDdFB6IkzDL3qxTOYl4Fl.4M2uU94RmLxUrXZVHYF7L4HRrSlrnfi', '2015-07-07 09:13:39', '2015-07-05 18:05:23', '2015-07-05 18:06:11', '2015-07-07 06:08:34', '0000-00-00 00:00:00', '36FCB78', 2, 0, ''),
(32, '308F84A', 'samping3@gmail.com', 'samping3', '$2y$10$wUa55.dTvNId5Jrm73mvxeF.OzzBG0WPDU/LQLYXYGQ3UwEtY8n5O', '2015-07-07 09:13:39', '2015-07-05 18:12:55', '2015-07-05 18:39:19', '2015-07-07 06:21:40', '0000-00-00 00:00:00', '36FCB78', 2, 0, ''),
(33, 'C06FB8D', 'samping4@gmail.com', 'samping4', '$2y$10$UVaBfhoyzh4cHnefRa72BeDomMgIrY7X15kpdgKeFgkVugH7T/5W2', '2015-07-07 09:13:39', '2015-07-05 18:19:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '36FCB78', 0, 0, ''),
(34, '6901394', 'sponsorke3@gmail.com', 'sponsorke3', '$2y$10$I8A37CQzio68kubLga9z6.L.1GUzD7A56iPmBXa0JT9vwZENBrHiu', '2015-07-07 09:13:39', '2015-07-05 18:44:10', '2015-07-05 18:44:21', '2015-07-07 06:44:33', '0000-00-00 00:00:00', '36FCB78', 2, 0, ''),
(35, 'C0759F2', 'fourth@gmail.com', 'fourth', '$2y$10$TzjC2ImfsWbIK2J/X5rMBeinaNz9USKWk.IgELbBAliHA7kAkUOFO', '2015-07-07 09:13:39', '2015-07-05 19:01:51', '2015-07-05 20:05:45', '2015-07-07 07:02:54', '0000-00-00 00:00:00', 'DD5C8BF', 2, 0, ''),
(36, '8CD4A38', 'herman6@gmail.com', 'herman6', '$2y$10$CICIa2fYFnkCgjUhnBNRn.1oNOpvb2FsoUDz6EQI3upmJvH5f67Ce', '2015-07-07 09:13:39', '2015-07-05 19:05:15', '2015-07-06 08:08:29', '2015-07-07 07:13:47', '2015-07-05 19:35:03', '0FE6B2F', 1, 0, ''),
(37, 'E9B2CE2', 'herman7@gmail.com', 'herman7', '$2y$10$nGHP76XuwUsCw/RdbHKCmOlnKT6wLVGddt9ZuXcVL2COGf5BEDwSW', '2015-07-07 09:13:39', '2015-07-05 19:35:57', '2015-07-06 08:08:44', '2015-07-07 07:40:07', '2015-07-05 19:47:33', '8CD4A38', 1, 0, ''),
(38, '52BE6D0', 'herman8@gmail.com', 'herman8', '$2y$10$IFMh4/iOUm11e0iwuXibwu0Wtjbsluy2pS.wkWoWDrgOPXsfDhg0G', '2015-07-07 09:13:39', '2015-07-05 19:48:55', '2015-07-06 08:09:06', '2015-07-07 07:50:26', '2015-07-05 20:12:17', 'E9B2CE2', 1, 0, ''),
(39, 'B827CE5', 'sfirst@gmail.com', 'sfirst', '$2y$10$wTRz99xbUBtstBZDCr95P.OgYB/upHmQbz4KK8SATrpoX8DoEotU.', '2015-07-07 09:13:39', '2015-07-05 19:56:17', '2015-07-05 19:58:45', '2015-07-07 07:56:37', '2015-07-05 19:58:02', 'L4PR01D', 1, 0, ''),
(40, 'FFABE97', 'herman9@gmail.com', 'herman9', '$2y$10$ulEl7Xu4DoHj7QmsC2oRO.8aAXNmCsCxsrDZQM99FZW9Xr78WiLe6', '2015-07-07 09:13:39', '2015-07-05 20:15:45', '2015-07-06 08:09:27', '2015-07-07 08:16:21', '2015-07-05 20:26:07', '52BE6D0', 1, 0, ''),
(41, 'B159C03', 'herman10@gmail.com', 'herman10', '$2y$10$ZxOsh1UbLCes8Rju6FsHPOrx3Wxa1Mon1JvLBlxEiSJLkVHJsOG2m', '2015-07-07 09:13:39', '2015-07-05 20:27:03', '2015-07-06 08:10:19', '2015-07-07 08:27:29', '2015-07-05 22:00:29', 'FFABE97', 1, 0, ''),
(42, '054AAFF', 'herman11@gmail.com', 'herman11', '$2y$10$arNO448EaEQTXmLsFEizSelnBUxYVHjj75MKvSQjsK.TuHJJwgJt2', '2015-07-07 09:13:39', '2015-07-05 22:03:18', '2015-07-06 08:11:05', '2015-07-07 10:19:29', '2015-07-05 23:11:16', 'B159C03', 1, 0, ''),
(43, '96BE509', 'herman12@gmail.com', 'herman12', '$2y$10$Ig2qtC3qiO2pWq1wcgMTLOujP8A5uwQPIOAAWcGhr5jRxxW2D713m', '2015-07-07 09:13:39', '2015-07-05 23:13:08', '2015-07-06 08:11:32', '2015-07-07 11:24:40', '2015-07-06 08:11:44', '054AAFF', 1, 0, ''),
(44, '4E522A9', 'isa16@isa.com', 'isa16', '$2y$10$rY71sZYvjlA1edlBd.8iE.MjaivPJMpyGgkSEu1cjnvkUzSrmrDRe', '2015-07-07 09:13:39', '2015-07-07 07:17:27', '2015-07-07 07:18:59', '2015-07-08 19:19:22', '0000-00-00 00:00:00', '73DD48C', 2, 0, '');

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
  `nama_rekening` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `id_member`, `nama`, `alamat`, `kota`, `provinsi`, `kode_pos`, `no_hp`, `nama_bank`, `no_rekening`, `nama_rekening`, `foto`) VALUES
(1, 1, 'Angga Kesuma', 'jl. sukakarya No.2227 palembang', 'Palembang', 'sumatera selatan', '30152', '089661147512', 'BNI', '019283978891923', 'Angga Kesuma', ''),
(2, 2, 'isa1', 'isa1', 'isa1', 'isa1', '7868', '708998', 'BNI', '323223', 'ISA1', ''),
(3, 3, 'isa2', 'isa2', 'isa2', 'isa2', '2', '3', 'BNI', '3', 'ISA2', ''),
(4, 4, 'e', 'e', 'e', 'e', 'e', 'e', 'BNI', 'e', 'ISA3', ''),
(5, 5, 'isa4', 's', 's', 's', '2', '2', 'BNI', '2', 'ISA4', ''),
(6, 6, '2', '2', '2', '3', '3', '3', 'BNI', '2', 'ISA5', ''),
(7, 7, '2', '3', '3', '3', '3', '3', 'BNI', '3', 'ISA6', ''),
(8, 8, 'isa7', '2', '2', '21', '2', '2', 'BNI', '2', 'ISA7', ''),
(9, 10, 'Ronald', 'Jalan Pramuka no 121', 'Palembang', 'SUmsel', '331111', '232313', 'BNI', '2455345345435', 'Ronald', ''),
(10, 11, 'hermn', 'padang', 'padang', 'sumbar', '25000', '081266291899', 'bca', '0321', 'herman', ''),
(11, 12, 'Sumiyati', 'jl. metro', 'tangerang', 'banten', '15157', '082122211198', 'bca', '7010321098', 'sumiyati', ''),
(12, 13, 'Riki Aja', 'Jl. Perwira', 'Pontianak', 'Kalbar', '441112', '422332323', 'Bank Mandiri', '45435345345', 'Riki aja', ''),
(13, 14, 'isa10', 'Palembang', 'plg', 'plg', '83938', '9328329239', 'Bank Panin', '43425335', 'isa10', ''),
(14, 15, 'isa11', 'k', 'k', 'j', '89', '98', 'Bank Panin', '8872', 'isa11', ''),
(15, 16, 'isa6', 'isa6', 'isa6', 'isa6', '797', '07', 'Bank CIMB Niaga', '080', 'isa12', ''),
(16, 17, 'Dino', 'jl. Sidempuan', 'Medan', 'Sumut', '442231', '086787868', 'BCA', '45645345', 'Dino', ''),
(17, 18, 'isa13', 'isa13', 'isa13', 'isa13', '81889', '9828', 'BTN', '083322', 'isa13', ''),
(18, 19, 'Herman', 'padang', 'padang', 'padang', '25000', '081266291899', 'BCA', '3444', 'Herman', ''),
(19, 20, 'herman2', 'padang', 'padang', 'padang', '24000', '0812434', 'BCA', '12434', 'Herman2', ''),
(20, 21, 'Herman3', 'padang', 'padang', 'padang', '2500', '0812343', 'BCA', '34343', 'Herman3', ''),
(21, 22, 'herman4', 'padang', 'padang', 'padang', '23000', '0830', 'BCA', '3242', 'herman4', ''),
(22, 23, 'Herman5', 'padang', 'padang', 'padang', '23444', '081234', 'BCA', '30030', 'Herman5', ''),
(23, 24, 'test2', 'test2', 'test', 'test', '11212', '088121212', 'BCA', '23213', 'test2', ''),
(24, 25, 'sponsor2', 'padang', 'padang', 'padang', '23000', '93939', 'BCA', '34343', 'sponsor2', ''),
(25, 26, 'sponsor3', 'padang', 'padang', 'padang', '2399', '003030', 'BCA', '93939', 'sponsor3', ''),
(26, 27, 'isa14', 'isa14', 'isa14', 'isa14', '9707', '0808', 'BRI', '323232', 'isa14', ''),
(27, 28, 'second', 'second', 'second', 'second', 'second', '345345345', 'BCA', '345345', '345345', 'second.JPG'),
(28, 29, 'isa15', 'i', 'k', 'k', '08', '808', 'BTN', '19908', 'isa15', ''),
(29, 30, 'third', 'third', 'third', 'third', 'third', '1111', 'BCA', '1111', 'third', ''),
(30, 31, 'samping2', 'padang', 'padang', 'padang', '23000', '081363037499', 'BCA', 'titin makmur', '3939', ''),
(31, 32, 'samping3', 'padang', 'padang', 'padang', '2400', '324', 'BCA', '34234', 'samping3', ''),
(32, 33, 'samping3', 'padang', 'padang', 'padang', '2300', '34342', 'BCA', '34242', 'samping3', ''),
(33, 34, 'samping2', 'padang', 'padang', 'padang', '25000', '34324', 'BCA', '34324', 'sponsorke3', ''),
(34, 35, 'fourth', 'fourth', 'fourth', 'fourth', 'fourth', 'fourth', 'BCA', 'fourth', 'fourth', ''),
(35, 36, 'herman5', 'padang', 'padang', 'padang', '2300', '939993', 'BCA', '39939', 'herman6', ''),
(36, 37, 'herman7', 'padang', 'padang', 'padang', '2344', '45353', 'BCA', '235252', 'herman7', ''),
(37, 38, 'herman8', 'padang', 'padang', 'padang', '35000', '342342', 'BCA', '234242', 'herman8', ''),
(38, 39, 'sfirst', 'jln umar no12', 'Palembang', 'SUmsel', '344221', '7856756757', 'BCA', '23465456546', 'sfirst', ''),
(39, 40, 'herman9', 'padang', 'padang', 'padang', '2333', '9030', 'BCA', '3424', 'herman9', ''),
(40, 41, 'herman10', 'padang', 'padang', 'padang', '2333', '93993', 'BCA', '93993', 'herman10', ''),
(41, 42, 'herman11', 'padang', 'padang', 'padang', '25000', '081266291899', 'BCA', '3342', 'herman11', ''),
(42, 43, 'herman12', 'padang', 'padang', 'padang', '2333', '09393', 'BCA', '3424', 'herman12', ''),
(43, 44, 'Isa16', 'isa16', 'isa16', 'isa16', '434343', '434343544', 'Bank Panin', '4334934395', '5445454', '');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE IF NOT EXISTS `sliders` (
  `id` int(10) unsigned NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `urutan` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `confirmation_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `unique_transfer` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transfer_referral`
--

INSERT INTO `transfer_referral` (`id`, `id_member`, `id_referral`, `amount`, `status_transfer`, `updated_at`, `created_at`, `confirmation_at`, `unique_transfer`) VALUES
(68, 8, 7, 150000, 0, '2015-07-01 08:14:34', '2015-07-01 08:14:34', '0000-00-00 00:00:00', 0),
(69, 8, 6, 100000, 0, '2015-07-01 08:14:34', '2015-07-01 08:14:34', '0000-00-00 00:00:00', 0),
(70, 8, 5, 100000, 0, '2015-07-01 08:14:34', '2015-07-01 08:14:34', '0000-00-00 00:00:00', 0),
(71, 8, 4, 100000, 0, '2015-07-01 08:14:34', '2015-07-01 08:14:34', '0000-00-00 00:00:00', 0),
(72, 8, 3, 100000, 0, '2015-07-01 08:14:34', '2015-07-01 08:14:34', '0000-00-00 00:00:00', 0),
(73, 8, 1, 100000, 0, '2015-07-01 08:14:34', '2015-07-01 08:14:34', '0000-00-00 00:00:00', 0),
(74, 10, 7, 150000, 2, '2015-07-01 16:09:30', '2015-07-01 16:05:03', '2015-07-01 16:09:30', 0),
(75, 10, 6, 100000, 0, '2015-07-01 16:05:03', '2015-07-01 16:05:03', '0000-00-00 00:00:00', 0),
(76, 10, 5, 100000, 0, '2015-07-01 16:05:03', '2015-07-01 16:05:03', '0000-00-00 00:00:00', 0),
(77, 10, 4, 100000, 0, '2015-07-01 16:05:03', '2015-07-01 16:05:03', '0000-00-00 00:00:00', 0),
(78, 10, 3, 100000, 0, '2015-07-01 16:05:03', '2015-07-01 16:05:03', '0000-00-00 00:00:00', 0),
(79, 10, 1, 100000, 0, '2015-07-01 16:05:03', '2015-07-01 16:05:03', '0000-00-00 00:00:00', 0),
(80, 13, 1, 150000, -1, '2015-07-03 16:16:26', '2015-07-03 16:11:38', '2015-07-03 16:16:26', 0),
(81, 15, 1, 150000, 0, '2015-07-03 16:39:01', '2015-07-03 16:39:01', '0000-00-00 00:00:00', 0),
(82, 16, 6, 150000, 0, '2015-07-03 16:43:53', '2015-07-03 16:43:53', '0000-00-00 00:00:00', 0),
(83, 16, 5, 100000, 0, '2015-07-03 16:43:53', '2015-07-03 16:43:53', '0000-00-00 00:00:00', 0),
(84, 16, 4, 100000, 0, '2015-07-03 16:43:53', '2015-07-03 16:43:53', '0000-00-00 00:00:00', 0),
(85, 16, 3, 100000, 0, '2015-07-03 16:43:53', '2015-07-03 16:43:53', '0000-00-00 00:00:00', 0),
(86, 16, 1, 100000, 0, '2015-07-03 16:43:53', '2015-07-03 16:43:53', '0000-00-00 00:00:00', 0),
(87, 17, 1, 150000, 2, '2015-07-03 16:59:42', '2015-07-03 16:48:08', '2015-07-03 16:59:42', 0),
(88, 19, 1, 150000, 2, '2015-07-05 09:09:53', '2015-07-05 09:02:55', '2015-07-05 09:09:53', 0),
(89, 20, 19, 150000, 2, '2015-07-05 09:42:48', '2015-07-05 09:35:11', '2015-07-05 09:42:48', 0),
(90, 20, 1, 100000, 2, '2015-07-05 09:52:03', '2015-07-05 09:35:11', '2015-07-05 09:52:03', 0),
(91, 21, 20, 150000, 2, '2015-07-05 10:20:07', '2015-07-05 10:15:44', '2015-07-05 10:20:07', 0),
(92, 21, 19, 100000, 2, '2015-07-05 10:18:54', '2015-07-05 10:15:44', '2015-07-05 10:18:54', 0),
(93, 21, 1, 100000, 2, '2015-07-05 10:17:27', '2015-07-05 10:15:44', '2015-07-05 10:17:27', 0),
(94, 22, 21, 150000, 2, '2015-07-05 10:32:14', '2015-07-05 10:25:22', '2015-07-05 10:32:14', 0),
(95, 22, 20, 100000, 2, '2015-07-05 10:31:48', '2015-07-05 10:25:22', '2015-07-05 10:31:48', 0),
(96, 22, 19, 100000, 2, '2015-07-05 10:31:25', '2015-07-05 10:25:22', '2015-07-05 10:31:25', 0),
(97, 22, 1, 100000, 2, '2015-07-05 10:31:18', '2015-07-05 10:25:22', '2015-07-05 10:31:18', 0),
(98, 25, 19, 150000, 2, '2015-07-05 11:06:05', '2015-07-05 11:04:18', '2015-07-05 11:06:05', 0),
(99, 25, 1, 100000, 2, '2015-07-05 15:25:26', '2015-07-05 11:04:18', '2015-07-05 15:25:26', 0),
(100, 26, 19, 150000, 2, '2015-07-05 11:12:15', '2015-07-05 11:10:24', '2015-07-05 11:12:15', 0),
(101, 26, 1, 100000, 2, '2015-07-05 15:25:04', '2015-07-05 11:10:24', '2015-07-05 15:25:04', 0),
(102, 27, 6, 150000, 1, '2015-07-05 16:44:02', '2015-07-05 16:38:45', '0000-00-00 00:00:00', 0),
(103, 27, 5, 100000, 1, '2015-07-05 17:24:33', '2015-07-05 16:38:45', '0000-00-00 00:00:00', 0),
(104, 27, 4, 100000, 1, '2015-07-05 17:24:42', '2015-07-05 16:38:45', '0000-00-00 00:00:00', 0),
(105, 27, 3, 100000, 0, '2015-07-05 16:38:45', '2015-07-05 16:38:45', '0000-00-00 00:00:00', 0),
(106, 27, 1, 100000, 0, '2015-07-05 16:38:45', '2015-07-05 16:38:45', '0000-00-00 00:00:00', 0),
(107, 28, 1, 150000, 2, '2015-07-05 17:29:11', '2015-07-05 16:45:38', '2015-07-05 17:29:11', 0),
(108, 29, 4, 150000, 0, '2015-07-05 17:29:11', '2015-07-05 17:29:11', '0000-00-00 00:00:00', 530),
(109, 29, 3, 100000, 0, '2015-07-05 17:29:11', '2015-07-05 17:29:11', '0000-00-00 00:00:00', 784),
(110, 29, 1, 100000, 0, '2015-07-05 17:29:11', '2015-07-05 17:29:11', '0000-00-00 00:00:00', 849),
(111, 30, 28, 150000, 2, '2015-07-05 17:39:05', '2015-07-05 17:31:32', '2015-07-05 17:39:05', 884),
(112, 30, 1, 100000, 2, '2015-07-05 17:35:30', '2015-07-05 17:31:32', '2015-07-05 17:35:30', 856),
(113, 31, 19, 150000, 2, '2015-07-05 18:13:58', '2015-07-05 18:08:34', '2015-07-05 18:13:58', 547),
(114, 31, 1, 100000, 2, '2015-07-05 18:11:22', '2015-07-05 18:08:34', '2015-07-05 18:11:22', 323),
(115, 32, 19, 150000, 2, '2015-07-05 18:58:48', '2015-07-05 18:21:40', '2015-07-05 18:58:48', 846),
(116, 32, 1, 100000, 2, '2015-07-05 18:33:11', '2015-07-05 18:21:40', '2015-07-05 18:33:11', 469),
(117, 34, 19, 150000, 2, '2015-07-05 18:58:13', '2015-07-05 18:44:33', '2015-07-05 18:58:13', 966),
(118, 34, 1, 100000, 2, '2015-07-05 19:29:10', '2015-07-05 18:44:33', '2015-07-05 19:29:10', 455),
(119, 35, 30, 150000, 0, '2015-07-05 19:02:54', '2015-07-05 19:02:54', '0000-00-00 00:00:00', 201),
(120, 35, 28, 100000, 0, '2015-07-05 19:02:54', '2015-07-05 19:02:54', '0000-00-00 00:00:00', 960),
(121, 35, 1, 100000, 0, '2015-07-05 19:02:54', '2015-07-05 19:02:54', '0000-00-00 00:00:00', 178),
(122, 36, 22, 150000, 2, '2015-07-05 19:22:48', '2015-07-05 19:13:47', '2015-07-05 19:22:48', 379),
(123, 36, 21, 100000, 2, '2015-07-05 19:19:27', '2015-07-05 19:13:47', '2015-07-05 19:19:27', 969),
(124, 36, 20, 100000, 2, '2015-07-05 19:18:19', '2015-07-05 19:13:47', '2015-07-05 19:18:19', 147),
(125, 36, 19, 100000, 2, '2015-07-05 19:16:28', '2015-07-05 19:13:47', '2015-07-05 19:16:28', 763),
(126, 36, 1, 100000, 2, '2015-07-05 19:28:49', '2015-07-05 19:13:47', '2015-07-05 19:28:49', 927),
(127, 37, 36, 150000, 2, '2015-07-05 19:46:47', '2015-07-05 19:40:07', '2015-07-05 19:46:47', 155),
(128, 37, 22, 100000, 2, '2015-07-05 19:45:54', '2015-07-05 19:40:07', '2015-07-05 19:45:54', 421),
(129, 37, 21, 100000, 2, '2015-07-05 19:45:02', '2015-07-05 19:40:07', '2015-07-05 19:45:02', 750),
(130, 37, 20, 100000, 2, '2015-07-05 19:44:23', '2015-07-05 19:40:07', '2015-07-05 19:44:23', 548),
(131, 37, 19, 100000, 2, '2015-07-05 19:43:19', '2015-07-05 19:40:07', '2015-07-05 19:43:19', 577),
(132, 37, 1, 100000, 2, '2015-07-05 19:43:10', '2015-07-05 19:40:07', '2015-07-05 19:43:10', 823),
(133, 38, 37, 150000, 2, '2015-07-05 20:04:37', '2015-07-05 19:50:26', '2015-07-05 20:04:37', 217),
(134, 38, 36, 100000, 2, '2015-07-05 20:03:52', '2015-07-05 19:50:26', '2015-07-05 20:03:52', 739),
(135, 38, 22, 100000, 2, '2015-07-05 20:02:35', '2015-07-05 19:50:26', '2015-07-05 20:02:35', 596),
(136, 38, 21, 100000, 2, '2015-07-05 20:01:15', '2015-07-05 19:50:26', '2015-07-05 20:01:15', 699),
(137, 38, 20, 100000, 2, '2015-07-05 20:00:50', '2015-07-05 19:50:26', '2015-07-05 20:00:50', 220),
(138, 38, 19, 100000, 2, '2015-07-05 19:59:11', '2015-07-05 19:50:26', '2015-07-05 19:59:11', 539),
(139, 38, 1, 100000, 2, '2015-07-05 19:54:07', '2015-07-05 19:50:26', '2015-07-05 19:54:07', 493),
(140, 39, 1, 150000, 2, '2015-07-05 19:57:36', '2015-07-05 19:56:37', '2015-07-05 19:57:36', 157),
(141, 40, 38, 150000, 2, '2015-07-05 20:23:33', '2015-07-05 20:16:21', '2015-07-05 20:23:33', 475),
(142, 40, 37, 100000, 2, '2015-07-05 20:23:08', '2015-07-05 20:16:21', '2015-07-05 20:23:08', 130),
(143, 40, 36, 100000, 2, '2015-07-05 20:21:49', '2015-07-05 20:16:21', '2015-07-05 20:21:49', 470),
(144, 40, 22, 100000, 2, '2015-07-05 20:20:42', '2015-07-05 20:16:21', '2015-07-05 20:20:42', 252),
(145, 40, 21, 100000, 2, '2015-07-05 20:20:19', '2015-07-05 20:16:21', '2015-07-05 20:20:19', 445),
(146, 40, 20, 100000, 2, '2015-07-05 20:19:08', '2015-07-05 20:16:21', '2015-07-05 20:19:08', 244),
(147, 40, 19, 100000, 2, '2015-07-05 20:18:35', '2015-07-05 20:16:21', '2015-07-05 20:18:35', 819),
(148, 41, 40, 150000, 2, '2015-07-05 21:31:48', '2015-07-05 20:27:29', '2015-07-05 21:31:48', 706),
(149, 41, 38, 100000, 2, '2015-07-05 21:56:05', '2015-07-05 20:27:29', '2015-07-05 21:56:05', 518),
(150, 41, 37, 100000, 2, '2015-07-05 21:30:48', '2015-07-05 20:27:29', '2015-07-05 21:30:48', 863),
(151, 41, 36, 100000, 2, '2015-07-05 21:17:00', '2015-07-05 20:27:29', '2015-07-05 21:17:00', 357),
(152, 41, 22, 100000, 2, '2015-07-05 21:16:11', '2015-07-05 20:27:29', '2015-07-05 21:16:11', 132),
(153, 41, 21, 100000, 2, '2015-07-05 21:03:06', '2015-07-05 20:27:29', '2015-07-05 21:03:06', 105),
(154, 41, 20, 100000, 2, '2015-07-05 21:01:30', '2015-07-05 20:27:29', '2015-07-05 21:01:30', 608),
(155, 42, 41, 150000, 2, '2015-07-05 23:05:15', '2015-07-05 22:19:29', '2015-07-05 23:05:15', 351),
(156, 42, 40, 100000, 2, '2015-07-05 23:04:52', '2015-07-05 22:19:29', '2015-07-05 23:04:52', 489),
(157, 42, 38, 100000, 2, '2015-07-05 23:04:29', '2015-07-05 22:19:29', '2015-07-05 23:04:29', 737),
(158, 42, 37, 100000, 2, '2015-07-05 23:04:07', '2015-07-05 22:19:29', '2015-07-05 23:04:07', 404),
(159, 42, 36, 100000, 2, '2015-07-05 23:01:26', '2015-07-05 22:19:29', '2015-07-05 23:01:26', 514),
(160, 42, 22, 100000, 2, '2015-07-05 22:59:55', '2015-07-05 22:19:29', '2015-07-05 22:59:55', 802),
(161, 42, 21, 100000, 2, '2015-07-05 22:58:03', '2015-07-05 22:19:29', '2015-07-05 22:58:03', 959),
(162, 43, 42, 150000, 2, '2015-07-06 08:11:13', '2015-07-05 23:24:40', '2015-07-06 08:11:13', 922),
(163, 43, 41, 100000, 2, '2015-07-06 08:10:36', '2015-07-05 23:24:40', '2015-07-06 08:10:36', 139),
(164, 43, 40, 100000, 2, '2015-07-06 08:09:51', '2015-07-05 23:24:40', '2015-07-06 08:09:51', 523),
(165, 43, 38, 100000, 2, '2015-07-06 08:09:14', '2015-07-05 23:24:40', '2015-07-06 08:09:14', 632),
(166, 43, 37, 100000, 2, '2015-07-06 08:08:52', '2015-07-05 23:24:40', '2015-07-06 08:08:52', 868),
(167, 43, 36, 100000, 2, '2015-07-06 08:06:58', '2015-07-05 23:24:40', '2015-07-06 08:06:58', 640),
(168, 43, 22, 100000, 2, '2015-07-06 08:06:15', '2015-07-05 23:24:40', '2015-07-06 08:06:15', 900),
(169, 44, 1, 150000, 0, '2015-07-07 07:19:22', '2015-07-07 07:19:22', '0000-00-00 00:00:00', 360);

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
  `bukti_transfer` varchar(255) NOT NULL,
  `transfered_at` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transfer_referral_bukti`
--

INSERT INTO `transfer_referral_bukti` (`id`, `id_transfer_referral`, `nama_bank_penerima`, `nama_rekening_penerima`, `no_rekening_penerima`, `nama_bank_pengirim`, `nama_rekening_pengirim`, `no_rekening_pengirim`, `bukti_transfer`, `transfered_at`) VALUES
(14, 74, 'test', '3543545', '3', 'BNI', 'Ronald', '2455345345435', '2015-07-1_23-07-42_74.png', '0000-00-00'),
(15, 80, 'BNI', 'Angga Kesuma', '1111111111111111', 'Bank Mandiri', 'Riki aja', '22222222222222222', '2015-07-3_23-15-24_80.jpg', '0000-00-00'),
(16, 87, 'BNI', 'Angga Kesuma', '019283978891923', 'BCA', 'Dino', '45645345', '2015-07-3_23-59-15_87.jpg', '0000-00-00'),
(17, 88, 'BNI', 'Angga Kesuma', '019283978891923', 'BCA', 'Herman', '3444', '2015-07-5_16-08-16_88.jpg', '0000-00-00'),
(18, 89, 'BCA', 'Herman', '3444', 'BCA', 'Herman2', '12434', '2015-07-5_16-39-55_89.jpg', '0000-00-00'),
(19, 90, 'BNI', 'Angga Kesuma', '019283978891923', 'BCA', 'Herman2', '12434', '2015-07-5_16-41-01_90.jpg', '0000-00-00'),
(20, 91, 'BCA', 'Herman2', '12434', 'BCA', 'Herman3', '34343', '2015-07-5_17-16-14_91.jpg', '0000-00-00'),
(21, 92, 'BCA', 'Herman', '3444', 'BCA', 'Herman3', '34343', '2015-07-5_17-16-30_92.jpg', '0000-00-00'),
(22, 93, 'BNI', 'Angga Kesuma', '019283978891923', 'BCA', 'Herman3', '34343', '2015-07-5_17-16-46_93.jpg', '0000-00-00'),
(23, 94, 'BCA', 'Herman3', '34343', 'BCA', 'herman4', '3242', '2015-07-5_17-25-54_94.jpg', '0000-00-00'),
(24, 95, 'BCA', 'Herman2', '12434', 'BCA', 'herman4', '3242', '2015-07-5_17-27-18_95.jpg', '0000-00-00'),
(25, 96, 'BCA', 'Herman', '3444', 'BCA', 'herman4', '3242', '2015-07-5_17-27-57_96.jpg', '0000-00-00'),
(26, 97, 'BNI', 'Angga Kesuma', '019283978891923', 'BCA', 'herman4', '3242', '2015-07-5_17-28-27_97.jpg', '0000-00-00'),
(27, 98, 'BCA', 'Herman', '3444', 'BCA', 'sponsor2', '34343', '2015-07-5_18-04-48_98.jpg', '0000-00-00'),
(28, 99, 'BNI', 'Angga Kesuma', '019283978891923', 'BCA', 'sponsor2', '34343', '2015-07-5_18-05-27_99.jpg', '0000-00-00'),
(29, 100, 'BCA', 'Herman', '3444', 'BCA', 'sponsor3', '93939', '2015-07-5_18-10-58_100.jpg', '0000-00-00'),
(30, 101, 'BNI', 'Angga Kesuma', '019283978891923', 'BCA', 'sponsor3', '93939', '2015-07-5_18-11-22_101.jpg', '0000-00-00'),
(31, 102, 'BNI', 'ISA5', '2', 'BRI', 'isa14', '323232', '2015-07-5_23-44-02_102.jpg', '2015-07-18'),
(32, 107, 'BNI', 'Angga Kesuma', '019283978891923', 'BCA', '345345', '345345', '', '2015-07-06'),
(33, 103, 'BNI', 'ISA4', '2', 'BRI', 'isa14', '323232', '2015-07-6_00-24-33_103.jpg', '2015-07-06'),
(34, 104, 'BNI', 'ISA3', 'e', 'BRI', 'isa14', '323232', '', '2015-07-06'),
(35, 107, 'BNI', 'Angga Kesuma', '019283978891923', 'BCA', '345345', '345345', '2015-07-6_00-26-39_107.jpg', '2015-07-06'),
(36, 111, 'BCA', '345345', '345345', 'BCA', 'third', '1111', '', '2015-07-06'),
(37, 112, 'BNI', 'Angga Kesuma', '019283978891923', 'BCA', 'third', '1111', '', '2015-07-06'),
(38, 111, 'BCA', '345345', '345345', 'BCA', 'third', '1111', '', '2015-07-06'),
(39, 111, 'BCA', '345345', '345345', 'BCA', 'third', '1111', '', '2015-07-06'),
(40, 113, 'BCA', 'Herman', '3444', 'BCA', '3939', 'titin makmur', '2015-07-6_01-09-25_113.jpg', '2015-07-06'),
(41, 114, 'BNI', 'Angga Kesuma', '019283978891923', 'BCA', '3939', 'titin makmur', '2015-07-6_01-10-19_114.png', '2015-07-06'),
(42, 115, 'BCA', 'Herman', '3444', 'BCA', 'samping3', '34234', '2015-07-6_01-22-07_115.png', '2015-07-06'),
(43, 116, 'BNI', 'Angga Kesuma', '019283978891923', 'BCA', 'samping3', '34234', '2015-07-6_01-22-38_116.png', '2015-07-06'),
(44, 117, 'BCA', 'Herman', '3444', 'BCA', 'sponsorke3', '34324', '2015-07-6_01-47-52_117.png', '2015-07-06'),
(45, 118, 'BNI', 'Angga Kesuma', '019283978891923', 'BCA', 'sponsorke3', '34324', '2015-07-6_01-48-37_118.jpg', '2015-07-06'),
(46, 122, 'BCA', 'herman4', '3242', 'BCA', 'herman6', '39939', '', '2015-07-06'),
(47, 123, 'BCA', 'Herman3', '34343', 'BCA', 'herman6', '39939', '', '2015-07-06'),
(48, 124, 'BCA', 'Herman2', '12434', 'BCA', 'herman6', '39939', '', '2015-07-06'),
(49, 125, 'BCA', 'Herman', '3444', 'BCA', 'herman6', '39939', '', '2015-07-06'),
(50, 126, 'BNI', 'Angga Kesuma', '019283978891923', 'BCA', 'herman6', '39939', '', '2015-07-06'),
(51, 126, 'BNI', 'Angga Kesuma', '019283978891923', 'BCA', 'herman6', '39939', '2015-07-6_02-26-38_126.png', '2015-07-06'),
(52, 126, 'BNI', 'Angga Kesuma', '019283978891923', 'BCA', 'herman6', '39939', '2015-07-6_02-27-15_126.png', '2015-07-06'),
(53, 127, 'BCA', 'herman6', '39939', 'BCA', 'herman7', '235252', '', '2015-07-06'),
(54, 128, 'BCA', 'herman4', '3242', 'BCA', 'herman7', '235252', '', '2015-07-06'),
(55, 129, 'BCA', 'Herman3', '34343', 'BCA', 'herman7', '235252', '', '2015-07-06'),
(56, 130, 'BCA', 'Herman2', '12434', 'BCA', 'herman7', '235252', '', '2015-07-06'),
(57, 131, 'BCA', 'Herman', '3444', 'BCA', 'herman7', '235252', '', '2015-07-06'),
(58, 132, 'BNI', 'Angga Kesuma', '019283978891923', 'BCA', 'herman7', '235252', '', '2015-07-06'),
(59, 139, 'BNI', 'Angga Kesuma', '019283978891923', 'BCA', 'herman8', '234242', '', '2015-07-06'),
(60, 133, 'BCA', 'herman7', '235252', 'BCA', 'herman8', '234242', '', '2015-07-06'),
(61, 134, 'BCA', 'herman6', '39939', 'BCA', 'herman8', '234242', '', '2015-07-06'),
(62, 135, 'BCA', 'herman4', '3242', 'BCA', 'herman8', '234242', '', '2015-07-06'),
(63, 140, 'BNI', 'Angga Kesuma', '019283978891923', 'BCA', 'sfirst', '23465456546', '', '2015-07-06'),
(64, 136, 'BCA', 'Herman3', '34343', 'BCA', 'herman8', '234242', '', '2015-07-06'),
(65, 137, 'BCA', 'Herman2', '12434', 'BCA', 'herman8', '234242', '', '2015-07-06'),
(66, 138, 'BCA', 'Herman', '3444', 'BCA', 'herman8', '234242', '', '2015-07-06'),
(67, 141, 'BCA', 'herman8', '234242', 'BCA', 'herman9', '3424', '', '2015-07-06'),
(68, 142, 'BCA', 'herman7', '235252', 'BCA', 'herman9', '3424', '', '2015-07-06'),
(69, 143, 'BCA', 'herman6', '39939', 'BCA', 'herman9', '3424', '', '2015-07-06'),
(70, 144, 'BCA', 'herman4', '3242', 'BCA', 'herman9', '3424', '', '2015-07-06'),
(71, 145, 'BCA', 'Herman3', '34343', 'BCA', 'herman9', '3424', '', '2015-07-06'),
(72, 146, 'BCA', 'Herman2', '12434', 'BCA', 'herman9', '3424', '', '2015-07-06'),
(73, 147, 'BCA', 'Herman', '3444', 'BCA', 'herman9', '3424', '', '2015-07-06'),
(74, 148, 'BCA', 'herman9', '3424', 'BCA', 'herman10', '93993', '', '2015-07-06'),
(75, 149, 'BCA', 'herman8', '234242', 'BCA', 'herman10', '93993', '', '2015-07-06'),
(76, 150, 'BCA', 'herman7', '235252', 'BCA', 'herman10', '93993', '', '2015-07-06'),
(77, 151, 'BCA', 'herman6', '39939', 'BCA', 'herman10', '93993', '', '2015-07-06'),
(78, 152, 'BCA', 'herman4', '3242', 'BCA', 'herman10', '93993', '', '2015-07-06'),
(79, 153, 'BCA', 'Herman3', '34343', 'BCA', 'herman10', '93993', '', '2015-07-06'),
(80, 154, 'BCA', 'Herman2', '12434', 'BCA', 'herman10', '93993', '', '2015-07-06'),
(81, 155, 'BCA', 'herman10', '93993', 'BCA', 'herman11', '3342', '', '2015-07-06'),
(82, 156, 'BCA', 'herman9', '3424', 'BCA', 'herman11', '3342', '', '2015-07-06'),
(83, 157, 'BCA', 'herman8', '234242', 'BCA', 'herman11', '3342', '', '2015-07-06'),
(84, 158, 'BCA', 'herman7', '235252', 'BCA', 'herman11', '3342', '', '2015-07-06'),
(85, 159, 'BCA', 'herman6', '39939', 'BCA', 'herman11', '3342', '', '2015-07-06'),
(86, 160, 'BCA', 'herman4', '3242', 'BCA', 'herman11', '3342', '', '2015-07-06'),
(87, 161, 'BCA', 'Herman3', '34343', 'BCA', 'herman11', '3342', '', '2015-07-06'),
(88, 162, 'BCA', 'herman11', '3342', 'BCA', 'herman12', '3424', '', '2015-07-06'),
(89, 163, 'BCA', 'herman10', '93993', 'BCA', 'herman12', '3424', '', '2015-07-06'),
(90, 164, 'BCA', 'herman9', '3424', 'BCA', 'herman12', '3424', '', '2015-07-06'),
(91, 165, 'BCA', 'herman8', '234242', 'BCA', 'herman12', '3424', '', '2015-07-06'),
(92, 166, 'BCA', 'herman7', '235252', 'BCA', 'herman12', '3424', '', '2015-07-06'),
(93, 167, 'BCA', 'herman6', '39939', 'BCA', 'herman12', '3424', '', '2015-07-06'),
(94, 168, 'BCA', 'herman4', '3242', 'BCA', 'herman12', '3424', '', '2015-07-06');

-- --------------------------------------------------------

--
-- Table structure for table `transfer_referral_cancel`
--

CREATE TABLE IF NOT EXISTS `transfer_referral_cancel` (
`id` int(10) unsigned NOT NULL,
  `id_transfer_referral_bukti` int(10) unsigned NOT NULL,
  `msg` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transfer_referral_cancel`
--

INSERT INTO `transfer_referral_cancel` (`id`, `id_transfer_referral_bukti`, `msg`) VALUES
(1, 80, 'kirim ulang'),
(2, 80, 'kirim ulang'),
(3, 32, 'kirim bukti transfer...'),
(4, 36, 'buktinya mas ???'),
(5, 38, ''),
(6, 50, 'Tolong upload bukti transfer pak!!!');

-- --------------------------------------------------------

--
-- Table structure for table `transfer_referral_conf`
--

CREATE TABLE IF NOT EXISTS `transfer_referral_conf` (
`id` int(10) unsigned NOT NULL,
  `downline` int(11) NOT NULL,
  `max_income` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transfer_referral_conf`
--

INSERT INTO `transfer_referral_conf` (`id`, `downline`, `max_income`) VALUES
(1, 1, 2000000),
(2, 2, 4000000),
(3, 3, 6000000),
(4, 4, 8000000),
(5, 0, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=2041 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voucher`
--

INSERT INTO `voucher` (`id`, `nomor`) VALUES
(1433, '0698-da95-d98b-d1dc'),
(1663, '0a17-8599-3a23-e7c9'),
(1315, '0a72-dbb1-c70d-3182'),
(1082, '0b2b-0e19-1c9e-e0fd'),
(1525, '0b2d-03e1-f5b5-1e9b'),
(1960, '0b2e-bac5-3315-1dbe'),
(1130, '0b44-a1d4-271a-cdbf'),
(1407, '0bc5-86d0-120e-956d'),
(1668, '0ca1-6010-3421-ec6c'),
(1666, '0ce1-765a-1d6b-8b08'),
(1168, '0ce1-c2a3-b66a-7ef1'),
(1926, '0d26-54fe-c14b-e4d8'),
(1958, '0d4a-1bce-f369-d0d7'),
(1910, '0d64-6e39-dbda-e12a'),
(1419, '0d8a-61f2-643b-2f30'),
(1173, '0d9b-84c2-f697-acb5'),
(1169, '0dc3-f34b-a894-b7c9'),
(1316, '0f4f-16a5-8414-73ca'),
(1374, '0ffb-c597-8627-ad11'),
(1410, '1000-225c-d2b3-3bfb'),
(1593, '1050-318d-8973-9372'),
(1580, '10b4-cba7-13f4-afea'),
(1516, '10c7-fb55-fa8e-8125'),
(1659, '10e1-2552-9a91-a271'),
(1585, '1149-d415-18eb-2240'),
(1943, '11a2-816c-1efb-22ed'),
(1919, '11ba-007a-0c11-bad8'),
(1147, '11ba-2965-f52e-bcde'),
(2024, '11d1-28d9-169f-2c42'),
(1093, '1205-f577-fc95-69af'),
(1131, '120a-f627-dee8-a1fe'),
(1385, '1244-9235-7f7d-3a8b'),
(1569, '124f-20ab-b45e-e855'),
(1728, '126b-8347-6a2e-b379'),
(1622, '1283-49a2-7613-9c55'),
(1178, '128d-388f-c489-200e'),
(1297, '12d0-cdd5-39e9-7102'),
(1442, '12f7-ccce-f33d-16eb'),
(1853, '13c7-7876-4198-5a03'),
(1540, '140d-db27-36d5-3dfa'),
(1591, '1499-5bd7-f412-2191'),
(1198, '1502-20a8-374b-3a1c'),
(1300, '1594-7dca-2341-212e'),
(1113, '15a9-8d3f-f555-a55f'),
(1161, '1663-fe33-4b61-9f23'),
(1745, '1674-c0b8-3719-54ed'),
(1066, '1697-085b-48f4-542c'),
(1619, '1699-bce4-235c-763e'),
(1426, '17e2-ef5a-98cf-86fb'),
(1476, '17ea-0186-3f7e-a34b'),
(1484, '17eb-e42a-97b1-ff5a'),
(1931, '1863-ffa0-3be0-300a'),
(1624, '187a-82ad-eea6-7c81'),
(1935, '187a-e1a8-4ddf-9316'),
(1453, '188f-c22a-d5c8-9ec8'),
(2018, '18e1-0897-7d28-0bed'),
(1601, '18f3-9858-0f4a-6579'),
(1977, '1919-8600-75c5-3cca'),
(2021, '1926-a443-63d0-304d'),
(1662, '197f-10f8-f621-17d1'),
(1431, '1a93-d03b-e229-998b'),
(1396, '1ac8-6f48-e90a-6d0f'),
(1386, '1acf-8723-7093-2207'),
(1182, '1b2b-3bbf-7814-b8b9'),
(1233, '1b36-e23d-3df6-c4fe'),
(1759, '1b84-bcd3-6cd6-ce39'),
(2017, '1bad-6ff7-4977-a403'),
(1483, '1bb3-9dd2-35da-7ec5'),
(1209, '1c6a-c062-5e9c-3e90'),
(1630, '1d26-ab7f-dff6-a7fc'),
(1086, '1d64-a405-44b3-7a46'),
(1402, '1d78-79cd-90ea-74d6'),
(1432, '1dae-3eab-10b0-4680'),
(1649, '1dc0-9c8b-11cc-4e72'),
(1979, '1e01-952e-a271-075a'),
(1552, '1f05-44cb-5ae7-0954'),
(1563, '1f38-ed9a-a8ac-1d57'),
(1307, '1f46-a352-ff45-e38d'),
(2034, '202e-37dd-8df9-1068'),
(1925, '2049-384f-c382-0fb8'),
(1528, '2056-82f8-b518-f684'),
(1150, '206c-9b39-401b-c2e2'),
(1350, '208a-e47f-439e-f05d'),
(1906, '2091-405d-22a3-10ef'),
(1373, '20f7-c8aa-c1dc-2103'),
(1521, '2118-13d2-f137-f762'),
(1838, '2171-58d1-639b-1012'),
(2031, '21ab-bb82-f859-5aa7'),
(1196, '226b-f2f4-aaaa-1348'),
(2009, '22db-873d-0c92-07a6'),
(1252, '2333-6766-1f6d-1273'),
(1954, '2345-42b7-9148-e0ca'),
(1204, '23b7-ef42-7d12-d267'),
(2007, '2406-073c-76d0-9fc5'),
(1567, '2415-d49b-5e01-bee0'),
(1205, '241b-2484-b2fb-7a07'),
(1722, '24bb-7b4c-e977-3e8b'),
(1575, '24c6-b6bc-a0a4-6bb9'),
(1518, '2526-1866-c010-df2d'),
(1126, '261e-5d89-e75a-6932'),
(1261, '26e0-ab45-db48-4f24'),
(1781, '2730-8188-a6ca-fb18'),
(1289, '2732-68ac-9bff-aac7'),
(1595, '27af-4959-9c77-778a'),
(1914, '27cd-5a57-5814-0d54'),
(1174, '27d3-9a37-8e57-1511'),
(1989, '27ef-95c0-7e37-51aa'),
(1973, '281f-ae4b-c92a-515a'),
(1445, '2821-ac0b-945e-461b'),
(1632, '284e-b80a-15c2-7499'),
(1216, '2877-8af3-0c61-8449'),
(1639, '2892-fd59-54ef-b9a7'),
(1495, '28e0-68fd-760d-9f8f'),
(1880, '291e-7e0b-73df-f05e'),
(1704, '2931-fd32-967a-d98d'),
(1743, '29d9-ae95-fc55-c221'),
(1159, '29f3-11b5-4676-016e'),
(1757, '2a46-3c77-39e9-f90c'),
(1448, '2a4a-d9de-cda5-57f7'),
(1287, '2a7a-1252-60f9-ed24'),
(1256, '2b50-5867-e617-2109'),
(1678, '2b78-3fcb-f7d4-05a9'),
(1716, '2bcc-108b-fdf8-e3a6'),
(1586, '2c36-3248-044c-6a2d'),
(1733, '2c9a-0c43-c9af-d621'),
(1074, '2d38-f031-6c82-2672'),
(1394, '2d3a-6237-8823-d7d8'),
(1932, '2d78-e23c-cdda-b27b'),
(1077, '2d83-5e2a-7597-5d1b'),
(1191, '2de4-f7fe-74f2-4d03'),
(1687, '2e2c-cf6f-290d-782c'),
(2008, '2e35-852a-5ae9-1602'),
(1691, '2e50-1ca3-c3bb-f7bc'),
(1791, '2e88-3c8c-d14a-12ef'),
(1787, '2e9b-70ac-12cd-8706'),
(1079, '2ea1-a3d1-42b8-35cc'),
(1413, '2eae-a5ec-1930-7488'),
(1643, '2f4c-f706-f884-7a03'),
(1656, '2f79-1ecd-eb93-d863'),
(1788, '2f9d-d7c5-b936-db4f'),
(1727, '2fbd-ee10-89b7-35b1'),
(1822, '2fc2-cd7c-28ec-2979'),
(1802, '2fd0-6fcd-3c07-2a8e'),
(1268, '3000-5d42-6ed6-4f80'),
(1058, '3051-2e9c-944a-acf7'),
(1739, '30f7-f810-ea66-9ae8'),
(1275, '3160-56c1-c268-88c6'),
(1700, '3186-1923-91ad-ed1c'),
(1673, '31c8-1ca0-6cb9-b3bb'),
(1773, '3200-af7b-7535-4aab'),
(1786, '32a7-5f95-e692-3f67'),
(1278, '337c-bc97-076b-2b6a'),
(1105, '33a0-5ecf-ccda-fbf1'),
(1633, '33cd-59ed-6fa9-1cef'),
(1355, '3453-dd62-9e7c-ddce'),
(1211, '3497-5e9e-56df-53e6'),
(1194, '34c0-4938-dfa5-575f'),
(1408, '353f-fb2d-bfef-581b'),
(1085, '3553-7775-ed55-c926'),
(1201, '3560-1a79-65c4-a49d'),
(1621, '35ef-a2ca-471b-9080'),
(1395, '3635-a138-f7e4-260d'),
(1061, '3654-0fbc-b0f4-dd4a'),
(1369, '36ce-d050-70cc-8f68'),
(1890, '3705-96e2-543a-c1b3'),
(1436, '372a-e4aa-308c-ae8f'),
(1506, '37b9-d691-4b1b-900f'),
(1417, '381c-0213-4e7c-f4ed'),
(1213, '38b3-e96b-2b43-1ae4'),
(1260, '38c3-5eea-58d1-9980'),
(1341, '38ce-0ceb-38d0-e6ab'),
(1241, '38e7-81dc-7f13-b21f'),
(1534, '3904-929b-1dea-3e46'),
(1522, '3977-b5e4-53c7-2c29'),
(1782, '397e-2f1d-4a11-1178'),
(1359, '398d-0e9f-4da4-017a'),
(1181, '39dd-b9c8-1f3b-20b5'),
(1101, '3a1a-2dae-2033-c9d9'),
(1605, '3a6f-c37f-e75a-2940'),
(1206, '3a89-0d37-6b00-b395'),
(1620, '3aad-08ea-d1fc-9435'),
(1869, '3b67-4f92-21c3-1aca'),
(1594, '3b76-e6dc-a17f-a345'),
(1302, '3bb1-c089-a341-a949'),
(1618, '3bb9-1570-8720-a9ab'),
(1964, '3caf-acae-1101-94f8'),
(1864, '3d44-e898-07f7-d91f'),
(1651, '3d48-96ab-5dfb-6968'),
(1921, '3d70-4ffd-28c2-7631'),
(1416, '3dc6-a609-61b4-8b85'),
(1602, '3def-f77d-ed79-103f'),
(1922, '3df0-2520-c38d-64d5'),
(1461, '3eb0-0f2f-dd47-be5d'),
(1399, '3eb6-8842-db72-7f5a'),
(1778, '3f41-6daa-e65f-b33e'),
(1680, '3f45-5ef1-f5fe-74c2'),
(1129, '3fa1-6d0a-ac73-a462'),
(1514, '3fb5-506d-91f9-0879'),
(1780, '3fc9-f184-7537-de96'),
(1856, '4151-e90e-abae-c910'),
(1116, '4171-6730-ca0e-ecfc'),
(1577, '4187-01f3-da31-1118'),
(1184, '418c-6dde-385f-f3e0'),
(1210, '41c5-47c3-1547-eca8'),
(1675, '41e4-1752-c7fb-29d0'),
(1637, '420b-2d47-db08-12e5'),
(1229, '4288-bb48-39dc-971d'),
(1937, '4344-0dbd-b91e-4895'),
(1969, '4387-93e8-1d10-2b88'),
(1449, '4387-a29f-5196-b431'),
(1100, '439c-ecae-6c8b-87fe'),
(1265, '43ca-d766-856c-001f'),
(1132, '4405-0917-62ea-c569'),
(1509, '44de-30df-16e8-c77b'),
(1938, '45a6-70eb-9976-3447'),
(1070, '4602-2aea-ffca-a7dd'),
(1884, '460d-28ce-2916-b378'),
(1638, '463a-3a3e-67f3-d6e0'),
(1611, '4640-43c7-a607-d7ba'),
(1292, '4640-61e5-fe01-9028'),
(1121, '465a-28b1-9134-cb76'),
(1343, '465f-7d49-a471-7974'),
(1282, '4687-5fd3-5cf4-9d44'),
(2027, '46ba-9c87-4662-46fe'),
(1124, '46f2-5ae4-6e9c-16e7'),
(1112, '4743-debf-bd5e-b0d2'),
(1738, '4790-49db-eaaa-7556'),
(1797, '4790-e56f-c88d-d9bc'),
(1249, '47a0-68a5-5c7e-135d'),
(1887, '47d0-1424-4022-b9c8'),
(1855, '47d0-467d-2ba0-a557'),
(1473, '4825-0997-a126-a013'),
(1847, '4843-f246-1b87-2725'),
(1474, '489d-ed2d-0686-532f'),
(1724, '48a6-e892-59c5-39ec'),
(1501, '48f5-f706-69ef-3261'),
(1708, '490e-4bfb-3fb0-da42'),
(1080, '4946-cc78-18c9-dbae'),
(1444, '4979-673a-e9c7-8707'),
(1094, '49e5-fb56-9ee6-be9b'),
(2005, '4a6e-eb36-e5a2-72a9'),
(1376, '4aca-ce7b-9cb7-f9e9'),
(1455, '4ae1-88fb-408d-c886'),
(1133, '4b14-cac0-f7db-4c8f'),
(1219, '4bb8-f9da-b423-93b3'),
(1590, '4bb9-fcf5-6d9d-a791'),
(1785, '4c8d-3270-9900-4a50'),
(1195, '4ca0-2719-c408-793e'),
(1440, '4d43-d67e-d192-83f8'),
(1342, '4d5e-09ab-f32e-4fc7'),
(1224, '4d6b-a6df-028b-cbf3'),
(1356, '4d7b-3e34-6997-c742'),
(1511, '4dc6-06be-93c5-6dc7'),
(1801, '4e46-09e8-6f7f-14f9'),
(1664, '4e80-bef9-d07d-2bdc'),
(1400, '4f49-12c5-c827-d4b6'),
(1844, '4fc5-16c4-3c6d-0cf1'),
(1912, '4fcb-3a7a-b7c2-32ca'),
(1536, '4fe5-3faf-4b28-9515'),
(1929, '5052-9680-577a-3865'),
(1532, '5090-cae5-cce0-647d'),
(1903, '50e7-8497-1924-5061'),
(1389, '5178-0998-3975-60b3'),
(1271, '51a2-285d-9af5-8bf3'),
(1479, '51a3-bb8b-d8a1-0a20'),
(1375, '523a-1c9a-2559-4ff9'),
(1746, '52eb-b5af-7bb3-8a40'),
(1817, '534a-a68f-e9ad-d8e1'),
(1200, '5395-5509-d1c1-8f96'),
(1056, '53a8-fc40-56d4-a139'),
(1950, '53b4-9420-e109-f796'),
(1901, '53f5-7f23-a72a-dbad'),
(1560, '5448-2d9c-69d3-1bf2'),
(1371, '5452-54e4-4be7-8186'),
(1454, '546c-b293-c2b6-30ec'),
(1833, '5483-0595-b65c-c94d'),
(1322, '54b9-f7f7-bb69-ee33'),
(1692, '54e1-dfc2-5bfc-189c'),
(1451, '5516-e8b1-84a1-1863'),
(1657, '5529-f094-ca04-800d'),
(1250, '5577-6544-1b83-0195'),
(1062, '55f9-95c6-1597-42d6'),
(1279, '5610-6610-1044-070b'),
(1471, '5654-4c6c-d60b-8758'),
(1894, '571b-a901-2a3e-2898'),
(1974, '5735-7ab5-09e1-06d6'),
(1165, '576b-1234-5cc6-2f0d'),
(1846, '57a0-1da9-4304-9260'),
(1108, '57f5-ae01-a8ef-a1b3'),
(1091, '586b-319c-f66b-b44c'),
(1321, '5878-09f1-d954-473d'),
(1726, '587d-8eb2-536d-ac3f'),
(1434, '5884-567e-79bf-3e44'),
(1122, '5891-a32b-cdf4-2186'),
(1962, '58b4-ac97-12dc-a606'),
(1783, '58bf-cd5a-f509-baff'),
(1084, '58f9-7eb4-3830-3360'),
(1539, '5920-3048-ace8-f966'),
(1475, '5969-108f-7d56-2ecd'),
(1725, '59aa-68df-677b-f9c7'),
(1851, '59b1-4af2-7021-68c6'),
(1923, '5a2e-87e4-7be6-8d7c'),
(1526, '5ad6-9642-3116-8ef3'),
(1480, '5ba7-6542-df03-7d11'),
(1963, '5bd3-3b9f-81e6-49ae'),
(1314, '5bdf-590e-dfad-4d2a'),
(1992, '5c27-a8f8-aeef-7d6f'),
(2039, '5c30-9456-bf9d-83b0'),
(1640, '5c6a-c990-fb6a-3af6'),
(1762, '5cf2-3bbd-5a66-b3f9'),
(1550, '5d2a-387c-3fb3-4337'),
(1117, '5d5c-fec6-173f-6203'),
(1858, '5d75-0db6-4e7d-4e0c'),
(1187, '5d97-ffd6-3e84-6707'),
(1810, '5e0b-feed-e860-8fca'),
(1202, '5e1e-285a-dc93-e6e3'),
(1694, '5e55-c530-21da-a83d'),
(1255, '5e72-4d5f-47c6-b09d'),
(1706, '5edd-7a63-fd31-ae52'),
(1574, '5ef5-2f71-5e71-f2f7'),
(1615, '5f21-05f5-b320-f466'),
(1793, '5f24-8218-54a2-1a05'),
(1459, '5f29-9c44-3907-55a2'),
(1272, '5f38-f9a7-33f8-efef'),
(1626, '5f67-8a61-d3d6-f2b4'),
(1997, '5fd6-8650-5474-d35e'),
(1075, '5fe5-7ad0-66d2-3a57'),
(1623, '5fe6-502f-1add-8ac6'),
(1587, '600e-726f-473c-9af6'),
(1523, '6021-02b0-cd70-56a6'),
(1266, '6021-777d-4cf2-c72c'),
(1363, '6023-c4ac-140a-d576'),
(1493, '609e-2d5b-776a-d637'),
(1470, '60e0-2497-3aaf-93a2'),
(1756, '6130-af77-285c-cf09'),
(1120, '618a-e14b-ff8f-6e9d'),
(1541, '618e-d20e-b5ea-47cb'),
(1610, '61e8-c01a-84a5-cbd2'),
(1527, '6205-9fa0-9eeb-f3ba'),
(1438, '626b-148e-fb0a-3992'),
(1753, '627c-2d96-0d8c-9275'),
(1895, '6283-99b2-90a8-5dcb'),
(1900, '62a1-aec0-abc9-3709'),
(1945, '62a3-0c9e-d7d9-68c9'),
(1946, '62a4-651d-669b-41da'),
(1491, '62fa-01a4-fa20-d410'),
(1467, '634e-1856-ee04-c7e3'),
(1784, '635f-a469-10f7-4da6'),
(1203, '63b4-a36f-15ca-6ba5'),
(1883, '63cb-8a48-f7a1-f387'),
(1955, '6419-c2a0-944e-b8f8'),
(2001, '64ad-157d-6b9a-d581'),
(1214, '64ad-f273-b95b-f8a4'),
(1354, '64b6-fba1-dfe0-b674'),
(1982, '64c9-9319-7a67-89e2'),
(1403, '64fa-c5b0-797f-29be'),
(1886, '6584-59ef-2fb5-4eff'),
(1628, '658d-68da-3f27-b71f'),
(1589, '6595-0a52-0964-54cb'),
(1961, '65ba-3d49-40da-6496'),
(1918, '6654-5d09-636d-9c01'),
(1472, '66c6-8279-059d-bcfc'),
(1199, '6714-2a74-bb04-445b'),
(1819, '6739-5bce-f97e-7dc2'),
(1548, '675a-04e3-803b-f2c7'),
(2029, '679b-1196-6044-48ac'),
(2012, '679d-933e-9a40-824f'),
(1424, '67c9-75ce-2b94-fb90'),
(1652, '686b-dc75-4917-1141'),
(1944, '68c8-5f5d-3d9f-5f15'),
(1913, '68d5-c64c-1a2b-1756'),
(1494, '68fc-68e5-cb63-e16b'),
(1276, '6911-1d7f-84a0-1bbf'),
(1329, '6957-bfcc-9fde-0974'),
(1777, '696b-3c4d-07a8-32bc'),
(1281, '69b7-ffc2-9921-74c4'),
(1172, '69e2-43ff-c740-6967'),
(1358, '69f5-fd50-5459-b940'),
(1059, '6a1b-d28e-9eff-651d'),
(1140, '6a83-0b9c-e67f-c161'),
(1490, '6ac0-7d62-467d-cc73'),
(1774, '6af1-8c5f-2472-004a'),
(1557, '6b5f-279c-67b2-9d33'),
(1798, '6bc7-e4f7-df5c-cf9f'),
(1351, '6c24-aa50-35b6-d48c'),
(1103, '6c4c-ffc7-e341-05af'),
(1326, '6c74-b865-fe05-32df'),
(1729, '6c93-3adb-e383-ca9a'),
(1176, '6dc5-0f12-4d1e-0c6d'),
(1936, '6def-f0e3-57cf-7793'),
(1984, '6e64-28a5-a3ce-4738'),
(1875, '6e69-d56f-f3c3-1fc2'),
(1653, '6e85-af9b-088d-8cda'),
(1303, '6f6f-d394-d8af-f946'),
(1430, '6fe4-cd0f-f9b2-00a0'),
(1450, '7021-34ac-fb30-1b3f'),
(1836, '70b9-22d8-793e-23ad'),
(1360, '70f1-bf28-0c00-533f'),
(1441, '7113-2efb-9824-419a'),
(1723, '7154-47a4-34f6-5206'),
(1966, '7182-a306-1761-ae3b'),
(1073, '71d3-aa5a-9b2d-f6ba'),
(1500, '71fd-5e62-730b-b6c4'),
(1636, '723c-4ed3-c0fb-e88f'),
(1693, '724c-1bde-e8c8-6242'),
(2023, '72a5-ff8f-fe25-b444'),
(1795, '72af-6a80-6e02-8104'),
(1248, '734b-25d2-f755-3aec'),
(1776, '73cb-e63b-6d81-b77a'),
(1099, '741f-d83f-636f-97b7'),
(1115, '743d-abde-78e8-e981'),
(1897, '7462-b37e-2d82-e44b'),
(1331, '74fd-7fa7-2e81-f5d2'),
(1816, '751b-773f-89f7-3388'),
(1141, '7552-4ba5-f23c-d349'),
(1370, '75a5-1f73-f781-ff7d'),
(1755, '75c9-e873-3456-1b45'),
(1661, '75d2-e195-58c3-2555'),
(1427, '7606-969a-9b9a-38e8'),
(1365, '760c-3bce-7885-dc5b'),
(1981, '762a-abc0-178b-dfe1'),
(1852, '7645-226e-4132-4168'),
(1915, '7663-51f9-139d-6b5a'),
(1607, '7665-d166-59dd-1c27'),
(1990, '7688-93bc-9f72-c7aa'),
(1458, '7689-25d8-8e75-e014'),
(1388, '76fa-4bb9-66ab-8039'),
(1877, '7726-9204-ad7a-5276'),
(1873, '7746-ea3c-e26c-c106'),
(1145, '77f0-4e66-2507-4bfc'),
(1390, '784b-9b26-8785-100f'),
(1340, '792e-0500-bdc7-45db'),
(1347, '7930-bb59-a1b2-bcd4'),
(1711, '7941-dbaf-422c-361c'),
(1648, '7952-a0d3-c8a1-bd7c'),
(1812, '79f5-534d-fe69-9064'),
(1542, '7a96-91ce-7075-7846'),
(1057, '7b2e-30fe-2b4d-927e'),
(1930, '7b7e-f4f9-5db1-7d03'),
(1835, '7bf4-f98d-2b0b-0314'),
(1290, '7bf7-6f68-6a9b-0d30'),
(1421, '7c3c-27d1-6a85-ba1e'),
(1547, '7c55-17e5-0359-5b2b'),
(1510, '7c5f-7d1b-433f-c475'),
(1339, '7cd5-bbb9-bd49-0701'),
(1769, '7cd6-addb-80df-84fa'),
(1305, '7cfe-d886-ed01-e885'),
(1571, '7d1e-73ee-9c98-43a3'),
(1719, '7d44-73d5-6475-d7a6'),
(1868, '7d59-2449-e271-d70e'),
(1238, '7d5e-c5c5-1d8a-e345'),
(2013, '7dee-0753-bf44-0615'),
(1720, '7e1c-ac9f-be6b-72d8'),
(1320, '7e55-141c-91bb-9ed8'),
(1555, '7e6f-9598-f058-e6e2'),
(1452, '7e7f-02bb-919f-fb74'),
(1090, '7ea2-53d1-3b8e-7e72'),
(1488, '7f00-fa68-3074-4e17'),
(1175, '7f3c-be70-62ac-b714'),
(1435, '7f5f-bca9-f444-a6a0'),
(1764, '801b-8dc6-566e-5033'),
(1208, '804f-af99-dd19-4f4e'),
(1134, '805d-af59-e092-f58e'),
(1464, '8071-2c0e-8b48-f8ee'),
(1865, '8091-919b-f52d-e99f'),
(1087, '811f-f7c8-8366-c0b1'),
(1681, '8186-03a3-33d0-cf66'),
(1288, '81df-fb13-e3d4-4a1e'),
(1840, '81e5-05c8-0dc4-c5bf'),
(1658, '8235-9b64-62f4-20fb'),
(1069, '8269-782d-636b-e4c6'),
(1682, '82d0-8dc9-f370-52c9'),
(1911, '82fa-f938-33e4-56d9'),
(1179, '833e-a09c-6bbe-86a0'),
(1679, '835a-17ef-1783-be7c'),
(1684, '835f-0eac-3234-bff0'),
(1978, '839e-d1a4-715a-58e5'),
(1264, '846a-e29d-46db-7faa'),
(1597, '848b-d74c-e46f-c483'),
(1799, '854d-3f51-7521-8476'),
(1348, '855d-851b-b4c0-cfbb'),
(1731, '855f-a04b-c5c9-c713'),
(1405, '85a5-04ea-2a47-c682'),
(1244, '85aa-ef8e-4bcd-33c1'),
(1866, '85d8-a93a-8e0b-6e9a'),
(1558, '864a-fab8-bcab-a3a5'),
(1917, '8655-e6dd-f69b-2c7b'),
(1520, '86c0-7b44-6cbb-37a5'),
(1232, '8713-c149-dd90-2714'),
(1537, '8717-6de2-7723-5b58'),
(1627, '872d-37d1-abea-3225'),
(1882, '87cd-deff-51cb-8b23'),
(1212, '87cf-8c97-10e7-04b6'),
(1517, '8804-3737-5a68-a7d0'),
(1497, '881e-dfcc-373a-7bee'),
(1596, '88b8-d108-cde2-2edd'),
(1710, '88dc-1f5a-1fe9-8d71'),
(1750, '88eb-f1d0-a453-7a42'),
(1993, '892b-86a6-cb09-6ab9'),
(1872, '8950-701f-8f9f-e213'),
(1734, '8969-7d77-66e6-0476'),
(1291, '89ec-d4ee-5b63-c746'),
(1790, '8a0b-da00-46d4-968e'),
(1457, '8a34-9ab4-f045-90df'),
(1110, '8a92-f9bc-12dd-6c97'),
(1269, '8a93-c925-69ab-e86d'),
(1162, '8a9d-958a-259f-1ab7'),
(1820, '8ae8-9ca9-0f82-1761'),
(1298, '8b14-4b41-14b6-8123'),
(1217, '8b1b-9351-cd8c-4ab5'),
(1380, '8b27-0580-3459-21dc'),
(1907, '8bd0-71e2-fb00-9090'),
(1230, '8ce1-be57-a801-0f64'),
(1546, '8d0a-57a6-0c8f-b660'),
(1751, '8d1e-d14f-4c35-a4e7'),
(1635, '8dd2-8785-11af-29f0'),
(1189, '8df6-384e-b8fb-3504'),
(1613, '8df9-967c-b935-69b7'),
(1318, '8e2a-bd70-00b0-ac86'),
(1381, '8e53-fe19-ea6f-0111'),
(1406, '8e8c-758f-6608-23fc'),
(1337, '8eda-e8cc-5829-eace'),
(1809, '8f81-b795-018c-99c4'),
(1848, '8fbd-994d-daf2-f931'),
(1867, '9041-dfda-193d-54cc'),
(1702, '9083-ca87-0abb-3f74'),
(1446, '90b8-215c-182c-1a27'),
(2026, '9132-56e2-d76f-96d0'),
(1647, '91b4-5306-c14e-06b5'),
(1362, '9204-8acd-08f9-3ae2'),
(1803, '9242-c694-725d-15f5'),
(1934, '926d-4e01-f3c0-e0b7'),
(1641, '92c2-1a0d-0e69-8254'),
(1771, '92d6-17f8-9aa3-7397'),
(1393, '9325-0892-a0e1-cf5d'),
(1258, '932a-9464-588f-08ce'),
(1823, '9352-5386-db13-fb50'),
(1980, '9416-2492-a4c2-fcdc'),
(1146, '953e-319a-7a18-4b1e'),
(1672, '9551-86da-c562-f3c0'),
(1404, '9556-bc25-9f11-4875'),
(1240, '9582-ae85-4cb7-7d98'),
(1067, '95a4-702d-e0ec-ae42'),
(1267, '9609-8345-caf8-2121'),
(1185, '9625-d73a-d98a-e918'),
(1226, '962c-ae66-7d32-85d7'),
(1893, '968a-e53a-0ed2-3268'),
(1642, '9699-e066-f81e-eb68'),
(1242, '96a7-5f5e-111b-2036'),
(1881, '96d9-d5ee-c908-0174'),
(1215, '9708-bcd2-87aa-1bb9'),
(1420, '9714-f96c-4024-c3a0'),
(1766, '971c-cc45-f370-8df9'),
(1332, '9785-b848-da3b-a7ac'),
(1676, '97a8-528e-e0e4-45ae'),
(1412, '97cb-d692-3399-e845'),
(2025, '97fc-6dcb-f80e-8799'),
(1392, '981c-2e23-e4ef-ab73'),
(1830, '984f-6b9a-7893-31f1'),
(1372, '9979-430d-01c3-3adc'),
(1486, '99b5-f1cd-cdc9-dc3f'),
(1324, '99bb-a003-87c2-b9ce'),
(1965, '9a2f-bcb3-3856-ba4f'),
(1876, '9a4d-ab85-36f8-196e'),
(1581, '9a53-5319-2017-56ea'),
(1078, '9af3-80cd-228b-b82b'),
(1364, '9af5-c0aa-471a-ca42'),
(1740, '9afb-3392-4585-e4b3'),
(1779, '9b0f-8a09-7f75-c3aa'),
(1245, '9b3e-1d2f-a881-cb31'),
(1985, '9b91-4053-9925-e874'),
(1811, '9bf9-2cce-d261-c077'),
(1296, '9c05-2d9a-9cee-a486'),
(1128, '9cc4-01a4-242f-a259'),
(1414, '9ce2-a171-4c2f-e18f'),
(1119, '9ce3-77f6-a5e8-ff8a'),
(1714, '9d2b-5da3-5d85-f259'),
(1192, '9d78-5ef0-b3f1-d67c'),
(1598, '9d82-d1a6-7d6c-f764'),
(1804, '9dc7-8774-1499-3ddc'),
(1357, '9e07-4766-0e66-0eaa'),
(1301, '9f07-db56-d6a5-29de'),
(1092, '9f61-aa6d-69e4-2fce'),
(1136, '9f90-940b-d6b0-78cd'),
(1352, '9fc8-02bd-1aeb-bfd1'),
(1284, '9fe4-6501-0e03-c7c0'),
(2038, 'a000-7b85-7f97-0d3f'),
(1109, 'a057-0ef2-fcc6-583e'),
(1231, 'a05e-2475-b6f8-1151'),
(1703, 'a0cc-d8db-56b3-f94f'),
(1387, 'a0f4-49f5-8640-a314'),
(1554, 'a130-4505-729f-7897'),
(1896, 'a131-b3b9-e5e3-7f46'),
(1772, 'a150-289f-4b66-1b5d'),
(1551, 'a16a-569d-d31d-89f6'),
(1060, 'a18f-8b6c-2552-e6b6'),
(2006, 'a200-eebb-78b5-2c29'),
(1533, 'a220-8afd-2d6f-8f7d'),
(1170, 'a308-3197-01aa-0641'),
(1667, 'a383-cbe2-f8f7-8892'),
(1482, 'a387-eb01-9d10-6259'),
(1148, 'a39d-5532-df2c-8334'),
(1827, 'a3d8-192b-49ec-5faf'),
(1346, 'a3ee-4380-55c7-e175'),
(1959, 'a3ef-bff9-d5d6-e6d0'),
(1428, 'a471-0f48-ee49-5b5d'),
(1737, 'a507-bcbc-3b9a-2b98'),
(1837, 'a5cc-ada6-f03c-f775'),
(1207, 'a70d-22cc-7213-a898'),
(1988, 'a7e1-c691-efee-ca1f'),
(1874, 'a7e9-7005-ce58-f464'),
(1330, 'a7f1-f067-223b-7b16'),
(1832, 'a82f-4a9f-a3d0-9874'),
(2028, 'a85a-36ba-a639-2679'),
(2020, 'a860-5a41-69a8-9f61'),
(1891, 'a88d-0894-7578-3cfd'),
(1081, 'a899-2dfd-5dec-1297'),
(1854, 'a8a4-8cfc-a538-8806'),
(1221, 'a8d2-a3fc-d9ca-bd02'),
(1849, 'a8e6-4cd9-4b28-7f29'),
(2032, 'a8eb-9f7b-0513-d012'),
(1273, 'a8fa-7492-3fc8-51c6'),
(1972, 'a95e-f9a4-0d29-da66'),
(1089, 'a974-4373-24c3-aa2f'),
(1512, 'a986-3798-9281-1243'),
(1519, 'a9bb-392f-5929-eb02'),
(1135, 'a9ce-f41b-3e27-30b0'),
(1123, 'a9fe-352a-979d-3d7d'),
(1529, 'aa7e-5d2e-56a5-4610'),
(1225, 'aaba-a336-086b-e751'),
(1566, 'ab2a-4933-ceb0-8c78'),
(1180, 'ab2d-c5b6-241f-77fd'),
(1991, 'ab81-d634-0435-2898'),
(1951, 'abdd-e7dd-cae5-0b75'),
(1098, 'abe5-25d4-6e8e-87a8'),
(1584, 'abea-8edb-cbe6-6561'),
(1927, 'ac66-10ac-b422-6eb6'),
(1152, 'acea-d551-7eee-5dfe'),
(1235, 'aceb-46e5-264d-ef1f'),
(1553, 'ad7d-bab3-dc57-dbf2'),
(1313, 'ad94-43aa-d89c-b82f'),
(1102, 'add2-4833-0431-f221'),
(1334, 'ae45-3e20-49de-4baa'),
(1160, 'aec8-7b80-ebba-e90b'),
(1644, 'aeda-0718-4f22-460d'),
(1429, 'af03-9413-09e1-940f'),
(1158, 'afa7-d480-fb4f-4b29'),
(1295, 'aff0-e651-a7de-266f'),
(1696, 'b05b-4d5f-7e67-8a3e'),
(1253, 'b0c5-d306-dc3b-5cd6'),
(1616, 'b11e-2fe9-a542-ef00'),
(1327, 'b11f-1122-5cf1-3506'),
(1576, 'b152-8465-d9b5-2c8f'),
(1688, 'b164-be33-b87c-ebda'),
(1686, 'b1cf-43a9-5c4f-cb29'),
(1735, 'b1fe-3cc9-2f64-b4dd'),
(1564, 'b224-cd70-38dd-7e62'),
(1987, 'b343-3417-9f8d-1166'),
(1732, 'b3f4-c5af-56d5-cfce'),
(1504, 'b3fc-379e-94b5-821a'),
(1768, 'b40d-2ed8-a713-3549'),
(1612, 'b414-8506-5302-9e80'),
(1338, 'b515-807f-1453-6159'),
(1604, 'b585-7b04-d592-526c'),
(1545, 'b5fa-3a16-bef0-2055'),
(1561, 'b646-5076-60fd-b27e'),
(1437, 'b6ab-eff4-bd79-6247'),
(1218, 'b6e3-b7e0-808c-9397'),
(1956, 'b7c2-e55c-91b8-b27f'),
(1236, 'b80a-716d-ad3d-7c9a'),
(1167, 'b838-50cd-87b6-24d8'),
(1857, 'b838-954e-ab27-fb28'),
(1127, 'b8d9-f765-22cf-f988'),
(1466, 'b918-d7d9-d510-30b9'),
(1068, 'b952-e15c-fbb0-b43b'),
(1095, 'b964-4dd6-0065-decb'),
(2003, 'b9d9-e8ea-9f60-ecea'),
(1815, 'b9f7-1a00-cbe8-2349'),
(1902, 'ba13-22e8-1b5e-5c74'),
(1559, 'ba41-a750-f6a6-f487'),
(1312, 'ba58-671a-cad3-91d5'),
(1770, 'bacf-367e-cbb0-8be6'),
(1967, 'baef-cea4-3ef8-195e'),
(1286, 'baf0-09ac-bf26-81f4'),
(1821, 'baf7-de62-e6cb-d12a'),
(1646, 'bb5b-3bb2-0fd0-1dd8'),
(1698, 'bc02-0730-be7a-1dd8'),
(1898, 'bc71-7165-6ce7-6684'),
(1285, 'bcfc-bf39-ff19-87a6'),
(1948, 'bd09-060a-2732-3197'),
(1968, 'bd0d-eeca-ff73-adf8'),
(1775, 'bd1c-191f-d402-19b1'),
(1118, 'bd47-7de8-e457-a7ae'),
(1599, 'be08-38b2-0d3b-46f0'),
(1377, 'be2b-2d0b-a38e-f2ce'),
(2022, 'be8b-b01d-1e27-1368'),
(1106, 'be8c-6a5c-ecb8-f1d0'),
(1736, 'bea8-f1b4-c37e-d6c8'),
(1754, 'beb6-313d-9bea-b11a'),
(1634, 'bf00-2e0b-7c71-5fe9'),
(1842, 'c008-abb8-ee09-0c56'),
(1383, 'c035-48f1-058f-399f'),
(1323, 'c108-a144-1875-ee8c'),
(1188, 'c10f-a638-0065-fe05'),
(1747, 'c184-4580-f07f-3a55'),
(1609, 'c1fd-be58-4780-d0fe'),
(1862, 'c230-81dd-393f-d33f'),
(1234, 'c255-8d7e-231c-6125'),
(1949, 'c25a-5e6d-cb80-ff1e'),
(1863, 'c2b2-f741-7d27-237a'),
(1463, 'c2c2-3a41-7585-d660'),
(1685, 'c2e3-6b7b-89d1-0938'),
(1878, 'c33c-c7d6-230e-9220'),
(1800, 'c346-bbdc-e9fa-87b4'),
(1349, 'c3c9-0ff7-1db1-4ad0'),
(1097, 'c486-999d-5c9d-f932'),
(1671, 'c4dd-291d-1957-2212'),
(1055, 'c4ea-9379-e9de-250e'),
(1237, 'c507-861d-75a0-cf2a'),
(1378, 'c57d-492c-c479-306c'),
(1892, 'c5d3-5c93-e547-a30e'),
(1469, 'c601-e1a8-1d7b-a666'),
(1998, 'c681-8c56-8db6-5a35'),
(1415, 'c738-177a-375f-c038'),
(1701, 'c7ec-2292-c170-28e1'),
(1543, 'c7f6-b75e-8468-a2e3'),
(1899, 'c821-f96f-e1ab-8224'),
(1496, 'c83f-551b-92b9-90e8'),
(1138, 'c83f-56bf-4e4c-f9e2'),
(1149, 'c85f-c9a1-56dc-f231'),
(1748, 'c8ee-9da5-8e90-05b0'),
(1983, 'c8ef-2431-ba24-5c6f'),
(1468, 'c962-441d-f1b7-9079'),
(1319, 'c977-78ee-4876-4262'),
(1953, 'c98a-4860-d9d2-bfd9'),
(1971, 'c9cc-d177-1f24-41cd'),
(1366, 'c9eb-cafc-5dac-665b'),
(1582, 'c9fc-efbb-8a59-be22'),
(2036, 'caa5-5b3c-10af-d87f'),
(1760, 'cacd-22c2-53a6-56ac'),
(1294, 'caea-2478-5446-9ade'),
(1277, 'cb0f-587c-7374-6102'),
(1796, 'cb86-accc-e689-2fde'),
(1860, 'cbc8-3a6c-ef9b-ede7'),
(1530, 'cbcf-7571-c0d8-99e0'),
(1270, 'cbd5-9fa3-c0b5-59ca'),
(1814, 'cbf3-0009-8ed4-7754'),
(1531, 'cc56-8690-ab5d-9f3c'),
(1220, 'ccb8-1323-01a4-439a'),
(1744, 'cd4e-097e-b3d8-4a8b'),
(1888, 'ce0c-3b48-97a9-d78c'),
(1807, 'ce70-c983-7592-4ebc'),
(1690, 'ce97-5883-ba2a-3c6d'),
(1139, 'd00f-f5a0-104d-208f'),
(2040, 'd041-598b-af6a-8561'),
(1572, 'd082-7468-520b-d46a'),
(1072, 'd082-e9b3-4aeb-1d8a'),
(1251, 'd085-7080-c2e4-40f7'),
(2019, 'd08f-db16-18b9-17c5'),
(1137, 'd0e2-1ac3-a978-ebdb'),
(1825, 'd15d-b39c-2b5f-243b'),
(1828, 'd15d-cf51-5a9c-0863'),
(1617, 'd181-6259-e604-f542'),
(1353, 'd181-ec5e-9cf1-1892'),
(1513, 'd18d-9efb-35a2-61c4'),
(1841, 'd18f-ad42-61e2-031b'),
(1157, 'd198-c9e6-dc56-25f4'),
(1677, 'd1f1-0919-27cc-7ed5'),
(1280, 'd369-2bc0-9281-b8fe'),
(1947, 'd3c7-a582-c103-655a'),
(1952, 'd3db-4f94-6f93-10a0'),
(1083, 'd43b-a26f-f1ea-d40a'),
(1104, 'd47a-0b5b-0879-cda4'),
(1850, 'd489-c443-da89-0512'),
(1507, 'd495-4d47-95f1-56e6'),
(1508, 'd501-4f6c-b5fc-bb02'),
(1535, 'd569-5479-24ec-c685'),
(1259, 'd585-2af6-6317-005b'),
(1333, 'd591-0395-c497-c403'),
(1239, 'd5e5-fd47-47b4-1c44'),
(1908, 'd5eb-6502-8f6b-64e3'),
(1502, 'd613-89d1-9a3a-35bc'),
(1247, 'd648-a055-89e3-747d'),
(1752, 'd651-ee81-fe6b-c0fd'),
(1709, 'd6c8-fb6e-efce-3305'),
(1308, 'd788-ee55-b3d4-4068'),
(2011, 'd820-3b95-2428-5bf8'),
(1223, 'd832-e298-817d-b530'),
(1655, 'd86c-8743-c65c-a4b0'),
(1384, 'd875-7fc1-e2e6-b8b4'),
(1478, 'd8ea-49ce-df62-3062'),
(1839, 'd939-eed0-80ac-d703'),
(1975, 'd98c-3e7d-69ac-6ec7'),
(1916, 'd9c2-edfe-a712-b7fd'),
(1834, 'd9fb-f445-7299-5cb3'),
(1831, 'da23-861b-d1b9-ba64'),
(1665, 'da26-50bf-5ed4-c833'),
(1439, 'da5c-8939-8c9f-1b48'),
(1328, 'dae2-20f2-74d8-4b6e'),
(1465, 'db05-c858-2d95-e947'),
(1306, 'db79-a11d-10aa-8e50'),
(1227, 'db93-7214-5c13-5008'),
(1905, 'dba7-6e9f-cf4a-a546'),
(1064, 'dbc6-c59c-77c9-7339'),
(2030, 'dd25-29f2-f473-5864'),
(1920, 'dd29-0c3d-228b-21b6'),
(1186, 'dd40-f0a8-d6b8-c259'),
(1492, 'dd47-9098-9e4e-2db1'),
(1397, 'dd4d-f28c-c637-daea'),
(1749, 'dd67-caa5-c52e-97cb'),
(1730, 'dd9c-9a06-5d4d-76e5'),
(1177, 'ddd7-077d-de4e-59f1'),
(1481, 'de7e-c437-6a8d-4f23'),
(1843, 'de95-4dd6-d553-3832'),
(1818, 'ded1-f3aa-8cf3-d40c'),
(1462, 'deda-ff02-8fc2-a529'),
(1705, 'dee2-d4df-140d-d4bd'),
(1096, 'dee6-5819-6b2d-b2df'),
(2002, 'df99-f543-f2b4-33a8'),
(1310, 'dfa3-fde2-4783-7ebb'),
(1715, 'dfe3-e1d0-94b2-5771'),
(1107, 'dfe5-729e-0568-ee54'),
(1631, 'e09f-7807-985d-42c8'),
(1995, 'e0b7-a21e-2800-9023'),
(1721, 'e0ea-ce22-d7ce-39f5'),
(1398, 'e0f6-3d91-455e-9bc3'),
(1994, 'e104-426b-f3c6-c111'),
(1485, 'e125-aca4-8533-0519'),
(1155, 'e1a2-63c0-9222-bb72'),
(1142, 'e1f3-9971-386b-cc60'),
(1957, 'e2a3-fc04-9f01-2bba'),
(1986, 'e2b3-7502-267b-f6c8'),
(1401, 'e317-9624-d680-0317'),
(1583, 'e37a-4f82-7663-2221'),
(2033, 'e38a-2afb-7d1d-9c1d'),
(1765, 'e3af-1b44-df82-14dc'),
(1758, 'e3d8-f768-c8f3-bae4'),
(1792, 'e401-48f8-9385-33b1'),
(1824, 'e45a-4b36-7fca-c35b'),
(1712, 'e543-5920-6777-82db'),
(1742, 'e5af-b687-1d32-5b19'),
(1683, 'e615-3a7e-6c60-0e8b'),
(1065, 'e682-c133-6134-16b0'),
(1697, 'e68b-063e-d940-aadf'),
(1625, 'e704-9a48-06ad-12de'),
(1767, 'e750-4825-cd54-2915'),
(1976, 'e763-c6a9-5f07-dd6e'),
(2000, 'e77d-7c0d-81d6-c4da'),
(1361, 'e7a3-595a-54b2-ff4e'),
(1422, 'e7fb-ae8f-f20e-ba6a'),
(1309, 'e864-06b4-dad9-8c74'),
(1999, 'e87a-bf9a-1363-1eba'),
(1382, 'e88d-d177-81c6-622d'),
(1789, 'e969-3dbf-5a4b-3765'),
(1614, 'e96e-34b4-35ca-21b3'),
(1904, 'e9b0-331f-76a5-2a54'),
(1608, 'e9df-ac91-17dc-2d19'),
(1578, 'ea96-8d90-a0a3-0832'),
(1447, 'eac7-8bac-bf6e-ec6a'),
(1562, 'eadd-e15c-a9a4-5a90'),
(1505, 'eae0-56bb-2bef-73b1'),
(1489, 'eaea-56b6-6668-acf7'),
(1924, 'eaf4-547b-d399-e29c'),
(1456, 'eb0d-730e-2bf1-2e5b'),
(1718, 'ebaf-812a-0481-b2bc'),
(1845, 'ebb1-d677-483f-cf62'),
(1274, 'ebcc-3e8d-b34e-b740'),
(1570, 'ec6d-f011-024c-f59c'),
(1262, 'ec72-6f2c-9cf4-ff8d'),
(1151, 'eca9-f73c-2823-9e0d'),
(1111, 'ed1c-fa2f-823a-5f64'),
(1544, 'ed22-b9a8-c3ec-9dca'),
(1409, 'ed43-912e-34af-48c5'),
(1391, 'ed62-b31e-7cf2-96fa'),
(1299, 'edb7-aece-c321-e28c'),
(1826, 'edd3-e289-5f54-de78'),
(1163, 'ede0-e461-9c39-a444'),
(1143, 'ee18-0050-8af1-7652'),
(1909, 'ee4a-9e54-3588-f54f'),
(1263, 'ee55-fe0f-357a-fdd4'),
(1568, 'eea7-f07b-4c0a-c0fc'),
(1336, 'eedd-ac4b-8cb0-de95'),
(1283, 'eeed-806e-d636-172b'),
(1411, 'ef5c-d38a-d195-83bf'),
(1088, 'efa8-a27b-8234-cbb0'),
(1443, 'f044-c321-4788-74b3'),
(1503, 'f083-c8db-6de1-880c'),
(1311, 'f0fc-6880-3d37-444b'),
(1592, 'f146-a96d-d198-7bcc'),
(1076, 'f16b-12c1-9a3d-c01c'),
(1197, 'f186-6978-c2d0-0b63'),
(1487, 'f196-94c4-f26c-db09'),
(2015, 'f1cd-ec66-3ba5-aab7'),
(2010, 'f1df-5e65-ef29-04b9'),
(1193, 'f250-9a39-6c5f-2ef8'),
(1114, 'f2ac-00ed-07cd-65a7'),
(1763, 'f31e-1f43-d791-ee95'),
(1588, 'f36b-fa22-b138-6f01'),
(1933, 'f3a5-ecec-b200-64f4'),
(1304, 'f3d1-1f16-1914-ccac'),
(2037, 'f3fa-1656-07bf-8c1c'),
(1606, 'f414-73a5-4402-8004'),
(1761, 'f441-6a47-3fc6-23ae'),
(2004, 'f48a-9905-8c22-3bfb'),
(1556, 'f4f7-96a0-8050-8906'),
(1939, 'f5b3-ef22-0f0e-5c7f'),
(1650, 'f5ed-1a8d-a6b9-745a'),
(1674, 'f629-2157-901e-280c'),
(1670, 'f671-be95-438e-64ea'),
(1579, 'f682-b821-b2d7-d7b3'),
(1928, 'f6bd-7a66-f3f4-9546'),
(1171, 'f710-7fd8-e778-3fc0'),
(1379, 'f738-9ea9-1a01-0d69'),
(1071, 'f762-8322-b4db-fc86'),
(1660, 'f7cd-d718-c28b-de7d'),
(1942, 'f7e2-ce78-0c3f-5f9c'),
(1335, 'f7f6-1ce1-7fa1-9835'),
(1228, 'f85d-37d4-4cc1-ec5a'),
(1345, 'f8ef-349d-4ecc-45d8'),
(1164, 'f909-2cae-e632-aab1'),
(1629, 'f93f-9617-6ea2-80d8'),
(1717, 'f986-f738-dbee-64d3'),
(1538, 'f9c4-6049-6753-3e10'),
(1166, 'f9f1-1227-ca57-9f30'),
(1996, 'fa28-7836-5b3b-0be2'),
(1254, 'fa5f-fafb-8c42-d688'),
(1293, 'fa60-3dc9-a8c1-3e3e'),
(1460, 'facc-cd6e-1455-dd26'),
(1573, 'facd-7947-c61a-78b3'),
(1515, 'fae6-1f25-dc9a-9544'),
(1190, 'fb0d-e84b-776c-e29e'),
(1741, 'fb71-4f8c-ef04-7a03'),
(1524, 'fb8b-96c8-8cba-2060'),
(1257, 'fc04-c80a-b79b-46ad'),
(1243, 'fd41-b00c-7f58-0266'),
(1222, 'fd4f-7b11-39ee-50bd'),
(1063, 'fd94-ba4a-8661-bdae'),
(1325, 'fdd3-1dbd-7bd3-c9a7'),
(1699, 'fde6-c56a-6873-de36'),
(1654, 'fe67-49ea-c677-3592'),
(1861, 'fee6-c4fb-db86-8117'),
(1418, 'ff09-5b2f-4721-4b67');

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE IF NOT EXISTS `wallet` (
`id` int(10) unsigned NOT NULL,
  `id_member` int(10) unsigned NOT NULL,
  `balance` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wallet`
--

INSERT INTO `wallet` (`id`, `id_member`, `balance`) VALUES
(1, 1, 1900000),
(2, 2, 3000000),
(3, 3, 0),
(4, 4, 0),
(5, 5, 0),
(6, 6, 0),
(7, 7, 150000),
(8, 10, 0),
(9, 8, 0),
(10, 11, 0),
(11, 12, 0),
(12, 13, 0),
(13, 14, 0),
(14, 15, 0),
(15, 16, 0),
(16, 17, 0),
(17, 18, 0),
(18, 19, 1500000),
(19, 20, 750000),
(20, 21, 750000),
(21, 22, 750000),
(22, 23, 0),
(23, 24, 0),
(24, 25, 0),
(25, 26, 0),
(26, 27, 0),
(27, 28, 150000),
(28, 29, 0),
(29, 30, 0),
(30, 31, 0),
(31, 32, 0),
(32, 33, 0),
(33, 34, 0),
(34, 35, 0),
(35, 36, 650000),
(36, 37, 550000),
(37, 38, 450000),
(38, 39, 0),
(39, 40, 350000),
(40, 41, 250000),
(41, 42, 150000),
(42, 43, 0),
(43, 44, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wallet_logs`
--

INSERT INTO `wallet_logs` (`id`, `id_member`, `type`, `message`, `amount`) VALUES
(2, 10, 'created', 'Pembuatan wallet', 0),
(3, 7, 'deposit', 'deposit referral Rp. 150000', 150000),
(4, 11, 'created', 'Pembuatan wallet', 0),
(5, 12, 'created', 'Pembuatan wallet', 0),
(6, 13, 'created', 'Pembuatan wallet', 0),
(7, 14, 'created', 'Pembuatan wallet', 0),
(8, 15, 'created', 'Pembuatan wallet', 0),
(9, 16, 'created', 'Pembuatan wallet', 0),
(10, 17, 'created', 'Pembuatan wallet', 0),
(11, 18, 'created', 'Pembuatan wallet', 0),
(12, 1, 'deposit', 'deposit referral Rp. 150000', 150000),
(13, 19, 'created', 'Pembuatan wallet', 0),
(14, 1, 'deposit', 'deposit referral Rp. 150000', 150000),
(15, 20, 'created', 'Pembuatan wallet', 0),
(16, 19, 'deposit', 'deposit referral Rp. 150000', 150000),
(17, 1, 'deposit', 'deposit referral Rp. 100000', 100000),
(18, 21, 'created', 'Pembuatan wallet', 0),
(19, 1, 'deposit', 'deposit referral Rp. 100000', 100000),
(20, 19, 'deposit', 'deposit referral Rp. 100000', 100000),
(21, 20, 'deposit', 'deposit referral Rp. 150000', 150000),
(22, 22, 'created', 'Pembuatan wallet', 0),
(23, 1, 'deposit', 'deposit referral Rp. 100000', 100000),
(24, 19, 'deposit', 'deposit referral Rp. 100000', 100000),
(25, 20, 'deposit', 'deposit referral Rp. 100000', 100000),
(26, 21, 'deposit', 'deposit referral Rp. 150000', 150000),
(27, 23, 'created', 'Pembuatan wallet', 0),
(28, 24, 'created', 'Pembuatan wallet', 0),
(29, 25, 'created', 'Pembuatan wallet', 0),
(30, 19, 'deposit', 'deposit referral Rp. 150000', 150000),
(31, 26, 'created', 'Pembuatan wallet', 0),
(32, 19, 'deposit', 'deposit referral Rp. 150000', 150000),
(33, 1, 'deposit', 'deposit referral Rp. 100000', 100000),
(34, 1, 'deposit', 'deposit referral Rp. 100000', 100000),
(35, 27, 'created', 'Pembuatan wallet', 0),
(36, 28, 'created', 'Pembuatan wallet', 0),
(37, 29, 'created', 'Pembuatan wallet', 0),
(38, 1, 'deposit', 'deposit referral Rp. 150000', 150000),
(39, 30, 'created', 'Pembuatan wallet', 0),
(40, 1, 'deposit', 'deposit referral Rp. 100000', 100000),
(41, 28, 'deposit', 'deposit referral Rp. 150000', 150000),
(42, 31, 'created', 'Pembuatan wallet', 0),
(43, 1, 'deposit', 'deposit referral Rp. 100000', 100000),
(44, 32, 'created', 'Pembuatan wallet', 0),
(45, 19, 'deposit', 'deposit referral Rp. 150000', 150000),
(46, 33, 'created', 'Pembuatan wallet', 0),
(47, 1, 'deposit', 'deposit referral Rp. 100000', 100000),
(48, 34, 'created', 'Pembuatan wallet', 0),
(49, 19, 'deposit', 'deposit referral Rp. 150000', 150000),
(50, 19, 'deposit', 'deposit referral Rp. 150000', 150000),
(51, 35, 'created', 'Pembuatan wallet', 0),
(52, 36, 'created', 'Pembuatan wallet', 0),
(53, 19, 'deposit', 'deposit referral Rp. 100000', 100000),
(54, 20, 'deposit', 'deposit referral Rp. 100000', 100000),
(55, 21, 'deposit', 'deposit referral Rp. 100000', 100000),
(56, 22, 'deposit', 'deposit referral Rp. 150000', 150000),
(57, 1, 'deposit', 'deposit referral Rp. 100000', 100000),
(58, 1, 'deposit', 'deposit referral Rp. 100000', 100000),
(59, 37, 'created', 'Pembuatan wallet', 0),
(60, 1, 'deposit', 'deposit referral Rp. 100000', 100000),
(61, 19, 'deposit', 'deposit referral Rp. 100000', 100000),
(62, 20, 'deposit', 'deposit referral Rp. 100000', 100000),
(63, 21, 'deposit', 'deposit referral Rp. 100000', 100000),
(64, 22, 'deposit', 'deposit referral Rp. 100000', 100000),
(65, 36, 'deposit', 'deposit referral Rp. 150000', 150000),
(66, 38, 'created', 'Pembuatan wallet', 0),
(67, 1, 'deposit', 'deposit referral Rp. 100000', 100000),
(68, 39, 'created', 'Pembuatan wallet', 0),
(69, 1, 'deposit', 'deposit referral Rp. 150000', 150000),
(70, 19, 'deposit', 'deposit referral Rp. 100000', 100000),
(71, 20, 'deposit', 'deposit referral Rp. 100000', 100000),
(72, 21, 'deposit', 'deposit referral Rp. 100000', 100000),
(73, 22, 'deposit', 'deposit referral Rp. 100000', 100000),
(74, 36, 'deposit', 'deposit referral Rp. 100000', 100000),
(75, 37, 'deposit', 'deposit referral Rp. 150000', 150000),
(76, 40, 'created', 'Pembuatan wallet', 0),
(77, 19, 'deposit', 'deposit referral Rp. 100000', 100000),
(78, 20, 'deposit', 'deposit referral Rp. 100000', 100000),
(79, 21, 'deposit', 'deposit referral Rp. 100000', 100000),
(80, 22, 'deposit', 'deposit referral Rp. 100000', 100000),
(81, 36, 'deposit', 'deposit referral Rp. 100000', 100000),
(82, 37, 'deposit', 'deposit referral Rp. 100000', 100000),
(83, 38, 'deposit', 'deposit referral Rp. 150000', 150000),
(84, 41, 'created', 'Pembuatan wallet', 0),
(85, 20, 'deposit', 'deposit referral Rp. 100000', 100000),
(86, 21, 'deposit', 'deposit referral Rp. 100000', 100000),
(87, 22, 'deposit', 'deposit referral Rp. 100000', 100000),
(88, 36, 'deposit', 'deposit referral Rp. 100000', 100000),
(89, 37, 'deposit', 'deposit referral Rp. 100000', 100000),
(90, 40, 'deposit', 'deposit referral Rp. 150000', 150000),
(91, 38, 'deposit', 'deposit referral Rp. 100000', 100000),
(92, 42, 'created', 'Pembuatan wallet', 0),
(93, 21, 'deposit', 'deposit referral Rp. 100000', 100000),
(94, 22, 'deposit', 'deposit referral Rp. 100000', 100000),
(95, 36, 'deposit', 'deposit referral Rp. 100000', 100000),
(96, 37, 'deposit', 'deposit referral Rp. 100000', 100000),
(97, 38, 'deposit', 'deposit referral Rp. 100000', 100000),
(98, 40, 'deposit', 'deposit referral Rp. 100000', 100000),
(99, 41, 'deposit', 'deposit referral Rp. 150000', 150000),
(100, 43, 'created', 'Pembuatan wallet', 0),
(101, 22, 'deposit', 'deposit referral Rp. 100000', 100000),
(102, 36, 'deposit', 'deposit referral Rp. 100000', 100000),
(103, 37, 'deposit', 'deposit referral Rp. 100000', 100000),
(104, 38, 'deposit', 'deposit referral Rp. 100000', 100000),
(105, 40, 'deposit', 'deposit referral Rp. 100000', 100000),
(106, 41, 'deposit', 'deposit referral Rp. 100000', 100000),
(107, 42, 'deposit', 'deposit referral Rp. 150000', 150000),
(108, 44, 'created', 'Pembuatan wallet', 0);

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
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `captcha`
--
ALTER TABLE `captcha`
MODIFY `captcha_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=301;
--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `transfer_referral`
--
ALTER TABLE `transfer_referral`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=170;
--
-- AUTO_INCREMENT for table `transfer_referral_bukti`
--
ALTER TABLE `transfer_referral_bukti`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=95;
--
-- AUTO_INCREMENT for table `transfer_referral_cancel`
--
ALTER TABLE `transfer_referral_cancel`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `transfer_referral_conf`
--
ALTER TABLE `transfer_referral_conf`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
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
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2041;
--
-- AUTO_INCREMENT for table `wallet`
--
ALTER TABLE `wallet`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `wallet_logs`
--
ALTER TABLE `wallet_logs`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=109;
DELIMITER $$
--
-- Events
--
CREATE DEFINER=`angga`@`localhost` EVENT `banned_24` ON SCHEDULE AT '2015-07-07 05:56:52' ON COMPLETION NOT PRESERVE DISABLE DO UPDATE members SET status = -1 WHERE id = 24$$

CREATE DEFINER=`angga`@`localhost` EVENT `banned_25` ON SCHEDULE AT '2015-07-07 06:04:18' ON COMPLETION NOT PRESERVE DISABLE DO UPDATE members SET status = -1 WHERE id = 25$$

CREATE DEFINER=`angga`@`localhost` EVENT `banned_31` ON SCHEDULE AT '2015-07-07 13:08:34' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE members SET status = -1 WHERE id = 31$$

CREATE DEFINER=`angga`@`localhost` EVENT `banned_27` ON SCHEDULE AT '2015-07-07 11:38:45' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE members SET status = -1 WHERE id = 27$$

CREATE DEFINER=`angga`@`localhost` EVENT `banned_22` ON SCHEDULE AT '2015-07-07 05:25:22' ON COMPLETION NOT PRESERVE DISABLE DO UPDATE members SET status = -1 WHERE id = 22$$

CREATE DEFINER=`angga`@`localhost` EVENT `banned_23` ON SCHEDULE AT '2015-07-07 05:36:39' ON COMPLETION NOT PRESERVE DISABLE DO UPDATE members SET status = -1 WHERE id = 23$$

CREATE DEFINER=`angga`@`localhost` EVENT `banned_32` ON SCHEDULE AT '2015-07-07 13:21:40' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE members SET status = -1 WHERE id = 32$$

CREATE DEFINER=`angga`@`localhost` EVENT `banned_29` ON SCHEDULE AT '2015-07-07 12:29:10' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE members SET status = -1 WHERE id = 29$$

CREATE DEFINER=`angga`@`localhost` EVENT `banned_34` ON SCHEDULE AT '2015-07-07 13:44:33' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE members SET status = -1 WHERE id = 34$$

CREATE DEFINER=`angga`@`localhost` EVENT `banned_35` ON SCHEDULE AT '2015-07-07 14:02:54' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE members SET status = -1 WHERE id = 35$$

CREATE DEFINER=`root`@`localhost` EVENT `banned_44` ON SCHEDULE AT '2015-07-09 02:19:22' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE members SET status = -1 WHERE id = 44$$

DELIMITER ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

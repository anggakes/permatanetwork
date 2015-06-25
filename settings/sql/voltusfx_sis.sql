-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 19 Jun 2015 pada 09.15
-- Versi Server: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bestopportunitysistem`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `members`
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
  `referral_code` varchar(10) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data untuk tabel `members`
--

INSERT INTO `members` (`id`, `code`, `email`, `username`, `password`, `updated_at`, `created_at`, `last_login`, `referral_code`, `status`) VALUES
(2, '8DE7B5', 'asdasd@asda.c', 'anggakes', '$2y$10$7I5nTY9GfZ9ugoDE.mVGteedCjGAv6XokCz54kyNrKFsuMVw1HgH.', '2015-06-18 05:48:24', '2015-06-15 12:45:54', '2015-06-18 00:48:24', 'FA655D', 0),
(3, 'FA655D', 'anggakesuma@gmail.com', 'anggaaks', '$2y$10$7I5nTY9GfZ9ugoDE.mVGteedCjGAv6XokCz54kyNrKFsuMVw1HgH.', '2015-06-18 15:30:12', '2015-06-15 22:37:16', '2015-06-18 10:30:12', '', 0),
(4, 'DBA925', 'kaslda@kasdksa.c', 'umami', '$2y$10$SbcWL9eV0M5WmvDt5teHBuL6CmkSUQi.rnm0Rfrv.M21ARtFOKC12', '2015-06-18 03:09:47', '2015-06-17 22:08:29', '2015-06-17 22:08:43', 'FA655D', 0),
(6, '5F4717', 'asdasd@asdas.com', 'unji', '$2y$10$jnnEIlwIbYIehIEPL702Ken01ycFYkkHfTjwmJwgh0MwKnv0E7aEi', '2015-06-18 03:31:54', '2015-06-17 22:31:40', '2015-06-17 22:31:54', '8DE7B5', 0),
(7, '89CCFA', 'aku@ma.com', 'aku', '$2y$10$x2BS0DUi0MlR2cgjLCibWOMjt2AWrTn3hJUT.U3BR8TquevDzZlIi', '2015-06-17 23:43:34', '2015-06-17 23:43:34', '0000-00-00 00:00:00', '8DE7B5', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `profile`
--

CREATE TABLE IF NOT EXISTS `profile` (
`id` int(10) unsigned NOT NULL,
  `kode_member` varchar(10) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tanggal_lahir` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `kota` varchar(255) NOT NULL,
  `provinsi` varchar(255) NOT NULL,
  `kode_pos` varchar(255) NOT NULL,
  `negara` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data untuk tabel `profile`
--

INSERT INTO `profile` (`id`, `kode_member`, `nama`, `tanggal_lahir`, `alamat`, `kota`, `provinsi`, `kode_pos`, `negara`, `no_hp`) VALUES
(2, '8DE7B5', 'angga kesuma', '2000-01-11', 'jlaskdjads', 'lkjlakjsd', 'klajsldkja', 'kllkjasd', 'lkjkljasd', '123123123'),
(3, 'FA655D', 'jj', 'jj', 'jj', 'jj', 'jj', 'jj', 'jj', 'jjj'),
(4, 'DBA925', 'umami', '2000-01-11', 'asdad', 'jhasjkhd', 'kkjasd', 'jahsdjkh', 'jhaskjdh', '87128318'),
(6, '5F4717', 'unji', '2000-01-11', 'asdas', 'asd', 'asd', 'as', 'asd', '0192301'),
(7, '89CCFA', 'akuma shinda', '2000-01-11', 'asasd', 'kl', 'kk', 'kl', 'lk', 'lk');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `members`
--
ALTER TABLE `members`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`,`email`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

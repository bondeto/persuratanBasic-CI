-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 06, 2015 at 06:32 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `surat`
--

-- --------------------------------------------------------

--
-- Table structure for table `distribusi`
--

CREATE TABLE IF NOT EXISTS `distribusi` (
  `id_surat` int(11) NOT NULL,
  `id_unit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `distribusi`
--

INSERT INTO `distribusi` (`id_surat`, `id_unit`) VALUES
(1, 1),
(1, 2),
(1, 5),
(1, 4),
(1, 3),
(2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `instansi`
--

CREATE TABLE IF NOT EXISTS `instansi` (
  `idInstansi` int(11) NOT NULL,
  `namaInstansi` varchar(250) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `instansi`
--

INSERT INTO `instansi` (`idInstansi`, `namaInstansi`) VALUES
(1, 'DIT.DAKIM'),
(2, 'TNI'),
(3, 'KANTOR IMIGRASI JAKARTA SELATAN'),
(4, 'SESDITJENIM');

-- --------------------------------------------------------

--
-- Table structure for table `sifatSurat`
--

CREATE TABLE IF NOT EXISTS `sifatSurat` (
  `idSifatSurat` int(11) NOT NULL,
  `sifatSurat` varchar(250) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sifatSurat`
--

INSERT INTO `sifatSurat` (`idSifatSurat`, `sifatSurat`) VALUES
(1, 'Segera'),
(2, 'Sangat Penting');

-- --------------------------------------------------------

--
-- Table structure for table `surat`
--

CREATE TABLE IF NOT EXISTS `surat` (
  `id` int(11) NOT NULL,
  `nomorSurat` varchar(250) NOT NULL,
  `perihal` varchar(250) NOT NULL,
  `tanggal` datetime NOT NULL,
  `idInstansi` int(11) NOT NULL,
  `idSifatSurat` int(11) NOT NULL,
  `typeSurat` enum('Surat Masuk','Surat Keluar') NOT NULL,
  `fileAttach` varchar(250) NOT NULL,
  `disposisi` varchar(250) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `surat`
--

INSERT INTO `surat` (`id`, `nomorSurat`, `perihal`, `tanggal`, `idInstansi`, `idSifatSurat`, `typeSurat`, `fileAttach`, `disposisi`) VALUES
(1, 'AS/123123/0908678/2015', 'permintaan Data', '2015-07-03 00:00:00', 1, 1, 'Surat Masuk', '54547-perka-bps-no.16-prakom.pdf', ''),
(2, 'IMI.0123/123123', 'NOTA DINAS 0998 APEL PAGI', '2015-07-01 00:00:00', 4, 2, 'Surat Masuk', 'a8eb1-lg.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE IF NOT EXISTS `unit` (
  `idUnit` int(11) NOT NULL,
  `namaGroup` varchar(250) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`idUnit`, `namaGroup`) VALUES
(1, 'SESDIT'),
(2, 'DITSISTIK'),
(3, 'Subdit Perencanaan dan Pengembangan SIMKIM'),
(4, 'Pelaporan'),
(5, 'DOKIMKAREL'),
(6, 'SEKSI Pengamanan SIMKIM');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `userId` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `idUnit` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userId`, `username`, `password`, `email`, `idUnit`) VALUES
(1, 'kasubditA', '123', 'asdf@asd.lkhj', 4),
(2, 'admin', '123', 'asdf@asd.lkhj', 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `instansi`
--
ALTER TABLE `instansi`
  ADD PRIMARY KEY (`idInstansi`);

--
-- Indexes for table `sifatSurat`
--
ALTER TABLE `sifatSurat`
  ADD PRIMARY KEY (`idSifatSurat`);

--
-- Indexes for table `surat`
--
ALTER TABLE `surat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`idUnit`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `instansi`
--
ALTER TABLE `instansi`
  MODIFY `idInstansi` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sifatSurat`
--
ALTER TABLE `sifatSurat`
  MODIFY `idSifatSurat` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `surat`
--
ALTER TABLE `surat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `unit`
--
ALTER TABLE `unit`
  MODIFY `idUnit` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

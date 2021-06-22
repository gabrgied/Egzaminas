-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2021 m. Bir 22 d. 13:18
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studijos`
--

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `autoriai`
--

CREATE TABLE `autoriai` (
  `autoriaus_ID` int(11) NOT NULL,
  `vardas` varchar(20) COLLATE utf16_lithuanian_ci NOT NULL,
  `pavarde` varchar(30) COLLATE utf16_lithuanian_ci NOT NULL,
  `amzius` int(11) DEFAULT NULL,
  `issilavinimas` varchar(60) COLLATE utf16_lithuanian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_lithuanian_ci;

--
-- Sukurta duomenų kopija lentelei `autoriai`
--

INSERT INTO `autoriai` (`autoriaus_ID`, `vardas`, `pavarde`, `amzius`, `issilavinimas`) VALUES
(1, 'Linas', 'Lukas', 26, 'Programuotojas'),
(2, 'Laima', 'Oop', 25, 'Programuotoja'),
(3, 'Rokas', 'Cysius', 30, 'Programuotoja'),
(4, 'Kotryna', 'Kotrynaite', 31, 'Programuotoja'),
(5, 'Elena', 'Kotrynaite', 31, 'Programuotoja');

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `komentarai`
--

CREATE TABLE `komentarai` (
  `komentaro_ID` int(11) NOT NULL,
  `komentaras` varchar(3000) COLLATE utf16_lithuanian_ci NOT NULL,
  `kursas` int(11) DEFAULT NULL,
  `komentatoriaus_email` varchar(100) COLLATE utf16_lithuanian_ci DEFAULT NULL,
  `data` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_lithuanian_ci;

--
-- Sukurta duomenų kopija lentelei `komentarai`
--

INSERT INTO `komentarai` (`komentaro_ID`, `komentaras`, `kursas`, `komentatoriaus_email`, `data`) VALUES
(1, 'Nuostabi programa', 1, 'ssss@gmail.com', '0000-00-00 00:00:00'),
(2, 'Nuostabi programa', 2, 'ssss@gmail.com', '0000-00-00 00:00:00'),
(3, 'Nuostabi programa', 3, 'ssss@gmail.com', '0000-00-00 00:00:00'),
(4, 'Nuostabi programa', 4, 'ssss@gmail.com', '0000-00-00 00:00:00'),
(5, 'Nuostabi programa', 5, 'ssss@gmail.com', '0000-00-00 00:00:00'),
(6, 'Idomu', 1, 'anonymous', '0000-00-00 00:00:00'),
(7, 'Super idomu', 1, 'anonymous', '0000-00-00 00:00:00'),
(8, 'Idomu', 3, 'anonymous', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `kursai`
--

CREATE TABLE `kursai` (
  `kurso_ID` int(11) NOT NULL,
  `pavadinimas` varchar(100) COLLATE utf16_lithuanian_ci NOT NULL,
  `autorius` int(11) NOT NULL,
  `trumpas_aprasymas` varchar(200) COLLATE utf16_lithuanian_ci DEFAULT NULL,
  `detalus_aprasymas` varchar(3000) COLLATE utf16_lithuanian_ci DEFAULT NULL,
  `nuotrauka` varchar(300) COLLATE utf16_lithuanian_ci DEFAULT NULL,
  `ikelimo_data` timestamp NOT NULL DEFAULT current_timestamp(),
  `kaina` int(11) DEFAULT NULL,
  `reitingas` int(11) DEFAULT NULL,
  `populiarumas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_lithuanian_ci;

--
-- Sukurta duomenų kopija lentelei `kursai`
--

INSERT INTO `kursai` (`kurso_ID`, `pavadinimas`, `autorius`, `trumpas_aprasymas`, `detalus_aprasymas`, `nuotrauka`, `ikelimo_data`, `kaina`, `reitingas`, `populiarumas`) VALUES
(1, 'PHP', 1, 'Trumpas aprasymas', 'Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas', 'image/php.jpg', '0000-00-00 00:00:00', 555, 5, 100),
(2, 'JavaScript', 2, 'Trumpas aprasymas', 'Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas', 'image/js.jpg', '0000-00-00 00:00:00', 800, 5, 200),
(3, 'HTML/CSS', 3, 'Trumpas aprasymas', 'Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas', 'image/css.jpg', '0000-00-00 00:00:00', 589, 4, 80),
(4, 'SQL', 3, 'Trumpas aprasymas', 'Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas', '', '0000-00-00 00:00:00', 608, 4, 90),
(5, 'GIT', 2, 'Trumpas aprasymas', 'Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas Ilgas aprasymas', 'image/php.jpg', '0000-00-00 00:00:00', 305, 4, 50);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `autoriai`
--
ALTER TABLE `autoriai`
  ADD PRIMARY KEY (`autoriaus_ID`);

--
-- Indexes for table `komentarai`
--
ALTER TABLE `komentarai`
  ADD PRIMARY KEY (`komentaro_ID`),
  ADD KEY `kursas` (`kursas`);

--
-- Indexes for table `kursai`
--
ALTER TABLE `kursai`
  ADD PRIMARY KEY (`kurso_ID`),
  ADD KEY `autorius` (`autorius`);

--
-- Apribojimai eksportuotom lentelėm
--

--
-- Apribojimai lentelei `komentarai`
--
ALTER TABLE `komentarai`
  ADD CONSTRAINT `komentarai_ibfk_1` FOREIGN KEY (`kursas`) REFERENCES `kursai` (`kurso_ID`);

--
-- Apribojimai lentelei `kursai`
--
ALTER TABLE `kursai`
  ADD CONSTRAINT `kursai_ibfk_1` FOREIGN KEY (`autorius`) REFERENCES `autoriai` (`autoriaus_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

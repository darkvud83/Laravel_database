-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2015 at 05:56 PM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `art_gallery`
--

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE IF NOT EXISTS `artists` (
`id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `about` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img_person` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`, `about`, `address`, `contact`, `email`, `img_person`) VALUES
(1, 'Марија Шуњеварић', 'Aliquam vehicula justo lacus, aliquam sagittis metus placerat non. Vestibulum pellentesque orci nibh, in aliquam ex molestie et. Vivamus mattis risus sed erat commodo, at volutpat orci convallis. Etiam eros libero, consequat vitae massa pharetra, luctus ', 'Užička republika br. 23', '069770041', 'zziikkaa83@gmail.com', '../../laravel_project/img/5.jpg'),
(2, 'Aleksandar Radovic', 'Rodjen u Priboju 1983.god. ', 'Pribojska Banja bb', '069770412', 'aleksandar.rc83@gmail.com', '../../laravel_project/img/4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE IF NOT EXISTS `galleries` (
`id` int(10) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pricing` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `artist_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `title`, `pricing`, `url`, `artist_id`) VALUES
(1, 'Slika 1', '30 eura', '../../laravel_project/img/img_priroda.jpg', 1),
(2, 'Slika 2', '40 eura', '../../laravel_project/img/img_selo.jpg', 1),
(3, 'Slika 3', '50 eura', '../../laravel_project/img/img_ikona.jpg', 1),
(4, 'Slika 4', '60 eura', '../../laravel_project/img/99.jpg', 1),
(5, 'Slika 5', '70 eura', '../../laravel_project/img/100.jpg', 1),
(6, 'Slika 6', '80 eura', '../../laravel_project/img/101.jpg', 1),
(7, 'Slika 7', '90 eura', '../../laravel_project/img/London.jpg', 2),
(8, 'Slika 8', '100 eura', '../../laravel_project/img/102.jpg', 1),
(9, 'Slika 9', '110 eura', '../../laravel_project/img/103.jpg', 1),
(12, 'Slika 11', '130 eura', '../../laravel_project/img/104.jpg', 1),
(13, 'Slika 12', '140 eura', '../../laravel_project/img/105.jpg', 1),
(14, 'Slika 13', '150 eura', '../../laravel_project/img/106.jpg', 1),
(15, 'Slika 14', '160 eura', '../../laravel_project/img/107.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE IF NOT EXISTS `language` (
`id` int(10) NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `locale`, `name`) VALUES
(1, 'en', 'english'),
(2, 'sr', 'serbia');

-- --------------------------------------------------------

--
-- Table structure for table `language_entries`
--

CREATE TABLE IF NOT EXISTS `language_entries` (
`id` int(10) NOT NULL,
  `language_id` int(10) NOT NULL,
  `item` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `language_entries`
--

INSERT INTO `language_entries` (`id`, `language_id`, `item`, `text`) VALUES
(1, 1, 'name', 'Marija Sunjevaric'),
(2, 1, 'about', 'Born in Uzice in 1995. She finished art school in Uzice. Studies at the College Serbian Orthodox Church for arts and conversation, she enrolled in 2014. Department frescoes.'),
(3, 2, 'name', 'Марија Шуњеварић'),
(4, 2, 'about', 'Рођена у Ужицу 1995.Завршила Уметничку школу у Ужицу. Уписала је студије на Високој школи српске православне цркве 2014. године за уметност и конверзацију. Одсек фрескопис.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
 ADD PRIMARY KEY (`id`), ADD KEY `id_artist` (`artist_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language_entries`
--
ALTER TABLE `language_entries`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `language_entries`
--
ALTER TABLE `language_entries`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `galleries`
--
ALTER TABLE `galleries`
ADD CONSTRAINT `galleries_ibfk_1` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

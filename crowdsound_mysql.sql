-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 29, 2012 at 11:33 PM
-- Server version: 5.5.20
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `crowdsound`
--

-- --------------------------------------------------------

--
-- Table structure for table `local_data`
--

CREATE TABLE IF NOT EXISTS `local_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `artist_name` varchar(255) NOT NULL,
  `track_name` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL DEFAULT 'CO',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=110 ;

--
-- Dumping data for table `local_data`
--

INSERT INTO `local_data` (`id`, `artist_name`, `track_name`, `source`, `location`) VALUES
(34, 'Hot Chip', 'Look At Where We Are ', 'Hype Machine', 'CO'),
(35, 'Kill Paris', 'Kill Paris - Baby Come Back ', 'Hype Machine', 'CO'),
(36, 'Tiesto & Sneaky Sound System', 'I Will Be Here ', 'Hype Machine', 'CO'),
(37, 'Arcade Fire', 'We Used to Wait ', 'Hype Machine', 'CO'),
(38, 'TRAILS AND WAYS', 'Border Crosser ', 'Hype Machine', 'CO'),
(39, 'thebloodybeetroots', 'Chronicles Of A Fallen Love" Feat Greta Svabo Bech ', 'Hype Machine', 'CO'),
(40, 'm. takara - Mastigando', 'balad2 ', 'Hype Machine', 'CO'),
(41, 'Carousel', 'Let''s Go Home ', 'Hype Machine', 'CO'),
(42, 'Chris Malinchak', 'So Good To Me ', 'Hype Machine', 'CO'),
(43, 'Mimosa', 'Kinetic ', 'Hype Machine', 'CO'),
(44, 'Volar Records', 'SHANNON AND THE CLAMS--White Rabbit (Jefferson Airplane) ', 'Hype Machine', 'CO'),
(45, 'MÃ˜', 'Maiden ', 'Hype Machine', 'CO'),
(46, 'Future', 'Hard ', 'Hype Machine', 'CO'),
(47, 'Kendrick Lamar', 'Money Trees (Feat. Jay Rock) ', 'Hype Machine', 'CO'),
(48, 'P.O.S', 'Bumper ', 'Hype Machine', 'CO'),
(49, 'Joker & Ginz', 'Purple City ', 'Hype Machine', 'CO'),
(50, 'James Blake', 'Limit To Your Love ', 'Hype Machine', 'CO'),
(51, 'Raveonettes', 'Curse the night ', 'Hype Machine', 'CO'),
(52, 'T.SHIRT', 'PURITY RING x T.SHIRT (MIXTAPE) ', 'Hype Machine', 'CO'),
(53, 'Monsta', 'Where Did I Go ', 'Hype Machine', 'CO'),
(54, 'Nero', 'Won''t You (Be There) ', 'Hype Machine', 'CO'),
(55, 'Kendrick Lamar', 'Swimming Pools ', 'Hype Machine', 'CO'),
(56, 'Steffaloo', 'Can''t You See ', 'Hype Machine', 'CO'),
(57, 'Carousel', 'Let''s Go Home ', 'Hype Machine', 'CO'),
(58, 'xxyyxx', 'LAY DOWN ', 'Hype Machine', 'CO'),
(59, 'Chromeo', 'Momma''s Boy ', 'Hype Machine', 'CO'),
(60, 'Justice', 'DVNO ', 'Hype Machine', 'CO'),
(61, 'Jay-Z Feat. Adele', 'THRT (The End) ', 'Hype Machine', 'CO'),
(62, 'TRAILS AND WAYS', 'Border Crosser ', 'Hype Machine', 'CO'),
(63, 'Hot Chip', 'Look At Where We Are ', 'Hype Machine', 'CO'),
(64, 'Kill Paris', 'Kill Paris - Baby Come Back ', 'Hype Machine', 'CO'),
(65, 'thebloodybeetroots', 'Chronicles Of A Fallen Love" Feat Greta Svabo Bech ', 'Hype Machine', 'CO'),
(66, 'The Hood Internet', 'Won''t Fuck Us Over (feat. BBU &amp; Annie Hart) ', 'Hype Machine', 'CO'),
(67, 'm. takara - Mastigando', 'balad2 ', 'Hype Machine', 'CO'),
(68, 'Tiesto &amp; Sneaky Sound System', 'I Will Be Here ', 'Hype Machine', 'CO'),
(69, 'Kendrick Lamar', 'Swimming Pools (Drank) [Extended Version]', 'Twitter', 'CO'),
(70, 'Mantra', 'Mindscape', 'Twitter', 'CO'),
(71, 'Chris Brown', 'Don''t Judge Me', 'Twitter', 'CO'),
(72, 'Cygnus X', 'The Orange Theme', 'Twitter', 'CO'),
(73, 'Justin Timberlake', 'What goes around comes around', 'Twitter', 'CO'),
(74, 'MUSE', 'Madness', 'Twitter', 'CO'),
(75, 'Kendrick Lamar', 'Poetic Justice', 'Twitter', 'CO'),
(76, 'Nicki Minaj', 'Here I am', 'Twitter', 'CO'),
(77, 'Justice', 'DVNO ', 'Hype Machine', 'CO'),
(78, 'Carousel', 'Let''s Go Home ', 'Hype Machine', 'CO'),
(79, 'Steffaloo', 'Can''t You See ', 'Hype Machine', 'CO'),
(80, 'Monsta', 'Where Did I Go ', 'Hype Machine', 'CO'),
(81, 'Chromeo', 'Momma''s Boy ', 'Hype Machine', 'CO'),
(82, 'xxyyxx', 'LAY DOWN ', 'Hype Machine', 'CO'),
(83, 'Silent Rider', 'DLZ (TV On The Radio Cover) ', 'Hype Machine', 'CO'),
(84, 'TV on the Radio', 'DLZ ', 'Hype Machine', 'CO'),
(85, 'Nero', 'Won''t You (Be There) ', 'Hype Machine', 'CO'),
(86, 'Kendrick Lamar', 'Swimming Pools ', 'Hype Machine', 'CO'),
(87, 'Hot Chip', 'Look At Where We Are ', 'Hype Machine', 'CO'),
(88, 'thebloodybeetroots', 'Chronicles Of A Fallen Love" Feat Greta Svabo Bech ', 'Hype Machine', 'CO'),
(89, 'm. takara - Mastigando', 'balad2 ', 'Hype Machine', 'CO'),
(90, 'The Hood Internet', 'Won''t Fuck Us Over (feat. BBU &amp; Annie Hart) ', 'Hype Machine', 'CO'),
(91, 'Jay-Z Feat. Adele', 'THRT (The End) ', 'Hype Machine', 'CO'),
(92, 'TRAILS AND WAYS', 'Border Crosser ', 'Hype Machine', 'CO'),
(93, 'Kendrick Lamar', 'Money Trees (Feat. Jay Rock) ', 'Hype Machine', 'CO'),
(94, 'Flume', 'Holdin On ', 'Hype Machine', 'CO'),
(95, 'Silent Rider', 'DLZ (TV On The Radio Cover) ', 'Hype Machine', 'CO'),
(96, 'Steffaloo', 'Can''t You See ', 'Hype Machine', 'CO'),
(97, 'Boondock Saints', 'soundtrack, soundtrack, The Blood of Cuchulainn ', 'Hype Machine', 'CO'),
(98, 'Monsta', 'Where Did I Go ', 'Hype Machine', 'CO'),
(99, 'Receptor', 'Kislorod ', 'Hype Machine', 'CO'),
(100, 'TRAILS AND WAYS', 'Border Crosser ', 'Hype Machine', 'CO'),
(101, 'Home Brew', 'Alcoholic ', 'Hype Machine', 'CO'),
(102, 'TV on the Radio', 'DLZ ', 'Hype Machine', 'CO'),
(103, 'xxyyxx', 'LAY DOWN ', 'Hype Machine', 'CO'),
(104, 'Nero', 'Won''t You (Be There) ', 'Hype Machine', 'CO'),
(105, 'Kendrick Lamar', 'Swimming Pools ', 'Hype Machine', 'CO'),
(106, 'Chromeo', 'Momma''s Boy ', 'Hype Machine', 'CO'),
(107, 'Justice', 'DVNO ', 'Hype Machine', 'CO'),
(108, 'Carousel', 'Let''s Go Home ', 'Hype Machine', 'CO'),
(109, 'Jay-Z Feat. Adele', 'THRT (The End) ', 'Hype Machine', 'CO');

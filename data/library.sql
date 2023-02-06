-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Jan 26, 2023 at 07:40 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `genre` enum('comic','drama','history','crime') COLLATE utf8mb4_unicode_ci NOT NULL,
  `publisher` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ISBN` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `currency` enum('CHF',' USD') COLLATE utf8mb4_unicode_ci NOT NULL,
  `soldout` tinyint(1) NOT NULL,
  `used` tinyint(1) NOT NULL,
  `modification_date` date DEFAULT NULL,
  `modification_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `description`, `genre`, `publisher`, `ISBN`, `price`, `currency`, `soldout`, `used`, `modification_date`, `modification_time`) VALUES
(1, 'The New Opportunity', 'Alfred Hitchcock', 'This Book is about a Intressting Crime story from the Oppertunity challenge in Zuerich', 'crime', 'Dimension Zuerich Crimebooks', '12345678910', '25.00', ' USD', 0, 0, '2022-11-09', '15:11:35'),
(2, 'The Moving Summer', 'Jappel Dules', 'This is a Comedy from the World Famous Comedy star Jappel Dules.', 'comic', 'Doomsday Books', '1212151512', '46.50', 'CHF', 1, 0, '2022-09-14', '13:15:55'),
(3, 'Bunny Bucks', 'Snalt Witney', 'This is a unforgetable Comic, that shows the young life of Bunny Bucks. A classic written by Snalt Witney', 'comic', 'Cartoon Bookwork', '5464561594', '23.00', 'CHF', 0, 0, '2022-11-14', '17:18:08'),
(4, 'The New Galaxy', 'Drama Queen', 'This is a beautiful book about a Drama Queen. In a daily struggle to maintain the drama.', 'drama', 'Drama Books', '12141563', '11.90', 'CHF', 0, 1, '2022-09-11', '18:12:25'),
(5, 'The 4.World War', 'Mechan Cyborgio', 'This is true facts of the 4 World War in the 1500 century. Documented from old papers.  Rewritten with original quotes.', 'history', 'War Books', '1215545422', '17.50', 'CHF', 0, 1, '2022-06-13', '14:11:13'),
(6, 'The Bolean Way of Life', 'Brian Guidor', 'This is a Book tha takes apart the bolean way of life. Its a good literature for Beginner of a new Way', 'drama', 'Drama Books', '143424611', '22.30', 'CHF', 1, 0, '2022-08-04', '18:10:56'),
(7, 'When time are Tuff', 'Barley Mob', 'This is an Dram from an Island with few option in life. It talks about the hard dram that Barley Mob had to go thru.', 'drama', 'Drama Books', '114545114', '18.90', ' USD', 1, 0, '2022-09-07', '07:19:26'),
(8, 'The Last Hero of Action', 'Barzenere Arnold', 'This is a High class Action Story. Arnold take you thru his adventure in a mechanic Shop', 'history', 'True Historian Books', '40210445', '14.35', 'CHF', 1, 1, '2023-01-07', '11:10:16'),
(9, 'The True Syndicate', 'Don Tomoroleon', 'This is a Book from a Crime Boss. That took action in his own Hands of Rattersville.Encoutering nummerous Violence and gore.', 'crime', 'Raffia Books', '121516335', '18.65', ' USD', 0, 0, '2020-01-02', '06:06:51'),
(10, 'The New Violence', 'Violencar Bacteria', 'This is Bacterias Secret Murder of Virusville. As he encounter the biggest threats of society and life to tell the story. base on a true story', 'crime', 'Virusville Books', '121333500', '23.45', 'CHF', 0, 1, '2023-01-17', '19:06:31'),
(11, 'There We Go', 'Mark Sway', 'This is a book about the new ways to handle problems', 'crime', 'Crime Books INC', '121383223', '33.40', 'CHF', 1, 1, '2021-01-12', '22:10:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

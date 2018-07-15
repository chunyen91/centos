-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 15, 2018 at 01:58 PM
-- Server version: 5.6.39-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xhomete1_smm`
--

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) NOT NULL,
  `sid` int(10) NOT NULL,
  `category` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `type` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `service` text COLLATE utf8_swedish_ci NOT NULL,
  `note` text COLLATE utf8_swedish_ci NOT NULL,
  `min` int(10) NOT NULL,
  `max` int(10) NOT NULL,
  `price` double NOT NULL,
  `status` enum('Active','Not active') COLLATE utf8_swedish_ci NOT NULL,
  `pid` int(10) NOT NULL,
  `provider` text COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `sid`, `category`, `type`, `service`, `note`, `min`, `max`, `price`, `status`, `pid`, `provider`) VALUES
(1, 1, '1', 'Instagram', 'Instagram Likes Server 1', 'Username Only!', 100, 10000, 1000, 'Active', 9, 'IRVAN'),
(2, 1, 'Instagram Followers Indonesia', '', 'Instagram Followers Indonesia IRV Aktip [BONUS++] [INSTAN]', '', 100, 2000, 40100, 'Active', 1, 'IRV'),
(3, 2, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers IRV  1', '', 100, 5000, 7599, 'Active', 2, 'IRV'),
(4, 3, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers IRV 2', '', 300, 15000, 8600, 'Active', 3, 'IRV'),
(5, 4, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers IRV 3 [REAL]', '', 200, 10000, 10100, 'Active', 4, 'IRV'),
(6, 5, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers IRV 4', '', 200, 5000, 10700, 'Active', 5, 'IRV'),
(7, 8, ' Instagram Followers [Refill] [Guaranteed] [NonDro', '', 'Instagram Followers IRV 7 HQ (30Days Refill)', '', 100, 5000, 18500, 'Active', 8, 'IRV'),
(8, 9, 'Instagram Likes', '', 'Instagram Likes IRV 1', '', 100, 5000, 1350, 'Active', 9, 'IRV'),
(9, 10, 'Instagram Likes', '', 'Instagram Likes IRV 2 [5K] [INSTANT]', '', 100, 5000, 1900, 'Active', 10, 'IRV'),
(10, 11, 'Instagram Likes', '', 'Instagram Likes IRV 3 âš¡ï¸ SUPER INSTANT', '', 100, 9000, 2100, 'Active', 11, 'IRV'),
(11, 12, 'Instagram Views', '', 'Instagram Views IRV 1 [999K] [REAL - INSTANT]', '', 100, 999000, 799, 'Active', 12, 'IRV'),
(12, 17, ' Instagram Auto Comments / Impressions / Saves', '', 'Instagram Auto View', '', 20, 1000000, 2100, 'Active', 17, 'IRV'),
(13, 27, ' Youtube Likes / Comments / Favs...', '', ' Youtube Shares', '', 500, 150000, 35100, 'Active', 27, 'IRV'),
(14, 31, ' Instagram Followers [Refill] [Guaranteed] [NonDro', '', 'Instagram Followers IRV 8 HQ  (30Days Refill)', '', 100, 7000, 20600, 'Active', 31, 'IRV'),
(15, 38, 'SoundCloud', '', 'SoundCloud Followers R1', '', 20, 1000000, 34100, 'Active', 38, 'IRV'),
(16, 39, 'SoundCloud', '', 'SoundCloud Likes R1', '', 20, 1000000, 27100, 'Active', 39, 'IRV'),
(17, 40, 'SoundCloud', '', ' SoundCloud Plays', '', 20, 10000000, 1600, 'Active', 40, 'IRV'),
(18, 42, 'Pinterest', '', 'Pinterest Followers', '', 20, 1000000000, 42100, 'Active', 42, 'IRV'),
(19, 43, 'Pinterest', '', 'Pinterest Pin Likes', '', 200, 1000000, 42100, 'Active', 43, 'IRV'),
(20, 44, 'Pinterest', '', 'Pinterest RePins', '', 20, 1000000, 42100, 'Active', 44, 'IRV'),
(21, 48, ' Instagram Followers [Refill] [Guaranteed] [NonDro', '', 'Instagram Followers IRV 10 [NON DROP] - [60 DAYS REFILL]', '', 50, 20000, 34600, 'Active', 48, 'IRV'),
(22, 49, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers IRV 11 HOT [INSTANT] (NO REFILL NO REFUND)', '', 100, 6000, 7100, 'Active', 49, 'IRV'),
(23, 54, 'Instagram Likes', '', 'Instagram Likes IRV 4 [.50K] [REAL - INSTANT]', '', 20, 50000, 3100, 'Active', 54, 'IRV'),
(24, 63, 'Instagram Likes', '', 'Instagram Likes IRVANKEDE 1 [ New & Best Server ]', '', 100, 15000, 1900, 'Active', 63, 'IRV'),
(25, 64, 'Instagram Likes', '', 'Instagram Likes IRVANKEDE 2 [ New & Fast Server ]', '', 20, 60000, 2100, 'Active', 64, 'IRV'),
(26, 95, ' Youtube Likes / Comments / Favs...', '', 'Youtube Shares [ New & Best Server ]', '', 1000, 150000, 36100, 'Active', 95, 'IRV'),
(27, 107, ' Telegram', '', ' Telegram Channel Members', '', 100, 25000, 105100, 'Active', 107, 'IRV'),
(28, 108, ' Telegram', '', 'Telegram Post Views', '', 100, 5000, 105100, 'Active', 108, 'IRV'),
(29, 116, 'Google', '', 'Google Followers', '', 100, 7000, 112100, 'Active', 116, 'IRV'),
(30, 117, 'Google', '', 'Google Website +1', '', 50, 5000, 260100, 'Active', 117, 'IRV'),
(31, 118, 'Google', '', 'Google Post +1', '', 20, 2000, 125100, 'Active', 118, 'IRV'),
(32, 119, 'Google', '', 'Google Reshares', '', 20, 2000, 135100, 'Active', 119, 'IRV'),
(33, 120, ' Instagram Auto Likes', '', '80 Auto Likes + Views - 7 Days', '', 1, 1, 35000100, 'Active', 120, 'IRV'),
(34, 121, ' Instagram Auto Likes', '', ' 	150 Auto Likes + Views - 7 Days', '', 1, 1, 70000100, 'Active', 121, 'IRV'),
(35, 122, ' Instagram Auto Likes', '', '300 Auto Likes + Views - 7 Days', '', 1, 1, 105000100, 'Active', 122, 'IRV'),
(36, 123, ' Instagram Auto Likes', '', '600 Auto Likes + Views - 7 Days', '', 1, 1, 175000100, 'Active', 123, 'IRV'),
(37, 124, ' Instagram Auto Likes', '', ' 	1500 Auto Likes + Views - 7 Days', '', 1, 1, 314000100, 'Active', 124, 'IRV'),
(38, 125, ' Instagram Auto Likes', '', ' 	80 Auto Likes + Views - 30 Days', '', 1, 1, 140000100, 'Active', 125, 'IRV'),
(39, 126, ' Instagram Auto Likes', '', '150 Auto Likes + Views - 30 Days', '', 1, 1, 228000100, 'Active', 126, 'IRV'),
(40, 128, 'Instagram Views', '', 'Instagram Views  [300k Per Day]', '', 100, 999000, 2000, 'Active', 128, 'IRV'),
(41, 163, ' Instagram Auto Likes', '', '300 Auto Likes + Views - 30 Days', '', 1, 1, 314000100, 'Active', 163, 'IRV'),
(42, 164, ' Instagram Auto Likes', '', '600 Auto Likes + Views - 30 Days', '', 1, 1, 490000100, 'Active', 164, 'IRV'),
(43, 165, ' Instagram Auto Likes', '', '1500 Auto Likes + Views - 30 Days', '', 1, 1, 820000100, 'Active', 165, 'IRV'),
(44, 169, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers [RUSSIAN - INSTANT]', '', 100, 35000, 22100, 'Active', 169, 'IRV'),
(45, 170, ' Instagram Followers [Refill] [Guaranteed] [NonDro', '', 'Instagram Followers ARAB - IRAN - INSTANT NON DROP', '', 50, 20000, 35100, 'Active', 170, 'IRV'),
(46, 171, ' Instagram Followers [Refill] [Guaranteed] [NonDro', '', 'Instagram BRAZIL Followers [30 Days REFILL]', '', 25, 40000, 45100, 'Active', 171, 'IRV'),
(47, 176, ' Instagram Story / Impressions / Saves', '', 'Instagram Story Views UNLIMITED (USERNAME ONLY) (S1)', '', 50, 10000000, 14100, 'Active', 176, 'IRV'),
(48, 177, ' Instagram Story / Impressions / Saves', '', 'Instagram Story Views [20k] (USERNAME ONLY) (S2)', '', 100, 20000, 20100, 'Active', 177, 'IRV'),
(49, 178, ' Instagram Story / Impressions / Saves', '', 'Instagram Impressions [20k] [INSTANT] (S1)', '', 500, 20000, 27100, 'Active', 178, 'IRV'),
(50, 179, ' Instagram Story / Impressions / Saves', '', 'Instagram Saves [UNLIMITED] [20k/Day - INSTANT]', '', 20, 30000, 16100, 'Active', 179, 'IRV'),
(51, 183, 'Instagram Likes', '', 'Instagram Likes [70K] [BRAZIL - INSTANT]', '', 20, 70000, 5100, 'Active', 183, 'IRV'),
(52, 186, 'Instagram Likes', '', 'Instagram Likes [35K] [RUSSIA - INSTANT - HQ]', '', 20, 35000, 5100, 'Active', 186, 'IRV'),
(53, 187, 'Instagram Likes', '', 'Instagram Likes [3k] [JAPAN - HQ - INSTANT]', '', 20, 3000, 5100, 'Active', 187, 'IRV'),
(54, 188, 'Instagram Likes', '', ' Instagram Likes [20K] [IRAN - INSTANT - HQ]', '', 20, 20000, 6600, 'Active', 188, 'IRV'),
(55, 197, ' Instagram Auto Comments / Impressions / Saves', '', 'Instagram Auto Likes (USA - MAX 30K)', '', 20, 30000, 6100, 'Active', 197, 'IRV'),
(56, 201, ' Instagram Auto Comments / Impressions / Saves', '', 'Instagram Auto Likes (CHINA - MAX 30K)', '', 10, 30000, 7100, 'Active', 201, 'IRV'),
(57, 202, ' Instagram Auto Comments / Impressions / Saves', '', 'Instagram Auto Likes + Impressions (30k Max)', '', 50, 30000, 6100, 'Active', 202, 'IRV'),
(58, 204, ' Instagram Auto Comments / Impressions / Saves', '', '	Instagram Auto Views (Fast Speed)', '', 100, 60000, 3100, 'Active', 204, 'IRV'),
(59, 207, ' Instagram Auto Comments / Impressions / Saves', '', '	Instagram Auto Impressions (MAX UNLIMITED)', '', 20, 1000000, 47100, 'Active', 207, 'IRV'),
(60, 236, ' Facebook Video Views / Live Stream', '', 'Facebook Live Stream Views [30 Mins Watch]', '', 100, 1000, 320100, 'Active', 236, 'IRV'),
(61, 266, 'Twitter Views / Impressions / Live / Comments', '', 'Twitter Views (INSTANT)', '', 100, 1000000, 24100, 'Active', 266, 'IRV'),
(62, 267, 'Twitter Views / Impressions / Live / Comments', '', 'Twitter Impressions (INSTANT)', '', 100, 1000000, 24100, 'Active', 267, 'IRV'),
(63, 268, 'Twitter Poll Votes', '', 'Twitter Poll Votes (1k to 5k per day) ', '', 100, 1000000000, 44100, 'Active', 268, 'IRV'),
(64, 269, 'Twitter Poll Votes', '', ' 	Twitter Poll Votes (100k per day) ', '', 100, 1000000, 109100, 'Active', 269, 'IRV'),
(65, 279, 'Instagram Likes', '', 'Instagram Likes + Impressions [30K] [REAL - INSTANT]', '', 100, 30000, 4500, 'Active', 279, 'IRV'),
(66, 280, ' Instagram Auto Likes - 7 Days Subscription', '', '80 Auto Likes + Views - 7 Days', '', 1, 1, 35000100, 'Active', 280, 'IRV'),
(67, 281, ' Instagram Auto Likes - 7 Days Subscription', '', '150 Auto Likes + Views - 7 Days', '', 1, 1, 69500100, 'Active', 281, 'IRV'),
(68, 282, ' Instagram Auto Likes - 7 Days Subscription', '', '300 Auto Likes + Views - 7 Days', '', 1, 1, 103000100, 'Active', 282, 'IRV'),
(69, 284, ' Instagram Auto Likes - 7 Days Subscription', '', '1500 Auto Likes + Views - 7 Days', '', 1, 1, 308000100, 'Active', 284, 'IRV'),
(70, 285, ' Instagram Auto Likes - 7 Days Subscription', '', '	80 Auto Likes + Views - 30 Days', '', 1, 1, 128000100, 'Active', 285, 'IRV'),
(71, 286, ' Instagram Auto Likes - 7 Days Subscription', '', '150 Auto Likes + Views - 30 Days', '', 1, 1, 223000100, 'Active', 286, 'IRV'),
(72, 287, ' Instagram Auto Likes - 7 Days Subscription', '', '300 Auto Likes + Views - 30 Days', '', 1, 1, 308000100, 'Active', 287, 'IRV'),
(73, 301, 'Instagram Followers No Refill/Not Guaranteed', '', 'MURAH HOT FAST INTAGRAM SERVER VIP 2  [10k]', '', 100, 10000, 7600, 'Active', 301, 'IRV'),
(74, 304, 'Instagram Likes', '', 'Instagram Likes VIP .', '', 50, 4000, 800, 'Active', 304, 'IRV'),
(75, 307, 'Instagram Likes', '', 'Instagram Likes VIP 2', '', 100, 7000, 900, 'Active', 307, 'IRV'),
(76, 321, 'Instagram Likes', '', 'Instagram Likes VIP 3 [7K] [REAL]', '', 50, 7000, 540, 'Active', 321, 'IRV'),
(77, 346, 'Instagram Views', '', 'NEW CHEAP Instagram Views [800K] [REAL]', '', 50, 800000, 550, 'Active', 346, 'IRV'),
(78, 349, ' Facebook Post Likes / Comments / Shares / Events', '', 'Facebook Post Likes [15K] âš¡', '', 100, 15000, 8650, 'Active', 349, 'IRV'),
(79, 350, ' Facebook Post Likes / Comments / Shares / Events', '', 'Facebook Post Likes [15K] S2', '', 100, 15000, 8650, 'Active', 350, 'IRV'),
(80, 352, 'Youtube Views', '', 'Youtube Views [10M] REFILL 30 DAYS S1  MIN 1K', '', 1000, 100000000, 13700, 'Active', 352, 'IRV'),
(81, 355, 'Instagram Views', '', 'Instagram Views [30K] [REAL] CHEAP', '', 10, 30000, 370, 'Active', 355, 'IRV'),
(82, 361, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers IKP2 MAX 5K - INSTANT 5 MIN START', '', 100, 5000, 10100, 'Active', 361, 'IRV'),
(83, 362, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers IKP MAX 7K - 1 MÄ°N START', '', 100, 7000, 13800, 'Active', 362, 'IRV'),
(84, 364, ' Musical.ly', '', 'Musical.ly Followers [20K]', '', 20, 20000, 190100, 'Active', 364, 'IRV'),
(85, 365, ' Musical.ly', '', 'Musical.ly HQ Followers [15K]', '', 20, 15000, 250100, 'Active', 365, 'IRV'),
(86, 366, ' Musical.ly', '', 'Musical.ly Hearts [15K] âš¡ï¸?', '', 20, 15000, 190100, 'Active', 366, 'IRV'),
(87, 367, ' Musical.ly', '', 'Musical.ly HQ Hearts [15K]', '', 20, 150000, 250100, 'Active', 367, 'IRV'),
(88, 368, ' Musical.ly', '', 'Musical.ly Likes [15K]', '', 20, 15000, 190100, 'Active', 368, 'IRV'),
(89, 369, ' Musical.ly', '', 'Musical.ly HQ Likes [15K]', '', 20, 15000, 250100, 'Active', 369, 'IRV'),
(90, 370, ' Twitter Followers', '', 'Twitter Followers [500K] [HQ] [R30]', '', 100, 500000, 35100, 'Active', 370, 'IRV'),
(91, 372, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers IKP 3 - [ Min 200 - Max 60K ]', '', 200, 60000, 10100, 'Active', 372, 'IRV'),
(92, 373, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers IKP 4 [Max 7K - 1 MÄ°N START Minimum Drop]', '', 100, 7000, 17200, 'Active', 373, 'IRV'),
(93, 374, 'Instagram Followers No Refill/Not Guaranteed', '', 'Ä°nstagram Followers IKP 5 - ( Max 25k - UltraFast ) ( Working Less Drop )', '', 100, 25000, 17200, 'Active', 374, 'IRV'),
(94, 375, 'Instagram Followers No Refill/Not Guaranteed', '', 'Ä°nstagram Followers IKP 6 [ 30 Days Refill ] [ 10k/day ] [ Max - 55k ] INSTANT', '', 100, 10000, 21800, 'Active', 375, 'IRV'),
(95, 376, 'Instagram Followers No Refill/Not Guaranteed', '', 'Ä°nstagram Followers IKP 7 (Fast) (15 Days Refill ) | (MIN 1000 - Max - 10k)', '', 1000, 10000, 22600, 'Active', 376, 'IRV'),
(96, 377, 'Instagram Followers No Refill/Not Guaranteed', '', 'Ä°nstagram Followers IKP 8 Real & Active (Fast) (Max - 25k) (30 days refill)', '', 100, 25000, 26100, 'Active', 377, 'IRV'),
(97, 378, 'Instagram Followers No Refill/Not Guaranteed', '', 'Ä°nstagram Followers IKP 9 MINIMAL ORDER 1000  NONDROP FAST', '', 1000, 10000, 22600, 'Active', 378, 'IRV'),
(98, 379, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers IKP 10 MAX 10K||5 MENIT START', '', 100, 10000, 8650, 'Active', 379, 'IRV'),
(99, 387, 'Instagram Followers Indonesia', '', 'Instagram Followers Indonesia IKP 1 FAST', '', 100, 5000, 45100, 'Active', 387, 'IRV'),
(100, 388, 'Instagram Followers Indonesia', '', 'Instagram Followers Indonesia Aktip Semarang', '', 100, 1000, 35100, 'Active', 388, 'IRV'),
(101, 389, 'Instagram Followers Indonesia', '', 'Instagram Followers Indonesia Aktip Magelang', '', 50, 1000, 35100, 'Active', 389, 'IRV'),
(102, 390, 'Instagram Followers Indonesia', '', 'Instagram Followers Indonesia Aktip Sukabumi', '', 50, 1000, 35100, 'Active', 390, 'IRV'),
(103, 391, 'Instagram Followers Indonesia', '', 'Instagram Followers Indonesia Aktip Bandung', '', 50, 2000, 40100, 'Active', 391, 'IRV'),
(104, 392, 'Instagram Followers Indonesia', '', 'Instagram Followers Indonesia Aktip Bekasi', '', 50, 1000, 37100, 'Active', 392, 'IRV'),
(105, 393, 'Instagram Followers Indonesia', '', 'Instagram Followers Indonesia Aktip Bali', '', 50, 1000, 43100, 'Active', 393, 'IRV'),
(106, 394, 'Instagram Followers Indonesia', '', 'Instagram Followers Indonesia Aktip Jakarta', '', 50, 2000, 41100, 'Active', 394, 'IRV'),
(107, 395, 'Instagram Followers Indonesia', '', 'Instagram Followers Indonesia Aktip Cirebon', '', 50, 1000, 37100, 'Active', 395, 'IRV'),
(108, 396, 'Instagram Followers Indonesia', '', 'Instagram Followers Indonesia Aktip Lampung', '', 50, 1000, 39100, 'Active', 396, 'IRV'),
(109, 397, 'Instagram Followers Indonesia', '', 'Instagram Followers Indonesia Aktip Palembang', '', 100, 1000, 40100, 'Active', 397, 'IRV'),
(110, 398, 'Instagram Followers Indonesia', '', 'Instagram Followers Indonesia Aktip Aceh', '', 50, 1000, 40100, 'Active', 398, 'IRV'),
(111, 399, 'Instagram Followers Indonesia', '', 'Instagram Followers Indonesia Aktip Surabaya', '', 50, 1000, 39100, 'Active', 399, 'IRV'),
(112, 400, 'Instagram Followers Indonesia', '', 'Instagram Followers Indonesia Aktip Bogor', '', 50, 1000, 40100, 'Active', 400, 'IRV'),
(113, 401, 'Instagram Followers Indonesia', '', 'Instagram Followers Indonesia Aktip Cimahi', '', 50, 999, 39100, 'Active', 401, 'IRV'),
(114, 402, 'Instagram Followers Indonesia', '', 'Instagram Followers Indonesia Aktip Tangerang', '', 100, 1000, 40100, 'Active', 402, 'IRV'),
(115, 403, 'Instagram Followers Indonesia', '', 'Instagram Followers Indonesia Aktip Purbalingga', '', 100, 1000, 38100, 'Active', 403, 'IRV'),
(116, 404, 'Instagram Followers Indonesia', '', 'Instagram Followers Indonesia Aktip Sulawesi', '', 50, 1000, 40100, 'Active', 404, 'IRV'),
(117, 405, 'Instagram Followers Indonesia', '', 'Instagram Followers Indonesia Aktip Kalimantan', '', 100, 1000, 39100, 'Active', 405, 'IRV'),
(118, 406, 'Instagram Followers Indonesia', '', 'Instagram Followers Indonesia Aktip Makasar', '', 100, 1000, 41100, 'Active', 406, 'IRV'),
(119, 407, 'Instagram Followers Indonesia', '', 'Instagram Followers Indonesia Aktip Solo', '', 150, 1000, 37100, 'Active', 407, 'IRV'),
(120, 410, 'Instagram Followers Indonesia', '', 'Instagram Followers Indonesia AKTIP SPECIAL MAX 15K FOLLOWERS INDONESIA', '', 50, 5000, 47100, 'Active', 410, 'IRV'),
(121, 411, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers IKP 11 FASTSERVICE', '', 500, 50000, 13600, 'Active', 411, 'IRV'),
(122, 412, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers IKP 12  ( Min 200 | MAX 5K ) ( 0-6 hours start )', '', 200, 50000, 9800, 'Active', 412, 'IRV'),
(123, 413, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers IKP 13  ( 0-6 hours Start ) Min 500 -MAX 5K', '', 500, 5000, 9000, 'Active', 413, 'IRV'),
(124, 414, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers IKP 14 5 Mint Delivery Max 2K - No refill, No refund', '', 200, 2000, 14100, 'Active', 414, 'IRV'),
(125, 416, ' Instagram Followers [Refill] [Guaranteed] [NonDro', '', 'Instagram Followers VIP 2  MAX 10K NONDROP', '', 100, 10000, 22600, 'Active', 416, 'IRV'),
(126, 421, 'Youtube Views', '', 'Youtube Views S4 [1M] [REFILL 60DAYS]', '', 1000, 100000000, 8900, 'Active', 421, 'IRV'),
(127, 422, 'Youtube Views', '', 'Youtube Views S5  [500K] [AUTO REFILL 10]', '', 2000, 500000, 13100, 'Active', 422, 'IRV'),
(128, 423, 'Youtube Views', '', 'Youtube Views S6 [10M] [AUTO REFILL30]', '', 1000, 10000000, 15700, 'Active', 423, 'IRV'),
(129, 424, 'Youtube Views', '', 'Youtube Views S7 [5M] [REFILL 30]', '', 5000, 50000000, 18600, 'Active', 424, 'IRV'),
(130, 426, 'Youtube Subscribers ', '', 'Youtube Subscribers S2 1-5 DAYS [ Real | 250-500/day 40% Drop | Max 30k ] ( NO Refill )', '', 500, 30000, 105100, 'Active', 426, 'IRV'),
(131, 427, 'Instagram Followers Indonesia', '', 'Instagram Followers Indonesia  Laki-Laki AKTIP', '', 100, 3000, 44100, 'Active', 427, 'IRV'),
(132, 428, 'Instagram Followers Indonesia', '', 'Instagram Followers Indonesia Perempuan/Wanita AKTIP', '', 100, 1500, 44100, 'Active', 428, 'IRV'),
(133, 429, 'Instagram Likes Indonesia', '', 'Instagram Likes INDONESIA INSTAN S1 (Hitungan Detik) [MAX3K] BAACA NOTE', '', 100, 2000, 2600, 'Active', 429, 'IRV'),
(134, 431, 'Instagram Likes Indonesia', '', 'Instagram Likes INDONESIA INSTAN S2 [MAX10K] [BONUSS++++]  (Hitungan Detik)', '', 50, 3000, 3100, 'Active', 431, 'IRV'),
(135, 438, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers VIP 4 MAX 4k', '', 200, 4000, 7100, 'Active', 438, 'IRV'),
(136, 444, 'Instagram Followers Indonesia', '', 'Instagram Followers Indonesia Dani Aktip FAST [MAX 2K CHEAP IN THE MARKET]', '', 100, 2000, 35100, 'Active', 444, 'IRV'),
(137, 445, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers VVIIPP 1 - [ Min 100 - Max 6K ]', '', 100, 5000, 8100, 'Active', 445, 'IRV'),
(138, 448, 'Instagram Views', '', 'Instagram Views Cheapest In Market Murahnya Gila [MAX10K]', '', 50, 10000, 197, 'Active', 448, 'IRV'),
(139, 453, 'Facebook Followers / Friends / Group Members', '', 'Facebook Followers (Instant) |[Max : 100k] ( 30 days Refill )', '', 50, 1000000, 41100, 'Active', 453, 'IRV'),
(140, 459, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers Privat S2 instant Work Norefund No refill CUMA DI IRVANKEDE', '', 200, 4500, 9190, 'Active', 459, 'IRV'),
(141, 460, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers Privat S3 instant Work Norefund No refill CUMA DI IRVANKEDE', '', 100, 4500, 6700, 'Active', 460, 'IRV'),
(142, 461, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers VVIIPP 2 [6K]', '', 100, 6000, 5000, 'Active', 461, 'IRV'),
(143, 462, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers VVIIPP 3 [3K]', '', 100, 3000, 5200, 'Active', 462, 'IRV'),
(144, 464, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers VVIIPP 5 [5K] [NO REFILL NO REFUND] [1MENIT START]', '', 200, 5000, 6900, 'Active', 464, 'IRV'),
(145, 468, 'Facebook Page Likes', '', 'Facebook Page Likes S5 [HQ] [Non Drop, 60 Days Auto Refill, Super Fast]', '', 100, 1000000, 45100, 'Active', 468, 'IRV'),
(146, 470, 'Instagram Likes Indonesia', '', 'Instagram Likes INDONESIA INSTAN S3 (Hitungan Detik) MAX 1K', '', 500, 1000, 2100, 'Active', 470, 'IRV'),
(147, 475, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers VVIIPP 7 INSTAN', '', 100, 4000, 6200, 'Active', 475, 'IRV'),
(148, 481, ' Instagram Followers [Refill] [Guaranteed] [NonDro', '', 'Instagram Followers VVIIPP 9 30 DAYS REFILL SUPER FAST [10K]', '', 100, 10000, 15100, 'Active', 481, 'IRV'),
(149, 483, ' Twitter Followers', '', 'Twitter Followers Min 100 - Max 2K - No refill', '', 100, 2000, 16600, 'Active', 483, 'IRV'),
(150, 485, ' Twitter Followers', '', 'Twitter Followers [20K] [HQ] [REFILL30DAYS]', '', 100, 20000, 33100, 'Active', 485, 'IRV'),
(151, 486, ' Instagram Followers [Refill] [Guaranteed] [NonDro', '', 'Instagram Followers VVIIPP 10 30 DAYS REFILL FAST [10K]', '', 100, 10000, 21700, 'Active', 486, 'IRV'),
(152, 487, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers Khusus IRVANKEDE S2 NO REFILL NO REFUND [2,5K] CHEAP', '', 100, 2500, 4100, 'Active', 487, 'IRV'),
(153, 490, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers VVIIPP 11 Max 20K - SUPER FAST', '', 200, 10000, 9600, 'Active', 490, 'IRV'),
(154, 491, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers VVIIPP 12 Max 20K - [ Super FAST 6 JAM START] - No Partial', '', 200, 10000, 9600, 'Active', 491, 'IRV'),
(155, 492, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers VVIIPP 13 [NoRefund No Refill - Max 5k ] [ 0 - 1Hrs Complete ]', '', 300, 5000, 11100, 'Active', 492, 'IRV'),
(156, 508, ' Facebook Post Likes / Comments / Shares / Events', '', 'Facebook - Post Likes Real S1 ( Instant, Real, Superfast, Fanpage & Profile post, Max 5k )', '', 25, 1000, 5100, 'Active', 508, 'IRV'),
(157, 509, ' Facebook Post Likes / Comments / Shares / Events', '', 'Facebook - Post Likes S2 ( Instant, Real, Ultra fast, Fanpage & Profile post, Max 3k )', '', 100, 5000, 6000, 'Active', 509, 'IRV'),
(158, 514, 'Youtube Views', '', 'Youtube - Views IK 1 [ 30k-50k/day ] [ No Refill Guarantee ]', '', 1000, 10000, 3400, 'Active', 514, 'IRV'),
(159, 515, 'Youtube Views', '', 'Youtube - Views IK 2  [ 20k-100k/day ] [ Life Time Guarantee ] INSTANT', '', 1000, 1000000, 5400, 'Active', 515, 'IRV'),
(160, 516, 'Youtube Views', '', 'Youtube - Views IK 3 [ 20k-100k/day ] [ No Refill Guarantee ] INSTANT', '', 1000, 1000000, 7100, 'Active', 516, 'IRV'),
(161, 520, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Khusus Irvankede S4 SUPER FAST [10K] [MIN 300]', '', 300, 10000, 5200, 'Active', 520, 'IRV'),
(162, 523, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Khusus Irvankede S6  MAX 4K FASTSERVICE', '', 100, 4000, 4400, 'Active', 523, 'IRV'),
(163, 526, ' Instagram Auto Comments / Impressions / Saves', '', 'Instagram Impressions [1M]', '', 100, 1000000, 2200, 'Active', 526, 'IRV'),
(164, 527, ' Instagram Story / Impressions / Saves', '', 'Instagram Story Views [30K]', '', 100, 30000, 13600, 'Active', 527, 'IRV'),
(165, 530, ' Facebook Post Likes / Comments / Shares / Events', '', 'Facebook Post Likes [1K] [EMOTICONS] [HAHA]', '', 10, 1000, 8600, 'Active', 530, 'IRV'),
(166, 531, ' Facebook Post Likes / Comments / Shares / Events', '', 'Facebook Post Likes [1K] [EMOTICONS] [WOW]', '', 10, 1000, 8600, 'Active', 531, 'IRV'),
(167, 532, ' Facebook Post Likes / Comments / Shares / Events', '', 'Facebook Post Likes [1K] [EMOTICONS] [SAD]', '', 10, 1000, 8600, 'Active', 532, 'IRV'),
(168, 533, ' Facebook Post Likes / Comments / Shares / Events', '', 'Facebook Post Likes [1K] [EMOTICONS] [ANGRY]', '', 100, 1000, 8600, 'Active', 533, 'IRV'),
(169, 541, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers Media 5 SUPER FAST 5-10 MENIT 10K', '', 100, 10000, 9500, 'Active', 541, 'IRV'),
(170, 542, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers Media 6 SUPER FAST NO PARTIAL', '', 100, 10000, 9600, 'Active', 542, 'IRV'),
(171, 544, 'Instagram Followers Indonesia', '', 'Instagram Followers Indonesia Real Aktip Murah S1', '', 50, 1000, 25100, 'Active', 544, 'IRV'),
(172, 546, ' Instagram Followers [Refill] [Guaranteed] [NonDro', '', 'Instagram Followers Refill 2 [4k] [30 Days Refill]', '', 100, 4000, 15300, 'Active', 546, 'IRV'),
(173, 553, 'Facebook Followers / Friends / Group Members', '', 'Facebook Followers (0-6) |[Max : 5k] ( 30 days Refill )', '', 500, 5000, 21700, 'Active', 553, 'IRV'),
(174, 554, ' Instagram Story / Impressions / Saves', '', 'Instagram Last Story S1 - Only Username - No Refund', '', 500, 10000, 2600, 'Active', 554, 'IRV'),
(175, 555, ' Instagram Story / Impressions / Saves', '', 'Instagram last Story - 1 Mint Delivery - Only Username - No refund', '', 400, 10000, 4700, 'Active', 555, 'IRV'),
(176, 560, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers [10K] [INSTANT DELIVERY', '', 100, 10000, 7300, 'Active', 560, 'IRV'),
(177, 561, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers [4K] [NO REFUND NO REFILL]', '', 100, 4000, 4100, 'Active', 561, 'IRV'),
(178, 562, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers [1.5K] [START 1AM] [NOREFILL NO REFUND]', '', 100, 1500, 3800, 'Active', 562, 'IRV'),
(179, 564, 'Youtube Views', '', 'Youtube Views Auto Refill [1M]', '', 1000, 1000000, 3900, 'Active', 564, 'IRV'),
(180, 565, 'Youtube Subscribers ', '', 'Youtube Subscriber ( Start 12-36 Hours) 200/500 Day Cheap', '', 100, 30000, 17100, 'Active', 565, 'IRV'),
(181, 567, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers IK 2 [MIN 200&MAX10K]', '', 200, 10000, 6700, 'Active', 567, 'IRV'),
(182, 571, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram LQ S2 [5K] [START 0-6h] LOW QUALITTTTT', '', 100, 5000, 3150, 'Active', 571, 'IRV'),
(183, 572, 'Youtube Subscribers ', '', 'Youtube Subscribers 0-12 JAM 4K/DAYS FASTTEST AND CHEAP [7K]', '', 100, 4000, 145100, 'Active', 572, 'IRV'),
(184, 573, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers [5K] - INSTANT 5 MIN START ( Very Less Drop )', '', 100, 5000, 10100, 'Active', 573, 'IRV'),
(185, 574, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers [10K] NO REFUND NO REFILL', '', 200, 10000, 6900, 'Active', 574, 'IRV'),
(186, 576, 'Twitter Retweets', '', 'Twitter Retweets [500K]', '', 20, 500000, 64100, 'Active', 576, 'IRV'),
(187, 577, 'Twitter Retweets', '', 'witter Retweets [50M] REFILL 30 DAYS', '', 20, 5000000, 108100, 'Active', 577, 'IRV'),
(188, 578, 'Instagram Followers Indonesia', '', 'Instagram Followers Indonesia Hitungan Detik [6K]', '', 50, 6000, 35100, 'Active', 578, 'IRV'),
(189, 580, 'Instagram Likes', '', 'Instagram Likes [10K] [REAL]', '', 20, 20000, 790, 'Active', 580, 'IRV'),
(190, 581, 'Instagram Likes', '', 'Instagram Likes [15K] [INSTANT]', '', 100, 15000, 2100, 'Active', 581, 'IRV'),
(191, 586, 'Instagram Likes Indonesia', '', 'Instagram Likes INDONESIA INSTAN S4 (Hitungan Detik) MAX 1,5K BACA NOTE', '', 100, 1500, 1100, 'Active', 586, 'IRV'),
(192, 587, ' Instagram Followers [Refill] [Guaranteed] [NonDro', '', 'Instagram Followers REFILL ISNTANT {30 Days Refill- 2 hour Start] MAX 10k', '', 100, 10000, 23100, 'Active', 587, 'IRV'),
(193, 589, 'Instagram Followers Indonesia', '', 'Instagram Followers Indonesia Aktip Instant Cheap[2K]', '', 50, 2000, 31100, 'Active', 589, 'IRV'),
(194, 592, 'Instagram Likes', '', 'Instagram Likes INDONESIA INSTAN S6 (Hitungan Detik) MAX 7K BACA NOTE', '', 25, 7000, 4000, 'Active', 592, 'IRV'),
(195, 595, 'Instagram Likes', '', 'Instagram Likes Min 50 MAX 15K [ Recommended ] FAST INSTANT', '', 50, 15000, 550, 'Active', 595, 'IRV'),
(196, 596, 'Instagram Likes', '', 'Instagram Likes [15K] [INSTANT START 1 MENIT]', '', 20, 15000, 700, 'Active', 596, 'IRV'),
(197, 598, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers Low Qualty 3 [4K] 0-6 JAM START', '', 100, 4000, 3100, 'Active', 598, 'IRV'),
(198, 601, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers MAX 30K Instant Porses', '', 100, 30000, 9100, 'Active', 601, 'IRV'),
(199, 603, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers Promotional 10K - 0-6H Start', '', 100, 10000, 2600, 'Active', 603, 'IRV'),
(200, 604, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers [ 6K ] Super Fast Cheap', '', 200, 6000, 2600, 'Active', 604, 'IRV'),
(201, 608, 'Youtube Views', '', 'Youtube Views LifeTIme Guarantee - 0-3 H Start 100K/Day', '', 1000, 1000000, 2900, 'Active', 608, 'IRV'),
(202, 609, 'Instagram Views', '', 'Instagram Views [1M]  START 0-6 JAM', '', 100, 100000000, 110, 'Active', 609, 'IRV'),
(203, 613, 'Instagram Views', '', 'Instagram Views Cheapest In Market ( Min 50 Max 10M )', '', 50, 100000000, 150, 'Active', 613, 'IRV'),
(204, 614, ' Instagram Story / Impressions / Saves', '', 'Instagram Last Story [MAX5K]', '', 100, 5000, 2100, 'Active', 614, 'IRV'),
(205, 615, 'Youtube Views', '', 'Youtube Views Super Fast 10-50k Per Day ( Life Time Guarantee ) ( Recommended )', '', 500, 100000000, 5000, 'Active', 615, 'IRV'),
(206, 617, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers - [ Max 3K ] INTANT START 5 MENIT - 12 JAM', '', 100, 3000, 4300, 'Active', 617, 'IRV'),
(207, 618, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers MAX 3K- 10 DAYS REFILL Instant Start 5 menit - 6 jam', '', 100, 3000, 10100, 'Active', 618, 'IRV'),
(208, 619, ' Instagram TV', '', 'Instagram TV Views [1M]', '', 2000, 1000000000, 700, 'Active', 619, 'IRV'),
(209, 620, ' Instagram TV', '', 'Instagram TV Views [5M]', '', 1000, 500000000, 890, 'Active', 620, 'IRV'),
(210, 621, ' Instagram TV', '', 'Instagram TV Likes - Instant Start', '', 500, 3000, 2000, 'Active', 621, 'IRV'),
(211, 622, 'Facebook Followers / Friends / Group Members', '', 'Facebook Followers [50K] [REFILL30 DAYS]', '', 100, 50000, 20000, 'Active', 622, 'IRV'),
(212, 623, 'Facebook Followers / Friends / Group Members', '', 'Facebook Group Members [500K]', '', 500, 500000, 21800, 'Active', 623, 'IRV'),
(213, 625, ' Instagram TV', '', 'Instagram TV Views [ULTRA FAST] ( Min 100 | Max 1 Million )', '', 100, 100000000, 340, 'Active', 625, 'IRV'),
(214, 626, ' Facebook Post Likes / Comments / Shares / Events', '', 'Facebook Emoticons Love Instant Start', '', 50, 4000, 5100, 'Active', 626, 'IRV'),
(215, 627, ' Facebook Post Likes / Comments / Shares / Events', '', 'Facebook Emoticons S2 HAHA Instant Start', '', 50, 5000, 5100, 'Active', 627, 'IRV'),
(216, 628, ' Facebook Post Likes / Comments / Shares / Events', '', 'Facebook Emoticons S2 WOW Instant Start', '', 50, 5000, 5100, 'Active', 628, 'IRV'),
(217, 629, ' Facebook Post Likes / Comments / Shares / Events', '', 'Facebook Emoticons S2 SAD Instant Start', '', 50, 5000, 5100, 'Active', 629, 'IRV'),
(218, 630, ' Facebook Post Likes / Comments / Shares / Events', '', 'Facebook Emoticons S2 ANGRY Instant Start', '', 50, 5000, 5100, 'Active', 630, 'IRV'),
(219, 631, ' Instagram TV', '', 'IGTV Random Comments [1M]', '', 10, 10000000, 32100, 'Active', 631, 'IRV'),
(220, 632, ' Instagram TV', '', 'IGTV Random Emoji Comments [1M]', '', 10, 10000000, 32100, 'Active', 632, 'IRV'),
(221, 634, ' Instagram Followers [Refill] [Guaranteed] [NonDro', '', 'Instagram Followers Max 5K - Refill 15 days', '', 100, 5000, 18100, 'Active', 634, 'IRV'),
(222, 635, ' Instagram Followers [Refill] [Guaranteed] [NonDro', '', 'Instagram Followers [ 30 Days Refill ] [ 10k/day ] [ Max - 55k ] INSTANT', '', 100, 10000, 19700, 'Active', 635, 'IRV'),
(223, 636, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers (Super Fast) (15 Days Refill ) | (MIN 1000 - Max - 10k)', '', 1000, 100000, 21600, 'Active', 636, 'IRV'),
(224, 638, ' Instagram Followers [Refill] [Guaranteed] [NonDro', '', 'Instagram Followers [5K] [Refill 10 days]', '', 100, 5000, 10900, 'Active', 638, 'IRV'),
(225, 639, ' Instagram Followers [Refill] [Guaranteed] [NonDro', '', 'Instagram Followers [20K] [Refill 20days]', '', 100, 20000, 12500, 'Active', 639, 'IRV'),
(226, 640, ' Instagram Followers [Refill] [Guaranteed] [NonDro', '', 'Instagram Followers [30K] [REFILL 30 DAYS ]  5 - 10% Drop Ratio', '', 100, 30000, 16500, 'Active', 640, 'IRV'),
(227, 643, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers [5K] Instant 10% DROP', '', 300, 5000, 6800, 'Active', 643, 'IRV'),
(228, 644, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers [5K] [SUPER FAST]', '', 200, 5000, 13650, 'Active', 644, 'IRV'),
(229, 646, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers [15K] [INSTANT]', '', 300, 15000, 9950, 'Active', 646, 'IRV'),
(230, 648, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers [70K] [fast delivery]', '', 200, 70000, 19900, 'Active', 648, 'IRV'),
(231, 650, 'Instagram Views', '', 'Instagram Views [300K] [SUPER FAST]', '', 100, 300000, 160, 'Active', 650, 'IRV'),
(232, 651, 'Instagram Views', '', 'Instagram Views [3M] [SUPER FAST]', '', 100, 30000000, 175, 'Active', 651, 'IRV'),
(233, 652, 'Instagram Views', '', 'Instagram Views + Impressions [FAST] [1M]', '', 100, 100000000, 200, 'Active', 652, 'IRV'),
(234, 653, 'Instagram Views', '', 'Instagram Views + Impressions [TRENDING HITS] [1M]', '', 100, 10000000, 250, 'Active', 653, 'IRV'),
(235, 655, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Follower Max 3K - ULTRAFAST - 1H START', '', 50, 3000, 2680, 'Active', 655, 'IRV'),
(236, 656, 'Youtube Views', '', 'Youtube Views - [ 30 DAYS REFILL] [ HR ] [ Speed 20K - 50K/DAYS] MENAMBAH JAM TAYANG', '', 1000, 100000000, 8400, 'Active', 656, 'IRV'),
(237, 658, 'Instagram Comments', '', 'Instagram Random Comments - Min 100 | Max 10K - ULTRAFAST - 1H', '', 100, 10000, 8300, 'Active', 658, 'IRV'),
(238, 659, 'Facebook Page Likes', '', 'Real Facebook Page Likes - [ Non drop ] [ 5k-10k/day ] [ Max - 100k ] INSTANT', '', 100, 100000, 79100, 'Active', 659, 'IRV'),
(239, 663, 'Youtube Views', '', 'Youtube - Views IK 4 [ 100k-300k/day ] ( AUTO REFILL ) [ Life Time Guaranteed ] INSTANT', '', 1000, 10000000, 3500, 'Active', 663, 'IRV'),
(240, 664, 'Youtube Views', '', 'Youtube - Views IK 5 [ 1M-1.5M/DAY ] ( AUTO REFILL ) [ Life Time Guaranteed ] INSTANT', '', 5000, 1000000000, 6600, 'Active', 664, 'IRV'),
(241, 666, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers IK-1 [ Superfast ] [ Real ] [ Max 5k ] INSTANT-4hrs', '', 300, 5000, 5900, 'Active', 666, 'IRV'),
(242, 667, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers IK-2  ( Max - 10k ) ( SUPERFAST, NO REFILL ) INSTANT', '', 100, 10000, 6600, 'Active', 667, 'IRV'),
(243, 670, 'Facebook Page Likes', '', 'Facebook Page Likes (10K) No Refill', '', 100, 10000, 31100, 'Active', 670, 'IRV'),
(244, 671, 'Facebook Page Likes', '', 'Facebook Page Likes (10K) 30 Days Refill', '', 100, 100000, 50100, 'Active', 671, 'IRV'),
(245, 674, 'Instagram Likes', '', 'Instagram Likes Fast Instant Min 50 MAX 15K', '', 50, 15000, 530, 'Active', 674, 'IRV'),
(246, 675, 'Instagram Likes', '', 'Instagram Likes ( Min 20 - Max 15k )( Super Fast ) Complete in less then 1 min', '', 20, 15000, 650, 'Active', 675, 'IRV'),
(247, 677, 'Instagram Likes', '', 'Instagram Likes - [ Min 100 - Max 2.5K ] - INSTANT', '', 50, 2500, 220, 'Active', 677, 'IRV'),
(248, 679, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers - [ Max 2K ]', '', 100, 2000, 2250, 'Active', 679, 'IRV'),
(249, 680, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers Super Fast [Max 15k]', '', 100, 15000, 5100, 'Active', 680, 'IRV'),
(250, 683, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Follower- Max 2K - ULTRAFAST - 1H START', '', 100, 2000, 2600, 'Active', 683, 'IRV'),
(251, 684, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers [ 6K ] 0-3Hours', '', 100, 6000, 3000, 'Active', 684, 'IRV'),
(252, 686, ' Instagram Story / Impressions / Saves', '', 'Instagram Story Views [5K] - All Story', '', 100, 5000, 1400, 'Active', 686, 'IRV'),
(253, 687, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers [ Superfast ] [ Real ] [ Max 5k ] INSTANT', '', 100, 5000, 5350, 'Active', 687, 'IRV'),
(254, 688, ' Instagram Followers [Refill] [Guaranteed] [NonDro', '', 'Instagram Followers (BEST IN MARKET) {MAX 80K) 30 Days Refil', '', 100, 80000, 18500, 'Active', 688, 'IRV'),
(255, 689, 'Instagram Followers Indonesia', '', 'Instagram Followers Indonesia Aktip Langsung Masuk[4K],', '', 100, 4000, 32100, 'Active', 689, 'IRV'),
(256, 690, 'Instagram Views', '', 'Instagram Views [1M] FAST MURAH', '', 50, 100000000, 123, 'Active', 690, 'IRV'),
(257, 691, ' Twitter Followers', '', 'Twitter Followers ( EGGS) (20K/Day - No Refill )', '', 100, 10000000, 11100, 'Active', 691, 'IRV'),
(258, 692, 'Instagram Views', '', 'Instagram Views MAX 1K', '', 500, 1000, 101, 'Active', 692, 'IRV'),
(259, 694, 'Instagram Likes', '', 'Instagram Likes [2.5K] Super Fast', '', 100, 2500, 290, 'Active', 694, 'IRV'),
(260, 695, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers 5K SuperFast Hanya di IRV', '', 100, 5000, 3400, 'Active', 695, 'IRV'),
(261, 696, ' Instagram Live Video', '', 'Ä°nstagram Live Video Max 1', '', 100, 1000, 16800, 'Active', 696, 'IRV'),
(262, 697, ' Instagram Followers [Refill] [Guaranteed] [NonDro', '', 'Instagram Followers (30 Days Refill ) MAX 30K TOMBOL REFILL', '', 100, 30000, 16900, 'Active', 697, 'IRV'),
(263, 698, ' Instagram Followers [Refill] [Guaranteed] [NonDro', '', 'Instagram Followers - 30 Days Refill [ Min 100 - Max 10k ] [ SUPER FAST]', '', 100, 10000, 15100, 'Active', 698, 'IRV'),
(264, 699, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers Max 10K - 1 Mint START [Less Drop]', '', 100, 10000, 6500, 'Active', 699, 'IRV'),
(265, 701, 'Irvan Kede', '', 'Example', '', 150, 150, 5100, 'Active', 701, 'IRV'),
(266, 703, 'Instagram Likes', '', 'Instagram Likes [2K] [NONDROP] SLOW]', '', 100, 2000, 120, 'Active', 703, 'IRV'),
(267, 704, 'Youtube Subscribers ', '', 'Youtube Subribers No Refill - 24 Hours Start - 200/300 day [7K]', '', 100, 7000, 8550, 'Active', 704, 'IRV'),
(268, 705, ' Instagram Followers [Refill] [Guaranteed] [NonDro', '', 'Instagram Followers [ Max - 5k ] [ 15 Days Refill ] INSTANT-6HRS', '', 100, 5000, 8550, 'Active', 705, 'IRV'),
(269, 706, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers ( Max - 2k ) ( NO REFILL ) INSTANT-6hrs', '', 100, 2000, 1350, 'Active', 706, 'IRV'),
(270, 707, 'Instagram Likes', '', 'Instagram Likes [ Superfast ] [ Max -2.5k ] INSTANT', '', 100, 2500, 105, 'Active', 707, 'IRV'),
(271, 708, 'Instagram Likes', '', 'Instagram Likes [ Superfast ] [2,5k ] INSTANT ', '', 100, 2500, 105, 'Active', 708, 'IRV'),
(272, 709, ' Instagram TV', '', 'Instagram TV Views- Cheapest In Market [1M] 10K/DAY', '', 100, 100000000, 240, 'Active', 709, 'IRV'),
(273, 710, 'Irvan Kede', '', 'Privat Followers Indonesia', '', 100, 4000, 50100, 'Active', 710, 'IRV'),
(274, 711, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers KDRT 1  ( Max - 5k ) ( NO REFILL ) INSTANT-6hrs', '', 100, 5000, 3150, 'Active', 711, 'IRV'),
(275, 712, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers KDRT 2 ( Max - 5k ) ( NO REFILL ) INSTANT-6hrs', '', 100, 5000, 3900, 'Active', 712, 'IRV'),
(276, 713, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers KDRT 3 ( Max - 6k ) ( NO REFILL ) INSTANT', '', 100, 6000, 4300, 'Active', 713, 'IRV'),
(277, 714, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers KDRT 4 [ Superfast ] [ Real ] [ Max 10k ] INSTANT-4hrs', '', 100, 10000, 6000, 'Active', 714, 'IRV'),
(278, 715, 'Instagram Followers No Refill/Not Guaranteed', '', 'Instagram Followers KDRT 5 ( Max - 10k ) ( SUPERFAST, NO REFILL ) INSTANT', '', 100, 10000, 6900, 'Active', 715, 'IRV');

-- --------------------------------------------------------

--
-- Table structure for table `service_cat`
--

CREATE TABLE `service_cat` (
  `id` int(10) NOT NULL,
  `name` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `code` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `status` enum('Active','Not active') COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `service_cat`
--

INSERT INTO `service_cat` (`id`, `name`, `code`, `status`) VALUES
(1, 'Instagram Likes, Views & Comment', 'SM', 'Active'),
(2, 'Instagram Followers', 'SM', 'Active'),
(3, 'Musically', 'SM', 'Active'),
(4, 'Youtube', 'SM', 'Active'),
(5, 'SoundCloud', 'SM', 'Active'),
(6, 'Spotify', 'SM', 'Active'),
(7, 'Vine', 'SM', 'Active'),
(8, 'Pinterest', 'SM', 'Active'),
(9, 'Facebook', 'SM', 'Active'),
(10, 'Twitter', 'SM', 'Active'),
(11, 'Indosat', 'PI', 'Active'),
(12, 'Telkomsel', 'PI', 'Active'),
(13, 'Tri', 'PI', 'Active'),
(14, 'Axis', 'PI', 'Active'),
(15, 'XL', 'PI', 'Active'),
(16, 'Bolt', 'PI', 'Active'),
(17, 'Smartfren', 'PI', 'Active'),
(18, 'Indosat', 'PR', 'Active'),
(19, 'Telkomsel', 'PR', 'Active'),
(20, 'Tri', 'PR', 'Active'),
(21, 'Axis', 'PR', 'Active'),
(22, 'XL', 'PR', 'Active'),
(23, 'Bolt', 'PR', 'Active'),
(24, 'Smartfren', 'PR', 'Active'),
(25, 'Token PLN', 'PLN', 'Active'),
(26, 'Garena Shell', 'VG', 'Active'),
(27, 'Gemscool Cash', 'VG', 'Active'),
(28, 'Steam Wallet', 'VG', 'Active'),
(29, 'Lyto', 'VG', 'Active'),
(30, 'Saldo Grab', 'STO', 'Active'),
(31, 'Saldo Gojek', 'STO', 'Active'),
(32, 'Megaxus', 'VG', 'Active'),
(33, 'Digicash', 'VG', 'Active'),
(34, 'Diamond', 'ML', 'Active'),
(35, 'Google Play', 'VG', 'Active'),
(36, 'Telkomsel', 'PSMS', 'Active'),
(37, 'Indosat', 'PSMS', 'Active'),
(38, 'XL', 'PSMS', 'Active'),
(39, 'UniPin', 'VG', 'Active'),
(40, 'Starlight Member', 'SML', 'Active'),
(41, 'Stiker Line', 'LINE', 'Active'),
(42, 'Lainnya', 'O', 'Active'),
(43, 'Tri', 'PSMS', 'Active'),
(44, 'Xbox Live Gift Card', 'VG', 'Active'),
(45, 'Game facebook - Boyaa Poker', 'VG', 'Active'),
(46, 'Instagram Likes Gratis', 'SM', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_cat`
--
ALTER TABLE `service_cat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=279;

--
-- AUTO_INCREMENT for table `service_cat`
--
ALTER TABLE `service_cat`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

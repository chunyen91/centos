-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 08, 2018 at 06:33 PM
-- Server version: 10.2.15-MariaDB
-- PHP Version: 7.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u947252659_mcs4`
--

-- --------------------------------------------------------

--
-- Table structure for table `balance_history`
--

CREATE TABLE `balance_history` (
  `id` int(10) NOT NULL,
  `username` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `action` enum('Add Balance','Cut Balance','Other') COLLATE utf8_swedish_ci NOT NULL,
  `quantity` int(10) NOT NULL,
  `price` int(10) NOT NULL,
  `msg` text COLLATE utf8_swedish_ci NOT NULL,
  `date` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `time` varchar(50) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` int(11) NOT NULL,
  `isi` text NOT NULL,
  `tanggal` date NOT NULL,
  `jenis` enum('INFO','WARNING','UPDATE') NOT NULL,
  `warna` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `deposit`
--

CREATE TABLE `deposit` (
  `id` int(10) NOT NULL,
  `code` varchar(250) COLLATE utf8_swedish_ci NOT NULL,
  `username` varchar(250) COLLATE utf8_swedish_ci NOT NULL,
  `method` varchar(250) COLLATE utf8_swedish_ci NOT NULL,
  `quantity` varchar(250) COLLATE utf8_swedish_ci NOT NULL,
  `balance` varchar(250) COLLATE utf8_swedish_ci NOT NULL,
  `status` enum('Success','Pending','Error','') COLLATE utf8_swedish_ci NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deposits_history`
--

CREATE TABLE `deposits_history` (
  `id` int(11) NOT NULL,
  `code` varchar(250) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `user` varchar(250) NOT NULL,
  `method` varchar(250) NOT NULL,
  `no_sender` varchar(250) NOT NULL,
  `quantity` varchar(250) NOT NULL,
  `get_balance` varchar(250) NOT NULL,
  `status` varchar(250) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL,
  `type` enum('WEB','API','REG') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `deposit_method`
--

CREATE TABLE `deposit_method` (
  `id` int(10) NOT NULL,
  `name` varchar(250) COLLATE utf8_swedish_ci NOT NULL,
  `payment` varchar(250) COLLATE utf8_swedish_ci NOT NULL,
  `rate` varchar(250) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ip`
--

CREATE TABLE `ip` (
  `id` int(10) NOT NULL,
  `username` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `ip` varchar(100) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `ip`
--

INSERT INTO `ip` (`id`, `username`, `ip`) VALUES
(3, 'Samrey', '115.164.82.213');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) NOT NULL,
  `date` date NOT NULL,
  `content` text COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `date`, `content`) VALUES
(1, '2018-05-29', 'Order Script ini? Silahkan Chat <a href=\"api.whatsapp.com/send?phone=6281282237511\">DIAJI HARDIN</a>');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `oid` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `poid` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `user` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `service` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `link` text COLLATE utf8_swedish_ci NOT NULL,
  `quantity` int(10) NOT NULL,
  `remains` int(10) NOT NULL,
  `start_count` int(10) NOT NULL,
  `price` int(10) NOT NULL,
  `status` enum('Checking','Pending','Processing','Error','Partial','Success') COLLATE utf8_swedish_ci NOT NULL,
  `date` date NOT NULL,
  `provider` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `place_from` enum('WEB','API') COLLATE utf8_swedish_ci NOT NULL,
  `refund` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_dm`
--

CREATE TABLE `orders_dm` (
  `id` int(10) NOT NULL,
  `oid` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `poid` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `user` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `service` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `link` text COLLATE utf8_swedish_ci NOT NULL,
  `nickname` text COLLATE utf8_swedish_ci NOT NULL,
  `price` int(10) NOT NULL,
  `status` enum('Checking','Pending','Processing','Error','Partial','Success') COLLATE utf8_swedish_ci NOT NULL,
  `date` date NOT NULL,
  `provider` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `place_from` enum('WEB','API') COLLATE utf8_swedish_ci NOT NULL,
  `refund` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_line`
--

CREATE TABLE `orders_line` (
  `id` int(10) NOT NULL,
  `oid` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `user` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `service` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `note` text COLLATE utf8_swedish_ci NOT NULL,
  `price` double NOT NULL,
  `status` enum('Pending','Processing','Error','Success') COLLATE utf8_swedish_ci NOT NULL,
  `date` date NOT NULL,
  `place_from` varchar(50) COLLATE utf8_swedish_ci NOT NULL DEFAULT 'WEB'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_pulsa`
--

CREATE TABLE `orders_pulsa` (
  `id` int(10) NOT NULL,
  `oid` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `poid` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `user` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `service` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `link` text COLLATE utf8_swedish_ci NOT NULL,
  `sn` text COLLATE utf8_swedish_ci NOT NULL,
  `price` int(10) NOT NULL,
  `status` enum('Checking','Pending','Processing','Error','Partial','Success') COLLATE utf8_swedish_ci NOT NULL,
  `date` date NOT NULL,
  `provider` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `place_from` enum('WEB','API') COLLATE utf8_swedish_ci NOT NULL,
  `refund` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pesan_tsel`
--

CREATE TABLE `pesan_tsel` (
  `id` int(11) NOT NULL,
  `isi` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `status` enum('UNREAD','READ') NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `provider`
--

CREATE TABLE `provider` (
  `id` int(10) NOT NULL,
  `code` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `link` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `api_key` varchar(100) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `provider`
--

INSERT INTO `provider` (`id`, `code`, `link`, `api_key`) VALUES
(1, 'IRVAN', 'https://irvankede-smm.co.id/api/status', '#');

-- --------------------------------------------------------

--
-- Table structure for table `provider_portal`
--

CREATE TABLE `provider_portal` (
  `id` int(10) NOT NULL,
  `code` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `link` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `userid` varchar(300) COLLATE utf8_swedish_ci NOT NULL,
  `userkey` varchar(300) COLLATE utf8_swedish_ci NOT NULL,
  `usersecret` varchar(300) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `provider_portal`
--

INSERT INTO `provider_portal` (`id`, `code`, `link`, `userid`, `userkey`, `usersecret`) VALUES
(1, 'MCS', 'http://smm.panel-mcs.me/api/pulsa.php', '#', '#', '#');

-- --------------------------------------------------------

--
-- Table structure for table `register_key`
--

CREATE TABLE `register_key` (
  `id` int(11) NOT NULL,
  `register_key` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register_key`
--

INSERT INTO `register_key` (`id`, `register_key`, `status`) VALUES
(3, 'W23WWMALO1', 'Active'),
(4, 'QN9E76LBPX', 'Active'),
(5, 'YXVTG8X51M', 'Active'),
(6, '6PXXLGQ6BP', 'Active'),
(8, 'OQLQTGNHUH', 'Active'),
(9, '7DH5Z31T8F', 'Active'),
(10, 'W8TPYCRYGJ', 'Active'),
(11, 'WZY7Q6LN5L', 'Active'),
(12, 'RBYVRQ5KLL', 'Active');

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

INSERT INTO `services` (`id`, `sid`, `category`, `service`, `note`, `min`, `max`, `price`, `status`, `pid`, `provider`) VALUES
(1, 516, 'SM', 'Youtube Views [10M] [AUTO Refill 30days]', 'Auto Refill Every 24 Hours  Refill (30 Days Maximum) <br>30-60 second time watching ', 1000, 1000000, 10, 'Active', 516, 'SOSMED989'),
(2, 119, 'SM', 'Youtube Likes [5K] [R60] ', 'Put Link Of Video  Video must be more than 1 minute or order will not start ', 100, 5000, 12, 'Active', 119, 'SOSMED989'),
(3, 120, 'SM', 'Youtube DisLikes [5K] [R60] ', 'Put Link Of Video  Video must be more than 1 minute or order will not start ', 100, 5000, 12, 'Active', 120, 'SOSMED989'),
(4, 122, 'SM', 'Youtube Comment Likes [UPVOTES] [100K] [REAL] [R30] ', 'Put Link Of Comment (Not Video) ', 100, 1000000, 27, 'Active', 122, 'SOSMED989'),
(5, 124, 'SM', 'Youtube Comment DisLikes [DOWNVOTES] [100K] [REAL] [R30] ', 'Put Link Of Comment (Not Video) ', 100, 100000, 27, 'Active', 124, 'SOSMED989'),
(6, 123, 'SM', 'Youtube Shares [150K] [RÃƒÆ’Ã‚Â¢Ãƒâ€¹Ã¢â‚¬ Ãƒâ€¦Ã‚Â¾]', 'Put link video', 500, 1500000, 13, 'Active', 123, 'SOSMED989'),
(7, 363, 'SM', 'Telegram Channel Member (Public Channel)', 'Link Channel', 100, 25000, 42, 'Active', 363, 'SOSMED989'),
(8, 364, 'SM', 'Telegram Post Views [10K] [Last 5 Post] ', 'Link post Telegram', 100, 10000, 37, 'Active', 364, 'SOSMED989'),
(9, 532, 'SM', 'Instagram Live Video Views', '[ALWAYS WORKING]', 10, 3000, 34, 'Active', 532, 'SOSMED989'),
(10, 615, 'SM', 'Instagram Like & Impression', 'Cheapest In The Market <br>Best Service In The Market  Real ', 100, 10000, 4, 'Active', 615, 'SOSMED989'),
(11, 616, 'SM', 'Instagram Impression', 'Cheapest In market', 100, 50000, 3, 'Active', 616, 'SOSMED989'),
(12, 104, 'SM', 'Instagram Story Views [10k]', 'No Refill No Refund', 100, 10000, 9, 'Active', 104, 'SOSMED989'),
(13, 116, 'SM', 'Instagram Like Video Live', 'Link Video Live', 200, 10000, 8, 'Active', 116, 'SOSMED989'),
(14, 255, 'SM', 'Instagram Impression', 'No Refill No Refund', 500, 15000, 8.5, 'Active', 255, 'SOSMED989'),
(15, 488, 'SM', 'Youtube Views [Auto Refill 10 days]', '0-1 Hour Start <br> Random Rettentiom', 2000, 500000, 7.5, 'Active', 488, 'SOSMED989'),
(16, 559, 'SM', 'Youtube Views Real (Auto Refill 30 days)', '<li>100% Human Youtuber <li> 70%+ Retention up to 1 hour!  <li> 30 Days Refill Guarantee  <li>Auto refill every 24h ', 1000, 15000, 9, 'Active', 559, 'SOSMED989'),
(17, 358, 'SM', 'Facebook Live stream', 'Real  Instant Start!  30 Minutes Watch Time ', 100, 1000, 122, 'Active', 358, 'SOSMED989'),
(18, 561, 'SM', 'Youtube Fast Views', 'ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â¢ 100% Real Human YouTube Viewers!  ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â¢ 70%+ Retention up to 1 hour!  ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â¢ 30 Days Refill Guarantee ', 100, 250000, 9, 'Active', 561, 'SOSMED989'),
(19, 80, 'SM', 'Twitter Poll Votes [5k]', 'Link Example: www....com?vote=ButtonNumber ', 100, 5000, 16, 'Active', 80, 'SOSMED989'),
(20, 346, 'SM', 'Twitter Poll Votes [100k]', 'Link Example: www....com?vote=ButtonNumber ', 100, 100000, 42, 'Active', 346, 'SOSMED989'),
(21, 97, 'SM', 'Twitter Views [100k]', 'Auto Refill 30 days', 100, 100000, 9.5, 'Active', 97, 'SOSMED989'),
(22, 98, 'SM', 'Twitter Impressions [100k]', 'Auto Refill 30 days', 100, 100000, 9.5, 'Active', 98, 'SOSMED989'),
(23, 341, 'SM', 'Twitter Live Video Views', 'Instant start <br>15 Minit Watch Time', 100, 2000, 42, 'Active', 341, 'SOSMED989'),
(24, 452, 'SM', 'Musical.ly Followers [10K]', 'Username Only without ', 100, 10000, 52, 'Active', 452, 'SOSMED989'),
(25, 454, 'SM', 'Musical.ly Hearts [15K] ', 'Username Only without ', 50, 15000, 52, 'Active', 454, 'SOSMED989');

-- --------------------------------------------------------

--
-- Table structure for table `services_dm`
--

CREATE TABLE `services_dm` (
  `id` int(10) NOT NULL,
  `sid` int(10) NOT NULL,
  `category` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `type` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `service` text COLLATE utf8_swedish_ci NOT NULL,
  `price` double NOT NULL,
  `status` enum('Active','Not active') COLLATE utf8_swedish_ci NOT NULL,
  `pid` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `provider` varchar(50) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services_line`
--

CREATE TABLE `services_line` (
  `id` int(10) NOT NULL,
  `category` int(10) NOT NULL,
  `service` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services_pulsa`
--

CREATE TABLE `services_pulsa` (
  `id` int(10) NOT NULL,
  `sid` int(10) NOT NULL,
  `category` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `service` text COLLATE utf8_swedish_ci NOT NULL,
  `price` int(10) NOT NULL,
  `status` enum('Active','Not active') COLLATE utf8_swedish_ci NOT NULL,
  `pid` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `provider` varchar(50) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `services_pulsa`
--

INSERT INTO `services_pulsa` (`id`, `sid`, `category`, `type`, `service`, `price`, `status`, `pid`, `provider`) VALUES
(1, 1, '1', 'Pulsa', 'Tri 1K', 1000, 'Active', '3', 'PP'),
(2, 2, '19', 'Pulsa', 'Telkomsel 5K', 5000, 'Active', '5', 'PP');

-- --------------------------------------------------------

--
-- Table structure for table `services_pulsas`
--

CREATE TABLE `services_pulsas` (
  `id` int(10) NOT NULL,
  `sid` int(10) NOT NULL,
  `category` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `service` text COLLATE utf8_swedish_ci NOT NULL,
  `price` int(10) NOT NULL,
  `status` enum('Active','Not active') COLLATE utf8_swedish_ci NOT NULL,
  `pid` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `provider` varchar(50) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

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
(1, 'nstagram Followers', 'SM', 'Active'),
(2, 'Instagram Likes Worldwide', 'SM', 'Active'),
(3, 'Instagram Views / Video Live', 'SM', 'Active'),
(4, 'Instagram Like', 'SM', 'Active'),
(5, 'Twitter', 'SM', 'Active'),
(6, 'Spotify', 'SM', 'Active'),
(7, 'Vine', 'SM', 'Active'),
(8, 'Pinterest', 'SM', 'Active'),
(9, 'Youtube Like / Subscribe / Comment', 'SM', 'Active'),
(10, 'SoundCloud', 'SM', 'Active'),
(11, 'Spotify', 'SM', 'Active'),
(12, 'Musical.ly', 'SM', 'Active'),
(13, 'Telegram', 'SM', 'Active'),
(14, 'Instagram Follower Indonesia', 'SM', 'Active'),
(15, 'Pinterest', 'SM', 'Active'),
(16, 'Google', 'SM', 'Active'),
(17, 'Instagram Auto Like/View/Comments/Impression', 'SM', 'Active'),
(18, 'Instagram Follower (Warranty)', 'SM', 'Active'),
(19, 'Instagram Auto Like', 'SM', 'Active'),
(20, 'Instagram Like Indonesia', 'SM', 'Active'),
(21, 'Instagram Mention', 'SM', 'Active'),
(22, 'Instagram Story/Impression/Saves', 'SM', 'Active'),
(23, 'Facebook Post Likes/Comments/Share', 'SM', 'Active'),
(24, 'Facebook Website Likes', 'SM', 'Active'),
(25, 'Youtube Views/Live streaming/Dailymotion', 'SM', 'Active'),
(26, 'Website Traffic1', 'SM', 'Active'),

-- --------------------------------------------------------

--
-- Table structure for table `service_rate`
--

CREATE TABLE `service_rate` (
  `id` int(10) NOT NULL,
  `code` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `rate` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `profit` varchar(100) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(10) NOT NULL,
  `name` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `contact` varchar(1000) COLLATE utf8_swedish_ci NOT NULL,
  `level` enum('Admin','Reseller') COLLATE utf8_swedish_ci NOT NULL,
  `pict` text COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `name`, `contact`, `level`, `pict`) VALUES
(1, 'Cot', 'Ah', 'Admin', 'http://www.anawalls.com/images/animals/baby-cub-monkey.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(10) NOT NULL,
  `user` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `subject` varchar(200) COLLATE utf8_swedish_ci NOT NULL,
  `message` text COLLATE utf8_swedish_ci NOT NULL,
  `datetime` datetime NOT NULL,
  `last_update` datetime NOT NULL,
  `status` enum('Pending','Responded','Closed','Waiting') COLLATE utf8_swedish_ci NOT NULL,
  `seen_user` enum('0','1') COLLATE utf8_swedish_ci NOT NULL,
  `seen_admin` enum('0','1') COLLATE utf8_swedish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tickets_message`
--

CREATE TABLE `tickets_message` (
  `id` int(10) NOT NULL,
  `ticket_id` int(10) NOT NULL,
  `sender` enum('Member','Admin') COLLATE utf8_swedish_ci NOT NULL,
  `user` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `message` text COLLATE utf8_swedish_ci NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `top_user`
--

CREATE TABLE `top_user` (
  `id` int(11) NOT NULL,
  `method` enum('Deposit','Order') NOT NULL,
  `username` varchar(200) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `total` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transfer_balance`
--

CREATE TABLE `transfer_balance` (
  `id` int(10) NOT NULL,
  `sender` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `receiver` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `quantity` double NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `username` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `balance` double NOT NULL,
  `level` enum('Member','Agen','Reseller','Admin','Developers') COLLATE utf8_swedish_ci NOT NULL,
  `registered` date NOT NULL,
  `status` enum('Active','Suspended') COLLATE utf8_swedish_ci NOT NULL,
  `api_key` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `uplink` varchar(100) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `balance`, `level`, `registered`, `status`, `api_key`, `uplink`) VALUES
(2, 'mcspanel', 'demo', 'mcspanel@web.id', 1000000, 'Developers', '2018-05-28', 'Active', '.', 'Server'),
(6, 'Samrey', 'samrey', 'samreysteven91@gmail.com', 0, 'Member', '2018-06-08', 'Active', 'sbLSm4wpmqbyxAOYWv8E', 'Server');

-- --------------------------------------------------------

--
-- Table structure for table `userss`
--

CREATE TABLE `userss` (
  `id` int(10) NOT NULL,
  `username` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `balance` double NOT NULL,
  `level` enum('Member','Agen','Reseller','Admin','Developers') COLLATE utf8_swedish_ci NOT NULL,
  `registered` date NOT NULL,
  `status` enum('Active','Suspended') COLLATE utf8_swedish_ci NOT NULL,
  `api_key` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `uplink` varchar(100) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `balance_history`
--
ALTER TABLE `balance_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposit`
--
ALTER TABLE `deposit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits_history`
--
ALTER TABLE `deposits_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposit_method`
--
ALTER TABLE `deposit_method`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ip`
--
ALTER TABLE `ip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_dm`
--
ALTER TABLE `orders_dm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_line`
--
ALTER TABLE `orders_line`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_pulsa`
--
ALTER TABLE `orders_pulsa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesan_tsel`
--
ALTER TABLE `pesan_tsel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provider`
--
ALTER TABLE `provider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provider_portal`
--
ALTER TABLE `provider_portal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register_key`
--
ALTER TABLE `register_key`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services_dm`
--
ALTER TABLE `services_dm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services_line`
--
ALTER TABLE `services_line`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services_pulsa`
--
ALTER TABLE `services_pulsa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services_pulsas`
--
ALTER TABLE `services_pulsas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_cat`
--
ALTER TABLE `service_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_rate`
--
ALTER TABLE `service_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets_message`
--
ALTER TABLE `tickets_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `top_user`
--
ALTER TABLE `top_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfer_balance`
--
ALTER TABLE `transfer_balance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userss`
--
ALTER TABLE `userss`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `balance_history`
--
ALTER TABLE `balance_history`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deposit`
--
ALTER TABLE `deposit`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `deposits_history`
--
ALTER TABLE `deposits_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deposit_method`
--
ALTER TABLE `deposit_method`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `ip`
--
ALTER TABLE `ip`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders_dm`
--
ALTER TABLE `orders_dm`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders_line`
--
ALTER TABLE `orders_line`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders_pulsa`
--
ALTER TABLE `orders_pulsa`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pesan_tsel`
--
ALTER TABLE `pesan_tsel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `provider`
--
ALTER TABLE `provider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `provider_portal`
--
ALTER TABLE `provider_portal`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `register_key`
--
ALTER TABLE `register_key`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services_dm`
--
ALTER TABLE `services_dm`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services_line`
--
ALTER TABLE `services_line`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services_pulsa`
--
ALTER TABLE `services_pulsa`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services_pulsas`
--
ALTER TABLE `services_pulsas`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_cat`
--
ALTER TABLE `service_cat`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tickets_message`
--
ALTER TABLE `tickets_message`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `top_user`
--
ALTER TABLE `top_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transfer_balance`
--
ALTER TABLE `transfer_balance`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `userss`
--
ALTER TABLE `userss`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

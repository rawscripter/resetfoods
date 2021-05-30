-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 29, 2018 at 09:35 PM
-- Server version: 5.6.32-78.1
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `k8v6q7u7_resetfoodv3`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank_details`
--

CREATE TABLE IF NOT EXISTS `bank_details` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `bank_detail` text COLLATE utf8_unicode_ci NOT NULL,
  `supplier_post_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `buyer_post_id` int(11) NOT NULL,
  `type` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` float NOT NULL,
  `allocation_id` int(11) NOT NULL,
  `buyer_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `allocation` float NOT NULL,
  `buyer_price` float NOT NULL,
  `supplier_price` float NOT NULL,
  `buyer_total` float NOT NULL,
  `supplier_total` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `buyer_posts`
--

CREATE TABLE IF NOT EXISTS `buyer_posts` (
  `buyer_post_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `expiry` date NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` varchar(40) NOT NULL DEFAULT 'pending',
  `rating` int(11) NOT NULL,
  `duration` varchar(40) NOT NULL,
  `price` float NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `category_id` int(11) NOT NULL,
  `remaning_days` varchar(40) NOT NULL,
  `search_keywords` text NOT NULL,
  `is_email` int(11) NOT NULL DEFAULT '0',
  `from_supplier_id` int(11) NOT NULL,
  `expiry2` varchar(255) NOT NULL,
  `delivery_window` datetime NOT NULL,
  `buyer_bid` float NOT NULL,
  `buyer_bid_quantity` varchar(100) NOT NULL,
  `buyer_bid_comment` varchar(600) NOT NULL,
  `supplier_post_id` int(11) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `is_low_bid` tinyint(1) NOT NULL DEFAULT '0',
  `delivery_window_to` datetime NOT NULL,
  `payment_status` varchar(255) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buyer_posts`
--

INSERT INTO `buyer_posts` (`buyer_post_id`, `product_id`, `user_id`, `expiry`, `quantity`, `status`, `rating`, `duration`, `price`, `created_at`, `updated_at`, `category_id`, `remaning_days`, `search_keywords`, `is_email`, `from_supplier_id`, `expiry2`, `delivery_window`, `buyer_bid`, `buyer_bid_quantity`, `buyer_bid_comment`, `supplier_post_id`, `sku`, `is_low_bid`, `delivery_window_to`, `payment_status`) VALUES
(1, 0, 2, '2017-12-16', 12, 'pending', 0, '', 10.0275, '2017-11-28 00:54:05', '2017-11-28 00:54:05', 0, '', '', 0, 0, '', '0000-00-00 00:00:00', 1650, '12', 'aaaa', 1, '1', 0, '0000-00-00 00:00:00', 'pending'),
(2, 0, 2, '2017-12-16', 12, 'accepted', 0, '', 10.0275, '2017-11-28 00:54:46', '2017-11-28 01:45:05', 0, '', '', 0, 0, '', '0000-00-00 00:00:00', 1000, '10', 'bbb', 2, '2', 0, '0000-00-00 00:00:00', 'pending'),
(3, 0, 2, '2017-12-16', 12, 'pending', 0, '', 10.0275, '2017-11-28 00:55:27', '2017-11-28 00:55:27', 0, '', '', 0, 0, '', '0000-00-00 00:00:00', 1300, '2', 'ccc', 3, '3', 0, '0000-00-00 00:00:00', 'pending'),
(4, 0, 11, '2017-12-16', 12, 'pending', 0, '', 10.0275, '2017-11-28 00:57:42', '2017-11-28 00:57:42', 0, '', '', 0, 0, '', '0000-00-00 00:00:00', 1200, '8', 'ddd', 1, '1', 0, '0000-00-00 00:00:00', 'pending'),
(5, 0, 11, '2017-12-16', 12, 'Declined', 0, '', 10.0275, '2017-11-28 00:58:12', '2017-11-28 00:58:12', 0, '', '', 0, 0, '', '0000-00-00 00:00:00', 970, '10', 'eee', 2, '2', 0, '0000-00-00 00:00:00', 'pending'),
(6, 0, 11, '2017-12-16', 12, 'pending', 0, '', 10.0275, '2017-11-28 00:58:46', '2017-11-28 00:58:46', 0, '', '', 0, 0, '', '0000-00-00 00:00:00', 600, '1', 'ff', 3, '3', 0, '0000-00-00 00:00:00', 'pending'),
(7, 0, 2, '2017-12-16', 12, 'accepted', 0, '', 10.0275, '2017-12-09 17:58:47', '2017-12-09 18:01:05', 0, '', '', 0, 0, '', '0000-00-00 00:00:00', 1000, '6', 'like it', 7, '7', 0, '0000-00-00 00:00:00', 'pending'),
(8, 0, 2, '2017-12-16', 12, 'accepted', 0, '', 10.0275, '2017-12-14 02:38:39', '2017-12-14 02:40:32', 0, '', '', 0, 0, '', '0000-00-00 00:00:00', 1000, '11', '', 73, '73', 0, '0000-00-00 00:00:00', 'Completed'),
(9, 0, 2, '2017-12-16', 106, 'pending', 0, '', 1.975, '2017-12-16 18:51:56', '2017-12-16 18:51:56', 0, '', '', 0, 0, '', '0000-00-00 00:00:00', 15, '100', 'test', 75, '75', 0, '0000-00-00 00:00:00', 'pending'),
(10, 0, 2, '2017-11-18', 74, 'accepted', 0, '', 0.78375, '2017-12-17 05:07:13', '2017-12-17 05:10:09', 0, '', '', 0, 0, '', '0000-00-00 00:00:00', 11.41, '50', 'raj', 78, '78', 0, '0000-00-00 00:00:00', 'Completed'),
(11, 0, 2, '2017-12-16', 12, 'pending', 0, '', 10.0275, '2017-12-21 03:31:36', '2017-12-21 03:31:36', 0, '', '', 0, 0, '', '0000-00-00 00:00:00', 905, '10', 'a', 86, '86', 0, '0000-00-00 00:00:00', 'pending'),
(12, 0, 34, '2017-12-16', 12, 'pending', 0, '', 10.0275, '2017-12-28 13:49:52', '2017-12-28 13:49:52', 0, '', '', 0, 0, '', '0000-00-00 00:00:00', 1000, '12', 'first comment', 96, '96', 0, '0000-00-00 00:00:00', 'pending'),
(13, 0, 2, '2018-01-18', 1169, 'pending', 0, '', 3.9225, '2018-03-08 02:56:58', '2018-03-08 02:56:58', 0, '', '', 0, 0, '', '0000-00-00 00:00:00', 888, '1,166', 'jghjg', 100, '100', 0, '0000-00-00 00:00:00', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_description` text NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `distribution_estrictions`
--

CREATE TABLE IF NOT EXISTS `distribution_estrictions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE IF NOT EXISTS `documents` (
  `id` int(11) NOT NULL,
  `supplier_post_id` int(11) NOT NULL,
  `file_name` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `actual_file_name` text NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `expiry`
--

CREATE TABLE IF NOT EXISTS `expiry` (
  `id` int(11) NOT NULL,
  `expiry_value` int(11) NOT NULL,
  `expiry` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `expiry`
--

INSERT INTO `expiry` (`id`, `expiry_value`, `expiry`, `created_at`, `updated_at`) VALUES
(1, 0, '0', '2017-07-25 08:04:35', '2017-07-25 08:04:35'),
(2, 2, 'Still Good - few days', '2017-07-25 08:04:35', '2017-07-25 08:04:35'),
(3, 3, '3+ days', '2017-07-25 08:04:35', '2017-07-25 08:04:35'),
(4, 4, '4', '2017-07-25 08:04:35', '2017-07-25 08:04:35'),
(5, 5, '5', '2017-07-25 08:04:35', '2017-07-25 08:04:35'),
(6, 6, '6', '2017-07-25 08:04:35', '2017-07-25 08:04:35'),
(7, 7, '1+ week ', '2017-07-25 08:04:35', '2017-07-25 08:04:35'),
(8, 8, '8', '2017-07-25 08:04:35', '2017-07-25 08:04:35'),
(9, 9, '9', '2017-07-25 08:04:35', '2017-07-25 08:04:35'),
(10, 10, '10', '2017-07-25 08:04:35', '2017-07-25 08:04:35'),
(11, 11, '11', '2017-07-25 08:04:35', '2017-07-25 08:04:35'),
(12, 12, '12', '2017-07-25 08:04:35', '2017-07-25 08:04:35'),
(13, 13, '13', '2017-07-25 08:04:35', '2017-07-25 08:04:35'),
(14, 14, '2+week', '2017-07-25 08:04:35', '2017-07-25 08:04:35'),
(15, 15, '15', '2017-07-25 08:04:35', '2017-07-25 08:04:35'),
(16, 16, '16', '2017-07-25 08:04:35', '2017-07-25 08:04:35'),
(17, 17, '17', '2017-07-25 08:04:35', '2017-07-25 08:04:35'),
(18, 18, '18', '2017-07-25 08:04:35', '2017-07-25 08:04:35'),
(19, 19, '19', '2017-07-25 08:04:35', '2017-07-25 08:04:35'),
(20, 20, '20', '2017-07-25 08:04:35', '2017-07-25 08:04:35'),
(21, 21, '3+week', '2017-07-25 08:04:35', '2017-07-25 08:04:35'),
(22, 22, '22', '2017-07-25 08:04:35', '2017-07-25 08:04:35'),
(23, 23, '23', '2017-07-25 08:04:35', '2017-07-25 08:04:35'),
(24, 24, '24', '2017-07-25 08:04:35', '2017-07-25 08:04:35'),
(25, 25, '25', '2017-07-25 08:04:35', '2017-07-25 08:04:35'),
(26, 26, '26', '2017-07-25 08:04:35', '2017-07-25 08:04:35'),
(27, 27, '27', '2017-07-25 08:04:35', '2017-07-25 08:04:35'),
(28, 28, '4 weeks +', '2017-07-25 08:04:35', '2017-07-25 08:04:35'),
(29, 29, '29', '2017-07-25 08:04:35', '2017-07-25 08:04:35'),
(30, 30, '30+', '2017-07-25 08:04:35', '2017-07-25 08:04:35'),
(31, 60, '60+', '2017-07-25 08:04:35', '2017-07-25 08:04:35'),
(32, 90, '90+', '2017-07-25 08:04:35', '2017-07-25 08:04:35');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE IF NOT EXISTS `notifications` (
  `id` int(11) NOT NULL,
  `notification_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `allocation_id` int(11) NOT NULL,
  `notification_content` text COLLATE utf8_unicode_ci NOT NULL,
  `buyer_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `status` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unread',
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `associate_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `notification_title`, `allocation_id`, `notification_content`, `buyer_id`, `supplier_id`, `status`, `updated_at`, `created_at`, `user_id`, `associate_id`, `type`) VALUES
(1, 'Buyer Bid', 0, 'Jim (Buyer) Bid Your Post', 2, 3, 'read', '2017-11-28 00:54:05', '2017-11-28 00:54:05', 3, 1, 'Buyer Bid'),
(2, 'Buyer Bid', 0, 'Jim (Buyer) Bid Your Post', 2, 3, 'read', '2017-11-28 00:54:46', '2017-11-28 00:54:46', 3, 2, 'Buyer Bid'),
(3, 'Buyer Bid', 0, 'Jim (Buyer) Bid Your Post', 2, 3, 'read', '2017-11-28 00:55:27', '2017-11-28 00:55:27', 3, 3, 'Buyer Bid'),
(4, 'Buyer Bid', 0, 'Jim (Buyer) Bid Your Post', 11, 3, 'read', '2017-11-28 00:57:42', '2017-11-28 00:57:42', 3, 4, 'Buyer Bid'),
(5, 'Buyer Bid', 0, 'Jim (Buyer) Bid Your Post', 11, 3, 'read', '2017-11-28 00:58:12', '2017-11-28 00:58:12', 3, 5, 'Buyer Bid'),
(6, 'Buyer Bid', 0, 'Jim (Buyer) Bid Your Post', 11, 3, 'read', '2017-11-28 00:58:46', '2017-11-28 00:58:46', 3, 6, 'Buyer Bid'),
(7, 'Allocation Accept', 1, 'Geoff (Supplier) accepted The Allocation', 2, 3, 'unread', '2017-11-28 01:45:05', '2017-11-28 01:45:05', 2, 0, ''),
(8, 'Buyer Bid', 0, 'Jim (Buyer) Bid Your Post', 2, 3, 'read', '2017-12-09 17:58:47', '2017-12-09 17:58:47', 3, 7, 'Buyer Bid'),
(9, 'Allocation Accept', 2, 'Geoff (Supplier) accepted The Allocation', 2, 3, 'unread', '2017-12-09 18:01:05', '2017-12-09 18:01:05', 2, 0, ''),
(10, 'Buyer Bid', 0, 'Jim (Buyer) Bid Your Post', 2, 3, 'read', '2017-12-14 02:38:39', '2017-12-14 02:38:39', 3, 8, 'Buyer Bid'),
(11, 'Allocation Accept', 3, 'Geoff (Supplier) accepted The Allocation', 2, 3, 'unread', '2017-12-14 02:40:32', '2017-12-14 02:40:32', 2, 0, ''),
(12, 'Buyer Bid', 0, 'Jim (Buyer) Bid Your Post', 2, 3, 'read', '2017-12-16 18:51:56', '2017-12-16 18:51:56', 3, 9, 'Buyer Bid'),
(13, 'Buyer Bid', 0, 'Jim (Buyer) Bid Your Post', 2, 3, 'read', '2017-12-17 05:07:13', '2017-12-17 05:07:13', 3, 10, 'Buyer Bid'),
(14, 'Allocation Accept', 4, 'Geoff (Supplier) accepted The Allocation', 2, 3, 'unread', '2017-12-17 05:10:09', '2017-12-17 05:10:09', 2, 0, ''),
(15, 'Buyer Bid', 0, 'Jim (Buyer) Bid Your Post', 2, 3, 'unread', '2017-12-21 03:31:36', '2017-12-21 03:31:36', 3, 11, 'Buyer Bid'),
(16, 'Buyer Bid', 0, 'sam (Buyer) Bid Your Post', 34, 3, 'unread', '2017-12-28 13:49:52', '2017-12-28 13:49:52', 3, 12, 'Buyer Bid'),
(17, 'Buyer Bid', 0, 'Jim (Buyer) Bid Your Post', 2, 3, 'unread', '2018-03-08 02:56:58', '2018-03-08 02:56:58', 3, 13, 'Buyer Bid');

-- --------------------------------------------------------

--
-- Table structure for table `pools`
--

CREATE TABLE IF NOT EXISTS `pools` (
  `id` int(11) NOT NULL,
  `pool_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `distance` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `pool_type` int(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pools`
--

INSERT INTO `pools` (`id`, `pool_name`, `created_at`, `updated_at`, `distance`, `pool_type`) VALUES
(1, 'Pool 1', '2017-09-05 11:38:26', '2017-09-05 11:41:26', '100', 2),
(2, 'Pool 2', '2017-09-05 11:38:42', '2017-09-05 11:41:18', '200', 2),
(3, 'Pool 3', '2017-09-05 11:43:06', '2017-09-05 11:43:06', '300', 2),
(4, 'Pool 4', '2017-09-05 11:43:24', '2017-09-05 11:43:24', '400', 2),
(5, 'Pool 5', '2017-09-05 11:43:47', '2017-09-05 11:43:47', '500', 2),
(7, 'Pool 6', '2017-09-07 13:32:33', '2017-09-07 13:32:33', '600', 2),
(8, 'Unlimited Distance', '2017-09-16 10:37:31', '2017-09-25 15:25:26', '0', 2),
(12, 'Confectionary', '2017-09-21 13:48:06', '2017-09-25 15:24:52', '0', 1),
(13, 'Meat', '2017-09-21 13:48:19', '2017-09-21 13:48:19', '0', 1),
(14, 'Dairy', '2017-09-21 13:48:29', '2017-09-21 13:48:29', '0', 1),
(15, 'Poultry', '2017-09-21 13:48:39', '2017-09-21 13:48:39', '0', 1),
(16, 'Fish', '2017-09-21 13:48:49', '2017-09-21 13:48:49', '0', 1),
(17, 'All Preferences', '2017-09-21 13:50:59', '2017-09-25 15:25:08', '0', 1),
(18, 'Buyer Pool 1', '2017-09-21 13:51:33', '2017-09-25 09:59:41', '0', 3),
(20, 'Fruit and Vegitables', '2017-09-25 15:47:56', '2017-09-25 15:48:50', '0', 1),
(21, 'gta', '2017-09-26 13:31:14', '2017-09-26 13:31:14', '0', 3);

-- --------------------------------------------------------

--
-- Table structure for table `preferences`
--

CREATE TABLE IF NOT EXISTS `preferences` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `preferences`
--

INSERT INTO `preferences` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'All', '2017-09-18 10:13:37', '2017-09-18 10:13:37'),
(2, 'Confectionary', '2017-09-18 10:13:46', '2017-09-18 10:13:52'),
(4, 'Meat', '2017-09-18 10:17:06', '2017-09-18 10:17:06'),
(5, 'Dairy', '2017-09-18 10:17:14', '2017-09-18 10:17:14'),
(6, 'Poultry', '2017-09-18 10:17:22', '2017-09-18 10:17:22'),
(7, 'Fish', '2017-09-18 10:17:30', '2017-09-18 10:17:30');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_description` text NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_tags` text NOT NULL,
  `type` varchar(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_tags`
--

CREATE TABLE IF NOT EXISTS `product_tags` (
  `id` int(11) NOT NULL,
  `product_tag_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) NOT NULL,
  `setting_name` text NOT NULL,
  `setting_description` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `price` text NOT NULL,
  `remainingdays` text NOT NULL,
  `quantity` text NOT NULL,
  `duration` text NOT NULL,
  `pool` text NOT NULL,
  `bank_detail` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `setting_name`, `setting_description`, `created_at`, `updated_at`, `price`, `remainingdays`, `quantity`, `duration`, `pool`, `bank_detail`) VALUES
(2, 'product_detail', '', '2017-06-30 00:00:00', '2017-09-30 18:42:03', '45', '0,Still Good - few days,3+ days,4,5,6,1+ week ,8,9,10,11,12,13,2+week,15,16,17,18,19,20,3+week,22,23,24,25,26,27,28,29,30+,60+,90+', '', '6,1,24,36', 'Dairy,Pool 1,Pool 2,Pool 3,Pool 5', 'Bank Name: PNB UK\r\nAc- 00001111222233335555\r\nBranch: Uk.\r\nIFSC Code: pnbuk001.\r\nName- Admin resetfood.');

-- --------------------------------------------------------

--
-- Table structure for table `sku`
--

CREATE TABLE IF NOT EXISTS `sku` (
  `id` int(11) NOT NULL,
  `sku` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `is_use` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sku`
--

INSERT INTO `sku` (`id`, `sku`, `created_at`, `updated_at`, `is_use`, `created_by`) VALUES
(1, '602000019300', '2017-11-28 00:45:31', '2017-11-28 00:45:31', '1', 3),
(2, '602000019300', '2017-11-28 00:45:31', '2017-11-28 00:45:31', '1', 3),
(3, '602000019300', '2017-11-28 00:45:32', '2017-11-28 00:45:32', '1', 3),
(4, '570000037100', '2017-12-01 16:31:23', '2017-12-01 16:31:23', '1', 3),
(5, '602000019300', '2017-12-02 05:58:34', '2017-12-02 05:58:34', '1', 3),
(6, '681008997900', '2017-12-08 01:55:30', '2017-12-08 01:55:30', '1', 3),
(7, '602000019300', '2017-12-09 17:55:52', '2017-12-09 17:55:52', '1', 3),
(8, '681000842700', '2017-12-09 17:55:53', '2017-12-09 17:55:53', '1', 3),
(9, '681000845900', '2017-12-09 17:55:54', '2017-12-09 17:55:54', '1', 3),
(10, '681008997800', '2017-12-09 17:55:55', '2017-12-09 17:55:55', '1', 3),
(11, '681008997800', '2017-12-09 17:55:56', '2017-12-09 17:55:56', '1', 3),
(12, '681008997900', '2017-12-09 17:55:57', '2017-12-09 17:55:57', '1', 3),
(13, '681008997900', '2017-12-09 17:55:58', '2017-12-09 17:55:58', '1', 3),
(14, '570000060000', '2017-12-09 17:55:59', '2017-12-09 17:55:59', '1', 3),
(15, '570000374400', '2017-12-09 17:56:00', '2017-12-09 17:56:00', '1', 3),
(16, '570000374500', '2017-12-09 17:56:02', '2017-12-09 17:56:02', '1', 3),
(17, '467041684000', '2017-12-09 17:56:05', '2017-12-09 17:56:05', '1', 3),
(18, '570000366600', '2017-12-09 17:56:06', '2017-12-09 17:56:06', '1', 3),
(19, '570000366700', '2017-12-09 17:56:07', '2017-12-09 17:56:07', '1', 3),
(20, '570000366700', '2017-12-09 17:56:09', '2017-12-09 17:56:09', '1', 3),
(21, '570000037100', '2017-12-09 17:56:10', '2017-12-09 17:56:10', '1', 3),
(22, '570000037100', '2017-12-09 17:56:11', '2017-12-09 17:56:11', '1', 3),
(23, '570000068600', '2017-12-09 17:56:12', '2017-12-09 17:56:12', '1', 3),
(24, '570000026700', '2017-12-09 17:56:13', '2017-12-09 17:56:13', '1', 3),
(25, '570000296200', '2017-12-09 17:56:14', '2017-12-09 17:56:14', '1', 3),
(26, '570000340800', '2017-12-09 17:56:16', '2017-12-09 17:56:16', '1', 3),
(27, '570000353300', '2017-12-09 17:56:17', '2017-12-09 17:56:17', '1', 3),
(28, '570000353500', '2017-12-09 17:56:18', '2017-12-09 17:56:18', '1', 3),
(29, '570000353800', '2017-12-09 17:56:19', '2017-12-09 17:56:19', '1', 3),
(30, '570000354400', '2017-12-09 17:56:20', '2017-12-09 17:56:20', '1', 3),
(31, '570000355800', '2017-12-09 17:56:21', '2017-12-09 17:56:21', '1', 3),
(32, '570000343900', '2017-12-09 17:56:22', '2017-12-09 17:56:22', '1', 3),
(33, '570000343900', '2017-12-09 17:56:24', '2017-12-09 17:56:24', '1', 3),
(34, '681000069300', '2017-12-09 17:56:26', '2017-12-09 17:56:26', '1', 3),
(35, '681008935800', '2017-12-09 17:56:27', '2017-12-09 17:56:27', '1', 3),
(36, '681008935800', '2017-12-09 17:56:28', '2017-12-09 17:56:28', '1', 3),
(37, '661880043700', '2017-12-09 17:56:29', '2017-12-09 17:56:29', '1', 3),
(38, '622870520000', '2017-12-09 17:56:30', '2017-12-09 17:56:30', '1', 3),
(39, '622870521300', '2017-12-09 17:56:31', '2017-12-09 17:56:31', '1', 3),
(40, '622871120200', '2017-12-09 17:56:32', '2017-12-09 17:56:32', '1', 3),
(41, '622871120600', '2017-12-09 17:56:33', '2017-12-09 17:56:33', '1', 3),
(42, '622871120900', '2017-12-09 17:56:34', '2017-12-09 17:56:34', '1', 3),
(43, '622872120400', '2017-12-09 17:56:35', '2017-12-09 17:56:35', '1', 3),
(44, '622873120700', '2017-12-09 17:56:37', '2017-12-09 17:56:37', '1', 3),
(45, '622875651000', '2017-12-09 17:56:38', '2017-12-09 17:56:38', '1', 3),
(46, '622875663800', '2017-12-09 17:56:39', '2017-12-09 17:56:39', '1', 3),
(47, '622875664700', '2017-12-09 17:56:40', '2017-12-09 17:56:40', '1', 3),
(48, '622876120400', '2017-12-09 17:56:41', '2017-12-09 17:56:41', '1', 3),
(49, '622876121100', '2017-12-09 17:56:43', '2017-12-09 17:56:43', '1', 3),
(50, '622876121300', '2017-12-09 17:56:45', '2017-12-09 17:56:45', '1', 3),
(51, '622876121900', '2017-12-09 17:56:46', '2017-12-09 17:56:46', '1', 3),
(52, '622878120300', '2017-12-09 17:56:47', '2017-12-09 17:56:47', '1', 3),
(53, '622878120400', '2017-12-09 17:56:48', '2017-12-09 17:56:48', '1', 3),
(54, '622878120500', '2017-12-09 17:56:49', '2017-12-09 17:56:49', '1', 3),
(55, '622878120600', '2017-12-09 17:56:50', '2017-12-09 17:56:50', '1', 3),
(56, '661880039800', '2017-12-09 17:56:51', '2017-12-09 17:56:51', '1', 3),
(57, '661880045600', '2017-12-09 17:56:52', '2017-12-09 17:56:52', '1', 3),
(58, '681000410200', '2017-12-09 17:56:54', '2017-12-09 17:56:54', '1', 3),
(59, '681009001700', '2017-12-09 17:56:55', '2017-12-09 17:56:55', '1', 3),
(60, '681000012400', '2017-12-09 17:56:56', '2017-12-09 17:56:56', '1', 3),
(61, '681008944500', '2017-12-09 17:56:57', '2017-12-09 17:56:57', '1', 3),
(62, '681008994500', '2017-12-09 17:56:58', '2017-12-09 17:56:58', '1', 3),
(63, '681008999400', '2017-12-09 17:56:59', '2017-12-09 17:56:59', '1', 3),
(64, '681000024200', '2017-12-09 17:57:00', '2017-12-09 17:57:00', '1', 3),
(65, '681000029900', '2017-12-09 17:57:01', '2017-12-09 17:57:01', '1', 3),
(66, '681000248200', '2017-12-09 17:57:04', '2017-12-09 17:57:04', '1', 3),
(67, '681000304800', '2017-12-09 17:57:05', '2017-12-09 17:57:05', '1', 3),
(68, '681008946800', '2017-12-09 17:57:07', '2017-12-09 17:57:07', '1', 3),
(69, '681008947600', '2017-12-09 17:57:08', '2017-12-09 17:57:08', '1', 3),
(70, '681008998900', '2017-12-09 17:57:09', '2017-12-09 17:57:09', '1', 3),
(71, '681008998900', '2017-12-09 17:57:10', '2017-12-09 17:57:10', '1', 3),
(72, '681008937000', '2017-12-09 17:57:12', '2017-12-09 17:57:12', '1', 3),
(73, '602000019300', '2017-12-14 02:36:31', '2017-12-14 02:36:31', '1', 3),
(74, '681000024700', '2017-12-14 02:36:33', '2017-12-14 02:36:33', '1', 3),
(75, '622873120700', '2017-12-16 18:50:13', '2017-12-16 18:50:13', '1', 3),
(76, '681000024600', '2017-12-16 18:50:15', '2017-12-16 18:50:15', '1', 3),
(77, '681000024700', '2017-12-16 18:50:18', '2017-12-16 18:50:18', '1', 3),
(78, '570000353500', '2017-12-17 05:03:06', '2017-12-17 05:03:06', '1', 3),
(79, '681008944500', '2017-12-17 05:03:08', '2017-12-17 05:03:08', '1', 3),
(80, '681008994500', '2017-12-17 05:03:09', '2017-12-17 05:03:09', '1', 3),
(81, '681008999400', '2017-12-17 05:03:10', '2017-12-17 05:03:10', '1', 3),
(82, '681000024400', '2017-12-17 05:04:46', '2017-12-17 05:04:46', '1', 3),
(83, '681000024700', '2017-12-17 05:04:47', '2017-12-17 05:04:47', '1', 3),
(84, '681000024700', '2017-12-19 07:38:39', '2017-12-19 07:38:39', '1', 3),
(85, '681000024700', '2017-12-19 07:38:40', '2017-12-19 07:38:40', '1', 3),
(86, '602000019300', '2017-12-21 03:29:22', '2017-12-21 03:29:22', '1', 3),
(87, '681000842700', '2017-12-21 03:29:23', '2017-12-21 03:29:23', '1', 3),
(88, '681000845900', '2017-12-21 03:29:24', '2017-12-21 03:29:24', '1', 3),
(89, '681000024600', '2017-12-21 03:29:27', '2017-12-21 03:29:27', '1', 3),
(90, '681000024700', '2017-12-21 03:29:28', '2017-12-21 03:29:28', '1', 3),
(91, '681008998900', '2017-12-21 10:30:55', '2017-12-21 10:30:55', '1', 3),
(92, '681008937000', '2017-12-21 10:30:56', '2017-12-21 10:30:56', '1', 3),
(93, '681000024400', '2017-12-21 10:30:57', '2017-12-21 10:30:57', '1', 3),
(94, '681000024600', '2017-12-21 10:30:59', '2017-12-21 10:30:59', '1', 3),
(95, '681000024700', '2017-12-21 10:31:00', '2017-12-21 10:31:00', '1', 3),
(96, '602000019300', '2017-12-28 13:34:21', '2017-12-28 13:34:21', '1', 3),
(97, '681000024400', '2017-12-28 13:47:02', '2017-12-28 13:47:02', '1', 3),
(98, '681000024600', '2017-12-28 13:47:04', '2017-12-28 13:47:04', '1', 3),
(99, '681000024700', '2017-12-28 13:47:05', '2017-12-28 13:47:05', '1', 3),
(100, '681000024600', '2018-03-08 02:54:03', '2018-03-08 02:54:03', '1', 3),
(101, '111', '2018-03-08 02:54:04', '2018-03-08 02:54:04', '1', 3),
(102, '11', '2018-03-09 06:12:15', '2018-03-09 06:12:15', '1', 3);

-- --------------------------------------------------------

--
-- Table structure for table `supplier_allocations`
--

CREATE TABLE IF NOT EXISTS `supplier_allocations` (
  `id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `buyer_id` int(11) NOT NULL,
  `buyer_post_id` int(11) NOT NULL,
  `is_other_post` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `buyer_other_post_id` int(11) NOT NULL,
  `allocation` float NOT NULL,
  `requried_quantity` float NOT NULL,
  `reallocation` float NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_id` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `supplier_post_id` int(11) NOT NULL,
  `supplier_other_post_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_email_sent` int(11) NOT NULL DEFAULT '0',
  `is_allocation_email` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `rating` int(11) NOT NULL,
  `comments` text COLLATE utf8_unicode_ci NOT NULL,
  `sku` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `buyer_bid` float NOT NULL,
  `payment_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending'
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `supplier_allocations`
--

INSERT INTO `supplier_allocations` (`id`, `supplier_id`, `buyer_id`, `buyer_post_id`, `is_other_post`, `buyer_other_post_id`, `allocation`, `requried_quantity`, `reallocation`, `category_id`, `product_id`, `product_name`, `supplier_post_id`, `supplier_other_post_id`, `created_at`, `updated_at`, `status`, `is_email_sent`, `is_allocation_email`, `parent_id`, `rating`, `comments`, `sku`, `buyer_bid`, `payment_status`) VALUES
(1, 3, 2, 2, '0', 0, 12, 12, 0, 0, '', '', 2, 0, '2017-11-28 01:45:05', '2017-11-28 01:45:05', 'accepted', 1, 1, 0, 0, '', '2', 1000, 'pending'),
(2, 3, 2, 7, '0', 0, 12, 12, 0, 0, '', '', 7, 0, '2017-12-09 18:01:05', '2017-12-09 18:01:05', 'accepted', 1, 1, 0, 0, '', '7', 1000, 'pending'),
(3, 3, 2, 8, '0', 0, 12, 12, 0, 0, '', '', 73, 0, '2017-12-14 02:40:32', '2017-12-16 18:57:57', 'accepted', 1, 1, 0, 0, '', '73', 1000, 'Completed'),
(4, 3, 2, 10, '0', 0, 74, 74, 0, 0, '', '', 78, 0, '2017-12-17 05:10:09', '2017-12-17 05:11:22', 'accepted', 1, 1, 0, 0, '', '78', 11.41, 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_posts`
--

CREATE TABLE IF NOT EXISTS `supplier_posts` (
  `supplier_post_id` int(11) NOT NULL,
  `price` float NOT NULL,
  `status` varchar(40) NOT NULL DEFAULT 'pending',
  `quantity` int(11) NOT NULL,
  `order_duration` varchar(40) NOT NULL,
  `rating` int(11) NOT NULL,
  `destribution_restrictions` int(11) NOT NULL,
  `images` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `unit_per_case` int(11) NOT NULL DEFAULT '0',
  `net_weight` float NOT NULL DEFAULT '0',
  `list_price` float NOT NULL DEFAULT '0',
  `per_case_price` float NOT NULL DEFAULT '0',
  `item` text NOT NULL,
  `category` varchar(400) NOT NULL,
  `supplier_type` varchar(40) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `product_id` int(11) NOT NULL,
  `search_keywords` text NOT NULL,
  `expiry` date NOT NULL,
  `expiry2` varchar(255) NOT NULL,
  `des_keywords` text NOT NULL,
  `pool` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `product_location` varchar(255) NOT NULL,
  `delivery_window` datetime NOT NULL,
  `is_allocation` int(11) NOT NULL DEFAULT '0',
  `delivery_service` varchar(255) NOT NULL,
  `delivery_location` varchar(255) NOT NULL,
  `description2` text NOT NULL,
  `geo_boundary` varchar(255) NOT NULL,
  `file_name` text NOT NULL,
  `delivery_window_to` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier_posts`
--

INSERT INTO `supplier_posts` (`supplier_post_id`, `price`, `status`, `quantity`, `order_duration`, `rating`, `destribution_restrictions`, `images`, `user_id`, `description`, `unit_per_case`, `net_weight`, `list_price`, `per_case_price`, `item`, `category`, `supplier_type`, `updated_at`, `created_at`, `product_id`, `search_keywords`, `expiry`, `expiry2`, `des_keywords`, `pool`, `sku`, `product_location`, `delivery_window`, `is_allocation`, `delivery_service`, `delivery_location`, `description2`, `geo_boundary`, `file_name`, `delivery_window_to`) VALUES
(1, 10.0275, 'pending', 12, '6', 0, 0, 0, 3, 'NABOB PODS HLF MOD 292G 30Pods 90cases', 90, 108.402, 1203.3, 902.475, '', 'Coffee Pods', '', '2017-11-28 00:45:31', '2017-11-28 00:45:31', 0, '', '2017-12-16', '', '', '8', '1', '1900-04-05 00:00:00', '2017-12-16 00:00:00', 0, '', '', '', '', '', '2017-12-16 00:00:00'),
(2, 10.0275, 'accepted', 12, '6', 0, 0, 0, 3, 'NABOB PODS HLF MOD 292G 30Pods 90cases', 90, 108.402, 1203.3, 902.475, '', 'Coffee Pods', '', '2017-11-28 01:45:05', '2017-11-28 00:45:31', 0, '', '2017-12-16', '', '', '8', '2', '1900-04-05 00:00:00', '2017-12-16 00:00:00', 1, '', '', '', '', '', '2017-12-16 00:00:00'),
(3, 10.0275, 'pending', 12, '6', 0, 0, 0, 3, 'NABOB PODS HLF MOD 292G 30Pods 90cases', 90, 108.402, 1203.3, 902.475, '', 'Coffee Pods', '', '2017-11-28 00:45:32', '2017-11-28 00:45:32', 0, '', '2017-12-16', '', '', '8', '3', '1900-04-05 00:00:00', '2017-12-16 00:00:00', 0, '', '', '', '', '', '2017-12-16 00:00:00'),
(4, 0.6825, 'pending', 99, '6', 0, 0, 0, 3, 'HNZ TOM SCE NO SALT ADDED 398ML 24', 24, 26.032, 21.84, 16.38, '', 'Convenience Meals', '', '2017-12-01 16:31:23', '2017-12-01 16:31:23', 0, '', '2017-10-26', '', '', '8', '4', '1900-04-06 00:00:00', '2017-10-26 00:00:00', 0, '', '', '', '', '', '2017-10-26 00:00:00'),
(5, 10.0275, 'pending', 12, '6', 0, 0, 0, 3, 'NABOB PODS HLF MOD 292G 30Pods 90cases', 90, 108.402, 1203.3, 902.475, '', 'Coffee Pods', '', '2017-12-02 05:58:34', '2017-12-02 05:58:34', 0, '', '2017-12-16', '', '', '8', '5', '1900-04-05 00:00:00', '2017-12-16 00:00:00', 0, '', '', '', '', '', '2017-12-16 00:00:00'),
(6, 5.05, 'pending', 229, '6', 0, 0, 0, 3, 'KFT PB ALL NAT HONEY 750G12', 12, 21.795, 80.8, 60.6, '', 'Bread Spreads Traditional', '', '2017-12-08 01:55:30', '2017-12-08 01:55:30', 0, '', '2017-12-06', '', '', '8', '6', '1900-04-05 00:00:00', '2017-12-06 00:00:00', 0, '', '', '', '', '', '2017-12-06 00:00:00'),
(7, 10.0275, 'accepted', 12, '6', 0, 0, 0, 3, 'NABOB PODS HLF MOD 292G 30Pods 90cases', 90, 108.402, 1203.3, 902.475, '', 'Coffee Pods', '', '2017-12-09 18:01:05', '2017-12-09 17:55:52', 0, '', '2017-12-16', '', '', '8', '7', '1900-04-05 00:00:00', '2017-12-16 00:00:00', 1, '', '', '', '', '', '2017-12-16 00:00:00'),
(8, 8.34375, 'pending', 192, '6', 0, 0, 0, 3, 'P/BUTTER SMOOTH 2KG 6', 6, 28.231, 66.75, 50.0625, '', 'Bread Spreads Traditional', '', '2017-12-09 17:55:53', '2017-12-09 17:55:53', 0, '', '2017-11-21', '', '', '8', '8', '1900-04-05 00:00:00', '2017-11-21 00:00:00', 0, '', '', '', '', '', '2017-11-21 00:00:00'),
(9, 8.34375, 'pending', 12, '6', 0, 0, 0, 3, 'P/BUTTER CRUNCHY 2KG 6', 6, 28.231, 66.75, 50.0625, '', 'Bread Spreads Traditional', '', '2017-12-09 17:55:54', '2017-12-09 17:55:54', 0, '', '2017-11-22', '', '', '8', '9', '1900-04-05 00:00:00', '2017-11-22 00:00:00', 0, '', '', '', '', '', '2017-11-22 00:00:00'),
(10, 5.05, 'pending', 198, '6', 0, 0, 0, 3, 'KFT PB ALL NAT SEA SALT 750G12', 12, 21.794, 80.8, 60.6, '', 'Bread Spreads Traditional', '', '2017-12-09 17:55:55', '2017-12-09 17:55:55', 0, '', '2017-12-04', '', '', '8', '10', '1900-04-05 00:00:00', '2017-12-04 00:00:00', 0, '', '', '', '', '', '2017-12-04 00:00:00'),
(11, 5.05, 'pending', 883, '6', 0, 0, 0, 3, 'KFT PB ALL NAT SEA SALT 750G12', 12, 21.794, 80.8, 60.6, '', 'Bread Spreads Traditional', '', '2017-12-09 17:55:56', '2017-12-09 17:55:56', 0, '', '2017-12-05', '', '', '8', '11', '1900-04-05 00:00:00', '2017-12-05 00:00:00', 0, '', '', '', '', '', '2017-12-05 00:00:00'),
(12, 5.05, 'pending', 402, '6', 0, 0, 0, 3, 'KFT PB ALL NAT HONEY 750G12', 12, 21.795, 80.8, 60.6, '', 'Bread Spreads Traditional', '', '2017-12-09 17:55:57', '2017-12-09 17:55:57', 0, '', '2017-12-05', '', '', '8', '12', '1900-04-05 00:00:00', '2017-12-05 00:00:00', 0, '', '', '', '', '', '2017-12-05 00:00:00'),
(13, 5.05, 'pending', 229, '6', 0, 0, 0, 3, 'KFT PB ALL NAT HONEY 750G12', 12, 21.795, 80.8, 60.6, '', 'Bread Spreads Traditional', '', '2017-12-09 17:55:58', '2017-12-09 17:55:58', 0, '', '2017-12-06', '', '', '8', '13', '1900-04-05 00:00:00', '2017-12-06 00:00:00', 0, '', '', '', '', '', '2017-12-06 00:00:00'),
(14, 0.93, 'pending', 18, '6', 0, 0, 0, 3, 'HNZ PURE MALT VIINEGAR 375ML 12', 12, 11.508, 14.88, 11.16, '', 'CDN Condiments', '', '2017-12-09 17:55:59', '2017-12-09 17:55:59', 0, '', '2017-12-04', '', '', '8', '14', '1900-04-06 00:00:00', '2017-12-04 00:00:00', 0, '', '', '', '', '', '2017-12-04 00:00:00'),
(15, 1.05, 'pending', 1068, '6', 0, 0, 0, 3, 'HNZ YEL MUST GARL HERB CA 226ML 12', 12, 7.249, 16.8, 12.6, '', 'CDN Condiments', '', '2017-12-09 17:56:00', '2017-12-09 17:56:00', 0, '', '2017-12-05', '', '', '8', '15', '1900-04-06 00:00:00', '2017-12-05 00:00:00', 0, '', '', '', '', '', '2017-12-05 00:00:00'),
(16, 1.05, 'pending', 612, '6', 0, 0, 0, 3, 'HNZ YELLOW MUST JALP CA 226ML 12', 12, 7.249, 16.8, 12.6, '', 'CDN Condiments', '', '2017-12-09 17:56:02', '2017-12-09 17:56:02', 0, '', '2017-12-02', '', '', '8', '16', '1900-04-06 00:00:00', '2017-12-02 00:00:00', 0, '', '', '', '', '', '2017-12-02 00:00:00'),
(17, 2.8125, 'pending', 731, '6', 0, 0, 0, 3, 'TGIF LOADED POTAT SKIN 225G 8', 8, 5.097, 30, 22.5, '', 'CDN RETAIL Frozen Meals and Snacks', '', '2017-12-09 17:56:05', '2017-12-09 17:56:05', 0, '', '2018-01-17', '', '', '8', '17', '1900-04-07 00:00:00', '2018-01-17 00:00:00', 0, '', '', '', '', '', '2018-01-17 00:00:00'),
(18, 2.1975, 'pending', 630, '6', 0, 0, 0, 3, 'SOS BREAKFAST QUES CA 226G 12', 12, 8.076, 35.16, 26.37, '', 'CDN RETAIL Frozen Meals and Snacks', '', '2017-12-09 17:56:06', '2017-12-09 17:56:06', 0, '', '2017-12-10', '', '', '8', '18', '1900-04-07 00:00:00', '2017-12-10 00:00:00', 0, '', '', '', '', '', '2017-12-10 00:00:00'),
(19, 2.1975, 'pending', 1, '6', 0, 0, 0, 3, 'SOS ENGLISH MUFF SANDWH CA 226G 12', 12, 7.701, 35.16, 26.37, '', 'CDN RETAIL Frozen Meals and Snacks', '', '2017-12-09 17:56:07', '2017-12-09 17:56:07', 0, '', '2017-11-30', '', '', '8', '19', '1900-04-07 00:00:00', '2017-11-30 00:00:00', 0, '', '', '', '', '', '2017-11-30 00:00:00'),
(20, 2.1975, 'pending', 210, '6', 0, 0, 0, 3, 'SOS ENGLISH MUFF SANDWH CA 226G 12', 12, 7.701, 35.16, 26.37, '', 'CDN RETAIL Frozen Meals and Snacks', '', '2017-12-09 17:56:09', '2017-12-09 17:56:09', 0, '', '2017-12-01', '', '', '8', '20', '1900-04-07 00:00:00', '2017-12-01 00:00:00', 0, '', '', '', '', '', '2017-12-01 00:00:00'),
(21, 0.6825, 'pending', 210, '6', 0, 0, 0, 3, 'HNZ TOM SCE NO SALT ADDED 398ML 24', 24, 26.032, 21.84, 16.38, '', 'Convenience Meals', '', '2017-12-09 17:56:10', '2017-12-09 17:56:10', 0, '', '2017-10-25', '', '', '8', '21', '1900-04-06 00:00:00', '2017-10-25 00:00:00', 0, '', '', '', '', '', '2017-10-25 00:00:00'),
(22, 0.6825, 'pending', 99, '6', 0, 0, 0, 3, 'HNZ TOM SCE NO SALT ADDED 398ML 24', 24, 26.032, 21.84, 16.38, '', 'Convenience Meals', '', '2017-12-09 17:56:11', '2017-12-09 17:56:11', 0, '', '2017-10-26', '', '', '8', '22', '1900-04-06 00:00:00', '2017-10-26 00:00:00', 0, '', '', '', '', '', '2017-10-26 00:00:00'),
(23, 1.20062, 'pending', 74, '6', 0, 0, 0, 3, 'HNZ LIGHT RED KIDNEY BNS 398ML 24', 24, 27.514, 38.42, 28.815, '', 'Convenience Meals', '', '2017-12-09 17:56:12', '2017-12-09 17:56:12', 0, '', '2017-12-04', '', '', '8', '23', '1900-04-06 00:00:00', '2017-12-04 00:00:00', 0, '', '', '', '', '', '2017-12-04 00:00:00'),
(24, 1.74, 'pending', 40, '6', 0, 0, 0, 3, 'HNZ TODDLER BISCUITS 180G 24', 24, 12, 55.68, 41.76, '', 'Infant Feeding', '', '2017-12-09 17:56:13', '2017-12-09 17:56:13', 0, '', '2017-11-22', '', '', '8', '24', '1900-04-06 00:00:00', '2017-11-22 00:00:00', 0, '', '', '', '', '', '2017-11-22 00:00:00'),
(25, 1.74, 'pending', 3, '6', 0, 0, 0, 3, 'HNZ LK APL CIN CERL BAR 6X19.5G 12', 12, 4.799, 27.84, 20.88, '', 'Infant Feeding', '', '2017-12-09 17:56:14', '2017-12-09 17:56:14', 0, '', '2017-10-24', '', '', '8', '25', '1900-04-06 00:00:00', '2017-10-24 00:00:00', 0, '', '', '', '', '', '2017-10-24 00:00:00'),
(26, 1.2975, 'pending', 113, '6', 0, 0, 0, 3, 'HNZ JR OGCHRSWCRNGRKYOG PCH 128ML 6', 6, 2.156, 10.38, 7.785, '', 'Infant Feeding', '', '2017-12-09 17:56:16', '2017-12-09 17:56:16', 0, '', '2017-10-23', '', '', '8', '26', '1900-04-06 00:00:00', '2017-10-23 00:00:00', 0, '', '', '', '', '', '2017-10-23 00:00:00'),
(27, 0.78375, 'pending', 1844, '6', 0, 0, 0, 3, 'HNZ BEG WAX BEANS 128ML 12', 12, 7, 12.54, 9.405, '', 'Infant Feeding', '', '2017-12-09 17:56:17', '2017-12-09 17:56:17', 0, '', '2017-10-29', '', '', '8', '27', '1900-04-06 00:00:00', '2017-10-29 00:00:00', 0, '', '', '', '', '', '2017-10-29 00:00:00'),
(28, 0.78375, 'pending', 74, '6', 0, 0, 0, 3, 'HNZ STR PEAS AND CARROTS 128ML 12', 12, 6.984, 12.54, 9.405, '', 'Infant Feeding', '', '2017-12-09 17:56:18', '2017-12-09 17:56:18', 0, '', '2017-11-18', '', '', '8', '28', '1900-04-06 00:00:00', '2017-11-18 00:00:00', 0, '', '', '', '', '', '2017-11-18 00:00:00'),
(29, 0.78375, 'pending', 9236, '6', 0, 0, 0, 3, 'HNZ STR PEAR JUICE 128ML 12', 12, 7, 12.54, 9.405, '', 'Infant Feeding', '', '2017-12-09 17:56:19', '2017-12-09 17:56:19', 0, '', '2017-11-14', '', '', '8', '29', '1900-04-06 00:00:00', '2017-11-14 00:00:00', 0, '', '', '', '', '', '2017-11-14 00:00:00'),
(30, 0.78375, 'pending', 6787, '6', 0, 0, 0, 3, 'HNZ ST CHX CAS RICE VEG 128ML 12', 12, 7, 12.54, 9.405, '', 'Infant Feeding', '', '2017-12-09 17:56:20', '2017-12-09 17:56:20', 0, '', '2017-11-20', '', '', '8', '30', '1900-04-06 00:00:00', '2017-11-20 00:00:00', 0, '', '', '', '', '', '2017-11-20 00:00:00'),
(31, 1.01375, 'pending', 676, '6', 0, 0, 0, 3, 'HNZ JR VEGETABLE CHICKEN 213ML 12', 12, 10.397, 16.22, 12.165, '', 'Infant Feeding', '', '2017-12-09 17:56:21', '2017-12-09 17:56:21', 0, '', '2017-12-11', '', '', '8', '31', '1900-04-06 00:00:00', '2017-12-11 00:00:00', 0, '', '', '', '', '', '2017-12-11 00:00:00'),
(32, 1.68, 'pending', 13, '6', 0, 0, 0, 3, 'HNZ MAYO COMPONENT 750ML 12', 12, 23.001, 26.88, 20.16, '', 'Ketchup', '', '2017-12-09 17:56:22', '2017-12-09 17:56:22', 0, '', '2017-12-02', '', '', '8', '32', '1900-04-06 00:00:00', '2017-12-02 00:00:00', 0, '', '', '', '', '', '2017-12-02 00:00:00'),
(33, 1.68, 'pending', 286, '6', 0, 0, 0, 3, 'HNZ MAYO COMPONENT 750ML 12', 12, 23.001, 26.88, 20.16, '', 'Ketchup', '', '2017-12-09 17:56:24', '2017-12-09 17:56:24', 0, '', '2017-12-03', '', '', '8', '33', '1900-04-06 00:00:00', '2017-12-03 00:00:00', 0, '', '', '', '', '', '2017-12-03 00:00:00'),
(34, 0.93, 'pending', 234, '6', 0, 0, 0, 3, 'KD CUP WHLE WHT ORIGNAL 55G 10', 10, 1.937, 12.4, 9.3, '', 'Kraft Dinner Cups', '', '2017-12-09 17:56:26', '2017-12-09 17:56:26', 0, '', '2017-11-24', '', '', '8', '34', '1900-04-05 00:00:00', '2017-11-24 00:00:00', 0, '', '', '', '', '', '2017-11-24 00:00:00'),
(35, 4.5225, 'pending', 18, '6', 0, 0, 0, 3, 'KRAFT DINNER 225G 1/2 MOD', 160, 359.827, 964.8, 723.6, '', 'Mac & Cheese', '', '2017-12-09 17:56:27', '2017-12-09 17:56:27', 0, '', '2017-11-12', '', '', '8', '35', '1900-04-08 00:00:00', '2017-11-12 00:00:00', 0, '', '', '', '', '', '2017-11-12 00:00:00'),
(36, 4.5225, 'pending', 2, '6', 0, 0, 0, 3, 'KRAFT DINNER 225G 1/2 MOD', 160, 359.827, 964.8, 723.6, '', 'Mac & Cheese', '', '2017-12-09 17:56:28', '2017-12-09 17:56:28', 0, '', '2017-11-21', '', '', '8', '36', '1900-04-08 00:00:00', '2017-11-21 00:00:00', 0, '', '', '', '', '', '2017-11-21 00:00:00'),
(37, 2.53125, 'pending', 1, '6', 0, 0, 0, 3, 'KOOL-AID CLEAR MOD 1.8L 384P', 384, 1706.81, 1296, 972, '', 'Ready To Drink Aseptic Pouch', '', '2017-12-09 17:56:29', '2017-12-09 17:56:29', 0, '', '2017-12-16', '', '', '8', '37', '1900-04-05 00:00:00', '2017-12-16 00:00:00', 0, '', '', '', '', '', '2017-12-16 00:00:00'),
(38, 2.0125, 'pending', 1318, '6', 0, 0, 0, 3, 'REN CAESAR FAT FREE DRSG 355ML 6', 6, 5.542, 16.1, 12.075, '', 'Refrigerated Dressings & Dips', '', '2017-12-09 17:56:30', '2017-12-09 17:56:30', 0, '', '2017-12-17', '', '', '8', '38', '1900-04-08 00:00:00', '2017-12-17 00:00:00', 0, '', '', '', '', '', '2017-12-17 00:00:00'),
(39, 2.0125, 'pending', 725, '6', 0, 0, 0, 3, 'REN CLASSIC RANCH LGHT DRSG 355ML 6', 6, 5.304, 16.1, 12.075, '', 'Refrigerated Dressings & Dips', '', '2017-12-09 17:56:31', '2017-12-09 17:56:31', 0, '', '2017-12-10', '', '', '8', '39', '1900-04-08 00:00:00', '2017-12-10 00:00:00', 0, '', '', '', '', '', '2017-12-10 00:00:00'),
(40, 2.0125, 'pending', 300, '6', 0, 0, 0, 3, 'REN BLUE CHEESE DRESSING 355ML 6', 6, 5.304, 16.1, 12.075, '', 'Refrigerated Dressings & Dips', '', '2017-12-09 17:56:32', '2017-12-09 17:56:32', 0, '', '2017-12-09', '', '', '8', '40', '1900-04-08 00:00:00', '2017-12-09 00:00:00', 0, '', '', '', '', '', '2017-12-09 00:00:00'),
(41, 2.01875, 'pending', 22, '6', 0, 0, 0, 3, 'REN CAESAR DRESSING 355ML 12', 12, 10.344, 32.3, 24.225, '', 'Refrigerated Dressings & Dips', '', '2017-12-09 17:56:33', '2017-12-09 17:56:33', 0, '', '2017-12-06', '', '', '8', '41', '1900-04-08 00:00:00', '2017-12-06 00:00:00', 0, '', '', '', '', '', '2017-12-06 00:00:00'),
(42, 2.01875, 'pending', 17, '6', 0, 0, 0, 3, 'REN CAESAR 1/2 FAT DRSG 355ML 12', 12, 10.45, 32.3, 24.225, '', 'Refrigerated Dressings & Dips', '', '2017-12-09 17:56:34', '2017-12-09 17:56:34', 0, '', '2017-12-02', '', '', '8', '42', '1900-04-08 00:00:00', '2017-12-02 00:00:00', 0, '', '', '', '', '', '2017-12-02 00:00:00'),
(43, 2.0125, 'pending', 394, '6', 0, 0, 0, 3, 'REN RAVIN RASPBERRY VIN 350ML 6', 6, 5.728, 16.1, 12.075, '', 'Refrigerated Dressings & Dips', '', '2017-12-09 17:56:35', '2017-12-09 17:56:35', 0, '', '2017-12-03', '', '', '8', '43', '1900-04-08 00:00:00', '2017-12-03 00:00:00', 0, '', '', '', '', '', '2017-12-03 00:00:00'),
(44, 1.975, 'pending', 106, '6', 0, 0, 0, 3, 'REN THAI TANGY SAUCE 350ML 6', 6, 6.468, 15.8, 11.85, '', 'Refrigerated Dressings & Dips', '', '2017-12-09 17:56:37', '2017-12-09 17:56:37', 0, '', '2017-12-16', '', '', '8', '44', '1900-04-08 00:00:00', '2017-12-16 00:00:00', 0, '', '', '', '', '', '2017-12-16 00:00:00'),
(45, 2.0125, 'pending', 407, '6', 0, 0, 0, 3, 'REN GREEK FETA LIGHT DRSG 355ML 6', 6, 5.505, 16.1, 12.075, '', 'Refrigerated Dressings & Dips', '', '2017-12-09 17:56:38', '2017-12-09 17:56:38', 0, '', '2017-12-15', '', '', '8', '45', '1900-04-08 00:00:00', '2017-12-15 00:00:00', 0, '', '', '', '', '', '2017-12-15 00:00:00'),
(46, 2.0125, 'pending', 755, '6', 0, 0, 0, 3, 'REN FIELD BERRY POPPYSEED 350ML 6', 6, 5.661, 16.1, 12.075, '', 'Refrigerated Dressings & Dips', '', '2017-12-09 17:56:39', '2017-12-09 17:56:39', 0, '', '2017-12-18', '', '', '8', '46', '1900-04-08 00:00:00', '2017-12-18 00:00:00', 0, '', '', '', '', '', '2017-12-18 00:00:00'),
(47, 0.615937, 'pending', 688, '6', 0, 0, 0, 3, 'REN CHEESECAKE DIP 85G 40', 40, 8.122, 32.85, 24.6375, '', 'Refrigerated Dressings & Dips', '', '2017-12-09 17:56:40', '2017-12-09 17:56:40', 0, '', '2017-11-21', '', '', '8', '47', '1900-04-08 00:00:00', '2017-11-21 00:00:00', 0, '', '', '', '', '', '2017-11-21 00:00:00'),
(48, 0.22075, 'pending', 1035, '6', 0, 0, 0, 3, 'REN RAVIN RASPBERRY VIN 43ML 120', 120, 12.926, 35.32, 26.49, '', 'Refrigerated Dressings & Dips', '', '2017-12-09 17:56:41', '2017-12-09 17:56:41', 0, '', '2017-12-06', '', '', '8', '48', '1900-04-08 00:00:00', '2017-12-06 00:00:00', 0, '', '', '', '', '', '2017-12-06 00:00:00'),
(49, 0.22075, 'pending', 172, '6', 0, 0, 0, 3, 'REN POPPYSEED LIGHT DRSG 43ML 120', 120, 12.926, 35.32, 26.49, '', 'Refrigerated Dressings & Dips', '', '2017-12-09 17:56:43', '2017-12-09 17:56:43', 0, '', '2017-12-05', '', '', '8', '49', '1900-04-08 00:00:00', '2017-12-05 00:00:00', 0, '', '', '', '', '', '2017-12-05 00:00:00'),
(50, 0.22075, 'pending', 125, '6', 0, 0, 0, 3, 'REN CAESAR LIGHT DRESSING 43ML 120', 120, 11.905, 35.32, 26.49, '', 'Refrigerated Dressings & Dips', '', '2017-12-09 17:56:45', '2017-12-09 17:56:45', 0, '', '2017-11-27', '', '', '8', '50', '1900-04-08 00:00:00', '2017-11-27 00:00:00', 0, '', '', '', '', '', '2017-11-27 00:00:00'),
(51, 0.22075, 'pending', 687, '6', 0, 0, 0, 3, 'REN ASIAN SESAME VIN 43ML 120', 120, 14.286, 35.32, 26.49, '', 'Refrigerated Dressings & Dips', '', '2017-12-09 17:56:46', '2017-12-09 17:56:46', 0, '', '2017-11-21', '', '', '8', '51', '1900-04-08 00:00:00', '2017-11-21 00:00:00', 0, '', '', '', '', '', '2017-11-21 00:00:00'),
(52, 2.0125, 'pending', 1389, '6', 0, 0, 0, 3, 'REN YOG PEPPERCORN RANCH 350ML 6', 6, 5.304, 16.1, 12.075, '', 'Refrigerated Dressings & Dips', '', '2017-12-09 17:56:47', '2017-12-09 17:56:47', 0, '', '2017-12-19', '', '', '8', '52', '1900-04-08 00:00:00', '2017-12-19 00:00:00', 0, '', '', '', '', '', '2017-12-19 00:00:00'),
(53, 2.0125, 'pending', 1019, '6', 0, 0, 0, 3, 'REN POM BLUEBERRY ACAI DRSG 350ML 6', 6, 5.73, 16.1, 12.075, '', 'Refrigerated Dressings & Dips', '', '2017-12-09 17:56:48', '2017-12-09 17:56:48', 0, '', '2017-12-08', '', '', '8', '53', '1900-04-08 00:00:00', '2017-12-08 00:00:00', 0, '', '', '', '', '', '2017-12-08 00:00:00'),
(54, 2.0125, 'pending', 1214, '6', 0, 0, 0, 3, 'REN YOG ROASTED GARLIC DRSG 350ML 6', 6, 5.212, 16.1, 12.075, '', 'Refrigerated Dressings & Dips', '', '2017-12-09 17:56:49', '2017-12-09 17:56:49', 0, '', '2017-12-20', '', '', '8', '54', '1900-04-08 00:00:00', '2017-12-20 00:00:00', 0, '', '', '', '', '', '2017-12-20 00:00:00'),
(55, 2.0125, 'pending', 630, '6', 0, 0, 0, 3, 'REN ITALIAN TUSCAN VIN 350ML 6', 6, 5.653, 16.1, 12.075, '', 'Refrigerated Dressings & Dips', '', '2017-12-09 17:56:50', '2017-12-09 17:56:50', 0, '', '2017-12-02', '', '', '8', '55', '1900-04-08 00:00:00', '2017-12-02 00:00:00', 0, '', '', '', '', '', '2017-12-02 00:00:00'),
(56, 2.4525, 'pending', 380, '6', 0, 0, 0, 3, 'HRSHY RRTE PUD S''MORES4X93G 6CT', 6, 5.609, 19.62, 14.715, '', 'Refrigerated RTE Desserts', '', '2017-12-09 17:56:51', '2017-12-09 17:56:51', 0, '', '2017-12-16', '', '', '8', '56', '1900-04-08 00:00:00', '2017-12-16 00:00:00', 0, '', '', '', '', '', '2017-12-16 00:00:00'),
(57, 1.65, 'pending', 83, '6', 0, 0, 0, 3, 'RRTE JOCS STRAW CHSCK 4X99G 6', 6, 5.933, 13.2, 9.9, '', 'Refrigerated RTE Desserts', '', '2017-12-09 17:56:52', '2017-12-09 17:56:52', 0, '', '2017-12-21', '', '', '8', '57', '1900-04-08 00:00:00', '2017-12-21 00:00:00', 0, '', '', '', '', '', '2017-12-21 00:00:00'),
(58, 1.34687, 'pending', 1603, '6', 0, 0, 0, 3, 'CW RANCHER''S CHOICE 250ML 12', 12, 8.052, 21.55, 16.1625, '', 'Salad Dressings', '', '2017-12-09 17:56:54', '2017-12-09 17:56:54', 0, '', '2017-12-20', '', '', '8', '58', '1900-04-08 00:00:00', '2017-12-20 00:00:00', 0, '', '', '', '', '', '2017-12-20 00:00:00'),
(59, 2.1165, 'pending', 13, '6', 0, 0, 0, 3, 'KSD FULL MOD 475ML 992CT', 992, 1159.73, 2799.42, 2099.56, '', 'Salad Dressings', '', '2017-12-09 17:56:55', '2017-12-09 17:56:55', 0, '', '2018-01-09', '', '', '8', '59', '1900-04-08 00:00:00', '2018-01-09 00:00:00', 0, '', '', '', '', '', '2018-01-09 00:00:00'),
(60, 2.31, 'pending', 768, '6', 0, 0, 0, 3, 'MIO BERRY BURST ELCTRLYTE 48ML 12', 12, 2.391, 36.96, 27.72, '', 'Total Liquid Concentrates', '', '2017-12-09 17:56:56', '2017-12-09 17:56:56', 0, '', '2017-12-05', '', '', '8', '60', '1900-04-05 00:00:00', '2017-12-05 00:00:00', 0, '', '', '', '', '', '2017-12-05 00:00:00'),
(61, 2.31, 'pending', 141, '6', 0, 0, 0, 3, 'MIO BASE MIXED PDQ 48MLX60CT', 60, 9.259, 184.8, 138.6, '', 'Total Liquid Concentrates', '', '2017-12-09 17:56:57', '2017-12-09 17:56:57', 0, '', '2017-12-31', '', '', '8', '61', '1900-04-05 00:00:00', '2017-12-31 00:00:00', 0, '', '', '', '', '', '2017-12-31 00:00:00'),
(62, 3.105, 'pending', 66, '6', 0, 0, 0, 3, 'PHIL YGRT DRINK BLUEBERRY 760ML4', 4, 8.162, 16.56, 12.42, '', 'Cream Cheese/Cheesecake', '', '2017-12-09 17:56:58', '2017-12-09 17:56:58', 0, '', '2017-11-23', '', '', '8', '62', '1900-04-08 00:00:00', '2017-11-23 00:00:00', 0, '', '', '', '', '', '2017-11-23 00:00:00'),
(63, 3.105, 'pending', 320, '6', 0, 0, 0, 3, 'PHIL YGRT DRINK VANILLA 760ML 4', 4, 8.23, 16.56, 12.42, '', 'Cream Cheese/Cheesecake', '', '2017-12-09 17:56:59', '2017-12-09 17:56:59', 0, '', '2017-11-23', '', '', '8', '63', '1900-04-08 00:00:00', '2017-11-23 00:00:00', 0, '', '', '', '', '', '2017-11-23 00:00:00'),
(64, 3.075, 'pending', 233, '6', 0, 0, 0, 3, 'CB FETA CRUMBLE LT TUB 180G 12', 12, 5.769, 49.2, 36.9, '', 'Natural Cheese', '', '2017-12-09 17:57:00', '2017-12-09 17:57:00', 0, '', '2017-12-22', '', '', '8', '64', '1900-04-08 00:00:00', '2017-12-22 00:00:00', 0, '', '', '', '', '', '2017-12-22 00:00:00'),
(65, 11.9775, 'pending', 42, '6', 0, 0, 0, 3, 'PQ NAT SHRD SPR STRTCHYMOZ(2X450G)6', 6, 13.1, 95.82, 71.865, '', 'Natural Cheese', '', '2017-12-09 17:57:01', '2017-12-09 17:57:01', 0, '', '2017-12-08', '', '', '8', '65', '1900-04-08 00:00:00', '2017-12-08 00:00:00', 0, '', '', '', '', '', '2017-12-08 00:00:00'),
(66, 4.065, 'pending', 83, '6', 0, 0, 0, 3, 'PQ MOZZ PART SKIM CHEESE270G16', 16, 10.03, 86.72, 65.04, '', 'Natural Cheese', '', '2017-12-09 17:57:04', '2017-12-09 17:57:04', 0, '', '2017-12-09', '', '', '8', '66', '1900-04-08 00:00:00', '2017-12-09 00:00:00', 0, '', '', '', '', '', '2017-12-09 00:00:00'),
(67, 9.9565, 'pending', 23, '6', 0, 0, 0, 3, 'CB MOZZ LOAF 907G 15', 15, 31.338, 199.13, 149.348, '', 'Natural Cheese', '', '2017-12-09 17:57:05', '2017-12-09 17:57:05', 0, '', '2017-12-06', '', '', '8', '67', '1900-04-08 00:00:00', '2017-12-06 00:00:00', 0, '', '', '', '', '', '2017-12-06 00:00:00'),
(68, 6.3, 'pending', 20, '6', 0, 0, 0, 3, 'PQ PART SKIM MOZZ 400GX16', 16, 15.078, 134.4, 100.8, '', 'Natural Cheese', '', '2017-12-09 17:57:07', '2017-12-09 17:57:07', 0, '', '2017-12-07', '', '', '8', '68', '1900-04-08 00:00:00', '2017-12-07 00:00:00', 0, '', '', '', '', '', '2017-12-07 00:00:00'),
(69, 8.685, 'pending', 2, '6', 0, 0, 0, 3, 'CB PART SKIM MOZZ 600GX16', 16, 22.422, 185.28, 138.96, '', 'Natural Cheese', '', '2017-12-09 17:57:08', '2017-12-09 17:57:08', 0, '', '2017-12-16', '', '', '8', '69', '1900-04-08 00:00:00', '2017-12-16 00:00:00', 0, '', '', '', '', '', '2017-12-16 00:00:00'),
(70, 4.8975, 'pending', 61, '6', 0, 0, 0, 3, 'PQ SHREDS  MARBLE 320G 12', 12, 9.312, 78.36, 58.77, '', 'Natural Cheese', '', '2017-12-09 17:57:09', '2017-12-09 17:57:09', 0, '', '2017-12-07', '', '', '8', '70', '1900-04-08 00:00:00', '2017-12-07 00:00:00', 0, '', '', '', '', '', '2017-12-07 00:00:00'),
(71, 4.8975, 'pending', 312, '6', 0, 0, 0, 3, 'PQ SHREDS  MARBLE 320G 12', 12, 9.312, 78.36, 58.77, '', 'Natural Cheese', '', '2017-12-09 17:57:10', '2017-12-09 17:57:10', 0, '', '2017-12-21', '', '', '8', '71', '1900-04-08 00:00:00', '2017-12-21 00:00:00', 0, '', '', '', '', '', '2017-12-21 00:00:00'),
(72, 7.6725, 'pending', 1, '6', 0, 0, 0, 3, 'CHEEZ WHIZ MOD 900GX576', 576, 1690.8, 5892.48, 4419.36, '', 'Recipe Cheese', '', '2017-12-09 17:57:12', '2017-12-09 17:57:12', 0, '', '2017-12-22', '', '', '8', '72', '1900-04-08 00:00:00', '2017-12-22 00:00:00', 0, '', '', '', '', '', '2017-12-22 00:00:00'),
(73, 10.0275, 'accepted', 12, '6', 0, 0, 0, 3, 'NABOB PODS HLF MOD 292G 30Pods 90cases', 90, 108.402, 1203.3, 902.475, '', 'Coffee Pods', '', '2017-12-14 02:40:32', '2017-12-14 02:36:31', 0, '', '2017-12-16', '', '', '8', '73', '1900-04-05 00:00:00', '2017-12-16 00:00:00', 1, '', '', '', '', '', '2017-12-16 00:00:00'),
(74, 3.9225, 'pending', 826, '6', 0, 0, 0, 3, 'KR SGL BOLD SRIRACHA (12) 336G 24', 24, 18.122, 125.52, 94.14, '', 'Sandwich Cheese', '', '2017-12-14 02:36:33', '2017-12-14 02:36:33', 0, '', '2018-01-13', '', '', '8', '74', '1900-04-08 00:00:00', '2018-01-13 00:00:00', 0, '', '', '', '', '', '2018-01-13 00:00:00'),
(75, 1.975, 'pending', 106, '6', 0, 0, 0, 3, 'REN THAI TANGY SAUCE 350ML 6', 6, 6.468, 15.8, 11.85, '', 'Refrigerated Dressings & Dips', '', '2017-12-16 18:50:13', '2017-12-16 18:50:13', 0, '', '2017-12-16', '', '', '8', '75', '1900-04-08 00:00:00', '2017-12-16 00:00:00', 0, '', '', '', '', '', '2017-12-16 00:00:00'),
(76, 3.9225, 'pending', 1169, '6', 0, 0, 0, 3, 'KR SGL BOLD SL JALAPENO(12)336G 24', 24, 18.122, 125.52, 94.14, '', 'Sandwich Cheese', '', '2017-12-16 18:50:15', '2017-12-16 18:50:15', 0, '', '2018-01-18', '', '', '8', '76', '1900-04-08 00:00:00', '2018-01-18 00:00:00', 0, '', '', '', '', '', '2018-01-18 00:00:00'),
(77, 3.9225, 'pending', 826, '6', 0, 0, 0, 3, 'KR SGL BOLD SRIRACHA (12) 336G 24', 24, 18.122, 125.52, 94.14, '', 'Sandwich Cheese', '', '2017-12-16 18:50:18', '2017-12-16 18:50:18', 0, '', '2018-01-13', '', '', '8', '77', '1900-04-08 00:00:00', '2018-01-13 00:00:00', 0, '', '', '', '', '', '2018-01-13 00:00:00'),
(78, 0.78375, 'accepted', 74, '6', 0, 0, 0, 3, 'HNZ STR PEAS AND CARROTS 128ML 12', 12, 6.984, 12.54, 9.405, '', 'Infant Feeding', '', '2017-12-17 05:10:09', '2017-12-17 05:03:06', 0, '', '2017-11-18', '', '', '8', '78', '1900-04-06 00:00:00', '2017-11-18 00:00:00', 1, '', '', '', '', '', '2017-11-18 00:00:00'),
(79, 2.31, 'pending', 141, '6', 0, 0, 0, 3, 'MIO BASE MIXED PDQ 48MLX60CT', 60, 9.259, 184.8, 138.6, '', 'Total Liquid Concentrates', '', '2017-12-17 05:03:08', '2017-12-17 05:03:08', 0, '', '2017-12-31', '', '', '8', '79', '1900-04-05 00:00:00', '2017-12-31 00:00:00', 0, '', '', '', '', '', '2017-12-31 00:00:00'),
(80, 3.105, 'pending', 66, '6', 0, 0, 0, 3, 'PHIL YGRT DRINK BLUEBERRY 760ML4', 4, 8.162, 16.56, 12.42, '', 'Cream Cheese/Cheesecake', '', '2017-12-17 05:03:09', '2017-12-17 05:03:09', 0, '', '2017-11-23', '', '', '8', '80', '1900-04-08 00:00:00', '2017-11-23 00:00:00', 0, '', '', '', '', '', '2017-11-23 00:00:00'),
(81, 3.105, 'pending', 320, '6', 0, 0, 0, 3, 'PHIL YGRT DRINK VANILLA 760ML 4', 4, 8.23, 16.56, 12.42, '', 'Cream Cheese/Cheesecake', '', '2017-12-17 05:03:10', '2017-12-17 05:03:10', 0, '', '2017-11-23', '', '', '8', '81', '1900-04-08 00:00:00', '2017-11-23 00:00:00', 0, '', '', '', '', '', '2017-11-23 00:00:00'),
(82, 3.9225, 'pending', 601, '6', 0, 0, 0, 3, 'KR SINGLES BOLD BACON (12) 336G 24', 24, 18.122, 125.52, 94.14, '', 'Sandwich Cheese', '', '2017-12-17 05:04:46', '2017-12-17 05:04:46', 0, '', '2018-01-05', '', '', '8', '82', '1900-04-08 00:00:00', '2018-01-05 00:00:00', 0, '', '', '', '', '', '2018-01-05 00:00:00'),
(83, 3.9225, 'pending', 826, '6', 0, 0, 0, 3, 'KR SGL BOLD SRIRACHA (12) 336G 24', 24, 18.122, 125.52, 94.14, '', 'Sandwich Cheese', '', '2017-12-17 05:04:47', '2017-12-17 05:04:47', 0, '', '2018-01-13', '', '', '8', '83', '1900-04-08 00:00:00', '2018-01-13 00:00:00', 0, '', '', '', '', '', '2018-01-13 00:00:00'),
(84, 3.9225, 'pending', 826, '6', 0, 0, 0, 3, 'KR SGL BOLD SRIRACHA (12) 336G 24', 24, 18.122, 125.52, 94.14, '', 'Sandwich Cheese', '', '2017-12-19 07:38:39', '2017-12-19 07:38:39', 0, '', '2018-01-13', '', '', '8', '84', '1900-04-08 00:00:00', '2018-01-13 00:00:00', 0, '', '', '', '', '', '2018-01-13 00:00:00'),
(85, 3.9225, 'pending', 826, '6', 0, 0, 0, 3, 'KR SGL BOLD SRIRACHA (12) 336G 24', 24, 18.122, 125.52, 94.14, '', 'Sandwich Cheese', '', '2017-12-19 07:38:40', '2017-12-19 07:38:40', 0, '', '2018-01-13', '', '', '8', '85', '1900-04-08 00:00:00', '2018-01-13 00:00:00', 0, '', '', '', '', '', '2018-01-13 00:00:00'),
(86, 10.0275, 'pending', 12, '6', 0, 0, 0, 3, 'NABOB PODS HLF MOD 292G 30Pods 90cases', 90, 108.402, 1203.3, 902.475, '', 'Coffee Pods', '', '2017-12-21 03:29:22', '2017-12-21 03:29:22', 0, '', '2017-12-16', '', '', '8', '86', '1900-04-05 00:00:00', '2017-12-16 00:00:00', 0, '', '', '', '', '', '2017-12-16 00:00:00'),
(87, 8.34375, 'pending', 192, '6', 0, 0, 0, 3, 'P/BUTTER SMOOTH 2KG 6', 6, 28.231, 66.75, 50.0625, '', 'Bread Spreads Traditional', '', '2017-12-21 03:29:23', '2017-12-21 03:29:23', 0, '', '2017-11-21', '', '', '8', '87', '1900-04-05 00:00:00', '2017-11-21 00:00:00', 0, '', '', '', '', '', '2017-11-21 00:00:00'),
(88, 8.34375, 'pending', 12, '6', 0, 0, 0, 3, 'P/BUTTER CRUNCHY 2KG 6', 6, 28.231, 66.75, 50.0625, '', 'Bread Spreads Traditional', '', '2017-12-21 03:29:24', '2017-12-21 03:29:24', 0, '', '2017-11-22', '', '', '8', '88', '1900-04-05 00:00:00', '2017-11-22 00:00:00', 0, '', '', '', '', '', '2017-11-22 00:00:00'),
(89, 3.9225, 'pending', 1169, '6', 0, 0, 0, 3, 'KR SGL BOLD SL JALAPENO(12)336G 24', 24, 18.122, 125.52, 94.14, '', 'Sandwich Cheese', '', '2017-12-21 03:29:27', '2017-12-21 03:29:27', 0, '', '2018-01-18', '', '', '8', '89', '1900-04-08 00:00:00', '2018-01-18 00:00:00', 0, '', '', '', '', '', '2018-01-18 00:00:00'),
(90, 3.9225, 'pending', 826, '6', 0, 0, 0, 3, 'KR SGL BOLD SRIRACHA (12) 336G 24', 24, 18.122, 125.52, 94.14, '', 'Sandwich Cheese', '', '2017-12-21 03:29:28', '2017-12-21 03:29:28', 0, '', '2018-01-13', '', '', '8', '90', '1900-04-08 00:00:00', '2018-01-13 00:00:00', 0, '', '', '', '', '', '2018-01-13 00:00:00'),
(91, 4.8975, 'pending', 312, '6', 0, 0, 0, 3, 'PQ SHREDS  MARBLE 320G 12', 12, 9.312, 78.36, 58.77, '', 'Natural Cheese', '', '2017-12-21 10:30:55', '2017-12-21 10:30:55', 0, '', '2017-12-21', '', '', '8', '91', '1900-04-08 00:00:00', '2017-12-21 00:00:00', 0, '', '', '', '', '', '2017-12-21 00:00:00'),
(92, 7.6725, 'pending', 1, '6', 0, 0, 0, 3, 'CHEEZ WHIZ MOD 900GX576', 576, 1690.8, 5892.48, 4419.36, '', 'Recipe Cheese', '', '2017-12-21 10:30:56', '2017-12-21 10:30:56', 0, '', '2017-12-22', '', '', '8', '92', '1900-04-08 00:00:00', '2017-12-22 00:00:00', 0, '', '', '', '', '', '2017-12-22 00:00:00'),
(93, 3.9225, 'pending', 601, '6', 0, 0, 0, 3, 'KR SINGLES BOLD BACON (12) 336G 24', 24, 18.122, 125.52, 94.14, '', 'Sandwich Cheese', '', '2017-12-21 10:30:57', '2017-12-21 10:30:57', 0, '', '2018-01-05', '', '', '8', '93', '1900-04-08 00:00:00', '2018-01-05 00:00:00', 0, '', '', '', '', '', '2018-01-05 00:00:00'),
(94, 3.9225, 'pending', 1169, '6', 0, 0, 0, 3, 'KR SGL BOLD SL JALAPENO(12)336G 24', 24, 18.122, 125.52, 94.14, '', 'Sandwich Cheese', '', '2017-12-21 10:30:59', '2017-12-21 10:30:59', 0, '', '2018-01-18', '', '', '8', '94', '1900-04-08 00:00:00', '2018-01-18 00:00:00', 0, '', '', '', '', '', '2018-01-18 00:00:00'),
(95, 3.9225, 'pending', 826, '6', 0, 0, 0, 3, 'KR SGL BOLD SRIRACHA (12) 336G 24', 24, 18.122, 125.52, 94.14, '', 'Sandwich Cheese', '', '2017-12-21 10:31:00', '2017-12-21 10:31:00', 0, '', '2018-01-13', '', '', '8', '95', '1900-04-08 00:00:00', '2018-01-13 00:00:00', 0, '', '', '', '', '', '2018-01-13 00:00:00'),
(96, 10.0275, 'pending', 12, '6', 0, 0, 0, 3, 'NABOB PODS HLF MOD 292G 30Pods 90cases', 90, 108.402, 1203.3, 902.475, '', 'Coffee Pods', '', '2017-12-28 13:34:21', '2017-12-28 13:34:21', 0, '', '2017-12-16', '', '', '8', '96', '4982-MATHESON BUFFER', '2017-12-16 00:00:00', 0, '', '', '', '', '', '2017-12-16 00:00:00'),
(97, 3.9225, 'pending', 601, '6', 0, 0, 0, 3, 'KR SINGLES BOLD BACON (12) 336G 24', 24, 18.122, 125.52, 94.14, '', 'Sandwich Cheese', '', '2017-12-28 13:47:02', '2017-12-28 13:47:02', 0, '', '2018-01-05', '', '', '8', '97', '5180-VAUDREUIL MC', '2018-01-05 00:00:00', 0, '', '', '', '', '', '2018-01-05 00:00:00'),
(98, 3.9225, 'pending', 1169, '6', 0, 0, 0, 3, 'KR SGL BOLD SL JALAPENO(12)336G 24', 24, 18.122, 125.52, 94.14, '', 'Sandwich Cheese', '', '2017-12-28 13:47:04', '2017-12-28 13:47:04', 0, '', '2018-01-18', '', '', '8', '98', '5180-VAUDREUIL MC', '2018-01-18 00:00:00', 0, '', '', '', '', '', '2018-01-18 00:00:00'),
(99, 3.9225, 'pending', 826, '6', 0, 0, 0, 3, 'KR SGL BOLD SRIRACHA (12) 336G 24', 24, 18.122, 125.52, 94.14, '', 'Sandwich Cheese', '', '2017-12-28 13:47:05', '2017-12-28 13:47:05', 0, '', '2018-01-13', '', '', '8', '99', '5180-VAUDREUIL MC', '2018-01-13 00:00:00', 0, '', '', '', '', '', '2018-01-13 00:00:00'),
(100, 3.9225, 'pending', 1169, '1', 0, 0, 0, 3, 'KR SGL BOLD SL JALAPENO(12)336G 24', 24, 18.122, 125.52, 94.14, '', 'Sandwich Cheese', '', '2018-03-08 02:54:03', '2018-03-08 02:54:03', 0, '', '2018-01-18', '', '', '1', '100', '5180-VAUDREUIL MC', '2018-01-18 00:00:00', 0, '', '', '', '', '', '2018-01-18 00:00:00'),
(101, 1.3, 'pending', 11, '6', 0, 0, 0, 3, '111', 11, 11, 111, 99, '', '111', '', '2018-03-08 02:54:04', '2018-03-08 02:54:04', 0, '', '1970-01-01', '', '', '21,3', '101', '11', '0000-00-00 00:00:00', 0, '', '', '', '', '', '0000-00-00 00:00:00'),
(102, 1, 'pending', 1, '1', 0, 0, 0, 3, '111', 11, 11, 1, 11, '', '111', '', '2018-03-09 06:12:15', '2018-03-09 06:12:15', 0, '', '1970-01-01', '', '', '8', '102', '1', '0000-00-00 00:00:00', 0, '', '', '', '', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_posts_temp`
--

CREATE TABLE IF NOT EXISTS `supplier_posts_temp` (
  `supplier_post_id` int(11) NOT NULL,
  `flag` tinyint(1) NOT NULL DEFAULT '0',
  `price` float NOT NULL,
  `status` varchar(40) NOT NULL DEFAULT 'pending',
  `quantity` int(11) NOT NULL,
  `order_duration` varchar(40) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `unit_per_case` int(11) NOT NULL DEFAULT '0',
  `net_weight` float NOT NULL DEFAULT '0',
  `list_price` float NOT NULL DEFAULT '0',
  `per_case_price` float NOT NULL DEFAULT '0',
  `item` text NOT NULL,
  `category` varchar(400) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `expiry` date NOT NULL,
  `pool` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `product_location` varchar(255) NOT NULL,
  `delivery_window` datetime NOT NULL,
  `is_allocation` int(11) NOT NULL DEFAULT '0',
  `file_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `temp_warehouse`
--

CREATE TABLE IF NOT EXISTS `temp_warehouse` (
  `id` int(11) NOT NULL,
  `keyid` int(11) NOT NULL,
  `wid` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` text COLLATE utf8_unicode_ci NOT NULL,
  `geo_boundary` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `delivery_window` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_service` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(255) NOT NULL,
  `text_notification` varchar(2) NOT NULL DEFAULT '0',
  `email_notification` varchar(2) NOT NULL DEFAULT '0',
  `address` text NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `user_role` int(11) NOT NULL DEFAULT '1',
  `delivery_service` varchar(255) NOT NULL,
  `delivery_location` varchar(255) NOT NULL,
  `delivery_window` datetime NOT NULL,
  `pikup` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `noti_email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `geo_boundary` varchar(255) NOT NULL,
  `pool` varchar(40) NOT NULL,
  `bank` varchar(255) NOT NULL,
  `branch` varchar(255) NOT NULL,
  `transit` varchar(255) NOT NULL,
  `account_number` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `lat` varchar(255) NOT NULL,
  `lng` varchar(255) NOT NULL,
  `city` text NOT NULL,
  `state` text NOT NULL,
  `zipcode` text NOT NULL,
  `country` text NOT NULL,
  `street` text NOT NULL,
  `preference` varchar(255) NOT NULL,
  `delivery_window_to` datetime NOT NULL,
  `user_status` varchar(55) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `created_at`, `updated_at`, `password`, `remember_token`, `text_notification`, `email_notification`, `address`, `company_name`, `user_role`, `delivery_service`, `delivery_location`, `delivery_window`, `pikup`, `description`, `noti_email`, `mobile`, `geo_boundary`, `pool`, `bank`, `branch`, `transit`, `account_number`, `details`, `lat`, `lng`, `city`, `state`, `zipcode`, `country`, `street`, `preference`, `delivery_window_to`, `user_status`) VALUES
(1, 'Admin', 'admin@gmail.com', '2017-09-16 00:00:00', '2018-01-11 21:25:42', '$2y$10$KyCDqIJ4DHIQe4NBpCy2D.n.Za5jlFsgNtZJLrLwdaMInJWJ.tmJa', 'bLCgdpabTuqIgN2aaOicZr0hoH0lwhIvghpLNOMZyHI0yH67qW941M7SRkcN', '0', '0', '', '', 1, '', '', '2017-09-27 13:30:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2017-10-22 11:05:34', 'active'),
(2, 'Jim', 'buyer1@resetfoods.com', '2017-09-16 10:31:40', '2018-03-06 02:31:15', '$2y$10$RDA2B3Ix017gwmSUZKxC/uEKiZFYtgiJ9D1tcAHp0DuVNDVA1fa32', 'CUtODufV2gBm7eOVk34VqFl18exZyYCuaQxm7fvaQAGu6otih03b2psdJm83', '0', '1', '555 Steeprock Dr, North York, ON, M3J2Z6', 'Johnvince foods', 2, 'Call Before Delivery', 'Canada', '2017-09-27 13:30:00', 'Buyer pickup', 'Welcome to resetfood', 'buyer1@resetfoods.com', '', '200', '12,13,14', '', '', '', '', '', '43.7588054', '-79.4686846', 'North York', 'ON', 'M3J2Z6', 'Canada', '555 Steeprock Dr', '1,2', '2017-10-22 11:05:00', 'active'),
(3, 'Geoff', 'supplier1@resetfoods.com', '2017-09-16 10:51:51', '2018-03-18 06:07:31', '$2y$10$K/KmxRnvrtlYeKtGMEji1e11NEWKztOTt7bXDKC2vnVmGq4LywQ0O', 'wl1FBFBWyOj5Qr5bxjb2YwYNmay7CqL6jZqV5QXqVhkJ89eUJaLlJw6EEiVz', '0', '0', '370 Progress Ave, Scarborough, ON, M1P2Z4', 'Dads', 3, 'Outside Delivery', '370 Progress Ave, Scarborough, ON M1P 2Z4', '2017-09-23 12:00:00', 'Supplier delivery Preference', '', 'supplier1@resetfoods.com', '', '200', '', '', '', '', '', '', '43.7741249', '-79.2677164', 'Scarborough', 'ON', 'M1P2Z4', 'Canada', '370 Progress Ave', '', '2017-10-26 11:05:00', 'active'),
(4, 'Geoff', 'supplier2@resetfoods.com', '2017-09-16 10:55:16', '2017-10-12 13:28:47', '$2y$10$LjPgDJlly3mHBuYNDScMFe8S5pWbUUISfb.ZpjdmMb.Oi6NXsQxe2', 'IZpnP9sO0vU9HEDANOyEFN6qQrZ5MWKteeQX4oRxHkMBSDYtXXIcf7wRJGXJ', '0', '0', '277 Gladstone Ave, Toronto, ON, M6J3L9', 'Cadbury', 3, 'Outside Delivery', '277 Gladstone Ave, Toronto, ON M6J 3L9', '2017-09-27 01:30:00', 'Supplier delivery Preference', '', 'supplier2@resetfoods.com', '', '200', '', '', '', '', '', '', '43.6515792', '-79.4302936', 'Toronto', 'ON', 'M6J3L9', 'Canada', '277 Gladstone Ave', '', '2017-10-22 11:05:00', 'active'),
(5, 'Geoff', 'supplier3@resetfoods.com', '2017-09-16 10:57:03', '2017-11-30 04:07:34', '$2y$10$7HZrGaNRAXnITK4yE4nDjOVB71Nvekebosf1RwL1GfHXu6lR7xlEq', 'bW39nNevMwNuUv5fuG4PHec2wwHZmr7baiFga5NseC6RmhXubTXWKHL9NLMe', '0', '0', '5 Bermondsey Rd, East York, ON, M4B2T7', 'Peek Freans', 3, 'Outside Delivery', '5 Bermondsey Rd, East York, ON M4B 2T7', '2017-09-27 01:30:00', 'Supplier delivery Preference', '', 'supplier3@resetfoods.com', '', '200', '', '', '', '', '', '', '43.71275929999999', '-79.3097526', 'East York', 'ON', 'M4B2T7', 'Canada', '5 Bermondsey Rd', '', '2017-10-22 11:05:00', 'active'),
(6, 'Geoff', 'supplier4@resetfoods.com', '2017-09-16 11:00:24', '2017-10-12 13:31:37', '$2y$10$3G95mFUtwUP35D1KmDa.9uLLW14Zopw1pbkm.6LVuLUuZQHM9Luqq', 'alnSZN4bLbzvxh3mq0z79KEJhqUWdmS9HFGxYUBdxQcJNWglMtiDOaU0DWw2', '0', '0', '45 Ewen Road, Hamilton, ON, L8S3C7', 'Trebor Allan Inc.', 3, 'Outside Delivery,Lift gate service at delivery', '45 Ewen Road, Hamilton, ON L8S 3C7', '2017-09-27 01:30:00', 'Supplier delivery Preference', '', 'supplier4@resetfoods.com', '', '200', '5,12,14', '', '', '', '', '', '43.2555572', '-79.9312154', 'Hamilton', 'ON', 'L8S3C7', 'Canada', '45 Ewen Road', '', '2017-10-22 11:05:00', 'active'),
(7, 'Geoff', 'supplier5@resetfoods.com', '2017-09-16 11:01:49', '2017-11-22 02:38:38', '$2y$10$Xvc/ADyPs5cBUGh1Z0CZpejK78h5/wyEmQ/qo8UNrHDaOxm0HHwjm', 'dnB7Gt0u2y5RzG2F5MPBDaNFsofKEjsuTtvt6nxBpmqSRvd306qrrnF4Ss6b', '0', '0', '1400 O''conner Dr, East York, ON, M4B2T8', 'Nabisco Ltd', 3, 'Outside Delivery', '1400 O''conner Dr, East York, ON M4B 2T8', '2017-09-27 01:30:00', 'Supplier delivery Preference', '', 'supplier5@resetfoods.com', '', '200', '1', '', '', '', '', '', '43.7132871', '-79.3076349', 'East York', 'ON', 'M4B2T8', 'Canada', '1400 O''conner Dr', '', '2017-10-22 11:05:00', 'active'),
(8, 'Jim', 'buyer2@resetfoods.com', '2017-09-16 11:04:42', '2017-11-30 04:06:23', '$2y$10$J6vK29HITdTu9oWArnObn.ClXArS2bPDC6H6Hw8OeznMrp0X62vOS', 'XsGCfCWs0XD9cY6UnQusGeFxpFERdnZWqSX46TerK0Fl6mVqiQnnVHFTKiV1', '0', '1', '2 Bloor Street West, suite 3300, Toronto, ON, M4W3K3', 'Ronald A. Chisholm Limited', 2, '', '2 Bloor Street West, suite 3300', '2017-09-27 13:30:00', 'Buyer pickup', '', 'buyer2@resetfoods.com', '', '200', '12,13', '', '', '', '', '', '43.6704097', '-79.3872779', 'Toronto', 'ON', 'M4W3K3', 'Canada', '2 Bloor Street West, suite 3300', '', '2017-10-22 11:05:00', 'active'),
(9, 'Jim', 'buyer3@resetfoods.com', '2017-09-16 11:08:43', '2017-10-19 21:04:57', '$2y$10$KOrOOqifM4EBr56WOeA7EuWXK4tzpydPnKJvWOoOWrGqbP7d3Bd5.', 'psmRjuTF2Br40JAmEG43qPthBFrDUpH504bloOvi6K7F0J8YMhXWAVH12cdn', '0', '0', '218 Beverley Glen Blvd, Thornhill, ON, L4J7T5', 'International Food Merchant', 2, 'Call Before Delivery', '218 Beverley Glen Blvd, Thornhill, ON L4J 7T5', '2017-09-27 13:30:00', 'Buyer pickup', '', 'buyer3@resetfoods.com', '', '200', '12', '', '', '', '', '', '43.81384300000001', '-79.4648177', 'Thornhill', 'ON', 'L4J7T5', 'Canada', '218 Beverley Glen Blvd', '', '2017-10-22 11:05:00', 'active'),
(10, 'Jim', 'buyer4@resetfoods.com', '2017-09-16 11:10:51', '2017-11-14 09:48:34', '$2y$10$82p9LEqD7e3ojGHhR7qhauF9VR2jT.uR.QutQ0BH18QDIUtOZij.C', 'xGJ3ZDPaEQY7lyVLFFKgKMveDX8vC9UqyHE9y7dZSCB811PebqM1NDkCbFPQ', '0', '0', 'Acces Ingredients, 145, rue J.A. Bombardier, Boucherville, QC, J4B8P1', 'Ronald A. Chisholm Limited', 2, 'Call Before Delivery', 'Accès Ingrédients, 145, rue J.A. Bombardier, Boucherville, QC  J4B 8P1', '2017-09-27 13:30:00', 'Buyer pickup', '', 'buyer4@resetfoods.com', '', '200', '12', '', '', '', '', '', '45.5575183', '-73.4181207', 'Boucherville', 'QC', 'J4B8P1', 'canada', 'Acces Ingredients, 145, rue J.A. Bombardier', '', '2017-10-22 11:05:00', 'active'),
(11, 'Jim', 'buyer5@resetfoods.com', '2017-09-16 11:12:07', '2017-12-14 03:18:41', '$2y$10$5IZPtWJExbwTMrdKgO5ue.cFiIDFeuKCZcnXeD0pN5278OG9Qr9tK', 'oYwSlVkvgf83rWVzjqgaDAEhFrVKXiwx2HCl5VcUGfYT1FPeMb2Opcw7CxZ8', '0', '1', '2333 N Sheridan Way, Mississauga, ON, L5K1A7', 'Wilkinson Foods International Ltd', 2, '', 'Canada', '2017-09-27 13:30:00', 'Buyer pickup', '', 'buyer5@resetfoods.com', '', '200', '18,12', '', '', '', '', '', '43.5191342', '-79.6559159', 'Mississauga', 'ON', 'L5K1A7', 'Canada', '2333 N Sheridan Way', '', '2017-10-22 11:05:34', 'active'),
(12, 'Jim', 'buyer6@resetfoods.com', '2017-09-16 11:13:18', '2017-10-12 13:07:50', '$2y$10$/slZ73DUKcF.wDf5ou5AKezn3Gx61MFQ/CApOPdSiVAnLtEyy8Ws.', '9YFtT8p0kwq6wIqRCTM8H1p8RnaU1QXKNoh4VpGriMkLxGZQ2RRo5IHCsajc', '0', '1', '2880 Portland Dr, Oakville, ON, L6H5S8', 'C.W. Shasky & Associates', 2, '', '2880 Portland Dr', '2017-09-27 13:30:00', 'Buyer pickup', '', 'buyer6@resetfoods.com', '', '200', '', '', '', '', '', '', '43.515887', '-79.6809445', 'Oakville', 'ON', 'L6H5S8', 'Canada', '2880 Portland Dr', '', '2017-10-22 11:05:34', 'active'),
(13, 'Jim', 'buyer7@resetfoods.com', '2017-09-16 11:14:22', '2017-10-12 13:26:38', '$2y$10$SOjgI2HC8666hhINluYkA.pG.7Iv6cC7y421ZAMLTbqJ1lBGa/t2S', 'uPTyb37xbj43wxHKfsVN5L4BsdxRtAYsJe7XLn2CVj3ubLt2dl6xn510ix1z', '0', '1', '461 Alden Rd, Markham, ON, L3R3L4', 'Magnum Food Brokers Inc', 2, '', 'Canada', '2017-09-27 13:30:00', 'Buyer pickup', '', 'buyer7@resetfoods.com', '', '200', '18', '', '', '', '', '', '43.8348698', '-79.3327668', 'Markham', 'ON', 'L3R3L4', 'Canada', '461 Alden Rd', '', '2017-10-22 11:05:34', 'active'),
(14, 'Jim', 'buyer8@resetfoods.com', '2017-09-16 11:15:38', '2017-10-12 13:27:58', '$2y$10$PG3FgkJYt1w/AIP/LA7ZoOFc7drjouxjtA8jMGk.OLiQVKMTy2cQi', 'LfoOB6oSVXW52Dq5FfaRBV83sX6CvAuE0wb3f9w3uJm30LvL80WjHzKyyEpZ', '0', '1', '700 Oxford St, Oshawa, ON, L1J3V9', 'Topr Food Distributors', 2, '', 'Canada', '2017-09-27 13:30:00', 'Buyer pickup', '', 'buyer8@resetfoods.com', '', '200', '12', '', '', '', '', '', '43.877586', '-78.86031799999999', 'Oshawa', 'ON', 'L1J3V9', 'Canada', '700 Oxford St', '', '2017-10-22 11:05:00', 'active'),
(15, 'jim', 'buyer9@resetfoods.com', '2017-09-16 12:34:31', '2017-09-30 19:04:13', '$2y$10$oBnb2Kr4P566vrDcZHoKZOEG8MjUcWU3OFSohleojhpRwMuv2Jrni', 'HtBvz6JAjXyfAm7izlOo0sxjrR3qQCh4WjkkNHl7DfxnJOsCTycoeuLEe0bj', '0', '1', '288 Catherine St, Ottawa, ON, K1R5T3', 'Tannis Food Distributors', 2, 'Inside delivery', '288 Catherine St, , ON K1R 5T3', '2017-09-27 13:30:00', 'Buyer pickup', 'tesr', 'buyer9@resetfoods.com', '', '200', '18,12,14', '', '', '', '', '', '45.4077985', '-75.69532459999999', 'Ottawa', 'ON', 'K1R5T3', 'Canada', '288 Catherine St', '', '2017-10-22 11:05:34', 'active'),
(16, 'jim', 'buyer10@resetfoods.com', '2017-09-16 12:37:41', '2017-09-30 19:32:06', '$2y$10$nmKDL4zTBLP8sskWByfyxuTBB4oM.ckzP31suTRohR5cAsRvH2Jbq', 'bphGQpNDMK0W9jwGQ0H7rX9dINDYe5ORHTStZp8VyYFnH5QrkivsxKcnxotr', '0', '1', '97 Hanna Crt S, Belleville, ON, K8P5H2', 'Moira River Foods', 2, 'Inside delivery', '97 Hanna Crt S', '2017-09-27 13:30:00', 'Buyer pickup', 'test', 'buyer10@resetfoods.com', '', '200', '18,14', '', '', '', '', '', '44.1811529', '-77.415072', 'Belleville', 'ON', 'K8P5H2', 'Canada', '97 Hanna Crt S', '', '2017-10-22 11:05:34', 'active'),
(17, 'Jim', 'buyer11@resetfoods.com', '2017-09-16 12:38:55', '2017-09-26 15:12:05', '$2y$10$0LYySci8FtltsSH4OU6h/.oqf7XTYF.iJTmSsifwnGrcLbm8Ni2qu', 'y3zzyA8wJi0h11zXKBRbikeAIQIP2kxZbNgLCYJQOcfkgT1etrMFda6xMBFt', '0', '0', '65 Elmdale Road, Cavan Monaghan, ON, K9J0G5', ' Sysco Central Ontario ', 2, 'Inside delivery', '65 Elmdale Road', '2017-09-27 13:30:00', 'Buyer pickup', '', 'buyer11@resetfoods.com', '', '200', '', '', '', '', '', '', '44.2567674', '-78.3883093', 'Cavan Monaghan', 'ON', 'K9J0G5', 'Canada', '65 Elmdale Road', '', '2017-10-22 11:05:34', 'active'),
(31, 'Peter', 'peterkarrys@icloud.com', '2017-10-02 21:17:56', '2017-10-25 03:53:24', '$2y$10$sYRmf270WPKXIcog3Y9RhuW3be9A.boTDp0JJ/2Pd6b7Ox8MtHzNO', 'UEzMUnHE2YVST25QHvx5qbwRxhbDdriCVwVh0zQBX0PbGby00sDUPUoMr7IU', '0', '0', '3 scenic hill court, toronto, Ontario, M1C 3V5', 'Peter Karrys', 2, '', '3 scenic hill court', '2017-10-02 05:15:00', 'Buyer pickup', '', 'peterkarrys@icloud.com', '', '200', '', 'Good Guys Bank', 'Around the corner drive', '', '', '', '43.7818944', '-79.174112', 'toronto', 'Ontario', 'M1C 3V5', 'Canada', '3 scenic hill court', '', '2017-10-02 05:15:00', 'deactive'),
(32, 'Geoff', 'geoff.benic@sofilialogistics.com', '2017-10-25 03:53:04', '2017-11-10 01:51:06', '$2y$10$obkqBU7lUOckLteqxjdEberb2q0bTK0BW0x2O9kVOxw.5obOC64jy', 'bTPj2Fdmtm1yZxvSiGzWWbfUSPEAJRfWLG5E3PiDUbSu2es64YtFHOwNVBTe', '0', '1', '3 Scenic Hill Court, toronto, Ontario, M1C 3V5', 'geoffB', 2, '', '3 Scenic Hill Court', '2017-10-24 23:52:00', 'Buyer pickup', '', 'geoff.benic@sofilialogistics.com', '', '200', '', '', '', '', '', '', '43.7818944', '-79.174112', 'toronto', 'Ontario', 'M1C 3V5', 'Canada', '3 Scenic Hill Court', '', '2017-10-24 23:52:00', 'deactive'),
(33, 'Raj', 'aloktripathiprofessional@gmail.com', '2017-12-15 10:18:38', '2017-12-28 13:44:44', '$2y$10$rRDCgZCsmKY.uh7FFsPYtOOpCNmHhBnyNgHJ/JUfRETHow/xkKKuW', 'EBHm2iG6PRjHBlOL3va1xnRxFwd4x7UmVZSzn2ro90Z7aU5sdfjH3mmyh5ie', '0', '0', 'Londonstreetest, London, UK, 12345', 'Jamtech', 2, 'Outside Delivery', 'Londonstreetest', '2017-12-15 15:46:00', 'Buyer pickup', '123344545', 'aloktripathiprofessional@gmail.com', '', '200', '', 'HDFC', 'London', 'Amazon', '123456789', 'TEst', '', '', 'London', 'UK', '12345', 'UK', 'Londonstreetest', '', '2017-12-15 15:46:00', 'active'),
(34, 'sam', 'arun@knoxweb.com', '2017-12-28 13:43:43', '2017-12-28 13:43:43', '$2y$10$R3TtStFmV/3rB5HRfMKod.4knqBkNv18JEfr7J3yw5B1zYzs15TVm', '', '0', '0', 'lucknow, Lucknow, UP, 226022', 'jam', 2, 'Inside delivery,Outside Delivery,Call Before Delivery', 'lucknow', '2017-12-28 19:11:00', 'Buyer pickup', 'vsdfds fgdfgdfg', 'arun@knoxweb.com', '', '200', '', 'dummy bank', 'dummy branch', 'dummy transit', '4526548546524574', 'details here', '26.9018319', '80.9705292', 'Lucknow', 'UP', '226022', 'India', 'lucknow', '', '2017-12-28 19:11:00', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `warehouse`
--

CREATE TABLE IF NOT EXISTS `warehouse` (
  `id` int(11) NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `company_name` text COLLATE utf8_unicode_ci NOT NULL,
  `lat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lng` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pool_id` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notification` text COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `contact_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_service` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_window` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pikup` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `geo_boundary` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank_details`
--
ALTER TABLE `bank_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buyer_posts`
--
ALTER TABLE `buyer_posts`
  ADD PRIMARY KEY (`buyer_post_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `distribution_estrictions`
--
ALTER TABLE `distribution_estrictions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expiry`
--
ALTER TABLE `expiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pools`
--
ALTER TABLE `pools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `preferences`
--
ALTER TABLE `preferences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_tags`
--
ALTER TABLE `product_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sku`
--
ALTER TABLE `sku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_allocations`
--
ALTER TABLE `supplier_allocations`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `supplier_posts`
--
ALTER TABLE `supplier_posts`
  ADD PRIMARY KEY (`supplier_post_id`);

--
-- Indexes for table `supplier_posts_temp`
--
ALTER TABLE `supplier_posts_temp`
  ADD PRIMARY KEY (`supplier_post_id`);

--
-- Indexes for table `temp_warehouse`
--
ALTER TABLE `temp_warehouse`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warehouse`
--
ALTER TABLE `warehouse`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank_details`
--
ALTER TABLE `bank_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `buyer_posts`
--
ALTER TABLE `buyer_posts`
  MODIFY `buyer_post_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `distribution_estrictions`
--
ALTER TABLE `distribution_estrictions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `expiry`
--
ALTER TABLE `expiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `pools`
--
ALTER TABLE `pools`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `preferences`
--
ALTER TABLE `preferences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product_tags`
--
ALTER TABLE `product_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sku`
--
ALTER TABLE `sku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT for table `supplier_allocations`
--
ALTER TABLE `supplier_allocations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `supplier_posts`
--
ALTER TABLE `supplier_posts`
  MODIFY `supplier_post_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT for table `supplier_posts_temp`
--
ALTER TABLE `supplier_posts_temp`
  MODIFY `supplier_post_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `temp_warehouse`
--
ALTER TABLE `temp_warehouse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `warehouse`
--
ALTER TABLE `warehouse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 19, 2023 at 02:27 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `academy_5.4`
--

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

DROP TABLE IF EXISTS `addons`;
CREATE TABLE IF NOT EXISTS `addons` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `unique_identifier` varchar(255) NOT NULL,
  `version` varchar(255) DEFAULT NULL,
  `status` int NOT NULL,
  `created_at` int DEFAULT NULL,
  `updated_at` int DEFAULT NULL,
  `about` longtext,
  `purchase_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

DROP TABLE IF EXISTS `applications`;
CREATE TABLE IF NOT EXISTS `applications` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `address` longtext,
  `phone` varchar(255) DEFAULT NULL,
  `message` longtext,
  `document` varchar(255) DEFAULT NULL,
  `status` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `user_id`, `address`, `phone`, `message`, `document`, `status`) VALUES
(1, 3, '#248, Ave Maria, 4th main, MSRS nagar, vijaya bank layout, Bannerghatta road', '9606333511', 'I wanna be an instructor', '3DElwB9XnLO1tsz.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `parent` int DEFAULT '0',
  `slug` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `date_added` int DEFAULT NULL,
  `last_modified` int DEFAULT NULL,
  `font_awesome_class` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `code`, `name`, `parent`, `slug`, `date_added`, `last_modified`, `font_awesome_class`, `thumbnail`) VALUES
(1, 'ee67e0d208', 'English', 1, 'english', 1680480000, 1680480000, 'fas fa-align-justify', 'category-thumbnail.png'),
(3, '91f54676e3', 'General', 3, 'general', 1680652800, 1680652800, 'fas fa-chess', 'category-thumbnail.png'),
(4, '195c86e15c', 'English Global Tests', 4, 'english-global-tests', 1680652800, 1680652800, 'fas fa-chess', 'category-thumbnail.png');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `id` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `timestamp` int UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('18t8milg6kvc9v25lcrpkrr2olp4nqa9', '::1', 1680940460, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303934303436303b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b757365725f69647c733a313a2234223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a31323a224f534341522044414e49454c223b69735f696e7374727563746f727c733a313a2231223b666c6173685f6d6573736167657c733a31393a2242616e6e657220696d61676520757064617465223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d61646d696e5f6c6f67696e7c733a313a2231223b),
('82arjevt613einv96f8q93tvb64ditds', '::1', 1680940935, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303934303933353b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b666c6173685f6d6573736167657c733a31393a2242616e6e657220696d61676520757064617465223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('gv2p341ho04oc25875m8gh3ehmk6l8o2', '::1', 1680941030, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303934303933353b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b666c6173685f6d6573736167657c733a31393a2242616e6e657220696d61676520757064617465223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('qljnv5fm0d6g8plqfs6s1amdaqbq9hf5', '::1', 1680941550, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303934313535303b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b666c6173685f6d6573736167657c733a32303a2257656c636f6d65204f534341522044414e49454c223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('fiss0lo5fegrelppbu2i8m4tp7feg8ac', '::1', 1680941714, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303934313535303b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b666c6173685f6d6573736167657c733a32333a2253797374656d2073657474696e67732075706461746564223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('t49h1i9tgdthbf8hkj3li0lfuubtsb6b', '::1', 1681149378, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313134393337383b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b),
('loudc2bd1um5iaro4urqsboiiv7vg1i5', '::1', 1681149690, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313134393639303b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b),
('m7a396u0d5q9bdjn80j2eu07jb28sq6j', '::1', 1681150048, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313135303034383b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b),
('62i4aqpmsv6u0f785nh6bauaakrm47o4', '::1', 1681151141, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313135313134313b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b),
('q31dmmprn9nr75kioccl4hqr9m6s7l42', '::1', 1681151547, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313135313534373b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b),
('1s66i9vfhjti0077omve08fgm7mt0oal', '::1', 1681151940, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313135313934303b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b),
('0171hrd219mlm8qo8t9mln0ssklu5v4o', '::1', 1681152245, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313135323234353b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b),
('3k5upofvauvqdhs9fa47o1075chbarov', '::1', 1681152662, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313135323636323b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b),
('hlbhalpq34hogemvk24noreioagqfes9', '::1', 1681152767, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313135323636323b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b666c6173685f6d6573736167657c733a32353a2246726f6e74656e642073657474696e67732075706461746564223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('b5rqdjmt5hmihn5rgj8mu74sa6jjvjok', '::1', 1681323186, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313332333038313b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b),
('khesi8t5ddie0grgio1ebquef6m0f58s', '::1', 1681323253, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313332333139373b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b),
('tvd1pq96vlduv652ddj1ohh2ngtq4ce6', '::1', 1681323479, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313332333236323b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b),
('4nbg25fmcsb5ptbgnlav13agsfl4rmg6', '::1', 1681324016, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313332343031363b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b),
('humsm9ff0q7jbbfdoem6iiaii93kq91v', '::1', 1681324373, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313332343337333b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b),
('jdctpqcc4podovo6qcq5vps7mjf6kkeh', '::1', 1681324696, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313332343639363b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b),
('5v4sa2b8dflki2ciemfk0rqr985dor8e', '::1', 1681325005, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313332353030353b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b),
('39htullapoa10vip4uf8jsmn4esqm2le', '::1', 1681325369, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313332353336393b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b),
('1hh844v9n37fsg9c009roocntd79sojj', '::1', 1681325746, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313332353734363b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b),
('ibkqp87g4a0fif9c38isb77kb1pf3lsc', '::1', 1681325833, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313332353734363b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b),
('qr2qjisj06mvruvfep6t6c675pg6bvck', '::1', 1681326118, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313332353834323b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b),
('0gkc7dhq7bev64f3htmfavesp5flpj41', '::1', 1681326441, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313332363434313b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b),
('kqoql87tm052n1p9bhj5n26okqq6qjqr', '::1', 1681326751, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313332363735313b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b),
('t3knml4q2abl4pjiaj9b3el1oq1rl5qs', '::1', 1681327069, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313332373036393b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b),
('nhumfrd2idjqjvktvtkhcuc4vfpv5q3v', '::1', 1681327190, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313332373036393b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b),
('muf8k2hni84duhgfu1r392gronmo43df', '::1', 1681361947, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313336313934373b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b666c6173685f6d6573736167657c733a31393a2257656c636f6d6520526f686974204d656e6f6e223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d6c61796f75747c733a343a226c697374223b757365725f69647c733a313a2236223b726f6c655f69647c733a313a2232223b726f6c657c733a343a2255736572223b6e616d657c733a31313a22526f686974204d656e6f6e223b69735f696e7374727563746f727c733a313a2231223b757365725f6c6f67696e7c733a313a2231223b),
('gup5u1dj1v55fq2higr0tqcqmvq5aqk5', '::1', 1681363351, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313336333335313b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b666c6173685f6d6573736167657c733a31393a2257656c636f6d6520526f686974204d656e6f6e223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d6c61796f75747c733a343a226c697374223b),
('k8fm5g2soh1dhpg9iva0ar90s7cl5jqp', '::1', 1681363452, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313336333335313b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b666c6173685f6d6573736167657c733a31393a2257656c636f6d6520526f686974204d656e6f6e223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d6c61796f75747c733a343a226c697374223b757365725f69647c733a313a2236223b726f6c655f69647c733a313a2232223b726f6c657c733a343a2255736572223b6e616d657c733a31313a22526f686974204d656e6f6e223b69735f696e7374727563746f727c733a313a2231223b757365725f6c6f67696e7c733a313a2231223b),
('43srl1b47tp3pjs26vds6crpve11gish', '::1', 1681800135, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313739393937343b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b757365725f69647c733a313a2234223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a31323a224f534341522044414e49454c223b69735f696e7374727563746f727c733a313a2231223b666c6173685f6d6573736167657c733a32303a2257656c636f6d65204f534341522044414e49454c223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d61646d696e5f6c6f67696e7c733a313a2231223b),
('q1evvacbc1u4is9kooao1ugc115m5s7d', '::1', 1681828045, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313832373836383b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b666c6173685f6d6573736167657c733a32303a2257656c636f6d65204f534341522044414e49454c223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d6c61796f75747c733a343a226c697374223b);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `body` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `user_id` int DEFAULT NULL,
  `commentable_id` int DEFAULT NULL,
  `commentable_type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `date_added` int DEFAULT NULL,
  `last_modified` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
CREATE TABLE IF NOT EXISTS `coupons` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `discount_percentage` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` int DEFAULT NULL,
  `expiry_date` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
CREATE TABLE IF NOT EXISTS `course` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `short_description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `outcomes` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `language` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `sub_category_id` int DEFAULT NULL,
  `section` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `requirements` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `price` double DEFAULT NULL,
  `discount_flag` int DEFAULT '0',
  `discounted_price` int DEFAULT NULL,
  `level` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `video_url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `date_added` int DEFAULT NULL,
  `last_modified` int DEFAULT NULL,
  `course_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `is_top_course` int DEFAULT '0',
  `is_admin` int DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `course_overview_provider` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `meta_keywords` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `meta_description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `is_free_course` int DEFAULT NULL,
  `multi_instructor` int NOT NULL DEFAULT '0',
  `creator` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

DROP TABLE IF EXISTS `currency`;
CREATE TABLE IF NOT EXISTS `currency` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `paypal_supported` int DEFAULT NULL,
  `stripe_supported` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES
(1, 'Leke', 'ALL', 'Lek', 0, 1),
(2, 'Dollars', 'USD', '$', 1, 1),
(3, 'Afghanis', 'AFN', '؋', 0, 1),
(4, 'Pesos', 'ARS', '$', 0, 1),
(5, 'Guilders', 'AWG', 'ƒ', 0, 1),
(6, 'Dollars', 'AUD', '$', 1, 1),
(7, 'New Manats', 'AZN', 'ман', 0, 1),
(8, 'Dollars', 'BSD', '$', 0, 1),
(9, 'Dollars', 'BBD', '$', 0, 1),
(10, 'Rubles', 'BYR', 'p.', 0, 0),
(11, 'Euro', 'EUR', '€', 1, 1),
(12, 'Dollars', 'BZD', 'BZ$', 0, 1),
(13, 'Dollars', 'BMD', '$', 0, 1),
(14, 'Bolivianos', 'BOB', '$b', 0, 1),
(15, 'Convertible Marka', 'BAM', 'KM', 0, 1),
(16, 'Pula', 'BWP', 'P', 0, 1),
(17, 'Leva', 'BGN', 'лв', 0, 1),
(18, 'Reais', 'BRL', 'R$', 1, 1),
(19, 'Pounds', 'GBP', '£', 1, 1),
(20, 'Dollars', 'BND', '$', 0, 1),
(21, 'Riels', 'KHR', '៛', 0, 1),
(22, 'Dollars', 'CAD', '$', 1, 1),
(23, 'Dollars', 'KYD', '$', 0, 1),
(24, 'Pesos', 'CLP', '$', 0, 1),
(25, 'Yuan Renminbi', 'CNY', '¥', 0, 1),
(26, 'Pesos', 'COP', '$', 0, 1),
(27, 'Colón', 'CRC', '₡', 0, 1),
(28, 'Kuna', 'HRK', 'kn', 0, 1),
(29, 'Pesos', 'CUP', '₱', 0, 0),
(30, 'Koruny', 'CZK', 'Kč', 1, 1),
(31, 'Kroner', 'DKK', 'kr', 1, 1),
(32, 'Pesos', 'DOP ', 'RD$', 0, 1),
(33, 'Dollars', 'XCD', '$', 0, 1),
(34, 'Pounds', 'EGP', '£', 0, 1),
(35, 'Colones', 'SVC', '$', 0, 0),
(36, 'Pounds', 'FKP', '£', 0, 1),
(37, 'Dollars', 'FJD', '$', 0, 1),
(38, 'Cedis', 'GHC', '¢', 0, 0),
(39, 'Pounds', 'GIP', '£', 0, 1),
(40, 'Quetzales', 'GTQ', 'Q', 0, 1),
(41, 'Pounds', 'GGP', '£', 0, 0),
(42, 'Dollars', 'GYD', '$', 0, 1),
(43, 'Lempiras', 'HNL', 'L', 0, 1),
(44, 'Dollars', 'HKD', '$', 1, 1),
(45, 'Forint', 'HUF', 'Ft', 1, 1),
(46, 'Kronur', 'ISK', 'kr', 0, 1),
(47, 'Rupees', 'INR', 'Rp', 1, 1),
(48, 'Rupiahs', 'IDR', 'Rp', 0, 1),
(49, 'Rials', 'IRR', '﷼', 0, 0),
(50, 'Pounds', 'IMP', '£', 0, 0),
(51, 'New Shekels', 'ILS', '₪', 1, 1),
(52, 'Dollars', 'JMD', 'J$', 0, 1),
(53, 'Yen', 'JPY', '¥', 1, 1),
(54, 'Pounds', 'JEP', '£', 0, 0),
(55, 'Tenge', 'KZT', 'лв', 0, 1),
(56, 'Won', 'KPW', '₩', 0, 0),
(57, 'Won', 'KRW', '₩', 0, 1),
(58, 'Soms', 'KGS', 'лв', 0, 1),
(59, 'Kips', 'LAK', '₭', 0, 1),
(60, 'Lati', 'LVL', 'Ls', 0, 0),
(61, 'Pounds', 'LBP', '£', 0, 1),
(62, 'Dollars', 'LRD', '$', 0, 1),
(63, 'Switzerland Francs', 'CHF', 'CHF', 1, 1),
(64, 'Litai', 'LTL', 'Lt', 0, 0),
(65, 'Denars', 'MKD', 'ден', 0, 1),
(66, 'Ringgits', 'MYR', 'RM', 1, 1),
(67, 'Rupees', 'MUR', '₨', 0, 1),
(68, 'Pesos', 'MXN', '$', 1, 1),
(69, 'Tugriks', 'MNT', '₮', 0, 1),
(70, 'Meticais', 'MZN', 'MT', 0, 1),
(71, 'Dollars', 'NAD', '$', 0, 1),
(72, 'Rupees', 'NPR', '₨', 0, 1),
(73, 'Guilders', 'ANG', 'ƒ', 0, 1),
(74, 'Dollars', 'NZD', '$', 1, 1),
(75, 'Cordobas', 'NIO', 'C$', 0, 1),
(76, 'Nairas', 'NGN', '₦', 0, 1),
(77, 'Krone', 'NOK', 'kr', 1, 1),
(78, 'Rials', 'OMR', '﷼', 0, 0),
(79, 'Rupees', 'PKR', '₨', 0, 1),
(80, 'Balboa', 'PAB', 'B/.', 0, 1),
(81, 'Guarani', 'PYG', 'Gs', 0, 1),
(82, 'Nuevos Soles', 'PEN', 'S/.', 0, 1),
(83, 'Pesos', 'PHP', 'Php', 1, 1),
(84, 'Zlotych', 'PLN', 'zł', 1, 1),
(85, 'Rials', 'QAR', '﷼', 0, 1),
(86, 'New Lei', 'RON', 'lei', 0, 1),
(87, 'Rubles', 'RUB', 'руб', 1, 1),
(88, 'Pounds', 'SHP', '£', 0, 1),
(89, 'Riyals', 'SAR', '﷼', 0, 1),
(90, 'Dinars', 'RSD', 'Дин.', 0, 1),
(91, 'Rupees', 'SCR', '₨', 0, 1),
(92, 'Dollars', 'SGD', '$', 1, 1),
(93, 'Dollars', 'SBD', '$', 0, 1),
(94, 'Shillings', 'SOS', 'S', 0, 1),
(95, 'Rand', 'ZAR', 'R', 0, 1),
(96, 'Rupees', 'LKR', '₨', 0, 1),
(97, 'Kronor', 'SEK', 'kr', 1, 1),
(98, 'Dollars', 'SRD', '$', 0, 1),
(99, 'Pounds', 'SYP', '£', 0, 0),
(100, 'New Dollars', 'TWD', 'NT$', 1, 1),
(101, 'Baht', 'THB', '฿', 1, 1),
(102, 'Dollars', 'TTD', 'TT$', 0, 1),
(103, 'Lira', 'TRY', 'TL', 0, 1),
(104, 'Liras', 'TRL', '£', 0, 0),
(105, 'Dollars', 'TVD', '$', 0, 0),
(106, 'Hryvnia', 'UAH', '₴', 0, 1),
(107, 'Pesos', 'UYU', '$U', 0, 1),
(108, 'Sums', 'UZS', 'лв', 0, 1),
(109, 'Bolivares Fuertes', 'VEF', 'Bs', 0, 0),
(110, 'Dong', 'VND', '₫', 0, 1),
(111, 'Rials', 'YER', '﷼', 0, 1),
(112, 'Zimbabwe Dollars', 'ZWD', 'Z$', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `enrol`
--

DROP TABLE IF EXISTS `enrol`;
CREATE TABLE IF NOT EXISTS `enrol` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `course_id` int DEFAULT NULL,
  `date_added` int DEFAULT NULL,
  `last_modified` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `frontend_settings`
--

DROP TABLE IF EXISTS `frontend_settings`;
CREATE TABLE IF NOT EXISTS `frontend_settings` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `value` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `frontend_settings`
--

INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES
(1, 'banner_title', 'WELCOME TO SCALA'),
(2, 'banner_sub_title', 'Empowering Students through Education, Start your learning journey with us! '),
(4, 'about_us', '<p></p><h2>Scala Innovative</h2><p>We are a unique and authentic organization that provides end to end solutions in the field of Education and Skill development training courses in India. Specifically designed to uplift the Indian Educational System, We have created a strong and viable network with the prestigious Cambridge University and work on inculcating a proficient learning experience.</p><p><br></p><p>We have created a unique bond with Cambridge University and hence, are capable to deliver the best quality educational programs developed by them to the people of India.</p><p><br></p><p>Scala Innovative, in collaboration with IEPC PVT LTD, Kollam, Kerala, has been impeccable in connecting the Indian educational system with the Ivy League learning system offered by the Cambridge University. We have been instrumental in imparting the amazing learning curriculum developed by the Cambridge University to instill the right way to achieve command over the English language. This is not only in an academic sphere, but also in the sphere of communication. Scala Innovative Pvt Ltd has partnered with a variety of organizations, not only to raise the standard of English by integrating the Cambridge University\'s English learning, but also to boost the chances of these schools\' students finding meaningful work.</p>'),
(10, 'terms_and_condition', '<h2><br></h2><p><br></p><br>'),
(11, 'privacy_policy', '<p></p><p></p><h2><span xss=\"removed\">Privacy Policy</span><br></h2>This is the Privacy Policy page for your companys<p></p><p><b>This is another</b> <u><a href=\"https://youtube.com/watch?v=PHgc8Q6qTjc\" target=\"_blank\">thing you will</a></u> <span xss=\"removed\">not understand</span>.</p>'),
(13, 'theme', 'default'),
(14, 'cookie_note', 'This website uses cookies to personalize content and analyse traffic in order to offer you a better experience.'),
(15, 'cookie_status', 'active'),
(16, 'cookie_policy', '<h1>Cookie policy</h1><ol><li>Cookies are small text files that can be used by websites to make a user\'s experience more efficient.</li><li>The law states that we can store cookies on your device if they are strictly necessary for the operation of this site. For all other types of cookies we need your permission.</li><li>This site uses different types of cookies. Some cookies are placed by third party services that appear on our pages.</li></ol>'),
(17, 'banner_image', '03cbeedb23de8305d29fc96d1c5ee9db.jpg'),
(18, 'light_logo', '6a734236fe497a0bdbb0018bfc62faaf.png'),
(19, 'dark_logo', 'logo-dark.png'),
(20, 'small_logo', 'logo-light-sm.png'),
(21, 'favicon', 'favicon.png'),
(22, 'recaptcha_status', '0'),
(23, 'recaptcha_secretkey', 'Valid-secret-key'),
(24, 'recaptcha_sitekey', 'Valid-site-key'),
(25, 'refund_policy', '<h2><span xss=\"removed\">Refund Policy</span></h2>'),
(26, 'facebook', 'https://facebook.com'),
(27, 'twitter', 'https://twitter.com'),
(28, 'linkedin', 'https://linkedin.com');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
CREATE TABLE IF NOT EXISTS `language` (
  `phrase_id` int NOT NULL AUTO_INCREMENT,
  `phrase` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `english` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`phrase_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

DROP TABLE IF EXISTS `lesson`;
CREATE TABLE IF NOT EXISTS `lesson` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `duration` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `course_id` int DEFAULT NULL,
  `section_id` int DEFAULT NULL,
  `video_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `video_url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `date_added` int DEFAULT NULL,
  `last_modified` int DEFAULT NULL,
  `lesson_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `attachment` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `attachment_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `summary` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `is_free` int NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '0',
  `video_type_for_mobile_application` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `video_url_for_mobile_application` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `duration_for_mobile_application` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
CREATE TABLE IF NOT EXISTS `log` (
  `id` int NOT NULL,
  `from` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `message_id` int NOT NULL AUTO_INCREMENT,
  `message_thread_code` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `message` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `sender` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `timestamp` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `read_status` int DEFAULT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `message_thread_code`, `message`, `sender`, `timestamp`, `read_status`) VALUES
(1, '8c115dc1ef09bd8', '', '2', '1680339689', 1),
(2, '8c115dc1ef09bd8', 'blablabalbaa', '2', '1680339697', 1),
(3, '5cd70602a66f3c3', 'Hey', '6', '1680721698', 1);

-- --------------------------------------------------------

--
-- Table structure for table `message_thread`
--

DROP TABLE IF EXISTS `message_thread`;
CREATE TABLE IF NOT EXISTS `message_thread` (
  `message_thread_id` int NOT NULL AUTO_INCREMENT,
  `message_thread_code` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `sender` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '',
  `receiver` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '',
  `last_message_timestamp` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`message_thread_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `message_thread`
--

INSERT INTO `message_thread` (`message_thread_id`, `message_thread_code`, `sender`, `receiver`, `last_message_timestamp`) VALUES
(1, '8c115dc1ef09bd8', '2', '1', NULL),
(2, '5cd70602a66f3c3', '6', '4', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `payment_type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `course_id` int DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `date_added` int DEFAULT NULL,
  `last_modified` int DEFAULT NULL,
  `admin_revenue` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `instructor_revenue` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `instructor_payment_status` int DEFAULT '0',
  `transaction_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `session_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `coupon` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payout`
--

DROP TABLE IF EXISTS `payout`;
CREATE TABLE IF NOT EXISTS `payout` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `date_added` int DEFAULT NULL,
  `last_modified` int DEFAULT NULL,
  `status` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `admin_id` int DEFAULT NULL,
  `permissions` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
CREATE TABLE IF NOT EXISTS `question` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `quiz_id` int DEFAULT NULL,
  `title` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `number_of_options` int DEFAULT NULL,
  `options` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `correct_answers` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `order` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
CREATE TABLE IF NOT EXISTS `rating` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `rating` double DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `ratable_id` int DEFAULT NULL,
  `ratable_type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `date_added` int DEFAULT NULL,
  `last_modified` int DEFAULT NULL,
  `review` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `date_added` int DEFAULT NULL,
  `last_modified` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `date_added`, `last_modified`) VALUES
(1, 'Admin', 1234567890, 1234567890),
(2, 'User', 1234567890, 1234567890);

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

DROP TABLE IF EXISTS `section`;
CREATE TABLE IF NOT EXISTS `section` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `course_id` int DEFAULT NULL,
  `order` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `value` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`) VALUES
(1, 'language', 'english'),
(2, 'system_name', ' '),
(3, 'system_title', 'Communication English'),
(4, 'system_email', 'scala@gmail.com'),
(5, 'address', 'Bangalore, India'),
(6, 'phone', '+91-1234567890'),
(7, 'purchase_code', 'your-purchase-code'),
(8, 'paypal', '[{\"active\":\"1\",\"mode\":\"sandbox\",\"sandbox_client_id\":\"AfGaziKslex-scLAyYdDYXNFaz2aL5qGau-SbDgE_D2E80D3AFauLagP8e0kCq9au7W4IasmFbirUUYc\",\"sandbox_secret_key\":\"EMa5pCTuOpmHkhHaCGibGhVUcKg0yt5-C3CzJw-OWJCzaXXzTlyD17SICob_BkfM_0Nlk7TWnN42cbGz\",\"production_client_id\":\"1234\",\"production_secret_key\":\"12345\"}]'),
(9, 'stripe_keys', '[{\"active\":\"1\",\"testmode\":\"on\",\"public_key\":\"pk_test_CAC3cB1mhgkJqXtypYBTGb4f\",\"secret_key\":\"sk_test_iatnshcHhQVRXdygXw3L2Pp2\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxxxxx\"}]'),
(10, 'youtube_api_key', 'youtube-api-key'),
(11, 'vimeo_api_key', 'vimeo-api-key'),
(12, 'slogan', 'A course based video CMS'),
(13, 'text_align', NULL),
(14, 'allow_instructor', '1'),
(15, 'instructor_revenue', '70'),
(16, 'system_currency', 'USD'),
(17, 'paypal_currency', 'USD'),
(18, 'stripe_currency', 'USD'),
(19, 'author', 'Scala Innovative Pvt Ltd'),
(20, 'currency_position', 'left'),
(21, 'website_description', 'Study any topic, anytime. explore thousands of courses for the lowest price ever!'),
(22, 'website_keywords', 'LMS,Learning Management System,Creativeitem,demo,hello,How are you'),
(23, 'footer_text', ''),
(24, 'footer_link', 'http://scalainnovative.com/'),
(25, 'protocol', 'smtp'),
(26, 'smtp_host', 'ssl://smtp.gmail.com'),
(27, 'smtp_port', '465'),
(28, 'smtp_user', 'Enter your email address'),
(29, 'smtp_pass', 'Enter your email password'),
(30, 'version', '5.4'),
(31, 'student_email_verification', 'disable'),
(32, 'instructor_application_note', 'Fill all the fields carefully and share if you want to share any document with us it will help us to evaluate you as an instructor.'),
(33, 'razorpay_keys', '[{\"active\":\"1\",\"key\":\"rzp_test_J60bqBOi1z1aF5\",\"secret_key\":\"uk935K7p4j96UCJgHK8kAU4q\",\"theme_color\":\"#c7a600\"}]'),
(34, 'razorpay_currency', 'USD'),
(35, 'fb_app_id', 'App-id'),
(36, 'fb_app_secret', 'App-secret-key'),
(37, 'fb_social_login', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
CREATE TABLE IF NOT EXISTS `tag` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `tag` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `tagable_id` int DEFAULT NULL,
  `tagable_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `date_added` int DEFAULT NULL,
  `last_modified` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `skills` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `social_links` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `biography` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `role_id` int DEFAULT NULL,
  `date_added` int DEFAULT NULL,
  `last_modified` int DEFAULT NULL,
  `watch_history` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `wishlist` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `title` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `paypal_keys` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `stripe_keys` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `verification_code` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `status` int DEFAULT NULL,
  `is_instructor` int DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `skills`, `social_links`, `biography`, `role_id`, `date_added`, `last_modified`, `watch_history`, `wishlist`, `title`, `paypal_keys`, `stripe_keys`, `verification_code`, `status`, `is_instructor`, `image`) VALUES
(4, 'OSCAR', 'DANIEL', 'admin@admin.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', '', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL),
(5, 'claudia', 'palix', 'claudiapalix@gmail.com', '67df0b0c23e484a1f2f94d731e25a5ba74b77404', '', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', '', 2, 1680467695, 1680722931, '[]', '[]', NULL, '[{\"production_client_id\":\"\",\"production_secret_key\":\"\"}]', '[{\"public_live_key\":\"\",\"secret_live_key\":\"\"}]', NULL, 1, 0, '4478a152bff0379d3d6ac9a78972032e'),
(6, 'Rohit', 'Menon', 'rohitmenon@gmail.com', 'b1b3773a05c0ed0176787a4f1574ff0075f7521e', '', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', '', 2, 1680675182, 1680722840, '[]', '[]', NULL, '[{\"production_client_id\":\"\",\"production_secret_key\":\"\"}]', '[{\"public_live_key\":\"\",\"secret_live_key\":\"\"}]', NULL, 1, 1, 'd2e7cbb87fab74c04528d0e301e02962'),
(7, 'k', 'j', 'k@gmail.com', '1cd2f0fc9812119c1b7c2c10ca17044d9135b5bd', '', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', '', 2, 1680723124, NULL, '[]', '[]', NULL, '[{\"production_client_id\":\"\",\"production_secret_key\":\"\"}]', '[{\"public_live_key\":\"\",\"secret_live_key\":\"\"}]', NULL, 1, 0, 'd9747a6b8b5d89e995316c8e90a3cf98');

-- --------------------------------------------------------

--
-- Table structure for table `watch_histories`
--

DROP TABLE IF EXISTS `watch_histories`;
CREATE TABLE IF NOT EXISTS `watch_histories` (
  `watch_history_id` int NOT NULL AUTO_INCREMENT,
  `course_id` int NOT NULL,
  `student_id` int NOT NULL,
  `watching_lesson_id` int NOT NULL,
  `date_added` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `date_updated` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`watch_history_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2023 at 05:45 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2017-01-24 16:21:18', '10-09-2022 06:34:27 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(7, 'Monitor', '', '2022-11-30 12:44:17', NULL),
(8, 'Graphics Card', '', '2023-01-10 13:28:51', NULL),
(9, 'Motherboard', '', '2023-03-04 13:26:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(10, 5, '21', 1, '2022-11-30 12:51:58', 'COD', 'in Process'),
(11, 6, '21', 1, '2022-11-30 15:40:08', 'COD', NULL),
(12, 5, '21', 1, '2023-01-10 13:34:21', 'COD', NULL),
(13, 5, '24', 1, '2023-01-10 13:34:21', 'COD', 'in Process'),
(14, 5, '21', 1, '2023-01-10 13:45:11', NULL, NULL),
(15, 5, '24', 1, '2023-03-03 07:33:26', NULL, NULL),
(16, 5, '24', 1, '2023-03-03 07:47:58', NULL, NULL),
(17, 5, '21', 1, '2023-03-04 10:13:42', NULL, NULL),
(18, 5, '21', 1, '2023-03-04 10:30:43', NULL, NULL),
(19, 5, '21', 1, '2023-03-04 10:36:10', NULL, NULL),
(20, 5, '21', 1, '2023-03-04 10:36:12', NULL, NULL),
(21, 5, '21', 1, '2023-03-04 10:36:19', NULL, NULL),
(22, 5, '21', 1, '2023-03-04 10:36:57', NULL, NULL),
(23, 5, '21', 1, '2023-03-04 10:37:00', NULL, NULL),
(24, 5, '21', 1, '2023-03-04 10:37:36', NULL, NULL),
(25, 5, '21', 1, '2023-03-04 10:37:48', NULL, NULL),
(26, 5, '21', 1, '2023-03-04 10:37:51', NULL, NULL),
(27, 5, '21', 1, '2023-03-04 10:38:28', NULL, NULL),
(28, 5, '21', 1, '2023-03-04 10:43:50', NULL, NULL),
(29, 5, '24', 1, '2023-03-04 10:43:50', NULL, NULL),
(30, 5, '24', 1, '2023-03-04 13:22:34', NULL, NULL),
(31, 1, '24', 1, '2023-03-04 13:33:30', NULL, NULL),
(32, 5, '24', 1, '2023-03-04 13:38:21', NULL, NULL),
(33, 5, '24', 1, '2023-03-04 13:45:42', NULL, NULL),
(34, 5, '24', 1, '2023-03-04 14:38:37', NULL, NULL),
(35, 5, '24', 2, '2023-03-04 14:47:55', NULL, NULL),
(36, 5, '24', 1, '2023-03-05 01:52:35', NULL, NULL),
(37, 5, '21', 1, '2023-03-05 02:33:28', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(8, 10, 'in Process', 'shipped ', '2022-12-01 01:13:46'),
(9, 13, 'in Process', 'Processing..', '2023-01-10 13:37:05');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(21, 7, 13, 'Dell S2721HN 27-inch Monitor / Full HD / LED Backlight / AMD FreeSync / 4ms Response Time / 72% NTSC', 'Dell', 25000, 28000, '<table cellspacing=\"0\" cellpadding=\"5\" style=\"width: 1330px; margin: 0px 0px 1.5em; border: none; color: rgb(0, 0, 0); font-family: arial, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255); height: auto !important;\"><tbody style=\"box-sizing: border-box;\"><tr valign=\"top\" style=\"box-sizing: border-box; background-color: rgb(247, 247, 250);\"><td width=\"43%\" style=\"box-sizing: border-box; padding: 7px 15px; border-top: none !important; border-right: 1px solid rgb(213, 213, 213); border-bottom: none !important; border-left: none !important; border-image: initial !important; vertical-align: top; font-size: 14px; width: auto !important; height: auto !important; color: rgb(96, 96, 96);\"><p style=\"box-sizing: border-box; margin-bottom: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; font-weight: 700;\">Screen Size</span></p></td><td width=\"57%\" style=\"box-sizing: border-box; padding: 7px 15px; border: none !important; vertical-align: top; font-size: 14px; width: auto !important; height: auto !important; color: rgb(96, 96, 96);\"><p style=\"box-sizing: border-box; margin-bottom: 0px; color: rgb(0, 0, 0); overflow-wrap: break-word; word-break: break-all;\">27” (flat)</p></td></tr><tr valign=\"top\" style=\"box-sizing: border-box;\"><td width=\"43%\" style=\"box-sizing: border-box; padding: 7px 15px; border-top: none !important; border-right: 1px solid rgb(213, 213, 213); border-bottom: none !important; border-left: none !important; border-image: initial !important; vertical-align: top; font-size: 14px; width: auto !important; height: auto !important; color: rgb(96, 96, 96);\"><p style=\"box-sizing: border-box; margin-bottom: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; font-weight: 700;\">Screen Coating</span></p></td><td width=\"57%\" style=\"box-sizing: border-box; padding: 7px 15px; border: none !important; vertical-align: top; font-size: 14px; width: auto !important; height: auto !important; color: rgb(96, 96, 96);\"><p style=\"box-sizing: border-box; margin-bottom: 0px; color: rgb(0, 0, 0); overflow-wrap: break-word; word-break: break-all;\">Anti-glare 3H hardness</p></td></tr><tr valign=\"top\" style=\"box-sizing: border-box; background-color: rgb(247, 247, 250);\"><td width=\"43%\" style=\"box-sizing: border-box; padding: 7px 15px; border-top: none !important; border-right: 1px solid rgb(213, 213, 213); border-bottom: none !important; border-left: none !important; border-image: initial !important; vertical-align: top; font-size: 14px; width: auto !important; height: auto !important; color: rgb(96, 96, 96);\"><p style=\"box-sizing: border-box; margin-bottom: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; font-weight: 700;\">Panel Type</span></p></td><td width=\"57%\" style=\"box-sizing: border-box; padding: 7px 15px; border: none !important; vertical-align: top; font-size: 14px; width: auto !important; height: auto !important; color: rgb(96, 96, 96);\"><p style=\"box-sizing: border-box; margin-bottom: 0px; color: rgb(0, 0, 0); overflow-wrap: break-word; word-break: break-all;\">IPS</p></td></tr><tr valign=\"top\" style=\"box-sizing: border-box;\"><td width=\"43%\" style=\"box-sizing: border-box; padding: 7px 15px; border-top: none !important; border-right: 1px solid rgb(213, 213, 213); border-bottom: none !important; border-left: none !important; border-image: initial !important; vertical-align: top; font-size: 14px; width: auto !important; height: auto !important; color: rgb(96, 96, 96);\"><p style=\"box-sizing: border-box; margin-bottom: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; font-weight: 700;\">Dimension</span></p></td><td width=\"57%\" style=\"box-sizing: border-box; padding: 7px 15px; border: none !important; vertical-align: top; font-size: 14px; width: auto !important; height: auto !important; color: rgb(96, 96, 96);\"><p style=\"box-sizing: border-box; margin-bottom: 0px; color: rgb(0, 0, 0); overflow-wrap: break-word; word-break: break-all;\">17.8H x 24W x 7.4D-inches</p></td></tr><tr valign=\"top\" style=\"box-sizing: border-box; background-color: rgb(247, 247, 250);\"><td width=\"43%\" style=\"box-sizing: border-box; padding: 7px 15px; border-top: none !important; border-right: 1px solid rgb(213, 213, 213); border-bottom: none !important; border-left: none !important; border-image: initial !important; vertical-align: top; font-size: 14px; width: auto !important; height: auto !important; color: rgb(96, 96, 96);\"><p style=\"box-sizing: border-box; margin-bottom: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; font-weight: 700;\">VESA Wall Mount</span></p></td><td width=\"57%\" style=\"box-sizing: border-box; padding: 7px 15px; border: none !important; vertical-align: top; font-size: 14px; width: auto !important; height: auto !important; color: rgb(96, 96, 96);\"><p style=\"box-sizing: border-box; margin-bottom: 0px; color: rgb(0, 0, 0); overflow-wrap: break-word; word-break: break-all;\">Yes (100 x 100mm)</p></td></tr><tr valign=\"top\" style=\"box-sizing: border-box;\"><td width=\"43%\" style=\"box-sizing: border-box; padding: 7px 15px; border-top: none !important; border-right: 1px solid rgb(213, 213, 213); border-bottom: none !important; border-left: none !important; border-image: initial !important; vertical-align: top; font-size: 14px; width: auto !important; height: auto !important; color: rgb(96, 96, 96);\"><p style=\"box-sizing: border-box; margin-bottom: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; font-weight: 700;\">Weight</span></p></td><td width=\"57%\" style=\"box-sizing: border-box; padding: 7px 15px; border: none !important; vertical-align: top; font-size: 14px; width: auto !important; height: auto !important; color: rgb(96, 96, 96);\"><p style=\"box-sizing: border-box; margin-bottom: 0px; color: rgb(0, 0, 0); overflow-wrap: break-word; word-break: break-all;\">4.31 kg (gross)</p></td></tr><tr valign=\"top\" style=\"box-sizing: border-box; background-color: rgb(247, 247, 250);\"><td width=\"43%\" style=\"box-sizing: border-box; padding: 7px 15px; border-top: none !important; border-right: 1px solid rgb(213, 213, 213); border-bottom: none !important; border-left: none !important; border-image: initial !important; vertical-align: top; font-size: 14px; width: auto !important; height: auto !important; color: rgb(96, 96, 96);\"><p style=\"box-sizing: border-box; margin-bottom: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; font-weight: 700;\">Display Position Adjustment</span></p></td><td width=\"57%\" style=\"box-sizing: border-box; padding: 7px 15px; border: none !important; vertical-align: top; font-size: 14px; width: auto !important; height: auto !important; color: rgb(96, 96, 96);\"><p style=\"box-sizing: border-box; margin-bottom: 0px; color: rgb(0, 0, 0); overflow-wrap: break-word; word-break: break-all;\">Tilt (-5° to 21°)</p></td></tr><tr valign=\"top\" style=\"box-sizing: border-box;\"><td width=\"43%\" style=\"box-sizing: border-box; padding: 7px 15px; border-top: none !important; border-right: 1px solid rgb(213, 213, 213); border-bottom: none !important; border-left: none !important; border-image: initial !important; vertical-align: top; font-size: 14px; width: auto !important; height: auto !important; color: rgb(96, 96, 96);\"><p style=\"box-sizing: border-box; margin-bottom: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; font-weight: 700;\">Flicker-free Technology</span></p></td><td width=\"57%\" style=\"box-sizing: border-box; padding: 7px 15px; border: none !important; vertical-align: top; font-size: 14px; width: auto !important; height: auto !important; color: rgb(96, 96, 96);\"><p style=\"box-sizing: border-box; margin-bottom: 0px; color: rgb(0, 0, 0); overflow-wrap: break-word; word-break: break-all;\">Yes, TUV Flicker-free</p></td></tr><tr valign=\"top\" style=\"box-sizing: border-box; background-color: rgb(247, 247, 250);\"><td width=\"43%\" style=\"box-sizing: border-box; padding: 7px 15px; border-top: none !important; border-right: 1px solid rgb(213, 213, 213); border-bottom: none !important; border-left: none !important; border-image: initial !important; vertical-align: top; font-size: 14px; width: auto !important; height: auto !important; color: rgb(96, 96, 96);\"><p style=\"box-sizing: border-box; margin-bottom: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; font-weight: 700;\">Low Blue Light</span></p></td><td width=\"57%\" style=\"box-sizing: border-box; padding: 7px 15px; border: none !important; vertical-align: top; font-size: 14px; width: auto !important; height: auto !important; color: rgb(96, 96, 96);\"><p style=\"box-sizing: border-box; margin-bottom: 0px; color: rgb(0, 0, 0); overflow-wrap: break-word; word-break: break-all;\">Yes</p></td></tr><tr valign=\"top\" style=\"box-sizing: border-box;\"><td width=\"43%\" style=\"box-sizing: border-box; padding: 7px 15px; border-top: none !important; border-right: 1px solid rgb(213, 213, 213); border-bottom: none !important; border-left: none !important; border-image: initial !important; vertical-align: top; font-size: 14px; width: auto !important; height: auto !important; color: rgb(96, 96, 96);\"><p style=\"box-sizing: border-box; margin-bottom: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; font-weight: 700;\">Backlight Technology</span></p></td><td width=\"57%\" style=\"box-sizing: border-box; padding: 7px 15px; border: none !important; vertical-align: top; font-size: 14px; width: auto !important; height: auto !important; color: rgb(96, 96, 96);\"><p style=\"box-sizing: border-box; margin-bottom: 0px; color: rgb(0, 0, 0); overflow-wrap: break-word; word-break: break-all;\">LED backlight / TFT active matrix</p></td></tr><tr valign=\"top\" style=\"box-sizing: border-box; background-color: rgb(247, 247, 250);\"><td width=\"43%\" style=\"box-sizing: border-box; padding: 7px 15px; border-top: none !important; border-right: 1px solid rgb(213, 213, 213); border-bottom: none !important; border-left: none !important; border-image: initial !important; vertical-align: top; font-size: 14px; width: auto !important; height: auto !important; color: rgb(96, 96, 96);\"><p style=\"box-sizing: border-box; margin-bottom: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; font-weight: 700;\">Aspect Ratio</span></p></td><td width=\"57%\" style=\"box-sizing: border-box; padding: 7px 15px; border: none !important; vertical-align: top; font-size: 14px; width: auto !important; height: auto !important; color: rgb(96, 96, 96);\"><p style=\"box-sizing: border-box; margin-bottom: 0px; color: rgb(0, 0, 0); overflow-wrap: break-word; word-break: break-all;\">16:9</p></td></tr><tr valign=\"top\" style=\"box-sizing: border-box;\"><td width=\"43%\" style=\"box-sizing: border-box; padding: 7px 15px; border-top: none !important; border-right: 1px solid rgb(213, 213, 213); border-bottom: none !important; border-left: none !important; border-image: initial !important; vertical-align: top; font-size: 14px; width: auto !important; height: auto !important; color: rgb(96, 96, 96);\"><p style=\"box-sizing: border-box; margin-bottom: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; font-weight: 700;\">Display Colors</span></p></td><td width=\"57%\" style=\"box-sizing: border-box; padding: 7px 15px; border: none !important; vertical-align: top; font-size: 14px; width: auto !important; height: auto !important; color: rgb(96, 96, 96);\"><p style=\"box-sizing: border-box; margin-bottom: 0px; color: rgb(0, 0, 0); overflow-wrap: break-word; word-break: break-all;\">16.7 million color</p></td></tr><tr valign=\"top\" style=\"box-sizing: border-box; background-color: rgb(247, 247, 250);\"><td width=\"43%\" style=\"box-sizing: border-box; padding: 7px 15px; border-top: none !important; border-right: 1px solid rgb(213, 213, 213); border-bottom: none !important; border-left: none !important; border-image: initial !important; vertical-align: top; font-size: 14px; width: auto !important; height: auto !important; color: rgb(96, 96, 96);\"><p style=\"box-sizing: border-box; margin-bottom: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; font-weight: 700;\">Resolution (max.)</span></p></td><td width=\"57%\" style=\"box-sizing: border-box; padding: 7px 15px; border: none !important; vertical-align: top; font-size: 14px; width: auto !important; height: auto !important; color: rgb(96, 96, 96);\"><p style=\"box-sizing: border-box; margin-bottom: 0px; color: rgb(0, 0, 0); overflow-wrap: break-word; word-break: break-all;\">1920 x 1080 (FHD)<br style=\"box-sizing: border-box;\">0.3114 pixel pitch</p></td></tr><tr valign=\"top\" style=\"box-sizing: border-box;\"><td width=\"43%\" style=\"box-sizing: border-box; padding: 7px 15px; border-top: none !important; border-right: 1px solid rgb(213, 213, 213); border-bottom: none !important; border-left: none !important; border-image: initial !important; vertical-align: top; font-size: 14px; width: auto !important; height: auto !important; color: rgb(96, 96, 96);\"><p style=\"box-sizing: border-box; margin-bottom: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; font-weight: 700;\">Response Times (GtG)</span></p></td><td width=\"57%\" style=\"box-sizing: border-box; padding: 7px 15px; border: none !important; vertical-align: top; font-size: 14px; width: auto !important; height: auto !important; color: rgb(96, 96, 96);\"><p style=\"box-sizing: border-box; margin-bottom: 0px; color: rgb(0, 0, 0); overflow-wrap: break-word; word-break: break-all;\">4ms</p></td></tr><tr valign=\"top\" style=\"box-sizing: border-box; background-color: rgb(247, 247, 250);\"><td width=\"43%\" style=\"box-sizing: border-box; padding: 7px 15px; border-top: none !important; border-right: 1px solid rgb(213, 213, 213); border-bottom: none !important; border-left: none !important; border-image: initial !important; vertical-align: top; font-size: 14px; width: auto !important; height: auto !important; color: rgb(96, 96, 96);\"><p style=\"box-sizing: border-box; margin-bottom: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; font-weight: 700;\">Refresh Rate</span></p></td><td width=\"57%\" style=\"box-sizing: border-box; padding: 7px 15px; border: none !important; vertical-align: top; font-size: 14px; width: auto !important; height: auto !important; color: rgb(96, 96, 96);\"><p style=\"box-sizing: border-box; margin-bottom: 0px; color: rgb(0, 0, 0); overflow-wrap: break-word; word-break: break-all;\">75Hz</p></td></tr><tr valign=\"top\" style=\"box-sizing: border-box;\"><td width=\"43%\" style=\"box-sizing: border-box; padding: 7px 15px; border-top: none !important; border-right: 1px solid rgb(213, 213, 213); border-bottom: none !important; border-left: none !important; border-image: initial !important; vertical-align: top; font-size: 14px; width: auto !important; height: auto !important; color: rgb(96, 96, 96);\"><p style=\"box-sizing: border-box; margin-bottom: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; font-weight: 700;\">Viewing Angle (V/H)</span></p></td><td width=\"57%\" style=\"box-sizing: border-box; padding: 7px 15px; border: none !important; vertical-align: top; font-size: 14px; width: auto !important; height: auto !important; color: rgb(96, 96, 96);\"><p style=\"box-sizing: border-box; margin-bottom: 0px; color: rgb(0, 0, 0); overflow-wrap: break-word; word-break: break-all;\">178°</p></td></tr><tr valign=\"top\" style=\"box-sizing: border-box; background-color: rgb(247, 247, 250);\"><td width=\"43%\" style=\"box-sizing: border-box; padding: 7px 15px; border-top: none !important; border-right: 1px solid rgb(213, 213, 213); border-bottom: none !important; border-left: none !important; border-image: initial !important; vertical-align: top; font-size: 14px; width: auto !important; height: auto !important; color: rgb(96, 96, 96);\"><p style=\"box-sizing: border-box; margin-bottom: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; font-weight: 700;\">HDCP</span></p></td><td width=\"57%\" style=\"box-sizing: border-box; padding: 7px 15px; border: none !important; vertical-align: top; font-size: 14px; width: auto !important; height: auto !important; color: rgb(96, 96, 96);\"><p style=\"box-sizing: border-box; margin-bottom: 0px; color: rgb(0, 0, 0); overflow-wrap: break-word; word-break: break-all;\">1.4</p></td></tr><tr valign=\"top\" style=\"box-sizing: border-box;\"><td width=\"43%\" style=\"box-sizing: border-box; padding: 7px 15px; border-top: none !important; border-right: 1px solid rgb(213, 213, 213); border-bottom: none !important; border-left: none !important; border-image: initial !important; vertical-align: top; font-size: 14px; width: auto !important; height: auto !important; color: rgb(96, 96, 96);\"><p style=\"box-sizing: border-box; margin-bottom: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; font-weight: 700;\">AMD FreeSync</span></p></td><td width=\"57%\" style=\"box-sizing: border-box; padding: 7px 15px; border: none !important; vertical-align: top; font-size: 14px; width: auto !important; height: auto !important; color: rgb(96, 96, 96);\"><p style=\"box-sizing: border-box; margin-bottom: 0px; color: rgb(0, 0, 0); overflow-wrap: break-word; word-break: break-all;\">Yes</p></td></tr><tr valign=\"top\" style=\"box-sizing: border-box; background-color: rgb(247, 247, 250);\"><td width=\"43%\" style=\"box-sizing: border-box; padding: 7px 15px; border-top: none !important; border-right: 1px solid rgb(213, 213, 213); border-bottom: none !important; border-left: none !important; border-image: initial !important; vertical-align: top; font-size: 14px; width: auto !important; height: auto !important; color: rgb(96, 96, 96);\"><p style=\"box-sizing: border-box; margin-bottom: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; font-weight: 700;\">Native Contrast (typ.)</span></p></td><td width=\"57%\" style=\"box-sizing: border-box; padding: 7px 15px; border: none !important; vertical-align: top; font-size: 14px; width: auto !important; height: auto !important; color: rgb(96, 96, 96);\"><p style=\"box-sizing: border-box; margin-bottom: 0px; color: rgb(0, 0, 0); overflow-wrap: break-word; word-break: break-all;\">1000:1</p></td></tr><tr valign=\"top\" style=\"box-sizing: border-box;\"><td width=\"43%\" style=\"box-sizing: border-box; padding: 7px 15px; border-top: none !important; border-right: 1px solid rgb(213, 213, 213); border-bottom: none !important; border-left: none !important; border-image: initial !important; vertical-align: top; font-size: 14px; width: auto !important; height: auto !important; color: rgb(96, 96, 96);\"><p style=\"box-sizing: border-box; margin-bottom: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; font-weight: 700;\">Brightness</span></p></td><td width=\"57%\" style=\"box-sizing: border-box; padding: 7px 15px; border: none !important; vertical-align: top; font-size: 14px; width: auto !important; height: auto !important; color: rgb(96, 96, 96);\"><p style=\"box-sizing: border-box; margin-bottom: 0px; color: rgb(0, 0, 0); overflow-wrap: break-word; word-break: break-all;\">300 cd/m2 (typ)</p></td></tr><tr valign=\"top\" style=\"box-sizing: border-box; background-color: rgb(247, 247, 250);\"><td width=\"43%\" style=\"box-sizing: border-box; padding: 7px 15px; border-top: none !important; border-right: 1px solid rgb(213, 213, 213); border-bottom: none !important; border-left: none !important; border-image: initial !important; vertical-align: top; font-size: 14px; width: auto !important; height: auto !important; color: rgb(96, 96, 96);\"><p style=\"box-sizing: border-box; margin-bottom: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; font-weight: 700;\">Color Gamut</span></p></td><td width=\"57%\" style=\"box-sizing: border-box; padding: 7px 15px; border: none !important; vertical-align: top; font-size: 14px; width: auto !important; height: auto !important; color: rgb(96, 96, 96);\"><p style=\"box-sizing: border-box; margin-bottom: 0px; color: rgb(0, 0, 0); overflow-wrap: break-word; word-break: break-all;\">72% NTSC</p></td></tr><tr valign=\"top\" style=\"box-sizing: border-box;\"><td width=\"43%\" style=\"box-sizing: border-box; padding: 7px 15px; border-top: none !important; border-right: 1px solid rgb(213, 213, 213); border-bottom: none !important; border-left: none !important; border-image: initial !important; vertical-align: top; font-size: 14px; width: auto !important; height: auto !important; color: rgb(96, 96, 96);\"><p style=\"box-sizing: border-box; margin-bottom: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; font-weight: 700;\">Built-in Speaker</span></p></td><td width=\"57%\" style=\"box-sizing: border-box; padding: 7px 15px; border: none !important; vertical-align: top; font-size: 14px; width: auto !important; height: auto !important; color: rgb(96, 96, 96);\"><p style=\"box-sizing: border-box; margin-bottom: 0px; color: rgb(0, 0, 0); overflow-wrap: break-word; word-break: break-all;\">No</p></td></tr><tr valign=\"top\" style=\"box-sizing: border-box; background-color: rgb(247, 247, 250);\"><td width=\"43%\" style=\"box-sizing: border-box; padding: 7px 15px; border-top: none !important; border-right: 1px solid rgb(213, 213, 213); border-bottom: none !important; border-left: none !important; border-image: initial !important; vertical-align: top; font-size: 14px; width: auto !important; height: auto !important; color: rgb(96, 96, 96);\"><p style=\"box-sizing: border-box; margin-bottom: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; font-weight: 700;\">Headphone Jack</span></p></td><td width=\"57%\" style=\"box-sizing: border-box; padding: 7px 15px; border: none !important; vertical-align: top; font-size: 14px; width: auto !important; height: auto !important; color: rgb(96, 96, 96);\"><p style=\"box-sizing: border-box; margin-bottom: 0px; color: rgb(0, 0, 0); overflow-wrap: break-word; word-break: break-all;\">Yes</p></td></tr><tr valign=\"top\" style=\"box-sizing: border-box;\"><td width=\"43%\" style=\"box-sizing: border-box; padding: 7px 15px; border-top: none !important; border-right: 1px solid rgb(213, 213, 213); border-bottom: none !important; border-left: none !important; border-image: initial !important; vertical-align: top; font-size: 14px; width: auto !important; height: auto !important; color: rgb(96, 96, 96);\"><p style=\"box-sizing: border-box; margin-bottom: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; font-weight: 700;\">Connectivity</span></p></td><td width=\"57%\" style=\"box-sizing: border-box; padding: 7px 15px; border: none !important; vertical-align: top; font-size: 14px; width: auto !important; height: auto !important; color: rgb(96, 96, 96);\"><p style=\"box-sizing: border-box; margin-bottom: 0px; color: rgb(0, 0, 0); overflow-wrap: break-word; word-break: break-all;\">2x HDMI (HDCP 1.4), Audio line-out</p></td></tr><tr valign=\"top\" style=\"box-sizing: border-box; background-color: rgb(247, 247, 250);\"><td width=\"43%\" style=\"box-sizing: border-box; padding: 7px 15px; border-top: none !important; border-right: 1px solid rgb(213, 213, 213); border-bottom: none !important; border-left: none !important; border-image: initial !important; vertical-align: top; font-size: 14px; width: auto !important; height: auto !important; color: rgb(96, 96, 96);\"><p style=\"box-sizing: border-box; margin-bottom: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; font-weight: 700;\">Voltage Rating</span></p></td><td width=\"57%\" style=\"box-sizing: border-box; padding: 7px 15px; border: none !important; vertical-align: top; font-size: 14px; width: auto !important; height: auto !important; color: rgb(96, 96, 96);\"><p style=\"box-sizing: border-box; margin-bottom: 0px; color: rgb(0, 0, 0); overflow-wrap: break-word; word-break: break-all;\">100-240V (50/60Hz)</p></td></tr><tr valign=\"top\" style=\"box-sizing: border-box; border-bottom: none;\"><td width=\"43%\" style=\"box-sizing: border-box; padding: 7px 15px; border-top: none !important; border-right: 1px solid rgb(213, 213, 213); border-bottom: none !important; border-left: none !important; border-image: initial !important; vertical-align: top; font-size: 14px; width: auto !important; height: auto !important; color: rgb(96, 96, 96);\"><p style=\"box-sizing: border-box; margin-bottom: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; font-weight: 700;\">Compatibility</span></p></td><td width=\"57%\" style=\"box-sizing: border-box; padding: 7px 15px; border: none !important; vertical-align: top; font-size: 14px; width: auto !important; height: auto !important; color: rgb(96, 96, 96);\"><p style=\"box-sizing: border-box; margin-bottom: 0px; color: rgb(0, 0, 0); overflow-wrap: break-word; word-break: break-all;\">Mac, Windows, Linux</p></td></tr></tbody></table>', 'Screenshot 2022-11-30 183429.jpg', 'Screenshot 2022-11-30 183429.jpg', 'Screenshot 2022-11-30 183429.jpg', 200, 'In Stock', '2022-11-30 12:50:17', NULL),
(24, 8, 15, 'Asus ROG Strix GeForce RTX 3080 Ti OC Edition Graphics Card', 'Asus', 277000, 285000, '<ul data-cnet-ccs-icb-annotation=\"true\" style=\"box-sizing: border-box; padding-left: 2rem; margin-bottom: 1rem; color: rgb(51, 62, 72); font-family: &quot;Open Sans&quot;; font-size: 14px; letter-spacing: -0.14px;\"><li data-cnet-ccs-icb-annotation=\"true\" style=\"box-sizing: border-box;\"><span data-cnet-ccs-icb-annotation=\"true\" style=\"box-sizing: border-box; font-weight: 700; margin-bottom: 0px;\">NVIDIA Ampere Streaming Multiprocessors:</span>&nbsp;The building blocks for the world’s fastest, most efficient GPUs, the all-new Ampere SM brings 2X the FP32 throughput and improved power efficiency.</li><li data-cnet-ccs-icb-annotation=\"true\" style=\"box-sizing: border-box;\"><span data-cnet-ccs-icb-annotation=\"true\" style=\"box-sizing: border-box; font-weight: 700; margin-bottom: 0px;\">2nd Generation RT Cores:&nbsp;</span>Experience 2X the throughput of 1st gen RT Cores, plus concurrent RT and shading for a whole new level of ray tracing performance.</li><li data-cnet-ccs-icb-annotation=\"true\" style=\"box-sizing: border-box;\"><span data-cnet-ccs-icb-annotation=\"true\" style=\"box-sizing: border-box; font-weight: 700; margin-bottom: 0px;\">3rd Generation Tensor Cores:</span>&nbsp;Get up to 2X the throughput with structural sparsity and advanced AI algorithms such as DLSS. These cores deliver a massive boost in-game performance and all-new AI capabilities.</li><li data-cnet-ccs-icb-annotation=\"true\" style=\"box-sizing: border-box;\"><span data-cnet-ccs-icb-annotation=\"true\" style=\"box-sizing: border-box; font-weight: 700; margin-bottom: 0px;\">OC edition:</span>&nbsp;Boost clock 1845 MHz (OC mode) / 1815 MHz (Gaming mode).</li><li data-cnet-ccs-icb-annotation=\"true\" style=\"box-sizing: border-box;\"><span data-cnet-ccs-icb-annotation=\"true\" style=\"box-sizing: border-box; font-weight: 700; margin-bottom: 0px;\">Axial-tech Fan Design</span>&nbsp;has been tuned up with more fan blades and a reversed rotational direction for the center fan.</li><li data-cnet-ccs-icb-annotation=\"true\" style=\"box-sizing: border-box;\"><span data-cnet-ccs-icb-annotation=\"true\" style=\"box-sizing: border-box; font-weight: 700; margin-bottom: 0px;\">2.9-slot design</span>&nbsp;expands cooling surface area compared to last-gen for more thermal headroom than ever before.</li><li data-cnet-ccs-icb-annotation=\"true\" style=\"box-sizing: border-box;\"><span data-cnet-ccs-icb-annotation=\"true\" style=\"box-sizing: border-box; font-weight: 700; margin-bottom: 0px;\">Super Alloy Power II</span>&nbsp;includes premium alloy chokes, solid polymer capacitors, and an array of high-current power stages.</li><li data-cnet-ccs-icb-annotation=\"true\" style=\"box-sizing: border-box; margin-bottom: 0px;\"><span data-cnet-ccs-icb-annotation=\"true\" style=\"box-sizing: border-box; font-weight: 700; margin-bottom: 0px;\">GPU Tweak II</span>&nbsp;provides intuitive performance tweaking, thermal controls, and system monitoring.</li></ul>', 'asus.jpg', 'asus2.jpg', 'asus2.jpg', 200, 'In Stock', '2023-01-10 13:32:45', NULL),
(25, 9, 17, 'MSI Z590 PRO WiFi Motherboard ATX - Supports Intel Core 11th and 10th Gen Processors, LGA 1200-12 Duet Rail 55A VRM, DDR4 Boost (5333MHz OC), PCIe 4.0 x16, 3 x M.2 Gen4/3 x4, 4K/60Hz HDMI, 2.5G LAN, Wi-Fi 6E', 'MSI', 31500, 34000, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; list-style: none; color: rgb(0, 0, 0); font-family: arial, sans-serif; font-size: 16px;\"><li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Supports 11th and 10th Gen Intel Core/Pentium/Celeron processors for LGA 1200 Socket</span></li><li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">SMART COOLING - Frozr AI Cooling automatically adjusts system fan speeds based on CPU &amp; GPU temperatures, while the VRM includes an extended heatsink design for enhanced passive cooling</span></li><li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">DUAL GPU SLOTS, HIGH RAM SPEEDS – The primary PCIe 4.0 x16 slot (with steel frame) supports 2-way AMD CrossFire technology (via secondary PCIe 3.0 x16 slot); quad DIMM’s with DDR4-Boost architecture enable faster SDRAM for overclocking (5333MHz/OC)</span></li><li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">TRIPLE M.2 CONNECTORS - Storage includes 1 x M.2 Gen4 x4 64Gb/s slot (with Shield Frozr) and 2 x M.2 Gen3 x4 32Gb/s slots (Intel Optane supported) for hyper-fast SSD access when launching system-demanding programs or large files</span></li><li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">WI-FI 6E CONNECTED - Features the latest Wi-Fi 6E AX210 (ultra-low latency, high-bandwidth) &amp; Bluetooth 5.2 technology; Fixed ports include USB 3.2 Gen 2x2 Type-C (20Gb/s), 4K/60Hz HDMI 2.0b display, Intel 2.5G LAN, and 7.1 HD Audio with Audio Boost</span></li></ul>', 'msi1.jpg', 'msi2.jpg', 'msi1.jpg', 250, 'In Stock', '2023-03-04 13:30:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(13, 7, 'Dell', '2022-11-30 12:44:31', NULL),
(14, 7, 'HP', '2022-11-30 12:45:03', NULL),
(15, 8, 'Asus', '2023-01-10 13:29:11', NULL),
(16, 8, 'MSI', '2023-01-10 13:29:24', NULL),
(17, 9, 'MSI', '2023-03-04 13:26:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(25, 'amit@gmail.com', 0x3a3a3100000000000000000000000000, '2022-09-10 13:18:04', NULL, 0),
(26, 'amit@gmail.com', 0x3a3a3100000000000000000000000000, '2022-09-10 13:18:13', NULL, 0),
(27, 'amit123@gmail.com', 0x3a3a3100000000000000000000000000, '2022-09-10 13:18:45', NULL, 1),
(28, 'amit123@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-30 12:51:25', '30-11-2022 09:07:57 PM', 1),
(29, 'shalondangol.sd@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-30 15:38:57', '30-11-2022 09:10:33 PM', 1),
(30, 'amit123@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-30 15:40:52', NULL, 1),
(31, 'amit123@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-01 01:07:29', NULL, 0),
(32, 'amit123@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-01 01:07:37', '01-12-2022 06:42:38 AM', 1),
(33, 'amit123@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-01 01:12:58', '01-12-2022 06:44:00 AM', 1),
(34, 'shalondangol.sd@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-01 01:14:23', NULL, 1),
(35, 'amit@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-01 02:18:57', NULL, 0),
(36, 'amit123@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-01 02:19:04', NULL, 1),
(37, 'amit123@gmail.com', 0x3a3a3100000000000000000000000000, '2023-01-10 13:33:48', NULL, 1),
(38, 'amithudda@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-03 07:32:22', NULL, 0),
(39, 'amit123@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-03 07:33:21', NULL, 1),
(40, 'amit123@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-04 10:12:58', '04-03-2023 07:04:18 PM', 1),
(41, 'amit123@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-04 13:34:33', '04-03-2023 08:08:13 PM', 1),
(42, 'amit123@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-04 14:38:27', NULL, 1),
(43, 'amit123@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-05 01:52:08', '05-03-2023 07:23:32 AM', 1),
(44, 'amit123@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-05 01:53:45', NULL, 1),
(45, 'amit123@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-05 02:30:48', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(5, 'amit hudda', 'amit123@gmail.com', 984343434, 'd2b3f63948406cb893544cee035531d3', 'samakhusi', '3', 'kathmandu', 44800, 'samakhusi', '3', 'kathmandu', 44800, '2022-09-10 13:17:48', NULL),
(6, 'Shalon Dangol', 'shalondangol.sd@gmail.com', 9849856803, 'cfad638eb44696860a64de4bda5be4e6', 'samakhusi', '3', 'kathmandu', 44800, 'samakhusi', '3', 'kathmandu', 44800, '2022-11-30 15:38:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

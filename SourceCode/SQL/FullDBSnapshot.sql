-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 11, 2022 at 03:52 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `urbanstore`
--
CREATE DATABASE IF NOT EXISTS `urbanstore` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `urbanstore`;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
                                      `userid` int(8) NOT NULL,
                                      `productid` int(8) NOT NULL,
                                      `quantity` int(8) NOT NULL,
                                      PRIMARY KEY (`userid`,`productid`),
                                      KEY `cart_product_null_fk` (`productid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`userid`, `productid`, `quantity`) VALUES
                                                           (1, 3, 5),
                                                           (1, 8, 3),
                                                           (1, 18, 3),
                                                           (1, 24, 2),
                                                           (1, 27, 3),
                                                           (1, 33, 4),
                                                           (1, 35, 3),
                                                           (1, 37, 4),
                                                           (1, 40, 2),
                                                           (1, 42, 5),
                                                           (1, 46, 1),
                                                           (2, 5, 4),
                                                           (2, 9, 5),
                                                           (2, 10, 2),
                                                           (2, 16, 5),
                                                           (2, 17, 2),
                                                           (2, 22, 5),
                                                           (2, 23, 3),
                                                           (2, 26, 2),
                                                           (2, 29, 2),
                                                           (2, 31, 2),
                                                           (2, 34, 4),
                                                           (2, 43, 1),
                                                           (2, 44, 5),
                                                           (2, 45, 5),
                                                           (2, 47, 5),
                                                           (2, 50, 1),
                                                           (3, 1, 1),
                                                           (3, 6, 1),
                                                           (3, 11, 3),
                                                           (3, 12, 4),
                                                           (3, 19, 3),
                                                           (3, 20, 1),
                                                           (3, 21, 3),
                                                           (3, 36, 2),
                                                           (3, 38, 4),
                                                           (3, 39, 5),
                                                           (4, 2, 2),
                                                           (4, 4, 4),
                                                           (4, 7, 3),
                                                           (4, 13, 2),
                                                           (4, 14, 5),
                                                           (4, 15, 3),
                                                           (4, 25, 5),
                                                           (4, 28, 5),
                                                           (4, 30, 2),
                                                           (4, 32, 2),
                                                           (4, 48, 3);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
                                        `id` int(11) NOT NULL AUTO_INCREMENT,
                                        `name_ref` varchar(125) NOT NULL,
                                        `img_src` varchar(200) NOT NULL,
                                        PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `name_ref`, `img_src`) VALUES
                                                       (1, '1', '1.png'),
                                                       (2, '10', '10.png'),
                                                       (3, '11', '11.png'),
                                                       (4, '12', '12.png'),
                                                       (5, '13', '13.png'),
                                                       (6, '14', '14.png'),
                                                       (7, '15', '15.png'),
                                                       (8, '16', '16.png'),
                                                       (9, '17', '17.png'),
                                                       (10, '18', '18.png'),
                                                       (11, '19', '19.png'),
                                                       (12, '2', '2.png'),
                                                       (13, '20', '20.png'),
                                                       (14, '21', '21.png'),
                                                       (15, '22', '22.png'),
                                                       (16, '23', '23.png'),
                                                       (17, '24', '24.png'),
                                                       (18, '25', '25.png'),
                                                       (19, '26', '26.png'),
                                                       (20, '27', '27.png'),
                                                       (21, '28', '28.png'),
                                                       (22, '29', '29.png'),
                                                       (23, '3', '3.png'),
                                                       (24, '30', '30.png'),
                                                       (25, '31', '31.png'),
                                                       (26, '32', '32.png'),
                                                       (27, '33', '33.png'),
                                                       (28, '34', '34.png'),
                                                       (29, '35', '35.png'),
                                                       (30, '36', '36.png'),
                                                       (31, '37', '37.png'),
                                                       (32, '38', '38.png'),
                                                       (33, '39', '39.png'),
                                                       (34, '4', '4.png'),
                                                       (35, '40', '40.png'),
                                                       (36, '41', '41.png'),
                                                       (37, '42', '42.png'),
                                                       (38, '43', '43.png'),
                                                       (39, '44', '44.png'),
                                                       (40, '45', '45.png'),
                                                       (41, '46', '46.png'),
                                                       (42, '47', '47.png'),
                                                       (43, '48', '48.png'),
                                                       (44, '49', '49.png'),
                                                       (45, '5', '5.png'),
                                                       (46, '50', '50.png'),
                                                       (47, '51', '51.png'),
                                                       (48, '52', '52.png'),
                                                       (49, '53', '53.png'),
                                                       (50, '54', '54.png'),
                                                       (51, '55', '55.png'),
                                                       (52, '56', '56.png'),
                                                       (53, '57', '57.png'),
                                                       (54, '58', '58.png'),
                                                       (55, '59', '59.png'),
                                                       (56, '6', '6.png'),
                                                       (57, '60', '60.png'),
                                                       (58, '61', '61.png'),
                                                       (59, '62', '62.png'),
                                                       (60, '63', '63.png'),
                                                       (61, '64', '64.png'),
                                                       (62, '65', '65.png'),
                                                       (63, '66', '66.png'),
                                                       (64, '67', '67.png'),
                                                       (65, '68', '68.png'),
                                                       (66, '69', '69.png'),
                                                       (67, '7', '7.png'),
                                                       (68, '8', '8.png'),
                                                       (69, '9', '9.png'),
                                                       (70, 'null-product', 'null-product.png');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
CREATE TABLE IF NOT EXISTS `inventory` (
                                           `ProductId` int(8) NOT NULL,
                                           `Quantity` int(8) NOT NULL,
                                           PRIMARY KEY (`ProductId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`ProductId`, `Quantity`) VALUES
                                                      (1, 1),
                                                      (2, 2),
                                                      (3, 3),
                                                      (4, 4),
                                                      (5, 5),
                                                      (6, 6),
                                                      (7, 7),
                                                      (8, 8),
                                                      (9, 9),
                                                      (10, 10),
                                                      (11, 11),
                                                      (12, 12),
                                                      (13, 13),
                                                      (14, 14),
                                                      (15, 15),
                                                      (16, 16),
                                                      (17, 17),
                                                      (18, 18),
                                                      (19, 19),
                                                      (20, 20),
                                                      (21, 21);

-- --------------------------------------------------------

--
-- Table structure for table `kpi`
--

DROP TABLE IF EXISTS `kpi`;
CREATE TABLE IF NOT EXISTS `kpi` (
                                     `id` int(8) NOT NULL AUTO_INCREMENT,
                                     `name` varchar(55) DEFAULT NULL,
                                     `image` varchar(55) NOT NULL,
                                     PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kpi`
--

INSERT INTO `kpi` (`id`, `name`, `image`) VALUES
                                              (1, 'Monthly Sales', 'sales.png'),
                                              (2, 'Inventory Level', 'inventory.png'),
                                              (3, 'Number of Returns', 'return.png'),
                                              (4, 'Average Review Score', 'review.png');

-- --------------------------------------------------------

--
-- Table structure for table `orderproductquantity`
--

DROP TABLE IF EXISTS `orderproductquantity`;
CREATE TABLE IF NOT EXISTS `orderproductquantity` (
                                                      `orderId` int(8) NOT NULL,
                                                      `productId` int(8) NOT NULL,
                                                      `Quantity` varchar(255) NOT NULL,
                                                      PRIMARY KEY (`orderId`,`productId`),
                                                      KEY `orderproductquantity_product_null_fk` (`productId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderproductquantity`
--

INSERT INTO `orderproductquantity` (`orderId`, `productId`, `Quantity`) VALUES
                                                                            (1, 1, '2'),
                                                                            (1, 2, '2'),
                                                                            (3, 3, '2'),
                                                                            (3, 4, '2'),
                                                                            (5, 5, '2'),
                                                                            (6, 6, '2'),
                                                                            (7, 7, '2'),
                                                                            (8, 8, '2'),
                                                                            (9, 9, '2'),
                                                                            (10, 10, '2'),
                                                                            (11, 11, '2'),
                                                                            (12, 12, '2'),
                                                                            (13, 13, '2'),
                                                                            (14, 14, '2'),
                                                                            (15, 15, '2'),
                                                                            (16, 16, '2'),
                                                                            (17, 17, '2'),
                                                                            (18, 18, '2'),
                                                                            (19, 19, '2'),
                                                                            (20, 20, '2');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
                                        `orderId` int(8) NOT NULL,
                                        `Amount` varchar(55) NOT NULL,
                                        `Timestamp` varchar(255) NOT NULL,
                                        `UserId` int(8) NOT NULL,
                                        PRIMARY KEY (`orderId`),
                                        KEY `orders_users_null_fk` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderId`, `Amount`, `Timestamp`, `UserId`) VALUES
                                                                      (1, '124', '1670211711', 1),
                                                                      (2, '34', '1670211711', 1),
                                                                      (3, '65', '1670211711', 2),
                                                                      (4, '23', '1670211711', 2),
                                                                      (5, '324', '1670211711', 3),
                                                                      (6, '124', '1670211711', 2),
                                                                      (7, '34', '1670211711', 2),
                                                                      (8, '65', '1670211711', 3),
                                                                      (9, '23', '1670211711', 3),
                                                                      (10, '324', '1670211711', 1),
                                                                      (11, '124', '1670211711', 3),
                                                                      (12, '34', '1670211711', 3),
                                                                      (13, '65', '1670211711', 1),
                                                                      (14, '23', '1670211711', 1),
                                                                      (15, '324', '1670211711', 2),
                                                                      (16, '124', '1670211711', 1),
                                                                      (17, '34', '1670211711', 1),
                                                                      (18, '65', '1670211711', 2),
                                                                      (19, '23', '1670211711', 2),
                                                                      (20, '324', '1670211711', 3);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
CREATE TABLE IF NOT EXISTS `payments` (
                                          `paymentId` int(8) NOT NULL,
                                          `orderId` int(8) NOT NULL,
                                          `Amount` int(8) NOT NULL,
                                          `PaymentType` int(8) NOT NULL,
                                          `Completed` int(1) NOT NULL,
                                          PRIMARY KEY (`paymentId`),
                                          KEY `payments_orders_null_fk` (`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`paymentId`, `orderId`, `Amount`, `PaymentType`, `Completed`) VALUES
                                                                                          (1, 1, 124, 1, 1),
                                                                                          (2, 2, 34, 2, 0),
                                                                                          (3, 3, 65, 3, 1),
                                                                                          (4, 4, 23, 4, 0),
                                                                                          (5, 5, 324, 1, 1),
                                                                                          (6, 6, 124, 2, 0),
                                                                                          (7, 7, 34, 3, 1),
                                                                                          (8, 8, 65, 4, 0),
                                                                                          (9, 9, 23, 1, 1),
                                                                                          (10, 10, 324, 2, 0),
                                                                                          (11, 11, 124, 3, 1),
                                                                                          (12, 12, 34, 4, 0),
                                                                                          (13, 13, 65, 1, 1),
                                                                                          (14, 14, 23, 2, 0),
                                                                                          (15, 15, 324, 3, 1),
                                                                                          (16, 16, 124, 4, 0),
                                                                                          (17, 17, 34, 1, 1),
                                                                                          (18, 18, 65, 2, 0),
                                                                                          (19, 19, 23, 3, 1),
                                                                                          (20, 20, 324, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
                                         `id` int(8) NOT NULL,
                                         `name` varchar(55) DEFAULT NULL,
                                         `type` varchar(255) NOT NULL,
                                         `cost` varchar(55) NOT NULL,
                                         `brand` varchar(250) DEFAULT NULL,
                                         PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `type`, `cost`, `brand`) VALUES
                                                                  (1, 'Nike Pants', 'Pants', '146', 'Nike'),
                                                                  (2, 'Patagonia Pants', 'Pants', '47', 'Patagonia'),
                                                                  (3, 'UnderArmor Shorts', 'Shorts', '187', 'UnderArmor'),
                                                                  (4, 'Gucci Sweater', 'Sweater', '110', 'Gucci'),
                                                                  (5, 'Hermes Jacket', 'Jacket', '229', 'Hermes'),
                                                                  (6, 'Levis Shorts', 'Shorts', '212', 'Levis'),
                                                                  (7, 'Nordstrom Coat', 'Coat', '187', 'Nordstrom'),
                                                                  (8, 'Patagonia Jacket', 'Jacket', '96', 'Patagonia'),
                                                                  (9, 'UnderArmor Pants', 'Pants', '141', 'UnderArmor'),
                                                                  (10, 'Armani Shirt', 'Shirt', '233', 'Armani'),
                                                                  (11, 'Patagonia Shorts', 'Shorts', '213', 'Patagonia'),
                                                                  (12, 'UnderArmor Shorts', 'Shorts', '149', 'UnderArmor'),
                                                                  (13, 'Patagonia Coat', 'Coat', '16', 'Patagonia'),
                                                                  (14, 'Gucci Vest', 'Vest', '69', 'Gucci'),
                                                                  (15, 'Patagonia Pants', 'Pants', '216', 'Patagonia'),
                                                                  (16, 'Gap Sweater', 'Sweater', '167', 'Gap'),
                                                                  (17, 'Adidas Suit', 'Suit', '182', 'Adidas'),
                                                                  (18, 'Patagonia Shorts', 'Shorts', '45', 'Patagonia'),
                                                                  (19, 'Levis Jacket', 'Jacket', '238', 'Levis'),
                                                                  (20, 'Armani Suit', 'Suit', '43', 'Armani'),
                                                                  (21, 'Nordstrom Sweater', 'Sweater', '68', 'Nordstrom'),
                                                                  (22, 'Adidas Jacket', 'Jacket', '184', 'Adidas'),
                                                                  (23, 'Patagonia Vest', 'Vest', '75', 'Patagonia'),
                                                                  (24, 'Nike Jacket', 'Jacket', '234', 'Nike'),
                                                                  (25, 'Gucci Vest', 'Vest', '89', 'Gucci'),
                                                                  (26, 'Polo Pants', 'Pants', '126', 'Polo'),
                                                                  (27, 'Armani Vest', 'Vest', '174', 'Armani'),
                                                                  (28, 'Adidas Pants', 'Pants', '209', 'Adidas'),
                                                                  (29, 'UnderArmor Pants', 'Pants', '228', 'UnderArmor'),
                                                                  (30, 'Gap Sweater', 'Sweater', '242', 'Gap'),
                                                                  (31, 'Patagonia Pants', 'Pants', '111', 'Patagonia'),
                                                                  (32, 'Gap Sweater', 'Sweater', '209', 'Gap'),
                                                                  (33, 'Armani Suit', 'Suit', '54', 'Armani'),
                                                                  (34, 'Armani Shirt', 'Shirt', '83', 'Armani'),
                                                                  (35, 'Adidas Sweater', 'Sweater', '125', 'Adidas'),
                                                                  (36, 'Levis Suit', 'Suit', '163', 'Levis'),
                                                                  (37, 'Nike Shirt', 'Shirt', '41', 'Nike'),
                                                                  (38, 'UnderArmor Suit', 'Suit', '163', 'UnderArmor'),
                                                                  (39, 'Puma Vest', 'Vest', '46', 'Puma'),
                                                                  (40, 'Nike Pants', 'Pants', '28', 'Nike'),
                                                                  (41, 'Lululemon Vest', 'Vest', '177', 'Lululemon'),
                                                                  (42, 'Polo Shirt', 'Shirt', '90', 'Polo'),
                                                                  (43, 'Gap Shorts', 'Shorts', '115', 'Gap'),
                                                                  (44, 'Polo Vest', 'Vest', '185', 'Polo'),
                                                                  (45, 'Lululemon Pants', 'Pants', '21', 'Lululemon'),
                                                                  (46, 'UnderArmor Vest', 'Vest', '159', 'UnderArmor'),
                                                                  (47, 'Patagonia Shorts', 'Shorts', '129', 'Patagonia'),
                                                                  (48, 'Armani Suit', 'Suit', '248', 'Armani'),
                                                                  (49, 'Patagonia Sweater', 'Sweater', '120', 'Patagonia'),
                                                                  (50, 'Kirkland Jacket', 'Jacket', '188', 'Kirkland'),
                                                                  (51, 'Puma Suit', 'Suit', '198', 'Puma'),
                                                                  (52, 'Armani Shorts', 'Shorts', '100', 'Armani'),
                                                                  (53, 'Nordstrom Jacket', 'Jacket', '51', 'Nordstrom'),
                                                                  (54, 'Kirkland Pants', 'Pants', '66', 'Kirkland'),
                                                                  (55, 'Puma Coat', 'Coat', '222', 'Puma'),
                                                                  (56, 'Gap Pants', 'Pants', '189', 'Gap'),
                                                                  (57, 'Puma Pants', 'Pants', '97', 'Puma'),
                                                                  (58, 'Adidas Pants', 'Pants', '181', 'Adidas'),
                                                                  (59, 'Hermes Suit', 'Suit', '198', 'Hermes'),
                                                                  (60, 'UnderArmor Shirt', 'Shirt', '143', 'UnderArmor'),
                                                                  (61, 'UnderArmor Coat', 'Coat', '126', 'UnderArmor'),
                                                                  (62, 'Gucci Sweater', 'Sweater', '86', 'Gucci'),
                                                                  (63, 'Nordstrom Shirt', 'Shirt', '147', 'Nordstrom'),
                                                                  (64, 'Puma Suit', 'Suit', '66', 'Puma'),
                                                                  (65, 'Nike Jacket', 'Jacket', '204', 'Nike'),
                                                                  (66, 'Nordstrom Shorts', 'Shorts', '194', 'Nordstrom'),
                                                                  (67, 'Kirkland Vest', 'Vest', '12', 'Kirkland'),
                                                                  (68, 'Patagonia Jacket', 'Jacket', '164', 'Patagonia'),
                                                                  (69, 'Hermes Pants', 'Pants', '109', 'Hermes');

-- --------------------------------------------------------

--
-- Table structure for table `returns`
--

DROP TABLE IF EXISTS `returns`;
CREATE TABLE IF NOT EXISTS `returns` (
                                         `returnId` int(8) NOT NULL,
                                         `orderId` int(8) NOT NULL,
                                         `Timestamp` varchar(255) NOT NULL,
                                         `ReturnRecieved` int(1) NOT NULL,
                                         PRIMARY KEY (`returnId`,`orderId`),
                                         KEY `returns_orders_null_fk` (`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `returns`
--

INSERT INTO `returns` (`returnId`, `orderId`, `Timestamp`, `ReturnRecieved`) VALUES
                                                                                 (1, 2, '1770211711', 1),
                                                                                 (2, 6, '1770211711', 0),
                                                                                 (3, 8, '1770211711', 1),
                                                                                 (4, 9, '1770211711', 0),
                                                                                 (5, 10, '1770211711', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
                                       `userId` int(8) NOT NULL AUTO_INCREMENT,
                                       `userName` varchar(55) NOT NULL,
                                       `password` varchar(255) NOT NULL,
                                       `security` varchar(500) NOT NULL,
                                       `displayName` varchar(55) NOT NULL,
                                       `adress` varchar(100) NOT NULL,
                                       `city` varchar(100) NOT NULL,
                                       `state` varchar(100) NOT NULL,
                                       `zip` varchar(100) NOT NULL,
                                       `points` int(100) NOT NULL,
                                       `role` varchar(100) NOT NULL,
                                       PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `userName`, `password`, `security`, `displayName`, `adress`, `city`, `state`, `zip`, `points`, `role`) VALUES
                                                                                                                                          (1, 'admin', '$2a$10$0FHEQ5/cplO3eEKillHvh.y009Wsf4WCKvQHsZntLamTUToIBe.fG', 'I am the admin', 'Admin', '100w 100s', 'Salt Lake City', 'UT', '84102', 435221, 'admin'),
                                                                                                                                          (2, 'msis@utah.edu', '$2y$10$IASw3hGOm.nbnT8Fk.7vxu571A4Z6wQfltx5lhfdYwV6bzVqG32IO', 'testPhrase', 'Msis', '500w 500s', 'Salt Lake City', 'UT', '84111', 0, 'user'),
                                                                                                                                          (3, 'bsmith', '$2y$10$1LB0B5Uv6kzDLR0geDIQ5eQht9RZgSw4X5baMhWD28nf3BDnFhau2', 'I am the admin', 'Bert Smith', '100w 100s', 'London', 'AK', '12111', 5342235, 'admin'),
                                                                                                                                          (4, 'pjones', '$2y$10$O5.EOKD4MN477OaNiRObP.tS6vmJuSt/BKDLj3CN21KfH40rrWTmq', 'I am here for grading', 'Peter Jones', '500w 500s', 'Amsterdam', 'AR', '12102', 12523, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

DROP TABLE IF EXISTS `vendors`;
CREATE TABLE IF NOT EXISTS `vendors` (
                                         `VendorId` int(8) NOT NULL,
                                         `Adress` varchar(255) NOT NULL,
                                         `PhoneNumber` varchar(255) NOT NULL,
                                         PRIMARY KEY (`VendorId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`VendorId`, `Adress`, `PhoneNumber`) VALUES
                                                                (1, '100s 100e', '3852187465'),
                                                                (2, '100s 100e', '3852187465'),
                                                                (3, '100s 100e', '3852187465'),
                                                                (4, '100s 100e', '3852187465'),
                                                                (5, '100s 100e', '3852187465'),
                                                                (6, '100s 100e', '3852187465'),
                                                                (7, '100s 100e', '3852187465');

-- --------------------------------------------------------

--
-- Table structure for table `vendorsupplies`
--

DROP TABLE IF EXISTS `vendorsupplies`;
CREATE TABLE IF NOT EXISTS `vendorsupplies` (
                                                `VendorId` int(8) NOT NULL,
                                                `SupplyId` int(8) NOT NULL,
                                                `ProductId` int(8) NOT NULL,
                                                `Quantity` int(8) NOT NULL,
                                                `Timestamp` varchar(255) NOT NULL,
                                                `Recieved` int(1) NOT NULL,
                                                PRIMARY KEY (`VendorId`,`ProductId`,`SupplyId`),
                                                KEY `vendorsupplies_product_null_fk` (`ProductId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendorsupplies`
--

INSERT INTO `vendorsupplies` (`VendorId`, `SupplyId`, `ProductId`, `Quantity`, `Timestamp`, `Recieved`) VALUES
                                                                                                            (1, 1, 1, 50, '1770211711', 1),
                                                                                                            (1, 1, 10, 50, '1770211711', 0),
                                                                                                            (2, 1, 2, 50, '1770211711', 1),
                                                                                                            (3, 1, 4, 50, '1770211711', 0),
                                                                                                            (4, 1, 3, 50, '1770211711', 0),
                                                                                                            (5, 1, 5, 50, '1770211711', 1),
                                                                                                            (6, 1, 7, 50, '1770211711', 1),
                                                                                                            (7, 1, 6, 50, '1770211711', 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
    ADD CONSTRAINT `cart_product_null_fk` FOREIGN KEY (`productid`) REFERENCES `product` (`id`),
    ADD CONSTRAINT `cart_users_null_fk` FOREIGN KEY (`userid`) REFERENCES `users` (`userId`);

--
-- Constraints for table `inventory`
--
ALTER TABLE `inventory`
    ADD CONSTRAINT `inventory_product_null_fk` FOREIGN KEY (`ProductId`) REFERENCES `product` (`id`);

--
-- Constraints for table `orderproductquantity`
--
ALTER TABLE `orderproductquantity`
    ADD CONSTRAINT `orderproductquantity_orders_null_fk` FOREIGN KEY (`orderId`) REFERENCES `orders` (`orderId`),
    ADD CONSTRAINT `orderproductquantity_product_null_fk` FOREIGN KEY (`productId`) REFERENCES `product` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
    ADD CONSTRAINT `orders_users_null_fk` FOREIGN KEY (`UserId`) REFERENCES `users` (`userId`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
    ADD CONSTRAINT `payments_orders_null_fk` FOREIGN KEY (`orderId`) REFERENCES `orders` (`orderId`);

--
-- Constraints for table `returns`
--
ALTER TABLE `returns`
    ADD CONSTRAINT `returns_orders_null_fk` FOREIGN KEY (`orderId`) REFERENCES `orders` (`orderId`);

--
-- Constraints for table `vendorsupplies`
--
ALTER TABLE `vendorsupplies`
    ADD CONSTRAINT `vendorsupplies_product_null_fk` FOREIGN KEY (`ProductId`) REFERENCES `product` (`id`),
    ADD CONSTRAINT `vendorsupplies_vendors_null_fk` FOREIGN KEY (`VendorId`) REFERENCES `vendors` (`VendorId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

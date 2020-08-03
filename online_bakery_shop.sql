-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 12, 2019 at 02:45 PM
-- Server version: 5.7.28-0ubuntu0.19.04.2
-- PHP Version: 7.2.24-0ubuntu0.19.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_bakery_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `company_id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `company_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_id`, `company_name`, `company_description`) VALUES
(1, 'Sir Johns', 'Sir Johns'),
(2, 'Posto', 'Posto'),
(3, 'Meena', 'Meena'),
(4, 'Srjohn', 'Srjohn');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1yszxy97tw2qhvxtkfzcipmqmxg5901o', 'OTJjZGRkY2E5ZjhhZDYwOTczNTQxZDlkNTJhNTYzNGY5ZDRjMDgwMjp7InVzZXJfaWQiOjgsInVzZXJfbGV2ZWxfaWQiOjEsImF1dGhlbnRpY2F0ZWQiOnRydWUsInVzZXJfbmFtZSI6IkFtaXQgS3VtYXIifQ==', '2018-01-26 07:59:01'),
('7ks0ebm8w26vswny9c0wfojyd5asv43i', 'NDE1ODNmMjY1ZjNlZDA2Y2ExYzc1ZGU5NWEyNGEzN2IzMWY2OGVjYTp7Im9yZGVyX2lkIjoiMCIsImF1dGhlbnRpY2F0ZWQiOmZhbHNlLCJ1c2VyX2xldmVsX2lkIjpmYWxzZSwidXNlcl9pZCI6ZmFsc2UsInVzZXJfbmFtZSI6ZmFsc2V9', '2019-05-25 15:49:49'),
('9bgzvan3fd73sdzjqy4fy90dxwzgmltg', 'MDZiNTU1MGVjZDFkNDliNDc3ZWY1OGExZDgwOTk5MWFkYTZjZmE3NDp7ImF1dGhlbnRpY2F0ZWQiOmZhbHNlLCJ1c2VyX2xldmVsX2lkIjpmYWxzZSwidXNlcl9pZCI6ZmFsc2UsInVzZXJfbmFtZSI6ZmFsc2V9', '2018-01-29 14:09:38'),
('allfghtv0s5idlng4n0up3ixce2m7csv', 'ZDUxODgxOTRiNzkyNGZjYzg0ZTBlOTRjYTg3MGZhZjY5ZmM4MzE1YTp7Im9yZGVyX2lkIjoxMywiYXV0aGVudGljYXRlZCI6dHJ1ZSwidXNlcl9sZXZlbF9pZCI6MiwidXNlcl9pZCI6MTEsInVzZXJfbmFtZSI6IkFtYW4gS3VtYXIifQ==', '2019-07-25 10:35:04'),
('c7f2yysow67qjgtrgzabr8rx8eyvdnji', 'MDZiNTU1MGVjZDFkNDliNDc3ZWY1OGExZDgwOTk5MWFkYTZjZmE3NDp7ImF1dGhlbnRpY2F0ZWQiOmZhbHNlLCJ1c2VyX2xldmVsX2lkIjpmYWxzZSwidXNlcl9pZCI6ZmFsc2UsInVzZXJfbmFtZSI6ZmFsc2V9', '2018-01-29 14:19:42'),
('ebqsosvupih3d6rfcy220w6eeoopoqt8', 'NDE1ODNmMjY1ZjNlZDA2Y2ExYzc1ZGU5NWEyNGEzN2IzMWY2OGVjYTp7Im9yZGVyX2lkIjoiMCIsImF1dGhlbnRpY2F0ZWQiOmZhbHNlLCJ1c2VyX2xldmVsX2lkIjpmYWxzZSwidXNlcl9pZCI6ZmFsc2UsInVzZXJfbmFtZSI6ZmFsc2V9', '2018-02-21 10:22:08'),
('eqny6tpfjj5p36yu9okbr7s61swwy0sk', 'OGI2N2UxYzlmN2YwMDdlNTQxYjhhMmUwYzZkMzJiOGEwNjE1ZmM0NDp7Im9yZGVyX2lkIjo5LCJhdXRoZW50aWNhdGVkIjp0cnVlLCJ1c2VyX2xldmVsX2lkIjoyLCJ1c2VyX2lkIjoxMSwidXNlcl9uYW1lIjoiQW1hbiBLdW1hciJ9', '2019-07-10 09:39:25'),
('f7vkj1ssawqqjkp470wbgzmqf8pnpuun', 'NDE1ODNmMjY1ZjNlZDA2Y2ExYzc1ZGU5NWEyNGEzN2IzMWY2OGVjYTp7Im9yZGVyX2lkIjoiMCIsImF1dGhlbnRpY2F0ZWQiOmZhbHNlLCJ1c2VyX2xldmVsX2lkIjpmYWxzZSwidXNlcl9pZCI6ZmFsc2UsInVzZXJfbmFtZSI6ZmFsc2V9', '2019-05-29 17:53:16'),
('fsoqcvjqfmb80jc0hlu0229gsospw5x1', 'MTY0Njc1ZGZlMDE0NzZkMTdlZjZmMzE2NmY3YzJiMTM3OWQzYzdkZTp7Im9yZGVyX2lkIjoxNCwidXNlcl9pZCI6ZmFsc2UsInVzZXJfbGV2ZWxfaWQiOmZhbHNlLCJhdXRoZW50aWNhdGVkIjpmYWxzZSwidXNlcl9uYW1lIjpmYWxzZX0=', '2019-08-19 09:11:07'),
('j1unuxzc2z846m0r1xmkioa3xd63spfg', 'ODFkZmU0YjE3MzI5ODQ5NzQyNzc4Nzc0ODNjZjlkYTlhZWEwMmMxOTp7InVzZXJfaWQiOjI1LCJ1c2VyX2xldmVsX2lkIjoyLCJhdXRoZW50aWNhdGVkIjp0cnVlLCJ1c2VyX25hbWUiOiJLYXVzaGFsIEtpc2hvcmUifQ==', '2018-02-21 09:19:01'),
('pm9ifc6usfn38cwfcpuget8cu0g48c3k', 'OTJjZGRkY2E5ZjhhZDYwOTczNTQxZDlkNTJhNTYzNGY5ZDRjMDgwMjp7InVzZXJfaWQiOjgsInVzZXJfbGV2ZWxfaWQiOjEsImF1dGhlbnRpY2F0ZWQiOnRydWUsInVzZXJfbmFtZSI6IkFtaXQgS3VtYXIifQ==', '2018-01-29 13:36:24'),
('qi4jui1wag7y5kjd3nal07b1h2jlc9ia', 'OTJjZGRkY2E5ZjhhZDYwOTczNTQxZDlkNTJhNTYzNGY5ZDRjMDgwMjp7InVzZXJfaWQiOjgsInVzZXJfbGV2ZWxfaWQiOjEsImF1dGhlbnRpY2F0ZWQiOnRydWUsInVzZXJfbmFtZSI6IkFtaXQgS3VtYXIifQ==', '2017-07-21 11:40:27'),
('tfndahzufxmpyuy7ko8x3nqp08spjwx5', 'YjQ3ZWE3MWQ2YTMwNjc4MWE0NTQzNmI0ZTk0MWUxNTE0MWQwMWQ4ZDp7ImF1dGhlbnRpY2F0ZWQiOmZhbHNlLCJ1c2VyX2lkIjpmYWxzZSwidXNlcl9sZXZlbF9pZCI6ZmFsc2UsInVzZXJfbmFtZSI6ZmFsc2UsIm9yZGVyX2lkIjoiMCJ9', '2019-06-24 13:33:15'),
('usycptsmp4uih1sl6nwv7wb9a364euei', 'NTU0MTc5Njg3ZWJmYTBjN2FiNjIwNzYyNDdkNTE0YzE4NDhhODE5OTp7Im9yZGVyX2lkIjoxNSwiYXV0aGVudGljYXRlZCI6dHJ1ZSwidXNlcl9sZXZlbF9pZCI6MiwidXNlcl9pZCI6MTEsInVzZXJfbmFtZSI6IkFtYW4gS3VtYXIifQ==', '2019-12-26 09:14:47'),
('vhvspuaom6ewud0zx7o3h3r60xxm32w2', 'YjQ3ZWE3MWQ2YTMwNjc4MWE0NTQzNmI0ZTk0MWUxNTE0MWQwMWQ4ZDp7ImF1dGhlbnRpY2F0ZWQiOmZhbHNlLCJ1c2VyX2lkIjpmYWxzZSwidXNlcl9sZXZlbF9pZCI6ZmFsc2UsInVzZXJfbmFtZSI6ZmFsc2UsIm9yZGVyX2lkIjoiMCJ9', '2019-06-24 13:49:12'),
('xqitzy5mm8bz740ja8unqi2yzmdyj7ed', 'MDMwNWRjNWZmMGI3MjYyOWE1ZDI2YjE1NWEzMjg3OWVkYzM3MjEwNDp7Im9yZGVyX2lkIjozNCwiYXV0aGVudGljYXRlZCI6ZmFsc2UsInVzZXJfbGV2ZWxfaWQiOmZhbHNlLCJ1c2VyX2lkIjpmYWxzZSwidXNlcl9uYW1lIjpmYWxzZX0=', '2018-02-20 13:24:04'),
('xurl12qi1iu47jd87pw8da016ma877mh', 'NzU0ZDkyODRlOTI3N2Q5YjQ4ZWFiZDhkY2MxNGI2ZDU2NDc1MDhmOTp7Im9yZGVyX2lkIjoxMSwiYXV0aGVudGljYXRlZCI6dHJ1ZSwidXNlcl9sZXZlbF9pZCI6MiwidXNlcl9pZCI6MTEsInVzZXJfbmFtZSI6IkFtYW4gS3VtYXIifQ==', '2019-07-11 03:47:56'),
('xv6bmnf7ux0smwgwrff6c5mo2vk3st4s', 'Y2VjYzU1MzM1NzliOWY3MjBiNmYwNmE3ZjdjY2QwZTllZTQ3ODZlMjp7Im9yZGVyX2lkIjoxMiwiYXV0aGVudGljYXRlZCI6dHJ1ZSwidXNlcl9sZXZlbF9pZCI6MiwidXNlcl9pZCI6MTEsInVzZXJfbmFtZSI6IkFtYW4gS3VtYXIifQ==', '2019-07-18 09:16:10');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `order_user_id` varchar(255) NOT NULL,
  `order_date` varchar(255) NOT NULL,
  `order_status` varchar(255) NOT NULL,
  `order_total` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `order_user_id`, `order_date`, `order_status`, `order_total`) VALUES
(1, '25', '01:49PM on February 06, 2018', '2', '0'),
(2, '25', '01:50PM on February 06, 2018', '5', '0'),
(3, '25', '04:06PM on February 06, 2018', '5', '0'),
(4, '25', '09:19AM on February 07, 2018', '5', '0'),
(5, '11', '03:46PM on May 11, 2019', '5', '0'),
(6, '11', '05:45PM on May 15, 2019', '1', '0'),
(7, '11', '07:02PM on June 10, 2019', '1', '0'),
(8, '11', '07:17PM on June 10, 2019', '1', '0'),
(9, '11', '09:21AM on June 21, 2019', '1', '0'),
(10, '11', '03:44AM on June 27, 2019', '1', '0'),
(11, '11', '03:47AM on June 27, 2019', '1', '0'),
(12, '11', '09:16AM on July 04, 2019', '1', '0'),
(13, '11', '10:35AM on July 11, 2019', '1', '0'),
(14, '11', '10:25AM on July 25, 2019', '1', '0'),
(15, '11', '09:12AM on December 12, 2019', '1', '0');

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `oi_id` int(11) NOT NULL,
  `oi_order_id` varchar(255) NOT NULL,
  `oi_product_id` varchar(255) NOT NULL,
  `oi_price_per_unit` varchar(255) NOT NULL,
  `oi_cart_quantity` varchar(255) NOT NULL,
  `oi_total` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`oi_id`, `oi_order_id`, `oi_product_id`, `oi_price_per_unit`, `oi_cart_quantity`, `oi_total`) VALUES
(1, '1', '7', '1200', '1', '1200'),
(2, '1', '8', '1200', '1', '1200'),
(3, '2', '6', '1170', '1', '1170'),
(4, '2', '2', '1100', '1', '1100'),
(5, '2', '3', '1170', '4', '4680'),
(6, '3', '8', '1200', '1', '1200'),
(7, '4', '1', '1200', '1', '1200'),
(8, '4', '5', '1170', '1', '1170'),
(9, '4', '7', '1200', '2', '2400'),
(10, '4', '9', '3423', '1', '3423'),
(11, '5', '4', '1170', '1', '1170'),
(13, '5', '1', '1200', '1', '1200'),
(14, '5', '9', '3423', '1', '3423'),
(15, '6', '1', '1200', '1', '1200'),
(16, '6', '5', '1170', '1', '1170'),
(17, '6', '3', '1170', '1', '1170'),
(19, '7', '5', '1170', '1', '1170'),
(20, '7', '6', '1170', '1', '1170'),
(21, '8', '1', '1200', '1', '1200'),
(22, '8', '9', '3423', '1', '3423'),
(23, '8', '4', '1170', '1', '1170'),
(26, '9', '1', '120', '2', '240'),
(27, '9', '2', '110', '1', '110'),
(28, '9', '2', '110', '1', '110'),
(30, '10', '6', '117', '1', '117'),
(31, '10', '10', '3000', '1', '3000'),
(32, '11', '5', '350', '1', '350'),
(33, '12', '2', '110', '1', '110'),
(34, '13', '1', '1200', '1', '1200'),
(35, '14', '4', '2400', '1', '2400'),
(38, '14', '2', '1100', '1', '1100'),
(39, '14', '7', '1200', '1', '1200'),
(40, '15', '2', '110', '1', '110');

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `os_id` int(11) NOT NULL,
  `os_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`os_id`, `os_title`) VALUES
(1, 'Confirmed'),
(2, 'Processing'),
(3, 'Packed'),
(4, 'Dispatched'),
(5, 'Cancelled');

-- --------------------------------------------------------

--
-- Table structure for table `products_product`
--

CREATE TABLE `products_product` (
  `product_id` int(11) NOT NULL,
  `product_vendor_id` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_type_id` varchar(255) NOT NULL,
  `product_company_id` varchar(255) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_description` text NOT NULL,
  `product_stock` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `products_product`
--

INSERT INTO `products_product` (`product_id`, `product_vendor_id`, `product_name`, `product_type_id`, `product_company_id`, `product_price`, `product_image`, `product_description`, `product_stock`) VALUES
(1, '1002', 'Balckforest', '1', '1', '500', '/uploads/1.jpg', 'Please take the time to write a detailed and compelling artwork description! They help collectors and our curators discover new works when they’re searching for something specific, tell a buyer exactly what to expect when the artwork arrives, and they provide collectors with interesting background information about the work. \r\n\r\n', '5'),
(2, '1002', 'Brown Bread', '3', '1', '110', '/uploads/2.jpeg', 'Please take the time to write a detailed and compelling artwork description! They help collectors and our curators discover new works when they’re searching for something specific, tell a buyer exactly what to expect when the artwork arrives, and they provide collectors with interesting background information about the work. \r\n\r\n', '91'),
(3, '1002', 'Pizza Base', '3', '4', '117', '/uploads/3.jpeg', 'Please take the time to write a detailed and compelling artwork description! They help collectors and our curators discover new works when they’re searching for something specific, tell a buyer exactly what to expect when the artwork arrives, and they provide collectors with interesting background information about the work. \r\n\r\n', '199'),
(4, '1017', 'strawberry', '5', '4', '240', '/uploads/4.jpeg', 'Please take the time to write a detailed and compelling artwork description! They help collectors and our curators discover new works when they’re searching for something specific, tell a buyer exactly what to expect when the artwork arrives, and they provide collectors with interesting background information about the work. \r\n\r\n', '87'),
(5, '1017', 'Carrotcake', '6', '2', '350', '/uploads/5.jpeg', 'Please take the time to write a detailed and compelling artwork description! They help collectors and our curators discover new works when they’re searching for something specific, tell a buyer exactly what to expect when the artwork arrives, and they provide collectors with interesting background information about the work. \r\n\r\n', '12'),
(6, '1018', 'Donught', '3', '2', '1170', '/uploads/6.jpeg', 'Please take the time to write a detailed and compelling artwork description! They help collectors and our curators discover new works when they’re searching for something specific, tell a buyer exactly what to expect when the artwork arrives, and they provide collectors with interesting background information about the work. \r\n\r\n', '15'),
(7, '1018', 'Vanilla', '1', '2', '120', '/uploads/7.jpeg', 'Please take the time to write a detailed and compelling artwork description! They help collectors and our curators discover new works when they’re searching for something specific, tell a buyer exactly what to expect when the artwork arrives, and they provide collectors with interesting background information about the work. \r\n\r\n', '97'),
(8, '1017', 'Cookies', '2', '2', '120', '/uploads/8.jpeg', 'Please take the time to write a detailed and compelling artwork description! They help collectors and our curators discover new works when they’re searching for something specific, tell a buyer exactly what to expect when the artwork arrives, and they provide collectors with interesting background information about the work. \r\n\r\n', '100'),
(9, '1001', 'Sandwich', '4', '3', '342', '/uploads/9.jpeg', 'Please take the time to write a detailed and compelling artwork description! They help collectors and our curators discover new works when they’re searching for something specific, tell a buyer exactly what to expect when the artwork arrives, and they provide collectors with interesting background information about the work. \r\n\r\n', '32'),
(10, '1018', 'Photo Cake', '3', '4', '300', '/uploads/10.jpeg', 'Please take the time to write a detailed and compelling artwork description! They help collectors and our curators discover new works when they’re searching for something specific, tell a buyer exactly what to expect when the artwork arrives, and they provide collectors with interesting background information about the work. \r\n\r\n', '23'),
(11, '1001', 'Red Velvet', '2', '4', '200', '/uploads/11.jpeg', 'Please take the time to write a detailed and compelling artwork description! They help collectors and our curators discover new works when they’re searching for something specific, tell a buyer exactly what to expect when the artwork arrives, and they provide collectors with interesting background information about the work. \r\n\r\n', '5'),
(12, '1018', 'Heart Cake', '1', '2', '800', '/uploads/12.jpeg', 'Please take the time to write a detailed and compelling artwork description! They help collectors and our curators discover new works when they’re searching for something specific, tell a buyer exactly what to expect when the artwork arrives, and they provide collectors with interesting background information about the work. \r\n\r\n', '22');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(255) NOT NULL,
  `type_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`type_id`, `type_name`, `type_description`) VALUES
(1, 'Eggless', 'Eggless'),
(2, 'Cookies', 'Cookies'),
(3, 'Bread', 'Bread'),
(4, 'Sandwich', 'Sandwich'),
(5, 'Chocolate Cake', 'Chocolate Cake'),
(6, 'Dry Cake', 'Dry Cake');

-- --------------------------------------------------------

--
-- Table structure for table `users_city`
--

CREATE TABLE `users_city` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `users_city`
--

INSERT INTO `users_city` (`city_id`, `city_name`) VALUES
(1, 'Allahabad'),
(2, 'Varanasi');

-- --------------------------------------------------------

--
-- Table structure for table `users_country`
--

CREATE TABLE `users_country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `users_country`
--

INSERT INTO `users_country` (`country_id`, `country_name`) VALUES
(1, 'India'),
(2, 'USA');

-- --------------------------------------------------------

--
-- Table structure for table `users_role`
--

CREATE TABLE `users_role` (
  `role_id` int(11) NOT NULL,
  `role_title` varchar(255) NOT NULL,
  `role_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_role`
--

INSERT INTO `users_role` (`role_id`, `role_title`, `role_description`) VALUES
(1, 'System Admin', 'Admin Roles and Permissions'),
(2, 'Normal User', 'Users Roles and Permissions'),
(3, 'Doctor', 'Doctors User Permission and Role'),
(4, 'Patient', 'Patient User Permission and Role');

-- --------------------------------------------------------

--
-- Table structure for table `users_state`
--

CREATE TABLE `users_state` (
  `state_id` int(11) NOT NULL,
  `state_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_state`
--

INSERT INTO `users_state` (`state_id`, `state_name`) VALUES
(1, 'UttarnPradesh'),
(2, 'Madhya Pradesh');

-- --------------------------------------------------------

--
-- Table structure for table `users_user`
--

CREATE TABLE `users_user` (
  `user_id` int(11) NOT NULL,
  `user_level_id` int(11) NOT NULL DEFAULT '2',
  `user_username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_add1` varchar(255) NOT NULL,
  `user_add2` varchar(255) NOT NULL,
  `user_city` int(11) NOT NULL,
  `user_state` int(11) NOT NULL,
  `user_country` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_mobile` varchar(255) NOT NULL,
  `user_gender` varchar(255) NOT NULL,
  `user_dob` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `users_user`
--

INSERT INTO `users_user` (`user_id`, `user_level_id`, `user_username`, `user_password`, `user_name`, `user_add1`, `user_add2`, `user_city`, `user_state`, `user_country`, `user_email`, `user_mobile`, `user_gender`, `user_dob`, `user_image`) VALUES
(11, 2, 'customer', 'test', 'Aman Kumar', 'House No : 355, Sector 23', 'Noida', 1, 2, 1, 'aman@gmail.com', '987654321', 'Male', '18 January,1968', '/uploads/p3.jpg'),
(14, 2, 'kaushal', 'test', 'Pawan Kumar', 'House No : 355, Sector 23', 'Noida', 1, 1, 2, 'pawan@gmail.com', '987654321', 'Male', '18 January,1968', '/uploads/p5.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`oi_id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`os_id`);

--
-- Indexes for table `products_product`
--
ALTER TABLE `products_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `users_city`
--
ALTER TABLE `users_city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `users_country`
--
ALTER TABLE `users_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `users_role`
--
ALTER TABLE `users_role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `users_state`
--
ALTER TABLE `users_state`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `users_user`
--
ALTER TABLE `users_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
  MODIFY `oi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `os_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products_product`
--
ALTER TABLE `products_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users_city`
--
ALTER TABLE `users_city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users_country`
--
ALTER TABLE `users_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users_role`
--
ALTER TABLE `users_role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users_state`
--
ALTER TABLE `users_state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users_user`
--
ALTER TABLE `users_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

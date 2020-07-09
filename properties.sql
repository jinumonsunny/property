-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2020 at 09:10 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `properties`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `ads-id` int(2) NOT NULL,
  `ads-Name` varchar(20) NOT NULL,
  `Description` varchar(20) NOT NULL,
  `on date` date NOT NULL,
  `out date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`ads-id`, `ads-Name`, `Description`, `on date`, `out date`) VALUES
(1, '', 'aaaa', '2020-03-24', '2020-03-24');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(10) NOT NULL,
  `fid` varchar(10) NOT NULL,
  `tid` varchar(10) NOT NULL,
  `msg` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `fid`, `tid`, `msg`) VALUES
(1, '2', '1', 'hloo'),
(2, '2', '1', 'hloo'),
(3, '2', '1', 'hlooi'),
(4, '2', '1', 'okkk'),
(5, '1', '2', 'okkk'),
(6, '2', '1', '3000'),
(7, '1', '2', 'no  34000');

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `c_id` int(11) NOT NULL,
  `u_id` int(2) NOT NULL,
  `reply` varchar(20) NOT NULL,
  `complaints` varchar(30) NOT NULL,
  `Date` date NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`c_id`, `u_id`, `reply`, `complaints`, `Date`, `p_id`) VALUES
(23, 2, 'ok i ll mng', 'dghhjjj', '2020-03-09', 5),
(24, 2, 'rwerwerwrw', 'aaaaa', '2020-03-09', 5),
(25, 2, 'pending', 'bad property ', '2020-03-09', 6),
(26, 12, 'aaaaaaaaa', '', '2020-03-09', 12),
(27, 12, 'gggggg', '', '2020-03-09', 12),
(28, 2, 'pending', 'bad property ', '2020-03-09', 1),
(29, 12, 'solved soon', '', '2020-03-09', 12),
(30, 12, 'solve', '', '2020-03-09', 12),
(31, 2, 'pending', 'bad property ', '2020-03-10', 6),
(32, 2, 'pending', 'sfghh', '2020-03-10', 12),
(33, 2, 'pending', 'bad property ', '2020-03-10', 15),
(34, 2, 'pending', 'adghh', '2020-03-10', 16),
(35, 2, 'pending', 'eeeee', '2020-03-17', 17),
(36, 2, 'pending', 'qqqqq', '2020-03-17', 17),
(37, 2, 'pending', 'aaaa', '2020-03-17', 19),
(38, 12, 'aaaa', '', '2020-03-17', 12),
(39, 2, 'pending', 'jjjj', '2020-03-18', 22),
(40, 12, 'that is solved soon', '', '2020-03-20', 12),
(41, 2, 'pending', 'a bad property ', '2020-03-20', 22),
(42, 11, 'pending', 'veryyyy badddd', '2020-04-04', 13),
(43, 2, 'pending', 'hzhzjaj', '2020-04-28', 32),
(44, 2, 'pending', 'baddd', '2020-05-05', 32),
(45, 2, 'pending', 'good one', '2020-05-05', 32),
(46, 2, 'pending', 'just ok', '2020-05-05', 32),
(47, 12, 'fineee', '', '2020-05-05', 12),
(48, 12, 'finee okk', '', '2020-05-05', 12),
(49, 12, 'okkkk', '', '2020-05-23', 12),
(50, 13, 'pending', 'ff', '2020-05-23', 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-03-03 13:00:07.633556'),
(2, 'auth', '0001_initial', '2020-03-03 13:00:09.837614'),
(3, 'admin', '0001_initial', '2020-03-03 13:00:18.463432'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-03-03 13:00:20.609442'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-03-03 13:00:20.714084'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-03-03 13:00:22.311587'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-03-03 13:00:22.594307'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-03-03 13:00:22.765994'),
(9, 'auth', '0004_alter_user_username_opts', '2020-03-03 13:00:23.358770'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-03-03 13:00:24.131405'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-03-03 13:00:24.173995'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-03-03 13:00:24.264010'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-03-03 13:00:24.455683'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-03-03 13:00:24.618858'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-03-03 13:00:24.939587'),
(16, 'auth', '0011_update_proxy_permissions', '2020-03-03 13:00:25.007408'),
(17, 'sessions', '0001_initial', '2020-03-03 13:00:25.411826');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('67agy8ohwxry39cj8u18x05xoylqur5q', 'NWUyYjBkZDI3NjhhZjBhNjg0YjFhM2NhMmYxNDBiOWFjMjk0YjAzMDp7ImFkbWluIjozfQ==', '2020-05-21 05:08:08.034365'),
('8sp1piiyvtyge29anlq0zf1oit2b1lpz', 'MTcxM2UyMWM5ZTJjZGNiYWM0NTI2NWI3NWM5YjRkZmU4ZTFhMDVlMzp7ImFkbWluIjowfQ==', '2020-05-23 07:06:06.564311'),
('idc6h8tyzz2fqt33n28ulip5krf7ad0h', 'NWUyYjBkZDI3NjhhZjBhNjg0YjFhM2NhMmYxNDBiOWFjMjk0YjAzMDp7ImFkbWluIjozfQ==', '2020-04-03 12:39:01.319658'),
('lf5hueynez3h7qtfszpgqf7rpy4zmst4', 'MTcxM2UyMWM5ZTJjZGNiYWM0NTI2NWI3NWM5YjRkZmU4ZTFhMDVlMzp7ImFkbWluIjowfQ==', '2020-06-06 05:07:31.636660'),
('mfm4f4shoo9935hgttddz4vte2ajyprg', 'NWUyYjBkZDI3NjhhZjBhNjg0YjFhM2NhMmYxNDBiOWFjMjk0YjAzMDp7ImFkbWluIjozfQ==', '2020-04-07 14:13:42.212407'),
('qrfdflfi0bq26fdf9jvlzvb8lts27c5c', 'NWUyYjBkZDI3NjhhZjBhNjg0YjFhM2NhMmYxNDBiOWFjMjk0YjAzMDp7ImFkbWluIjozfQ==', '2020-05-19 07:22:20.996495');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `u_id` int(11) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Type` varchar(10) NOT NULL,
  `lid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`u_id`, `Username`, `Password`, `Type`, `lid`) VALUES
(0, 'admin', '1234', 'admin', 0),
(1, 'jinu', '1234', 'seller', 1),
(2, 'amal@gmail.com', '9876', 'buyer', 2),
(4, 'd@gmail.com', '1234', 'buyer', 11),
(10, 's', 's', 'seller', 10),
(13, 'b', 'b', 'buyer', 13);

-- --------------------------------------------------------

--
-- Table structure for table `offer`
--

CREATE TABLE `offer` (
  `o_id` int(2) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Description` varchar(30) NOT NULL,
  `on date` date NOT NULL,
  `out date` date NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offer`
--

INSERT INTO `offer` (`o_id`, `Name`, `Description`, `on date`, `out date`, `price`) VALUES
(1, 'zzz', 'sssss', '2020-02-20', '2020-02-20', 111111),
(2, 'eeeee', 'dddddddddd', '2020-02-25', '2020-02-25', 222222),
(3, 'dggf', 'dddd', '2020-02-25', '2020-02-25', 11111),
(13, 'festival offer', 'T', '2020-03-10', '2020-03-10', 500000),
(14, 'festival offer', 'T', '2020-03-10', '2020-03-10', 500000);

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `p_id` int(2) NOT NULL,
  `Type` varchar(10) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Description` varchar(30) NOT NULL,
  `image` varchar(30) NOT NULL,
  `Location` varchar(20) NOT NULL,
  `Longitude` varchar(20) NOT NULL,
  `Lattitude` varchar(20) NOT NULL,
  `video` varchar(100) NOT NULL,
  `Price` int(10) NOT NULL,
  `status` varchar(8) NOT NULL,
  `uid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`p_id`, `Type`, `Name`, `Description`, `image`, `Location`, `Longitude`, `Lattitude`, `video`, `Price`, `status`, `uid`) VALUES
(13, '2', 'jinus villa', 'good villa', '/prop/27.jpg', 'kannur', 'www', 'eee', '/video/VID-20200423-WA0005.mp4', 111111, '', 0),
(15, '2', 'naseem villa', 'a newly added villa', '/prop/27.jpg', 'areekode', 'sssss', 'kkkk', '/video/VID-20200423-WA0005.mp4', 10000000, '', 0),
(19, '2', 'lillys home', 'a newly added villa', '/prop/27.jpg', 'kannur', 'chempery', 'Etupara', '/video/VID-20200423-WA0005.mp4', 500000, '', 0),
(20, '1', 'shameem villa', 'a good property', '/prop/27.jpg', 'kannur', 'qqqq', 'eeeeee', '/video/VID-20200423-WA0005.mp4', 222222, '', 0),
(21, '2', 'jinus villa', 'ddfghhj', '/prop/27.jpg', 'Kannur', 'egg', 'eeeeee', '/video/VID-20200423-WA0005.mp4', 1000000, '', 0),
(25, 'Rent', 'dog', 'fool', '/prop/25.jpg', 'faaaai', '5678', '3450', '~/video/VID-20200504-WA0005.mp4', 2000, 'pending', 1),
(26, 'Rent', 'ysys', 'gshs', '/prop/27.jpg', 'sghs', '88', '67', '/video/VID-20200423-WA0005.mp4', 333, 'pending', 1),
(27, 'Sale', 'jdjd', 'jdjd', '/prop/28.jpg', 'ndndkx', '23', '88', '/video/VID-20200423-WA0005.mp4', 25, 'pending', 1),
(29, 'Sell', 'ddd', 'gmmm', '/prop/29.jpg', 'calicut', '11.2588', '75.7804', '/video/VID-20200423-WA0005.mp4', 25, 'pending', 10),
(30, 'Sell', 'aaaa', 'vsb', '/prop/31.jpg', 'Calicut', '78', '67', '/video/VID-20200423-WA0005.mp4', 250000, 'pending', 10),
(31, 'Rent', 'dur', 'geyr', '/prop/32.jpg', 'eyrr', '67', '56', '/video/VID-20200423-WA0005.mp4', 258, 'pending', 1),
(32, 'Rent', 'dur', 'geyr', '/prop/33.jpg', 'eyrr', '67', '56', '/video/VID-20200423-WA0005.mp4', 258, 'pending', 1),
(33, '1', 'jdg', 'ewjrh', '1_Q6iPzgOBBZ-6Vns6oCr2Vw.jpeg', 'hrr', 'her', 'reh', '1_Q6iPzgOBBZ-6Vns6oCr2Vw.jpeg', 123, '', 0),
(34, '1', 'jdg', 'ewjrh', '1_Q6iPzgOBBZ-6Vns6oCr2Vw.jpeg', 'hrr', 'her', 'reh', '1_Q6iPzgOBBZ-6Vns6oCr2Vw.jpeg', 123, '', 0),
(35, '1', 'jdg', 'ewjrh', '1_Q6iPzgOBBZ-6Vns6oCr2Vw.jpeg', 'hrr', 'her', 'reh', '1_Q6iPzgOBBZ-6Vns6oCr2Vw.jpeg', 123, '', 0),
(36, '1', 'e', 'sfg', '1_dpT163I5jDsJX3cOmr7FdQ.jpeg', 'shdgf', 'BVF', 'sdbv', '1_Q6iPzgOBBZ-6Vns6oCr2Vw.jpeg', 123121232, '', 0),
(37, 'Rent', 'dd', 'xx', '/prop/38.jpg', 'xx', 'xx', 'xx', '/video/38VID-20200521-WA0029.mp4', 77, 'pending', 10),
(39, 'Sale', 'f', 'r', '/prop/39.jpg', 'gh', '28', '22', '/video/39SVID_20200524_095632_1.mp4', 12845, 'pending', 10);

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `u_id` int(50) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `MobileNo` varchar(20) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`u_id`, `type`, `Name`, `Email`, `Address`, `Gender`, `MobileNo`, `Password`, `status`) VALUES
(1, 'seller', 'jinu', 'jinumon@gmail.com', 'kannur', 'male', '9947623452', '1234', 'approve'),
(2, 'buyer', 'amal', 'amal@gmail.com', 'kannur', 'male', '974421506', '9876', 'approve'),
(3, 'seller', 'arjun', 'arjun@gmail.com', 'kollm', 'male', '9977888', '1222', 'approve'),
(4, 'buyer', 'navven', 'naveen@gmail.com', 'calicut', 'male', '8888888', '1111111', 'reject'),
(5, 'seller', 'arun', 'arun@gmail.com', 'kannur', 'femal', '99476234', 'aaaaaaa', 'approve'),
(6, 'seller', 'arun', 'arun@gmail.com', 'kannur', 'femal', '99476234', 'aaaaaaa', 'pending'),
(7, 'seller', 'arun', 'arun@gmail.com', 'kannur', 'femal', '99476234', 'aaaaaaa', 'reject'),
(8, 'seller', 'Wetz', 'A@gmail.com', 'Wdfg', 'male', '123456', 'Qeer', 'pending'),
(9, 'Seller', 'Vsv', 'A', 'Gsgaaaa', 'male', '67118', 'A', 'approve'),
(10, 'seller', 'GM', 'dddd@gmail.com', 'Wayanad', 'male', '9746987732', '1234', 'approve'),
(11, 'buyer', 'deepthi', 'd@gmail.com', 'ghn', 'female', '9876543210', '1234', 'pending'),
(12, 'buyer', 'mani', 'm@', 'hdhhd', 'male', '976543432', 'mmmm', 'pending'),
(13, 'buyer', 'Amal', 'aml@gmail.com', 'Calicut', 'female', '98476543211', 'amal12', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `r_id` int(2) NOT NULL,
  `u_id` int(2) NOT NULL,
  `p_id` int(2) NOT NULL,
  `date` date NOT NULL,
  `Description` varchar(30) NOT NULL,
  `Email id` varchar(20) NOT NULL,
  `status` varchar(50) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `price` int(10) NOT NULL,
  `mobile no` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`r_id`, `u_id`, `p_id`, `date`, `Description`, `Email id`, `status`, `Name`, `price`, `mobile no`) VALUES
(1, 2, 32, '0000-00-00', 'pending', 'pending', 'approved', 'pending', 0, 0),
(2, 13, 25, '0000-00-00', 'pending', 'pending', 'pending', 'pending', 0, 0),
(3, 13, 37, '0000-00-00', 'pending', 'pending', 'pending', 'pending', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `s_id` int(2) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Description` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`s_id`, `Name`, `Description`) VALUES
(1, 'GMM', 'Gem'),
(2, 'gggggg', 'kkkkkkkkkkkk'),
(17, 'Electrition', 'Electrition'),
(18, 'WORKER', 'sssss'),
(19, 'WORKER', 'sssss'),
(20, 'WORKER', 'sssss'),
(21, 'maid', 'aa good maid.'),
(22, 'maid', 'aaaaaa');

-- --------------------------------------------------------

--
-- Table structure for table `serviceuser`
--

CREATE TABLE `serviceuser` (
  `id` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Email id` varchar(30) NOT NULL,
  `contact No` int(15) NOT NULL,
  `Address` varchar(30) NOT NULL,
  `Location` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `serviceuser`
--

INSERT INTO `serviceuser` (`id`, `sid`, `Name`, `Email id`, `contact No`, `Address`, `Location`) VALUES
(1, 1, 'aaaa', 'jinu@gmail.com', 99476234, 'kannur', 'Kannur'),
(2, 2, 'dggf', 'agu@gmail.com', 99476234, 'ccccc', 'kochi'),
(3, 3, 'qqqq', 'sunny@gmail.com', 860601559, 'kannur', 'kannur'),
(4, 4, 'qeee', 'jinu@gmail.com', 807843546, 'eeeeee', 'rrrrrrr'),
(5, 17, 'eeee', 'agu@gmail.com', 99476234, 'qqqqqq', 'Kannur'),
(6, 19, 'eeee', 'agu@gmail.com', 99476234, 'qqqqqq', 'Kannur'),
(7, 21, 'jinu', 'jinu@gmail.com', 99476234, 'fhhhhhhghgh', 'Kannur'),
(8, 1, 'aaaaaa', 'anu@gmial.com', 974421506, 'qqqqqqq', 'qqqqqqqq'),
(9, 2, 'Jinumon sunny', 'jinumonsunny@gmail.com', 99476234, 'kannur', 'Kannur'),
(10, 20, 'Jinumon sunny', 'jinumonsunny@gmail.com', 99476234, 'chempery', 'kannur'),
(11, 2, 'Jinumon sunny', 'jinumonsunny@gmail.com', 99476234, 'chempery', 'kochi'),
(12, 2, 'Jinumon sunny', 'jinumonsunny@gmail.com', 99476234, 'chempery', 'kochi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`ads-id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

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
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `offer`
--
ALTER TABLE `offer`
  ADD PRIMARY KEY (`o_id`);

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `serviceuser`
--
ALTER TABLE `serviceuser`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `ads-id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `property`
--
ALTER TABLE `property`
  MODIFY `p_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `u_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `r_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

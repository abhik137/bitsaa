-- phpMyAdmin SQL Dump
-- version 3.5.8.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 05, 2013 at 12:54 PM
-- Server version: 5.5.32-0ubuntu0.13.04.1
-- PHP Version: 5.4.9-4ubuntu2.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `djangoBitsaa`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_5f412f9a` (`group_id`),
  KEY `auth_group_permissions_83d7f98b` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_37ef4eb4` (`content_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add permission', 1, 'add_permission'),
(2, 'Can change permission', 1, 'change_permission'),
(3, 'Can delete permission', 1, 'delete_permission'),
(4, 'Can add group', 2, 'add_group'),
(5, 'Can change group', 2, 'change_group'),
(6, 'Can delete group', 2, 'delete_group'),
(7, 'Can add user', 3, 'add_user'),
(8, 'Can change user', 3, 'change_user'),
(9, 'Can delete user', 3, 'delete_user'),
(10, 'Can add content type', 4, 'add_contenttype'),
(11, 'Can change content type', 4, 'change_contenttype'),
(12, 'Can delete content type', 4, 'delete_contenttype'),
(13, 'Can add session', 5, 'add_session'),
(14, 'Can change session', 5, 'change_session'),
(15, 'Can delete session', 5, 'delete_session'),
(16, 'Can add site', 6, 'add_site'),
(17, 'Can change site', 6, 'change_site'),
(18, 'Can delete site', 6, 'delete_site'),
(19, 'Can add log entry', 7, 'add_logentry'),
(20, 'Can change log entry', 7, 'change_logentry'),
(21, 'Can delete log entry', 7, 'delete_logentry'),
(22, 'Can add user data', 8, 'add_userdata'),
(23, 'Can change user data', 8, 'change_userdata'),
(24, 'Can delete user data', 8, 'delete_userdata'),
(25, 'Can add application', 9, 'add_application'),
(26, 'Can change application', 9, 'change_application'),
(27, 'Can delete application', 9, 'delete_application'),
(28, 'Can add grant', 10, 'add_grant'),
(29, 'Can change grant', 10, 'change_grant'),
(30, 'Can delete grant', 10, 'delete_grant'),
(31, 'Can add access token', 11, 'add_accesstoken'),
(32, 'Can change access token', 11, 'change_accesstoken'),
(33, 'Can delete access token', 11, 'delete_accesstoken'),
(34, 'Can add refresh token', 12, 'add_refreshtoken'),
(35, 'Can change refresh token', 12, 'change_refreshtoken'),
(36, 'Can delete refresh token', 12, 'delete_refreshtoken');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$10000$fM6heAyqCwhe$KKKgdlIH9ggLZS0Drk598503FgIF790rXGGeidtzuMo=', '2013-10-05 07:16:21', 1, 'root', '', '', '', 1, 1, '2013-09-26 14:23:29'),
(2, 'pbkdf2_sha256$10000$dYyHASNphLUi$wN1sEHSHC/6peQTdxN9cHaKx9pj3JptXGJhSVxTkuY0=', '2013-10-05 07:15:43', 0, 'anubhav', 'helloworld', '', '', 0, 1, '2013-09-26 15:30:50'),
(3, 'pbkdf2_sha256$10000$qWe9LOe3KTk4$IM05d9b4g/CVkWR15HPAKvesU9KEbA1iZVzaY9mCLNg=', '2013-09-27 12:39:28', 0, 'suresh', '', '', '', 0, 1, '2013-09-27 12:33:59'),
(4, 'pbkdf2_sha256$10000$FUcEy7caGRnP$zeFzsmynrZn7Lj0FESaK3OYm99ECZfoRobpzkXNjADc=', '2013-09-27 12:34:22', 0, 'abhishek', '', '', '', 0, 1, '2013-09-27 12:34:22');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_6340c63c` (`user_id`),
  KEY `auth_user_groups_5f412f9a` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_6340c63c` (`user_id`),
  KEY `auth_user_user_permissions_83d7f98b` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_userdata`
--

CREATE TABLE IF NOT EXISTS `dashboard_userdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username_id` int(11) NOT NULL,
  `bits_id` varchar(12) NOT NULL,
  `name` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `address` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `about_me` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bits_id` (`bits_id`),
  KEY `dashboard_userdata_ee0cafa2` (`username_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `dashboard_userdata`
--

INSERT INTO `dashboard_userdata` (`id`, `username_id`, `bits_id`, `name`, `dob`, `address`, `mobile`, `about_me`) VALUES
(1, 2, '2011A7PS079G', 'Anubhav Chaturvedi', '1992-08-27', 'AH-1, 250, BITS Pilani Goa Campus', '919975657915', 'hello there');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_6340c63c` (`user_id`),
  KEY `django_admin_log_37ef4eb4` (`content_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `user_id`, `content_type_id`, `object_id`, `object_repr`, `action_flag`, `change_message`) VALUES
(1, '2013-09-26 15:30:50', 1, 3, '2', 'anubhav', 1, ''),
(2, '2013-09-26 15:34:36', 1, 8, 'anubhav', 'Anubhav Chaturvedi ( 2011A7PS079G )', 1, ''),
(3, '2013-09-26 15:41:30', 1, 8, '1', 'Anubhav Chaturvedi ( 2011A7PS079G )', 1, ''),
(4, '2013-09-27 12:33:59', 1, 3, '3', 'suresh', 1, ''),
(5, '2013-09-27 12:34:06', 1, 3, '3', 'suresh', 2, 'Changed password.'),
(6, '2013-09-27 12:34:22', 1, 3, '4', 'abhishek', 1, ''),
(7, '2013-09-27 12:37:20', 1, 8, '2', 'Suresh Sajja ( 2004A7PS001G )', 1, ''),
(8, '2013-09-27 14:05:54', 1, 8, '1', 'Anubhav Chaturvedi ( 2011A7PS079G )', 1, ''),
(9, '2013-09-27 16:23:50', 1, 9, '1', 'A2sp$PD/"!rUz}FZLQN9pjPPd"ft8uH!17l"R!^^', 1, ''),
(10, '2013-09-28 13:07:26', 1, 9, '2', '0f\\tVAw\\"pQ#Wr? 2qHhG2CThbBw%|zLE;W^.son', 1, ''),
(11, '2013-10-05 07:14:05', 1, 9, '1', 'A2sp$PD/"!rUz}FZLQN9pjPPd"ft8uH!17l"R!^^', 2, 'No fields changed.'),
(12, '2013-10-05 07:14:30', 1, 9, '2', 'v,rNLDJ^s*.\\8Ilnafvu%rRZ]B''(]Z[*dLpFZ?AN', 1, ''),
(13, '2013-10-05 07:14:40', 1, 9, '1', 'A2sp$PD/"!rUz}FZLQN9pjPPd"ft8uH!17l"R!^^', 3, ''),
(14, '2013-10-05 07:21:01', 1, 9, '2', 'v,rNLDJ^s*.\\8Ilnafvu%rRZ]B''(]Z[*dLpFZ?AN', 2, 'No fields changed.');

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES
(1, 'permission', 'auth', 'permission'),
(2, 'group', 'auth', 'group'),
(3, 'user', 'auth', 'user'),
(4, 'content type', 'contenttypes', 'contenttype'),
(5, 'session', 'sessions', 'session'),
(6, 'site', 'sites', 'site'),
(7, 'log entry', 'admin', 'logentry'),
(8, 'user data', 'dashboard', 'userdata'),
(9, 'application', 'oauth2_provider', 'application'),
(10, 'grant', 'oauth2_provider', 'grant'),
(11, 'access token', 'oauth2_provider', 'accesstoken'),
(12, 'refresh token', 'oauth2_provider', 'refreshtoken');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_b7b81f0c` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('08m2ylc4gq862i256usf2v0b1t9sdh7h', 'MmRhNThhMDMxNzYyYmQwMjM2M2E3ODM2YjY0ZWM0ZWZhNjk3MDljNzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZFUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmRxAlUNX2F1dGhfdXNlcl9pZIoBAnUu', '2013-10-12 13:02:55'),
('0vozk9k75rrt5c6fsuh6hupo3gouni3x', 'NWU5ZTFiN2ViMGY2NzUwOGE2NTYyNDUzNzY1YTAyOWFlY2E0YmFkYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQJ1Lg==', '2013-10-12 13:03:25'),
('2rol59l196a0mrbwv8pgh043r5v2ntnc', 'ODk4ZTI2MGE1YjcxOTgwNWIxZDhlNDU0MGVkNDRlMTU0YjE0NTYxYzqAAn1xAS4=', '2013-10-11 11:50:17'),
('42in06w2eicsp7cjm1r3jqo7doqj17u2', 'ODk4ZTI2MGE1YjcxOTgwNWIxZDhlNDU0MGVkNDRlMTU0YjE0NTYxYzqAAn1xAS4=', '2013-10-11 12:06:14'),
('5i43uluh5oazobar78gxz68prel3phi0', 'NWU5ZTFiN2ViMGY2NzUwOGE2NTYyNDUzNzY1YTAyOWFlY2E0YmFkYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQJ1Lg==', '2013-10-12 13:18:06'),
('6rervx3l5ude9v4qu21e4mtqff0vi88p', 'ODk4ZTI2MGE1YjcxOTgwNWIxZDhlNDU0MGVkNDRlMTU0YjE0NTYxYzqAAn1xAS4=', '2013-10-10 15:17:17'),
('7533n7ks0jbk7hoqt6qb8vsr6m60gux9', 'ODk4ZTI2MGE1YjcxOTgwNWIxZDhlNDU0MGVkNDRlMTU0YjE0NTYxYzqAAn1xAS4=', '2013-10-12 11:46:48'),
('a814i9e382gosa3s92j1an6p3gt7zizb', 'Mzg3YjNhZjFlOTk1ZjIzNTcyZTQxYjdhNjI2ZjJjZWUzNWI2NzMwZjqAAn1xAShVDV9hdXRoX3VzZXJfaWSKAQJVEl9hdXRoX3VzZXJfYmFja2VuZFUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmRxAnUu', '2013-10-12 12:58:45'),
('ddvvkm4wyh65zf1idbi560elnwv4dzgi', 'NWU5ZTFiN2ViMGY2NzUwOGE2NTYyNDUzNzY1YTAyOWFlY2E0YmFkYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQJ1Lg==', '2013-10-12 13:33:39'),
('dqmp7lmgfsm2no8p4ncuk2l2lyoa7p5q', 'ODk4ZTI2MGE1YjcxOTgwNWIxZDhlNDU0MGVkNDRlMTU0YjE0NTYxYzqAAn1xAS4=', '2013-10-11 12:27:37'),
('dyd4hft2zwjxyv7tpc9076t3xrnxlqj7', 'ODk4ZTI2MGE1YjcxOTgwNWIxZDhlNDU0MGVkNDRlMTU0YjE0NTYxYzqAAn1xAS4=', '2013-10-11 12:28:34'),
('dyv6i1xgjzs29jzdcrn93a4o9uh9w5k3', 'ODk4ZTI2MGE1YjcxOTgwNWIxZDhlNDU0MGVkNDRlMTU0YjE0NTYxYzqAAn1xAS4=', '2013-10-12 13:13:41'),
('e8y2of86p3qk76swkdc2nue96j6f2i3t', 'ODk4ZTI2MGE1YjcxOTgwNWIxZDhlNDU0MGVkNDRlMTU0YjE0NTYxYzqAAn1xAS4=', '2013-10-12 11:46:48'),
('f1ra2mgxsmsyexobkafggnmdpfph5oob', 'ODk4ZTI2MGE1YjcxOTgwNWIxZDhlNDU0MGVkNDRlMTU0YjE0NTYxYzqAAn1xAS4=', '2013-10-11 12:07:32'),
('g2bs5gdxchxe7qxaq0fo9pm90o59gs3b', 'NWU5ZTFiN2ViMGY2NzUwOGE2NTYyNDUzNzY1YTAyOWFlY2E0YmFkYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQJ1Lg==', '2013-10-12 11:53:11'),
('hkxrwkolffd3h3v4apzptmixpo29v4ji', 'M2MyOGU0MTY4MTExNzZkYTg4OGZiODY4ZDEyMmUzOGNlZGFiNTZhZDqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==', '2013-10-19 07:16:21'),
('hol2cp0lb4npao1mvr6186uap2r2qnc8', 'ODk4ZTI2MGE1YjcxOTgwNWIxZDhlNDU0MGVkNDRlMTU0YjE0NTYxYzqAAn1xAS4=', '2013-10-11 15:13:55'),
('kvjfwyrui9irr07dg6m7ckdz62ky2kse', 'NWU5ZTFiN2ViMGY2NzUwOGE2NTYyNDUzNzY1YTAyOWFlY2E0YmFkYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQJ1Lg==', '2013-10-12 13:34:00'),
('n6mhd77mr7pppnel2rseiifxn7n9x9cn', 'NWU5ZTFiN2ViMGY2NzUwOGE2NTYyNDUzNzY1YTAyOWFlY2E0YmFkYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQJ1Lg==', '2013-10-12 13:09:35'),
('nwr3v8ud49boboi9xss200zbt6uruqna', 'M2MyOGU0MTY4MTExNzZkYTg4OGZiODY4ZDEyMmUzOGNlZGFiNTZhZDqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==', '2013-10-11 16:30:21'),
('osflbyy2rqh7a196p85mnta5pmv0y6l6', 'ODk4ZTI2MGE1YjcxOTgwNWIxZDhlNDU0MGVkNDRlMTU0YjE0NTYxYzqAAn1xAS4=', '2013-10-11 12:39:36'),
('pr6v3y1j9n98zploezmpc1wdj2qhue5q', 'MmRhNThhMDMxNzYyYmQwMjM2M2E3ODM2YjY0ZWM0ZWZhNjk3MDljNzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZFUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmRxAlUNX2F1dGhfdXNlcl9pZIoBAnUu', '2013-10-12 13:12:56'),
('qcip86nmcw5sfdkl30hm4rd45klf32d2', 'ODk4ZTI2MGE1YjcxOTgwNWIxZDhlNDU0MGVkNDRlMTU0YjE0NTYxYzqAAn1xAS4=', '2013-10-11 14:07:59'),
('qq5te4ylnmubmaptyv33dyu413vpjuz8', 'ODk4ZTI2MGE1YjcxOTgwNWIxZDhlNDU0MGVkNDRlMTU0YjE0NTYxYzqAAn1xAS4=', '2013-10-11 12:07:04'),
('qsvqxuxxxbkmyglv7g9btwjwgjc0z639', 'ODk4ZTI2MGE1YjcxOTgwNWIxZDhlNDU0MGVkNDRlMTU0YjE0NTYxYzqAAn1xAS4=', '2013-10-11 12:10:36'),
('r7msgzklwlexownjo32mflk6dv5tua2r', 'ODk4ZTI2MGE1YjcxOTgwNWIxZDhlNDU0MGVkNDRlMTU0YjE0NTYxYzqAAn1xAS4=', '2013-10-12 13:35:16'),
('syes36ccbo827xd7ze28c87t0uobwavg', 'NWU5ZTFiN2ViMGY2NzUwOGE2NTYyNDUzNzY1YTAyOWFlY2E0YmFkYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQJ1Lg==', '2013-10-12 13:19:52'),
('tb4p9z7tvqsudcjj5kve6468h0hjju7n', 'ODk4ZTI2MGE1YjcxOTgwNWIxZDhlNDU0MGVkNDRlMTU0YjE0NTYxYzqAAn1xAS4=', '2013-10-12 13:16:42'),
('ucet64ifn72p393q4vnew90fo6z32j64', 'NWU5ZTFiN2ViMGY2NzUwOGE2NTYyNDUzNzY1YTAyOWFlY2E0YmFkYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQJ1Lg==', '2013-10-12 13:17:46'),
('vtoqcpvixd4ln08xxoujqo7u8ki5s3ml', 'ODk4ZTI2MGE1YjcxOTgwNWIxZDhlNDU0MGVkNDRlMTU0YjE0NTYxYzqAAn1xAS4=', '2013-10-19 07:09:28'),
('x7n7wpgqdegd05dag2jilxut3xhszjs0', 'ODk4ZTI2MGE1YjcxOTgwNWIxZDhlNDU0MGVkNDRlMTU0YjE0NTYxYzqAAn1xAS4=', '2013-10-11 12:06:03'),
('zelmqzbxz523l7cn79cpzahdye3v7m2w', 'NWU5ZTFiN2ViMGY2NzUwOGE2NTYyNDUzNzY1YTAyOWFlY2E0YmFkYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQJ1Lg==', '2013-10-12 13:21:28'),
('zmj5o4w3fg7c9x6jq60xhgrby1vooyf4', 'NWU5ZTFiN2ViMGY2NzUwOGE2NTYyNDUzNzY1YTAyOWFlY2E0YmFkYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQJ1Lg==', '2013-10-12 13:09:18'),
('zo5vgoq97cm61e19xe6dc6u075bydmw1', 'ODk4ZTI2MGE1YjcxOTgwNWIxZDhlNDU0MGVkNDRlMTU0YjE0NTYxYzqAAn1xAS4=', '2013-10-11 12:07:21'),
('zv8xp920sa9sztpcyq7f6wa4rhe6hab4', 'ODk4ZTI2MGE1YjcxOTgwNWIxZDhlNDU0MGVkNDRlMTU0YjE0NTYxYzqAAn1xAS4=', '2013-10-11 15:22:42'),
('zwi5sv91tkrgky6cve3yqgclx6ja8a19', 'NWU5ZTFiN2ViMGY2NzUwOGE2NTYyNDUzNzY1YTAyOWFlY2E0YmFkYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQJ1Lg==', '2013-10-11 15:29:08');

-- --------------------------------------------------------

--
-- Table structure for table `django_site`
--

CREATE TABLE IF NOT EXISTS `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, 'example.com', 'example.com');

-- --------------------------------------------------------

--
-- Table structure for table `oauth2_provider_accesstoken`
--

CREATE TABLE IF NOT EXISTS `oauth2_provider_accesstoken` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `application_id` int(11) NOT NULL,
  `expires` datetime NOT NULL,
  `scope` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth2_provider_accesstoken_6340c63c` (`user_id`),
  KEY `oauth2_provider_accesstoken_bf127e2f` (`application_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `oauth2_provider_accesstoken`
--

INSERT INTO `oauth2_provider_accesstoken` (`id`, `user_id`, `token`, `application_id`, `expires`, `scope`) VALUES
(11, 2, 'L5fnscE5Pk5C5d5VLCwzypdlydKJ7t', 2, '2013-10-05 17:16:35', 'read write'),
(12, 2, 'SrfWFAxApt3buMBObnl83xI0UPTONE', 2, '2013-10-05 17:16:59', 'read write');

-- --------------------------------------------------------

--
-- Table structure for table `oauth2_provider_application`
--

CREATE TABLE IF NOT EXISTS `oauth2_provider_application` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `redirect_uris` longtext NOT NULL,
  `client_type` varchar(32) NOT NULL,
  `authorization_grant_type` varchar(32) NOT NULL,
  `client_secret` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `client_id` (`client_id`),
  KEY `oauth2_provider_application_6340c63c` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `oauth2_provider_application`
--

INSERT INTO `oauth2_provider_application` (`id`, `client_id`, `user_id`, `redirect_uris`, `client_type`, `authorization_grant_type`, `client_secret`, `name`) VALUES
(2, 'v,rNLDJ^s*.\\8Ilnafvu%rRZ]B''(]Z[*dLpFZ?AN', 1, 'http://django-oauth-toolkit.herokuapp.com/consumer/exchange/', 'confidential', 'authorization-code', ',|/''kJM2@ j#)ja_(6X%}^a;hl;qbzNQEnN#,fm]$_[RQK"!4P[Fh}s*@Ar$(lSk Mf=bL)G/n Isn.us6-.\\>0b$C,`M>q2K*nf9_W)\\A)mp*MG"6!&P!87v{g])p>*', 'Flipkart Fetch Data');

-- --------------------------------------------------------

--
-- Table structure for table `oauth2_provider_grant`
--

CREATE TABLE IF NOT EXISTS `oauth2_provider_grant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `application_id` int(11) NOT NULL,
  `expires` datetime NOT NULL,
  `redirect_uri` varchar(255) NOT NULL,
  `scope` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth2_provider_grant_6340c63c` (`user_id`),
  KEY `oauth2_provider_grant_bf127e2f` (`application_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

-- --------------------------------------------------------

--
-- Table structure for table `oauth2_provider_refreshtoken`
--

CREATE TABLE IF NOT EXISTS `oauth2_provider_refreshtoken` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `application_id` int(11) NOT NULL,
  `access_token_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `access_token_id` (`access_token_id`),
  KEY `oauth2_provider_refreshtoken_6340c63c` (`user_id`),
  KEY `oauth2_provider_refreshtoken_bf127e2f` (`application_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `oauth2_provider_refreshtoken`
--

INSERT INTO `oauth2_provider_refreshtoken` (`id`, `user_id`, `token`, `application_id`, `access_token_id`) VALUES
(2, 2, 'xf7yuJ6RfkajeD3YFwaDcz2sB9XSSi', 2, 12);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `group_id_refs_id_f4b32aac` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `permission_id_refs_id_6ba0f519` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `content_type_id_refs_id_d043b34a` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `group_id_refs_id_274b862c` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `user_id_refs_id_40c41112` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `permission_id_refs_id_35d9ac25` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `user_id_refs_id_4dc23c39` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `dashboard_userdata`
--
ALTER TABLE `dashboard_userdata`
  ADD CONSTRAINT `username_id_refs_id_3f09232e` FOREIGN KEY (`username_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `content_type_id_refs_id_93d2d1f8` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `user_id_refs_id_c0d12874` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `oauth2_provider_accesstoken`
--
ALTER TABLE `oauth2_provider_accesstoken`
  ADD CONSTRAINT `application_id_refs_id_50af46ef` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  ADD CONSTRAINT `user_id_refs_id_11f4dade` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `oauth2_provider_application`
--
ALTER TABLE `oauth2_provider_application`
  ADD CONSTRAINT `user_id_refs_id_f9cca3bd` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `oauth2_provider_grant`
--
ALTER TABLE `oauth2_provider_grant`
  ADD CONSTRAINT `application_id_refs_id_3a4939c0` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  ADD CONSTRAINT `user_id_refs_id_27d71a58` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `oauth2_provider_refreshtoken`
--
ALTER TABLE `oauth2_provider_refreshtoken`
  ADD CONSTRAINT `access_token_id_refs_id_4eca7025` FOREIGN KEY (`access_token_id`) REFERENCES `oauth2_provider_accesstoken` (`id`),
  ADD CONSTRAINT `application_id_refs_id_96fa9bab` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  ADD CONSTRAINT `user_id_refs_id_76772602` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

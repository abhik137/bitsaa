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
-- Database: `djangoFlipkart`
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

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
(24, 'Can delete user data', 8, 'delete_userdata');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$10000$FtHF6xqrWnvJ$hQtqSRjHaTPJsH9bsdjgZe6CX2sj/lqWhH0dUgRISZw=', '2013-09-27 13:44:29', 1, 'root', '', '', '', 1, 1, '2013-09-27 13:21:14'),
(2, 'pbkdf2_sha256$10000$IRTil99VXlq5$iVNGz6HkNOurQg3vErcnkVwjipJU3e+Fbba7UUGmvJY=', '2013-10-05 07:09:42', 0, 'anubhav', '', '', '', 0, 1, '2013-09-27 13:32:23'),
(3, 'pbkdf2_sha256$10000$uK6yw2qYc5Lt$dx8vqvZTvDmxWunwM3iGTJ15vZW044XXNqsIEVcBAgA=', '2013-09-27 13:32:40', 0, 'suresh', '', '', '', 0, 1, '2013-09-27 13:32:40');

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
  `dob` date DEFAULT NULL,
  `address` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `about_me` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bits_id` (`bits_id`),
  KEY `dashboard_userdata_ee0cafa2` (`username_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `dashboard_userdata`
--

INSERT INTO `dashboard_userdata` (`id`, `username_id`, `bits_id`, `name`, `dob`, `address`, `mobile`, `about_me`) VALUES
(1, 2, '2011A7PS079G', 'Anubhav Chaturvedi', NULL, '', '', ''),
(2, 3, '2004A7PS001G', 'Suresh Sajja', NULL, '', '', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `user_id`, `content_type_id`, `object_id`, `object_repr`, `action_flag`, `change_message`) VALUES
(1, '2013-09-27 13:32:23', 1, 3, '2', 'anubhav', 1, ''),
(2, '2013-09-27 13:32:40', 1, 3, '3', 'suresh', 1, ''),
(3, '2013-09-27 13:42:43', 1, 8, '1', 'Anubhav Chaturvedi ( 2011A7PS079G )', 1, ''),
(4, '2013-09-27 13:42:56', 1, 8, '2', 'Suresh Sajja ( 2004A7PS001G )', 1, ''),
(5, '2013-09-27 13:44:35', 1, 8, '2', 'Suresh Sajja ( 2004A7PS001G )', 2, 'Changed about_me.'),
(6, '2013-09-27 13:44:40', 1, 8, '1', 'Anubhav Chaturvedi ( 2011A7PS079G )', 2, 'Changed about_me.');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

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
(8, 'user data', 'dashboard', 'userdata');

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
('0z7izupsht084bhan9o2hpyvqx4r2aku', 'ZmFjNTA4Yzk4NTcxZmUwNDg3ODdiYzc5NWU3MWM4ZTU5ZDNjZjg1MTqAAn1xAS4=', '2013-10-12 13:09:38'),
('2wvhhewjpi7ojko2jg72kwon3735bh01', 'ZmFjNTA4Yzk4NTcxZmUwNDg3ODdiYzc5NWU3MWM4ZTU5ZDNjZjg1MTqAAn1xAS4=', '2013-10-12 13:14:24'),
('4n4xqpg51o2wg2f06fv0e2vieu0457ib', 'ZmFjNTA4Yzk4NTcxZmUwNDg3ODdiYzc5NWU3MWM4ZTU5ZDNjZjg1MTqAAn1xAS4=', '2013-10-12 13:03:35'),
('516fyohwgjhxbd9zlzgeawtyfya84k7z', 'ZmFjNTA4Yzk4NTcxZmUwNDg3ODdiYzc5NWU3MWM4ZTU5ZDNjZjg1MTqAAn1xAS4=', '2013-10-11 15:29:34'),
('59gnkjwpfuswc6s10hx6owwvrwrtdopj', 'ZjJmZWZkM2RjYTI3MTJhMjRlOTUxOWI5MTk4OTA1NzE4ZjQ0ZDg5NTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQJ1Lg==', '2013-10-12 13:21:10'),
('5tz0xfefcc7900yfpftiki7fwg5froqq', 'ZjJmZWZkM2RjYTI3MTJhMjRlOTUxOWI5MTk4OTA1NzE4ZjQ0ZDg5NTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQJ1Lg==', '2013-10-11 15:29:03'),
('6ayusdo0a0znsmr3xclvm4lk52j62ts7', 'ZmFjNTA4Yzk4NTcxZmUwNDg3ODdiYzc5NWU3MWM4ZTU5ZDNjZjg1MTqAAn1xAS4=', '2013-10-19 07:09:44'),
('6rypc7bmjnv65cv6srgow6qs2f882s3r', 'ZmFjNTA4Yzk4NTcxZmUwNDg3ODdiYzc5NWU3MWM4ZTU5ZDNjZjg1MTqAAn1xAS4=', '2013-10-11 14:04:22'),
('73y81861p9hqjx14knpos4me3ry73qgl', 'ZjJmZWZkM2RjYTI3MTJhMjRlOTUxOWI5MTk4OTA1NzE4ZjQ0ZDg5NTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQJ1Lg==', '2013-10-12 13:31:24'),
('8eous5fh7az0sxfo8cjoycifs7a6dk74', 'ZmFjNTA4Yzk4NTcxZmUwNDg3ODdiYzc5NWU3MWM4ZTU5ZDNjZjg1MTqAAn1xAS4=', '2013-10-11 14:04:52'),
('bf5766mcess87jyvtaldwv3r09o6fq78', 'ZmFjNTA4Yzk4NTcxZmUwNDg3ODdiYzc5NWU3MWM4ZTU5ZDNjZjg1MTqAAn1xAS4=', '2013-10-11 13:53:07'),
('cfdu1gnk9bh1y2dnnrpc95se4rlbkixj', 'ZjJmZWZkM2RjYTI3MTJhMjRlOTUxOWI5MTk4OTA1NzE4ZjQ0ZDg5NTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQJ1Lg==', '2013-10-12 12:58:25'),
('djga5vz2l0ui8trcyocvoja7dt27y3iv', 'ZjJmZWZkM2RjYTI3MTJhMjRlOTUxOWI5MTk4OTA1NzE4ZjQ0ZDg5NTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQJ1Lg==', '2013-10-12 13:03:10'),
('fhai2bftp3wrpu188s6g49wyswybhrgs', 'ZjJmZWZkM2RjYTI3MTJhMjRlOTUxOWI5MTk4OTA1NzE4ZjQ0ZDg5NTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQJ1Lg==', '2013-10-11 15:23:09'),
('gdz0vqkwyw3a4qw916cy9fbaha6k32tv', 'ZmFjNTA4Yzk4NTcxZmUwNDg3ODdiYzc5NWU3MWM4ZTU5ZDNjZjg1MTqAAn1xAS4=', '2013-10-12 12:58:51'),
('jodcu0ejyc22tzgqrr0yj3g8u5lf3cm7', 'ZjJmZWZkM2RjYTI3MTJhMjRlOTUxOWI5MTk4OTA1NzE4ZjQ0ZDg5NTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQJ1Lg==', '2013-10-12 13:09:30'),
('l2hqp25sxx587znnqfr4rk7rqqdrqlu2', 'NjI4OGRlNTBlNDVlMmVhZDQ3MjUzYzg5ZTQ3NWZmYWRlN2RiNTcwMDqAAn1xAShVDV9hdXRoX3VzZXJfaWSKAQJVEl9hdXRoX3VzZXJfYmFja2VuZFUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmRxAnUu', '2013-10-11 14:57:30'),
('meo29g2y3cch4es4xc3xdjkmwv8pm295', 'ZjJmZWZkM2RjYTI3MTJhMjRlOTUxOWI5MTk4OTA1NzE4ZjQ0ZDg5NTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQJ1Lg==', '2013-10-11 15:18:43'),
('mp65ya6gvjdnesstul4qzexu5fz8kmu4', 'ZjJmZWZkM2RjYTI3MTJhMjRlOTUxOWI5MTk4OTA1NzE4ZjQ0ZDg5NTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQJ1Lg==', '2013-10-11 15:26:39'),
('subvyjo8ogsxw1djklof3dum79f7in51', 'ZmFjNTA4Yzk4NTcxZmUwNDg3ODdiYzc5NWU3MWM4ZTU5ZDNjZjg1MTqAAn1xAS4=', '2013-10-12 13:34:14'),
('vmnenyyrgw4xzv0i0qub0rqy3ihjelk0', 'ZmFjNTA4Yzk4NTcxZmUwNDg3ODdiYzc5NWU3MWM4ZTU5ZDNjZjg1MTqAAn1xAS4=', '2013-10-11 20:48:50'),
('ws9rkwahdhb8yfz9u97g8nwwo961nmmd', 'ZmFjNTA4Yzk4NTcxZmUwNDg3ODdiYzc5NWU3MWM4ZTU5ZDNjZjg1MTqAAn1xAS4=', '2013-10-12 13:35:18'),
('zqokxtf2luq8zjx297vz0qc0lzuest1o', 'ZjJmZWZkM2RjYTI3MTJhMjRlOTUxOWI5MTk4OTA1NzE4ZjQ0ZDg5NTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQJ1Lg==', '2013-10-12 13:33:47');

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

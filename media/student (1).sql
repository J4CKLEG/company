-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2022 at 12:28 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `student`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

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
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add students', 7, 'add_students'),
(26, 'Can change students', 7, 'change_students'),
(27, 'Can delete students', 7, 'delete_students'),
(28, 'Can view students', 7, 'view_students');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'studentgrievence', 'students');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-06-25 10:59:49.715611'),
(2, 'auth', '0001_initial', '2022-06-25 11:00:05.249047'),
(3, 'admin', '0001_initial', '2022-06-25 11:00:09.240283'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-06-25 11:00:09.319055'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-06-25 11:00:09.390046'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-06-25 11:00:11.166823'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-06-25 11:00:12.424083'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-06-25 11:00:13.649771'),
(9, 'auth', '0004_alter_user_username_opts', '2022-06-25 11:00:13.719581'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-06-25 11:00:14.827577'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-06-25 11:00:14.898333'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-06-25 11:00:14.976511'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-06-25 11:00:16.077780'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-06-25 11:00:17.681078'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-06-25 11:00:18.753813'),
(16, 'auth', '0011_update_proxy_permissions', '2022-06-25 11:00:18.829622'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-06-25 11:00:20.103460'),
(18, 'sessions', '0001_initial', '2022-06-25 11:00:21.357546');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('dsbvf6u5ojg11n6lim7hn9n8lgfxzsco', 'eyJwcmlkIjoxLCJuYW1lIjoibmhnaCIsImVtYWlsIjoiYW51MTIzQGdtYWlsLmNvbSIsInVzZXIiOiJ1c2VyIn0:1o68Em:xrxI6q923phH3DFGMeOK0xOerikveFwFcvtymeWoDZU', '2022-07-12 10:14:28.420783'),
('eeh42a0go4pvd1qc3nslf12jsnz3fi5g', '.eJyrVsrJT8_MK0lJLUnMzFGyUkpMyc3Mc0jPBfL0kvNzlXQgIjAZpVoAy3IRew:1o54Fe:SfQ6okb6nJiRDCJIjfoPr_ABYuiYpuUFIFiJoxRFq8k', '2022-07-09 11:46:58.825705'),
('zt09s0gokeufi7gx3jwtp5jmp83t2y6c', '.eJyrVirITFGyMtRRykvMTVWyUsrLSM9Q0lFKzU3MzAFyE_NKDY2MHdJBXL3k_FygVGlxahFQBkzpKBUUgfXXAgA6fRaW:1o5ZbM:Z3Dfg9AAre4CRUKbjb2CTL2afgOGqBqI_EUztVejZZU', '2022-07-10 21:15:28.927998');

-- --------------------------------------------------------

--
-- Table structure for table `studentgrievence_acknowledgement`
--

CREATE TABLE IF NOT EXISTS `studentgrievence_acknowledgement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ack` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL,
  `cid` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `studentgrievence_acknowledgement`
--

INSERT INTO `studentgrievence_acknowledgement` (`id`, `ack`, `status`, `date`, `cid`) VALUES
(1, 'AAA', 'approved', '2022-06-16', '1'),
(2, 'AAA', 'approved', '2022-06-28', '1'),
(3, 'x', 'approved', '2022-06-02', '1'),
(4, 'f', 'approved', '2022-06-23', '1');

-- --------------------------------------------------------

--
-- Table structure for table `studentgrievence_principals`
--

CREATE TABLE IF NOT EXISTS `studentgrievence_principals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `studentgrievence_principals`
--

INSERT INTO `studentgrievence_principals` (`id`, `name`, `phone`, `email`, `password`) VALUES
(1, 'nhgh', '+917898787', 'anu123@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `studentgrievence_prodetails`
--

CREATE TABLE IF NOT EXISTS `studentgrievence_prodetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(200) NOT NULL,
  `p_age` varchar(200) NOT NULL,
  `p_email` varchar(200) NOT NULL,
  `p_phone` varchar(200) NOT NULL,
  `p_password` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `studentgrievence_prodetails`
--

INSERT INTO `studentgrievence_prodetails` (`id`, `p_name`, `p_age`, `p_email`, `p_phone`, `p_password`) VALUES
(1, 'anu', '23', 'e@gmail.com', '34454546', '434');

-- --------------------------------------------------------

--
-- Table structure for table `studentgrievence_stdcomplaint`
--

CREATE TABLE IF NOT EXISTS `studentgrievence_stdcomplaint` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `complaint` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  `uid` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `studentgrievence_stdcomplaint`
--

INSERT INTO `studentgrievence_stdcomplaint` (`id`, `complaint`, `status`, `uid`) VALUES
(1, 'gfg', 'completed', ''),
(2, 'gfg', 'completed', ''),
(3, ',mnj,m', 'm', ''),
(4, ',mnj,m', 'm', ''),
(5, ',mnj,m', 'm', ''),
(6, ',mnj,m', 'm', '6'),
(7, 'zDS', 'pending', '6'),
(8, 'zDS', 'pending', '6');

-- --------------------------------------------------------

--
-- Table structure for table `studentgrievence_students`
--

CREATE TABLE IF NOT EXISTS `studentgrievence_students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `st_id` varchar(200) NOT NULL,
  `st_name` varchar(200) NOT NULL,
  `st_gender` varchar(200) NOT NULL,
  `st_college` varchar(200) NOT NULL,
  `st_email` varchar(200) NOT NULL,
  `st_phone` varchar(200) NOT NULL,
  `st_password` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `studentgrievence_students`
--

INSERT INTO `studentgrievence_students` (`id`, `st_id`, `st_name`, `st_gender`, `st_college`, `st_email`, `st_phone`, `st_password`) VALUES
(1, 'fdtdtrf', 'dddd', 'option1', 's@gd', 'dd', 'd', 'd'),
(2, '5456', 'dd', 'option1', 's@gd', 'dd', '66', '78'),
(3, '5456', 'dd', 'option1', 's@gd', 'dd', '66', '78'),
(4, '5456', 'dd', 'option1', 's@gd', 'dd', '66', '78'),
(5, 'gg', 's', 'option2', 'ff', 'f@h', 'f', 'ff'),
(6, '12334', 'sree', 'option1', 'kvm', 'sree@gmail.com', '8907612345', '111'),
(7, '1', 'anu', 'option1', 'mzc', 'a@gmail.com', '66', '123');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

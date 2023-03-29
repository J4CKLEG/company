-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2022 at 09:39 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `internship`
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
(25, 'Can add register', 7, 'add_register'),
(26, 'Can change register', 7, 'change_register'),
(27, 'Can delete register', 7, 'delete_register'),
(28, 'Can view register', 7, 'view_register');

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
-- Table structure for table `company_application`
--

CREATE TABLE IF NOT EXISTS `company_application` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `internshipname` varchar(100) NOT NULL,
  `studid` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `phoneno` varchar(100) NOT NULL,
  `status` varchar(225) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `company_application`
--

INSERT INTO `company_application` (`id`, `internshipname`, `studid`, `amount`, `date`, `phoneno`, `status`) VALUES
(1, 'php', '1', '20000', '2022-07-28', '7356273537', 'pending'),
(2, 'php', '1', '20000', '2022-07-28', '7356273537', 'pending'),
(3, 'python', '1', '20000', '2022-07-28', '7356273537', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `company_intern`
--

CREATE TABLE IF NOT EXISTS `company_intern` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(25) NOT NULL,
  `Amount` varchar(20) NOT NULL,
  `Duration` varchar(20) NOT NULL,
  `Vaccancy` int(50) NOT NULL,
  `Stipend` varchar(20) NOT NULL,
  `post_date` date NOT NULL,
  `last_date` date NOT NULL,
  `Qualification` varchar(20) NOT NULL,
  `Description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `company_intern`
--

INSERT INTO `company_intern` (`id`, `Name`, `Amount`, `Duration`, `Vaccancy`, `Stipend`, `post_date`, `last_date`, `Qualification`, `Description`) VALUES
(1, 'php', '20000', '2hr', 4, '2000', '2022-06-18', '2022-08-29', 'MCA', 'shbxghsgd'),
(2, 'python', '20000', '2hr', 4, '2000', '2022-07-29', '2022-07-29', 'MCA', 'dscdsc');

-- --------------------------------------------------------

--
-- Table structure for table `company_note`
--

CREATE TABLE IF NOT EXISTS `company_note` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `staffid` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `internshipid` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `company_note`
--

INSERT INTO `company_note` (`id`, `staffid`, `photo`, `date`, `internshipid`) VALUES
(1, '56', '', '2022-06-29', '3'),
(2, 'gh', '', '2022-06-30', '4'),
(3, 'rahul', 'main project topic_yq3vRt2.pdf', '2022-07-28', 'python'),
(4, 'rahul', 'css -basics.docx', '2022-07-30', 'python');

-- --------------------------------------------------------

--
-- Table structure for table `company_onliness`
--

CREATE TABLE IF NOT EXISTS `company_onliness` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `staffid` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `internshipid` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `company_onliness`
--

INSERT INTO `company_onliness` (`id`, `staffid`, `link`, `date`, `internshipid`) VALUES
(1, '4', 'njhfhcj', '2022-06-27', '5'),
(2, '4', 'njhfhcj', '2022-06-27', '5'),
(3, '4', 'njhfhcj', '2022-06-27', '5'),
(4, '7y', 'hjkjl', '2022-07-22', '6565'),
(5, 'rahul', 'meet.google.com/oeo-xrgu-foc', '2022-07-29', 'python');

-- --------------------------------------------------------

--
-- Table structure for table `company_stafftask`
--

CREATE TABLE IF NOT EXISTS `company_stafftask` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `staffid` varchar(100) NOT NULL,
  `photo` varchar(225) NOT NULL,
  `date` varchar(100) NOT NULL,
  `internshipid` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `company_stafftask`
--

INSERT INTO `company_stafftask` (`id`, `staffid`, `photo`, `date`, `internshipid`) VALUES
(1, 'rahul', 'internship.sql', '2022-07-08', 'python');

-- --------------------------------------------------------

--
-- Table structure for table `company_stud`
--

CREATE TABLE IF NOT EXISTS `company_stud` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `address` varchar(25) NOT NULL,
  `qualification` varchar(15) NOT NULL,
  `pass_year` varchar(100) NOT NULL,
  `phone_no` varchar(15) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `email` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `company_stud`
--

INSERT INTO `company_stud` (`id`, `name`, `address`, `qualification`, `pass_year`, `phone_no`, `username`, `password`, `email`, `status`) VALUES
(1, 'fttt', 'fbdsgh', 'bb', '2222', '6587695433', 'gbn', '122', 'ab@gmail.com', 'approved'),
(2, 'Rahul', 'jnjenjend', 'mca', '2022', '3434543455554', 'rahul', '98', 'rahul@gmail.com', 'approved'),
(3, 'kukku', 'fdxdsxd', 'hhjg', '565', '34567890', 'kukku', '12', 'kukku@gmail.com', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `company_student`
--

CREATE TABLE IF NOT EXISTS `company_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `status` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `company_student`
--

INSERT INTO `company_student` (`id`, `name`, `email`, `password`, `address`, `phone`, `status`) VALUES
(1, 'achu', 'achu@gmail.com', '111', 'jhkyhjkuj', '9078564321', 'pending'),
(6, 'Ligy b thomas', 'lijibthomas95@gmail.com', '986', 'frtftfygyftyf', '9400706580', 'pending'),
(7, 'Sony', 'sony@gmail.com', 'sony', 'nbxghftydrtwyedf', '7356273537', 'pending'),
(8, 'dgf', 'gf@gmail.com', '767', 'rytf', '68767698', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `company_taskupload`
--

CREATE TABLE IF NOT EXISTS `company_taskupload` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `studentid` varchar(100) NOT NULL,
  `staffid` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `company_user`
--

CREATE TABLE IF NOT EXISTS `company_user` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `company_userreg`
--

CREATE TABLE IF NOT EXISTS `company_userreg` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(15) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL,
  `user` varchar(15) NOT NULL,
  `phone_No` varchar(16) NOT NULL,
  `Course` varchar(15) NOT NULL,
  `Address` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `company_userreg`
--

INSERT INTO `company_userreg` (`id`, `Name`, `Email`, `password`, `user`, `phone_No`, `Course`, `Address`) VALUES
(1, 'Sony', 'admin@gmail.com', 'admin', 'student1', 'q435', '45t', '345'),
(2, '', '', '', '', '', '', ''),
(3, '', '', '', '', '', '', ''),
(4, '', '', '', '', '', '', ''),
(5, 'jeena koshy', 'jeena@gmail.com', '67', 'jeena', '7983974832', 'python', 'bvzgcx'),
(6, 'rahul', 'rahul@gmail.com', '123', 'rahul', '43567890-=', 'python', 'jbxjbsx'),
(7, 'Sony', 'kukku@gmail.com', '12', 'staff1', '7867787878', 'python', 'jbxjbsx');

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
(7, 'company', 'register'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

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
(1, 'contenttypes', '0001_initial', '2022-06-14 10:32:08.993589'),
(2, 'auth', '0001_initial', '2022-06-14 10:32:23.622636'),
(3, 'admin', '0001_initial', '2022-06-14 10:32:27.487630'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-06-14 10:32:27.556946'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-06-14 10:32:27.607663'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-06-14 10:32:29.333556'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-06-14 10:32:30.588600'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-06-14 10:32:32.285374'),
(9, 'auth', '0004_alter_user_username_opts', '2022-06-14 10:32:32.340502'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-06-14 10:32:33.248857'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-06-14 10:32:33.384674'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-06-14 10:32:33.457010'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-06-14 10:32:34.437182'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-06-14 10:32:35.485808'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-06-14 10:32:36.541984'),
(16, 'auth', '0011_update_proxy_permissions', '2022-06-14 10:32:36.648588'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-06-14 10:32:38.843869'),
(18, 'sessions', '0001_initial', '2022-06-14 10:32:40.491874');

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
('au0fu5havhj412gd3kn84jl6e3vu24e5', '.eJyrVirNTFGyMtdRKs1LzE1VslIKzs-rVAJyU3MTM3OA_GIg3yEdxNFLzs8FyRSnFgHFE1NyM_Og3JTUEohisCCS6loA6vggHg:1o1MaT:Aary-tB85uc2DJ30f7Or6PuUTMKtjcJyQwZrRpf11xA', '2022-06-29 06:33:09.033299'),
('quzlxdoj2bdxwbl6pil744dr2hlaebqh', '.eJyrVirNTFGyMtRRKs1LzE1VslJKTM4oVQJyU3MTM3OgfId0EEcvOT8XJFOcWgQUB1O1AJM2FL4:1o14Cg:lsACR-tveOQz4KnXZfztftlwrO-VU81-zrLAp1CeKEM', '2022-06-28 10:55:22.264301'),
('re05c5811ui10q21dc6zdzqzxedj8ebq', '.eJyrVirNTFGyMtZRKs1LzE1VslLKLs3OLlUC8lNzEzNzYAIO6SCeXnJ-LkiqOLUIKAGmagHNkhXU:1oBWqJ:d9aC8TDPYIR8qxfsxL0QIug4DaCRpOpUY1gL3jJwomI', '2022-07-27 07:31:31.161288'),
('w4h6qbvj09e4n5hfdkd3owxlv1bqrcbg', '.eJyrVirNTFGyMtZRKs1LzE1VslLKLs3OLlUC8lNzEzNzYAIO6SCeXnJ-LkiqOLUIKAGmagHNkhXU:1oB7IL:cT-CRBo-KyNcozwwrqdMs-F75Q52GbEK5vQfPAkAvJU', '2022-07-26 04:14:45.527970');

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

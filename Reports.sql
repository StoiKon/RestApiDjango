-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 05, 2022 at 09:22 PM
-- Server version: 8.0.31-0ubuntu0.22.04.1
-- PHP Version: 8.1.2-1ubuntu2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Reports`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
(25, 'Can add auth group', 7, 'add_authgroup'),
(26, 'Can change auth group', 7, 'change_authgroup'),
(27, 'Can delete auth group', 7, 'delete_authgroup'),
(28, 'Can view auth group', 7, 'view_authgroup'),
(29, 'Can add auth group permissions', 8, 'add_authgrouppermissions'),
(30, 'Can change auth group permissions', 8, 'change_authgrouppermissions'),
(31, 'Can delete auth group permissions', 8, 'delete_authgrouppermissions'),
(32, 'Can view auth group permissions', 8, 'view_authgrouppermissions'),
(33, 'Can add auth permission', 9, 'add_authpermission'),
(34, 'Can change auth permission', 9, 'change_authpermission'),
(35, 'Can delete auth permission', 9, 'delete_authpermission'),
(36, 'Can view auth permission', 9, 'view_authpermission'),
(37, 'Can add auth user', 10, 'add_authuser'),
(38, 'Can change auth user', 10, 'change_authuser'),
(39, 'Can delete auth user', 10, 'delete_authuser'),
(40, 'Can view auth user', 10, 'view_authuser'),
(41, 'Can add auth user groups', 11, 'add_authusergroups'),
(42, 'Can change auth user groups', 11, 'change_authusergroups'),
(43, 'Can delete auth user groups', 11, 'delete_authusergroups'),
(44, 'Can view auth user groups', 11, 'view_authusergroups'),
(45, 'Can add auth user user permissions', 12, 'add_authuseruserpermissions'),
(46, 'Can change auth user user permissions', 12, 'change_authuseruserpermissions'),
(47, 'Can delete auth user user permissions', 12, 'delete_authuseruserpermissions'),
(48, 'Can view auth user user permissions', 12, 'view_authuseruserpermissions'),
(49, 'Can add django admin log', 13, 'add_djangoadminlog'),
(50, 'Can change django admin log', 13, 'change_djangoadminlog'),
(51, 'Can delete django admin log', 13, 'delete_djangoadminlog'),
(52, 'Can view django admin log', 13, 'view_djangoadminlog'),
(53, 'Can add django content type', 14, 'add_djangocontenttype'),
(54, 'Can change django content type', 14, 'change_djangocontenttype'),
(55, 'Can delete django content type', 14, 'delete_djangocontenttype'),
(56, 'Can view django content type', 14, 'view_djangocontenttype'),
(57, 'Can add django migrations', 15, 'add_djangomigrations'),
(58, 'Can change django migrations', 15, 'change_djangomigrations'),
(59, 'Can delete django migrations', 15, 'delete_djangomigrations'),
(60, 'Can view django migrations', 15, 'view_djangomigrations'),
(61, 'Can add django session', 16, 'add_djangosession'),
(62, 'Can change django session', 16, 'change_djangosession'),
(63, 'Can delete django session', 16, 'delete_djangosession'),
(64, 'Can view django session', 16, 'view_djangosession'),
(65, 'Can add eidhsh', 17, 'add_eidhsh'),
(66, 'Can change eidhsh', 17, 'change_eidhsh'),
(67, 'Can delete eidhsh', 17, 'delete_eidhsh'),
(68, 'Can view eidhsh', 17, 'view_eidhsh'),
(69, 'Can add katastash', 18, 'add_katastash'),
(70, 'Can change katastash', 18, 'change_katastash'),
(71, 'Can delete katastash', 18, 'delete_katastash'),
(72, 'Can view katastash', 18, 'view_katastash'),
(73, 'Can add kat thematos', 19, 'add_katthematos'),
(74, 'Can change kat thematos', 19, 'change_katthematos'),
(75, 'Can delete kat thematos', 19, 'delete_katthematos'),
(76, 'Can view kat thematos', 19, 'view_katthematos'),
(77, 'Can add sxolio', 20, 'add_sxolio'),
(78, 'Can change sxolio', 20, 'change_sxolio'),
(79, 'Can delete sxolio', 20, 'delete_sxolio'),
(80, 'Can view sxolio', 20, 'view_sxolio'),
(81, 'Can add sxolioeidhshs', 21, 'add_sxolioeidhshs'),
(82, 'Can change sxolioeidhshs', 21, 'change_sxolioeidhshs'),
(83, 'Can delete sxolioeidhshs', 21, 'delete_sxolioeidhshs'),
(84, 'Can view sxolioeidhshs', 21, 'view_sxolioeidhshs'),
(85, 'Can add thema', 22, 'add_thema'),
(86, 'Can change thema', 22, 'change_thema'),
(87, 'Can delete thema', 22, 'delete_thema'),
(88, 'Can view thema', 22, 'view_thema'),
(89, 'Can add themaeidhshs', 23, 'add_themaeidhshs'),
(90, 'Can change themaeidhshs', 23, 'change_themaeidhshs'),
(91, 'Can delete themaeidhshs', 23, 'delete_themaeidhshs'),
(92, 'Can view themaeidhshs', 23, 'view_themaeidhshs'),
(93, 'Can add xrhsths', 24, 'add_xrhsths'),
(94, 'Can change xrhsths', 24, 'change_xrhsths'),
(95, 'Can delete xrhsths', 24, 'delete_xrhsths'),
(96, 'Can view xrhsths', 24, 'view_xrhsths'),
(97, 'Can add kat sxoliou', 25, 'add_katsxoliou'),
(98, 'Can change kat sxoliou', 25, 'change_katsxoliou'),
(99, 'Can delete kat sxoliou', 25, 'delete_katsxoliou'),
(100, 'Can view kat sxoliou', 25, 'view_katsxoliou');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'restAPI', 'authgroup'),
(8, 'restAPI', 'authgrouppermissions'),
(9, 'restAPI', 'authpermission'),
(10, 'restAPI', 'authuser'),
(11, 'restAPI', 'authusergroups'),
(12, 'restAPI', 'authuseruserpermissions'),
(13, 'restAPI', 'djangoadminlog'),
(14, 'restAPI', 'djangocontenttype'),
(15, 'restAPI', 'djangomigrations'),
(16, 'restAPI', 'djangosession'),
(17, 'restAPI', 'eidhsh'),
(18, 'restAPI', 'katastash'),
(25, 'restAPI', 'katsxoliou'),
(19, 'restAPI', 'katthematos'),
(20, 'restAPI', 'sxolio'),
(21, 'restAPI', 'sxolioeidhshs'),
(22, 'restAPI', 'thema'),
(23, 'restAPI', 'themaeidhshs'),
(24, 'restAPI', 'xrhsths'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-11-10 14:59:03.391429'),
(2, 'auth', '0001_initial', '2022-11-10 14:59:03.819440'),
(3, 'admin', '0001_initial', '2022-11-10 14:59:03.930761'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-11-10 14:59:03.942304'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-11-10 14:59:03.958796'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-11-10 14:59:04.029005'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-11-10 14:59:04.089165'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-11-10 14:59:04.117000'),
(9, 'auth', '0004_alter_user_username_opts', '2022-11-10 14:59:04.127139'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-11-10 14:59:04.178316'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-11-10 14:59:04.184244'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-11-10 14:59:04.194613'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-11-10 14:59:04.249335'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-11-10 14:59:04.302420'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-11-10 14:59:04.326787'),
(16, 'auth', '0011_update_proxy_permissions', '2022-11-10 14:59:04.339149'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-11-10 14:59:04.390207'),
(18, 'sessions', '0001_initial', '2022-11-10 14:59:04.425783'),
(19, 'restAPI', '0001_initial', '2022-11-10 15:09:37.567610'),
(20, 'restAPI', '0002_katsxoliou', '2022-11-11 12:55:49.004302');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Eidhsh`
--

CREATE TABLE `Eidhsh` (
  `id` int NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  `stateName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Eidhsh`
--

INSERT INTO `Eidhsh` (`id`, `title`, `description`, `date`, `stateName`) VALUES
(1, 'eidhsh1', 'kati egine pali', NULL, 'dhmosieumenh'),
(2, 'eidhsh2', 'kati egine , hello world 2', '2022-11-10 17:52:58', 'ypobeblhmenh'),
(3, 'eidhsh3', 'kati egine ksana', '2022-11-10 17:52:58', 'egkekrimenh'),
(4, 'eidhsh4', 'kati egine', NULL, 'dhmiourghmenh'),
(6, 'a', 'b', '2022-11-11 11:54:40', 'dhmiourghmenh');

-- --------------------------------------------------------

--
-- Table structure for table `Katastash`
--

CREATE TABLE `Katastash` (
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Katastash`
--

INSERT INTO `Katastash` (`name`) VALUES
('dhmiourghmenh'),
('dhmosieumenh'),
('egkekrimenh'),
('mhApodekth'),
('ypobeblhmenh');

-- --------------------------------------------------------

--
-- Table structure for table `Kat_Sxoliou`
--

CREATE TABLE `Kat_Sxoliou` (
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Kat_Sxoliou`
--

INSERT INTO `Kat_Sxoliou` (`name`) VALUES
('dhmiourghmeno'),
('diagrameno'),
('egkekrimeno');

-- --------------------------------------------------------

--
-- Table structure for table `Kat_Thematos`
--

CREATE TABLE `Kat_Thematos` (
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Kat_Thematos`
--

INSERT INTO `Kat_Thematos` (`name`) VALUES
('dhmiourghmeno'),
('diagrameno'),
('egkekrimeno');

-- --------------------------------------------------------

--
-- Table structure for table `Sxolio`
--

CREATE TABLE `Sxolio` (
  `id` int NOT NULL,
  `description` varchar(255) NOT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  `creatorName` varchar(255) DEFAULT NULL,
  `katastash` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Sxolio`
--

INSERT INTO `Sxolio` (`id`, `description`, `date`, `creatorName`, `katastash`) VALUES
(1, 'desc', '2022-11-11 13:09:41', 'name', 'egkekrimeno'),
(5, 'desc', '2022-11-11 13:09:41', 'name', 'diagrameno');

-- --------------------------------------------------------

--
-- Table structure for table `SxolioEidhshs`
--

CREATE TABLE `SxolioEidhshs` (
  `Eid` int DEFAULT NULL,
  `Sid` int DEFAULT NULL,
  `id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `SxolioEidhshs`
--

INSERT INTO `SxolioEidhshs` (`Eid`, `Sid`, `id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Thema`
--

CREATE TABLE `Thema` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `stateName` varchar(255) DEFAULT NULL,
  `hmeromhnia` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Thema`
--

INSERT INTO `Thema` (`id`, `name`, `stateName`, `hmeromhnia`) VALUES
(1, 'a', 'diagrameno', '2022-11-12 09:34:23'),
(2, 'b', 'egkekrimeno', '2022-12-12 09:34:23');

-- --------------------------------------------------------

--
-- Table structure for table `ThemaEidhshs`
--

CREATE TABLE `ThemaEidhshs` (
  `Eid` int DEFAULT NULL,
  `Thid` int DEFAULT NULL,
  `id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ThemaEidhshs`
--

INSERT INTO `ThemaEidhshs` (`Eid`, `Thid`, `id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Xrhsths`
--

CREATE TABLE `Xrhsths` (
  `name` varchar(255) NOT NULL,
  `passw` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

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
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

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
-- Indexes for table `Eidhsh`
--
ALTER TABLE `Eidhsh`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stateName` (`stateName`);

--
-- Indexes for table `Katastash`
--
ALTER TABLE `Katastash`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `Kat_Sxoliou`
--
ALTER TABLE `Kat_Sxoliou`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `Kat_Thematos`
--
ALTER TABLE `Kat_Thematos`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `Sxolio`
--
ALTER TABLE `Sxolio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `katastash` (`katastash`);

--
-- Indexes for table `SxolioEidhshs`
--
ALTER TABLE `SxolioEidhshs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Eid` (`Eid`),
  ADD KEY `Sid` (`Sid`);

--
-- Indexes for table `Thema`
--
ALTER TABLE `Thema`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `stateName` (`stateName`);

--
-- Indexes for table `ThemaEidhshs`
--
ALTER TABLE `ThemaEidhshs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Eid` (`Eid`),
  ADD KEY `Thid` (`Thid`);

--
-- Indexes for table `Xrhsths`
--
ALTER TABLE `Xrhsths`
  ADD PRIMARY KEY (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `Eidhsh`
--
ALTER TABLE `Eidhsh`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `Sxolio`
--
ALTER TABLE `Sxolio`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `SxolioEidhshs`
--
ALTER TABLE `SxolioEidhshs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Thema`
--
ALTER TABLE `Thema`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ThemaEidhshs`
--
ALTER TABLE `ThemaEidhshs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

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
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `Eidhsh`
--
ALTER TABLE `Eidhsh`
  ADD CONSTRAINT `Eidhsh_ibfk_1` FOREIGN KEY (`stateName`) REFERENCES `Katastash` (`name`);

--
-- Constraints for table `Sxolio`
--
ALTER TABLE `Sxolio`
  ADD CONSTRAINT `Sxolio_ibfk_1` FOREIGN KEY (`katastash`) REFERENCES `Kat_Sxoliou` (`name`);

--
-- Constraints for table `SxolioEidhshs`
--
ALTER TABLE `SxolioEidhshs`
  ADD CONSTRAINT `SxolioEidhshs_ibfk_1` FOREIGN KEY (`Eid`) REFERENCES `Eidhsh` (`id`),
  ADD CONSTRAINT `SxolioEidhshs_ibfk_2` FOREIGN KEY (`Sid`) REFERENCES `Sxolio` (`id`);

--
-- Constraints for table `Thema`
--
ALTER TABLE `Thema`
  ADD CONSTRAINT `Thema_ibfk_1` FOREIGN KEY (`stateName`) REFERENCES `Kat_Thematos` (`name`);

--
-- Constraints for table `ThemaEidhshs`
--
ALTER TABLE `ThemaEidhshs`
  ADD CONSTRAINT `ThemaEidhshs_ibfk_1` FOREIGN KEY (`Eid`) REFERENCES `Eidhsh` (`id`),
  ADD CONSTRAINT `ThemaEidhshs_ibfk_2` FOREIGN KEY (`Thid`) REFERENCES `Thema` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

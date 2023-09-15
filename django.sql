-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2023 at 08:52 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `django`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(25, 'Can add siswa', 7, 'add_siswa'),
(26, 'Can change siswa', 7, 'change_siswa'),
(27, 'Can delete siswa', 7, 'delete_siswa'),
(28, 'Can view siswa', 7, 'view_siswa'),
(29, 'Can add guru', 8, 'add_guru'),
(30, 'Can change guru', 8, 'change_guru'),
(31, 'Can delete guru', 8, 'delete_guru'),
(32, 'Can view guru', 8, 'view_guru'),
(33, 'Can add pelanggaran', 9, 'add_pelanggaran'),
(34, 'Can change pelanggaran', 9, 'change_pelanggaran'),
(35, 'Can delete pelanggaran', 9, 'delete_pelanggaran'),
(36, 'Can view pelanggaran', 9, 'view_pelanggaran'),
(37, 'Can add pelanggaran siswa', 10, 'add_pelanggaransiswa'),
(38, 'Can change pelanggaran siswa', 10, 'change_pelanggaransiswa'),
(39, 'Can delete pelanggaran siswa', 10, 'delete_pelanggaransiswa'),
(40, 'Can view pelanggaran siswa', 10, 'view_pelanggaransiswa'),
(41, 'Can add user profile', 11, 'add_userprofile'),
(42, 'Can change user profile', 11, 'change_userprofile'),
(43, 'Can delete user profile', 11, 'delete_userprofile'),
(44, 'Can view user profile', 11, 'view_userprofile'),
(45, 'Can add tindakan', 12, 'add_tindakan'),
(46, 'Can change tindakan', 12, 'change_tindakan'),
(47, 'Can delete tindakan', 12, 'delete_tindakan'),
(48, 'Can view tindakan', 12, 'view_tindakan'),
(49, 'Can add siswa tindakan', 13, 'add_siswatindakan'),
(50, 'Can change siswa tindakan', 13, 'change_siswatindakan'),
(51, 'Can delete siswa tindakan', 13, 'delete_siswatindakan'),
(52, 'Can view siswa tindakan', 13, 'view_siswatindakan'),
(53, 'Can add siswa pelanggaran', 14, 'add_siswapelanggaran'),
(54, 'Can change siswa pelanggaran', 14, 'change_siswapelanggaran'),
(55, 'Can delete siswa pelanggaran', 14, 'delete_siswapelanggaran'),
(56, 'Can view siswa pelanggaran', 14, 'view_siswapelanggaran');

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
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$J2taJH16Pu8NSoB34rbY3f$K+3ZeAzdyeSHNLQET95UMpu6l6mgaKimdGL0VqBS8mc=', '2023-08-25 15:11:20.768666', 1, 'admin', 'Administrator', '', 'muzayyin.rpl@gmail.com', 1, 1, '2023-07-07 16:11:05.000000'),
(4, 'pbkdf2_sha256$600000$QQuTYfWOcTIyAo2taYZHQ0$CswO7Ghkc89k3L/ulYoA911OJNJU6GsXO0it1zLp1P4=', '2023-07-19 20:48:29.590729', 0, 'users', 'AHMAD', 'MUZAYYIN', 'muzayyin.rpl@gmail.com', 1, 1, '2023-07-19 20:47:39.000000'),
(5, 'pbkdf2_sha256$600000$JnU0hoRno9GUULpRoUPcB2$pJsuKHXX5O5u5XAkCMvkaBYPFE6LOTCqTbD3hgS74b0=', '2023-08-10 04:39:25.535173', 0, 'rizal', 'Badrul Rizal', 'petugas', 'Rizal@gmail.com', 1, 1, '2023-07-23 07:48:31.000000'),
(7, 'pbkdf2_sha256$600000$d6Trsft4z2CLRreWdcda7R$dSJZ2CWuW0g3h+KbNxRYKV42JHOu4gOBDA4OjAxbPkc=', NULL, 0, '1', '', '', '', 0, 1, '2023-07-23 21:13:17.062322'),
(8, 'pbkdf2_sha256$600000$HUHD0zeax3V3sPJKPcHOpE$R1XtnuBP/d5+U6odAicLp1s5XC2cceaR7codmr7nHA8=', NULL, 0, '2', '', '', '', 0, 1, '2023-07-24 05:47:53.637440');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-07-07 21:41:13.298084', '1', 'admin', 2, '[{\"changed\": {\"fields\": [\"First name\"]}}]', 4, 1),
(2, '2023-07-19 20:43:48.025981', '3', '123', 3, '', 4, 1),
(3, '2023-07-19 20:47:40.043755', '4', 'users', 1, '[{\"added\": {}}]', 4, 1),
(4, '2023-07-19 20:48:06.103161', '4', 'users', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Staff status\", \"Last login\"]}}]', 4, 1),
(5, '2023-07-23 07:48:33.266132', '5', 'rizal', 1, '[{\"added\": {}}]', 4, 1),
(6, '2023-07-23 07:49:03.151422', '5', 'rizal', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Staff status\"]}}]', 4, 1),
(7, '2023-07-23 20:51:41.073970', '6', 'badrul', 1, '[{\"added\": {}}]', 4, 1),
(8, '2023-07-23 20:52:24.558772', '6', 'badrul', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]', 4, 1),
(9, '2023-07-23 20:52:47.843085', '6', 'badrul', 3, '', 4, 1),
(10, '2023-07-23 20:53:56.844239', '1', 'admin', 2, '[{\"changed\": {\"fields\": [\"First name\"]}}]', 4, 1),
(11, '2023-07-23 20:58:23.329302', '5', 'rizal', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(8, 'siswa', 'guru'),
(9, 'siswa', 'pelanggaran'),
(10, 'siswa', 'pelanggaransiswa'),
(7, 'siswa', 'siswa'),
(14, 'siswa', 'siswapelanggaran'),
(13, 'siswa', 'siswatindakan'),
(12, 'siswa', 'tindakan'),
(11, 'siswa', 'userprofile');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-06-25 02:00:24.613076'),
(2, 'auth', '0001_initial', '2023-06-25 02:00:25.607828'),
(3, 'admin', '0001_initial', '2023-06-25 02:00:25.816789'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-06-25 02:00:25.830784'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-06-25 02:00:25.841783'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-06-25 02:00:25.979755'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-06-25 02:00:26.092733'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-06-25 02:00:26.130725'),
(9, 'auth', '0004_alter_user_username_opts', '2023-06-25 02:00:26.144723'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-06-25 02:00:26.282695'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-06-25 02:00:26.288694'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-06-25 02:00:26.301699'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-06-25 02:00:26.338684'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-06-25 02:00:26.371679'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-06-25 02:00:26.409674'),
(16, 'auth', '0011_update_proxy_permissions', '2023-06-25 02:00:26.425693'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-06-25 02:00:26.468661'),
(18, 'sessions', '0001_initial', '2023-06-25 02:00:26.547691');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2eob0u0tektpc9hebm6ihr0a1hakzbxs', 'eyJuYW1hIjoiQWRtaW5pc3RyYXRvciIsIm51cHRrIjoiMCIsImxvZ2dlZF9pbiI6dHJ1ZX0:1qbuFo:vMzXBXwcoRfALreMbUqEVPeXOOnHKS5i1CXtKUVO9u4', '2023-09-15 02:51:24.381754'),
('4290ic5yd1ua6ufssx2cn2p0iliq987x', '.eJxVjDsOwyAQBe9CHSGDMWCX6XMGtLC7thMLJH-qKHcPllwk7Zt58xYBjn0Kx0ZrmFEMQonb7xYhvSifAJ-QxyJTyfs6R3kq8qKbfBSk5X65f4EJtqm-bautQ5UcMWqMvaKeiaEhtG3rkwHTsbG-Ae6dZibdkfe6MxGtMxXU6FLGkTDMWQz7etDnC-iUPjc:1qNSM2:yH-QHvf0jGJmronBY8Ve-t6GWUSXmtExLpd3s2eDCYg', '2023-08-06 06:14:06.444283'),
('7bqt4c7rhtzmv421u5ti0ch45r6r2v1n', '.eJxVjDsOwyAQBe9CHSGDMWCX6XMGtLC7thMLJH-qKHcPllwk7Zt58xYBjn0Kx0ZrmFEMQonb7xYhvSifAJ-QxyJTyfs6R3kq8qKbfBSk5X65f4EJtqm-bautQ5UcMWqMvaKeiaEhtG3rkwHTsbG-Ae6dZibdkfe6MxGtMxXU6FLGkTDMWQz7etDnC-iUPjc:1qXbLv:YKuUmNPowQovYnxdzb9HnVz3RFs1m5Gf63Dc9wjOxlI', '2023-09-03 05:51:55.859812'),
('94ttu0h0ppatldiw1k1973sf5n26cjzi', 'eyJuYW1hIjoiQWRtaW5pc3RyYXRvciIsImxhc3QiOiIiLCJlbWFpbCI6Im11emF5eWluLnJwbEBnbWFpbC5jb20iLCJsb2dnZWRfaW4iOnRydWV9:1qZjKj:zThIFGPdt4ZWnlABYNpe6l_d1Pnqv6u1Uti55fz7I7E', '2023-09-09 02:47:29.168605'),
('a23i1loswcbepb25iz15im11mgiiak2b', '.eJxVjDsOwyAQBe9CHSGDMWCX6XMGtLC7thMLJH-qKHcPllwk7Zt58xYBjn0Kx0ZrmFEMQonb7xYhvSifAJ-QxyJTyfs6R3kq8qKbfBSk5X65f4EJtqm-bautQ5UcMWqMvaKeiaEhtG3rkwHTsbG-Ae6dZibdkfe6MxGtMxXU6FLGkTDMWQz7etDnC-iUPjc:1qXbM2:3TUrlAzdyiYwS9ayBcDZi_0bAdwX-TSh2_imgQsENhk', '2023-09-03 05:52:02.064363'),
('dbbfn9gekoiy2u4d71xkwqvmohvgf78v', 'eyJuYW1hIjoiQWRtaW5pc3RyYXRvciIsImxhc3QiOiIiLCJlbWFpbCI6Im11emF5eWluLnJwbEBnbWFpbC5jb20iLCJsb2dnZWRfaW4iOnRydWV9:1qbfc6:CthoaSQ2jABfjiFdk9qZbmC3H3u8n0ryUyfcNJZ0_yA', '2023-09-14 11:13:26.538467'),
('dxw7bhc2zfseayn5aauaz5xvo6cwv3ri', '.eJxVjDsOwyAQBe9CHSGDMWCX6XMGtLC7thMLJH-qKHcPllwk7Zt58xYBjn0Kx0ZrmFEMQonb7xYhvSifAJ-QxyJTyfs6R3kq8qKbfBSk5X65f4EJtqm-bautQ5UcMWqMvaKeiaEhtG3rkwHTsbG-Ae6dZibdkfe6MxGtMxXU6FLGkTDMWQz7etDnC-iUPjc:1qXbLz:9hD42pD-2C7C_i7yGxtIrdGq-wWeYEWXe-yBZeqatDA', '2023-09-03 05:51:59.091672'),
('essyxnxnjj7ye6uxcb80sdof65e021c0', '.eJxVjDsOwyAQBe9CHSGDMWCX6XMGtLC7thMLJH-qKHcPllwk7Zt58xYBjn0Kx0ZrmFEMQonb7xYhvSifAJ-QxyJTyfs6R3kq8qKbfBSk5X65f4EJtqm-bautQ5UcMWqMvaKeiaEhtG3rkwHTsbG-Ae6dZibdkfe6MxGtMxXU6FLGkTDMWQz7etDnC-iUPjc:1qNgBK:X488KFRaG4KcbZjMPfp85QjmmdrMcbZ6GnntEwopnfg', '2023-08-06 20:59:58.584400'),
('f5i1t4fbcz5ucz3yav09of4h14e042sa', 'eyJuYW1hIjoiQWRtaW5pc3RyYXRvciIsImxhc3QiOiIiLCJlbWFpbCI6Im11emF5eWluLnJwbEBnbWFpbC5jb20iLCJsb2dnZWRfaW4iOnRydWV9:1qajC4:z0vi7fNuuOfsnAIZivROOZCktZcj8EHUcrCB2_bsbkw', '2023-09-11 20:50:40.037352'),
('i4q7r9rhb16ysw7nkdv45pucgwgxhqm7', 'eyJuYW1hIjoiQWRtaW5pc3RyYXRvciIsImxhc3QiOiIiLCJlbWFpbCI6Im11emF5eWluLnJwbEBnbWFpbC5jb20iLCJsb2dnZWRfaW4iOnRydWV9:1qa5On:SUu_SEV5n127pWpCgi4c-EJ7xqwZhx6XFTHonG7gpWI', '2023-09-10 02:21:09.786469'),
('ie7xodttgg9c8xbvc7svemlj9tswtqng', '.eJxVjDsOwyAQBe9CHSGDMWCX6XMGtLC7thMLJH-qKHcPllwk7Zt58xYBjn0Kx0ZrmFEMQonb7xYhvSifAJ-QxyJTyfs6R3kq8qKbfBSk5X65f4EJtqm-bautQ5UcMWqMvaKeiaEhtG3rkwHTsbG-Ae6dZibdkfe6MxGtMxXU6FLGkTDMWQz7etDnC-iUPjc:1qNgDV:FRfTkagSmPlSlh7JIkkJa_Wv3HjcAmPfudDkp0739F4', '2023-08-06 21:02:13.745840'),
('le2mntpmgmar052bpnk2ayzt4r1zdorp', 'eyJuYW1hIjoiQWRtaW5pc3RyYXRvciIsImxhc3QiOiIiLCJlbWFpbCI6Im11emF5eWluLnJwbEBnbWFpbC5jb20iLCJsb2dnZWRfaW4iOnRydWV9:1qbLru:Zf1O-wDQY3sM8_Tne0PDO4NGfE3PmrXEkXpOuqudyIs', '2023-09-13 14:08:26.015555'),
('lg4wdahudw56e8kvrwp9k1rpdeslsxv5', 'eyJuYW1hIjoiQWRtaW5pc3RyYXRvciIsIm51cHRrIjoiMCIsImxvZ2dlZF9pbiI6dHJ1ZX0:1qbqbP:88M6_1Q3KrfLJ3ke8ha1GTRZ0h9jEmZz6bbgsE6l0Hk', '2023-09-14 22:57:27.222368'),
('m7za4sc2xupoii0wkbzcu73ll79mxi1y', '.eJxVjDsOwyAQBe9CHSGDMWCX6XMGtLC7thMLJH-qKHcPllwk7Zt58xYBjn0Kx0ZrmFEMQonb7xYhvSifAJ-QxyJTyfs6R3kq8qKbfBSk5X65f4EJtqm-bautQ5UcMWqMvaKeiaEhtG3rkwHTsbG-Ae6dZibdkfe6MxGtMxXU6FLGkTDMWQz7etDnC-iUPjc:1qZ021:1jqOY5RkDJmLF0vO3SYfiv4BYNlF9DZrdQjZuBgCBf0', '2023-09-07 02:25:09.662924'),
('qua7tsyb4y8rcrpq6w158rsijha8vudv', '.eJxVjDsOwjAQBe_iGlmx418o6XMGa-3dxQFkS_lUiLuTSCmgfTPz3iLCtpa4LTTHCcVVKHH53RLkJ9UD4APqvcnc6jpPSR6KPOkix4b0up3u30GBpey167XzqLInRo1pUDQwMXSEru9DNmAsGxc64MFrZtKWQtDWJHTe7EB8vvxaOCU:1qJPcS:uyUeCMyFwJRgwrPuvZUphLQ0AIuynNVCgXXYOP37u84', '2023-07-26 02:30:20.305903'),
('qxqt9ubl62ejuh23d7p12pxyugug6ff8', '.eJxVjDsOwyAQBe9CHSGDMWCX6XMGtLC7thMLJH-qKHcPllwk7Zt58xYBjn0Kx0ZrmFEMQonb7xYhvSifAJ-QxyJTyfs6R3kq8qKbfBSk5X65f4EJtqm-bautQ5UcMWqMvaKeiaEhtG3rkwHTsbG-Ae6dZibdkfe6MxGtMxXU6FLGkTDMWQz7etDnC-iUPjc:1qUTXD:wx0zmu2O9GtRw8DpAgnbfMaclXbkidTJJZOmqkDoA9U', '2023-08-25 14:54:39.783515'),
('v180lq56qmq8lajiw09yp1dlpsgp5blo', '.eJxVjDsOwyAQBe9CHSGDMWCX6XMGtLC7thMLJH-qKHcPllwk7Zt58xYBjn0Kx0ZrmFEMQonb7xYhvSifAJ-QxyJTyfs6R3kq8qKbfBSk5X65f4EJtqm-bautQ5UcMWqMvaKeiaEhtG3rkwHTsbG-Ae6dZibdkfe6MxGtMxXU6FLGkTDMWQz7etDnC-iUPjc:1qNgC8:H0LGH1lrlGS10JFPVMH5azCIAJ1Slt5fKeYiyQHZvqc', '2023-08-06 21:00:48.599626');

-- --------------------------------------------------------

--
-- Table structure for table `siswa_guru`
--

CREATE TABLE `siswa_guru` (
  `id_guru` int(11) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `nuptk` varchar(100) NOT NULL,
  `nomer_hp` varchar(13) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa_guru`
--

INSERT INTO `siswa_guru` (`id_guru`, `nama_lengkap`, `tanggal_lahir`, `nuptk`, `nomer_hp`, `username`, `password`) VALUES
(2, 'Administrator', '1994-09-01', '0', '0', 'admin', 'admin'),
(3, 'AHMAD MUZAYYIN', '2019-11-29', '10101010', '082332575257', 'muzayyin', 'muzayyin');

-- --------------------------------------------------------

--
-- Table structure for table `siswa_pelanggaran`
--

CREATE TABLE `siswa_pelanggaran` (
  `id_pelanggaran` int(11) NOT NULL,
  `nama_pelanggaran` varchar(255) NOT NULL,
  `kategori` enum('ringan','sedang','berat') NOT NULL,
  `point_pelanggaran` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa_pelanggaran`
--

INSERT INTO `siswa_pelanggaran` (`id_pelanggaran`, `nama_pelanggaran`, `kategori`, `point_pelanggaran`) VALUES
(3, 'berolahraga didalam kelas', 'sedang', 5);

-- --------------------------------------------------------

--
-- Table structure for table `siswa_siswa`
--

CREATE TABLE `siswa_siswa` (
  `id_siswa` bigint(20) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(1) NOT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `lembaga` varchar(100) NOT NULL,
  `nomor_induk` varchar(20) NOT NULL,
  `jurusan` varchar(100) NOT NULL,
  `kelas` varchar(100) NOT NULL,
  `rombel` varchar(10) NOT NULL,
  `qr_code` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa_siswa`
--

INSERT INTO `siswa_siswa` (`id_siswa`, `nama_lengkap`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `alamat`, `lembaga`, `nomor_induk`, `jurusan`, `kelas`, `rombel`, `qr_code`) VALUES
(1, 'Moh. Daniel Khoirul Ikhwan', 'bondowoso', '2005-08-17', 'L', 'Jl.Tenggarang No.6, Desa Tenggarang, Tenggarang - Bondowoso', 'SMKNJ', '2397984.065', 'Rekayasa Perangkat Lunak', 'XII', '', 'qr_code_2397984.065.png');

-- --------------------------------------------------------

--
-- Table structure for table `siswa_siswa1`
--

CREATE TABLE `siswa_siswa1` (
  `id_siswa` bigint(20) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(1) NOT NULL,
  `lembaga` varchar(100) NOT NULL,
  `nomor_induk` varchar(20) NOT NULL,
  `jurusan` varchar(100) NOT NULL,
  `kelas` varchar(100) NOT NULL,
  `rombel` varchar(10) NOT NULL,
  `qr_code` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa_siswa1`
--

INSERT INTO `siswa_siswa1` (`id_siswa`, `nama_lengkap`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `lembaga`, `nomor_induk`, `jurusan`, `kelas`, `rombel`, `qr_code`) VALUES
(17, 'Moh. Daniel Khoirul Ikhwan', 'Bondowoso', '2005-08-17', 'L', 'SMKNJ', '2397984.065', 'Rekayasa Perangkat Lunak', 'XII', '1', ''),
(19, 'M. Muhajir', 'Probolinggo', '2005-02-25', 'L', 'SMKNJ', '2394981.065', 'Rekayasa Perangkat Lunak', 'XII', '1', ''),
(20, 'Abdus Salam', 'Probolinggo', '2006-12-15', 'L', 'SMKNJ', '2437/532.066', 'Teknik Komputer Jaringan', 'XI', '1', ''),
(21, 'Gibran Azali', 'Badung', '2007-01-14', 'L', 'SMKNJ', '2513973.067', 'Multimedia', 'XI', '1', ''),
(22, 'Rifqi Taufik Afifi', 'Probolinggo', '2008-03-26', 'L', 'SMKNJ', '2320024.007', 'Rekaya Perangkat Lunak', 'X', '1', ''),
(23, 'Hakam Ghoiniyi', 'Probolinggo', '2006-11-08', 'L', 'SMKNJ', '2500/090.007', 'Teknik Pembangkit Tenaga Listrik', 'XI', '1', ''),
(24, 'Safira Balqiz', 'Teminabuan', '2005-11-09', 'P', 'SMKNJ', '2494030.122', 'Tata Busana', 'XII', '1', ''),
(25, 'Maryam Rizqita Lesmana', 'Probolinggo', '2006-03-06', 'P', 'SMKNJ', '2486019.107', 'APHPi', 'XII', '1', ''),
(26, 'Fauzi Rahmat Grahadi', 'Bondowoso', '2007-04-26', 'L', 'SMKNJ', '2402989.065', 'Multimeda', 'X', '1', 'media\\siswa\\qr_code_2402989.065.png'),
(27, 'rizal', 'Probolinggo', '2023-08-20', 'L', 'SMKNJ', '12345', 'RPL', 'X', '1', 'media\\siswa\\qr_code_12345.png');

-- --------------------------------------------------------

--
-- Table structure for table `siswa_siswapelanggaran`
--

CREATE TABLE `siswa_siswapelanggaran` (
  `id_pelanggaran` bigint(20) NOT NULL,
  `pelanggaran_id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `tanggal_pelanggaran` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa_siswapelanggaran`
--

INSERT INTO `siswa_siswapelanggaran` (`id_pelanggaran`, `pelanggaran_id`, `siswa_id`, `tanggal_pelanggaran`) VALUES
(1, 3, 1, '2023-08-28 11:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `siswa_tindakan`
--

CREATE TABLE `siswa_tindakan` (
  `id_tindakan` bigint(20) NOT NULL,
  `range_point` int(11) NOT NULL,
  `tindakan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa_tindakan`
--

INSERT INTO `siswa_tindakan` (`id_tindakan`, `range_point`, `tindakan`) VALUES
(9, 100, 'pemanggilan orang tua, tidak naik kelas, dinonaktifkan dari lembaga'),
(10, 90, 'pemanggilan orang tua, mengisi surat pernyataan'),
(11, 80, 'mengisi surat pernyataan'),
(12, 75, 'pemanggilan peserta didik yang bersangkutan, pembinaan BK'),
(13, 50, 'pembinaan wali kelas dan BK'),
(14, 35, 'pembinaan wali kelas, sangsi sesuai pelanggaran'),
(15, 20, 'pembinaan BK'),
(16, 5, 'sanksi sesuai pelanggaran'),
(17, 10, 'sanksi sesuai pelanggaran');

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
-- Indexes for table `siswa_guru`
--
ALTER TABLE `siswa_guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `siswa_pelanggaran`
--
ALTER TABLE `siswa_pelanggaran`
  ADD PRIMARY KEY (`id_pelanggaran`);

--
-- Indexes for table `siswa_siswa`
--
ALTER TABLE `siswa_siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `siswa_siswa1`
--
ALTER TABLE `siswa_siswa1`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `siswa_siswapelanggaran`
--
ALTER TABLE `siswa_siswapelanggaran`
  ADD PRIMARY KEY (`id_pelanggaran`);

--
-- Indexes for table `siswa_tindakan`
--
ALTER TABLE `siswa_tindakan`
  ADD PRIMARY KEY (`id_tindakan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `siswa_guru`
--
ALTER TABLE `siswa_guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `siswa_pelanggaran`
--
ALTER TABLE `siswa_pelanggaran`
  MODIFY `id_pelanggaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `siswa_siswa`
--
ALTER TABLE `siswa_siswa`
  MODIFY `id_siswa` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `siswa_siswa1`
--
ALTER TABLE `siswa_siswa1`
  MODIFY `id_siswa` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `siswa_siswapelanggaran`
--
ALTER TABLE `siswa_siswapelanggaran`
  MODIFY `id_pelanggaran` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `siswa_tindakan`
--
ALTER TABLE `siswa_tindakan`
  MODIFY `id_tindakan` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

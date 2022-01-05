-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Jan 2022 pada 05.56
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_webdev_tools`
--
CREATE DATABASE IF NOT EXISTS `db_webdev_tools` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_webdev_tools`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_mtr_feedback`
--

CREATE TABLE `t_mtr_feedback` (
  `id_seq` bigint(11) NOT NULL,
  `feedback_code` int(11) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `feedback_description` text DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `updated_on` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `t_mtr_feedback`
--

INSERT INTO `t_mtr_feedback` (`id_seq`, `feedback_code`, `username`, `feedback_description`, `status`, `created_by`, `created_on`, `updated_by`, `updated_on`) VALUES
(7, NULL, 'alimin.nutech@gmail.com', '<p>fgsdgsdfgsdf sdfsdfhsdhs ghgfhgd</p>', 1, 'system', '2021-11-12', NULL, NULL),
(8, NULL, 'alimin.nutech@gmail.com', '', 1, 'system', '2021-11-12', NULL, NULL),
(9, NULL, 'alimin.nutech@gmail.com', '', 1, 'system', '2021-11-12', NULL, NULL),
(10, NULL, 'alimin.nutech@gmail.com', '', 1, 'system', '2021-11-12', NULL, NULL),
(11, NULL, 'alimin.nutech@gmail.com', '', 1, 'system', '2021-11-12', NULL, NULL),
(12, NULL, 'alimin.nutech@gmail.com', '', 1, 'system', '2021-11-12', NULL, NULL),
(13, NULL, 'alimin.nutech@gmail.com', '', 1, 'system', '2021-11-12', NULL, NULL),
(14, NULL, 'alimin.nutech@gmail.com', '', 1, 'system', '2021-11-12', NULL, NULL),
(15, NULL, 'alimin.nutech@gmail.com', '<p>kjsf dasfajsk fasdbfjasd</p>', 1, 'system', '2021-11-12', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_mtr_guest`
--

CREATE TABLE `t_mtr_guest` (
  `id_seq` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(20) NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `t_mtr_guest`
--

INSERT INTO `t_mtr_guest` (`id_seq`, `ip_address`, `created_by`, `created_at`, `updated_at`, `status`) VALUES
(1, '127.0.0.1', 'system', '2021-11-11', '0000-00-00', 1),
(2, '192.168.23.166', 'system', '2021-11-11', '0000-00-00', 1),
(3, '127.0.0.1', 'system', '2021-11-12', '0000-00-00', 1),
(4, '::1', 'system', '2021-11-12', '0000-00-00', 1),
(5, '::1', 'system', '2021-11-13', '0000-00-00', 1),
(6, '::1', 'system', '2021-11-15', '0000-00-00', 1),
(7, '::1', 'system', '2021-11-16', '0000-00-00', 1),
(8, '127.0.0.1', 'system', '2021-12-08', '0000-00-00', 1),
(9, '127.0.0.1', 'system', '2021-12-09', '0000-00-00', 1),
(10, '127.0.0.1', 'system', '2021-12-13', '0000-00-00', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_mtr_menu`
--

CREATE TABLE `t_mtr_menu` (
  `id_seq` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `menu_order` smallint(6) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `updated_on` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `t_mtr_menu`
--

INSERT INTO `t_mtr_menu` (`id_seq`, `parent_id`, `name`, `icon`, `slug`, `menu_order`, `status`, `created_by`, `created_on`, `updated_by`, `updated_on`) VALUES
(1, 0, 'Dashboard', 'fa fa-home', 'dashboard', 1, 1, NULL, '2019-12-12', 'superadmin', '2019-12-31'),
(2, 0, 'Configuration', 'fa fa-cog', '', 2, 1, NULL, '2019-12-13', 'superadmin', '2019-12-31'),
(3, 2, 'Menu', NULL, 'configuration/menu', 1, -5, NULL, '2019-12-13', 'superadmin', '2019-12-31'),
(4, 2, 'Users', '', 'configuration/user', 2, 1, 'superadmin', '2019-12-16', 'superadmin', '2019-12-31'),
(5, 2, 'User Group', '', 'configuration/user_group', 3, 1, 'superadmin', '2019-12-16', 'superadmin', '2019-12-31'),
(6, 2, 'User Privileges', '', 'configuration/privileges', 4, 1, 'superadmin', '2019-12-16', 'superadmin', '2019-12-31'),
(7, 2, 'Menu', '', 'configuration/menu', 5, 1, 'superadmin', '2019-12-16', NULL, NULL),
(8, 2, 'Menu Action', '', 'configuration/menu_action', 6, 1, 'superadmin', '2019-12-16', NULL, NULL),
(9, 0, 'Base Page', 'fa fa-file', 'base_page', 3, 1, 'superadmin', '2019-12-18', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_mtr_menu_action`
--

CREATE TABLE `t_mtr_menu_action` (
  `id_seq` bigint(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `updated_on` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `t_mtr_menu_action`
--

INSERT INTO `t_mtr_menu_action` (`id_seq`, `name`, `status`, `created_by`, `created_on`, `updated_by`, `updated_on`) VALUES
(1, 'view', 1, '1', '2018-12-10', NULL, NULL),
(2, 'add', 1, '1', '2018-12-10', NULL, NULL),
(3, 'edit', 1, '1', '2018-12-10', NULL, NULL),
(4, 'delete', 1, '1', '2018-12-10', NULL, NULL),
(5, 'change_password', 1, '1', '2018-12-10', NULL, NULL),
(6, 'import', 1, '1', '2018-12-10', NULL, NULL),
(7, 'detail', 1, '1', '2018-12-10', NULL, NULL),
(8, 'force_exit', 1, '1', '2018-12-10', '1', '2018-12-19'),
(9, 'blacklist', 1, '1', '2018-12-10', NULL, NULL),
(10, 'recommit', 1, '1', '2018-12-10', NULL, NULL),
(11, 'triaalll', -5, '1', '2018-12-26', '1', '2018-12-26'),
(12, 'status', 1, 'superadmin', '2019-09-23', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_mtr_menu_detail`
--

CREATE TABLE `t_mtr_menu_detail` (
  `id_seq` int(11) NOT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `action_id` smallint(6) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `updated_on` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `t_mtr_menu_detail`
--

INSERT INTO `t_mtr_menu_detail` (`id_seq`, `menu_id`, `action_id`, `status`, `created_by`, `created_on`, `updated_by`, `updated_on`) VALUES
(1, 1, 1, 1, NULL, '2019-12-13', NULL, NULL),
(2, 1, 1, 1, NULL, '2019-12-13', NULL, NULL),
(3, 3, 1, 1, NULL, '2019-12-13', NULL, NULL),
(4, 3, 2, 1, NULL, '2019-12-13', NULL, NULL),
(5, 3, 3, 1, NULL, '2019-12-13', NULL, NULL),
(6, 3, 4, 1, NULL, '2019-12-13', NULL, NULL),
(7, 4, 1, 1, 'superadmin', '2019-12-16', NULL, NULL),
(8, 4, 2, 1, 'superadmin', '2019-12-16', NULL, NULL),
(9, 4, 3, 1, 'superadmin', '2019-12-16', NULL, NULL),
(10, 4, 4, 1, 'superadmin', '2019-12-16', NULL, NULL),
(11, 4, 5, 1, 'superadmin', '2019-12-16', NULL, NULL),
(12, 5, 1, 1, 'superadmin', '2019-12-16', NULL, NULL),
(13, 5, 2, 1, 'superadmin', '2019-12-16', NULL, NULL),
(14, 5, 3, 1, 'superadmin', '2019-12-16', NULL, NULL),
(15, 5, 4, 1, 'superadmin', '2019-12-16', NULL, NULL),
(16, 6, 1, 1, 'superadmin', '2019-12-16', NULL, NULL),
(17, 6, 2, 1, 'superadmin', '2019-12-16', NULL, NULL),
(18, 6, 3, 1, 'superadmin', '2019-12-16', NULL, NULL),
(19, 6, 4, 1, 'superadmin', '2019-12-16', NULL, NULL),
(20, 7, 1, 1, 'superadmin', '2019-12-16', NULL, NULL),
(21, 7, 2, 1, 'superadmin', '2019-12-16', NULL, NULL),
(22, 7, 3, 1, 'superadmin', '2019-12-16', NULL, NULL),
(23, 7, 4, 1, 'superadmin', '2019-12-16', NULL, NULL),
(24, 8, 1, 1, 'superadmin', '2019-12-16', NULL, NULL),
(25, 8, 2, 1, 'superadmin', '2019-12-16', NULL, NULL),
(26, 8, 3, 1, 'superadmin', '2019-12-16', NULL, NULL),
(27, 8, 4, 1, 'superadmin', '2019-12-16', NULL, NULL),
(28, 9, 1, 1, 'superadmin', '2019-12-18', NULL, NULL),
(29, 9, 2, 1, 'superadmin', '2019-12-18', NULL, NULL),
(30, 9, 3, 1, 'superadmin', '2019-12-18', NULL, NULL),
(31, 9, 4, 1, 'superadmin', '2019-12-18', NULL, NULL),
(32, 2, 1, 1, 'superadmin', '2019-12-30', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_mtr_privilege`
--

CREATE TABLE `t_mtr_privilege` (
  `id_seq` bigint(20) UNSIGNED NOT NULL,
  `user_group_id` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `menu_detail_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `updated_on` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `t_mtr_privilege`
--

INSERT INTO `t_mtr_privilege` (`id_seq`, `user_group_id`, `menu_id`, `menu_detail_id`, `status`, `created_by`, `created_on`, `updated_by`, `updated_on`) VALUES
(1, 1, 1, 1, 1, NULL, '2019-12-13', NULL, NULL),
(2, 1, 2, 2, 1, NULL, '2019-12-13', NULL, NULL),
(3, 1, 3, 5, 1, NULL, '2019-12-13', NULL, NULL),
(4, 1, 6, 1, 1, NULL, '2019-12-16', NULL, NULL),
(5, 1, 4, 7, 1, 'superadmin', '2019-12-17', NULL, NULL),
(6, 1, 4, 8, 1, 'superadmin', '2019-12-17', NULL, NULL),
(7, 1, 4, 9, 1, 'superadmin', '2019-12-17', NULL, NULL),
(8, 1, 4, 10, 1, 'superadmin', '2019-12-17', NULL, NULL),
(9, 1, 4, 11, 1, 'superadmin', '2019-12-17', NULL, NULL),
(10, 1, 5, 12, 1, 'superadmin', '2019-12-17', NULL, NULL),
(11, 1, 5, 13, 1, 'superadmin', '2019-12-17', NULL, NULL),
(12, 1, 5, 14, 1, 'superadmin', '2019-12-17', NULL, NULL),
(13, 1, 5, 15, 1, 'superadmin', '2019-12-17', NULL, NULL),
(14, 1, 6, 16, 1, 'superadmin', '2019-12-17', NULL, NULL),
(15, 1, 6, 17, 1, 'superadmin', '2019-12-17', NULL, NULL),
(16, 1, 6, 18, 1, 'superadmin', '2019-12-17', NULL, NULL),
(17, 1, 6, 19, 1, 'superadmin', '2019-12-17', NULL, NULL),
(18, 1, 7, 20, 1, 'superadmin', '2019-12-17', NULL, NULL),
(19, 1, 7, 21, 1, 'superadmin', '2019-12-17', NULL, NULL),
(20, 1, 7, 22, 1, 'superadmin', '2019-12-17', NULL, NULL),
(21, 1, 7, 23, 1, 'superadmin', '2019-12-17', NULL, NULL),
(22, 1, 8, 24, 1, 'superadmin', '2019-12-17', NULL, NULL),
(23, 1, 8, 25, 1, 'superadmin', '2019-12-17', NULL, NULL),
(24, 1, 8, 26, 1, 'superadmin', '2019-12-17', NULL, NULL),
(25, 1, 8, 27, 1, 'superadmin', '2019-12-17', NULL, NULL),
(26, 1, 9, 28, -5, 'superadmin', '2019-12-19', 'superadmin', '2019-12-31'),
(27, 1, 9, 29, -5, 'superadmin', '2019-12-19', 'superadmin', '2019-12-31'),
(28, 1, 9, 30, -5, 'superadmin', '2019-12-19', 'superadmin', '2019-12-31'),
(29, 1, 9, 31, -5, 'superadmin', '2019-12-19', 'superadmin', '2019-12-31'),
(30, 1, 3, 3, -5, NULL, '2019-12-13', 'superadmin', '2019-12-31'),
(31, 1, 6, 3, -5, NULL, '2019-12-16', 'superadmin', '2019-12-31'),
(32, 1, 3, 4, -5, NULL, '2019-12-13', 'superadmin', '2019-12-31'),
(33, 1, 3, 6, -5, NULL, '2019-12-13', 'superadmin', '2019-12-31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_mtr_user`
--

CREATE TABLE `t_mtr_user` (
  `id_seq` int(11) NOT NULL,
  `user_group_id` int(11) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `updated_on` date DEFAULT NULL,
  `user_code` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `t_mtr_user`
--

INSERT INTO `t_mtr_user` (`id_seq`, `user_group_id`, `username`, `password`, `email`, `first_name`, `last_name`, `status`, `created_by`, `created_on`, `updated_by`, `updated_on`, `user_code`) VALUES
(1, 1, 'superadmin', '$2a$12$MtczIF7sAoy0ssuNhryoOe6BCS7wGsjPcSNXtdtHl3NjeHDTzPOQu', 'alimin.nutech@gmail.com', 'Ali', 'min', 1, NULL, '2019-12-12', NULL, NULL, NULL),
(2, 1, 'alimin', '$2a$12$pRcIOnuHM91.qwBuXB7uOezzq5N3WGjCwrw9ee9kHFcpUOLhf2e5u', 'alimin1313@gmail.com', 'ali', 'min', 1, 'superadmin', '2019-12-18', NULL, NULL, '3LVXZD7VLT'),
(3, 1, 'ojan', '$2a$12$qHs43kYBV/96hKchtUw7bOA4rOxZrtTw5MeTnyjjn4QPZkCkvbbaa', 'alimin1313@gmail.com', 'o', 'jan', 1, 'superadmin', '2019-12-18', NULL, NULL, 'GUXP19Q0QS'),
(4, 2, 'ojan333', '$2a$12$JSZNKNrQQiXR48KHis73/uDdSQRRp1oXDvYglXfi65kfbOLg7/Xu.', '123@gmail.com', 'o', 'jan', 1, 'superadmin', '2019-12-31', NULL, NULL, 'YKRZAZW6ZH'),
(5, 3, 'fadil', '$2a$12$6BZm27WFvNiTtMGtBzzuMu70We45g36SHENoDQ2eDvmi.cIBAZI/m', 'alimin1313@gmail.com', '11', '111', 1, 'superadmin', '2019-12-31', NULL, NULL, 'SN4B7EA6IU'),
(6, 3, 'alimin99', '756ea110eea2a923b1027878ae9b6ed36d8076632c7f4e264c26487492730b2dff1059b8b408d8f89faba5f65371505d8c502119326951232e2fc67bc9a11d9aYGxdG0PztPn8KZZEcRFPq5bw/o9Mvw==', 'alimin1313@gmail.com', 'afas', 'safas', 1, 'superadmin', '2019-12-31', 'superadmin', '2019-12-31', 'KBKZLFQ9GR'),
(7, NULL, 'john', '6fab0c7f620ff59757706239e3115e76eaaf58b199b57c88d39f0df4451ef765b1847a514cd2d11ee23f73eff17be8d383fa888fcf083ca8e6730c72ce174d2dnyxP3aAWBqC2tMhMrL+FfQPMHKM=', 'john@gmail.com', 'John', 'Garcia', 1, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_mtr_user_frontend`
--

CREATE TABLE `t_mtr_user_frontend` (
  `id_seq` int(11) NOT NULL,
  `user_frontend_code` varchar(20) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `updated_on` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `t_mtr_user_frontend`
--

INSERT INTO `t_mtr_user_frontend` (`id_seq`, `user_frontend_code`, `username`, `password`, `status`, `created_by`, `created_on`, `updated_by`, `updated_on`) VALUES
(1, 'UF-000000001', 'alimin1313@gmail.com', '$2a$12$Dw3fnoUL/v3k2lusUEpVuO0z7eDVxYjQdqdhU1uJ35lOjk/gIhHPq', 1, 'system', '2021-11-12', NULL, NULL),
(2, 'UF-000000002', 'alimin.nutech@gmail.com', '$2a$12$YQSgmdNYT81wOWQndnWxxOXrusURZfYotApu0U.gEvEAdCGYR.hLy', 1, 'system', '2021-11-12', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_mtr_user_group`
--

CREATE TABLE `t_mtr_user_group` (
  `id_seq` int(11) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `updated_on` date DEFAULT NULL,
  `group_code` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `t_mtr_user_group`
--

INSERT INTO `t_mtr_user_group` (`id_seq`, `group_name`, `status`, `created_by`, `created_on`, `updated_by`, `updated_on`, `group_code`) VALUES
(1, 'superadmin', 1, '', '2019-12-12', NULL, NULL, NULL),
(2, 'group 1', 1, '1', '2019-12-30', NULL, NULL, 'GP1001'),
(3, 'group 5511', 1, '1', '2019-12-30', '1', '2019-12-31', '23'),
(4, 'sgsdf', -5, '1', '2019-12-30', '1', '2019-12-31', 'SFGS');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `t_mtr_feedback`
--
ALTER TABLE `t_mtr_feedback`
  ADD PRIMARY KEY (`id_seq`);

--
-- Indeks untuk tabel `t_mtr_guest`
--
ALTER TABLE `t_mtr_guest`
  ADD UNIQUE KEY `id_seq` (`id_seq`);

--
-- Indeks untuk tabel `t_mtr_menu`
--
ALTER TABLE `t_mtr_menu`
  ADD PRIMARY KEY (`id_seq`);

--
-- Indeks untuk tabel `t_mtr_menu_action`
--
ALTER TABLE `t_mtr_menu_action`
  ADD PRIMARY KEY (`id_seq`);

--
-- Indeks untuk tabel `t_mtr_menu_detail`
--
ALTER TABLE `t_mtr_menu_detail`
  ADD PRIMARY KEY (`id_seq`);

--
-- Indeks untuk tabel `t_mtr_privilege`
--
ALTER TABLE `t_mtr_privilege`
  ADD PRIMARY KEY (`id_seq`),
  ADD UNIQUE KEY `id_seq` (`id_seq`);

--
-- Indeks untuk tabel `t_mtr_user`
--
ALTER TABLE `t_mtr_user`
  ADD PRIMARY KEY (`id_seq`);

--
-- Indeks untuk tabel `t_mtr_user_frontend`
--
ALTER TABLE `t_mtr_user_frontend`
  ADD PRIMARY KEY (`id_seq`);

--
-- Indeks untuk tabel `t_mtr_user_group`
--
ALTER TABLE `t_mtr_user_group`
  ADD PRIMARY KEY (`id_seq`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `t_mtr_feedback`
--
ALTER TABLE `t_mtr_feedback`
  MODIFY `id_seq` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `t_mtr_guest`
--
ALTER TABLE `t_mtr_guest`
  MODIFY `id_seq` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `t_mtr_menu`
--
ALTER TABLE `t_mtr_menu`
  MODIFY `id_seq` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `t_mtr_menu_action`
--
ALTER TABLE `t_mtr_menu_action`
  MODIFY `id_seq` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `t_mtr_menu_detail`
--
ALTER TABLE `t_mtr_menu_detail`
  MODIFY `id_seq` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `t_mtr_privilege`
--
ALTER TABLE `t_mtr_privilege`
  MODIFY `id_seq` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `t_mtr_user`
--
ALTER TABLE `t_mtr_user`
  MODIFY `id_seq` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `t_mtr_user_frontend`
--
ALTER TABLE `t_mtr_user_frontend`
  MODIFY `id_seq` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `t_mtr_user_group`
--
ALTER TABLE `t_mtr_user_group`
  MODIFY `id_seq` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data untuk tabel `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"db_webdev_tools\",\"table\":\"t_mtr_user\"},{\"db\":\"db_webdev_tools\",\"table\":\"t_mtr_guest\"},{\"db\":\"db_webdev_tools\",\"table\":\"t_mtr_user_frontend\"}]');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data untuk tabel `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-01-05 04:56:12', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"id\"}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indeks untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indeks untuk tabel `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indeks untuk tabel `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indeks untuk tabel `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indeks untuk tabel `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indeks untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indeks untuk tabel `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indeks untuk tabel `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indeks untuk tabel `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indeks untuk tabel `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

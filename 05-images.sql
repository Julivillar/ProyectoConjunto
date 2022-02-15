-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-02-2022 a las 15:59:17
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyectoconjunto`
--
--
-- Volcado de datos para la tabla `images`
--

INSERT INTO `images` (`id`, `product_id`, `path`, `name`, `default`, `created_at`, `updated_at`) VALUES
(2, 1, 'OFb74mWzksIwVycvy3lx4CMSoHp5Vjzxd07AwVkK.jpg', 'Sword Coast Adventurers guide', 0, '2022-02-15 13:42:51', '2022-02-15 13:42:51'),
(3, 1, '38rQoZR7VIsOYtiQiXE1vGBVx9yrqhOYrHRMutEu.jpg', 'Sword Coast Adventurers guide', 0, '2022-02-15 13:42:51', '2022-02-15 13:42:51'),
(4, 2, '55oGCXpz9ZuFunm67UAM3AqLCkXkLpu0AjAf3FfD.jpg', 'Volos Guide To Monsters', 0, '2022-02-15 13:43:05', '2022-02-15 13:43:05'),
(5, 2, 'bE9Dp4WoOJtDsT3YLHQp3MsNynUk62lsTmYwgElI.jpg', 'Volos Guide To Monsters', 0, '2022-02-15 13:43:05', '2022-02-15 13:43:05'),
(6, 3, '5otQbsb17BnG67kTWRomgfkUpSa2dxRXR7eNrU24.jpg', 'Out of the Abyss', 0, '2022-02-15 13:43:21', '2022-02-15 13:43:21'),
(7, 3, 'qKniGwxKt3yqTaXPahFBSdjsYQHHfV1UURV7Fc5T.jpg', 'Out of the Abyss', 0, '2022-02-15 13:43:21', '2022-02-15 13:43:21'),
(8, 4, '8GZEaku0lGFuxtdWOpecTNzLxZBymY98bjsEwc58.jpg', 'Curse of Strahd', 0, '2022-02-15 13:43:38', '2022-02-15 13:43:38'),
(9, 4, 'Iwx7I1WjIA2sSqf6B91fkXcctmGpcB8eEqHDsCM4.jpg', 'Curse of Strahd', 0, '2022-02-15 13:43:38', '2022-02-15 13:43:38'),
(10, 5, '0JiP8eQGuym5gdm4gCHvjeBPHHdvYiCPuOOFh9rh.jpg', 'Princes of the Apocalypse', 0, '2022-02-15 13:44:28', '2022-02-15 13:44:28'),
(11, 5, 'KdqLJ3spymVlzzdACJMCClzZbwewCYuwtmSmClQ8.jpg', 'Princes of the Apocalypse', 0, '2022-02-15 13:44:28', '2022-02-15 13:44:28'),
(12, 6, '67HIPUsQFICzbsNBrWjkChXX7FE9LvNhgvKbCy44.jpg', 'Hoard of the Dragon Queen: Tyr', 0, '2022-02-15 13:44:45', '2022-02-15 13:44:45'),
(13, 6, 'AT1X5w0dNMB9b7Bp18lZfhlGoQs8POFRBZh2BCdv.jpg', 'Hoard of the Dragon Queen: Tyr', 0, '2022-02-15 13:44:45', '2022-02-15 13:44:45'),
(14, 7, 'vbNVncUPPfxlicYy9rRzOBD5O4GZNIqaKcZiQo70.jpg', 'Storm Kings Thunder', 0, '2022-02-15 13:44:59', '2022-02-15 13:44:59'),
(15, 7, 'tgLv05DCQoxcHyT1AnVKrAhHRKXSDd33txoZgIOz.jpg', 'Storm Kings Thunder', 0, '2022-02-15 13:44:59', '2022-02-15 13:44:59'),
(16, 8, 'Xvc9RHlDPImKJY3z6KiQCimVl3NdsUEErsC66VQh.jpg', 'Dungeons & Dragons Starter Set', 0, '2022-02-15 13:45:13', '2022-02-15 13:45:13'),
(17, 8, 'KOYb548EOn969rjT6OiHtpOFwzKjCtXDRJbTFlul.jpg', 'Dungeons & Dragons Starter Set', 0, '2022-02-15 13:45:13', '2022-02-15 13:45:13'),
(18, 9, 'wnrGSBWxU1FnRvthPQoWaR5oLoOpF6kG2IcOJpIy.jpg', 'Dungeons and Dragons: Explorad', 0, '2022-02-15 13:45:46', '2022-02-15 13:45:46'),
(19, 9, 'ri0wZEMvvxuDCjkrBf1v2xl2rIb36bMnUffMhvXp.jpg', 'Dungeons and Dragons: Explorad', 0, '2022-02-15 13:45:46', '2022-02-15 13:45:46'),
(20, 10, 'I1NgqC3n8G5b3m6jrYRoS1cahpVD5nzOG1EUN4ox.jpg', 'Dungeons and Dragons: Paladin', 0, '2022-02-15 13:46:29', '2022-02-15 13:46:29'),
(21, 10, 'iYtJMojPD4enpCvbReVK2g6NL02Nj8SupwxzkpfN.jpg', 'Dungeons and Dragons: Paladin', 0, '2022-02-15 13:46:29', '2022-02-15 13:46:29'),
(22, 11, '7b2YN1iPpjcvRPtRe97M8rEkWg9dC4bnu60xaciU.jpg', 'Dungeons and Dragons: Druida -', 0, '2022-02-15 13:46:49', '2022-02-15 13:46:49'),
(23, 11, 'Wn8bYJTwDXEWeEE5edNv4FF9GcukrOdsfwjffHo5.jpg', 'Dungeons and Dragons: Druida -', 0, '2022-02-15 13:46:49', '2022-02-15 13:46:49'),
(24, 12, 'oqLXwnAV2vxfhKaaGj8dGwwpSGAvanENoWVqlDBC.jpg', 'Dungeons and Dragons: Clerigo', 0, '2022-02-15 13:47:05', '2022-02-15 13:47:05'),
(25, 12, 'Gcs8Hz2X4pjxy1gpmAV8USG95xBU6LwHcHec9kll.jpg', 'Dungeons and Dragons: Clerigo', 0, '2022-02-15 13:47:05', '2022-02-15 13:47:05'),
(26, 13, 'N7CSZiX9tDc6nd9MXjtJcBtugCXqybRjXZ4YlPVI.jpg', 'Dungeons and Dragons: Bardo -', 0, '2022-02-15 13:49:15', '2022-02-15 13:49:15'),
(27, 13, 'GOSrelVyXClW5u5m2HbWV7oyvlwzLmXCQdpZKkci.jpg', 'Dungeons and Dragons: Bardo -', 0, '2022-02-15 13:49:15', '2022-02-15 13:49:15'),
(28, 14, '6EGBfI5ieCJpH395sFEjm40jOqBQSkz5rkSlWYSa.jpg', 'Dungeons and Dragons: Mago - C', 0, '2022-02-15 13:49:38', '2022-02-15 13:49:38'),
(29, 14, 'Y6wng9A8ukjwRjP8JZOaNFw8OqJmFMXA4GbOMepy.jpg', 'Dungeons and Dragons: Mago - C', 0, '2022-02-15 13:49:38', '2022-02-15 13:49:38'),
(30, 15, '3ITCnmXJn7VJw1c5zcUBXxCJcVQrKDTOD5rb7rp7.jpg', 'Dungeons and Dragons: Brujo -', 0, '2022-02-15 13:50:02', '2022-02-15 13:50:02'),
(31, 15, '9Ftq3fFTkbhkp3UvYRRnv6nLgR87PE4bb0yK68aA.jpg', 'Dungeons and Dragons: Brujo -', 0, '2022-02-15 13:50:02', '2022-02-15 13:50:02'),
(32, 16, 'dMsvfd2FW8nZBTxNmJVp8paKZ38fstRhg76ONB9h.jpg', 'Dungeons and Dragons: Cartas d', 0, '2022-02-15 13:50:16', '2022-02-15 13:50:16'),
(33, 16, 'SZdVVqwV1abijzuSl33jPNKrC90JTOY0pOBYVU7R.jpg', 'Dungeons and Dragons: Cartas d', 0, '2022-02-15 13:50:16', '2022-02-15 13:50:16'),
(34, 17, 'hXJokFktlulJ1d1PrqD4gRNrPR9rtgY41lSIo56N.jpg', 'Dungeons and Dragons: Cartas d', 0, '2022-02-15 13:50:30', '2022-02-15 13:50:30'),
(35, 17, 'MytbdTAMuF7hZHtinxnocVh7n2VgHYm6lZn4GBSN.jpg', 'Dungeons and Dragons: Cartas d', 0, '2022-02-15 13:50:30', '2022-02-15 13:50:30'),
(36, 18, 'uZe3fqkfuDIBSynFfgkyeh0LpZgzZrF9SglGfohU.jpg', 'Miniatura: Dragón Rojo gigante', 0, '2022-02-15 13:51:01', '2022-02-15 13:51:01'),
(37, 18, 'zTqlLVomerqOqGJkSFa7lcQ1HkRQigTKoHkNb4Ie.jpg', 'Miniatura: Dragón Rojo gigante', 0, '2022-02-15 13:51:01', '2022-02-15 13:51:01'),
(38, 18, 'YSEaGsRJBgmZ1j5hTX7wF9UmHJJJVmkMsBCwDlmp.jpg', 'Miniatura: Dragón Rojo gigante', 0, '2022-02-15 13:51:01', '2022-02-15 13:51:01'),
(39, 18, 'bcD4fiSRNYRvJF4R1JdvzkUKBV7wq2dYXg2hL6Rp.jpg', 'Miniatura: Dragón Rojo gigante', 0, '2022-02-15 13:51:01', '2022-02-15 13:51:01'),
(40, 19, 'Dp7l5hz7gk5zK3KwJnX1EnPiYwAhAzm8V0csBADY.jpg', 'Miniatura: Dragón Azul gigante', 0, '2022-02-15 13:51:27', '2022-02-15 13:51:27'),
(41, 19, 'jiLl3gUipLt2aHz6hA6ZZ7jxbJYCDKYyLpBKEpyc.jpg', 'Miniatura: Dragón Azul gigante', 0, '2022-02-15 13:51:27', '2022-02-15 13:51:27'),
(42, 20, 'K8DwjqSOqpB9JU0rENsQMrtT2LcBh22b3YyPnPY7.jpg', 'Miniatura: Dragón Verde gigant', 0, '2022-02-15 13:51:44', '2022-02-15 13:51:44'),
(43, 20, 'AogDQtl6bwbqx64QWljFkCLbBi02smCQovHhYPD8.jpg', 'Miniatura: Dragón Verde gigant', 0, '2022-02-15 13:51:44', '2022-02-15 13:51:44'),
(44, 21, 'OcR7CBTCMMmtUzw6YmJfxW7Ek2coqLAkb3mthOfc.jpg', 'Miniatura: Dragón Negro gigant', 0, '2022-02-15 13:52:45', '2022-02-15 13:52:45'),
(45, 21, 'O6fVGg4h4IfHbnLtDKtVoISVHmY5btU3NPPmpAdg.jpg', 'Miniatura: Dragón Negro gigant', 0, '2022-02-15 13:52:45', '2022-02-15 13:52:45'),
(46, 22, '2UB3qdiChQVLEFi8ENRQSoqezWRzqg36ywF29jRt.jpg', 'Miniatura: Dragón Metalico gig', 0, '2022-02-15 13:53:06', '2022-02-15 13:53:06'),
(47, 22, 'vfrNjKv0xbbpvP93F0UZxjb1FcmUtm7SROuZxiG1.jpg', 'Miniatura: Dragón Metalico gig', 0, '2022-02-15 13:53:06', '2022-02-15 13:53:06'),
(48, 23, 'ds7FCcpUVOCboXvX5UBxJAzDTHK9rqlP23AxhtQk.jpg', 'Devir - Catan, juego de mesa', 0, '2022-02-15 13:53:31', '2022-02-15 13:53:31'),
(49, 23, 'eX8zaP8rx5z8rfZEm1k1qAhZmBzYqzztlxwfZTLN.jpg', 'Devir - Catan, juego de mesa', 0, '2022-02-15 13:53:31', '2022-02-15 13:53:31'),
(50, 24, 'qP9tqYdeKpAbYY3IFgQ9HoQBjC9sx7yCAVgY2vmh.jpg', 'Hasbro Gaming Clasico Cluedo (', 0, '2022-02-15 13:56:04', '2022-02-15 13:56:04'),
(51, 24, 'y1JrBzAZhOCIPtaVRXEkXUwL4u0mei6cxQnCyFcO.jpg', 'Hasbro Gaming Clasico Cluedo (', 0, '2022-02-15 13:56:04', '2022-02-15 13:56:04'),
(52, 25, 'xNkYHWPl6k9zEWlxCumVvS0eIsMmjNcfgW4r0am1.jpg', 'Hasbro Gaming Trivial Pursuit', 0, '2022-02-15 13:56:38', '2022-02-15 13:56:38'),
(53, 25, 'Kp5CCiSJKLvItCGXhnlNrrpanupdIQazyUHw97H7.jpg', 'Hasbro Gaming Trivial Pursuit', 0, '2022-02-15 13:56:38', '2022-02-15 13:56:38'),
(54, 26, 'CTdf1BQVvv6Pmx7DBmwAfZw4PnIQ3LPo4qMRWP5L.jpg', 'Monopoly - Clásico', 0, '2022-02-15 13:56:52', '2022-02-15 13:56:52'),
(55, 26, 'WycYP2WS5Zr0K4pj5tV0XDn1ynUqfss7OOOzoVJU.jpg', 'Monopoly - Clásico', 0, '2022-02-15 13:56:52', '2022-02-15 13:56:52'),
(56, 27, 'VnRbYL2aouUeIjCfKG5JwddY8vKZ5MJA5AAi3gi3.jpg', 'Jenga!', 0, '2022-02-15 13:57:33', '2022-02-15 13:57:33'),
(57, 27, 'lJliTveTk8FBLOnB2Gt0zD9ZiSFFIxTiddOkzUO6.jpg', 'Jenga!', 0, '2022-02-15 13:57:33', '2022-02-15 13:57:33'),
(58, 29, 'l9d40spMxlXRJ1v4vjCg8PkXcbTEMp9LkGQOEGGq.jpg', 'Mattel Games - Pictionary', 0, '2022-02-15 13:58:11', '2022-02-15 13:58:11'),
(59, 29, 'ZiDyqffFlCmgZ9jNdjS2KsWG4NDQqnciJg0Bc1Zm.jpg', 'Mattel Games - Pictionary', 0, '2022-02-15 13:58:11', '2022-02-15 13:58:11'),
(60, 30, 'ljIbVK8P0PJ4yYlMYWFJz1wvv8lwF3LNKhkbraLw.jpg', 'Moncolis Dados Poliedricos 6 x', 0, '2022-02-15 13:58:25', '2022-02-15 13:58:25'),
(61, 30, 'EfujPGEn0OXErAsnHeiLoAgddxQrMuRIhv7JBkYK.jpg', 'Moncolis Dados Poliedricos 6 x', 0, '2022-02-15 13:58:25', '2022-02-15 13:58:25');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

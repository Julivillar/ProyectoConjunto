-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-02-2022 a las 11:51:33
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--


--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `nif`, `name`, `email`, `role`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, '123456', 'user1', 'user1@u', 'Client', NULL, '$2y$10$HADDQvEbDjY7WII17Hh..ex/JUZQY1jB4dxp.dIfEE/NYTiYyqnwO', NULL, NULL, NULL, NULL, NULL, '2022-02-15 09:47:06', '2022-02-15 09:47:06'),
(2, '12345', 'user2', 'user2@u', 'Client', NULL, '$2y$10$OK9RKvW63LgBGdkKT4ctIu8A9n1wb20VFqUlQGHfZfd2m63/sycD6', NULL, NULL, NULL, NULL, NULL, '2022-02-15 09:47:26', '2022-02-15 09:47:26'),
(3, '1234', 'user3', 'user3@u', 'Client', NULL, '$2y$10$CxCB.F57CA46C3jguu.Vu.RgtexzkBl1M6eXXpQLpQ3gpq8jk9khy', NULL, NULL, NULL, NULL, NULL, '2022-02-15 09:48:13', '2022-02-15 09:48:13'),
(4, '123', 'admin1', 'admin1@u', 'Admin', NULL, '$2y$10$y9UMfQALW6Ee0gbBA0D9muoxPj0nBcVpIlkp7.tHkORRXQFsvvyMu', NULL, NULL, NULL, NULL, NULL, '2022-02-15 09:48:38', '2022-02-15 09:48:38'),
(5, '1234567', 'admin2', 'admin2@u', 'Admin', NULL, '$2y$10$7xCZcs0CTelkOnA3gqR62OT56jShdKphRqqpx4BXncWyM4Oacfh5K', NULL, NULL, NULL, NULL, NULL, '2022-02-15 09:49:34', '2022-02-15 09:49:34'),
(6, '1231234', 'admin3', 'admin3@u', 'Admin', NULL, '$2y$10$98953mt3Y/tZvAe5R/SrkOpT4fM8IlAeEsAp4n6nyMGJ6ul3cfxt2', NULL, NULL, NULL, NULL, NULL, '2022-02-15 09:50:05', '2022-02-15 09:50:05');

--
-- Índices para tablas volcadas
--


COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

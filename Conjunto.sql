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
--
-- Volcado de datos para la tabla `posts`
--
INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Books', 'Aqui entran libros, manuales, aventuras e historias', '2022-01-12 09:49:52', '2022-01-12 09:49:52'),
(2, 'Games', 'Entran todos los juegos de mesa', '2022-01-12 09:49:52', '2022-01-12 09:49:52'),
(3, 'Complements', 'Aqui entra todo tipo de complemento, desde dados hasta cartas extra', '2022-01-12 09:49:52', '2022-01-12 09:49:52');

INSERT INTO `products` (`id`, `name`, `category_id`,`description`, `price`, `tax`, `discount`, `stock`, `created_at`, `updated_at`) VALUES
(1, 'Sword Coast Adventurers guide', 1, 'Get everything you need to adventure in the Forgotten Realms on the exciting Sword Coast, home to the cities of Baldurs Gate, Waterdeep, and Neverwinter.', 30, 2, 1, 20, '2022-02-02 13:40:03', '2022-02-02 13:56:03'),
(2, 'Volos Guide To Monsters', 1, 'This is NOT just another Monster Manual! Volos Guide to Monsters provides something exciting for players and Dungeon Masters everywhere.', 30, 2, 1, 20, '2022-02-02 13:40:03', '2022-02-02 13:56:03'),
(3, 'Out of the Abyss', 1, 'Dare to descend into the Underdark in this adventure for the worlds greatest roleplaying game', 30, 2, 1, 20, '2022-02-02 13:40:03', '2022-02-02 13:56:03'),
(4, 'Curse of Strahd', 1, 'Unravel the mysteries of Ravenloft in this dread adventure for the worlds greatest roleplaying game', 50, 2, 1, 5, '2022-02-02 13:40:03', '2022-02-02 13:56:03'),
(5, 'Princes of the Apocalypse', 1,'Abolish an Ancient Evil Threatening Devastation in this Adventure for the Worlds Greatest Roleplaying Game', 35, 2, 3, 23, '2022-02-02 13:40:03', '2022-02-02 13:56:03'),
(6, 'Hoard of the Dragon Queen: Tyranny of Dragons', 1,'Fight the War Against Draconic Oppression in this Adventure for the Worlds Greatest Roleplaying Game', 30, 2, 2, 15, '2022-02-02 13:40:03', '2022-02-02 13:56:03'),
(7, 'Storm Kings Thunder', 1,'Take a stand against the giants in this adventure for the worlds greatest roleplaying game', 40, 2, 3, 4, '2022-02-02 13:40:03', '2022-02-02 13:56:03'),
(8, 'Dungeons & Dragons Starter Set', 3,'Six Dice, Five Ready-To-Play D&d Characters with Character Sheets, a Rulebook, and One Adventure. Everything you need to start playing', 20, 2, 0, 2, '2022-02-02 13:40:03', '2022-02-02 13:56:03'),
(9, 'Dungeons and Dragons: Explorador - Cartas de Conjuros - Castellano', 3, 'Este mazo de cartas de conjuro es un valioso recurso para cualquier lanzador de conjuros. Puedes consultar el mazo para escoger los conjuros a aprender, y tras un largo descanso puedes apartar los hechizos que quieres preparar para ese día', 6, 2, 8, 2, '2022-02-02 13:40:03', '2022-02-02 13:56:03'),
(10, 'Dungeons and Dragons: Paladin - Cartas de Conjuros - Castellano', 3, 'Este mazo de cartas de conjuro es un valioso recurso para cualquier lanzador de conjuros. Puedes consultar el mazo para escoger los conjuros a aprender, y tras un largo descanso puedes apartar los hechizos que quieres preparar para ese día', 6, 2, 8, 5, '2022-02-02 13:40:03', '2022-02-02 13:56:03'),
(11, 'Dungeons and Dragons: Druida - Cartas de Conjuros - Castellano', 3, 'Este mazo de cartas de conjuro es un valioso recurso para cualquier lanzador de conjuros. Puedes consultar el mazo para escoger los conjuros a aprender, y tras un largo descanso puedes apartar los hechizos que quieres preparar para ese día', 6, 2, 8, 5, '2022-02-02 13:40:03', '2022-02-02 13:56:03'),
(12, 'Dungeons and Dragons: Clerigo - Cartas de Conjuros - Castellano', 3, 'Este mazo de cartas de conjuro es un valioso recurso para cualquier lanzador de conjuros. Puedes consultar el mazo para escoger los conjuros a aprender, y tras un largo descanso puedes apartar los hechizos que quieres preparar para ese día', 6, 2, 8, 3, '2022-02-02 13:40:03', '2022-02-02 13:56:03'),
(13, 'Dungeons and Dragons: Bardo - Cartas de Conjuros - Castellano', 3, 'Este mazo de cartas de conjuro es un valioso recurso para cualquier lanzador de conjuros. Puedes consultar el mazo para escoger los conjuros a aprender, y tras un largo descanso puedes apartar los hechizos que quieres preparar para ese día', 6, 2, 8, 5, '2022-02-02 13:40:03', '2022-02-02 13:56:03'),
(14, 'Dungeons and Dragons: Mago - Cartas de Conjuros - Castellano', 3, 'Este mazo de cartas de conjuro es un valioso recurso para cualquier lanzador de conjuros. Puedes consultar el mazo para escoger los conjuros a aprender, y tras un largo descanso puedes apartar los hechizos que quieres preparar para ese día', 6, 2, 8, 1, '2022-02-02 13:40:03', '2022-02-02 13:56:03'),
(15, 'Dungeons and Dragons: Brujo - Cartas de Conjuros - Castellano', 3, 'Este mazo de cartas de conjuro es un valioso recurso para cualquier lanzador de conjuros. Puedes consultar el mazo para escoger los conjuros a aprender, y tras un largo descanso puedes apartar los hechizos que quieres preparar para ese día', 6, 2, 8, 1, '2022-02-02 13:40:03', '2022-02-02 13:56:03'),
(16, 'Dungeons and Dragons: Cartas de Poderes Marciales y Razas - Castellano', 3, 'Todos los conjuros recibidos como atributos de las razas aasimar, alto elfo, drow, firbolg, genasi, gnomo de los bosques, tiefling y tritón', 6, 2, 8, 1, '2022-02-02 13:40:03', '2022-02-02 13:56:03'),
(17, 'Dungeons and Dragons: Cartas de Monstruos - Castellano', 3,'estas cartas son la herramienta perfecta para aquellos dungeon masters que quieran mantener ordenada y accesible su colección de criaturas', 6, 2, 8, 1, '2022-02-02 13:40:03', '2022-02-02 13:56:03'),
(18, 'Miniatura: Dragón Rojo gigantesco', 3,'Imprimado y listo para pintar', 40, 5, 2, 2, '2022-02-02 13:40:03', '2022-02-02 13:56:03'),
(19, 'Miniatura: Dragón Azul gigantesco', 3, 'Imprimado y listo para pintar', 40, 5, 2, 3, '2022-02-02 13:40:03', '2022-02-02 13:56:03'),
(20, 'Miniatura: Dragón Verde gigantesco', 3, 'Imprimado y listo para pintar',40, 5, 2, 4, '2022-02-02 13:40:03', '2022-02-02 13:56:03'),
(21, 'Miniatura: Dragón Negro gigantesco', 3, 'Imprimado y listo para pintar', 50, 5, 2, 2 , '2022-02-02 13:40:03', '2022-02-02 13:56:03'),
(22, 'Miniatura: Dragón Metalico gigantesco',3, 'Imprimado y listo para pintar', 50, 5, 2, 3, '2022-02-02 13:40:03', '2022-02-02 13:56:03'),
(23, 'Devir - Catan, juego de mesa', 2,'Sois los primeros colonos en llegar a la isla de Catan. Muy pronto empiezan a aparecer los primeros poblados y las primeras carreteras, mientras que los fértiles terrenos os aportan abundantes materias primas.', 38, 1, 1, 1, '2022-02-02 13:40:03', '2022-02-02 13:56:03'),
(24, 'Hasbro Gaming Clasico Cluedo (Versión Española)', 2,'CLUEDO, El gran juego de detectives', 24, 1, 2, 2, '2022-02-02 13:40:03', '2022-02-02 13:56:03'),
(25, 'Hasbro Gaming Trivial Pursuit (Versión Española)',  2, 'Esta edición de Trivial Pursuit recuerda la versión original de los años 80. Los jugadores tendrán que moverse por el tablero e intentar responder correctamente a preguntas de 6 categorías diferentes.', 32, 1, 2, 4, '2022-02-02 13:40:03', '2022-02-02 13:56:03'),
(26, 'Monopoly - Clásico', 2,'Para sentirse un sucio liberal', 26, 1, 2, 2, '2022-02-02 13:40:03', '2022-02-02 13:56:03'),
(27, 'Jenga!', 2,'El clásico juego de bloques de madera', 17, 1, 2, 1, '2022-02-02 13:40:03', '2022-02-02 13:56:03'),
(29, 'Mattel Games - Pictionary', 2, 'Risas y diversión para toda la familia', 28, 1, 2, 5, '2022-02-02 13:40:03', '2022-02-02 13:56:03'),
(30, 'Moncolis Dados Poliedricos 6 x 7 (42 Piezas)', 3,'Perfecto para D&D', 15, 1, 2, 20, '2022-02-02 13:40:03', '2022-02-02 13:56:03');


--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-01-12 09:49:52', '2022-01-13 09:49:52'),
(2, 1, '2022-01-13 09:49:52', '2022-01-13 09:49:52'),
(3, 1, '2022-01-14 09:49:52', '2022-01-14 09:49:52'),
(4, 2, '2022-01-12 09:49:52', '2022-01-12 09:49:52'),
(5, 2, '2022-01-13 09:49:52', '2022-01-13 09:49:52'),
(6, 2, '2022-01-14 09:49:52', '2022-01-14 09:49:52'),
(7, 3, '2022-01-12 09:49:52', '2022-01-13 09:49:52'),
(8, 3, '2022-01-13 09:49:52', '2022-01-13 09:49:52'),
(9, 3, '2022-01-14 09:49:52', '2022-01-14 09:49:52'),
(10, 4, '2022-01-12 09:49:52', '2022-01-13 09:49:52'),
(11, 4, '2022-01-13 09:49:52', '2022-01-13 09:49:52'),
(12, 4, '2022-01-14 09:49:52', '2022-01-14 09:49:52'),
(13, 5, '2022-01-14 09:49:52', '2022-01-14 09:49:52');

--
-- Volcado de datos para la tabla `order_lines`
--
INSERT INTO `order_lines` (`id`,`line_number`,`order_id`,`product_id`,`amount`,`price`,`discount`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 12, 12.00, 0.00, '2022-01-12 09:49:52', '2022-01-13 09:49:52'),
(2, 2, 1, 21, 5, 14.00, 0.00, '2022-01-12 09:49:52', '2022-01-13 09:49:52'),
(3, 3, 1, 11, 2, 14.00, 0.00, '2022-01-12 09:49:52', '2022-01-13 09:49:52'),
(4, 4, 1, 10, 1, 14.00, 0.00, '2022-01-12 09:49:52', '2022-01-13 09:49:52'),

(5, 1, 2, 1, 22, 14.00, 0.00, '2022-01-12 09:49:52', '2022-01-13 09:49:52'),
(6, 2, 2, 21, 3, 14.00, 0.00, '2022-01-12 09:49:52', '2022-01-13 09:49:52'),
(7, 3, 2, 11, 1, 14.00, 0.00, '2022-01-12 09:49:52', '2022-01-13 09:49:52'),
(8, 4, 2, 10, 2, 14.00, 0.00, '2022-01-12 09:49:52', '2022-01-13 09:49:52'),

(9, 1, 3, 27, 2, 14.00, 0.00, '2022-01-12 09:49:52', '2022-01-13 09:49:52'),
(10, 2, 3, 3, 3, 24.00, 0.00, '2022-01-12 09:49:52', '2022-01-13 09:49:52'),
(11, 3, 3, 14, 1, 14.00, 0.00, '2022-01-12 09:49:52', '2022-01-13 09:49:52'),
(12, 4, 3, 2, 2, 14.00, 0.00, '2022-01-12 09:49:52', '2022-01-13 09:49:52'),

(13, 1, 4, 1, 22, 14.00, 0.00, '2022-01-12 09:49:52', '2022-01-13 09:49:52'),
(14, 2, 4, 21, 3, 14.00, 0.00, '2022-01-12 09:49:52', '2022-01-13 09:49:52'),
(15, 3, 4, 11, 1, 14.00, 0.00, '2022-01-12 09:49:52', '2022-01-13 09:49:52'),
(16, 4, 4, 10, 2, 14.00, 0.00, '2022-01-12 09:49:52', '2022-01-13 09:49:52'),

(17, 1, 5, 1, 22, 14.00, 0.00, '2022-01-12 09:49:52', '2022-01-13 09:49:52'),
(18, 2, 5, 21, 3, 14.00, 0.00, '2022-01-12 09:49:52', '2022-01-13 09:49:52'),
(19, 3, 5, 11, 1, 14.00, 0.00, '2022-01-12 09:49:52', '2022-01-13 09:49:52'),
(20, 4, 5, 10, 2, 14.00, 0.00, '2022-01-12 09:49:52', '2022-01-13 09:49:52'),

(21, 1, 6, 1, 22, 14.00, 0.00, '2022-01-12 09:49:52', '2022-01-13 09:49:52'),
(22, 2, 6, 21, 3, 14.00, 0.00, '2022-01-12 09:49:52', '2022-01-13 09:49:52'),
(23, 3, 6, 11, 1, 14.00, 0.00, '2022-01-12 09:49:52', '2022-01-13 09:49:52'),
(24, 4, 6, 10, 2, 14.00, 0.00, '2022-01-12 09:49:52', '2022-01-13 09:49:52'),

(25, 1, 7, 1, 22, 14.00, 0.00, '2022-01-12 09:49:52', '2022-01-13 09:49:52'),
(26, 2, 7, 21, 3, 14.00, 0.00, '2022-01-12 09:49:52', '2022-01-13 09:49:52'),
(27, 3, 7, 11, 1, 14.00, 0.00, '2022-01-12 09:49:52', '2022-01-13 09:49:52'),
(28, 4, 7, 10, 2, 14.00, 0.00, '2022-01-12 09:49:52', '2022-01-13 09:49:52'),

(29, 1, 8, 1, 22, 14.00, 0.00, '2022-01-12 09:49:52', '2022-01-13 09:49:52'),
(30, 2, 8, 21, 3, 14.00, 0.00, '2022-01-12 09:49:52', '2022-01-13 09:49:52'),
(31, 3, 8, 11, 1, 14.00, 0.00, '2022-01-12 09:49:52', '2022-01-13 09:49:52'),
(32, 4, 8, 10, 2, 14.00, 0.00, '2022-01-12 09:49:52', '2022-01-13 09:49:52'),

(33, 1, 9, 1, 22, 14.00, 0.00, '2022-01-12 09:49:52', '2022-01-13 09:49:52'),
(34, 2, 9, 21, 3, 14.00, 0.00, '2022-01-12 09:49:52', '2022-01-13 09:49:52'),
(35, 3, 9, 11, 1, 14.00, 0.00, '2022-01-12 09:49:52', '2022-01-13 09:49:52'),
(36, 4, 9, 10, 2, 14.00, 0.00, '2022-01-12 09:49:52', '2022-01-13 09:49:52'),

(37, 1, 10, 1, 22, 14.00, 0.00, '2022-01-12 09:49:52', '2022-01-13 09:49:52'),
(38, 2, 10, 21, 3, 14.00, 0.00, '2022-01-12 09:49:52', '2022-01-13 09:49:52'),
(39, 3, 10, 11, 1, 14.00, 0.00, '2022-01-12 09:49:52', '2022-01-13 09:49:52'),
(40, 4, 10, 10, 2, 14.00, 0.00, '2022-01-12 09:49:52', '2022-01-13 09:49:52'),

(41, 1, 11, 1, 22, 14.00, 0.00, '2022-01-12 09:49:52', '2022-01-13 09:49:52'),
(42, 2, 11, 21, 3, 14.00, 0.00, '2022-01-12 09:49:52', '2022-01-13 09:49:52'),
(43, 3, 11, 11, 1, 14.00, 0.00, '2022-01-12 09:49:52', '2022-01-13 09:49:52'),
(44, 4, 11, 10, 2, 14.00, 0.00, '2022-01-12 09:49:52', '2022-01-13 09:49:52'),

(45, 1, 12, 1, 22, 14.00, 0.00, '2022-01-12 09:49:52', '2022-01-13 09:49:52'),
(46, 2, 12, 21, 3, 14.00, 0.00, '2022-01-12 09:49:52', '2022-01-13 09:49:52'),
(47, 3, 12, 11, 1, 14.00, 0.00, '2022-01-12 09:49:52', '2022-01-13 09:49:52'),
(48, 4, 12, 10, 2, 14.00, 0.00, '2022-01-12 09:49:52', '2022-01-13 09:49:52'),

(49, 1, 13, 1, 22, 14.00, 0.00, '2022-01-12 09:49:52', '2022-01-13 09:49:52'),
(50, 2, 13, 21, 3, 14.00, 0.00, '2022-01-12 09:49:52', '2022-01-13 09:49:52'),
(51, 3, 13, 11, 1, 14.00, 0.00, '2022-01-12 09:49:52', '2022-01-13 09:49:52'),
(52, 4, 13, 10, 2, 14.00, 0.00, '2022-01-12 09:49:52', '2022-01-13 09:49:52');


--
-- Volcado de datos para la tabla `images`
--

INSERT INTO `images` (`id`, `product_id`, `path`, `name`, `default`, `created_at`, `updated_at`) VALUES
(2, 1, 'OFb74mWzksIwVycvy3lx4CMSoHp5Vjzxd07AwVkK.jpg', 'Sword Coast Adventurers guide', 0, '2022-02-15 13:42:51', '2022-02-15 13:42:51'),
(3, 1, '38rQoZR7VIsOYtiQiXE1vGBVx9yrqhOYrHRMutEu.jpg', 'Sword Coast Adventurers guide', 1, '2022-02-15 13:42:51', '2022-02-15 13:42:51'),
(4, 2, '55oGCXpz9ZuFunm67UAM3AqLCkXkLpu0AjAf3FfD.jpg', 'Volos Guide To Monsters', 0, '2022-02-15 13:43:05', '2022-02-15 13:43:05'),
(5, 2, 'bE9Dp4WoOJtDsT3YLHQp3MsNynUk62lsTmYwgElI.jpg', 'Volos Guide To Monsters', 1, '2022-02-15 13:43:05', '2022-02-15 13:43:05'),
(6, 3, '5otQbsb17BnG67kTWRomgfkUpSa2dxRXR7eNrU24.jpg', 'Out of the Abyss', 0, '2022-02-15 13:43:21', '2022-02-15 13:43:21'),
(7, 3, 'qKniGwxKt3yqTaXPahFBSdjsYQHHfV1UURV7Fc5T.jpg', 'Out of the Abyss', 1, '2022-02-15 13:43:21', '2022-02-15 13:43:21'),
(8, 4, '8GZEaku0lGFuxtdWOpecTNzLxZBymY98bjsEwc58.jpg', 'Curse of Strahd', 0, '2022-02-15 13:43:38', '2022-02-15 13:43:38'),
(9, 4, 'Iwx7I1WjIA2sSqf6B91fkXcctmGpcB8eEqHDsCM4.jpg', 'Curse of Strahd', 1, '2022-02-15 13:43:38', '2022-02-15 13:43:38'),
(10, 5, '0JiP8eQGuym5gdm4gCHvjeBPHHdvYiCPuOOFh9rh.jpg', 'Princes of the Apocalypse', 0, '2022-02-15 13:44:28', '2022-02-15 13:44:28'),
(11, 5, 'KdqLJ3spymVlzzdACJMCClzZbwewCYuwtmSmClQ8.jpg', 'Princes of the Apocalypse', 1, '2022-02-15 13:44:28', '2022-02-15 13:44:28'),
(12, 6, '67HIPUsQFICzbsNBrWjkChXX7FE9LvNhgvKbCy44.jpg', 'Hoard of the Dragon Queen: Tyr', 0, '2022-02-15 13:44:45', '2022-02-15 13:44:45'),
(13, 6, 'AT1X5w0dNMB9b7Bp18lZfhlGoQs8POFRBZh2BCdv.jpg', 'Hoard of the Dragon Queen: Tyr', 1, '2022-02-15 13:44:45', '2022-02-15 13:44:45'),
(14, 7, 'vbNVncUPPfxlicYy9rRzOBD5O4GZNIqaKcZiQo70.jpg', 'Storm Kings Thunder', 0, '2022-02-15 13:44:59', '2022-02-15 13:44:59'),
(15, 7, 'tgLv05DCQoxcHyT1AnVKrAhHRKXSDd33txoZgIOz.jpg', 'Storm Kings Thunder', 1, '2022-02-15 13:44:59', '2022-02-15 13:44:59'),
(16, 8, 'Xvc9RHlDPImKJY3z6KiQCimVl3NdsUEErsC66VQh.jpg', 'Dungeons & Dragons Starter Set', 0, '2022-02-15 13:45:13', '2022-02-15 13:45:13'),
(17, 8, 'KOYb548EOn969rjT6OiHtpOFwzKjCtXDRJbTFlul.jpg', 'Dungeons & Dragons Starter Set', 1, '2022-02-15 13:45:13', '2022-02-15 13:45:13'),
(18, 9, 'wnrGSBWxU1FnRvthPQoWaR5oLoOpF6kG2IcOJpIy.jpg', 'Dungeons and Dragons: Explorad', 0, '2022-02-15 13:45:46', '2022-02-15 13:45:46'),
(19, 9, 'ri0wZEMvvxuDCjkrBf1v2xl2rIb36bMnUffMhvXp.jpg', 'Dungeons and Dragons: Explorad', 1, '2022-02-15 13:45:46', '2022-02-15 13:45:46'),
(20, 10, 'I1NgqC3n8G5b3m6jrYRoS1cahpVD5nzOG1EUN4ox.jpg', 'Dungeons and Dragons: Paladin', 0, '2022-02-15 13:46:29', '2022-02-15 13:46:29'),
(21, 10, 'iYtJMojPD4enpCvbReVK2g6NL02Nj8SupwxzkpfN.jpg', 'Dungeons and Dragons: Paladin', 1, '2022-02-15 13:46:29', '2022-02-15 13:46:29'),
(22, 11, '7b2YN1iPpjcvRPtRe97M8rEkWg9dC4bnu60xaciU.jpg', 'Dungeons and Dragons: Druida -', 0, '2022-02-15 13:46:49', '2022-02-15 13:46:49'),
(23, 11, 'Wn8bYJTwDXEWeEE5edNv4FF9GcukrOdsfwjffHo5.jpg', 'Dungeons and Dragons: Druida -', 1, '2022-02-15 13:46:49', '2022-02-15 13:46:49'),
(24, 12, 'oqLXwnAV2vxfhKaaGj8dGwwpSGAvanENoWVqlDBC.jpg', 'Dungeons and Dragons: Clerigo', 0, '2022-02-15 13:47:05', '2022-02-15 13:47:05'),
(25, 12, 'Gcs8Hz2X4pjxy1gpmAV8USG95xBU6LwHcHec9kll.jpg', 'Dungeons and Dragons: Clerigo', 1, '2022-02-15 13:47:05', '2022-02-15 13:47:05'),
(26, 13, 'N7CSZiX9tDc6nd9MXjtJcBtugCXqybRjXZ4YlPVI.jpg', 'Dungeons and Dragons: Bardo -', 0, '2022-02-15 13:49:15', '2022-02-15 13:49:15'),
(27, 13, 'GOSrelVyXClW5u5m2HbWV7oyvlwzLmXCQdpZKkci.jpg', 'Dungeons and Dragons: Bardo -', 1, '2022-02-15 13:49:15', '2022-02-15 13:49:15'),
(28, 14, '6EGBfI5ieCJpH395sFEjm40jOqBQSkz5rkSlWYSa.jpg', 'Dungeons and Dragons: Mago - C', 0, '2022-02-15 13:49:38', '2022-02-15 13:49:38'),
(29, 14, 'Y6wng9A8ukjwRjP8JZOaNFw8OqJmFMXA4GbOMepy.jpg', 'Dungeons and Dragons: Mago - C', 1, '2022-02-15 13:49:38', '2022-02-15 13:49:38'),
(30, 15, '3ITCnmXJn7VJw1c5zcUBXxCJcVQrKDTOD5rb7rp7.jpg', 'Dungeons and Dragons: Brujo -', 0, '2022-02-15 13:50:02', '2022-02-15 13:50:02'),
(31, 15, '9Ftq3fFTkbhkp3UvYRRnv6nLgR87PE4bb0yK68aA.jpg', 'Dungeons and Dragons: Brujo -', 1, '2022-02-15 13:50:02', '2022-02-15 13:50:02'),
(32, 16, 'dMsvfd2FW8nZBTxNmJVp8paKZ38fstRhg76ONB9h.jpg', 'Dungeons and Dragons: Cartas d', 0, '2022-02-15 13:50:16', '2022-02-15 13:50:16'),
(33, 16, 'SZdVVqwV1abijzuSl33jPNKrC90JTOY0pOBYVU7R.jpg', 'Dungeons and Dragons: Cartas d', 1, '2022-02-15 13:50:16', '2022-02-15 13:50:16'),
(34, 17, 'hXJokFktlulJ1d1PrqD4gRNrPR9rtgY41lSIo56N.jpg', 'Dungeons and Dragons: Cartas d', 0, '2022-02-15 13:50:30', '2022-02-15 13:50:30'),
(35, 17, 'MytbdTAMuF7hZHtinxnocVh7n2VgHYm6lZn4GBSN.jpg', 'Dungeons and Dragons: Cartas d', 1, '2022-02-15 13:50:30', '2022-02-15 13:50:30'),
(36, 18, 'uZe3fqkfuDIBSynFfgkyeh0LpZgzZrF9SglGfohU.jpg', 'Miniatura: Dragón Rojo gigante', 1, '2022-02-15 13:51:01', '2022-02-15 13:51:01'),
(37, 18, 'zTqlLVomerqOqGJkSFa7lcQ1HkRQigTKoHkNb4Ie.jpg', 'Miniatura: Dragón Rojo gigante', 0, '2022-02-15 13:51:01', '2022-02-15 13:51:01'),
(38, 18, 'YSEaGsRJBgmZ1j5hTX7wF9UmHJJJVmkMsBCwDlmp.jpg', 'Miniatura: Dragón Rojo gigante', 1, '2022-02-15 13:51:01', '2022-02-15 13:51:01'),
(39, 18, 'bcD4fiSRNYRvJF4R1JdvzkUKBV7wq2dYXg2hL6Rp.jpg', 'Miniatura: Dragón Rojo gigante', 0, '2022-02-15 13:51:01', '2022-02-15 13:51:01'),
(40, 19, 'Dp7l5hz7gk5zK3KwJnX1EnPiYwAhAzm8V0csBADY.jpg', 'Miniatura: Dragón Azul gigante', 1, '2022-02-15 13:51:27', '2022-02-15 13:51:27'),
(41, 19, 'jiLl3gUipLt2aHz6hA6ZZ7jxbJYCDKYyLpBKEpyc.jpg', 'Miniatura: Dragón Azul gigante', 0, '2022-02-15 13:51:27', '2022-02-15 13:51:27'),
(42, 20, 'K8DwjqSOqpB9JU0rENsQMrtT2LcBh22b3YyPnPY7.jpg', 'Miniatura: Dragón Verde gigant', 1, '2022-02-15 13:51:44', '2022-02-15 13:51:44'),
(43, 20, 'AogDQtl6bwbqx64QWljFkCLbBi02smCQovHhYPD8.jpg', 'Miniatura: Dragón Verde gigant', 0, '2022-02-15 13:51:44', '2022-02-15 13:51:44'),
(44, 21, 'OcR7CBTCMMmtUzw6YmJfxW7Ek2coqLAkb3mthOfc.jpg', 'Miniatura: Dragón Negro gigant', 1, '2022-02-15 13:52:45', '2022-02-15 13:52:45'),
(45, 21, 'O6fVGg4h4IfHbnLtDKtVoISVHmY5btU3NPPmpAdg.jpg', 'Miniatura: Dragón Negro gigant', 0, '2022-02-15 13:52:45', '2022-02-15 13:52:45'),
(46, 22, '2UB3qdiChQVLEFi8ENRQSoqezWRzqg36ywF29jRt.jpg', 'Miniatura: Dragón Metalico gig', 1, '2022-02-15 13:53:06', '2022-02-15 13:53:06'),
(47, 22, 'vfrNjKv0xbbpvP93F0UZxjb1FcmUtm7SROuZxiG1.jpg', 'Miniatura: Dragón Metalico gig', 0, '2022-02-15 13:53:06', '2022-02-15 13:53:06'),
(48, 23, 'ds7FCcpUVOCboXvX5UBxJAzDTHK9rqlP23AxhtQk.jpg', 'Devir - Catan, juego de mesa', 0, '2022-02-15 13:53:31', '2022-02-15 13:53:31'),
(49, 23, 'eX8zaP8rx5z8rfZEm1k1qAhZmBzYqzztlxwfZTLN.jpg', 'Devir - Catan, juego de mesa', 1, '2022-02-15 13:53:31', '2022-02-15 13:53:31'),
(50, 24, 'qP9tqYdeKpAbYY3IFgQ9HoQBjC9sx7yCAVgY2vmh.jpg', 'Hasbro Gaming Clasico Cluedo (', 0, '2022-02-15 13:56:04', '2022-02-15 13:56:04'),
(51, 24, 'y1JrBzAZhOCIPtaVRXEkXUwL4u0mei6cxQnCyFcO.jpg', 'Hasbro Gaming Clasico Cluedo (', 1, '2022-02-15 13:56:04', '2022-02-15 13:56:04'),
(52, 25, 'xNkYHWPl6k9zEWlxCumVvS0eIsMmjNcfgW4r0am1.jpg', 'Hasbro Gaming Trivial Pursuit', 0, '2022-02-15 13:56:38', '2022-02-15 13:56:38'),
(53, 25, 'Kp5CCiSJKLvItCGXhnlNrrpanupdIQazyUHw97H7.jpg', 'Hasbro Gaming Trivial Pursuit', 1, '2022-02-15 13:56:38', '2022-02-15 13:56:38'),
(54, 26, 'CTdf1BQVvv6Pmx7DBmwAfZw4PnIQ3LPo4qMRWP5L.jpg', 'Monopoly - Clásico', 1, '2022-02-15 13:56:52', '2022-02-15 13:56:52'),
(55, 26, 'WycYP2WS5Zr0K4pj5tV0XDn1ynUqfss7OOOzoVJU.jpg', 'Monopoly - Clásico', 0, '2022-02-15 13:56:52', '2022-02-15 13:56:52'),
(56, 27, 'VnRbYL2aouUeIjCfKG5JwddY8vKZ5MJA5AAi3gi3.jpg', 'Jenga!', 0, '2022-02-15 13:57:33', '2022-02-15 13:57:33'),
(57, 27, 'lJliTveTk8FBLOnB2Gt0zD9ZiSFFIxTiddOkzUO6.jpg', 'Jenga!', 1, '2022-02-15 13:57:33', '2022-02-15 13:57:33'),
(58, 29, 'l9d40spMxlXRJ1v4vjCg8PkXcbTEMp9LkGQOEGGq.jpg', 'Mattel Games - Pictionary', 0, '2022-02-15 13:58:11', '2022-02-15 13:58:11'),
(59, 29, 'ZiDyqffFlCmgZ9jNdjS2KsWG4NDQqnciJg0Bc1Zm.jpg', 'Mattel Games - Pictionary', 1, '2022-02-15 13:58:11', '2022-02-15 13:58:11'),
(60, 30, 'ljIbVK8P0PJ4yYlMYWFJz1wvv8lwF3LNKhkbraLw.jpg', 'Moncolis Dados Poliedricos 6 x', 1, '2022-02-15 13:58:25', '2022-02-15 13:58:25'),
(61, 30, 'EfujPGEn0OXErAsnHeiLoAgddxQrMuRIhv7JBkYK.jpg', 'Moncolis Dados Poliedricos 6 x', 0, '2022-02-15 13:58:25', '2022-02-15 13:58:25');

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

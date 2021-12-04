-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-12-2021 a las 13:26:27
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `conciertos_lima`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admins`
--

CREATE TABLE `admins` (
  `Id_admin` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `password` varchar(60) NOT NULL,
  `editado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `admins`
--

INSERT INTO `admins` (`Id_admin`, `usuario`, `nombre`, `password`, `editado`) VALUES
(51, 'admin', 'admin', '$2y$12$zWE237xvFBNvuHsg.f6yeuhNR2WOfYP0Y.OWTj/KEF1yLrK4C1ZVW', '2021-12-04 05:56:54'),
(52, 'admin2', 'giovanni', '$2y$12$A2Tww0XEK8XAzWQ8PLlN4.syebVg9GgWWoyAXXhpLYbbtXhQcRfAK', NULL),
(53, 'admin3', 'deryam', '$2y$12$4NO2IVaoBE7yTrQNNWvIP.6IGjrlaxUfu5C3pFw7YWqI6obxRglIO', NULL),
(54, 'administrador', 'giovanni', '$2y$12$1zpcxgNY57n.urSm669hieccRvH2waXRT/JayYU3Y0oa/tdrjmYXu', NULL),
(57, 'admin200', 'gabriel', '$2y$12$LuBr/Uag8b4elZFXgEGyeu0g3WVuDQhMm2rK6GPILf/g9v/7XUCoe', '2021-12-04 07:25:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_evento`
--

CREATE TABLE `categoria_evento` (
  `id_categoria` tinyint(10) NOT NULL,
  `cat_evento` varchar(50) NOT NULL,
  `icono` varchar(15) NOT NULL,
  `actualizado` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categoria_evento`
--

INSERT INTO `categoria_evento` (`id_categoria`, `cat_evento`, `icono`, `actualizado`) VALUES
(1, 'Musical', 'fa-university', '0000-00-00 00:00:00'),
(2, 'Deporte', 'fa-futbol', '2021-10-06 17:50:04'),
(3, 'Teatro', 'fa-popcorn', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `evento_id` tinyint(10) NOT NULL,
  `nombre_evento` varchar(60) NOT NULL,
  `fecha_evento` date NOT NULL,
  `hora_evento` varchar(10) NOT NULL,
  `id_cat_evento` tinyint(10) NOT NULL,
  `id_inv` tinyint(4) NOT NULL,
  `clave` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`evento_id`, `nombre_evento`, `fecha_evento`, `hora_evento`, `id_cat_evento`, `id_inv`, `clave`) VALUES
(4, 'Vivo por el rock 12', '2021-12-11', '02:00 PM', 1, 1, 'taller_01'),
(6, 'Reactivate 5', '2021-12-18', '01:00 PM', 1, 8, 'taller_13'),
(7, 'La casa de Papa Noel', '2021-12-24', '09:00 AM', 3, 4, 'conf_01'),
(8, 'Pedro Suarez Vertiz La banda', '2021-11-27', '05:00 PM', 1, 3, 'conf_02'),
(12, 'Cristal vs Alianza Lima', '2021-11-28', '15:00 PM', 2, 4, 'taller_03'),
(35, 'Peru vs Ecuador', '2022-01-08', '09:00 PM', 2, 8, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invitados`
--

CREATE TABLE `invitados` (
  `invitado_id` tinyint(4) NOT NULL,
  `nombre_invitado` varchar(30) NOT NULL,
  `apellido_invitado` varchar(30) NOT NULL,
  `descripcion` text NOT NULL,
  `url_imagen` varchar(50) NOT NULL,
  `editado` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `invitados`
--

INSERT INTO `invitados` (`invitado_id`, `nombre_invitado`, `apellido_invitado`, `descripcion`, `url_imagen`, `editado`) VALUES
(1, 'Hermano Yaipen', '', 'Ess una orquesta musical de cumbia peruana proveniente de Monsefú, Chiclayo, formado principalmente por los hermanos Walter y Javier Yaipén Uypan en el año 2000.', 'invitado1.jpg', '2021-12-04 06:43:51'),
(2, 'Grupo Amén', '', 'Amén es una banda de rock alternativo, formada en Callao - Perú en 1995. La banda está integrada por Marcello Motta (voz y guitarra), Henry Ueunten (teclados), Nathan Chara (bajo) y Manuel Chávez (batería).', 'invitado2.jpg', '0000-00-00 00:00:00'),
(3, 'Pedro Suarez Vertiz La Banda', '', 'Es una banda peruana de rock\'n\'pop rock ska/alternativo formada en el año 1994, inicialmente bajo el nombre de Pedro Suárez-Vértiz, por el cantante Pedro Suárez-Vértiz nacido en el Callao', 'invitado3.jpg', '0000-00-00 00:00:00'),
(4, 'Deyvis Orozco', '', 'Federacion Peruana de es un cantante, músico y actor peruano, actual vocalista del Grupo Néctar y conocido por ser protagonista de algunas series televisivas como La pre y Torbellino, 20 años después.', 'invitado4.jpg', '0000-00-00 00:00:00'),
(5, 'Daniela Darcourt', '', 'Es una cantante, compositora y bailarina peruana.', 'invitado5.jpg', '0000-00-00 00:00:00'),
(6, 'Líbido', '', 'Es una banda peruana de rock alternativo originaria de Lima, formada en 1996 y activa hasta la fecha. La formación original del grupo estuvo constituida por Salim Vera (guitarra rítmica, vocalista), Manolo Hidalgo (guitarra principal o primera guitarra), Toño Jáuregui (bajo, coros) y Jeffry Fischman (batería).', 'invitado6.jpg', '0000-00-00 00:00:00'),
(7, 'Tony Rosado', '', 'Es un cantante peruano de cumbia. Entre sus temas más populares se encuentran «Corazón de piedra», «No me olvidarás», «Gracias», «Te vas de mi amor», «Enamorándome más de ti», «Una aventura más» y el principal, «Ya te olvidé»', 'invitado7.jpg', '0000-00-00 00:00:00'),
(8, 'Raúl Romero', '', 'Es un cantante, presentador e ingeniero industrial peruano de ascendencia española, conocido principalmente por ser el vocalista del grupo Nosequien y Los Nosecuantos y por conducir programas de concurso, entre ellos, Habacilar.', 'invitado8.jpg', '2021-10-30 01:35:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regalos`
--

CREATE TABLE `regalos` (
  `ID_regalo` int(11) NOT NULL,
  `nombre_regalo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `regalos`
--

INSERT INTO `regalos` (`ID_regalo`, `nombre_regalo`) VALUES
(1, 'Pulsera'),
(2, 'Etiquetas'),
(3, 'Plumas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registrados`
--

CREATE TABLE `registrados` (
  `ID_Registrado` bigint(20) UNSIGNED NOT NULL,
  `nombre_registrado` varchar(50) NOT NULL,
  `apellido_registrado` varchar(50) NOT NULL,
  `email_registrado` varchar(100) NOT NULL,
  `fecha_registro` datetime NOT NULL,
  `pases_articulos` longtext NOT NULL,
  `talleres_registrados` longtext NOT NULL,
  `regalo` int(11) NOT NULL,
  `total_pagado` varchar(50) NOT NULL,
  `pagado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `registrados`
--

INSERT INTO `registrados` (`ID_Registrado`, `nombre_registrado`, `apellido_registrado`, `email_registrado`, `fecha_registro`, `pases_articulos`, `talleres_registrados`, `regalo`, `total_pagado`, `pagado`) VALUES
(24, 'Giovanni', 'Cancho', 'giovannican@gmail.com', '2021-01-15 06:55:24', '', '', 2, '298.9', 1),
(25, 'Deryam', 'Hermosilla', 'deryam@gmail.com', '2021-01-17 05:33:31', '', '', 3, '243.6', 1),
(26, 'Juan', 'Perez', 'juanpa@gmail.com', '2021-11-12 19:37:32', '', '', 2, '61.3', 1),
(47, 'asfafsa', 'safasf', 'asfsaf@gmail.com', '2021-11-26 19:02:29', '{\"un_dia\":{\"cantidad\":\"4\"},\"pase_completo\":{\"cantidad\":\"1\"},\"pase_2dias\":{\"cantidad\":\"1\"}}', '[]', 1, '226.3', 1),
(48, '', '', '', '2021-11-26 19:29:59', '{\"un_dia\":{\"cantidad\":\"0\"},\"pase_completo\":{\"cantidad\":\"0\"},\"pase_2dias\":{\"cantidad\":\"\"}}', '[]', 2, '11.3', 0),
(49, '', '', '', '2021-11-26 20:05:43', '{\"un_dia\":{\"cantidad\":\"3\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"},\"camisas\":1,\"etiquetas\":1}', '[]', 2, '101.3', 0),
(50, 'aaa', 'bbb', 'bqwq@gmail.com', '2021-11-26 20:08:13', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"2\"},\"pase_2dias\":{\"cantidad\":\"2\"}}', '[]', 2, '240.6', 0),
(51, 'geronimo', 'gerzo', 'gerzp@gmail.com', '2021-11-30 23:41:15', '{\"un_dia\":{\"cantidad\":\"2\"},\"pase_completo\":{\"cantidad\":\"1\"},\"pase_2dias\":{\"cantidad\":\"\"}}', '{\"eventos\":[\"7\"]}', 1, '132.6', 0),
(52, 'a', 'a', 'asfsaf@gmail.com', '2021-12-01 22:47:47', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"}}', '{\"eventos\":[\"7\"]}', 2, '50.6', 0),
(53, 'a', 'a', 'asfsaf@gmail.com', '2021-12-01 22:49:08', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"}}', '{\"eventos\":[\"12\"]}', 2, '41.3', 0),
(54, 'car', 'los', 'asfsaf@gmail.com', '2021-12-02 17:32:23', '{\"un_dia\":{\"cantidad\":\"3\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"}}', '{\"eventos\":[\"6\"]}', 1, '101.3', 0),
(55, '', '', '', '2021-12-02 17:33:09', '{\"un_dia\":{\"cantidad\":\"2\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"}}', '{\"eventos\":[\"8\"]}', 2, '13.3', 0),
(56, '', '', '', '2021-12-02 17:33:18', '{\"un_dia\":{\"cantidad\":\"2\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"}}', '{\"eventos\":[\"8\"]}', 2, '73.3', 0),
(57, '', '', '', '2021-12-02 17:34:26', '{\"un_dia\":{\"cantidad\":\"2\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"}}', '{\"eventos\":[\"8\"]}', 2, '73.3', 0),
(58, 'jorge', 'campos', 'jorge@gmail.com', '2021-12-02 17:40:13', '{\"un_dia\":{\"cantidad\":\"2\"},\"pase_completo\":{\"cantidad\":\"1\"},\"pase_2dias\":{\"cantidad\":\"\"}}', '{\"eventos\":[\"7\"]}', 1, '119.3', 0),
(59, 'jorge', 'campos', 'jorge@gmail.com', '2021-12-02 17:41:02', '{\"un_dia\":{\"cantidad\":\"2\"},\"pase_completo\":{\"cantidad\":\"1\"},\"pase_2dias\":{\"cantidad\":\"\"}}', '{\"eventos\":[\"7\"]}', 1, '119.3', 0),
(60, '', '', '', '2021-12-02 17:42:55', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"}}', '{\"eventos\":[\"8\"]}', 1, '39.3', 0),
(61, 'luis', 'lopez', 'li@gmal.com', '2021-12-02 17:44:04', '{\"un_dia\":{\"cantidad\":\"\"},\"pase_completo\":{\"cantidad\":\"1\"},\"pase_2dias\":{\"cantidad\":\"\"}}', '{\"eventos\":[\"12\"]}', 1, '61.3', 0),
(62, '', '', '', '2021-12-02 17:44:32', '{\"un_dia\":{\"cantidad\":\"\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"}}', '[]', 2, '2', 0),
(63, '', '', '', '2021-12-02 17:46:22', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"}}', '{\"eventos\":[\"7\"]}', 1, '32', 0),
(64, '', '', '', '2021-12-02 17:47:39', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"}}', '{\"eventos\":[\"7\"]}', 1, '32', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`Id_admin`),
  ADD UNIQUE KEY `usuario` (`usuario`);

--
-- Indices de la tabla `categoria_evento`
--
ALTER TABLE `categoria_evento`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`evento_id`),
  ADD KEY `id_cat_evento` (`id_cat_evento`),
  ADD KEY `id_inv` (`id_inv`);

--
-- Indices de la tabla `invitados`
--
ALTER TABLE `invitados`
  ADD PRIMARY KEY (`invitado_id`);

--
-- Indices de la tabla `regalos`
--
ALTER TABLE `regalos`
  ADD PRIMARY KEY (`ID_regalo`);

--
-- Indices de la tabla `registrados`
--
ALTER TABLE `registrados`
  ADD PRIMARY KEY (`ID_Registrado`),
  ADD KEY `regalo` (`regalo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admins`
--
ALTER TABLE `admins`
  MODIFY `Id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de la tabla `categoria_evento`
--
ALTER TABLE `categoria_evento`
  MODIFY `id_categoria` tinyint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `evento_id` tinyint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `invitados`
--
ALTER TABLE `invitados`
  MODIFY `invitado_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `regalos`
--
ALTER TABLE `regalos`
  MODIFY `ID_regalo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `registrados`
--
ALTER TABLE `registrados`
  MODIFY `ID_Registrado` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD CONSTRAINT `eventos_ibfk_1` FOREIGN KEY (`id_cat_evento`) REFERENCES `categoria_evento` (`id_categoria`),
  ADD CONSTRAINT `eventos_ibfk_2` FOREIGN KEY (`id_inv`) REFERENCES `invitados` (`invitado_id`);

--
-- Filtros para la tabla `registrados`
--
ALTER TABLE `registrados`
  ADD CONSTRAINT `registrados_ibfk_1` FOREIGN KEY (`regalo`) REFERENCES `regalos` (`ID_regalo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

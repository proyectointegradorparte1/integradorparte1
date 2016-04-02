-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-04-2016 a las 18:05:11
-- Versión del servidor: 10.1.9-MariaDB
-- Versión de PHP: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `registro`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos`
--

CREATE TABLE `datos` (
  `id` int(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `telefono` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `datos`
--

INSERT INTO `datos` (`id`, `nombre`, `apellido`, `correo`, `telefono`) VALUES
(1, 'jefers', 'jqjsajd', 'qwwqw', '42343'),
(2, 'jeferson', 'borda', 'jjbordafunsanmateo.edu.co', '4342453'),
(3, 'ggggg', 'kjkkk', 'lllll', '0'),
(4, 'ffffffffffffff', 'ffffffffffffffff', 'ffffffffffffffffffff', '444'),
(6, 'dddd', 'fffff', 'sssss', '0'),
(7, 'WWW', 'WWW', 'WWWWW', '0'),
(8, 'JJJJJJJJJJJJJJJJJJJJ', 'JJJJJJJJJJJJJJJJJJ', 'JJJJJJJJJJJJJJJJJJJJJ', '0'),
(9, 'agua', 'agua', 'agua', '0'),
(10, 'SDFJLSKFL', '{LSFLSF{S', 'JDFGDKJF', '0'),
(11, 'agata', 'rojas', 'ddddd', '0'),
(12, 'rebeca', 'sousa', 'asddfsdf', '0'),
(13, 'ojocanssdddddddddd', 'ddddddddddddd', 'ddddddddddddddddddd', '0'),
(14, 'dddddddddddddddd', 'dddddddddddd', 'dddddddddddddddddd', '0'),
(15, 'aaaaaaaaaaaaaa', 'aaaaaaaaaaaaaa', 'aaaaaaaaaaaaaa', '0'),
(17, 'jhon', 'gil', 'jsjsjsj', '3333'),
(18, 'chicos x', 'jaj', 'lllll', 'nohay'),
(19, 'chicos x', 'jaj', 'lllll', 'nohay'),
(20, 'esperanza ', 'gomez', 'chicasexy', '123445');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `datos`
--
ALTER TABLE `datos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `datos`
--
ALTER TABLE `datos`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

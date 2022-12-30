-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-05-2015 a las 05:44:13
-- Versión del servidor: 5.6.24
-- Versión de PHP: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE IF NOT EXISTS `libros` (
  `id_libro` int(11) NOT NULL,
  `isbn_libro` varchar(50) NOT NULL,
  `titulo_libro` varchar(150) NOT NULL,
  `autor_libro` varchar(150) NOT NULL,
  `publicacion_libro` year(4) NOT NULL,
  `paginas_libro` varchar(50) NOT NULL,
  `ediccion_libro` varchar(100) NOT NULL,
  `idioma_libro` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id_libro`, `isbn_libro`, `titulo_libro`, `autor_libro`, `publicacion_libro`, `paginas_libro`, `ediccion_libro`, `idioma_libro`) VALUES
(1, '84-481-4008-7', 'Se', 'Gonz', 0000, '411', 'Primera', 'Espanol'),
(2, '84-2505-4009-9', 'Creac', 'Francisco Esquembre', 0000, '330', 'Segunda', 'Espanol'),
(3, '84-481-4008-7', 'SEGURIDAD INFORMÁTICA PARA EMPRESAS PARTICULARES', 'GONZALO ALVAREZ MARAÑON', 2004, '411', 'PRIMERA', 'ESPAÑOL'),
(4, '84-2505-4009-9', 'CREACION DE SIMULACIONES INTERACTIVAS EN JAVA', 'FRANCISCO ESQUEMBRE', 2005, '330', '', 'ESPAÑOL'),
(5, '970-15-1100-X', 'METODOLOGIA DE LA PROGRAMAC?N', 'OSVALDO CAIRO BATTISTUTTI', 2006, '464', 'SEGUNDA', 'ESPAÑOL'),
(6, '84-481-4623-9', 'SIMULACION PARA LAS CIENCIAS SOCIALES', 'NIGEL GILBERT-KLAUS G. TROITZSCH', 2006, '295', 'SEGUNDA', 'ESPAÑOL'),
(7, '978-970-10-6105-3', 'SISTEMAS DE COMUNICACION', 'A. BRUCE CARLSON-PAUL B. CRILLY', 2007, '850', 'CUARTA', 'ESPAÑOL'),
(8, '84-481-3664-0', 'FUNDAMENTOS DE PROGRAMACION', 'LUIS JOYANES AGUILAR', 2003, '1004', 'TERCERA', 'ESPAÑOL'),
(9, '970-10-5898-4', '19 PUNTOS CRITICOS SOBRE SEGURIDAD DE SOFTWARE', 'MICHAEL HOWARD-DAVID LEBLANC', 2007, '281', 'PRIMERA', 'ESPAÑOL'),
(10, '970-10-5899-2', 'MANUAL DE UML', '', 2007, '236', 'PRIMERA', 'ESPAÑOL'),
(11, '978-970-10-6109-1', 'ADMINISTRACION DE BASES DE DATOS', 'MICHAEL V. MANNINO', 2007, '712', 'PRIMERA', 'ESPAÑOL'),
(12, '84-481-9846-8', 'PROGRAMACION EN C', 'BYRON S. GOTTFRIED', 0000, '659', 'SEGUNDA', 'ESPAÑOL'),
(13, '970-10-5609-4', 'FUNDAMENTOS DE LOGICA DIGITAL ', 'STEPHEN BROWN', 0000, '939', 'SEGUNDA', 'ESPAÑOL'),
(14, '970-10-4778-8', 'ASP.NET MANUAL DE REFERENCIA', 'MATTHEW MACDONALD', 0000, '876', 'PRIMERA', 'ESPAÑOL'),
(15, '970-10-5067-3', 'SEÑALES Y SISTEMAS', 'MICHAEL J. ROBERTS', 0000, '874', 'PRIMERA', 'ESPAÑOL'),
(16, '84-481-4939-4', 'ORACLE DATABASE 10G MANUAL DEL ADMINISTRADOR', 'KEVIN LONEY-BOB BRYLA', 0000, '768', 'PRIMERA', 'ESPAÑOL'),
(17, '84-481-9816-6', 'JAVA 2 ', 'JESUS SANCHEZ ALLENDE-GABRIEL HUECAS FERNANDEZ-TORIBIO', 0000, '356', 'SEGUNDA', 'ESPAÑOL'),
(18, '84-481-4026-5', 'REDES Y SERVICIOS DE BANDA ANCHA TECNOLOG?A Y APLICACIONES', 'JOSE MANUEL HUIDOBRO MOYA', 0000, '309', 'PRIMERA', 'ESPAÑOL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre_usuario` varchar(150) NOT NULL,
  `apellido_usuario` varchar(150) NOT NULL,
  `email_usuario` varchar(150) NOT NULL,
  `pass_usuario` varchar(150) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre_usuario`, `apellido_usuario`, `email_usuario`, `pass_usuario`) VALUES
(18, 'carlos', 'manchego', 'carlos_m@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b'),
(19, 'juan', 'manchego', 'juan@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b'),
(20, 'yeny', 'fuentes', 'yenyf@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),
(21, 'bryan', 'ramirez', 'ramirezb@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id_libro`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`), ADD UNIQUE KEY `email_usuario` (`email_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `id_libro` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

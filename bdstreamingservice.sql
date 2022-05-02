-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-05-2022 a las 20:24:29
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdstreamingservice`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tplanes`
--

CREATE TABLE `tplanes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `importe` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tplanes`
--

INSERT INTO `tplanes` (`id`, `nombre`, `importe`) VALUES
(1, 'Basico', '140.00'),
(2, 'Estandar', '220.00'),
(3, 'Premium', '299.99');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tsuscriptores`
--

CREATE TABLE `tsuscriptores` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellidoPaterno` varchar(25) NOT NULL,
  `apellidoMaterno` varchar(25) NOT NULL,
  `servicio` varchar(30) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `plan` varchar(30) NOT NULL,
  `estatus` varchar(30) NOT NULL,
  `idPlanes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tsuscriptores`
--

INSERT INTO `tsuscriptores` (`id`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `servicio`, `fechaNacimiento`, `plan`, `estatus`, `idPlanes`) VALUES
(1, 'Federico', 'Barrera', 'Alvarez', 'Streaming', '1990-02-01', 'Basico', 'Activo', 1),
(2, 'Lilia', 'Ortega', 'Luna', 'Streaming', '1985-05-15', 'Estandar', 'Activo', 2),
(4, 'Jorge', 'Godinez', 'Jimenez', 'Streaming', '1988-09-30', 'Premium', 'Activo', 3),
(5, 'Daniel', 'Ramiez', 'Sanchez', 'Streaming', '1994-07-01', 'Premium', 'Activo', 3),
(6, 'Carmen', 'Benitez ', 'Chavez', 'Streaming', '1999-02-28', 'Basico', 'Activo', 3),
(7, 'Denise', 'Gutierrez', 'Quintana', 'Streaming', '1995-08-24', 'Premium', 'Activo', 3),
(8, 'Pablo', 'Fernandez', 'Perez', 'Streaming', '2001-12-12', 'Estandar', 'Activo', 3),
(9, 'Miguel Angel', 'Vivanco', '.', 'Streaming', '1980-08-25', 'Estandar', 'Activo', 3),
(10, 'Araceli liliana', 'Cabello', 'Gonzalez', 'Streaming', '2002-01-30', 'Basico', 'Activo', 3),
(11, 'Prueba', 'Last name', '...', 'Streaming', '1900-01-01', 'Basico', 'Inactivo', 3),
(15, 'Alberto', 'Cano', 'Diaz', 'Streaming', '1994-05-18', 'Basico', 'Activo', 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tplanes`
--
ALTER TABLE `tplanes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tsuscriptores`
--
ALTER TABLE `tsuscriptores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idPlanes` (`idPlanes`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tsuscriptores`
--
ALTER TABLE `tsuscriptores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tsuscriptores`
--
ALTER TABLE `tsuscriptores`
  ADD CONSTRAINT `tsuscriptores_ibfk_1` FOREIGN KEY (`idPlanes`) REFERENCES `tplanes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-09-2020 a las 00:58:21
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sportsbook`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `club`
--

CREATE TABLE `club` (
  `nitClub` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `provincia` varchar(30) NOT NULL,
  `direccion` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefono` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `club`
--

INSERT INTO `club` (`nitClub`, `nombre`, `provincia`, `direccion`, `email`, `telefono`) VALUES
(123123, 'deletes', 'deletes', 'deletes', 'deletes@example.com', 'deletes'),
(1835213, 'ADSI', 'Ibaguee', 'Centro industria', 'adsi@example.com', '26585877'),
(18352134, 'ADSI Actualizado', 'Racon', 'Racon City', 'umbrella@example.com', '314555');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deportista`
--

CREATE TABLE `deportista` (
  `idDeportista` int(15) NOT NULL,
  `nomDepor` varchar(50) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `posicion` varchar(50) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `deportista`
--

INSERT INTO `deportista` (`idDeportista`, `nomDepor`, `categoria`, `posicion`, `telefono`, `direccion`) VALUES
(155454, 'Pedro Zambrano', 'Juvenil', 'Defensa', '7894561', 'Colombia'),
(1554545, 'Pedro Pablo Zambrano C', 'Profesional', 'Delantero', '12345', 'Argentina'),
(12345678, 'Leonel Messixd', 'Profesional', 'Delantero', '57777', 'Argentina'),
(1005815469, 'Juan Pablo Lopez', 'Juvenil', 'Defensor', '3144788799', 'Super manza 3'),
(1478522995, 'Example', 'Example', 'Example', 'Example', 'Example');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresario`
--

CREATE TABLE `empresario` (
  `idEmpre` int(10) NOT NULL,
  `nomEmpre` varchar(50) NOT NULL,
  `entidad` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empresario`
--

INSERT INTO `empresario` (`idEmpre`, `nomEmpre`, `entidad`, `direccion`, `telefono`, `email`) VALUES
(123456, 'example', 'example', 'example', 'example', 'example'),
(1007545, 'Alberto Gamero', 'Millonarios', 'Bogota D.C', '7894563', 'gamero@example.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `patrocinio`
--

CREATE TABLE `patrocinio` (
  `numeroPatro` int(10) NOT NULL,
  `empresarioPatro` int(10) NOT NULL,
  `patrocinado` int(10) NOT NULL,
  `clubPatro` int(10) NOT NULL,
  `inicioPatro` varchar(50) NOT NULL,
  `finPatro` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `IdUsuario` int(50) UNSIGNED NOT NULL,
  `Nombres` varchar(200) DEFAULT NULL,
  `Telefono` varchar(30) DEFAULT NULL,
  `Estado` varchar(1) DEFAULT NULL,
  `User` varchar(15) DEFAULT NULL,
  `Pass` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`IdUsuario`, `Nombres`, `Telefono`, `Estado`, `User`, `Pass`) VALUES
(1, 'Juan Lopez Actualizado', '3122222', '1', 'juanlpez002', 'pablo1234'),
(2, 'user01', '111111111', '1', 'user01', '123'),
(3, 'Nicolas Albino Actualizado', '3124920843', '1', 'niconii123', 'niconii123');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `club`
--
ALTER TABLE `club`
  ADD PRIMARY KEY (`nitClub`);

--
-- Indices de la tabla `deportista`
--
ALTER TABLE `deportista`
  ADD PRIMARY KEY (`idDeportista`);

--
-- Indices de la tabla `empresario`
--
ALTER TABLE `empresario`
  ADD PRIMARY KEY (`idEmpre`);

--
-- Indices de la tabla `patrocinio`
--
ALTER TABLE `patrocinio`
  ADD PRIMARY KEY (`numeroPatro`),
  ADD KEY `empresarioPatro` (`empresarioPatro`),
  ADD KEY `patrocinado` (`patrocinado`),
  ADD KEY `clubPatro` (`clubPatro`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`IdUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `IdUsuario` int(50) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `patrocinio`
--
ALTER TABLE `patrocinio`
  ADD CONSTRAINT `patrocinio_ibfk_1` FOREIGN KEY (`empresarioPatro`) REFERENCES `empresario` (`idEmpre`),
  ADD CONSTRAINT `patrocinio_ibfk_2` FOREIGN KEY (`patrocinado`) REFERENCES `deportista` (`idDeportista`),
  ADD CONSTRAINT `patrocinio_ibfk_3` FOREIGN KEY (`clubPatro`) REFERENCES `club` (`nitClub`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

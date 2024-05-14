-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-10-2021 a las 21:58:43
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `altasybajas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `Id` int(11) NOT NULL,
  `Rol` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`Id`, `Rol`) VALUES
(1, 'Administrador'),
(2, 'Usuario'),
(3, 'Vendedor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Id_usuario` int(11) NOT NULL,
  `PrimerNombre` varchar(50) DEFAULT NULL,
  `SegundoNombre` varchar(50) DEFAULT NULL,
  `PrimerApellido` varchar(50) DEFAULT NULL,
  `SegundoApellido` varchar(50) DEFAULT NULL,
  `Cedula` varchar(50) DEFAULT NULL,
  `Telefono` varchar(50) DEFAULT NULL,
  `Correo` varchar(50) DEFAULT NULL,
  `Foto` blob DEFAULT NULL,
  `FechaNacimiento` date DEFAULT NULL,
  `Genero` varchar(50) DEFAULT NULL,
  `HabeasData` int(1) DEFAULT NULL,
  `EnvioInfo` int(1) DEFAULT NULL,
  `Usuario` varchar(50) DEFAULT NULL,
  `Contrasena` varchar(100) DEFAULT NULL,
  `IdRol` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Id_usuario`, `PrimerNombre`, `SegundoNombre`, `PrimerApellido`, `SegundoApellido`, `Cedula`, `Telefono`, `Correo`, `Foto`, `FechaNacimiento`, `Genero`, `HabeasData`, `EnvioInfo`, `Usuario`, `Contrasena`, `IdRol`) VALUES
(1, 'Javier', 'Antonio', 'Parada', 'Figueroa', '1012390001', '3012529836', 'javipafig@outlook.com', NULL, '1992-07-01', 'Masculino', 1, 1, 'Javipafig', '54321Av%', 1),
(18, 'Guiomar', 'Carolina ', 'Farfan', 'Rozo', '106954784', '3024269841', 'kaoru9212@hotmail.com', 0x494d472d32303136313130312d5741303030302e6a7067, '1990-12-22', 'Hombre', NULL, NULL, 'akemisagara', '54321As%', 3),
(19, 'Camilo', 'Segura ', 'Parada', 'Figuero', '1012365014', '3012529836', 'javipafig@byg.com.co', 0x494d472d32303136313130312d5741303030302e6a7067, '2003-08-01', 'Hombre', NULL, NULL, 'javipafig12345', '123456', 1);

-- -------------------------------------------

-- Estructura de tabla Porductos


CREATE TABLE `Producto` (
  `Id_producto` int(11) NOT NULL,
  `NombreProducto` varchar(50) DEFAULT NULL,
  `Descripcion` varchar(50) DEFAULT NULL,
  `Precio` varchar(50) DEFAULT NULL,
  `Foto` blob DEFAULT NULL,
  `FechaCreacion` date DEFAULT NULL,
  `FechaActualizacion` date DEFAULT NULL,
  `IdUsuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Id_usuario`),
  ADD KEY `Rol` (`IdRol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `Id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `Usuario_ibfk_1` FOREIGN KEY (`IdRol`) REFERENCES `roles` (`Id`),
  ADD CONSTRAINT `Usuario_ibfk_2` FOREIGN KEY (`IdRol`) REFERENCES `roles` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

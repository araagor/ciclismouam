-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-09-2021 a las 03:18:42
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ciclismo_uam_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_ruta`
--

CREATE TABLE `tb_ruta` (
  `id` int(11) NOT NULL,
  `inicio_ruta` varchar(40) NOT NULL,
  `final_ruta` varchar(40) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_final` date NOT NULL,
  `km` float NOT NULL,
  `tiempo` float NOT NULL,
  `novedad` varchar(30) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tb_ruta`
--

INSERT INTO `tb_ruta` (`id`, `inicio_ruta`, `final_ruta`, `fecha_inicio`, `fecha_final`, `km`, `tiempo`, `novedad`, `descripcion`, `id_usuario`) VALUES
(1, 'Lugar 1', 'Lugar 2', '2021-09-01', '2021-09-01', 42, 0.354283, 'Ruta terminada', 'Hola ', 2),
(3, 'Lugar 2', 'Lugar 3', '2021-09-01', '2021-09-01', 10, 0.545783, 'Accidente', 'Me accidente', 2),
(4, 'Lugar 5', 'Lugar 6', '2021-09-01', '2021-09-01', 40, 0.42875, 'Accidente', 'Una buceta me atropello', 2),
(5, 'Lugar 8', 'Lugar 10', '2021-09-01', '2021-09-01', 30, 0.18035, 'Accidente', 'Me accidente', 2),
(6, 'Coliseo', 'UAM', '2021-09-01', '2021-09-01', 40, 1.0512, 'Ruta terminada', 'Termine la ruta', 2),
(7, 'UAM', 'Casa', '2021-09-01', '2021-09-01', 1, 0.164017, 'Falla mecanica', 'No tengo bicicleta', 4),
(8, 'Tu', 'El corazon de ella', '2021-09-01', '2021-09-01', 30, 0.307767, 'Falla mecanica', 'Hola', 2),
(9, 'Mi casa', 'Universidad', '2021-09-01', '2021-09-01', 30, 0.5859, 'Ruta terminada', 'Se termino la ruta', 6),
(10, 'Desde mi casa', 'Hasta tu corazon', '2021-09-01', '2021-09-01', 15, 1.55233, 'Ruta terminada', 'No llegue a tu corazon', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_usuario`
--

CREATE TABLE `tb_usuario` (
  `id` int(11) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `identificacion` varchar(10) NOT NULL,
  `contrasena` varchar(30) NOT NULL,
  `correo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tb_usuario`
--

INSERT INTO `tb_usuario` (`id`, `usuario`, `identificacion`, `contrasena`, `correo`) VALUES
(1, 'AraaGor', '12141241', '123456', 'araagor@gmail.com'),
(2, 'Hernan', '1002654519', '12345678', 'calisto@gmail.com'),
(3, 'Meco', '1002654518', '123456789', 'meco@gmail.com'),
(4, 'Jorge', '123456789', '123', 'jorge@gmail.com'),
(5, 'araa', '1234', '45', 'araa'),
(6, 'araa', 'carlo', 'carlo', 'carlo'),
(7, 'Yaneth', 'Yaneth', 'Yaneth', 'yaneth');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_usuario_ruta`
--

CREATE TABLE `tb_usuario_ruta` (
  `id_usuario` int(11) NOT NULL,
  `id_ruta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usuario` varchar(20) NOT NULL,
  `identificacion` varchar(10) NOT NULL,
  `contraseña` varchar(20) NOT NULL,
  `correo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_ruta`
--
ALTER TABLE `tb_ruta`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_usuario`
--
ALTER TABLE `tb_usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tb_ruta`
--
ALTER TABLE `tb_ruta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tb_usuario`
--
ALTER TABLE `tb_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

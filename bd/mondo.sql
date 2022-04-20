-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-04-2022 a las 01:47:31
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mondo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `mododeuso` varchar(1000) DEFAULT NULL,
  `composicion` varchar(1000) DEFAULT NULL,
  `imagen` varchar(1000) DEFAULT NULL,
  `descripcion` varchar(1000) DEFAULT NULL,
  `advertencias` varchar(1000) DEFAULT NULL,
  `caducidad` varchar(1000) DEFAULT NULL,
  `otrainfo` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `mododeuso`, `composicion`, `imagen`, `descripcion`, `advertencias`, `caducidad`, `otrainfo`) VALUES
(2, 'Crema Humectante Piel Seca - Manzanilla Sándalo editado', 'Aplicar dos veces por dia en el rostro y cuello con leves masajes ascendente. Uso externo. Advertencia, si observa alguna reacción desfavorable suspenda su uso. Si la reacción persiste consulte a su médico', 'Agua, Agua de Rosas, Aceite de Palta, Aceite de Rosa Mosqueta, Glicerina vegetal grado USP, Olivem 1000 (Cetearyl Olivate and Sorbitan Olivate, emulsiontante), ALcohol estearilico(estabilizante), Euxyl PE 9010 (Phenoxyethanol y Ethylhexylglicerin, conservante), Aceites esenciales de Manzanilla y Sándalo. Puede contener pequeñas cantidades de ácido cítrico y/o bicarbonato de sodio', 'images/626084d84c5da.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus suscipit elit id consequat tempor. Vestibulum vitae nibh id ante accumsan sollicitudin at vel elit. Praesent viverra, magna ut tempor tristique, velit justo hendrerit lacus, sit amet auctor nunc lacus vitae felis. Etiam pharetra elit quis pellentesque bibendum. Duis diam mauris, molestie interdum aliquet vitae, posuere eget dolor. Praesent feugiat, eros at feugiat porttitor, dui magna volutpat risus, sit amet convallis ex metus', 'Evitar el contacto con ojos y piel irritada editado', 'Ver envase editado', ''),
(11, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras fermentum euismod est. Vestibulum turpis sapien, porta et velit quis, ultrices bibendum justo. Vestibulum tristique imperdiet gravida. Sed in lobortis elit. Nullam hendrerit dui nec eleifend tincidunt. Aenean mattis, erat sit amet blandit eleifend, tortor justo tincidunt urna, ut ullamcorper nisl elit quis erat. Proin luctus ligula quis imperdiet vestibulum. Mauris in nisl in nisl imperdiet facilisis et id nulla. Donec at maximus null', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras fermentum euismod est. Vestibulum turpis sapien, porta et velit quis, ultrices bibendum justo. Vestibulum tristique imperdiet gravida. Sed in lobortis elit. Nullam hendrerit dui nec eleifend tincidunt. Aenean mattis, erat sit amet blandit eleifend, tortor justo tincidunt urna, ut ullamcorper nisl elit quis erat. Proin luctus ligula quis imperdiet vestibulum. Mauris in nisl in nisl imperdiet facilisis et id nulla. Donec at maximus null', 'images/62608ee7c8ae3.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras fermentum euismod est. Vestibulum turpis sapien, porta et velit quis, ultrices bibendum justo. Vestibulum tristique imperdiet gravida. Sed in lobortis elit. Nullam hendrerit dui nec eleifend tincidunt. Aenean mattis, erat sit amet blandit eleifend, tortor justo tincidunt urna, ut ullamcorper nisl elit quis erat. Proin luctus ligula quis imperdiet vestibulum. Mauris in nisl in nisl imperdiet facilisis et id nulla. Donec at maximus null', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras fermentum euismod est. Vestibulum turpis sapien, porta et velit quis, ultrices bibendum justo. Vestibulum tristique imperdiet gravida. Sed in lobortis elit. Nullam hendrerit dui nec eleifend tincidunt. Aenean mattis, erat sit amet blandit eleifend, tortor justo tincidunt urna, ut ullamcorper nisl elit quis erat. Proin luctus ligula quis imperdiet vestibulum. Mauris in nisl in nisl imperdiet facilisis et id nulla. Donec at maximus null', 'editado', 'lorep IPSUUUUUMMMMM IIIIIIPPPPSUUUUUMMM!');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(9) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `pass` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `pass`) VALUES
(3, 'mondocosmetica@admin', '$2y$10$c8YQ.uEazrNHaWcCYxZQLez6XoRxqjhOea6qbn0Xi8xHCa33cNZlW');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-09-2018 a las 19:10:59
-- Versión del servidor: 10.1.32-MariaDB
-- Versión de PHP: 7.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `buffetesosa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_agenda`
--

CREATE TABLE `tbl_agenda` (
  `agenda_codigo` int(11) NOT NULL,
  `agenda_asunto` text,
  `agenda_fechainicio` datetime DEFAULT NULL,
  `agenda_fechafinal` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_caso`
--

CREATE TABLE `tbl_caso` (
  `caso_codigo` int(11) NOT NULL,
  `cliente_codigo` int(11) DEFAULT NULL,
  `categoriacaso_codigo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_caso`
--

INSERT INTO `tbl_caso` (`caso_codigo`, `cliente_codigo`, `categoriacaso_codigo`) VALUES
(1, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_categoriacaso`
--

CREATE TABLE `tbl_categoriacaso` (
  `categoriacaso_codigo` int(11) NOT NULL,
  `categoriacaso_nombre` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_categoriacaso`
--

INSERT INTO `tbl_categoriacaso` (`categoriacaso_codigo`, `categoriacaso_nombre`) VALUES
(1, 'JUICIO CIVIL'),
(2, 'JUICIO LABORAL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cliente`
--

CREATE TABLE `tbl_cliente` (
  `cliente_codigo` int(11) NOT NULL,
  `cliente_nombre` text,
  `cliente_apellido` text,
  `cliente_identidad` text,
  `departamento_codigo` int(11) DEFAULT NULL,
  `municipio_codigo` int(11) DEFAULT NULL,
  `cliente_correo` text,
  `categoriacaso_codigo` int(11) DEFAULT NULL,
  `cliente_direccion` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_cliente`
--

INSERT INTO `tbl_cliente` (`cliente_codigo`, `cliente_nombre`, `cliente_apellido`, `cliente_identidad`, `departamento_codigo`, `municipio_codigo`, `cliente_correo`, `categoriacaso_codigo`, `cliente_direccion`) VALUES
(1, 'David Humberto', 'Alvarado Muñoz', '0510-1996-00843', 6, 63, 'davidalvarado470@gmail.com', 2, 'Colonia La Aurora');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_clientetelefono`
--

CREATE TABLE `tbl_clientetelefono` (
  `telefono_codigo` int(11) NOT NULL,
  `cliente_codigo` int(11) DEFAULT NULL,
  `telefono_telefono` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_clientetelefono`
--

INSERT INTO `tbl_clientetelefono` (`telefono_codigo`, `cliente_codigo`, `telefono_telefono`) VALUES
(1, 1, '(504) 9938-5859'),
(2, 1, '(504) 2234-5670');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_departamento`
--

CREATE TABLE `tbl_departamento` (
  `departamento_codigo` int(11) NOT NULL,
  `departamento_nombre` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_departamento`
--

INSERT INTO `tbl_departamento` (`departamento_codigo`, `departamento_nombre`) VALUES
(1, 'ATLANTIDA'),
(2, 'CHOLUTECA'),
(3, 'COLON'),
(4, 'COMAYAGUA'),
(5, 'COPAN'),
(6, 'CORTES'),
(7, 'EL PARAISO'),
(8, 'FRANCISCO MORAZAN'),
(9, 'GRACIAS A DIOS'),
(10, 'INTIBUCA'),
(11, 'ISLAS DE LA BAHIA'),
(12, 'LA PAZ'),
(13, 'LEMPIRA'),
(14, 'OCOTEPEQUE'),
(15, 'OLANCHO'),
(16, 'SANTA BARBARA'),
(17, 'VALLE'),
(18, 'YORO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_municipio`
--

CREATE TABLE `tbl_municipio` (
  `municipio_codigo` int(11) NOT NULL,
  `municipio_nombre` text,
  `departamento_codigo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_municipio`
--

INSERT INTO `tbl_municipio` (`municipio_codigo`, `municipio_nombre`, `departamento_codigo`) VALUES
(1, 'LA CEIBA', 1),
(2, 'TELA', 1),
(3, 'JUTIAPA', 1),
(4, 'LA MASICA', 1),
(5, 'SAN FRANCISCO', 1),
(6, 'ARIZONA', 1),
(7, 'ESPARTA', 1),
(8, 'EL PORVENIR', 1),
(9, 'TRUJILLO', 3),
(10, 'BALFATE', 3),
(11, 'IRIONA', 3),
(12, 'LIMON', 3),
(13, 'SABA', 3),
(14, 'SANTA FE', 3),
(15, 'SANTA ROSA DE AGUAN', 3),
(16, 'SONAGUERA', 3),
(17, 'TOCOA', 3),
(18, 'BONITO ORIENTAL', 3),
(19, 'COMAYAGUA', 4),
(20, 'AJUTERIQUE', 4),
(21, 'EL ROSARIO', 4),
(22, 'ESQUIAS', 4),
(23, 'HUMUYA', 4),
(24, 'LA LIBERTAD', 4),
(25, 'LAMANI', 4),
(26, 'LA TRINIDAD', 4),
(27, 'LEJAMANI', 4),
(28, 'MEAMBAR', 4),
(29, 'MINAS DE ORO', 4),
(30, 'OJOS DE AGUA', 4),
(31, 'SAN JERONIMO', 4),
(32, 'SAN JOSE DE COMAYAGUA', 4),
(33, 'SAN JOSE DEL POTRERO', 4),
(34, 'SAN LUIS', 4),
(35, 'SAN SEBASTIAN', 4),
(36, 'SIGUATEPEQUE', 4),
(37, 'VILLA DE SAN ANTONIO', 4),
(38, 'LAS LAJAS', 4),
(39, 'TAULABE', 4),
(40, 'SANTA ROSA DE COPAN', 5),
(41, 'CABAÑAS', 5),
(42, 'CONCEPCION', 5),
(43, 'COPAN RUINAS', 5),
(44, 'CORQUIN', 5),
(45, 'CUCUYAGUA', 5),
(46, 'DOLORES', 5),
(47, 'DULCE NOMBRE', 5),
(48, 'EL PARAISO', 5),
(49, 'FLORIDA', 5),
(50, 'LA JIGUA', 5),
(51, 'LA UNION', 5),
(52, 'NUEVA ARCADIA', 5),
(53, 'SAN AGUSTIN', 5),
(54, 'SAN ANTONIO', 5),
(55, 'SAN GERONIMO', 5),
(56, 'SAN JOSE', 5),
(57, 'SAN JUAN DE OPOA', 5),
(58, 'SAN NICOLAS', 5),
(59, 'SAN PEDRO', 5),
(60, 'SANTA RITA', 5),
(61, 'TRINIDAD DE COPAN', 5),
(62, 'VERACRUZ', 5),
(63, 'SAN PEDRO SULA', 6),
(64, 'CHOLOMA', 6),
(65, 'OMOA', 6),
(66, 'PIMIENTA', 6),
(67, 'POTRERILLOS', 6),
(68, 'PUERTO CORTES', 6),
(69, 'SAN ANTONIO DE CORTES', 6),
(70, 'SAN FRANCISCO DE YOJOA', 6),
(71, 'SAN MANUEL', 6),
(72, 'SANTA CRUZ DE YOJOA', 6),
(73, 'VILLANUEVA', 6),
(74, 'LA LIMA', 6),
(75, 'CHOLUTECA', 2),
(76, 'APACILAGUA', 2),
(77, 'CONCEPCION DE MARIA', 2),
(78, 'DUYURE', 2),
(79, 'EL CORPUS', 2),
(80, 'EL TRIUNFO', 2),
(81, 'MARCOVIA', 2),
(82, 'MOROLICA', 2),
(83, 'NAMASIGUE', 2),
(84, 'OROCUINA', 2),
(85, 'PESPIRE', 2),
(86, 'SAN ANTONIO DE FLORES', 2),
(87, 'SAN ISIDRO', 2),
(88, 'SAN JOSE', 2),
(89, 'SAN MARCOS DE COLON', 2),
(90, 'SANTA ANA DE YUSGUARE', 2),
(91, 'YUSCARAN', 7),
(92, 'ALAUCA', 7),
(93, 'DANLI', 7),
(94, 'EL PARAISO', 7),
(95, 'GUINOPE', 7),
(96, 'JACALEAPA', 7),
(97, 'LIURE', 7),
(98, 'MOROCELI', 7),
(99, 'OROPOLI', 7),
(100, 'POTRERILLOS', 7),
(101, 'SAN ANTONIO DE FLORES', 7),
(102, 'SAN LUCAS', 7),
(103, 'SAN MATIAS', 7),
(104, 'SOLEDAD', 7),
(105, 'TEUPASENTI', 7),
(106, 'TEXIGUAT', 7),
(107, 'VADO ANCHO', 7),
(108, 'YAUYUPE', 7),
(109, 'TROJES', 7),
(110, 'DISTRITO CENTRAL', 8),
(111, 'ALUBAREN', 8),
(112, 'CEDROS', 8),
(113, 'CURAREN', 8),
(114, 'EL PORVENIR', 8),
(115, 'GUAIMACA', 8),
(116, 'LA LIBERTAD', 8),
(117, 'LA VENTA', 8),
(118, 'LEPATERIQUE', 8),
(119, 'MARAITA', 8),
(120, 'MARALE', 8),
(121, 'NUEVA ARMENIA', 8),
(122, 'OJOJONA', 8),
(123, 'ORICA', 8),
(124, 'REITOCA', 8),
(125, 'SABANAGRANDE', 8),
(126, 'SAN ANTONIO DE ORIENTE', 8),
(127, 'SAN BUENAVENTURA', 8),
(128, 'SAN IGNACIO', 8),
(129, 'SAN JUAN DE FLORES', 8),
(130, 'SAN MIGUELITO', 8),
(131, 'SANTA ANA', 8),
(132, 'SANTA LUCIA', 8),
(133, 'TALANGA', 8),
(134, 'TATUMBLA', 8),
(135, 'VALLE DE ANGELES', 8),
(136, 'VILLA DE SAN FRANCISCO', 8),
(137, 'VALLECILLO', 8),
(138, 'PUERTO LEMPIRA', 9),
(139, 'BRUS LAGUNA', 9),
(140, 'AHUAS', 9),
(141, 'JUAN FRANCISCO BULNES', 9),
(142, 'RAMON VILLEDA MORALES', 9),
(143, 'WANPUSIRPE', 9),
(144, 'LA ESPERANZA', 10),
(145, 'CAMASCA', 10),
(146, 'COLOMONCAGUA', 10),
(147, 'CONCEPCION', 10),
(148, 'DOLORES', 10),
(149, 'INTIBUCA', 10),
(150, 'JESUS DE OTORO', 10),
(151, 'MAGDALENA', 10),
(152, 'MASAGUARA', 10),
(153, 'SAN ANTONIO', 10),
(154, 'SAN ISIDRO', 10),
(155, 'SAN JUAN', 10),
(156, 'SAN MARCOS DE LA SIERRA', 10),
(157, 'SAN MIGUEL GUANCAPLA', 10),
(158, 'SANTA LUCIA', 10),
(159, 'YAMARANGUILA', 10),
(160, 'SAN FRANCISCO DE OPALACA', 10),
(161, 'ROATAN', 11),
(162, 'GUANAJA', 11),
(163, 'JOSE SANTOS GUARDIOLA', 11),
(164, 'UTILA', 11),
(165, 'LA PAZ', 12),
(166, 'AGUANQUETERIQUE', 12),
(167, 'CABAÑAS', 12),
(168, 'CANE', 12),
(169, 'CHINACLA', 12),
(170, 'GUAJIQUIRO', 12),
(171, 'LAUTERIQUE', 12),
(172, 'MARCALA', 12),
(173, 'MERCEDES DE ORIENTE', 12),
(174, 'OPATORO', 12),
(175, 'SAN ANTONIO DEL NORTE', 12),
(176, 'SAN JOSE', 12),
(177, 'SAN JUAN', 12),
(178, 'SAN PEDRO DE TUTULE', 12),
(179, 'SANTA ANA', 12),
(180, 'SANTA ELENA', 12),
(181, 'SANTA MARIA', 12),
(182, 'SANTIAGO DE PURINGLA', 12),
(183, 'YARULA', 12),
(184, 'GRACIAS', 13),
(185, 'BELEN', 13),
(186, 'CANDELARIA', 13),
(187, 'COLOLACA', 13),
(188, 'ERANDIQUE', 13),
(189, 'GUALCINCE', 13),
(190, 'GUARITA', 13),
(191, 'LA CAMPA', 13),
(192, 'LA IGUALA', 13),
(193, 'LAS FLORES', 13),
(194, 'LA UNION', 13),
(195, 'LA VIRTUD', 13),
(196, 'LEPAERA', 13),
(197, 'MAPULACA', 13),
(198, 'PIRAERA', 13),
(199, 'SAN ANDRES', 13),
(200, 'SAN FRANCISCO', 13),
(201, 'SAN JUAN GUARITA', 13),
(202, 'SAN MANUEL COLOHETE', 13),
(203, 'SAN RAFAEL', 13),
(204, 'SAN SEBASTIAN ', 13),
(205, 'SANTA CRUZ', 13),
(206, 'TALGUA', 13),
(207, 'TAMBLA', 13),
(208, 'TOMALA', 13),
(209, 'VALLADOLID', 13),
(210, 'VIRGINIA', 13),
(211, 'SAN MARCOS DE CAIQUIN', 13),
(212, 'OCOTEPEQUE', 14),
(213, 'BELEN GUALCHO', 14),
(214, 'CONCEPCION', 14),
(215, 'DOLORES MERENDON', 14),
(216, 'FRATERNIDAD', 14),
(217, 'LA ENCARNACION', 14),
(218, 'LA LABOR', 14),
(219, 'LUCERNA', 14),
(220, 'MERCEDES', 14),
(221, 'SAN FERNANDO', 14),
(222, 'SAN FRANCISCO DEL VALLE', 14),
(223, 'SAN JORGE', 14),
(224, 'SAN MARCOS', 14),
(225, 'SANTA FE', 14),
(226, 'SENSENTI', 14),
(227, 'SINUAPA', 14),
(228, 'JUTICALPA', 15),
(229, 'CAMPAMENTO', 15),
(230, 'CATACAMAS', 15),
(231, 'CONCORDIA', 15),
(232, 'DULCE NOMBRE DE CULMI', 15),
(233, 'EL ROSARIO', 15),
(234, 'ESQUIPULAS DEL NORTE', 15),
(235, 'GUALACO', 15),
(236, 'GUARIZAMA', 15),
(237, 'GUATA', 15),
(238, 'GUAYAPE', 15),
(239, 'JANO', 15),
(240, 'LA UNION', 15),
(241, 'MANGULILE', 15),
(242, 'MANTO', 15),
(243, 'SALAMA', 15),
(244, 'SAN ESTEBAN', 15),
(245, 'SAN FRANCISCO DE BECERRA', 15),
(246, 'SAN FRANCISCO DE LA PAZ', 15),
(247, 'SILCA', 15),
(248, 'YOCON', 15),
(249, 'PATUCA', 15),
(250, 'SANTA BARBARA', 16),
(251, 'ARADA', 16),
(252, 'ATIMA', 16),
(253, 'AZACUALPA', 16),
(254, 'CEGUACA', 16),
(255, 'CONCEPCION DEL NORTE', 16),
(256, 'CONCEPCION DEL SUR', 16),
(257, 'CHINDA', 16),
(258, 'EL NISPERO', 16),
(259, 'GUALALA', 16),
(260, 'ILAMA', 16),
(261, 'LAS VEGAS', 16),
(262, 'MACUELIZO', 16),
(263, 'NARANJITO', 16),
(264, 'NUEVO CELILAC', 16),
(265, 'NUEVA FRONTERA', 16),
(266, 'PETOA', 16),
(267, 'PROTECCION', 16),
(268, 'QUIMISTAN', 16),
(269, 'SAN FRANCISCO DE OJUERA', 16),
(270, 'SAN JOSE DE LAS COLINAS', 16),
(271, 'SAN LUIS', 16),
(272, 'SAN MARCOS', 16),
(273, 'SAN NICOLAS', 16),
(274, 'SAN PEDRO ZACAPA', 16),
(275, 'SAN VICENTE CENTENARIO', 16),
(276, 'SANTA RITA', 16),
(277, 'TRINIDAD', 16),
(278, 'NACAOME', 17),
(279, 'ALIANZA', 17),
(280, 'AMAPALA', 17),
(281, 'ARAMECINA', 17),
(282, 'CARIDAD', 17),
(283, 'GOASCORAN', 17),
(284, 'LANGUE', 17),
(285, 'SAN FRANCISCO DE CORAY', 17),
(286, 'SAN LORENZO', 17),
(287, 'YORO', 18),
(288, 'ARENAL', 18),
(289, 'EL NEGRITO', 18),
(290, 'EL PROGRESO', 18),
(291, 'JOCON', 18),
(292, 'MORAZAN', 18),
(293, 'OLANCHITO', 18),
(294, 'SANTA RITA', 18),
(295, 'SULACO', 18),
(296, 'VICTORIA', 18),
(297, 'YORITO', 18);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuario`
--

CREATE TABLE `tbl_usuario` (
  `usuario_codigo` int(11) NOT NULL,
  `usuario_nombre` text,
  `usuario_apellido` text,
  `usuario_usuario` text,
  `usuario_clave` text,
  `usuario_fechacreacion` date DEFAULT NULL,
  `usuario_estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  ADD PRIMARY KEY (`agenda_codigo`);

--
-- Indices de la tabla `tbl_caso`
--
ALTER TABLE `tbl_caso`
  ADD PRIMARY KEY (`caso_codigo`),
  ADD KEY `cliente_codigo_fk_idx` (`cliente_codigo`),
  ADD KEY `categoriacaso_codigo_fk1_idx` (`categoriacaso_codigo`);

--
-- Indices de la tabla `tbl_categoriacaso`
--
ALTER TABLE `tbl_categoriacaso`
  ADD PRIMARY KEY (`categoriacaso_codigo`);

--
-- Indices de la tabla `tbl_cliente`
--
ALTER TABLE `tbl_cliente`
  ADD PRIMARY KEY (`cliente_codigo`),
  ADD KEY `departamento_codigo_idx` (`departamento_codigo`),
  ADD KEY `municipio_codigo_fk_idx` (`municipio_codigo`),
  ADD KEY `categoriacaso_codigo_fk_idx` (`categoriacaso_codigo`);

--
-- Indices de la tabla `tbl_clientetelefono`
--
ALTER TABLE `tbl_clientetelefono`
  ADD PRIMARY KEY (`telefono_codigo`),
  ADD KEY `cliente_codigo_fk1_idx` (`cliente_codigo`);

--
-- Indices de la tabla `tbl_departamento`
--
ALTER TABLE `tbl_departamento`
  ADD PRIMARY KEY (`departamento_codigo`);

--
-- Indices de la tabla `tbl_municipio`
--
ALTER TABLE `tbl_municipio`
  ADD PRIMARY KEY (`municipio_codigo`),
  ADD KEY `departamento_codigo_fk1_idx` (`departamento_codigo`);

--
-- Indices de la tabla `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
  ADD PRIMARY KEY (`usuario_codigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  MODIFY `agenda_codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_caso`
--
ALTER TABLE `tbl_caso`
  MODIFY `caso_codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tbl_categoriacaso`
--
ALTER TABLE `tbl_categoriacaso`
  MODIFY `categoriacaso_codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tbl_cliente`
--
ALTER TABLE `tbl_cliente`
  MODIFY `cliente_codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tbl_clientetelefono`
--
ALTER TABLE `tbl_clientetelefono`
  MODIFY `telefono_codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tbl_departamento`
--
ALTER TABLE `tbl_departamento`
  MODIFY `departamento_codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `tbl_municipio`
--
ALTER TABLE `tbl_municipio`
  MODIFY `municipio_codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=298;

--
-- AUTO_INCREMENT de la tabla `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
  MODIFY `usuario_codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_caso`
--
ALTER TABLE `tbl_caso`
  ADD CONSTRAINT `categoriacaso_codigo_fk1` FOREIGN KEY (`categoriacaso_codigo`) REFERENCES `tbl_categoriacaso` (`categoriacaso_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `cliente_codigo_fk` FOREIGN KEY (`cliente_codigo`) REFERENCES `tbl_cliente` (`cliente_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_cliente`
--
ALTER TABLE `tbl_cliente`
  ADD CONSTRAINT `categoriacaso_codigo_fk` FOREIGN KEY (`categoriacaso_codigo`) REFERENCES `tbl_categoriacaso` (`categoriacaso_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `departamento_codigo_fk` FOREIGN KEY (`departamento_codigo`) REFERENCES `tbl_departamento` (`departamento_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `municipio_codigo_fk` FOREIGN KEY (`municipio_codigo`) REFERENCES `tbl_municipio` (`municipio_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_clientetelefono`
--
ALTER TABLE `tbl_clientetelefono`
  ADD CONSTRAINT `cliente_codigo_fk1` FOREIGN KEY (`cliente_codigo`) REFERENCES `tbl_cliente` (`cliente_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_municipio`
--
ALTER TABLE `tbl_municipio`
  ADD CONSTRAINT `departamento_codigo_fk1` FOREIGN KEY (`departamento_codigo`) REFERENCES `tbl_departamento` (`departamento_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

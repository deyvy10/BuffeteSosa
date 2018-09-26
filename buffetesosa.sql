-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 26-09-2018 a las 04:34:20
-- Versión del servidor: 5.5.8
-- Versión de PHP: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `buffetesosa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_agenda`
--

CREATE TABLE IF NOT EXISTS `tbl_agenda` (
  `agenda_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `agenda_asunto` text,
  `agenda_fechainicio` datetime DEFAULT NULL,
  `agenda_fechafinal` datetime DEFAULT NULL,
  PRIMARY KEY (`agenda_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `tbl_agenda`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_caso`
--

CREATE TABLE IF NOT EXISTS `tbl_caso` (
  `caso_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `cliente_codigo` int(11) DEFAULT NULL,
  `categoriacaso_codigo` int(11) DEFAULT NULL,
  PRIMARY KEY (`caso_codigo`),
  KEY `cliente_codigo_fk_idx` (`cliente_codigo`),
  KEY `categoriacaso_codigo_fk1_idx` (`categoriacaso_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `tbl_caso`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_categoriacaso`
--

CREATE TABLE IF NOT EXISTS `tbl_categoriacaso` (
  `categoriacaso_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `categoriacaso_nombre` text,
  PRIMARY KEY (`categoriacaso_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `tbl_categoriacaso`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cliente`
--

CREATE TABLE IF NOT EXISTS `tbl_cliente` (
  `cliente_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `cliente_nombre` text,
  `cliente_apellido` text,
  `cliente_identidad` text,
  `departamento_codigo` int(11) DEFAULT NULL,
  `municipio_codigo` int(11) DEFAULT NULL,
  `cliente_correo` text,
  `categoriacaso_codigo` int(11) DEFAULT NULL,
  PRIMARY KEY (`cliente_codigo`),
  KEY `departamento_codigo_idx` (`departamento_codigo`),
  KEY `municipio_codigo_fk_idx` (`municipio_codigo`),
  KEY `categoriacaso_codigo_fk_idx` (`categoriacaso_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `tbl_cliente`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_clientetelefono`
--

CREATE TABLE IF NOT EXISTS `tbl_clientetelefono` (
  `telefono_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `cliente_codigo` int(11) DEFAULT NULL,
  `telefono_telefono` text,
  PRIMARY KEY (`telefono_codigo`),
  KEY `cliente_codigo_fk1_idx` (`cliente_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `tbl_clientetelefono`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_departamento`
--

CREATE TABLE IF NOT EXISTS `tbl_departamento` (
  `departamento_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `departamento_nombre` text,
  PRIMARY KEY (`departamento_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `tbl_departamento`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_municipio`
--

CREATE TABLE IF NOT EXISTS `tbl_municipio` (
  `municipio_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `municipio_nombre` text,
  PRIMARY KEY (`municipio_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `tbl_municipio`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuario`
--

CREATE TABLE IF NOT EXISTS `tbl_usuario` (
  `usuario_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_nombre` text,
  `usuario_apellido` text,
  `usuario_usuario` text,
  `usuario_clave` text,
  `usuario_fechacreacion` date DEFAULT NULL,
  `usuario_estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`usuario_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `tbl_usuario`
--


--
-- Filtros para las tablas descargadas (dump)
--

--
-- Filtros para la tabla `tbl_caso`
--
ALTER TABLE `tbl_caso`
  ADD CONSTRAINT `cliente_codigo_fk` FOREIGN KEY (`cliente_codigo`) REFERENCES `tbl_cliente` (`cliente_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `categoriacaso_codigo_fk1` FOREIGN KEY (`categoriacaso_codigo`) REFERENCES `tbl_categoriacaso` (`categoriacaso_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_cliente`
--
ALTER TABLE `tbl_cliente`
  ADD CONSTRAINT `departamento_codigo_fk` FOREIGN KEY (`departamento_codigo`) REFERENCES `tbl_departamento` (`departamento_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `municipio_codigo_fk` FOREIGN KEY (`municipio_codigo`) REFERENCES `tbl_municipio` (`municipio_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `categoriacaso_codigo_fk` FOREIGN KEY (`categoriacaso_codigo`) REFERENCES `tbl_categoriacaso` (`categoriacaso_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_clientetelefono`
--
ALTER TABLE `tbl_clientetelefono`
  ADD CONSTRAINT `cliente_codigo_fk1` FOREIGN KEY (`cliente_codigo`) REFERENCES `tbl_cliente` (`cliente_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

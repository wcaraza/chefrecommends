
-- phpMyAdmin SQL Dump
-- version 2.11.11.3
-- http://www.phpmyadmin.net
--
-- Servidor: 50.63.226.201
-- Tiempo de generación: 25-07-2013 a las 22:06:40
-- Versión del servidor: 5.0.96
-- Versión de PHP: 5.1.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `chefrecommends`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcar la base de datos para la tabla `cliente`
--

INSERT INTO `cliente` VALUES(1, 'MESA 1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido`
--

CREATE TABLE `detalle_pedido` (
  `id` int(11) NOT NULL auto_increment,
  `idpedido` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `precio` double NOT NULL,
  `cantidad` int(11) NOT NULL,
  `total` double NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `detalle_pedido`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `id` int(11) NOT NULL auto_increment,
  `idcliente` int(11) NOT NULL,
  `total` double NOT NULL,
  `idestado` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `pedido`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `stock` int(11) NOT NULL,
  `precio` double NOT NULL,
  `idestado` int(11) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcar la base de datos para la tabla `producto`
--

INSERT INTO `producto` VALUES(1, 'Seco a la norteña', '', 30, 15, 1, 'http://a3.twimg.com/profile_images/670625317/aam-logo-v3-twitter.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_galeria`
--

CREATE TABLE `producto_galeria` (
  `id` int(11) NOT NULL auto_increment,
  `idproducto` int(11) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `idestado` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcar la base de datos para la tabla `producto_galeria`
--

INSERT INTO `producto_galeria` VALUES(1, 1, 'http://farm6.static.flickr.com/5186/5841048399_8d9d7aeefe.jpg', '5841048399_8d9d7aeefe.jpg', 1);
INSERT INTO `producto_galeria` VALUES(2, 1, 'http://www.generaccion.com/w/imagenes/gastronomia/recetas/frijoles-con-seco.jpg', 'frijoles-con-seco.jpg', 1);

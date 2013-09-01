--Prueba David Timana Contribuyente
-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 31-08-2013 a las 19:43:42
-- Versión del servidor: 5.5.32
-- Versión de PHP: 5.4.6-1ubuntu1.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `sirene`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblcargo`
--

CREATE TABLE IF NOT EXISTS `tblcargo` (
  `seccargo` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`seccargo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblcarrera`
--

CREATE TABLE IF NOT EXISTS `tblcarrera` (
  `seccarrera` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`seccarrera`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblcurso`
--

CREATE TABLE IF NOT EXISTS `tblcurso` (
  `seccurso` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`seccurso`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbldepartamento`
--

CREATE TABLE IF NOT EXISTS `tbldepartamento` (
  `secdepartamento` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  `secpais` int(11) NOT NULL,
  PRIMARY KEY (`secdepartamento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblestrato`
--

CREATE TABLE IF NOT EXISTS `tblestrato` (
  `secestrato` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`secestrato`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblmateria`
--

CREATE TABLE IF NOT EXISTS `tblmateria` (
  `secmateria` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`secmateria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblpersona`
--

CREATE TABLE IF NOT EXISTS `tblpersona` (
  `secpersona` int(11) NOT NULL AUTO_INCREMENT,
  `pnombre` varchar(45) NOT NULL,
  `snombre` varchar(45) DEFAULT NULL,
  `papellido` varchar(45) NOT NULL,
  `sapellido` varchar(45) DEFAULT NULL,
  `identificacion` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `movil` varchar(45) NOT NULL,
  `telefonofijo` varchar(45) DEFAULT NULL,
  `edad` int(11) NOT NULL,
  `fnacimiento` date NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `sectipopersona` int(11) NOT NULL,
  `secdocumento` int(11) NOT NULL,
  `sectiposangre` int(11) NOT NULL,
  `secestrato` int(11) NOT NULL,
  `seccarrera` int(11) DEFAULT NULL,
  `seccolegioprocedencia` int(11) DEFAULT NULL,
  `seczona` int(11) DEFAULT NULL,
  `secciudad` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`secpersona`),
  UNIQUE KEY `identificacion_UNIQUE` (`identificacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblpersonacarrera`
--

CREATE TABLE IF NOT EXISTS `tblpersonacarrera` (
  `secpersonacarrera` int(11) NOT NULL AUTO_INCREMENT,
  `secpersona` int(11) NOT NULL,
  `seccarrera` int(11) NOT NULL,
  PRIMARY KEY (`secpersonacarrera`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblsexo`
--

CREATE TABLE IF NOT EXISTS `tblsexo` (
  `secsexo` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`secsexo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbltipodocumento`
--

CREATE TABLE IF NOT EXISTS `tbltipodocumento` (
  `sectipodocumento` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`sectipodocumento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbltipopersona`
--

CREATE TABLE IF NOT EXISTS `tbltipopersona` (
  `sectipopersona` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`sectipopersona`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbluniversidad`
--

CREATE TABLE IF NOT EXISTS `tbluniversidad` (
  `secuniversidad` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `movil` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) NOT NULL,
  `nit` varchar(45) NOT NULL,
  `sitioweb` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`secuniversidad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblusuario`
--

CREATE TABLE IF NOT EXISTS `tblusuario` (
  `secusuario` int(11) NOT NULL AUTO_INCREMENT,
  `secpersona` int(11) DEFAULT NULL,
  `secrol` int(11) DEFAULT NULL,
  `login` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `sesion` int(11) DEFAULT NULL,
  PRIMARY KEY (`secusuario`),
  UNIQUE KEY `login_UNIQUE` (`login`),
  UNIQUE KEY `password_UNIQUE` (`password`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblzona`
--

CREATE TABLE IF NOT EXISTS `tblzona` (
  `seczona` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`seczona`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 01-09-2013 a las 02:42:23
-- Versión del servidor: 5.5.8
-- Versión de PHP: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `sirene`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblacudientes`
--

CREATE TABLE IF NOT EXISTS `tblacudientes` (
  `secacudientes` int(11) NOT NULL AUTO_INCREMENT,
  `secestudiante` int(11) NOT NULL,
  PRIMARY KEY (`secacudientes`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `tblacudientes`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblbarrio`
--

CREATE TABLE IF NOT EXISTS `tblbarrio` (
  `secbarrio` int(11) NOT NULL AUTO_INCREMENT,
  `descripcionbarrio` varchar(45) NOT NULL,
  `secciudad` int(11) NOT NULL,
  PRIMARY KEY (`secbarrio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `tblbarrio`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblcargodocente`
--

CREATE TABLE IF NOT EXISTS `tblcargodocente` (
  `seccargodocente` int(11) NOT NULL AUTO_INCREMENT,
  `secpersona` int(11) NOT NULL,
  `seccargo` int(11) NOT NULL,
  PRIMARY KEY (`seccargodocente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `tblcargodocente`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblciudad`
--

CREATE TABLE IF NOT EXISTS `tblciudad` (
  `secciudad` int(11) NOT NULL AUTO_INCREMENT,
  `secbarrio` int(11) NOT NULL,
  `secdepartamento` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`secciudad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `tblciudad`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblcolegioprocedencia`
--

CREATE TABLE IF NOT EXISTS `tblcolegioprocedencia` (
  `seccolegioprocedencia` int(11) NOT NULL AUTO_INCREMENT,
  `secinstituciones` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`seccolegioprocedencia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `tblcolegioprocedencia`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbldocumento`
--

CREATE TABLE IF NOT EXISTS `tbldocumento` (
  `secdocumento` int(11) NOT NULL AUTO_INCREMENT,
  `sectipodedocumento` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`secdocumento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `tbldocumento`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblgrado`
--

CREATE TABLE IF NOT EXISTS `tblgrado` (
  `secgrado` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`secgrado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `tblgrado`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblinstitucion`
--

CREATE TABLE IF NOT EXISTS `tblinstitucion` (
  `secinstitucion` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `nit` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`secinstitucion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `tblinstitucion`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblpais`
--

CREATE TABLE IF NOT EXISTS `tblpais` (
  `secpais` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`secpais`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `tblpais`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblrol`
--

CREATE TABLE IF NOT EXISTS `tblrol` (
  `secrol` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`secrol`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `tblrol`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbltipodesangre`
--

CREATE TABLE IF NOT EXISTS `tbltipodesangre` (
  `sectipodesangre` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`sectipodesangre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `tbltipodesangre`
--


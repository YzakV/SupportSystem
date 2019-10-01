-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-08-2019 a las 23:41:31
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `test`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `contraseña` text NOT NULL,
  `nombre` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area`
--

CREATE TABLE `area` (
  `id_area` int(11) NOT NULL,
  `area` varchar(250) NOT NULL,
  `responsable` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `area`
--

INSERT INTO `area` (`id_area`, `area`, `responsable`) VALUES
(1, 'Direccion  General', 'Guillermo Rafael Santiago Rodriguez'),
(2, 'Secretarío Técnico', 'Angel Eduardo Alvarado Gomez'),
(3, 'Director  General de Adjunta', 'N.D'),
(4, 'Direccion de Finanzas', 'N.D'),
(5, 'Subdirección de Recursos Finanzas', 'Jose Alejandro Lopez Melquiades '),
(6, 'Depto. de Contabilidad', 'Esther Angelica Martinez Sanchez'),
(7, 'Depto. de Presupuesto', 'Liset Adriana Martinez Garcia '),
(8, 'Depto. de Ingresos y Egresos', 'Miguel Angel  Lopez'),
(9, 'Direccion de Recursos Humanos y Materiales', 'Bahar Malek Hernandez'),
(10, 'Subdirección de Recursos Materiales', 'Soledad del Pilar Gonzaga  Baez'),
(11, 'Depto. de Recursos Materiales y Serv. Generales', 'Yair Miguel  Mendoza Solis '),
(12, 'Subdirección de Personal', 'Soldei Lopez Pineda'),
(13, 'Depto. de Nóminas', 'Alma Angelica Menddez Gomez'),
(14, 'Depto de  Capacitacion, Reclutamiento y Selecion de Personal', 'Karen Saldaña Nuñez'),
(15, 'Sindicato', 'Adriana Isabel Blancas Velazquez'),
(16, 'Direccion de Asuntos Juridicos', 'Gabino Jesus Castañeda Cardenas '),
(17, 'Subdireccion de lo Normativo y lo Consultivo', 'Israel Cruz Avedaño'),
(18, 'Subdirección de lo Contencioso', 'Lucero Aguilar Perez'),
(19, 'Direccion de Bienestar y Estimulos a la Juventud ', 'Fidel Kalax Ruiz Burgete'),
(20, 'Subdirección de Centros Interactivos', 'Blanca Gabriela de la Rosa '),
(21, 'Subdireccion de  Capacitacion y  Empleo', 'Karen Hurtado Arana'),
(22, 'Depto. de Bolsa de Trabajo, Empleo y Capacitación', 'Octavio Jimenez Hernandez'),
(23, 'Subdirección de Estímulos a la Juventud', 'N.D'),
(24, 'Depto. de Empresas Juveniles', 'Norma Villareal Soriano'),
(25, 'Depto. de Supervisión', 'N.D'),
(26, 'Código Joven', 'Jose Luis Ortega '),
(27, 'Direccion de Evaluacion y Control', 'Adolfo Caballero '),
(28, 'Subdirección de Seguimiento y Análisis', 'Carlos Manuel Feria Torres '),
(29, 'Depto deOperacion Para la Accion ', 'N.D'),
(30, 'Subdireccion de  Evaluacion', 'America Vazquez'),
(31, 'Direccion de Coordinacion Sectorial  y Regional ', 'Nayeli Edith Yoval Segura '),
(32, 'Subdirección de Coordinación Sectorial y Regional', 'Monica Ramirez'),
(33, 'Depto. de Coord. Zona Sur', 'Gabriela Torres Martinez '),
(34, 'Depto. de Coord. Zona Norte', 'Diego Roberto Guerrero Ruiz '),
(35, 'Depto de Supervicion Operativa ', 'N.D'),
(36, 'Subdirección de Coordinación Sectorial', 'Lourdes Garcia Hernandez'),
(37, 'Depto. de Coord. con Instituciones Públicas', 'N.D'),
(38, 'Depto de Formacion Continua ', 'N.D'),
(39, 'Direccion de Comunicación Social ', 'Gustavo Adolfo Ramirez Morales'),
(40, 'Subdirección de Planeación y Medios', 'Francisco Javier Quintero Flores '),
(41, 'Diseño', 'Marisol Gandarrilla Aja  '),
(42, 'Subdirección de Prensa y Relaciones Públicas', 'Samatha Isabel Leyva Oviedo'),
(43, 'Subdireccion de Asuntos Internacionales ', 'Greissy Esther Lopez Martinez'),
(44, 'Radio Poder Joven y TV', 'N.D'),
(45, 'Direccion de Salud Equidad y Servicios a Jovenes ', 'Jazmin Margarita Flores Castillo'),
(46, 'Subdireccion de Equidad y Servicios a Jovenes ', 'Sergio Rafael Oñate Soto '),
(47, 'Depto de Genero ', 'Hector Ernesto Lopez Garcia'),
(48, 'Cendoc', 'N.D'),
(49, 'Depto de Prevencion de Adicciones ', 'Jazmin Flores '),
(50, 'Direccion de Investigacion y Estudios sobre Juventud', 'Samuel Abraham Torres Mendez '),
(51, 'Subdirección de Investigación', 'Jorge Rivera Ambrosio'),
(52, 'Depto de Informacion y  Documentacion ', 'Jorge Rivera Ambrosio'),
(53, 'Subdirección de Integración y Actualización', 'N.D'),
(54, 'Direccion de Enlaces con Organizaciones Juveniles ', 'N.D'),
(55, 'Subdirección de Fomento a Organizaciones Juveniles', 'Laura Yescas Hernandez o Rosa Maria Esponosa Reyes'),
(56, 'Depto. de Fomento a Organizaciones Juveniles', 'Javier Prieto Gandiaga  '),
(57, 'Subdirección de Proyectos', 'Edivaldo Cruz Rodriguez '),
(58, 'Depto. de Vinculación con Organizaciones Juveniles', 'Jesus Alberto Romero Torres '),
(59, 'Subdireccion de Sistemas', 'Alexis Antonio Sanchez Solis '),
(60, 'Depto. de Soporte Técnico', 'Jose Daniel Ordaz Huerta '),
(61, 'Organo Interno de Control ', 'Francisco  Dominguez Gutierrez '),
(62, 'Auditoria Interna', 'Sergio Rafael Oñate Soto '),
(63, 'Responsabilidades y Quejas', 'Eusebio Antonio Cortez Mendoza '),
(64, 'Depto de Trabajo Juvenil Comunitario', 'N.D'),
(65, 'Site', 'N.D');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `usuario` varchar(20) NOT NULL,
  `contraseña` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`usuario`, `contraseña`) VALUES
('carolina', '123456'),
('juan', 'perez'),
('kaleido', '123'),
('luis', '1234');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reporte`
--

CREATE TABLE `reporte` (
  `id_reporte` int(11) NOT NULL,
  `fecha` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `Hora` varchar(10) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `encargado_area` varchar(20) NOT NULL,
  `area` varchar(20) NOT NULL,
  `asunto` varchar(30) NOT NULL,
  `descripcion` varchar(140) NOT NULL,
  `treporte` varchar(20) NOT NULL,
  `tservicio` varchar(20) NOT NULL,
  `provedor` varchar(20) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `marca` int(1) NOT NULL,
  `modelo` int(1) NOT NULL,
  `serie` int(1) NOT NULL,
  `id_equipo` varchar(5) NOT NULL,
  `solucion` varchar(2) NOT NULL,
  `actividad` varchar(150) NOT NULL,
  `calidad` varchar(20) NOT NULL,
  `atencion` varchar(20) NOT NULL,
  `nivel` varchar(20) NOT NULL,
  `tiempo` varchar(20) NOT NULL,
  `Firma` varchar(80) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `reporte`
--

INSERT INTO `reporte` (`id_reporte`, `fecha`, `Hora`, `nombre`, `encargado_area`, `area`, `asunto`, `descripcion`, `treporte`, `tservicio`, `provedor`, `usuario`, `marca`, `modelo`, `serie`, `id_equipo`, `solucion`, `actividad`, `calidad`, `atencion`, `nivel`, `tiempo`, `Firma`, `status`) VALUES
(1, '2019-08-27', '17:05:37', 'isac', 'eduardo', 'Sistemas', 'Rebell Yell', 'Billy Idol', '', '', '', 'Sistemas3', 0, 0, 0, '', '', '', 'malo', 'malo', 'malo', 'malo', 'firmas/firma.1.png', 'pendiente'),
(2, '2019-08-28', '18:41:12', 'Hernandez Zamora ', '', 'Subdireccion de Sist', 'Errores de Arrays', 'Index ', '', '', '', 'sistemas3', 0, 0, 0, '', '', '', '', '', '', '', '', 'pendiente'),
(3, '2019-08-28', '18:43:14', 'Juliana', 'Alexis Antonio Sanch', 'Subdireccion de Sist', 'Otra vez la wea esta', 'glueeeee', '', '', '', 'sistemas3', 0, 0, 0, '', '', '', '', '', '', '', '', 'pendiente'),
(4, '2019-08-28', '19:39:20', '', 'Soldei Lopez Pineda', 'subdireccion de per', '', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', '', '', '', 'pendiente'),
(5, '2019-08-29', '16:17:46', '', 'N.D', 'cendoc', '', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', '', '', '', 'pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `id_area` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `no_serie` varchar(50) NOT NULL,
  `inventario` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `id_area`, `usuario`, `marca`, `modelo`, `no_serie`, `inventario`) VALUES
(1, 60, 'SOPORTE5', 'DELL', 'VOSTRO 3268', '2JC99M2', 'PC- 1'),
(2, 60, '', 'DELL', 'VOSTRO 3268', '5M9MWK2', 'PC-2'),
(3, 59, 'PRODRIGUES', 'DELL', 'VOSTRO 3268', '5M5RWK2', 'PC-3'),
(4, 59, 'SISTEMAS6', 'DELL', 'VOSTRO 3268', '5M9KWK2', 'PC-4'),
(5, 59, 'MPCSISTEMAS5', 'DELL', 'VOSTRO 3268', '5M3NWK2', 'PC-5'),
(6, 59, 'ALIZARDI', 'DELL', 'VOSTRO 3268', 'C3JNGM2', 'PC-6'),
(7, 18, 'LAGUILAR', 'DELL', 'VOSTRO 3268', '5LXGWK2', 'PC-7'),
(8, 24, '', 'DELL', 'VOSTRO 3268', '5M0JWK2', 'PC-8'),
(9, 59, 'SISTEMAS2', 'DELL', 'VOSTRO 3268', '5T9MWK2', 'PC-9'),
(10, 60, 'SOPORTE4', 'DELL', 'VOSTRO 3268', '5M6QWK2', 'PC-10'),
(11, 59, '', 'DELL', 'VOSTRO 3268', '2JX99M2', 'PC-11'),
(12, 59, 'SISTEMAS1', 'DELL', 'VOSTRO 3268', '5Y6NWK2', 'PC-12'),
(13, 19, 'MPCMREBOLLAR', 'DELL', 'VOSTRO 3268', '5XLQWK2', 'PC-13'),
(14, 19, 'NTORRES', 'DELL', 'VOSTRO 3268', '2GX79M2', 'PC-14'),
(15, 35, 'DJUVENIL11', 'DELL', 'VOSTRO 3268', '5XRPWK2', 'PC-15'),
(16, 50, 'KHURTADO', 'DELL', 'VOSTRO 3268', '5M8RWK2', 'PC-16'),
(17, 51, 'CENDOC05', 'DELL', 'VOSTRO 3268', '5M2QWK2', 'PC-17'),
(18, 52, 'LRANGEL', 'DELL', 'VOSTRO 3268', '5LTHWK2', 'PC-18'),
(19, 52, 'JRIVERA', 'DELL', 'VOSTRO 3268', '5LSHWK2', 'PC-19'),
(20, 38, 'CENDOC1', 'DELL', 'VOSTRO 3268', '5M4KWK2', 'PC-20'),
(21, 28, 'SUBEVAL3', 'DELL', 'VOSTRO 3268', '6XH79M2', 'PC-21'),
(22, 43, 'TRANSV1', 'DELL', 'VOSTRO 3268', 'F37QGM2', 'PC-22'),
(23, 48, 'SOPERATIVA1', 'DELL', 'VOSTRO 3268', '2J999M2', 'PC-23'),
(24, 53, 'AGONZALEZ', 'DELL', 'VOSTRO 3268', 'F3659M2', 'PC-24'),
(25, 60, 'SOPORTE4', 'DELL', 'VOSTRO 3268', '2GZX8M2', 'PC-25'),
(26, 35, 'DINVEST2', 'DELL', 'VOSTRO 3268', '6XDX8M2', 'PC-26'),
(27, 53, 'DCONTINUA1', 'DELL', 'VOSTRO 3268', '6XD79M2', 'PC-27'),
(28, 60, 'CVILLEGAS', 'DELL', 'VOSTRO 3268', '2JRB9M2', 'PC-28'),
(29, 50, 'LACEVEDO', 'DELL', 'VOSTRO 3268', '6XBB9M2', 'PC-29'),
(30, 38, 'SUBEVAL4', 'DELL', 'VOSTRO 3268', '2GR69M2', 'PC-30'),
(31, 33, 'GTORRES', 'DELL', 'VOSTRO 3268', '39GW8M2', 'PC-31'),
(32, 40, 'DILOFUERTE1', 'DELL', 'VOSTRO 3268', '6XT59M2', 'PC-32'),
(33, 31, '', 'DELL', 'VOSTRO 3268', '5Y7LWK2', 'PC-33'),
(34, 31, 'KSILVA', 'DELL', 'VOSTRO 3268', '6Z9X8M2', 'PC-34'),
(35, 31, 'ENUNEZ', 'DELL', 'VOSTRO 3268', 'D1TB9M2', 'PC-35'),
(36, 31, 'SECRETARIA4', 'DELL', 'VOSTRO 3268', '6Z659M2', 'PC-36'),
(37, 31, 'SECRETARIA3', 'DELL', 'VOSTRO 3268', '6XJC9M2', 'PC-37'),
(38, 31, 'AMENDEZ', 'DELL', 'VOSTRO 3268', '6Z169M2', 'PC-38'),
(39, 31, 'AMEDINA', 'DELL', 'VOSTRO 3268', '6YBW8M2', 'PC-39'),
(40, 42, 'SUBPRENSA5', 'DELL', 'VOSTRO 3268', '4FKW8M2', 'PC-40'),
(41, 32, 'SSECTORIAL5', 'DELL', 'VOSTRO 3268', 'D1T59M2', 'PC-41'),
(42, 47, 'PREVEA3', 'DELL', 'VOSTRO 3268', 'D1TX8M2', 'PC-42'),
(43, 49, 'FORTIZ', 'DELL', 'VOSTRO 3268', '6Y2X8M2', 'PC-43'),
(44, 31, 'NSANTIN', 'DELL', 'VOSTRO 3268', '6XZW8M2', 'PC-44'),
(45, 49, 'JGQUINTO', 'DELL', 'VOSTRO 3268', '6YL59M2', 'PC-45'),
(46, 45, '', 'DELL', 'VOSTRO 3268', '2GV49M2', 'PC-46'),
(47, 19, 'DCONTINUA6', 'DELL', 'VOSTRO 3268', 'HWGKGL2', 'PC-47'),
(48, 28, 'SEXUALIDAD', 'DELL', 'VOSTRO 3268', 'HZB7ZG2', 'PC-48'),
(49, 38, 'DCONTINUA2', 'DELL', 'VOSTRO 3268', 'F4FPGM2', 'PC-49'),
(50, 46, 'TERRITORIO1', 'DELL', 'VOSTRO 3268', 'HYNHGL2', 'PC-50'),
(51, 45, 'JFLORES', 'DELL', 'VOSTRO 3268', 'F4LQGM2', 'PC-51'),
(52, 46, '*dinvest9', 'DELL', 'VOSTRO 3268', 'HZBH8C2', 'PC-52'),
(53, 42, 'SUBPRENSA3', 'DELL', 'VOSTRO 3268', 'HZDMQG2', 'PC-53'),
(54, 46, 'DEPINDIG2', 'DELL', 'VOSTRO 3268', '6XRW8M2', 'PC-54'),
(55, 46, 'JVELAZQUEZ', 'DELL', 'VOSTRO 3268', '2GWX8M2', 'PC-55'),
(56, 19, 'MPCNMEJIA', 'DELL', 'VOSTRO 3268', 'F38NGM2', 'PC-56'),
(57, 46, 'ROCHOA', 'DELL', 'VOSTRO 3268', 'HZD6Z72', 'PC-57'),
(58, 49, 'DSALUD', 'DELL', 'VOSTRO 3268', 'HY4QGL2', 'PC-58'),
(59, 19, 'ESANCHEZ', 'DELL', 'VOSTRO 3268', 'HYSGGL2', 'PC-59'),
(60, 45, 'DSALUD.C', 'DELL', 'VOSTRO 3268', 'HXZMGL2', 'PC-60'),
(61, 50, 'FHERNANDEZ', 'DELL', 'VOSTRO 3268', 'F4HSGM2', 'PC-61'),
(62, 29, 'DOPERACION1', 'DELL', 'VOSTRO 3268', '6XG89M2', 'PC-62'),
(63, 45, 'KPEREZ', 'DELL', 'VOSTRO 3268', '2HTB9M2', 'PC-63'),
(64, 45, 'SJUVENILES2', 'DELL', 'VOSTRO 3268', 'HZF0Q52', 'PC-64'),
(65, 38, 'DCONTINUA3', 'DELL', 'VOSTRO 3268', 'HYPJGL2', 'PC-65'),
(66, 29, 'DOPERACION3', 'DELL', 'VOSTRO 3268', '2GHX8M2', 'PC-66'),
(67, 42, 'SUBPRENSA6', 'DELL', 'VOSTRO 3268', '6Z7C9M2', 'PC-67'),
(68, 54, 'FOMENTO1', 'DELL', 'VOSTRO 3268', 'HYVQGL2', 'PC-68'),
(69, 4, 'ASESORFIN', 'DELL', 'VOSTRO 3268', 'HZBCXD2', 'PC-69'),
(70, 42, 'SUBPRENSA4', 'DELL', 'VOSTRO 3268', 'HZF56K2', 'PC-70'),
(71, 55, 'LYESCAS', 'DELL', 'VOSTRO 3268', 'DPBJGL2', 'PC-71'),
(72, 54, 'FOMENTO6', 'DELL', 'VOSTRO 3268', 'HZC77J2', 'PC-72'),
(73, 54, 'TRANSV1', 'DELL', 'VOSTRO 3268', 'DH8NGL2', 'PC-73'),
(74, 54, 'JAMARTINEZ', 'DELL', 'VOSTRO 3268', 'HZCLBB2', 'PC-74'),
(75, 54, 'FOMENTO4', 'DELL', 'VOSTRO 3268', 'HWGNGL2', 'PC-75'),
(76, 55, 'LMORALES', 'DELL', 'VOSTRO 3268', 'HXZQGL2', 'PC-76'),
(77, 54, 'RMENDEZ', 'DELL', 'VOSTRO 3268', 'DK9SGM2', 'PC-77'),
(78, 54, 'TRANSV2', 'DELL', 'VOSTRO 3268', 'HY8LGL2', 'PC-78'),
(79, 54, 'PHUANTE', 'DELL', 'VOSTRO 3268', '2H089M2', 'PC-79'),
(80, 57, 'ECRUZR', 'DELL', 'VOSTRO 3268', 'HZCCYJ2', 'PC-80'),
(81, 54, '', 'DELL', 'VOSTRO 3268', 'HZB36K2', 'PC-81'),
(82, 54, 'AGALINDO', 'DELL', 'VOSTRO 3268', 'HXWQGL2', 'PC-82'),
(83, 54, '', 'DELL', 'VOSTRO 3268', 'HZCH8C2', 'PC-83'),
(84, 57, 'JPRIETO', 'DELL', 'VOSTRO 3268', 'HZF3M82', 'PC-84'),
(85, 54, 'OVARGAS', 'DELL', 'VOSTRO 3268', 'D24B9M2', 'PC-85'),
(86, 38, 'MLEAL', 'DELL', 'VOSTRO 3268', 'HZCYW72', 'PC-86'),
(87, 28, 'AVAZQUEZ', 'DELL', 'VOSTRO 3268', 'HYBNGL2', 'PC-87'),
(88, 28, 'JSARMIENTO', 'DELL', 'VOSTRO 3268', 'HZB5JG2', 'PC-88'),
(89, 28, 'SUBEVAL2', 'DELL', 'VOSTRO 3268', 'HZDH8C2', 'PC-89'),
(90, 28, 'HMARTINEZ', 'DELL', 'VOSTRO 3268', 'HZDKWK2', 'PC-90'),
(91, 35, 'SOPERATIVA3', 'DELL', 'VOSTRO 3268', 'HYMHGL2', 'PC-91'),
(92, 28, 'SUBEVAL1', 'DELL', 'VOSTRO 3268', '6XCB9M2', 'PC-92'),
(93, 28, '', 'DELL', 'VOSTRO 3268', 'D1V59M2', 'PC-93'),
(94, 28, 'SUBEVAL2', 'DELL', 'VOSTRO 3268', '6XY59M2', 'PC-94'),
(95, 20, 'AIGARCIA', 'DELL', 'VOSTRO 3268', 'F3P89M2', 'PC-95'),
(96, 35, 'SOPERATIVA5', 'DELL', 'VOSTRO 3268', '2HW99M2', 'PC-96'),
(97, 20, 'CENTROS3', 'DELL', 'VOSTRO 3268', 'D1T99M2', 'PC-97'),
(98, 15, 'SINDICATO2', 'DELL', 'VOSTRO 3268', 'D1VW8M2', 'PC-98'),
(99, 15, 'SINDICATO3', 'DELL', 'VOSTRO 3268', 'HXQLGL2', 'PC-99'),
(100, 15, 'SINDICATO1', 'DELL', 'VOSTRO 3268', 'F69W8M2', 'PC-100'),
(101, 20, 'ESERRANO', 'DELL', 'VOSTRO 3268', 'D1T79M2', 'PC-101'),
(102, 20, 'MELIAS', 'DELL', 'VOSTRO 3268', 'D1V49M2', 'PC-102'),
(103, 64, 'DJUVENIL2', 'DELL', 'VOSTRO 3268', 'D1VB9M2', 'PC-103'),
(104, 31, 'LACEVEDO', 'DELL', 'VOSTRO 3268', 'GYD01M2', 'PC-104'),
(105, 38, 'DCONTINUA4', 'DELL', 'VOSTRO 3268', '5T3JWK2', 'PC-105'),
(106, 64, 'DJUVENIL3', 'DELL', 'VOSTRO 3268', 'F5V89M2', 'PC-106'),
(107, 43, 'TRANSV5', 'DELL', 'VOSTRO 3268', '2K289M2', 'PC-107'),
(108, 43, 'VINCU2', 'DELL', 'VOSTRO 3268', '39G89M2', 'PC-108'),
(109, 43, 'TRANSV3', 'DELL', 'VOSTRO 3268', '6Y9W8M2', 'PC-109'),
(110, 64, 'DJUVENIL4', 'DELL', 'VOSTRO 3268', '6Y9B9M2', 'PC-110'),
(111, 63, 'ECORTES', 'DELL', 'VOSTRO 3268', 'D1V69M2', 'PC-111'),
(112, 28, 'CFLORES', 'DELL', 'VOSTRO 3268', 'F5MMGM2', 'PC-112'),
(113, 61, 'SONATE', 'DELL', 'VOSTRO 3268', '2J679M2', 'PC-113'),
(114, 24, 'EMPRESASJUB2', 'DELL', 'VOSTRO 3268', '5Y5MWK2', 'PC-114'),
(115, 24, 'GRIOS', 'DELL', 'VOSTRO 3268', '6XC89M2', 'PC-115'),
(116, 23, 'AHERNANDEZM', 'DELL', 'VOSTRO 3268', '5XNNWK2', 'PC-116'),
(117, 23, 'BECARIOS', 'DELL', 'VOSTRO 3268', '2H2B9M2', 'PC-117'),
(118, 22, 'OJIMENEZ', 'DELL', 'VOSTRO 3268', 'F3999M2', 'PC-118'),
(119, 22, 'DPEREZ', 'DELL', 'VOSTRO 3268', 'F3FX8M2', 'PC-119'),
(120, 59, 'ASANCHEZS', 'DELL', 'VOSTRO 3268', '6YJ79M2', 'PC-120'),
(121, 21, 'CLIRA', 'DELL', 'VOSTRO 3268', '6P041M2', 'PC-121'),
(122, 21, 'LSERRATO', 'DELL', 'VOSTRO 3268', '5LLMWK2', 'PC-122'),
(123, 23, 'TERRITORIO2', 'DELL', 'VOSTRO 3268', '6VG41M2', 'PC-123'),
(124, 23, 'JROMERO', 'DELL', 'VOSTRO 3268', '6P121M2', 'PC-124'),
(125, 35, 'CENTROS2', 'DELL', 'VOSTRO 3268', '6VJ11M2', 'PC-125'),
(126, 21, 'XGRANADOS', 'DELL', 'VOSTRO 3268', '8SDC9M2', 'PC-126'),
(127, 23, 'ARUIZ', 'DELL', 'VOSTRO 3268', '6TCX8M2', 'PC-127'),
(128, 22, 'MGALICIA', 'DELL', 'VOSTRO 3268', '6VFZ0M2', 'PC-128'),
(129, 20, 'NCASTRO', 'DELL', 'VOSTRO 3268', '6VH71M2', 'PC-129'),
(130, 23, 'LELORZA', 'DELL', 'VOSTRO 3268', '6T4B9M2', 'PC-130'),
(131, 24, 'COMPROBACIONES1', 'DELL', 'VOSTRO 3268', 'F9R99M2', 'PC-131'),
(132, 26, 'GFABELA', 'DELL', 'VOSTRO 3268', 'C3MRGM2', 'PC-132'),
(133, 23, 'VBAUTISTA', 'DELL', 'VOSTRO 3268', 'F9QW8M2', 'PC-133'),
(134, 19, 'JORTEGA', 'DELL', 'VOSTRO 3268', 'C7NPGM2', 'PC-134'),
(135, 20, 'VESTRADA', 'DELL', 'VOSTRO 3268', 'DK9VGM2', 'PC-135'),
(136, 28, 'LPUENTE', 'DELL', 'VOSTRO 3268', 'C9NVGM2', 'PC-136'),
(137, 26, 'RCHAVEZ', 'DELL', 'VOSTRO 3268', 'CBWZ0M2', 'PC-137'),
(138, 19, 'NVELAZQUEZ', 'DELL', 'VOSTRO 3268', '5T5MWK2', 'PC-138'),
(139, 22, 'AACEVES', 'DELL', 'VOSTRO 3268', 'DPLHGL2', 'PC-139'),
(140, 22, 'INTLAB', 'DELL', 'VOSTRO 3268', '6VJ31M2', 'PC-140'),
(141, 28, 'TARJETAPJ10', 'DELL', 'VOSTRO 3268', '6VJ21M2', 'PC-141'),
(142, 22, 'TERRITORIO2', 'DELL', 'VOSTRO 3268', '6VH21M2', 'PC-142'),
(143, 21, 'LMORALES', 'DELL', 'VOSTRO 3268', '6MZZ0M2', 'PC-143'),
(144, 26, 'KVAZQUEZ', 'DELL', 'VOSTRO 3268', '6VH11M2', 'PC-144'),
(145, 29, 'SOPERATIVA7', 'DELL', 'VOSTRO 3268', '6VG31M2', 'PC-145'),
(146, 28, 'SUBEVAL6', 'DELL', 'VOSTRO 3268', 'DQ1RGL2', 'PC-146'),
(147, 21, 'LOLIVARES', 'DELL', 'VOSTRO 3268', '8RY69M2', 'PC-147'),
(148, 65, 'DOPERACION5', 'DELL', 'VOSTRO 3268', 'DHLQGL2', 'PC-148'),
(149, 1, 'DIRGRAL1', 'DELL', 'VOSTRO 3268', '6VHZ0M2', 'PC-149'),
(150, 65, 'DIRGRAL4', 'DELL', 'VOSTRO 3268', 'HYKNGL2', 'PC-150'),
(151, 38, 'JANAYA', 'DELL', 'VOSTRO 3268', '6P051M2', 'PC-151'),
(152, 1, 'LRAMIREZ', 'DELL', 'VOSTRO 3268', 'HYTJGL2', 'PC-152'),
(153, 1, '', 'DELL', 'VOSTRO 3268', '6VJ41M2', 'PC-153'),
(154, 62, 'CONTRA2', 'DELL', 'VOSTRO 3268', 'DQ8KGL2', 'PC-154'),
(155, 62, 'MPCCANDRADE', 'DELL', 'VOSTRO 3268', '5LQKWK2', 'PC-155'),
(156, 61, 'LQUEVEDO', 'DELL', 'VOSTRO 3268', '6TY69M2', 'PC-156'),
(157, 61, 'CONTRALORIA12', 'DELL', 'VOSTRO 3268', '6VG21M2', 'PC-157'),
(158, 61, 'CONTRALORIA1', 'DELL', 'VOSTRO 3268', '6TG89M2', 'PC-158'),
(159, 61, '', 'DELL', 'VOSTRO 3268', '6VCX8M2', 'PC-159'),
(160, 38, 'DCONTINUA5', 'DELL', 'VOSTRO 3268', '6VJ01M2', 'PC-160'),
(161, 26, 'YDIAZ', 'DELL', 'VOSTRO 3268', '6H6Z0M2', 'PC-161'),
(162, 28, 'ACABALLERO', 'DELL', 'VOSTRO 3268', 'F9RMGM2', 'PC-162'),
(163, 19, 'MAMARO', 'DELL', 'VOSTRO 3268', 'F9QTGM2', 'PC-163'),
(164, 10, 'MANTENIMIENTO', 'DELL', 'VOSTRO 3268', 'DKBNGM2', 'PC-164'),
(165, 42, 'COMSOC5', 'DELL', 'VOSTRO 3268', 'C3SRGM2', 'PC-165'),
(166, 12, 'MPCDHUMANOS3', 'DELL', 'VOSTRO 3268', 'DK8PGM2', 'PC-166'),
(167, 10, 'VIGILANCIA', 'DELL', 'VOSTRO 3268', 'C2LQGM2', 'PC-167'),
(168, 10, 'DRECMAT5', 'DELL', 'VOSTRO 3268', 'C2HSGM2', 'PC-168'),
(169, 12, 'CAPACITACION1', 'DELL', 'VOSTRO 3268', 'F9QVGM2', 'PC-169'),
(170, 11, 'SCAMACHO', 'DELL', 'VOSTRO 3268', 'C2JRGM2', 'PC-170'),
(171, 11, 'DRECMAT10', 'DELL', 'VOSTRO 3268', 'DK9TGM2', 'PC-171'),
(172, 10, 'GLAUREANO', 'DELL', 'VOSTRO 3268', 'C3LMGM2', 'PC-172'),
(173, 39, 'COMSOC6', 'DELL', 'VOSTRO 3268', 'C2RPGM2', 'PC-173'),
(174, 42, 'ARAMIREZ', 'DELL', 'VOSTRO 3268', 'C2VVGM2', 'PC-174'),
(175, 10, 'DRECMAT2', 'DELL', 'VOSTRO 3268', 'C2TQGM2', 'PC-175'),
(176, 10, 'RCALDERON', 'DELL', 'VOSTRO 3268', 'DK7TGM2', 'PC-176'),
(177, 3, 'MPCDGA2', 'DELL', 'VOSTRO 3268', 'HYGQGL2', 'PC-177'),
(178, 39, 'GGARCIA', 'DELL', 'VOSTRO 3268', 'DK9QGM2', 'PC-178'),
(179, 42, 'ELOPEZ', 'DELL', 'VOSTRO 3268', 'DK8VGM2', 'PC-179'),
(180, 42, 'COMSOC1', 'DELL', 'VOSTRO 3268', 'F9RW8M2', 'PC-180'),
(181, 10, 'DRECMAT8', 'DELL', 'VOSTRO 3268', '6VG71M2', 'PC-181'),
(182, 43, 'TRANSV7', 'DELL', 'VOSTRO 3268', 'DK8TGM2', 'PC-182'),
(183, 42, 'COMSOC2', 'DELL', 'VOSTRO 3268', 'C30MGM2', 'PC-183'),
(184, 10, 'DRECMAT6', 'DELL', 'VOSTRO 3268', 'C2SRGM2', 'PC-184'),
(185, 29, 'DOPERACION7', 'DELL', 'VOSTRO 3268', 'C3DRGM2', 'PC-185'),
(186, 10, 'DRECMAT11', 'DELL', 'VOSTRO 3268', 'C99MGM2', 'PC-186'),
(187, 45, '', 'DELL', 'VOSTRO 3268', 'F9QB9M2', 'PC-187'),
(188, 12, 'MPCMLUNA', 'DELL', 'VOSTRO 3268', 'DK8SGM2', 'PC-188'),
(189, 45, 'DOPERACION9', 'DELL', 'VOSTRO 3268', 'C35MGM2', 'PC-189'),
(190, 12, 'MPCGFLORES', 'DELL', 'VOSTRO 3268', 'C31RGM2', 'PC-190'),
(191, 40, 'RILUNA', 'DELL', 'VOSTRO 3268', 'C38RGM2', 'PC-191'),
(192, 12, 'MCORTES', 'DELL', 'VOSTRO 3268', 'DK7VGM2', 'PC-192'),
(193, 43, 'mpcinternacion9', 'DELL', 'VOSTRO 3268', 'C34TGM2', 'PC-193'),
(194, 10, 'MPCADQUISICIONES', 'DELL', 'VOSTRO 3268', 'DK8MGM2', 'PC-194'),
(195, 42, 'COMSOC11', 'DELL', 'VOSTRO 3268', 'F9RVGM2', 'PC-195'),
(196, 40, 'PABUNDIO', 'DELL', 'VOSTRO 3268', '6K871M2', 'PC-196'),
(197, 4, 'ASANCHEZ', 'DELL', 'VOSTRO 3268', 'DK8RGM2', 'PC-197'),
(198, 12, 'MAROSAS', 'DELL', 'VOSTRO 3268', '6HQZ0M2', 'PC-198'),
(199, 43, 'VINCU3', 'DELL', 'VOSTRO 3268', '6P101M2', 'PC-199'),
(200, 42, 'IMAYO', 'DELL', 'VOSTRO 3268', 'F9S59M2', 'PC-200'),
(201, 42, 'LZAVALA', 'DELL', 'VOSTRO 3268', '5LLRWK2', 'PC-201'),
(202, 40, 'SLEYVA', 'DELL', 'VOSTRO 3268', 'DK8QGM2', 'PC-202'),
(203, 17, 'JURIDICO3', 'DELL', 'VOSTRO 3268', 'F9QRGM2', 'PC-203'),
(204, 17, 'AMARTINEZ', 'DELL', 'VOSTRO 3268', 'C30QGM2', 'PC-204'),
(205, 18, '', 'DELL', 'VOSTRO 3268', '6T379M2', 'PC-205'),
(206, 18, 'JURIDICO5', 'DELL', 'VOSTRO 3268', 'F9RQGM2', 'PC-206'),
(207, 44, 'COMSOC10', 'DELL', 'VOSTRO 3268', 'C3NSGM2', 'PC-207'),
(208, 10, 'MLEON', 'DELL', 'VOSTRO 3268', 'HWFQGL2', 'PC-208'),
(209, 10, 'MENSAJERIA', 'DELL', 'VOSTRO 3268', 'C3QRGM2', 'PC-209'),
(210, 10, 'DRECMAT3', 'DELL', 'VOSTRO 3268', '6T179M2', 'PC-210'),
(211, 18, 'JURIDICO7', 'DELL', 'VOSTRO 3268', 'C3MQGM2', 'PC-211'),
(212, 10, 'GARCE', 'DELL', 'VOSTRO 3268', 'C3TRGM2', 'PC-212'),
(213, 17, 'JURIDICO2', 'DELL', 'VOSTRO 3268', 'C53TGM2', 'PC-213'),
(214, 4, 'DRECMAT9', 'DELL', 'VOSTRO 3268', 'C6XTGM2', 'PC-214'),
(215, 45, 'GOROZCO', 'DELL', 'VOSTRO 3268', 'F9R89M2', 'PC-215'),
(216, 10, 'DRECMAT7', 'DELL', 'VOSTRO 3268', 'C37VGM2', 'PC-216'),
(217, 39, 'MRAMIREZ', 'DELL', 'VOSTRO 3268', '6VH61M2', 'PC-217'),
(218, 4, 'DFINANZAS8', 'DELL', 'VOSTRO 3268', 'C3BRGM2', 'PC-218'),
(219, 39, 'COMSOC14', 'DELL', 'VOSTRO 3268', 'C4J71M2', 'PC-219'),
(220, 7, 'LMARTINEZ', 'DELL', 'VOSTRO 3268', 'C9CQGM2', 'PC-220'),
(221, 7, 'FLUNA', 'DELL', 'VOSTRO 3268', 'F9R49M2', 'PC-221'),
(222, 14, 'MPC-CAPACITACION2', 'DELL', 'VOSTRO 3268', 'HR5HGL2', 'PC-222'),
(223, 54, 'CGALINDO', 'DELL', 'VOSTRO 3268', 'HP451M2', 'PC-223'),
(224, 10, 'ARCHIVOG', 'DELL', 'VOSTRO 3268', '4BYTJK2', 'PC-224'),
(225, 10, 'DRECMAT13', 'DELL', 'VOSTRO 3268', 'CDJ41M2', 'PC-225'),
(226, 13, 'MPCMMAYORGA', 'DELL', 'VOSTRO 3268', 'HP471M2', 'PC-226'),
(227, 6, 'YGARCIA', 'DELL', 'VOSTRO 3268', '6P001M2', 'PC-227'),
(228, 13, 'AMENDEZ', 'DELL', 'VOSTRO 3268', '6VGZ0M2', 'PC-228'),
(229, 12, 'MPCMBEIVIDE', 'DELL', 'VOSTRO 3268', 'C4QZ0M2', 'PC-229'),
(230, 12, 'GLAU', 'DELL', 'VOSTRO 3268', '6P151M2', 'PC-230'),
(231, 7, 'MAGARCIA', 'DELL', 'VOSTRO 3268', 'CD351M2', 'PC-231'),
(232, 43, 'VINCU1', 'DELL', 'VOSTRO 3268', '6VH41M2', 'PC-232'),
(233, 7, 'ASANDOVAL', 'DELL', 'VOSTRO 3268', 'HVQNGL2', 'PC-233'),
(234, 7, 'EOCAMPO', 'DELL', 'VOSTRO 3268', 'C4G11M2', 'PC-234'),
(235, 7, 'PRESUPUESTO1', 'DELL', 'VOSTRO 3268', '8RF79M2', 'PC-235'),
(236, 9, 'ASANDOVAL', 'DELL', 'VOSTRO 3268', 'CDN21M2', 'PC-236'),
(237, 7, 'PRESUPUESTO2', 'DELL', 'VOSTRO 3268', 'C4P21M2', 'PC-237'),
(238, 10, 'DRECMAT17', 'DELL', 'VOSTRO 3268', '6P141M2', 'PC-238'),
(239, 14, 'DRECMAT1', 'DELL', 'VOSTRO 3268', 'HP221M2', 'PC-239'),
(240, 10, 'INVENTARIO', 'DELL', 'VOSTRO 3268', '6P071M2', 'PC-240'),
(241, 5, 'JALOPEZ', 'DELL', 'VOSTRO 3268', 'HP231M2', 'PC-241'),
(242, 8, 'DINGRESOS2', 'DELL', 'VOSTRO 3268', 'HP111M2', 'PC-242'),
(243, 8, 'EMARTINEZS', 'DELL', 'VOSTRO 3268', 'HXSNGL2', 'PC-243'),
(244, 22, 'TERRITORIO3', 'DELL', 'VOSTRO 3268', 'HYYLGL2', 'PC-244'),
(245, 64, 'RGONZALEZ', 'DELL', 'VOSTRO 3268', 'C2PQGM2', 'PC-245'),
(246, 39, 'CROMERO', 'DELL', 'VOSTRO 3268', 'CC601M2', 'PC-246'),
(247, 2, 'MVERAZA', 'DELL', 'VOSTRO 3268', 'HRLLGL2', 'PC-247'),
(248, 42, 'COMSOC4', 'DELL', 'VOSTRO 3268', 'C3RQGM2', 'PC-248'),
(249, 54, 'JTOVAR', 'DELL', 'VOSTRO 3268', 'C3BQGM2', 'PC-249'),
(250, 10, 'EGONZALEZ', 'DELL', 'VOSTRO 3268', '6TW59M2', 'PC-250'),
(251, 5, 'TCRUZ', 'DELL', 'VOSTRO 3268', 'DK9MGM2', 'PC-251'),
(252, 8, 'DIRGRSOS', 'DELL', 'VOSTRO 3268', 'F9QNGM2', 'PC-252'),
(253, 8, 'ALMACEN', 'DELL', 'VOSTRO 3268', 'F9Q59M2', 'PC-253'),
(254, 17, 'GCASTA?EDA', 'DELL', 'VOSTRO 3268', 'DK8NGM2', 'PC-254'),
(255, 10, 'MALVARADO', 'DELL', 'VOSTRO 3268', 'C3LPGM2', 'PC-255'),
(256, 10, 'ALMACEN', 'DELL', 'VOSTRO 3268', 'DKBMGM2', 'PC-256'),
(257, 2, 'SECRETARIATECNICA', 'DELL', 'VOSTRO 3268', 'C59SGM2', 'PC-257'),
(258, 21, 'FVIDAL', 'DELL', 'VOSTRO 3268', 'C72WGM2', 'PC-258'),
(259, 64, 'DJUVENIL12', 'DELL', 'VOSTRO 3268', 'DK8WGM2', 'PC-259'),
(260, 11, 'PGONZAGA', 'DELL', 'VOSTRO 3268', 'F9RNGM2', 'PC-260'),
(261, 10, 'EGALICIA', 'DELL', 'VOSTRO 3268', 'C2MVGM2', 'PC-261'),
(262, 10, 'DRECMAT14', 'DELL', 'VOSTRO 3268', 'C70TGM2', 'PC-262'),
(263, 59, 'SISTEMAS3', 'DELL', 'VOSTRO 3268', '6XM89M2', 'PC-263'),
(264, 5, 'DRECMAT4', 'DELL', 'VOSTRO 3268', 'C38PGM2', 'PC-264'),
(265, 7, 'NVERVER', 'DELL', 'VOSTRO 3268', 'C2SMGM2', 'PC-265'),
(266, 4, 'RTLLO', 'DELL', 'VOSTRO 3268', 'F9S69M2', 'PC-266'),
(267, 4, 'AAMADOR', 'DELL', 'VOSTRO 3268', 'C34PGM2', 'PC-267'),
(268, 7, 'JGRACIDA', 'DELL', 'VOSTRO 3268', '6VG51M2', 'PC-268'),
(269, 7, 'JFERREYRA', 'DELL', 'VOSTRO 3268', 'DK9PGM2', 'PC-269'),
(270, 4, 'DFINANZAS9', 'DELL', 'VOSTRO 3268', 'C84QGM2', 'PC-270'),
(271, 3, 'DGA1', 'DELL', 'VOSTRO 3268', 'DK9RGM2', 'PC-271'),
(272, 9, 'MYESCAS', 'DELL', 'VOSTRO 3268', 'DKBPGM2', 'PC-272'),
(273, 2, 'GLARRAGA', 'DELL', 'VOSTRO 3268', 'DK7WGM2', 'PC-273'),
(274, 3, 'PSANDOVAL', 'DELL', 'VOSTRO 3268', 'F9R69M2', 'PC-274'),
(275, 16, 'RDORANTES', 'DELL', 'VOSTRO 3268', 'C8ZPGM2', 'PC-275'),
(276, 60, '', 'DELL', 'VOSTRO 3268', '6VG11M2', 'PC-276'),
(277, 43, 'YCAMACHO', 'DELL', 'VOSTRO 3268', 'F9R59M2', 'PC-277'),
(278, 12, 'MPCECRUZ', 'DELL', 'VOSTRO 3268', '6P161M2', 'PC-278'),
(279, 43, 'VINCU5', 'DELL', 'VOSTRO 3268', 'F9RRGM2', 'PC-279'),
(280, 9, 'DIRMAT1', 'DELL', 'VOSTRO 3268', 'C2KLGM2', 'PC-280'),
(281, 4, 'DFINANZAS6', 'DELL', 'VOSTRO 3268', 'DK9NGM2', 'PC-281'),
(282, 39, 'CLGONZALEZ', 'DELL', 'VOSTRO 3268', 'F9RX8M2', 'PC-282'),
(283, 40, 'VSOTO', 'DELL', 'VOSTRO 3268', 'C6PLGM2', 'PC-283'),
(284, 13, 'ERODRIGUEZ', 'DELL', 'VOSTRO 3268', 'C2ZRGM2', 'PC-284'),
(285, 64, 'CENTROS5', 'DELL', 'VOSTRO 3268', 'C87PGM2', 'PC-285'),
(286, 59, 'mpcsistemas9', 'DELL', 'VOSTRO 3268', 'C3HQGM2', 'PC-286'),
(287, 10, 'DSANTIN', 'DELL', 'VOSTRO 3268', 'C31WGM2', 'PC-287'),
(288, 12, 'SLOPEZ', 'DELL', 'VOSTRO 3268', 'C2NSGM2', 'PC-288'),
(289, 12, 'RECEPCION', 'DELL', 'VOSTRO 3268', 'C7DNGM2', 'PC-289'),
(290, 18, 'JURIDICO1', 'DELL', 'VOSTRO 3268', 'F9RSGM2', 'PC-290'),
(291, 6, 'GLIRA', 'DELL', 'VOSTRO 3268', 'C7VNGM2', 'PC-291'),
(292, 6, 'CONTAB2', 'DELL', 'VOSTRO 3268', 'F9S79M2', 'PC-292'),
(293, 6, 'JSANCHEZ', 'DELL', 'VOSTRO 3268', 'DK7SGM2', 'PC-293'),
(294, 12, 'MMARTINEZ', 'DELL', 'VOSTRO 3268', 'C36WGM2', 'PC-294'),
(295, 8, 'DFINANZAS10', 'DELL', 'VOSTRO 3268', 'C2TTGM2', 'PC-295'),
(296, 43, 'VINCU4', 'DELL', 'VOSTRO 3268', 'F9RB9M2', 'PC-296'),
(297, 2, 'STECNICA2', 'DELL', 'VOSTRO 3268', 'C7SLGM2', 'PC-297'),
(298, 3, 'DG3', 'DELL', 'VOSTRO 3268', 'C36TGM2', 'PC-298'),
(299, 35, 'SOPERATIVA1', 'DELL', 'VOSTRO 3268', 'C2MMGM2', 'PC-299'),
(300, 1, 'DIRGRAL6', 'DELL', 'VOSTRO 3268', 'C39QGM2', 'PC-300'),
(301, 50, 'DINVEST4', 'DELL', 'VOSTRO 3268', 'r', 'PC-301'),
(302, 1, 'DGUERRERO', 'DELL', 'VOSTRO 3268', 'C39NGM2', 'PC-302'),
(303, 28, 'CFERIA', 'DELL', 'VOSTRO 3268', '8SH59M2', 'PC-303'),
(304, 1, 'DIRGRAL5', 'DELL', 'VOSTRO 3268', '6TS89M2', 'PC-304'),
(305, 19, 'MPCMREBOLLAR', 'DELL', 'VOSTRO 3268', '5XLQWK2', 'PC-13'),
(306, 21, 'LMORALES', 'DELL', 'VOSTRO 3268', '6MZZ0M2', 'PC-143'),
(307, 38, 'JANAYA', 'DELL', 'VOSTRO 3268', '6P051M2', 'PC-151'),
(308, 49, 'JGQUINTO', 'DELL', 'VOSTRO 3268', '6YL59M2', 'PC-45'),
(309, 20, 'ESERRANO', 'DELL', 'VOSTRO 3268', 'D1T79M2', 'PC-101'),
(310, 26, 'YDIAZ', 'DELL', 'VOSTRO 3268', '6H6Z0M2', 'PC-164'),
(311, 38, 'DCONTINUA1', 'DELL', 'VOSTRO 3268', '6XD79M2', 'PC-27'),
(312, 45, '', 'DELL', 'VOSTRO 3268', '2GV49M2', 'PC-46'),
(313, 19, 'DCONTINUA6', 'DELL', 'VOSTRO 3268', 'HWGKGL2', 'PC-47'),
(314, 38, 'DCONTINUA2', 'DELL', 'VOSTRO 3268', 'F4FPGM2', 'PC-49'),
(315, 38, 'DCONTINUA3', 'DELL', 'VOSTRO 3268', 'HYPJGL2', 'PC-65'),
(316, 38, 'DCONTINUA4', 'DELL', 'VOSTRO 3268', '5T3JWK2', 'PC-105'),
(317, 38, 'DCONTINUA5', 'DELL', 'VOSTRO 3268', '6VJ01M2', 'PC-160'),
(318, 45, 'DSALUD.C', 'DELL', 'VOSTRO 3268', 'HXZMGL2', 'PC-60'),
(319, 38, 'MLEAL', 'DELL', 'VOSTRO 3268', 'HZCYW72', 'PC-86'),
(320, 20, 'CENTROS3', 'DELL', 'VOSTRO 3268', 'D1T99M2', 'PC-97'),
(321, 24, 'GRIOS', 'DELL', 'VOSTRO 3268', '6XC89M2', 'PC-115'),
(322, 23, 'VBAUTISTA', 'DELL', 'VOSTRO 3268', 'F9QW8M2', 'PC-133'),
(323, 19, 'JORTEGA', 'DELL', 'VOSTRO 3268', 'C7NPGM2', 'PC-134'),
(324, 20, 'VESTRADA', 'DELL', 'VOSTRO 3268', 'DK9VGM2', 'PC-135'),
(325, 19, 'NVELAZQUEZ', 'DELL', 'VOSTRO 3268', '5T5MWK2', 'PC-138'),
(326, 64, 'RGONZALEZ', 'DELL', 'VOSTRO 3268', 'C2PQGM2', 'PC-245'),
(327, 64, 'DJUVENIL11', 'DELL', 'VOSTRO 3268', '5XRPWK2', 'PC-15'),
(328, 64, 'DJUVENIL2', 'DELL', 'VOSTRO 3268', 'D1VB9M2', 'PC-103'),
(329, 64, 'DJUVENIL3', 'DELL', 'VOSTRO 3268', 'F5V89M2', 'PC-106'),
(330, 64, 'DJUVENIL4', 'DELL', 'VOSTRO 3268', '6Y9B9M2', 'PC-110'),
(331, 64, 'CENTROS2', 'DELL', 'VOSTRO 3268', '6VJ11M2', 'PC-125'),
(332, 64, 'DJUVENIL12', 'DELL', 'VOSTRO 3268', 'DK8WGM2', 'PC-259'),
(333, 21, 'KHURTADO', 'LENOVO', 'THINKPAD', 'MP1CWTL7', 'LAP-1'),
(334, 42, 'PRENSA1', 'LENOVO', 'THINKPAD', 'MP1CWTJW', 'LAP-2'),
(335, 43, 'INTERNACIONALES11', 'LENOVO', 'THINKPAD', 'MP1CWTKN', 'LAP-3'),
(336, 59, 'PENDIENTE', 'LENOVO', 'THINKPAD', 'MP1CWVHH', 'LAP-4'),
(337, 60, 'EVENTOS5', 'LENOVO', 'THINKPAD', 'MP1CWTLM', 'LAP-5'),
(338, 5, 'DFINANZAS11', 'LENOVO', 'THINKPAD', 'MP1CWTKW', 'LAP-6'),
(339, 4, 'NREYES', 'LENOVO', 'THINKPAD', 'MP1CWRPP', 'LAP-7'),
(340, 12, 'DHUMANOS2', 'LENOVO', 'THINKPAD', 'MP1CWTJ9', 'LAP-8'),
(341, 45, 'FGUTIERREZ', 'LENOVO', 'THINKPAD', 'MP1CWVJ8', 'LAP-9'),
(342, 28, 'CFERIA', 'LENOVO', 'THINKPAD', 'MP1CWVJ3', 'LAP-10'),
(343, 50, 'DGA', 'LENOVO', 'THINKPAD', 'MP1CWTJQ', 'LAP-11'),
(344, 42, 'PRENSA2', 'LENOVO', 'THINKPAD', 'MP1CWTK7', 'LAP-12'),
(345, 45, '', 'LENOVO', 'THINKPAD', 'MP1CWRPC', 'LAP-13'),
(346, 10, 'DRECMAT15', 'LENOVO', 'THINKPAD', 'MP1CWVJM', 'LAP-14'),
(347, 19, 'CGUTIERREZ', 'LENOVO', 'THINKPAD', 'MP1CWTJX', 'LAP-15'),
(348, 60, '', 'LENOVO', 'THINKPAD', 'MP1CWTK2', 'LAP-16'),
(349, 60, 'EVENTOS1', 'LENOVO', 'THINKPAD', 'MP1CWTKP', 'LAP-17'),
(350, 60, 'EVENTOS2', 'LENOVO', 'THINKPAD', 'MP1CWTLP', 'LAP-18'),
(351, 65, 'EVENTOS3', 'LENOVO', 'THINKPAD', 'MP1CWPW6', 'LAP-19'),
(352, 66, 'EVENTOS4', 'LENOVO', 'THINKPAD', 'MP1C8X3F', 'LAP-20'),
(353, 59, 'SUBSISTEMAS', 'LENOVO', 'IDEAPADY700', 'PF0QFCLB', 'LAP-21'),
(354, 59, '', 'LENOVO', 'IDEAPADY700', 'PF0P7BE5', 'LAP-22'),
(355, 59, 'SISTEMAS10', 'LENOVO', 'IDEAPADY700', 'PF0QFN77', 'LAP-23'),
(356, 40, 'MCOMSOC1', 'APPLE', 'iMAC A1419', 'D25WC0ALJ1GN', '?MAC-1'),
(357, 40, 'MCOMSOC2', 'APPLE', 'iMAC A1419', 'D25W90ECJ1GN', '?MAC-2'),
(358, 40, 'DIRDISE?O', 'APPLE', 'iMAC A1419', 'D25W90EFJ1GN', '?MAC-3'),
(359, 44, 'MCOMSOC4', 'APPLE', 'iMAC A1419', 'D25W90EBJ1GN', '?MAC-4'),
(360, 59, 'MSUBSISTEMAS', 'APPLE', 'iMAC A1419', 'D25W90EDJ1GN', '?MAC-5'),
(361, 54, 'ASANCHEZS', 'APPLE', 'iMAC A1419', 'D25W90E7J1GN', '?MAC-6'),
(362, 44, 'MCOMSOC5', 'APPLE', 'iMAC A1419', 'D25W90E8J1GN', '?MAC-7'),
(363, 60, 'SOPORTE', 'APPLE', 'iMAC A1419', 'D25W90EEJ1GN', '?MAC-8'),
(364, 40, 'MCOMSOC6', 'APPLE', 'iMAC A1419', 'D25W90E9J1GN', '?MAC-9'),
(365, 59, 'SISTEMAS', 'APPLE', 'Macbook Pro', 'C02W90WBHV2R', 'McB-1'),
(366, 40, 'COMSOC', 'APPLE', 'Macbook Pro', 'C02W90WAHV2R', 'McB-2'),
(367, 54, '', 'APPLE', 'Macbook Pro', 'C02YNOLBJG5J', 'McB-3'),
(368, 19, 'FRUIZ', 'DELL', 'OPTIPLEX 7450', 'JKBYB02', 'AIO-1'),
(369, 59, 'SITE', 'DELL', 'OPTIPLEX 7450', '5FBYB02', 'AIO-2'),
(370, 61, 'FDOMINGUEZ', 'DELL', 'OPTIPLEX 7450', 'GNBYB02', 'AIO-3'),
(371, 39, 'GRAMIREZ', 'DELL', 'OPTIPLEX 7450', '2CBYB02', 'AIO-4'),
(372, 16, 'GCASTANEDA-BGALAVIS', 'DELL', 'OPTIPLEX 7450', '8GBYB02', 'AIO-5'),
(373, 2, 'AALVARADO,BNABARRO', 'DELL', 'OPTIPLEX 7450', '6LBYB02', 'AIO-6'),
(374, 45, 'MVILLASE?OR', 'DELL', 'OPTIPLEX 7450', 'JGBYB02', 'AIO-7'),
(375, 43, 'NYOVAL', 'DELL', 'OPTIPLEX 7450', 'JDBYB02', 'AIO-8'),
(376, 28, 'CFERIA', 'DELL', 'OPTIPLEX 7450', '4PBYB02', 'AIO-9'),
(377, 4, 'NREYES', 'DELL', 'OPTIPLEX 7450', 'JBBYB02', 'AIO-10'),
(382, 31, 'LGARCIA', 'DELL', 'OPTIPLEX 7450', '3NBYB02', 'AIO-16');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id_area`);

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD UNIQUE KEY `usuario` (`usuario`,`contraseña`);

--
-- Indices de la tabla `reporte`
--
ALTER TABLE `reporte`
  ADD PRIMARY KEY (`id_reporte`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `area`
--
ALTER TABLE `area`
  MODIFY `id_area` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT de la tabla `reporte`
--
ALTER TABLE `reporte`
  MODIFY `id_reporte` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=383;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

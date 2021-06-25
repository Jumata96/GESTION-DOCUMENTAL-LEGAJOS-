-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-06-2021 a las 16:41:14
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hospital`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area_laboral`
--

CREATE TABLE `area_laboral` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` varchar(600) COLLATE utf8_spanish_ci DEFAULT NULL,
  `desc_corta` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `area_laboral`
--

INSERT INTO `area_laboral` (`codigo`, `nombre`, `descripcion`, `desc_corta`, `estado`, `fecha_creacion`, `glosa`) VALUES
(1, 'SERVICIO DE GINECO-OBSTETRICIA', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:17', NULL),
(2, 'SERVICIO DE MEDICINA', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:17', NULL),
(3, 'UNIDAD DE ECONOMIA', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:18', NULL),
(4, 'SERVICIO DE PEDIATRIA', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:19', NULL),
(5, 'SERVICIO DE CONSULTORIO EXTERNA', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:19', NULL),
(6, 'SERV. DE ANEST. Y CENTRO QUIRURGICO', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:20', NULL),
(7, 'SERIVICIO DE PEDIATRIA', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:20', NULL),
(8, 'SERVICIO DE MERG. Y CUIDADOS INTENSIVOS', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:21', NULL),
(9, 'SERVICIO DE NEONATOLOGIA', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:22', NULL),
(10, 'UNIDAD DE EPIDEMIOLOGIA Y SALUD AMBIENTAL', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:23', NULL),
(11, 'SERVICIO DE PATOLOGIA CLINICA', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:23', NULL),
(12, 'SERVICIO DE NUTRICION', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:24', NULL),
(13, 'UNIDAD DE SERVICIOS GENERALE SY MANTENIMIENTO', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:24', NULL),
(14, 'SERVICIO DE CIRUGIA', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:25', NULL),
(15, 'UNIDAD DE CONTROL PATRIMONIAL', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:29', NULL),
(16, 'SERVICIO DE OBSTETRICIA', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:31', NULL),
(17, 'SERVICIO DE ODONTOESTOMATOLOGIA', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:31', NULL),
(18, 'SERVICIO DE FARMACIA', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:31', NULL),
(19, 'OFICINA DE PLANEAMIENTO ESTRATEGICO', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:35', NULL),
(20, 'UNIDAD DE APOYO A LA DOCENCIA E INVESTIGACION', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:38', NULL),
(21, 'UNIDAD DE LOGISTICA', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:39', NULL),
(22, 'UNIDAD DE PERSONAL', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:41', NULL),
(23, 'UNIDAD DE SEGUROS', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:42', NULL),
(24, 'ORGANO DE CONTROL INSTITUCIONAL', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:42', NULL),
(25, 'UNIDAD DE ESTADÍSTICA E INFORMATICA', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:43', NULL),
(26, 'SERVICIO DE DIAGNOSTICO POR IMÁGENES', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:44', NULL),
(27, 'SERVICIO DE CIRUGIA GENERAL', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:49', NULL),
(28, 'SERVICIO DE MEDICINA INTERNA', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:00', NULL),
(29, 'UNIDAD DE GESTION DE LA SALUD', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:01', NULL),
(30, 'SERVICIO DE GINECOLOGIA', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:13', NULL),
(31, 'DIRECCION EJECUTIVA', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:15', NULL),
(32, 'UNIDAD DE ARCHIVO CENTRAL', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:17', NULL),
(33, 'SERVICIO DE CIRUGIA ESPECIALIZADA', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:20', NULL),
(34, 'SERVICIO DE MEDICINA ESPECIALIZADA', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:22', NULL),
(35, 'OFICINA DE ADMINISTRACION', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:24', NULL),
(36, 'SERVICIO DE MEDICINA DE REHABILITACION', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:32', NULL),
(37, 'IMPORTADO SIN DATOS', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:34', NULL),
(38, 'DIRECCION ADJUNTA', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:09', NULL),
(39, 'SERVICIO SOCIAL', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:42', NULL),
(40, 'SERVICIO DE ENF. EN HOSPITALIZACION', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:20', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ascensos`
--

CREATE TABLE `ascensos` (
  `codigo` int(11) NOT NULL,
  `id_trabajador` int(11) NOT NULL,
  `tipo_resolucion` varchar(120) COLLATE utf8_spanish_ci DEFAULT NULL,
  `motivo_resolucion` varchar(520) COLLATE utf8_spanish_ci DEFAULT NULL,
  `numero_resolucion` varchar(120) COLLATE utf8_spanish_ci DEFAULT NULL,
  `area_trabajador` int(11) NOT NULL,
  `situacion_laboral` int(11) NOT NULL,
  `jornada_laboral` int(11) NOT NULL,
  `regimen_laboral` int(11) NOT NULL,
  `cargo_laboral` int(11) NOT NULL,
  `cargo_laboral_anterior` int(11) NOT NULL,
  `fecha_resolucion` varchar(11) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_inicio` varchar(11) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_fin` varchar(11) COLLATE utf8_spanish_ci DEFAULT NULL,
  `url_doc` varchar(350) COLLATE utf8_spanish_ci DEFAULT NULL,
  `name_doc` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_doc` int(11) NOT NULL,
  `folios` varchar(3) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aviso`
--

CREATE TABLE `aviso` (
  `idempresa` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `codigo` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `titulo` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `aviso`
--

INSERT INTO `aviso` (`idempresa`, `codigo`, `titulo`, `descripcion`, `estado`, `fecha_creacion`) VALUES
('001', 'AVI', 'Mi Empresa', 'Le recordamos que el vencimiento del servicio de internet se acerca, usted dispondrá de 3 días adicionales a la fecha de vencimiento para realizar su pago respectivo. De llegar a retrasarse deberá realizar un pago adicional por la reconexión de servicio.', '1', '2019-07-22 18:07:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campanas`
--

CREATE TABLE `campanas` (
  `id` int(11) NOT NULL,
  `destinatarios` varchar(10000) COLLATE utf8_spanish_ci DEFAULT NULL,
  `asunto` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `contenido` varchar(10000) COLLATE utf8_spanish_ci DEFAULT NULL,
  `url_imagen` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `capacitaciones`
--

CREATE TABLE `capacitaciones` (
  `codigo` int(11) NOT NULL,
  `id_trabajador` int(11) NOT NULL,
  `tipo_capacitacion` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `centro_estudios` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_inicio` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_fin` varchar(11) COLLATE utf8_spanish_ci DEFAULT NULL,
  `horas_capacitacion` varchar(11) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nombre_capacitacion` varchar(600) COLLATE utf8_spanish_ci DEFAULT NULL,
  `url_doc` varchar(350) COLLATE utf8_spanish_ci DEFAULT NULL,
  `name_doc` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_doc` int(11) DEFAULT NULL,
  `folios` varchar(3) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `capacitaciones`
--

INSERT INTO `capacitaciones` (`codigo`, `id_trabajador`, `tipo_capacitacion`, `centro_estudios`, `fecha_inicio`, `fecha_fin`, `horas_capacitacion`, `nombre_capacitacion`, `url_doc`, `name_doc`, `id_doc`, `folios`, `descripcion`, `estado`, `fecha_creacion`, `glosa`) VALUES
(3, 3, 'CARTIFICADO', 'SXA', '2021-05-30', '2021-07-02', '8', 'CURSO 01', 'storage/PDF/dbxdRnApi0D139eWA5lgXsVJko5I89YFIGHR1pvb.pdf', 'AnyConv.com__LOTIZACION  DEFINITIVA   NOVIEMBRE.pdf', 3, '5', 'NOTA 02', '1', '2021-06-25 14:06:58', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo_laboral`
--

CREATE TABLE `cargo_laboral` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` varchar(600) COLLATE utf8_spanish_ci DEFAULT NULL,
  `desc_corta` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cargo_laboral`
--

INSERT INTO `cargo_laboral` (`codigo`, `nombre`, `descripcion`, `desc_corta`, `estado`, `fecha_creacion`, `glosa`) VALUES
(1, 'TECNICO/A EN ENFERMERIA I', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:17', NULL),
(2, 'TECNICO/A EN PLANIFICACION', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:18', NULL),
(3, 'ENFERMERA/O', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:19', NULL),
(4, 'MEDICO ESPECIALISTA', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:20', NULL),
(5, 'AUXILIAR DE NUTRICION', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:20', NULL),
(6, 'EDUCADOR/A PARA LA SALUD I', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:23', NULL),
(7, 'TECNICO/A EN LABORATORIO I', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:23', NULL),
(8, 'TECNICO/A ADMINISTRATIVO I', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:23', NULL),
(9, 'NUTRICIONISTA', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:24', NULL),
(10, 'AUXILIAR ADMINISTRATIVO', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:24', NULL),
(11, 'MEDICO', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:25', NULL),
(12, 'OBSTETRA', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:27', NULL),
(13, 'ASISTENTE/A ADMINISTRATIVO II', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:29', NULL),
(14, 'TECNICO/A EN ENFERMERIA II', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:30', NULL),
(15, 'ODONTOLOGO', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:31', NULL),
(16, 'AUXILIAR DE ENFERMERIA', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:32', NULL),
(17, 'TECNICO/A EN FARMACIA I', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:33', NULL),
(18, 'ASISTENTE/A TECNICO/A SECRETARIAL', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:35', NULL),
(19, 'TECNICO/A SANITARIO AMBIENTAL I', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:36', NULL),
(20, 'TECNICO/A EN MANTENIMIENTO', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:37', NULL),
(21, 'ESPECIALISTA ADMINISTRATIVO I', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:39', NULL),
(22, 'TECNICO/A ADMINISTRATIVO III', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:41', NULL),
(23, 'ASISTENTE/A ADMINISTRATIVO I', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:42', NULL),
(24, 'TECNICO/A ADMINISTRATIVO II', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:45', NULL),
(25, 'MEDICO SUB ESPECIALISTA', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:45', NULL),
(26, 'QUIMICO FARMACEUTICO', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:56', NULL),
(27, 'CHOFER', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:57', NULL),
(28, 'TECNICO/A EN SERVICIOS GENERALES I', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:57', NULL),
(29, 'TECNICO/A ESPECIALIZADO RADIOLOGIA', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:58', NULL),
(30, 'AUXILIAR DE LABORATORIO', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:00', NULL),
(31, 'ASISTENTE/A PROFESIONAL II', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:17', NULL),
(32, 'TECNICO/A SANITARIO AMBIENTAL II', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:19', NULL),
(33, 'ENFERMERA/O ESPECIALISTA', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:20', NULL),
(34, 'BIOLOGO/A', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:24', NULL),
(35, 'CONTADOR/A I', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:33', NULL),
(36, 'IMPORTADO SIN DATOS', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:34', NULL),
(37, 'ASISTENTE/A PROFESIONAL I', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:35', NULL),
(38, 'PILOTO DE AMBULANCIA', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:36', NULL),
(39, 'AUXILIAR ASISTENCIAL', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:36', NULL),
(40, 'TRABAJADOR/A DE SERVICIOS GENERALES', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:37', NULL),
(41, 'TECNICO/A EN CONTABILIDAD', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:41', NULL),
(42, 'TECNICO/A ESPECIALIZADO LABORATORIO CLINICO Y ANATOMIA PATOLOGICA', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:48', NULL),
(43, 'TECNICO/A EN SOPORTE INFORMATICO', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:50', NULL),
(44, 'TECNICO/A EN LABORATORIO II', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:52', NULL),
(45, 'PSICOLOGO/A', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:55', NULL),
(46, 'CONTADOR/A GENERAL', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:02', NULL),
(47, 'ADMINISTRADOR/A DE ENTIDADES DATOS', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:13', NULL),
(48, 'TECNICO/A EN RADIOLOGIA', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:21', NULL),
(49, 'DIRECTOR/A EJECUTIVO', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:22', NULL),
(50, 'TECNOLOGO MEDICO RADIOLOGIA', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:25', NULL),
(51, 'TECNOLOGO MEDICO LABORATORIO CLINICO Y ANATOMIA PATOLOGICA', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:47', NULL),
(52, 'DIGITADOR/A', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:54', NULL),
(53, 'AUXILIAR DE FARMACIA', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:57', NULL),
(54, 'TRABAJADOR/A SOCIAL', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:28', NULL),
(55, 'TECNOLOGO MEDICO TERAPIA FISICA Y REHABILITACION', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:30', NULL),
(56, 'ADMINISTRADOR/A DE CENTRO SALUD', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:38', NULL),
(57, 'TECNICO/A EN INGENIERIA I', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:39', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `idempresa` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `idcarrito` char(10) COLLATE utf8_spanish_ci NOT NULL,
  `idcliente` int(11) NOT NULL,
  `operacion` char(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descuento` decimal(9,2) DEFAULT NULL,
  `total` decimal(9,2) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `estado` char(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `imagen` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `url_imagwn` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `url_imagen` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ruc` varchar(11) COLLATE utf8_spanish_ci DEFAULT NULL,
  `razon_social` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `apellidos` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `direccion` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefono` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `observacion` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `idfpago` int(3) DEFAULT NULL,
  `estado_seguimiento` char(3) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idarea` char(4) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion_transportista` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_pago` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `carrito`
--

INSERT INTO `carrito` (`idempresa`, `idcarrito`, `idcliente`, `operacion`, `descuento`, `total`, `fecha`, `estado`, `glosa`, `imagen`, `url_imagwn`, `url_imagen`, `ruc`, `razon_social`, `nombre`, `apellidos`, `direccion`, `telefono`, `observacion`, `idfpago`, `estado_seguimiento`, `idarea`, `descripcion_transportista`, `fecha_pago`) VALUES
('001', 'S4UCyDQ2lZ', 2, 'COMPRA', '0.00', '5.06', '2018-10-17', 'PA', NULL, '815-2.png', NULL, 'images/815-2.png', '12345676543', 'PRUEBA RAZON SOCIAL', 'CARLOS', 'PANAIFO', 'Entrada al Taboo', '965767975', '', 4, 'PEN', 'FAC', 'pruebaa', '2018-10-17 02:10:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrusel`
--

CREATE TABLE `carrusel` (
  `id` int(2) NOT NULL,
  `titulo` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `imagen` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `url_imagen` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `extension` char(5) COLLATE utf8_spanish_ci DEFAULT NULL,
  `img_principal` decimal(1,0) DEFAULT 0,
  `estado` decimal(1,0) DEFAULT 1,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `alineacion` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `padding_top` decimal(3,0) DEFAULT NULL,
  `color` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `btn_estado` decimal(1,0) DEFAULT NULL,
  `btn_link` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `btn_color` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `btn_idprod` char(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `app` char(20) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `carrusel`
--

INSERT INTO `carrusel` (`id`, `titulo`, `descripcion`, `imagen`, `url_imagen`, `extension`, `img_principal`, `estado`, `glosa`, `fecha_creacion`, `alineacion`, `padding_top`, `color`, `btn_estado`, `btn_link`, `btn_color`, `btn_idprod`, `app`) VALUES
(8, 'El Liderazgo Prueba', 'Es la característica esencial de nuestros trabajadores, el cual nos direcciona hacia un mismo objetivo, demostrado a través de su trabajo diario.', '1563.jpg', 'images/carrusel/1563.jpg', 'jpg', '0', '1', NULL, '2018-07-30', 'left-align', '96', 'grey-text text-lighten-3', '1', NULL, 'gradient-45deg-deep-purple-blue', '0000000165', NULL),
(9, 'El Respeto', 'Somos defensores del respeto mutuo y la dignidad de los trabajadores, con la sociedad en general.', 'img1.jpg', 'images/carrusel/img1.jpg', 'jpg', '0', '1', NULL, '2018-07-30', 'left-align', '60', 'grey-text text-lighten-3', '1', NULL, 'gradient-45deg-blue-indigo', '0000000255', NULL),
(10, 'La Integridad', 'Nos desenvolvemos con total transparencia y honestidad, actuando responsablemente a través de nuestras acciones o comentarios, sean de forma individual y grupal.', 'img2.jpg', 'images/carrusel/img2.jpg', 'jpg', '0', '0', NULL, '2018-07-30', 'right-align', '150', 'grey-text text-lighten-3', NULL, NULL, NULL, NULL, NULL),
(30, NULL, NULL, NULL, 'images/carrusel/rgoE93DOCMjJFRRWkYPRcAqCtSt66xYoX1S841pi.mp4', 'mp4', '1', '1', NULL, '2020-07-24', NULL, '15', 'grey-text text-lighten-3', '0', NULL, NULL, '0000000000', 'INNOVAWIFI'),
(31, NULL, NULL, NULL, 'images/carrusel/6RgM5JHKjnSvmmJRttwxN6WF45QMsNONtxFvENr4.png', 'png', '0', '1', NULL, '2020-08-16', 'right-align', '108', 'grey-text text-lighten-3', '0', NULL, NULL, '0000000000', 'INNOVAWIFI'),
(35, NULL, NULL, NULL, 'images/carrusel/uYSuDnXWuz5b9Obzp5ahss6ehPLCsiQsRKLprZ4l.png', 'png', '0', '1', NULL, '2020-09-01', NULL, '15', 'grey-text text-lighten-3', '0', NULL, NULL, '0000000000', 'INNOVAWIFI'),
(36, NULL, NULL, NULL, 'images/carrusel/z67wTHvxhOjhrg8YXWDx1mAxxMDKnW13BSGGDWNu.jpeg', 'jpg', '0', '0', NULL, '2020-09-06', NULL, '200', 'grey-text text-lighten-3', '0', NULL, NULL, '0000000000', 'INNOVAWIFI'),
(40, NULL, NULL, NULL, 'images/carrusel/AZX4AKcisiaPjIUPHB7i9yXvADLH9xtgYORLY0JW.mp4', 'mp4', '0', '1', NULL, '2020-09-08', NULL, '108', 'grey-text text-lighten-3', '0', NULL, NULL, '0000000000', 'INNOVAWIFI');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idempresa` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `dni` char(8) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `apellido` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `sexo` decimal(1,0) DEFAULT NULL,
  `idprofesion` char(4) COLLATE utf8_spanish_ci DEFAULT NULL,
  `centro_laboral` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `direccion` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefono` decimal(15,0) DEFAULT NULL,
  `idbanco` char(4) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idctacte` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idpersonal` int(11) DEFAULT NULL,
  `contacto` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `glosa` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `idempresa` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `idcliente` char(20) COLLATE utf8_spanish_ci NOT NULL,
  `apaterno` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `amaterno` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nombres` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `iddocumento` decimal(2,0) DEFAULT NULL,
  `documento` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nro_documento` char(25) COLLATE utf8_spanish_ci DEFAULT NULL,
  `direccion` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `correo` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefono1` varchar(40) COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefono2` char(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tipo_pago` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `doc_venta` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `moneda` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `condicion_venta` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `glosa` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `contacto` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idpersonal` decimal(10,0) DEFAULT NULL,
  `razon_social` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `forma_pago` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `dia_pago` int(2) DEFAULT NULL,
  `link_mapa` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `serie` char(4) COLLATE utf8_spanish_ci DEFAULT NULL,
  `correlativo` char(8) COLLATE utf8_spanish_ci DEFAULT NULL,
  `formulario` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `facturacion` int(11) DEFAULT NULL,
  `usu_cpanel` decimal(1,0) DEFAULT NULL,
  `usuario_cpanel` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `contra_cpanel` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `codigo_alterno`
--

CREATE TABLE `codigo_alterno` (
  `codigo` smallint(6) NOT NULL,
  `idtrabajador` int(11) NOT NULL,
  `descripcion` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `estado` decimal(1,0) DEFAULT 1,
  `fecha_creacion` datetime DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contratos`
--

CREATE TABLE `contratos` (
  `codigo` int(11) NOT NULL,
  `id_trabajador` int(11) NOT NULL,
  `tipo_resolucion` varchar(120) COLLATE utf8_spanish_ci DEFAULT NULL,
  `area_trabajador` int(11) NOT NULL,
  `situacion_laboral` int(11) NOT NULL,
  `jornada_laboral` int(11) NOT NULL,
  `regimen_laboral` int(11) NOT NULL,
  `cargo_laboral` int(11) NOT NULL,
  `fecha_resolucion` varchar(11) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_inicio` varchar(11) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_fin` varchar(11) COLLATE utf8_spanish_ci DEFAULT NULL,
  `url_doc` varchar(350) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_doc` int(11) DEFAULT NULL,
  `name_doc` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `folios` varchar(3) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `contratos`
--

INSERT INTO `contratos` (`codigo`, `id_trabajador`, `tipo_resolucion`, `area_trabajador`, `situacion_laboral`, `jornada_laboral`, `regimen_laboral`, `cargo_laboral`, `fecha_resolucion`, `fecha_inicio`, `fecha_fin`, `url_doc`, `id_doc`, `name_doc`, `folios`, `descripcion`, `estado`, `fecha_creacion`, `glosa`) VALUES
(1, 3, 'RESOLUCIÓN DIRECTORIAL', 1, 1, 1, 1, 1, '-/-/-', '01/11/1995', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:17', NULL),
(2, 4, 'RESOLUCIÓN DIRECTORIAL', 1, 1, 1, 1, 1, '-/-/-', '31/12/2014', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:18', NULL),
(3, 5, 'RESOLUCIÓN DIRECTORIAL', 3, 1, 1, 1, 3, '-/-/-', '1990-01-08', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:19', NULL),
(4, 6, 'RESOLUCIÓN DIRECTORIAL', 4, 1, 1, 1, 1, '-/-/-', '01/01/2003', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:19', NULL),
(5, 7, 'RESOLUCIÓN DIRECTORIAL', 4, 1, 1, 1, 4, '-/-/-', '01/01/2003', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:20', NULL),
(6, 8, 'RESOLUCIÓN DIRECTORIAL', 6, 2, 1, 1, 5, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:20', NULL),
(7, 9, 'RESOLUCIÓN DIRECTORIAL', 1, 1, 1, 1, 5, '-/-/-', '2016-10-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:20', NULL),
(8, 10, 'RESOLUCIÓN DIRECTORIAL', 6, 1, 1, 1, 5, '-/-/-', '01/10/2017', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:21', NULL),
(9, 11, 'RESOLUCIÓN DIRECTORIAL', 8, 1, 1, 1, 8, '-/-/-', '01/06/2013', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:21', NULL),
(10, 12, 'RESOLUCIÓN DIRECTORIAL', 4, 1, 1, 1, 1, '-/-/-', '01/11/1984', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:21', NULL),
(11, 13, 'RESOLUCIÓN DIRECTORIAL', 8, 1, 1, 1, 7, '-/-/-', '31/12/2014', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:22', NULL),
(12, 14, 'RESOLUCIÓN DIRECTORIAL', 9, 1, 1, 1, 7, '-/-/-', '02/11/2018', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:22', NULL),
(13, 15, 'RESOLUCIÓN DIRECTORIAL', 6, 1, 1, 1, 1, '-/-/-', '1995-11-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:22', NULL),
(14, 16, 'RESOLUCIÓN DIRECTORIAL', 2, 1, 1, 1, 1, '-/-/-', '01/07/1986', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:23', NULL),
(15, 17, 'RESOLUCIÓN DIRECTORIAL', 10, 1, 1, 1, 9, '-/-/-', '01/07/1986', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:23', NULL),
(16, 18, 'RESOLUCIÓN DIRECTORIAL', 10, 1, 1, 1, 1, '-/-/-', '01/07/1986', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:23', NULL),
(17, 19, 'RESOLUCIÓN DIRECTORIAL', 3, 1, 1, 1, 1, '-/-/-', '1988-08-16', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:23', NULL),
(18, 20, 'RESOLUCIÓN DIRECTORIAL', 12, 1, 1, 1, 10, '-/-/-', '01/07/2006', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:24', NULL),
(19, 21, 'RESOLUCIÓN DIRECTORIAL', 12, 1, 1, 1, 10, '-/-/-', '01/01/2019', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:25', NULL),
(20, 22, 'RESOLUCIÓN DIRECTORIAL', 8, 1, 1, 1, 12, '-/-/-', '01/04/2013', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:25', NULL),
(21, 23, 'RESOLUCIÓN DIRECTORIAL', 11, 1, 1, 1, 2, '-/-/-', '31/12/2014', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:25', NULL),
(22, 24, 'RESOLUCIÓN DIRECTORIAL', 14, 1, 1, 1, 1, '-/-/-', '01/07/1986', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:25', NULL),
(23, 25, 'RESOLUCIÓN DIRECTORIAL', 8, 1, 1, 1, 12, '-/-/-', '2015-12-31', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:26', NULL),
(24, 26, 'RESOLUCIÓN DIRECTORIAL', 1, 1, 1, 1, 7, '-/-/-', '1988-08-16', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:26', NULL),
(25, 27, 'RESOLUCIÓN DIRECTORIAL', 11, 1, 1, 1, 1, '-/-/-', '1988-08-16', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:26', NULL),
(26, 28, 'RESOLUCIÓN DIRECTORIAL', 1, 2, 1, 1, 14, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:27', NULL),
(27, 29, 'RESOLUCIÓN DIRECTORIAL', 1, 1, 1, 1, 14, '-/-/-', '1993-06-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:27', NULL),
(28, 30, 'RESOLUCIÓN DIRECTORIAL', 1, 1, 1, 1, 1, '-/-/-', '1988-08-16', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:27', NULL),
(29, 31, 'RESOLUCIÓN DIRECTORIAL', 9, 1, 1, 1, 1, '-/-/-', '1989-12-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:28', NULL),
(30, 32, 'RESOLUCIÓN DIRECTORIAL', 1, 1, 1, 1, 14, '-/-/-', '2010-08-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:28', NULL),
(31, 33, 'RESOLUCIÓN DIRECTORIAL', 8, 1, 1, 1, 7, '-/-/-', '01/05/2011', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:28', NULL),
(32, 34, 'RESOLUCIÓN DIRECTORIAL', 1, 1, 1, 1, 14, '-/-/-', '2016-10-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:28', NULL),
(33, 35, 'RESOLUCIÓN DIRECTORIAL', 15, 1, 1, 1, 16, '-/-/-', '01/11/1984', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:29', NULL),
(34, 36, 'RESOLUCIÓN DIRECTORIAL', 13, 1, 1, 1, 11, '-/-/-', '01/01/2019', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:29', NULL),
(35, 37, 'RESOLUCIÓN DIRECTORIAL', 8, 1, 1, 1, 7, '-/-/-', '01/07/1986', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:29', NULL),
(36, 38, 'RESOLUCIÓN DIRECTORIAL', 12, 1, 1, 1, 16, '-/-/-', '2012-07-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:30', NULL),
(37, 39, 'RESOLUCIÓN DIRECTORIAL', 14, 1, 1, 1, 3, '-/-/-', '01/01/1993', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:30', NULL),
(38, 40, 'RESOLUCIÓN DIRECTORIAL', 13, 1, 1, 1, 16, '-/-/-', '01/07/1986', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:30', NULL),
(39, 41, 'RESOLUCIÓN DIRECTORIAL', 4, 1, 1, 1, 12, '-/-/-', '01/06/2013', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:30', NULL),
(40, 42, 'RESOLUCIÓN DIRECTORIAL', 16, 1, 1, 1, 14, '-/-/-', '02/11/2018', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:31', NULL),
(41, 43, 'RESOLUCIÓN DIRECTORIAL', 16, 1, 1, 1, 18, '-/-/-', '01/01/2003', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:31', NULL),
(42, 44, 'RESOLUCIÓN DIRECTORIAL', 16, 1, 1, 1, 1, '-/-/-', '16/10/1995', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:32', NULL),
(43, 45, 'RESOLUCIÓN DIRECTORIAL', 5, 1, 1, 1, 1, '-/-/-', '01/11/1984', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:32', NULL),
(44, 46, 'RESOLUCIÓN DIRECTORIAL', 13, 1, 1, 1, 17, '-/-/-', '2013-06-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:32', NULL),
(45, 47, 'RESOLUCIÓN DIRECTORIAL', 1, 1, 1, 1, 11, '-/-/-', '1988-08-16', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:33', NULL),
(46, 48, 'RESOLUCIÓN DIRECTORIAL', 1, 1, 1, 1, 14, '-/-/-', '02/11/2018', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:33', NULL),
(47, 49, 'RESOLUCIÓN DIRECTORIAL', 5, 1, 1, 1, 2, '-/-/-', '2016-10-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:34', NULL),
(48, 50, 'RESOLUCIÓN DIRECTORIAL', 11, 1, 1, 1, 1, '-/-/-', '01/01/2003', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:34', NULL),
(49, 51, 'RESOLUCIÓN DIRECTORIAL', 15, 1, 1, 1, 11, '-/-/-', '2010-08-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:34', NULL),
(50, 52, 'RESOLUCIÓN DIRECTORIAL', 1, 1, 1, 1, 19, '-/-/-', '01/04/2008', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:34', NULL),
(51, 53, 'RESOLUCIÓN DIRECTORIAL', 15, 1, 1, 1, 8, '-/-/-', '2013-06-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:35', NULL),
(52, 54, 'RESOLUCIÓN DIRECTORIAL', 19, 1, 1, 1, 17, '-/-/-', '01/01/2019', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:35', NULL),
(53, 55, 'RESOLUCIÓN DIRECTORIAL', 1, 1, 1, 1, 1, '-/-/-', '01/01/1993', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:35', NULL),
(54, 56, 'RESOLUCIÓN DIRECTORIAL', 9, 1, 1, 1, 7, '-/-/-', '2015-12-31', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:36', NULL),
(55, 57, 'RESOLUCIÓN DIRECTORIAL', 3, 1, 1, 1, 1, '-/-/-', '01/01/2003', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:36', NULL),
(56, 58, 'RESOLUCIÓN DIRECTORIAL', 6, 1, 1, 1, 1, '-/-/-', '01/12/1986', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:36', NULL),
(57, 59, 'RESOLUCIÓN DIRECTORIAL', 1, 1, 1, 1, 14, '-/-/-', '2015-12-31', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:36', NULL),
(58, 60, 'RESOLUCIÓN DIRECTORIAL', 18, 1, 1, 1, 1, '-/-/-', '1988-08-16', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:37', NULL),
(59, 61, 'RESOLUCIÓN DIRECTORIAL', 7, 1, 1, 1, 2, '-/-/-', '2016-10-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:37', NULL),
(60, 62, 'RESOLUCIÓN DIRECTORIAL', 2, 1, 1, 1, 7, '-/-/-', '01/10/2017', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:37', NULL),
(61, 63, 'RESOLUCIÓN DIRECTORIAL', 1, 2, 1, 1, 14, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:37', NULL),
(62, 64, 'RESOLUCIÓN DIRECTORIAL', 13, 1, 1, 1, 2, '-/-/-', '1988-08-16', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:37', NULL),
(63, 65, 'RESOLUCIÓN DIRECTORIAL', 13, 3, 1, 1, 11, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:38', NULL),
(64, 66, 'RESOLUCIÓN DIRECTORIAL', 20, 1, 1, 1, 9, '-/-/-', '01/01/2003', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:38', NULL),
(65, 67, 'RESOLUCIÓN DIRECTORIAL', 6, 1, 1, 1, 2, '-/-/-', '31/12/2014', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:39', NULL),
(66, 68, 'RESOLUCIÓN DIRECTORIAL', 7, 1, 1, 1, 2, '-/-/-', '2016-10-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:39', NULL),
(67, 69, 'RESOLUCIÓN DIRECTORIAL', 21, 1, 1, 1, 20, '-/-/-', '31/12/1989', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:39', NULL),
(68, 70, 'RESOLUCIÓN DIRECTORIAL', 1, 1, 1, 1, 21, '-/-/-', '2008-04-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:40', NULL),
(69, 71, 'RESOLUCIÓN DIRECTORIAL', 12, 1, 1, 1, 6, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:40', NULL),
(70, 72, 'RESOLUCIÓN DIRECTORIAL', 3, 1, 1, 1, 21, '-/-/-', '01/01/2019', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:41', NULL),
(71, 73, 'RESOLUCIÓN DIRECTORIAL', 1, 1, 1, 1, 21, '-/-/-', '2008-05-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:41', NULL),
(72, 74, 'RESOLUCIÓN DIRECTORIAL', 22, 1, 1, 1, 8, '-/-/-', '1988-08-16', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:41', NULL),
(73, 75, 'RESOLUCIÓN DIRECTORIAL', 12, 1, 1, 1, 8, '-/-/-', '2010-08-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:41', NULL),
(74, 76, 'RESOLUCIÓN DIRECTORIAL', 1, 1, 1, 1, 1, '-/-/-', '01/11/1984', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:42', NULL),
(75, 77, 'RESOLUCIÓN DIRECTORIAL', 23, 1, 1, 1, 1, '-/-/-', '1989-07-10', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:42', NULL),
(76, 78, 'RESOLUCIÓN DIRECTORIAL', 10, 1, 1, 1, 2, '-/-/-', '2014-12-31', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:42', NULL),
(77, 79, 'RESOLUCIÓN DIRECTORIAL', 10, 1, 1, 1, 8, '-/-/-', '1995-11-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:42', NULL),
(78, 80, 'RESOLUCIÓN DIRECTORIAL', 23, 1, 1, 1, 16, '-/-/-', '2013-06-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:43', NULL),
(79, 81, 'RESOLUCIÓN DIRECTORIAL', 14, 1, 1, 1, 3, '-/-/-', '01/11/1984', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:43', NULL),
(80, 82, 'RESOLUCIÓN DIRECTORIAL', 9, 1, 1, 1, 7, '-/-/-', '2016-10-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:43', NULL),
(81, 83, 'RESOLUCIÓN DIRECTORIAL', 25, 1, 1, 1, 1, '-/-/-', '01/07/1986', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:44', NULL),
(82, 84, 'RESOLUCIÓN DIRECTORIAL', 6, 1, 1, 1, 2, '-/-/-', '31/12/2014', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:44', NULL),
(83, 85, 'RESOLUCIÓN DIRECTORIAL', 26, 1, 1, 1, 11, '-/-/-', '01/01/2003', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:44', NULL),
(84, 86, 'RESOLUCIÓN DIRECTORIAL', 5, 1, 1, 1, 8, '-/-/-', '1988-03-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:44', NULL),
(85, 87, 'RESOLUCIÓN DIRECTORIAL', 9, 1, 1, 1, 7, '-/-/-', '2012-07-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:45', NULL),
(86, 88, 'RESOLUCIÓN DIRECTORIAL', 22, 1, 1, 1, 3, '-/-/-', '1977-08-04', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:45', NULL),
(87, 89, 'RESOLUCIÓN DIRECTORIAL', 8, 1, 1, 1, 3, '-/-/-', '1984-12-21', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:45', NULL),
(88, 90, 'RESOLUCIÓN DIRECTORIAL', 9, 1, 1, 1, 2, '-/-/-', '2015-07-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:45', NULL),
(89, 91, 'RESOLUCIÓN DIRECTORIAL', 1, 1, 1, 1, 23, '-/-/-', '1995-11-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:46', NULL),
(90, 92, 'RESOLUCIÓN DIRECTORIAL', 12, 1, 1, 1, 17, '-/-/-', '2013-06-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:47', NULL),
(91, 93, 'RESOLUCIÓN DIRECTORIAL', 12, 1, 1, 1, 17, '-/-/-', '2012-07-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:47', NULL),
(92, 94, 'RESOLUCIÓN DIRECTORIAL', 2, 1, 1, 1, 8, '-/-/-', '2013-06-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:47', NULL),
(93, 95, 'RESOLUCIÓN DIRECTORIAL', 19, 1, 1, 1, 16, '-/-/-', '2002-01-22', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:47', NULL),
(94, 96, 'RESOLUCIÓN DIRECTORIAL', 1, 1, 1, 1, 14, '-/-/-', '2015-12-31', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:47', NULL),
(95, 97, 'RESOLUCIÓN DIRECTORIAL', 21, 1, 1, 1, 2, '-/-/-', '2013-06-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:48', NULL),
(96, 98, 'RESOLUCIÓN DIRECTORIAL', 11, 1, 1, 1, 3, '-/-/-', '2008-05-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:48', NULL),
(97, 99, 'RESOLUCIÓN DIRECTORIAL', 1, 1, 1, 1, 3, '-/-/-', '1981-07-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:48', NULL),
(98, 100, 'RESOLUCIÓN DIRECTORIAL', 2, 1, 1, 1, 1, '-/-/-', '1984-12-22', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:49', NULL),
(99, 101, 'RESOLUCIÓN DIRECTORIAL', 5, 1, 1, 1, 4, '-/-/-', '1995-11-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:49', NULL),
(100, 102, 'RESOLUCIÓN DIRECTORIAL', 14, 1, 1, 1, 3, '-/-/-', '1981-11-04', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:49', NULL),
(101, 103, 'RESOLUCIÓN DIRECTORIAL', 27, 1, 1, 1, 5, '-/-/-', '2012-12-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:49', NULL),
(102, 104, 'RESOLUCIÓN DIRECTORIAL', 9, 1, 1, 1, 3, '-/-/-', '1983-10-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:50', NULL),
(103, 105, 'RESOLUCIÓN DIRECTORIAL', 18, 1, 1, 1, 1, '-/-/-', '1990-01-08', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:50', NULL),
(104, 106, 'RESOLUCIÓN DIRECTORIAL', 22, 1, 1, 1, 20, '-/-/-', '1975-07-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:50', NULL),
(105, 107, 'RESOLUCIÓN DIRECTORIAL', 12, 1, 1, 1, 1, '-/-/-', '1975-07-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:50', NULL),
(106, 108, 'RESOLUCIÓN DIRECTORIAL', 8, 1, 1, 1, 1, '-/-/-', '1989-07-10', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:50', NULL),
(107, 109, 'RESOLUCIÓN DIRECTORIAL', 19, 1, 1, 1, 8, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:51', NULL),
(108, 110, 'RESOLUCIÓN DIRECTORIAL', 18, 1, 1, 1, 1, '-/-/-', '1997-09-22', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:51', NULL),
(109, 111, 'RESOLUCIÓN DIRECTORIAL', 4, 1, 1, 1, 3, '-/-/-', '1984-12-21', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:51', NULL),
(110, 112, 'RESOLUCIÓN DIRECTORIAL', 22, 1, 1, 1, 20, '-/-/-', '1979-12-18', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:51', NULL),
(111, 113, 'RESOLUCIÓN DIRECTORIAL', 27, 1, 1, 1, 1, '-/-/-', '1984-12-24', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:51', NULL),
(112, 114, 'RESOLUCIÓN DIRECTORIAL', 5, 1, 1, 1, 1, '-/-/-', '1995-11-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:52', NULL),
(113, 115, 'RESOLUCIÓN DIRECTORIAL', 12, 1, 1, 1, 17, '-/-/-', '2013-06-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:52', NULL),
(114, 116, 'RESOLUCIÓN DIRECTORIAL', 2, 1, 1, 1, 5, '-/-/-', '2012-12-14', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:52', NULL),
(115, 117, 'RESOLUCIÓN DIRECTORIAL', 6, 1, 1, 1, 1, '-/-/-', '1989-07-10', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:52', NULL),
(116, 118, 'RESOLUCIÓN DIRECTORIAL', 6, 3, 1, 1, 8, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:53', NULL),
(117, 119, 'RESOLUCIÓN DIRECTORIAL', 7, 1, 1, 1, 8, '-/-/-', '2012-07-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:53', NULL),
(118, 120, 'RESOLUCIÓN DIRECTORIAL', 14, 1, 1, 1, 1, '-/-/-', '2003-01-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:53', NULL),
(119, 121, 'RESOLUCIÓN DIRECTORIAL', 25, 1, 1, 1, 17, '-/-/-', '2013-06-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:53', NULL),
(120, 122, 'RESOLUCIÓN DIRECTORIAL', 13, 1, 1, 1, 3, '-/-/-', '2005-12-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:54', NULL),
(121, 123, 'RESOLUCIÓN DIRECTORIAL', 5, 1, 1, 1, 24, '-/-/-', '2010-08-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:54', NULL),
(122, 124, 'RESOLUCIÓN DIRECTORIAL', 8, 1, 1, 1, 15, '-/-/-', '1995-11-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:55', NULL),
(123, 125, 'RESOLUCIÓN DIRECTORIAL', 4, 1, 1, 1, 23, '-/-/-', '1993-01-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:55', NULL),
(124, 126, 'RESOLUCIÓN DIRECTORIAL', 8, 1, 1, 1, 1, '-/-/-', '1986-12-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:56', NULL),
(125, 127, 'RESOLUCIÓN DIRECTORIAL', 22, 1, 1, 1, 8, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:56', NULL),
(126, 128, 'RESOLUCIÓN DIRECTORIAL', 18, 1, 1, 1, 25, '-/-/-', '01/11/6', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:56', NULL),
(127, 129, 'RESOLUCIÓN DIRECTORIAL', 6, 1, 1, 1, 1, '-/-/-', '1999-02-16', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:56', NULL),
(128, 130, 'RESOLUCIÓN DIRECTORIAL', 22, 1, 1, 1, 8, '-/-/-', '2013-06-18', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:57', NULL),
(129, 131, 'RESOLUCIÓN DIRECTORIAL', 13, 1, 1, 1, 8, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:57', NULL),
(130, 132, 'RESOLUCIÓN DIRECTORIAL', 12, 1, 1, 1, 17, '-/-/-', '2013-06-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:57', NULL),
(131, 133, 'RESOLUCIÓN DIRECTORIAL', 22, 1, 1, 1, 8, '-/-/-', '2006-07-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:57', NULL),
(132, 134, 'RESOLUCIÓN DIRECTORIAL', 25, 1, 1, 1, 1, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:58', NULL),
(133, 135, 'RESOLUCIÓN DIRECTORIAL', 6, 1, 1, 1, 2, '-/-/-', '2015-12-31', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:58', NULL),
(134, 136, 'RESOLUCIÓN DIRECTORIAL', 7, 1, 1, 1, 26, '-/-/-', '01/01/2003', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:58', NULL),
(135, 137, 'RESOLUCIÓN DIRECTORIAL', 26, 1, 1, 1, 26, '-/-/-', '1982-06-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:59', NULL),
(136, 138, 'RESOLUCIÓN DIRECTORIAL', 14, 1, 1, 1, 2, '-/-/-', '2016-10-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:59', NULL),
(137, 139, 'RESOLUCIÓN DIRECTORIAL', 9, 1, 1, 1, 1, '-/-/-', '1993-09-17', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:59', NULL),
(138, 140, 'RESOLUCIÓN DIRECTORIAL', 6, 1, 1, 1, 3, '-/-/-', '22/04/1983', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:59', NULL),
(139, 141, 'RESOLUCIÓN DIRECTORIAL', 6, 1, 1, 1, 1, '-/-/-', '1999-02-16', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:00', NULL),
(140, 142, 'RESOLUCIÓN DIRECTORIAL', 5, 1, 1, 1, 13, '-/-/-', '2016-10-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:00', NULL),
(141, 143, 'RESOLUCIÓN DIRECTORIAL', 28, 1, 1, 1, 23, '-/-/-', '01/07/1995', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:00', NULL),
(142, 144, 'RESOLUCIÓN DIRECTORIAL', 11, 1, 1, 1, 11, '-/-/-', '1974-12-04', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:00', NULL),
(143, 145, 'RESOLUCIÓN DIRECTORIAL', 6, 1, 1, 1, 1, '-/-/-', '1989-07-10', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:00', NULL),
(144, 146, 'RESOLUCIÓN DIRECTORIAL', 8, 1, 1, 1, 8, '-/-/-', '2013-06-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:01', NULL),
(145, 147, 'RESOLUCIÓN DIRECTORIAL', 16, 1, 1, 1, 14, '-/-/-', '2016-10-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:01', NULL),
(146, 148, 'RESOLUCIÓN DIRECTORIAL', 29, 1, 1, 1, 28, '-/-/-', '2002-11-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:01', NULL),
(147, 149, 'RESOLUCIÓN DIRECTORIAL', 8, 1, 1, 1, 1, '-/-/-', '1989-07-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:02', NULL),
(148, 150, 'RESOLUCIÓN DIRECTORIAL', 16, 1, 1, 1, 14, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:02', NULL),
(149, 151, 'RESOLUCIÓN DIRECTORIAL', 11, 1, 1, 1, 1, '-/-/-', '1997-08-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:02', NULL),
(150, 152, 'RESOLUCIÓN DIRECTORIAL', 6, 1, 1, 1, 2, '-/-/-', '2015-12-31', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:02', NULL),
(151, 153, 'RESOLUCIÓN DIRECTORIAL', 25, 1, 1, 1, 8, '-/-/-', '1982-10-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:03', NULL),
(152, 154, 'RESOLUCIÓN DIRECTORIAL', 18, 1, 1, 1, 1, '-/-/-', '1995-11-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:03', NULL),
(153, 155, 'RESOLUCIÓN DIRECTORIAL', 14, 1, 1, 1, 5, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:03', NULL),
(154, 156, 'RESOLUCIÓN DIRECTORIAL', 8, 1, 1, 1, 13, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:03', NULL),
(155, 157, 'RESOLUCIÓN DIRECTORIAL', 1, 1, 1, 1, 2, '-/-/-', '2015-12-31', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:03', NULL),
(156, 158, 'RESOLUCIÓN DIRECTORIAL', 20, 1, 1, 1, 29, '-/-/-', '1984-12-12', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:04', NULL),
(157, 159, 'RESOLUCIÓN DIRECTORIAL', 18, 1, 1, 1, 30, '-/-/-', '1995-11-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:04', NULL),
(158, 160, 'RESOLUCIÓN DIRECTORIAL', 8, 1, 1, 1, 7, '-/-/-', '02/11/2018', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:04', NULL),
(159, 161, 'RESOLUCIÓN DIRECTORIAL', 9, 1, 1, 1, 8, '-/-/-', '1988-08-16', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:04', NULL),
(160, 162, 'RESOLUCIÓN DIRECTORIAL', 1, 1, 1, 1, 1, '-/-/-', '1995-11-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:05', NULL),
(161, 163, 'RESOLUCIÓN DIRECTORIAL', 11, 1, 1, 1, 1, '-/-/-', '2013-06-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:05', NULL),
(162, 164, 'RESOLUCIÓN DIRECTORIAL', 4, 1, 1, 1, 1, '-/-/-', '1988-08-16', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:05', NULL),
(163, 165, 'RESOLUCIÓN DIRECTORIAL', 8, 1, 1, 1, 7, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:06', NULL),
(164, 166, 'RESOLUCIÓN DIRECTORIAL', 8, 1, 1, 1, 7, '-/-/-', '31/12/2014', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:06', NULL),
(165, 167, 'RESOLUCIÓN DIRECTORIAL', 6, 1, 1, 1, 7, '-/-/-', '2015-12-31', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:06', NULL),
(166, 168, 'RESOLUCIÓN DIRECTORIAL', 14, 1, 1, 1, 1, '-/-/-', '1989-07-10', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:07', NULL),
(167, 169, 'RESOLUCIÓN DIRECTORIAL', 14, 1, 1, 1, 1, '-/-/-', '1993-04-12', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:07', NULL),
(168, 170, 'RESOLUCIÓN DIRECTORIAL', 6, 1, 1, 1, 1, '-/-/-', '1997-07-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:07', NULL),
(169, 171, 'RESOLUCIÓN DIRECTORIAL', 1, 1, 1, 1, 1, '-/-/-', '1997-06-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:07', NULL),
(170, 172, 'RESOLUCIÓN DIRECTORIAL', 20, 1, 1, 1, 17, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:08', NULL),
(171, 173, 'RESOLUCIÓN DIRECTORIAL', 27, 1, 1, 1, 5, '-/-/-', '2004-12-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:08', NULL),
(172, 174, 'RESOLUCIÓN DIRECTORIAL', 8, 1, 1, 1, 1, '-/-/-', '1995-11-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:08', NULL),
(173, 175, 'RESOLUCIÓN DIRECTORIAL', 7, 1, 1, 1, 7, '-/-/-', '1986-12-09', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:08', NULL),
(174, 176, 'RESOLUCIÓN DIRECTORIAL', 28, 1, 1, 1, 8, '-/-/-', '2013-06-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:09', NULL),
(175, 177, 'RESOLUCIÓN DIRECTORIAL', 13, 1, 1, 1, 11, '-/-/-', '1998-04-28', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:09', NULL),
(176, 178, 'RESOLUCIÓN DIRECTORIAL', 8, 1, 1, 1, 2, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:09', NULL),
(177, 179, 'RESOLUCIÓN DIRECTORIAL', 12, 3, 1, 1, 11, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:09', NULL),
(178, 180, 'RESOLUCIÓN DIRECTORIAL', 22, 1, 1, 1, 16, '-/-/-', '2013-06-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:10', NULL),
(179, 181, 'RESOLUCIÓN DIRECTORIAL', 8, 1, 1, 1, 5, '-/-/-', '10/02/2005', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:10', NULL),
(180, 182, 'RESOLUCIÓN DIRECTORIAL', 10, 1, 1, 1, 20, '-/-/-', '2005-12-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:10', NULL),
(181, 183, 'RESOLUCIÓN DIRECTORIAL', 6, 1, 1, 1, 1, '-/-/-', '1989-12-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:11', NULL),
(182, 184, 'RESOLUCIÓN DIRECTORIAL', 3, 1, 1, 1, 1, '-/-/-', '2003-01-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:11', NULL),
(183, 185, 'RESOLUCIÓN DIRECTORIAL', 4, 1, 1, 1, 1, '-/-/-', '1993-04-12', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:11', NULL),
(184, 186, 'RESOLUCIÓN DIRECTORIAL', 11, 1, 1, 1, 1, '-/-/-', '1999-05-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:12', NULL),
(185, 187, 'RESOLUCIÓN DIRECTORIAL', 8, 2, 1, 1, 8, '-/-/-', '10/07/1989', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:12', NULL),
(186, 188, 'RESOLUCIÓN DIRECTORIAL', 1, 1, 1, 1, 14, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:12', NULL),
(187, 189, 'RESOLUCIÓN DIRECTORIAL', 13, 1, 1, 1, 11, '-/-/-', '1997-06-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:12', NULL),
(188, 190, 'RESOLUCIÓN DIRECTORIAL', 1, 1, 1, 1, 2, '-/-/-', '2016-10-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:12', NULL),
(189, 191, 'RESOLUCIÓN DIRECTORIAL', 3, 1, 1, 1, 17, '-/-/-', '2010-08-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:13', NULL),
(190, 192, 'RESOLUCIÓN DIRECTORIAL', 6, 1, 1, 1, 2, '-/-/-', '28/11/2018', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:13', NULL),
(191, 193, 'RESOLUCIÓN DIRECTORIAL', 2, 1, 1, 1, 8, '-/-/-', '1999-02-16', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:13', NULL),
(192, 194, 'RESOLUCIÓN DIRECTORIAL', 30, 1, 1, 1, 2, '-/-/-', '2015-07-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:13', NULL),
(193, 195, 'RESOLUCIÓN DIRECTORIAL', 5, 1, 1, 1, 2, '-/-/-', '2015-07-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:14', NULL),
(194, 196, 'RESOLUCIÓN DIRECTORIAL', 4, 1, 1, 1, 1, '-/-/-', '1999-02-16', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:14', NULL),
(195, 197, 'RESOLUCIÓN DIRECTORIAL', 6, 1, 1, 1, 3, '-/-/-', '1981-10-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:14', NULL),
(196, 198, 'RESOLUCIÓN DIRECTORIAL', 10, 1, 1, 1, 7, '-/-/-', '2015-12-31', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:14', NULL),
(197, 199, 'RESOLUCIÓN DIRECTORIAL', 4, 1, 1, 1, 3, '-/-/-', '1978-07-18', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:15', NULL),
(198, 200, 'RESOLUCIÓN DIRECTORIAL', 11, 1, 1, 1, 2, '-/-/-', '2016-10-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:15', NULL),
(199, 201, 'RESOLUCIÓN DIRECTORIAL', 31, 1, 1, 1, 3, '-/-/-', '1998-02-16', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:15', NULL),
(200, 202, 'RESOLUCIÓN DIRECTORIAL', 14, 1, 1, 1, 1, '-/-/-', '1988-08-16', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:16', NULL),
(201, 203, 'RESOLUCIÓN DIRECTORIAL', 9, 1, 1, 1, 8, '-/-/-', '2013-06-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:16', NULL),
(202, 204, 'RESOLUCIÓN DIRECTORIAL', 14, 1, 1, 1, 2, '-/-/-', '2015-12-31', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:16', NULL),
(203, 205, 'RESOLUCIÓN DIRECTORIAL', 16, 1, 1, 1, 14, '-/-/-', '28/11/2018', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:16', NULL),
(204, 206, 'RESOLUCIÓN DIRECTORIAL', 28, 1, 1, 1, 23, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:17', NULL),
(205, 207, 'RESOLUCIÓN DIRECTORIAL', 1, 1, 1, 1, 16, '-/-/-', '1984-1221', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:17', NULL),
(206, 208, 'RESOLUCIÓN DIRECTORIAL', 6, 1, 1, 1, 1, '-/-/-', '1995-11-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:17', NULL),
(207, 209, 'RESOLUCIÓN DIRECTORIAL', 8, 1, 1, 1, 5, '-/-/-', '2012-12-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:18', NULL),
(208, 210, 'RESOLUCIÓN DIRECTORIAL', 32, 1, 1, 1, 16, '-/-/-', '1980-06-26', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:18', NULL),
(209, 211, 'RESOLUCIÓN DIRECTORIAL', 11, 1, 1, 1, 2, '-/-/-', '2015-12-31', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:18', NULL),
(210, 212, 'RESOLUCIÓN DIRECTORIAL', 18, 1, 1, 1, 1, '-/-/-', '2000-03-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:18', NULL),
(211, 213, 'RESOLUCIÓN DIRECTORIAL', 17, 1, 1, 1, 3, '-/-/-', '1979-08-16', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:19', NULL),
(212, 214, 'RESOLUCIÓN DIRECTORIAL', 11, 3, 1, 1, 8, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:19', NULL),
(213, 215, 'RESOLUCIÓN DIRECTORIAL', 1, 1, 1, 1, 14, '-/-/-', '2015-07-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:19', NULL),
(214, 216, 'RESOLUCIÓN DIRECTORIAL', 6, 1, 1, 1, 7, '-/-/-', '2015-07-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:19', NULL),
(215, 217, 'RESOLUCIÓN DIRECTORIAL', 21, 1, 1, 1, 3, '-/-/-', '1984-12-21', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:20', NULL),
(216, 218, 'RESOLUCIÓN DIRECTORIAL', 6, 1, 1, 1, 28, '-/-/-', '2010-08-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:20', NULL),
(217, 219, 'RESOLUCIÓN DIRECTORIAL', 11, 3, 1, 1, 8, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:20', NULL),
(218, 220, 'RESOLUCIÓN DIRECTORIAL', 1, 1, 1, 1, 2, '-/-/-', '2015-12-31', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:21', NULL),
(219, 221, 'RESOLUCIÓN DIRECTORIAL', 5, 1, 1, 1, 1, '-/-/-', '1989-12-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:21', NULL),
(220, 222, 'RESOLUCIÓN DIRECTORIAL', 22, 1, 1, 1, 8, '-/-/-', '2013-06-18', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:21', NULL),
(221, 223, 'RESOLUCIÓN DIRECTORIAL', 27, 3, 1, 1, 7, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:21', NULL),
(222, 224, 'RESOLUCIÓN DIRECTORIAL', 28, 1, 1, 1, 5, '-/-/-', '2004-12-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:22', NULL),
(223, 225, 'RESOLUCIÓN DIRECTORIAL', 8, 1, 1, 1, 7, '-/-/-', '02/11/2018', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:22', NULL),
(224, 226, 'RESOLUCIÓN DIRECTORIAL', 4, 1, 1, 1, 7, '-/-/-', '28/11/2018', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:22', NULL),
(225, 227, 'RESOLUCIÓN DIRECTORIAL', 1, 3, 1, 1, 14, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:22', NULL),
(226, 228, 'RESOLUCIÓN DIRECTORIAL', 9, 3, 1, 1, 8, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:23', NULL),
(227, 229, 'RESOLUCIÓN DIRECTORIAL', 6, 1, 1, 1, 2, '-/-/-', '28/11/2018', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:23', NULL),
(228, 230, 'RESOLUCIÓN DIRECTORIAL', 2, 1, 1, 1, 2, '-/-/-', '28/11/2018', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:23', NULL),
(229, 231, 'RESOLUCIÓN DIRECTORIAL', 8, 1, 1, 1, 2, '-/-/-', '02/11/2018', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:23', NULL),
(230, 232, 'RESOLUCIÓN DIRECTORIAL', 4, 1, 1, 1, 7, '-/-/-', '01/05/2011', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:23', NULL),
(231, 233, 'RESOLUCIÓN DIRECTORIAL', 12, 1, 1, 1, 8, '-/-/-', '2013-06-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:24', NULL),
(232, 234, 'RESOLUCIÓN DIRECTORIAL', 11, 1, 1, 1, 10, '-/-/-', '01/07/2006', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:24', NULL),
(233, 235, 'RESOLUCIÓN DIRECTORIAL', 1, 1, 1, 1, 21, '-/-/-', '2010-08-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:24', NULL),
(234, 236, 'RESOLUCIÓN DIRECTORIAL', 13, 1, 1, 1, 17, '-/-/-', '2010-08-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:25', NULL),
(235, 237, 'RESOLUCIÓN DIRECTORIAL', 14, 1, 1, 1, 2, '-/-/-', '01/10/2017', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:25', NULL),
(236, 238, 'RESOLUCIÓN DIRECTORIAL', 18, 1, 1, 1, 2, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:25', NULL),
(237, 239, 'RESOLUCIÓN DIRECTORIAL', 9, 1, 1, 1, 7, '-/-/-', '31/12/2014', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:25', NULL),
(238, 240, 'RESOLUCIÓN DIRECTORIAL', 30, 3, 1, 1, 8, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:26', NULL),
(239, 241, 'RESOLUCIÓN DIRECTORIAL', 14, 1, 1, 1, 6, '-/-/-', '02/11/2018', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:26', NULL),
(240, 242, 'RESOLUCIÓN DIRECTORIAL', 7, 1, 1, 1, 7, '-/-/-', '2016-10-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:26', NULL),
(241, 243, 'RESOLUCIÓN DIRECTORIAL', 9, 3, 1, 1, 11, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:26', NULL),
(242, 244, 'RESOLUCIÓN DIRECTORIAL', 16, 1, 1, 1, 14, '-/-/-', '02/11/2018', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:27', NULL),
(243, 245, 'RESOLUCIÓN DIRECTORIAL', 2, 1, 1, 1, 2, '-/-/-', '28/11/2018', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:27', NULL),
(244, 246, 'RESOLUCIÓN DIRECTORIAL', 8, 1, 1, 1, 2, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:27', NULL),
(245, 247, 'RESOLUCIÓN DIRECTORIAL', 9, 1, 1, 1, 7, '-/-/-', '2016-10-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:27', NULL),
(246, 248, 'RESOLUCIÓN DIRECTORIAL', 8, 1, 1, 1, 2, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:28', NULL),
(247, 249, 'RESOLUCIÓN DIRECTORIAL', 8, 1, 1, 1, 2, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:28', NULL),
(248, 250, 'RESOLUCIÓN DIRECTORIAL', 9, 1, 1, 1, 7, '-/-/-', '2016-10-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:28', NULL),
(249, 251, 'RESOLUCIÓN DIRECTORIAL', 6, 1, 1, 1, 2, '-/-/-', '2015-12-31', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:28', NULL),
(250, 252, 'RESOLUCIÓN DIRECTORIAL', 1, 1, 1, 1, 7, '-/-/-', '2016-10-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:29', NULL),
(251, 253, 'RESOLUCIÓN DIRECTORIAL', 30, 1, 1, 1, 2, '-/-/-', '2015-12-31', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:29', NULL),
(252, 254, 'RESOLUCIÓN DIRECTORIAL', 9, 1, 1, 1, 2, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:29', NULL),
(253, 255, 'RESOLUCIÓN DIRECTORIAL', 6, 1, 1, 1, 2, '-/-/-', '28/11/2018', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:29', NULL),
(254, 256, 'RESOLUCIÓN DIRECTORIAL', 16, 1, 1, 1, 14, '-/-/-', '28/11/2018', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:30', NULL),
(255, 257, 'RESOLUCIÓN DIRECTORIAL', 9, 1, 1, 1, 7, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:30', NULL),
(256, 258, 'RESOLUCIÓN DIRECTORIAL', 6, 1, 1, 1, 2, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:30', NULL),
(257, 259, 'RESOLUCIÓN DIRECTORIAL', 11, 3, 1, 1, 8, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:30', NULL),
(258, 260, 'RESOLUCIÓN DIRECTORIAL', 2, 1, 1, 1, 2, '-/-/-', '01/10/2017', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:31', NULL),
(259, 261, 'RESOLUCIÓN DIRECTORIAL', 8, 1, 1, 1, 7, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:31', NULL),
(260, 262, 'RESOLUCIÓN DIRECTORIAL', 8, 1, 1, 1, 7, '-/-/-', '02/11/2018', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:31', NULL),
(261, 263, 'RESOLUCIÓN DIRECTORIAL', 9, 3, 1, 1, 13, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:31', NULL),
(262, 264, 'RESOLUCIÓN DIRECTORIAL', 6, 1, 1, 1, 7, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:32', NULL),
(263, 265, 'RESOLUCIÓN DIRECTORIAL', 1, 1, 1, 1, 12, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:32', NULL),
(264, 266, 'RESOLUCIÓN DIRECTORIAL', 16, 1, 1, 1, 14, '-/-/-', '28/11/2018', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:32', NULL),
(265, 267, 'RESOLUCIÓN DIRECTORIAL', 36, 3, 1, 1, 13, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:32', NULL),
(266, 268, 'RESOLUCIÓN DIRECTORIAL', 14, 1, 1, 1, 5, '-/-/-', '01/12/2012', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:33', NULL),
(267, 269, 'RESOLUCIÓN DIRECTORIAL', 7, 3, 1, 1, 8, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:33', NULL),
(268, 270, 'RESOLUCIÓN DIRECTORIAL', 21, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:34', NULL),
(269, 271, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:34', NULL),
(270, 272, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:34', NULL),
(271, 273, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:35', NULL),
(272, 274, 'RESOLUCIÓN DIRECTORIAL', 37, 1, 1, 1, 32, '-/-/-', '1995-05-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:35', NULL),
(273, 275, 'RESOLUCIÓN DIRECTORIAL', 37, 1, 1, 1, 20, '-/-/-', '1988-12-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:35', NULL),
(274, 276, 'RESOLUCIÓN DIRECTORIAL', 37, 1, 1, 1, 15, '-/-/-', '1979-09-16', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:35', NULL),
(275, 277, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 32, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:36', NULL),
(276, 278, 'RESOLUCIÓN DIRECTORIAL', 37, 1, 1, 1, 1, '-/-/-', '1982-11-08', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:36', NULL),
(277, 279, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:36', NULL),
(278, 280, 'RESOLUCIÓN DIRECTORIAL', 13, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:37', NULL),
(279, 281, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:37', NULL),
(280, 282, 'RESOLUCIÓN DIRECTORIAL', 37, 1, 1, 1, 11, '-/-/-', '2010-08-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:38', NULL),
(281, 283, 'RESOLUCIÓN DIRECTORIAL', 37, 1, 1, 1, 3, '-/-/-', '2002-01-22', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:38', NULL),
(282, 284, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:38', NULL),
(283, 285, 'RESOLUCIÓN DIRECTORIAL', 37, 1, 1, 1, 1, '-/-/-', '22/04/1983', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:39', NULL),
(284, 286, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:39', NULL),
(285, 287, 'RESOLUCIÓN DIRECTORIAL', 37, 1, 1, 1, 11, '-/-/-', '2011-07-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:39', NULL),
(286, 288, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:39', NULL),
(287, 289, 'RESOLUCIÓN DIRECTORIAL', 37, 1, 1, 1, 1, '-/-/-', '1978-08-16', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:40', NULL),
(288, 290, 'RESOLUCIÓN DIRECTORIAL', 37, 1, 1, 1, 3, '-/-/-', '1978-07-18', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:40', NULL),
(289, 291, 'RESOLUCIÓN DIRECTORIAL', 37, 1, 1, 1, 11, '-/-/-', '1997-06-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:40', NULL),
(290, 292, 'RESOLUCIÓN DIRECTORIAL', 37, 1, 1, 1, 8, '-/-/-', '1986-12-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:41', NULL),
(291, 293, 'RESOLUCIÓN DIRECTORIAL', 5, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:41', NULL),
(292, 294, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:41', NULL),
(293, 295, 'RESOLUCIÓN DIRECTORIAL', 37, 1, 1, 1, 14, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:41', NULL),
(294, 296, 'RESOLUCIÓN DIRECTORIAL', 37, 1, 1, 1, 16, '-/-/-', '1975-12-11', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:42', NULL),
(295, 297, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:42', NULL),
(296, 298, 'RESOLUCIÓN DIRECTORIAL', 37, 1, 1, 1, 34, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:42', NULL),
(297, 299, 'RESOLUCIÓN DIRECTORIAL', 37, 1, 1, 1, 1, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:42', NULL),
(298, 300, 'RESOLUCIÓN DIRECTORIAL', 37, 1, 1, 1, 3, '-/-/-', '1974-06-20', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:42', NULL);
INSERT INTO `contratos` (`codigo`, `id_trabajador`, `tipo_resolucion`, `area_trabajador`, `situacion_laboral`, `jornada_laboral`, `regimen_laboral`, `cargo_laboral`, `fecha_resolucion`, `fecha_inicio`, `fecha_fin`, `url_doc`, `id_doc`, `name_doc`, `folios`, `descripcion`, `estado`, `fecha_creacion`, `glosa`) VALUES
(299, 301, 'RESOLUCIÓN DIRECTORIAL', 6, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:43', NULL),
(300, 302, 'RESOLUCIÓN DIRECTORIAL', 37, 1, 1, 1, 3, '-/-/-', '1974-09-02', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:43', NULL),
(301, 303, 'RESOLUCIÓN DIRECTORIAL', 37, 1, 1, 1, 1, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:44', NULL),
(302, 304, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:44', NULL),
(303, 305, 'RESOLUCIÓN DIRECTORIAL', 37, 1, 1, 1, 11, '-/-/-', '1986-12-19', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:44', NULL),
(304, 306, 'RESOLUCIÓN DIRECTORIAL', 37, 1, 1, 1, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:44', NULL),
(305, 307, 'RESOLUCIÓN DIRECTORIAL', 37, 1, 1, 1, 2, '-/-/-', '2006-06-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:44', NULL),
(306, 308, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:45', NULL),
(307, 309, 'RESOLUCIÓN DIRECTORIAL', 37, 1, 1, 1, 1, '-/-/-', '1989-07-10', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:45', NULL),
(308, 310, 'RESOLUCIÓN DIRECTORIAL', 37, 1, 1, 1, 11, '-/-/-', '2011-07-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:45', NULL),
(309, 311, 'RESOLUCIÓN DIRECTORIAL', 37, 1, 1, 1, 1, '-/-/-', '1989-07-10', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:45', NULL),
(310, 312, 'RESOLUCIÓN DIRECTORIAL', 37, 1, 1, 1, 1, '-/-/-', '1983-06-27', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:46', NULL),
(311, 313, 'RESOLUCIÓN DIRECTORIAL', 37, 1, 1, 1, 3, '-/-/-', '1974-09-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:46', NULL),
(312, 314, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:46', NULL),
(313, 315, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:47', NULL),
(314, 316, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:47', NULL),
(315, 317, 'RESOLUCIÓN DIRECTORIAL', 37, 1, 1, 1, 26, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:47', NULL),
(316, 318, 'RESOLUCIÓN DIRECTORIAL', 37, 1, 1, 1, 3, '-/-/-', '1974-09-03', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:47', NULL),
(317, 319, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:48', NULL),
(318, 320, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:48', NULL),
(319, 321, 'RESOLUCIÓN DIRECTORIAL', 37, 1, 1, 1, 8, '-/-/-', '1996-09-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:48', NULL),
(320, 322, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:48', NULL),
(321, 323, 'RESOLUCIÓN DIRECTORIAL', 37, 1, 1, 1, 27, '-/-/-', '1975-03-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:49', NULL),
(322, 324, 'RESOLUCIÓN DIRECTORIAL', 37, 1, 1, 1, 17, '-/-/-', '1986-12-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:49', NULL),
(323, 325, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:49', NULL),
(324, 326, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:50', NULL),
(325, 327, 'RESOLUCIÓN DIRECTORIAL', 37, 1, 1, 1, 1, '-/-/-', '1975-05-02', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:50', NULL),
(326, 328, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:51', NULL),
(327, 329, 'RESOLUCIÓN DIRECTORIAL', 37, 1, 1, 1, 1, '-/-/-', '1988-08-16', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:51', NULL),
(328, 330, 'RESOLUCIÓN DIRECTORIAL', 37, 1, 1, 1, 17, '-/-/-', '2013-06-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:51', NULL),
(329, 331, 'RESOLUCIÓN DIRECTORIAL', 37, 1, 1, 1, 4, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:51', NULL),
(330, 332, 'RESOLUCIÓN DIRECTORIAL', 37, 1, 1, 1, 11, '-/-/-', '2010-08-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:52', NULL),
(331, 333, 'RESOLUCIÓN DIRECTORIAL', 37, 1, 1, 1, 17, '-/-/-', '2013-06-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:52', NULL),
(332, 334, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:52', NULL),
(333, 335, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:52', NULL),
(334, 336, 'RESOLUCIÓN DIRECTORIAL', 37, 1, 1, 1, 1, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:52', NULL),
(335, 337, 'RESOLUCIÓN DIRECTORIAL', 37, 1, 1, 1, 3, '-/-/-', '1977-05-18', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:53', NULL),
(336, 338, 'RESOLUCIÓN DIRECTORIAL', 37, 1, 1, 1, 8, '-/-/-', '1999-05-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:53', NULL),
(337, 339, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:53', NULL),
(338, 340, 'RESOLUCIÓN DIRECTORIAL', 37, 1, 1, 1, 1, '-/-/-', '1980-03-24', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:53', NULL),
(339, 341, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:53', NULL),
(340, 342, 'RESOLUCIÓN DIRECTORIAL', 37, 1, 1, 1, 3, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:54', NULL),
(341, 343, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:54', NULL),
(342, 344, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:54', NULL),
(343, 345, 'RESOLUCIÓN DIRECTORIAL', 37, 1, 1, 1, 11, '-/-/-', '1982-10-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:54', NULL),
(344, 346, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:55', NULL),
(345, 347, 'RESOLUCIÓN DIRECTORIAL', 37, 1, 1, 1, 1, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:55', NULL),
(346, 348, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:55', NULL),
(347, 349, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:55', NULL),
(348, 350, 'RESOLUCIÓN DIRECTORIAL', 37, 6, 1, 1, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:55', NULL),
(349, 351, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:56', NULL),
(350, 352, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:56', NULL),
(351, 353, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:56', NULL),
(352, 354, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:56', NULL),
(353, 355, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:57', NULL),
(354, 356, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:57', NULL),
(355, 357, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:57', NULL),
(356, 358, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:58', NULL),
(357, 359, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:58', NULL),
(358, 360, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:58', NULL),
(359, 361, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:58', NULL),
(360, 362, 'RESOLUCIÓN DIRECTORIAL', 37, 1, 1, 1, 13, '-/-/-', '2016-10-01', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:59', NULL),
(361, 363, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:59', NULL),
(362, 364, 'RESOLUCIÓN DIRECTORIAL', 37, 1, 1, 1, 7, '-/-/-', '28/11/2018', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:59', NULL),
(363, 365, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:59', NULL),
(364, 366, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:00', NULL),
(365, 367, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:00', NULL),
(366, 368, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:00', NULL),
(367, 369, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:01', NULL),
(368, 370, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:01', NULL),
(369, 371, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:01', NULL),
(370, 372, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:01', NULL),
(371, 373, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:01', NULL),
(372, 374, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:02', NULL),
(373, 375, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:02', NULL),
(374, 376, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:02', NULL),
(375, 377, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:03', NULL),
(376, 378, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:03', NULL),
(377, 379, 'RESOLUCIÓN DIRECTORIAL', 37, 3, 1, 1, 29, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:03', NULL),
(378, 380, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:03', NULL),
(379, 381, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:04', NULL),
(380, 382, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:04', NULL),
(381, 383, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:04', NULL),
(382, 384, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:05', NULL),
(383, 385, 'RESOLUCIÓN DIRECTORIAL', 25, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:05', NULL),
(384, 386, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:05', NULL),
(385, 387, 'RESOLUCIÓN DIRECTORIAL', 8, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:05', NULL),
(386, 388, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:06', NULL),
(387, 389, 'RESOLUCIÓN DIRECTORIAL', 23, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:06', NULL),
(388, 390, 'RESOLUCIÓN DIRECTORIAL', 23, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:06', NULL),
(389, 391, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:06', NULL),
(390, 392, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:07', NULL),
(391, 393, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:07', NULL),
(392, 394, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:07', NULL),
(393, 395, 'RESOLUCIÓN DIRECTORIAL', 8, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:07', NULL),
(394, 396, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:08', NULL),
(395, 397, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:08', NULL),
(396, 398, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:08', NULL),
(397, 399, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:08', NULL),
(398, 400, 'RESOLUCIÓN DIRECTORIAL', 11, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:09', NULL),
(399, 401, 'RESOLUCIÓN DIRECTORIAL', 38, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:09', NULL),
(400, 402, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:09', NULL),
(401, 403, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:10', NULL),
(402, 404, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:10', NULL),
(403, 405, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:10', NULL),
(404, 406, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:11', NULL),
(405, 407, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:11', NULL),
(406, 408, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:12', NULL),
(407, 409, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:12', NULL),
(408, 410, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:12', NULL),
(409, 411, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:12', NULL),
(410, 412, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:13', NULL),
(411, 413, 'RESOLUCIÓN DIRECTORIAL', 37, 3, 1, 1, 35, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:13', NULL),
(412, 414, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:14', NULL),
(413, 415, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:14', NULL),
(414, 416, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:14', NULL),
(415, 417, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:15', NULL),
(416, 418, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:15', NULL),
(417, 419, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:15', NULL),
(418, 420, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:15', NULL),
(419, 421, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:16', NULL),
(420, 422, 'RESOLUCIÓN DIRECTORIAL', 21, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:16', NULL),
(421, 423, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:16', NULL),
(422, 424, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:17', NULL),
(423, 425, 'RESOLUCIÓN DIRECTORIAL', 13, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:17', NULL),
(424, 426, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:17', NULL),
(425, 427, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:17', NULL),
(426, 428, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:18', NULL),
(427, 429, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:18', NULL),
(428, 430, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:18', NULL),
(429, 431, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:18', NULL),
(430, 432, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:19', NULL),
(431, 433, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:19', NULL),
(432, 434, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:19', NULL),
(433, 435, 'RESOLUCIÓN DIRECTORIAL', 21, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:19', NULL),
(434, 436, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:20', NULL),
(435, 437, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:20', NULL),
(436, 438, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:20', NULL),
(437, 439, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:21', NULL),
(438, 440, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:21', NULL),
(439, 441, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:21', NULL),
(440, 442, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:21', NULL),
(441, 443, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:21', NULL),
(442, 444, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:22', NULL),
(443, 445, 'RESOLUCIÓN DIRECTORIAL', 37, 7, 1, 1, 36, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:22', NULL),
(444, 446, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:22', NULL),
(445, 447, 'RESOLUCIÓN DIRECTORIAL', 8, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:23', NULL),
(446, 448, 'RESOLUCIÓN DIRECTORIAL', 8, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:23', NULL),
(447, 449, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:23', NULL),
(448, 450, 'RESOLUCIÓN DIRECTORIAL', 13, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:24', NULL),
(449, 451, 'RESOLUCIÓN DIRECTORIAL', 8, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:24', NULL),
(450, 452, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:24', NULL),
(451, 453, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:24', NULL),
(452, 454, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:25', NULL),
(453, 455, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:25', NULL),
(454, 456, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:25', NULL),
(455, 457, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:26', NULL),
(456, 458, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:26', NULL),
(457, 459, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:26', NULL),
(458, 460, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:27', NULL),
(459, 461, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:28', NULL),
(460, 462, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:28', NULL),
(461, 463, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:28', NULL),
(462, 464, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:28', NULL),
(463, 465, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:29', NULL),
(464, 466, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:29', NULL),
(465, 467, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:29', NULL),
(466, 468, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:29', NULL),
(467, 469, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:30', NULL),
(468, 470, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:30', NULL),
(469, 471, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:30', NULL),
(470, 472, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:30', NULL),
(471, 473, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:31', NULL),
(472, 474, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:31', NULL),
(473, 475, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:32', NULL),
(474, 476, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:32', NULL),
(475, 477, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:32', NULL),
(476, 478, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:32', NULL),
(477, 479, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:33', NULL),
(478, 480, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:33', NULL),
(479, 481, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:33', NULL),
(480, 482, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:34', NULL),
(481, 483, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:34', NULL),
(482, 484, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:34', NULL),
(483, 485, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:34', NULL),
(484, 486, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:35', NULL),
(485, 487, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:35', NULL),
(486, 488, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:35', NULL),
(487, 489, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:35', NULL),
(488, 490, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:35', NULL),
(489, 491, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:36', NULL),
(490, 492, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:36', NULL),
(491, 493, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:36', NULL),
(492, 494, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:36', NULL),
(493, 495, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:37', NULL),
(494, 496, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:37', NULL),
(495, 497, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:37', NULL),
(496, 498, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:37', NULL),
(497, 499, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:38', NULL),
(498, 500, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:38', NULL),
(499, 501, 'RESOLUCIÓN DIRECTORIAL', 14, 1, 1, 1, 7, '-/-/-', '28/11/2018', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:38', NULL),
(500, 502, 'RESOLUCIÓN DIRECTORIAL', 1, 3, 1, 1, 13, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:38', NULL),
(501, 503, 'RESOLUCIÓN DIRECTORIAL', 23, 1, 1, 1, 14, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:39', NULL),
(502, 504, 'RESOLUCIÓN DIRECTORIAL', 2, 1, 1, 1, 13, '-/-/-', '01/03/2015', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:39', NULL),
(503, 505, 'RESOLUCIÓN DIRECTORIAL', 19, 3, 1, 1, 35, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:39', NULL),
(504, 506, 'RESOLUCIÓN DIRECTORIAL', 6, 1, 1, 1, 12, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:40', NULL),
(505, 507, 'RESOLUCIÓN DIRECTORIAL', 8, 3, 1, 1, 13, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:40', NULL),
(506, 508, 'RESOLUCIÓN DIRECTORIAL', 8, 3, 1, 1, 13, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:40', NULL),
(507, 509, 'RESOLUCIÓN DIRECTORIAL', 6, 1, 1, 1, 13, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:41', NULL),
(508, 510, 'RESOLUCIÓN DIRECTORIAL', 33, 3, 1, 1, 13, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:41', NULL),
(509, 511, 'RESOLUCIÓN DIRECTORIAL', 6, 1, 1, 1, 7, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:41', NULL),
(510, 512, 'RESOLUCIÓN DIRECTORIAL', 23, 3, 1, 1, 30, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:42', NULL),
(511, 513, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:42', NULL),
(512, 514, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:42', NULL),
(513, 515, 'RESOLUCIÓN DIRECTORIAL', 37, 3, 1, 1, 35, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:43', NULL),
(514, 516, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:43', NULL),
(515, 517, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:44', NULL),
(516, 518, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:44', NULL),
(517, 519, 'RESOLUCIÓN DIRECTORIAL', 13, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:44', NULL),
(518, 520, 'RESOLUCIÓN DIRECTORIAL', 13, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:45', NULL),
(519, 521, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:45', NULL),
(520, 522, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:45', NULL),
(521, 523, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:46', NULL),
(522, 524, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:46', NULL),
(523, 525, 'RESOLUCIÓN DIRECTORIAL', 37, 6, 1, 4, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:46', NULL),
(524, 526, 'RESOLUCIÓN DIRECTORIAL', 13, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:46', NULL),
(525, 527, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:46', NULL),
(526, 528, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:47', NULL),
(527, 529, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:47', NULL),
(528, 530, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:47', NULL),
(529, 531, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:47', NULL),
(530, 532, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:48', NULL),
(531, 533, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:48', NULL),
(532, 534, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:48', NULL),
(533, 535, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:49', NULL),
(534, 536, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:49', NULL),
(535, 537, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:50', NULL),
(536, 538, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:50', NULL),
(537, 539, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:50', NULL),
(538, 540, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:50', NULL),
(539, 541, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:51', NULL),
(540, 542, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:51', NULL),
(541, 543, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:51', NULL),
(542, 544, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:51', NULL),
(543, 545, 'RESOLUCIÓN DIRECTORIAL', 13, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:52', NULL),
(544, 546, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:52', NULL),
(545, 547, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:52', NULL),
(546, 548, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:53', NULL),
(547, 549, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:53', NULL),
(548, 550, 'RESOLUCIÓN DIRECTORIAL', 13, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:53', NULL),
(549, 551, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:53', NULL),
(550, 552, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:54', NULL),
(551, 553, 'RESOLUCIÓN DIRECTORIAL', 18, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:54', NULL),
(552, 554, 'RESOLUCIÓN DIRECTORIAL', 13, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:54', NULL),
(553, 555, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:55', NULL),
(554, 556, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:55', NULL),
(555, 557, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:55', NULL),
(556, 558, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:55', NULL),
(557, 559, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:56', NULL),
(558, 560, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:56', NULL),
(559, 561, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:56', NULL),
(560, 562, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:56', NULL),
(561, 563, 'RESOLUCIÓN DIRECTORIAL', 37, 6, 1, 4, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:56', NULL),
(562, 564, 'RESOLUCIÓN DIRECTORIAL', 37, 3, 1, 1, 13, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:57', NULL),
(563, 565, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:57', NULL),
(564, 566, 'RESOLUCIÓN DIRECTORIAL', 18, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:57', NULL),
(565, 567, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:57', NULL),
(566, 568, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:58', NULL),
(567, 569, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:58', NULL),
(568, 570, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:58', NULL),
(569, 571, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:58', NULL),
(570, 572, 'RESOLUCIÓN DIRECTORIAL', 13, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:59', NULL),
(571, 573, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:59', NULL),
(572, 574, 'RESOLUCIÓN DIRECTORIAL', 37, 2, 1, 1, 35, '-/-/-', '01/08/1980', NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:59', NULL),
(573, 575, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:59', NULL),
(574, 576, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:59', NULL),
(575, 577, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:00', NULL),
(576, 578, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:00', NULL),
(577, 579, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:00', NULL),
(578, 580, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:01', NULL),
(579, 581, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:01', NULL),
(580, 582, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:01', NULL),
(581, 583, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:01', NULL),
(582, 584, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:02', NULL),
(583, 585, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:02', NULL),
(584, 586, 'RESOLUCIÓN DIRECTORIAL', 13, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:02', NULL),
(585, 587, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:02', NULL),
(586, 588, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:03', NULL),
(587, 589, 'RESOLUCIÓN DIRECTORIAL', 12, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:03', NULL),
(588, 590, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:03', NULL),
(589, 591, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:04', NULL),
(590, 592, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:04', NULL),
(591, 593, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:04', NULL),
(592, 594, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:04', NULL),
(593, 595, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:05', NULL),
(594, 596, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:05', NULL),
(595, 597, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:05', NULL),
(596, 598, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:06', NULL),
(597, 599, 'RESOLUCIÓN DIRECTORIAL', 37, 2, 1, 1, 8, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:06', NULL),
(598, 600, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:06', NULL),
(599, 601, 'RESOLUCIÓN DIRECTORIAL', 8, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:06', NULL),
(600, 602, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:07', NULL),
(601, 603, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:07', NULL),
(602, 604, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:07', NULL),
(603, 605, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:07', NULL);
INSERT INTO `contratos` (`codigo`, `id_trabajador`, `tipo_resolucion`, `area_trabajador`, `situacion_laboral`, `jornada_laboral`, `regimen_laboral`, `cargo_laboral`, `fecha_resolucion`, `fecha_inicio`, `fecha_fin`, `url_doc`, `id_doc`, `name_doc`, `folios`, `descripcion`, `estado`, `fecha_creacion`, `glosa`) VALUES
(604, 606, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:08', NULL),
(605, 607, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:08', NULL),
(606, 608, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:08', NULL),
(607, 609, 'RESOLUCIÓN DIRECTORIAL', 13, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:08', NULL),
(608, 610, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:09', NULL),
(609, 611, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:09', NULL),
(610, 612, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:09', NULL),
(611, 613, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:10', NULL),
(612, 614, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:10', NULL),
(613, 615, 'RESOLUCIÓN DIRECTORIAL', 10, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:10', NULL),
(614, 616, 'RESOLUCIÓN DIRECTORIAL', 10, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:10', NULL),
(615, 617, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:11', NULL),
(616, 618, 'RESOLUCIÓN DIRECTORIAL', 13, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:11', NULL),
(617, 619, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:11', NULL),
(618, 620, 'RESOLUCIÓN DIRECTORIAL', 13, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:12', NULL),
(619, 621, 'RESOLUCIÓN DIRECTORIAL', 13, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:12', NULL),
(620, 622, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:13', NULL),
(621, 623, 'RESOLUCIÓN DIRECTORIAL', 8, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:13', NULL),
(622, 624, 'RESOLUCIÓN DIRECTORIAL', 8, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:13', NULL),
(623, 625, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:14', NULL),
(624, 626, 'RESOLUCIÓN DIRECTORIAL', 18, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:14', NULL),
(625, 627, 'RESOLUCIÓN DIRECTORIAL', 25, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:14', NULL),
(626, 628, 'RESOLUCIÓN DIRECTORIAL', 23, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:14', NULL),
(627, 629, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:15', NULL),
(628, 630, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:15', NULL),
(629, 631, 'RESOLUCIÓN DIRECTORIAL', 13, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:15', NULL),
(630, 632, 'RESOLUCIÓN DIRECTORIAL', 10, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:15', NULL),
(631, 633, 'RESOLUCIÓN DIRECTORIAL', 13, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:16', NULL),
(632, 634, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:16', NULL),
(633, 635, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:16', NULL),
(634, 636, 'RESOLUCIÓN DIRECTORIAL', 13, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:17', NULL),
(635, 637, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:17', NULL),
(636, 638, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:17', NULL),
(637, 639, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:17', NULL),
(638, 640, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:17', NULL),
(639, 641, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:18', NULL),
(640, 642, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:18', NULL),
(641, 643, 'RESOLUCIÓN DIRECTORIAL', 23, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:19', NULL),
(642, 644, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:19', NULL),
(643, 645, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:20', NULL),
(644, 646, 'RESOLUCIÓN DIRECTORIAL', 6, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:20', NULL),
(645, 647, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:20', NULL),
(646, 648, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:21', NULL),
(647, 649, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:21', NULL),
(648, 650, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:21', NULL),
(649, 651, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:21', NULL),
(650, 652, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:22', NULL),
(651, 653, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:22', NULL),
(652, 654, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:22', NULL),
(653, 655, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:22', NULL),
(654, 656, 'RESOLUCIÓN DIRECTORIAL', 15, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:22', NULL),
(655, 657, 'RESOLUCIÓN DIRECTORIAL', 13, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:23', NULL),
(656, 658, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:23', NULL),
(657, 659, 'RESOLUCIÓN DIRECTORIAL', 10, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:23', NULL),
(658, 660, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:23', NULL),
(659, 661, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:23', NULL),
(660, 662, 'RESOLUCIÓN DIRECTORIAL', 13, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:24', NULL),
(661, 663, 'RESOLUCIÓN DIRECTORIAL', 25, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:24', NULL),
(662, 664, 'RESOLUCIÓN DIRECTORIAL', 13, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:24', NULL),
(663, 665, 'RESOLUCIÓN DIRECTORIAL', 13, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:24', NULL),
(664, 666, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:25', NULL),
(665, 667, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:25', NULL),
(666, 668, 'RESOLUCIÓN DIRECTORIAL', 3, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:25', NULL),
(667, 669, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:26', NULL),
(668, 670, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:26', NULL),
(669, 671, 'RESOLUCIÓN DIRECTORIAL', 37, 2, 1, 1, 3, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:26', NULL),
(670, 672, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:27', NULL),
(671, 673, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:27', NULL),
(672, 674, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:27', NULL),
(673, 675, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:28', NULL),
(674, 676, 'RESOLUCIÓN DIRECTORIAL', 37, 3, 1, 1, 30, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:28', NULL),
(675, 677, 'RESOLUCIÓN DIRECTORIAL', 13, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:28', NULL),
(676, 678, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:29', NULL),
(677, 679, 'RESOLUCIÓN DIRECTORIAL', 13, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:29', NULL),
(678, 680, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:29', NULL),
(679, 681, 'RESOLUCIÓN DIRECTORIAL', 13, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:30', NULL),
(680, 682, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:30', NULL),
(681, 683, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:30', NULL),
(682, 684, 'RESOLUCIÓN DIRECTORIAL', 37, 6, 1, 4, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:31', NULL),
(683, 685, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:31', NULL),
(684, 686, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:31', NULL),
(685, 687, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:32', NULL),
(686, 688, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:32', NULL),
(687, 689, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:33', NULL),
(688, 690, 'RESOLUCIÓN DIRECTORIAL', 2, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:33', NULL),
(689, 691, 'RESOLUCIÓN DIRECTORIAL', 8, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:33', NULL),
(690, 692, 'RESOLUCIÓN DIRECTORIAL', 40, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:33', NULL),
(691, 693, 'RESOLUCIÓN DIRECTORIAL', 40, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:33', NULL),
(692, 694, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:34', NULL),
(693, 695, 'RESOLUCIÓN DIRECTORIAL', 40, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:34', NULL),
(694, 696, 'RESOLUCIÓN DIRECTORIAL', 40, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:34', NULL),
(695, 697, 'RESOLUCIÓN DIRECTORIAL', 40, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:34', NULL),
(696, 698, 'RESOLUCIÓN DIRECTORIAL', 8, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:35', NULL),
(697, 699, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:35', NULL),
(698, 700, 'RESOLUCIÓN DIRECTORIAL', 37, 8, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:35', NULL),
(699, 701, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:35', NULL),
(700, 702, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:36', NULL),
(701, 703, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:36', NULL),
(702, 704, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:37', NULL),
(703, 705, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:37', NULL),
(704, 706, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:37', NULL),
(705, 707, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:38', NULL),
(706, 708, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:38', NULL),
(707, 709, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:38', NULL),
(708, 710, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:38', NULL),
(709, 711, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:39', NULL),
(710, 712, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:39', NULL),
(711, 713, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:39', NULL),
(712, 714, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:39', NULL),
(713, 714, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:40', NULL),
(714, 716, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:40', NULL),
(715, 717, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:40', NULL),
(716, 718, 'RESOLUCIÓN DIRECTORIAL', 37, 5, 1, 3, 33, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:41', NULL),
(717, 719, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:41', NULL),
(718, 720, 'RESOLUCIÓN DIRECTORIAL', 37, 4, 1, 2, 31, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:41', NULL),
(719, 721, 'RESOLUCIÓN DIRECTORIAL', 37, 2, 1, 1, 11, '-/-/-', NULL, NULL, NULL, NULL, NULL, NULL, 'IMPORTADO DE PADRON GENRAL', '1', '2021-06-25 13:06:42', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `corte`
--

CREATE TABLE `corte` (
  `idempresa` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `codigo` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `titulo` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `corte`
--

INSERT INTO `corte` (`idempresa`, `codigo`, `titulo`, `descripcion`, `estado`, `fecha_creacion`) VALUES
('001', 'CRT', 'Mi Empresa2', 'Le informamos que su servicio de internet a sido suspendido por falta de pago. Evite el pago adicional para la reconexión de su servicio de internet.', '1', '2019-07-22 21:07:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dcarrito`
--

CREATE TABLE `dcarrito` (
  `idcarrito` char(10) COLLATE utf8_spanish_ci NOT NULL,
  `item` int(2) NOT NULL,
  `idproducto` char(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `precio` decimal(9,2) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `total` decimal(9,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dcontactanos`
--

CREATE TABLE `dcontactanos` (
  `id` int(2) NOT NULL,
  `titulo` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `icono` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `activo` decimal(1,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `declaraciones_juradas`
--

CREATE TABLE `declaraciones_juradas` (
  `codigo` int(11) NOT NULL,
  `id_trabajador` int(11) NOT NULL,
  `tipo_documento` varchar(600) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_emision` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `url_archivo` varchar(600) COLLATE utf8_spanish_ci DEFAULT NULL,
  `name_archivo` varchar(350) COLLATE utf8_spanish_ci DEFAULT NULL,
  `folios_resolucion` varchar(3) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `declaraciones_juradas`
--

INSERT INTO `declaraciones_juradas` (`codigo`, `id_trabajador`, `tipo_documento`, `fecha_emision`, `url_archivo`, `name_archivo`, `folios_resolucion`, `fecha_creacion`, `estado`, `glosa`) VALUES
(5, 333, 'BOLETA DE DATOS PERSONALES', '2021-06-16', 'storage/PDF/gCz8YHAWWSDl93k6NV3eln2Pk2FPYObz1Q1HIsLX.pdf', 'infor nota JUAN .pdf', '32', '2021-06-02 01:06:38', '1', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `demerito`
--

CREATE TABLE `demerito` (
  `codigo` int(11) NOT NULL,
  `id_trabajador` int(11) NOT NULL,
  `tipo_resolucion` varchar(120) COLLATE utf8_spanish_ci DEFAULT NULL,
  `motivo_resolucion` varchar(520) COLLATE utf8_spanish_ci DEFAULT NULL,
  `numero_resolucion` varchar(120) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_resolucion` varchar(11) COLLATE utf8_spanish_ci DEFAULT NULL,
  `url_doc` varchar(350) COLLATE utf8_spanish_ci DEFAULT NULL,
  `name_doc` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_doc` int(11) NOT NULL,
  `folios` varchar(3) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dequipos`
--

CREATE TABLE `dequipos` (
  `idequipo` int(11) NOT NULL,
  `idservicio` char(10) COLLATE utf8_spanish_ci NOT NULL,
  `idcliente` char(20) COLLATE utf8_spanish_ci NOT NULL,
  `costo` decimal(9,2) DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `formulario` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `idestado` char(2) COLLATE utf8_spanish_ci DEFAULT NULL,
  `relacion_servicio` char(2) COLLATE utf8_spanish_ci DEFAULT NULL,
  `facturado` char(2) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `desplazamiento`
--

CREATE TABLE `desplazamiento` (
  `codigo` int(11) NOT NULL,
  `id_trabajador` int(11) NOT NULL,
  `tipo_resolucion` varchar(120) COLLATE utf8_spanish_ci DEFAULT NULL,
  `motivo_resolucion` varchar(520) COLLATE utf8_spanish_ci DEFAULT NULL,
  `numero_resolucion` varchar(120) COLLATE utf8_spanish_ci DEFAULT NULL,
  `area_trabajador` int(11) NOT NULL,
  `situacion_laboral` int(11) NOT NULL,
  `jornada_laboral` int(11) NOT NULL,
  `regimen_laboral` int(11) NOT NULL,
  `cargo_laboral` int(11) NOT NULL,
  `fecha_resolucion` varchar(11) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_inicio` varchar(11) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_fin` varchar(11) COLLATE utf8_spanish_ci DEFAULT NULL,
  `url_doc` varchar(350) COLLATE utf8_spanish_ci DEFAULT NULL,
  `name_doc` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_doc` int(11) NOT NULL,
  `folios` varchar(3) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dfactura`
--

CREATE TABLE `dfactura` (
  `item` int(11) NOT NULL,
  `idfactura` char(10) COLLATE utf8_spanish_ci NOT NULL,
  `idproducto` int(11) DEFAULT NULL,
  `idservicio` char(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `um` char(3) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cantidad` decimal(3,0) DEFAULT NULL,
  `precio` decimal(16,2) DEFAULT NULL,
  `descuento` decimal(16,2) DEFAULT NULL,
  `subtotal` decimal(16,2) DEFAULT NULL,
  `impuesto` decimal(16,2) DEFAULT NULL,
  `total` decimal(16,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dgeneral`
--

CREATE TABLE `dgeneral` (
  `id` int(2) NOT NULL,
  `idgeneral` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `titulo` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `imagen` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `url_imagen` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `extension` char(5) COLLATE utf8_spanish_ci DEFAULT NULL,
  `img_color` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fila` decimal(2,0) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `tipo_img_icon` decimal(1,0) DEFAULT NULL,
  `icono` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `btn_idprod` char(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idtipo` char(3) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dimagen_producto`
--

CREATE TABLE `dimagen_producto` (
  `id` int(11) NOT NULL,
  `idproducto` char(10) COLLATE utf8_spanish_ci NOT NULL,
  `item` decimal(2,0) DEFAULT NULL,
  `principal` decimal(1,0) DEFAULT NULL,
  `imagen` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `url_imagen` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `extencion` char(4) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direcciones`
--

CREATE TABLE `direcciones` (
  `codigo` int(11) NOT NULL,
  `id_trabajador` int(11) NOT NULL,
  `tipo_via` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tipo_direccion` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `zonas` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `direccion` varchar(300) COLLATE utf8_spanish_ci DEFAULT NULL,
  `departamento` varchar(70) COLLATE utf8_spanish_ci DEFAULT NULL,
  `provincia` varchar(70) COLLATE utf8_spanish_ci DEFAULT NULL,
  `distrito` varchar(70) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT 1,
  `url_archivo` varchar(600) COLLATE utf8_spanish_ci DEFAULT NULL,
  `name_archivo` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `folios_resolucion` varchar(4) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dmision`
--

CREATE TABLE `dmision` (
  `id` int(2) NOT NULL,
  `idmision` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `titulo` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `imagen` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `url_imagen` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `extension` char(5) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `img_color` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `fila` decimal(2,0) DEFAULT NULL,
  `tipo_img_icon` decimal(1,0) DEFAULT NULL,
  `icono` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idtipo` char(3) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dnosotros`
--

CREATE TABLE `dnosotros` (
  `id` int(2) NOT NULL,
  `idnosotros` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `titulo` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `imagen` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `url_imagen` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `img_color` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fila` decimal(1,0) DEFAULT NULL,
  `tipo_img_icon` decimal(1,0) DEFAULT NULL,
  `icono` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idtipo` char(3) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documento`
--

CREATE TABLE `documento` (
  `iddocumento` int(3) NOT NULL,
  `descripcion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `dsc_corta` char(4) COLLATE utf8_spanish_ci DEFAULT NULL,
  `longitud_caracteres` decimal(2,0) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `documento`
--

INSERT INTO `documento` (`iddocumento`, `descripcion`, `dsc_corta`, `longitud_caracteres`, `fecha_creacion`, `estado`) VALUES
(1, 'DOCUMENTO DE IDENTIDAD', 'DNI', '9', '2018-11-01 00:00:00', '1'),
(3, 'CARNET DE EXTRAN Carnet de Extranjeria', 'CE', '15', '2018-11-20 14:11:03', '1'),
(4, 'CARNET DE EXTRANJERIA', 'PSRT', '11', '2019-01-05 20:01:35', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentos_adjuntos`
--

CREATE TABLE `documentos_adjuntos` (
  `idempresa` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `iddocumento` int(11) NOT NULL,
  `idcliente` char(20) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `imagen` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `url_imagen` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `tipo_doc` char(10) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentos_digitalizados`
--

CREATE TABLE `documentos_digitalizados` (
  `codigo` int(11) NOT NULL,
  `id_trabajador` int(11) NOT NULL,
  `tipo_documento` varchar(600) COLLATE utf8_spanish_ci DEFAULT NULL,
  `seccion` varchar(3) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_emision` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `url_archivo` varchar(600) COLLATE utf8_spanish_ci DEFAULT NULL,
  `name_archivo` varchar(350) COLLATE utf8_spanish_ci DEFAULT NULL,
  `folios_resolucion` varchar(3) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `numero_resolucion` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `documentos_digitalizados`
--

INSERT INTO `documentos_digitalizados` (`codigo`, `id_trabajador`, `tipo_documento`, `seccion`, `fecha_emision`, `url_archivo`, `name_archivo`, `folios_resolucion`, `fecha_creacion`, `estado`, `glosa`, `numero_resolucion`) VALUES
(3, 3, 'CARTIFICADO', '3', '2021-06-25 14:06:58', 'storage/PDF/dbxdRnApi0D139eWA5lgXsVJko5I89YFIGHR1pvb.pdf', 'AnyConv.com__LOTIZACION  DEFINITIVA   NOVIEMBRE.pdf', '5', '2021-06-25 14:06:58', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documento_venta`
--

CREATE TABLE `documento_venta` (
  `iddocumento` int(3) NOT NULL,
  `descripcion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `dsc_corta` char(4) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT 1,
  `es_boleta` decimal(1,0) DEFAULT 0,
  `es_factura` decimal(1,0) DEFAULT 0,
  `serie` char(4) COLLATE utf8_spanish_ci DEFAULT NULL,
  `correlativo` char(8) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `documento_venta`
--

INSERT INTO `documento_venta` (`iddocumento`, `descripcion`, `dsc_corta`, `fecha_creacion`, `glosa`, `estado`, `es_boleta`, `es_factura`, `serie`, `correlativo`) VALUES
(1, 'BOLETA', 'BLT', NULL, NULL, '1', '1', '0', '0001', '00000066'),
(2, 'FACTURA', 'FAC', NULL, NULL, '1', '0', '1', 'F001', '00000051');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dvision`
--

CREATE TABLE `dvision` (
  `id` int(2) NOT NULL,
  `idvision` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `titulo` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `imagen` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `url_imagen` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `extension` char(5) COLLATE utf8_spanish_ci DEFAULT NULL,
  `img_color` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fila` decimal(2,0) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `tipo_img_icon` decimal(1,0) DEFAULT NULL,
  `icono` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idtipo` char(3) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `dvision`
--

INSERT INTO `dvision` (`id`, `idvision`, `titulo`, `descripcion`, `imagen`, `url_imagen`, `extension`, `img_color`, `fila`, `fecha_creacion`, `estado`, `tipo_img_icon`, `icono`, `idtipo`) VALUES
(1, 'VSN', 'El Liderazgo', 'Es la característica esencial de nuestros trabajadores, el cual nos direcciona hacia un mismo objetivo, demostrado a través de su trabajo diario.', 'image', NULL, NULL, NULL, '1', '2018-08-02', '1', '0', 'security', '007'),
(3, 'VSN', 'La Integridad', 'Nos desenvolvemos con total transparencia y honestidad, actuando responsablemente a través de nuestras acciones o comentarios, sean de forma individual y grupal.', '580b57fbd9996e24bc43bf5b.png', 'images/580b57fbd9996e24bc43bf5b.png', NULL, NULL, '1', '2018-08-03', '1', '1', NULL, NULL),
(4, 'VSN', 'El Respeto', 'Somos defensores del respeto mutuo y la dignidad de los trabajadores, con la sociedad en general.', 'FLU.jpg', 'images/FLU.jpg', NULL, NULL, '1', '2018-08-03', '1', '1', 'group', NULL),
(6, 'GEN', 'prueba', 'probando', 'FLU.jpg', 'images/FLU.jpg', NULL, NULL, '2', NULL, '1', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `edocs`
--

CREATE TABLE `edocs` (
  `codigo` int(5) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `extencion` char(4) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descargas` decimal(3,0) DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `ruc` char(11) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `idempresa` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `RUC` char(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `referencia` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `DNI1` char(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `representante1` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `DNI2` char(8) COLLATE utf8_spanish_ci DEFAULT NULL,
  `representante2` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT 1,
  `fecha_creacion` datetime DEFAULT NULL,
  `razon_social` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` char(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `documento1` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `documento2` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `imagen` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `url_imagen` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `marca` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `iddocumento` int(3) DEFAULT NULL,
  `tipo` char(4) COLLATE utf8_spanish_ci DEFAULT NULL,
  `principal` decimal(1,0) DEFAULT NULL,
  `idcliente` char(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idusuario` int(11) NOT NULL,
  `titulo` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`idempresa`, `nombre`, `direccion`, `RUC`, `referencia`, `DNI1`, `representante1`, `DNI2`, `representante2`, `estado`, `fecha_creacion`, `razon_social`, `telefono`, `documento1`, `documento2`, `imagen`, `url_imagen`, `marca`, `iddocumento`, `tipo`, `principal`, `idcliente`, `idusuario`, `titulo`) VALUES
('E01', 'hospital', 'san juan de uraba antioquia', '10412508001', NULL, '123456789', 'Alexander', NULL, NULL, '1', '2021-06-25 02:06:45', 'hospital', '3505212988', NULL, NULL, 'perfil.jpg', 'images/perfil.jpg', NULL, 1, NULL, NULL, NULL, 2, 'Maxcom');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa_usuario`
--

CREATE TABLE `empresa_usuario` (
  `idempresa` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `idusuario` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `idequipo` int(1) NOT NULL,
  `idempresa` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `marca` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `modelo` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `modo` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ip` char(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `mascara` char(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `usuario` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `contrasena` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `SSID` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `glosa` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `idmodo` decimal(2,0) DEFAULT NULL,
  `idgrupo` int(3) DEFAULT NULL,
  `idmarca` int(3) DEFAULT NULL,
  `idmodelo` int(3) DEFAULT NULL,
  `serie_equipo` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `iddocumento` int(3) DEFAULT NULL,
  `numero_serie` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `precio` decimal(9,2) DEFAULT NULL,
  `mac` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idestado` char(2) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `idcliente` char(11) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ccq` char(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `senal` char(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tx` char(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `rx` char(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `formulario` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `coordenadas` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluaciones`
--

CREATE TABLE `evaluaciones` (
  `codigo` int(11) NOT NULL,
  `id_trabajador` int(11) NOT NULL,
  `tipo_resolucion` varchar(120) COLLATE utf8_spanish_ci DEFAULT NULL,
  `numero_resolucion` varchar(120) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_resolucion` varchar(11) COLLATE utf8_spanish_ci DEFAULT NULL,
  `motivo_resolucion` varchar(520) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nombre` varchar(520) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL,
  `url_doc` varchar(350) COLLATE utf8_spanish_ci DEFAULT NULL,
  `name_doc` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_doc` int(11) NOT NULL,
  `folios` varchar(3) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `idempresa` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `codigo` char(10) COLLATE utf8_spanish_ci NOT NULL,
  `periodo` date DEFAULT NULL,
  `fecha_emision` datetime DEFAULT NULL,
  `fecha_vencimiento` datetime DEFAULT NULL,
  `idalmacen` char(3) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idcliente` char(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `formulario` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `idforma_pago` char(3) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idmoneda` char(3) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `iddocumento` char(3) COLLATE utf8_spanish_ci DEFAULT NULL,
  `serie` char(4) COLLATE utf8_spanish_ci DEFAULT NULL,
  `numero` char(8) COLLATE utf8_spanish_ci DEFAULT NULL,
  `subtotal` decimal(9,2) DEFAULT NULL,
  `descuento` decimal(9,2) DEFAULT NULL,
  `subtotal_neto` decimal(9,2) DEFAULT NULL,
  `impuesto` decimal(6,2) DEFAULT NULL,
  `total` decimal(9,2) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `idestado` char(3) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `detalle` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_pago` datetime DEFAULT NULL,
  `idservicio` char(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `fecha_corte` date DEFAULT NULL,
  `perfil` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `vbajada` char(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `vsubida` char(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `costo_servicio` decimal(9,0) DEFAULT NULL,
  `idusuario_registro_pago` int(11) DEFAULT NULL,
  `imagen` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `url_imagen` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `familiares`
--

CREATE TABLE `familiares` (
  `codigo` int(11) NOT NULL,
  `id_trabajador` int(11) NOT NULL,
  `tipo_familiares` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nombre` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `iddocumento` int(11) NOT NULL,
  `nro_documento` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `apellido_paterno` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `apellido_materno` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `sexo` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_nacimiento` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` varchar(600) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fichas`
--

CREATE TABLE `fichas` (
  `idempresa` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `idfichas` char(10) COLLATE utf8_spanish_ci NOT NULL,
  `idperfil` int(11) NOT NULL,
  `idrouter` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `usuarios` int(3) DEFAULT NULL,
  `prefijo` char(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `long_usuario` int(2) DEFAULT NULL,
  `long_contra` int(2) DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fichas_det`
--

CREATE TABLE `fichas_det` (
  `codigo` int(11) NOT NULL,
  `idfichas` char(10) COLLATE utf8_spanish_ci NOT NULL,
  `usuario` char(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `contra` char(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idestado` char(2) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_inicio` datetime DEFAULT NULL,
  `fecha_fin` datetime DEFAULT NULL,
  `concurrencia` int(3) DEFAULT NULL,
  `tx` decimal(20,2) DEFAULT NULL,
  `rx` decimal(20,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fichas_plantilla`
--

CREATE TABLE `fichas_plantilla` (
  `codigo` int(11) NOT NULL,
  `iddiseno` int(11) DEFAULT NULL,
  `descripcion` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cfondo_cabecera` char(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cfondo_footer` char(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cfondo_cuerpo` char(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `texto1` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `texto2` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `size_texto2` int(3) DEFAULT NULL,
  `color_precio` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `size_precio` int(3) DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `fichas_plantilla`
--

INSERT INTO `fichas_plantilla` (`codigo`, `iddiseno`, `descripcion`, `cfondo_cabecera`, `cfondo_footer`, `cfondo_cuerpo`, `texto1`, `texto2`, `size_texto2`, `color_precio`, `size_precio`, `estado`, `fecha_creacion`, `glosa`) VALUES
(1, 1, 'prueba', '#d32f2f', '#d32f2f', '#d32f2f', 'prueba1', 'prueba2', 14, NULL, 14, '1', '2019-08-20 07:08:09', NULL),
(2, 1, 'prueba', '#d32f2f', '#d32f2f', '#d32f2f', 'prueba1', 'prueba2', 14, NULL, 14, '1', '2019-09-06 08:09:33', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formas_pago`
--

CREATE TABLE `formas_pago` (
  `codigo` int(3) NOT NULL,
  `banco` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tipo_cta` char(3) COLLATE utf8_spanish_ci DEFAULT NULL,
  `numero_cta` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `moneda` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `titular` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `imagen` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `url_imagen` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `formas_pago`
--

INSERT INTO `formas_pago` (`codigo`, `banco`, `tipo_cta`, `numero_cta`, `moneda`, `titular`, `imagen`, `url_imagen`, `estado`, `glosa`, `fecha_creacion`) VALUES
(2, '1', 'GEN', '1', NULL, NULL, 'vision.png', 'images/vision.png', '0', NULL, '2018-09-13'),
(3, 'INTERBANK', 'MNA', '234567764', 'SOLES', 'AYAHUASCA', 'vision.png', 'images/vision.png', '1', NULL, '2018-09-13'),
(4, 'BBVA CONTINENTAL', 'MEX', '78656744586', 'SOILES', 'AYAHUASCA', 'nosotros1.png', 'images/nosotros1.png', '1', NULL, '2018-09-13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forma_pagos`
--

CREATE TABLE `forma_pagos` (
  `idforma_pago` int(3) NOT NULL,
  `descripcion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `dsc_corta` char(4) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `forma_pagos`
--

INSERT INTO `forma_pagos` (`idforma_pago`, `descripcion`, `dsc_corta`, `fecha_creacion`, `estado`) VALUES
(1, 'EFECTIVO', 'EFE', '2018-11-01 00:00:00', '1'),
(2, 'TARJETA DE CREDITO VISA', 'VISA', '2018-11-08 00:00:00', '1'),
(3, 'MASTERCARD78', 'MC', '2018-11-20 15:11:01', '1'),
(4, 'prueba', 'fgfg', '2019-01-02 20:01:14', '3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `general`
--

CREATE TABLE `general` (
  `id` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `titulo` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `general`
--

INSERT INTO `general` (`id`, `titulo`, `descripcion`, `estado`, `fecha_creacion`) VALUES
('GEN', 'Nuestras Fortalezas', NULL, '1', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE `grupo` (
  `idgrupo` int(3) NOT NULL,
  `descripcion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `dsc_corta` char(4) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo_pro`
--

CREATE TABLE `grupo_pro` (
  `idgrupo` char(10) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `herramienta_plantilla`
--

CREATE TABLE `herramienta_plantilla` (
  `codigo` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `cabecera_color` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `footer_color` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `menu_dark` decimal(1,0) DEFAULT NULL,
  `menu_colapsible` decimal(1,0) DEFAULT NULL,
  `cabecera_dark` decimal(1,0) DEFAULT NULL,
  `cabecera_fija` decimal(1,0) DEFAULT NULL,
  `cabecera_fondo_ocultar` decimal(1,0) DEFAULT NULL,
  `footer_dark` decimal(1,0) DEFAULT NULL,
  `footer_fija` decimal(1,0) DEFAULT NULL,
  `footer_ocultar` decimal(1,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_acceso`
--

CREATE TABLE `historial_acceso` (
  `codigo` int(11) NOT NULL,
  `host` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ip` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `historial_acceso`
--

INSERT INTO `historial_acceso` (`codigo`, `host`, `ip`, `fecha_creacion`) VALUES
(1, 'DESKTOP-MKHM72I', '192.168.204.1', '2018-12-30 11:12:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_recurrencia`
--

CREATE TABLE `historial_recurrencia` (
  `idempresa` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `codigo` int(11) NOT NULL,
  `idcliente` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `ip` char(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `mac` char(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nombre_host` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_ingreso` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hotspot_bienvenida`
--

CREATE TABLE `hotspot_bienvenida` (
  `idempresa` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `codigo` int(1) NOT NULL,
  `color_fondo` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `color_btn_navegar` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `color_btn_cerrar` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `link` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `mostrar_ip` decimal(1,0) DEFAULT NULL,
  `mostrar_mac` decimal(1,0) DEFAULT NULL,
  `mostrar_up_down` decimal(1,0) DEFAULT NULL,
  `mostrar_tiempo_con` decimal(1,0) DEFAULT NULL,
  `mostrar_status` decimal(1,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `hotspot_bienvenida`
--

INSERT INTO `hotspot_bienvenida` (`idempresa`, `codigo`, `color_fondo`, `color_btn_navegar`, `color_btn_cerrar`, `link`, `mostrar_ip`, `mostrar_mac`, `mostrar_up_down`, `mostrar_tiempo_con`, `mostrar_status`) VALUES
('001', 1, 'gradient-45deg-red-pink', 'gradient-45deg-deep-orange-orange', 'gradient-45deg-indigo-blue', 'https://telecomunicaciones.com.co/MaxcomTecnology/', '1', '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hotspot_logout`
--

CREATE TABLE `hotspot_logout` (
  `idempresa` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `codigo` int(1) NOT NULL,
  `color_fondo` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `color_btn_iniciar` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `mostrar_ip` decimal(1,0) DEFAULT NULL,
  `mostrar_mac` decimal(1,0) DEFAULT NULL,
  `mostrar_up_down` decimal(1,0) DEFAULT NULL,
  `mostrar_tiempo_con` decimal(1,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `hotspot_logout`
--

INSERT INTO `hotspot_logout` (`idempresa`, `codigo`, `color_fondo`, `color_btn_iniciar`, `mostrar_ip`, `mostrar_mac`, `mostrar_up_down`, `mostrar_tiempo_con`) VALUES
('001', 1, 'gradient-45deg-purple-deep-purple', 'blue lighten-3', '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hotspot_publicidad`
--

CREATE TABLE `hotspot_publicidad` (
  `codigo` int(11) NOT NULL,
  `idempresa` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `titulo` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `imagen` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `video` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `url_multimedia` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `color_fondo` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `desc_btn_oferta` varchar(80) COLLATE utf8_spanish_ci DEFAULT NULL,
  `link_btn_oferta` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `color_btn_oferta` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tipo_multimedia` decimal(1,0) DEFAULT NULL,
  `font_size_titulo` decimal(5,2) DEFAULT NULL,
  `font_size_desc` decimal(5,2) DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `importador`
--

CREATE TABLE `importador` (
  `codigo` int(11) NOT NULL,
  `Codigo_Pliego` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `Validado_por_Reniec` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `Numero_de_Documento` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `Nombres` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `incidencias`
--

CREATE TABLE `incidencias` (
  `idincidencias` int(11) NOT NULL,
  `idempresa` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `idcliente` char(11) COLLATE utf8_spanish_ci NOT NULL,
  `titulo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `iddepartamento` char(3) COLLATE utf8_spanish_ci DEFAULT NULL,
  `prioridad` decimal(1,0) NOT NULL,
  `imagen` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `url_imagen` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `estado` decimal(1,0) NOT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `innova_productos`
--

CREATE TABLE `innova_productos` (
  `idproducto` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `innova_productos`
--

INSERT INTO `innova_productos` (`idproducto`, `nombre`, `fecha_creacion`, `estado`) VALUES
('I01', 'INNOVAWISP', NULL, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ip_pool`
--

CREATE TABLE `ip_pool` (
  `codigo` int(11) NOT NULL,
  `idrouter` char(3) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ip_inicial` char(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ip_final` char(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ip_pool`
--

INSERT INTO `ip_pool` (`codigo`, `idrouter`, `descripcion`, `ip_inicial`, `ip_final`, `estado`, `fecha_creacion`, `glosa`) VALUES
(1, 'R01', 'TEST INNOVA', '192.168.1.5', '192.168.1.120', '1', '2019-08-23 01:08:28', NULL),
(3, 'R01', 'NODO SUR', '172.168.0.20', '172.168.5.200', '1', '2019-08-28 06:08:00', NULL),
(4, 'R02', 'NODO CENTRAL', '10.0.0.50', '10.0.4.180', '1', '2019-08-28 06:08:45', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jornada_laboral`
--

CREATE TABLE `jornada_laboral` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `hora_inicio` varchar(7) COLLATE utf8_spanish_ci DEFAULT NULL,
  `hora_fin` varchar(7) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` varchar(600) COLLATE utf8_spanish_ci DEFAULT NULL,
  `desc_corta` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `legajo`
--

CREATE TABLE `legajo` (
  `codigo` int(11) NOT NULL,
  `id_trabajador` int(11) NOT NULL,
  `fecha_resolucion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `folios_resolucion` varchar(3) COLLATE utf8_spanish_ci DEFAULT NULL,
  `numero_resolucion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `lugar_fisico` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `regimen_laboral` varchar(300) COLLATE utf8_spanish_ci DEFAULT NULL,
  `accion` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `motivo_accion` varchar(400) COLLATE utf8_spanish_ci DEFAULT NULL,
  `url_doc` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `name_doc` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tipo_doc` char(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `extencion` char(4) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nombre` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `carpeta` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `legajo`
--

INSERT INTO `legajo` (`codigo`, `id_trabajador`, `fecha_resolucion`, `folios_resolucion`, `numero_resolucion`, `lugar_fisico`, `regimen_laboral`, `accion`, `motivo_accion`, `url_doc`, `name_doc`, `tipo_doc`, `extencion`, `nombre`, `carpeta`, `descripcion`, `estado`, `fecha_creacion`, `glosa`) VALUES
(1, 3, '2021-06-25', '20', '2021-02', 'ESTANTE 02', NULL, NULL, NULL, 'storage/PDF/jcGL37LtBDcFc3ZH5bdWKAypnAQrVhPbaw20tOVq.pdf', NULL, NULL, 'pdf', NULL, NULL, NULL, '1', '2021-06-25 14:06:47', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `licencia`
--

CREATE TABLE `licencia` (
  `idempresa` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `idlicencia` char(10) COLLATE utf8_spanish_ci NOT NULL,
  `codigo` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `codigo2` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idtipo_lic` char(3) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `meses` decimal(3,0) DEFAULT NULL,
  `fecha_inicio` datetime DEFAULT NULL,
  `fecha_fin` datetime DEFAULT NULL,
  `ip_server` char(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idcliente` char(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descuento` decimal(9,2) DEFAULT NULL,
  `subtotal` decimal(9,2) DEFAULT NULL,
  `total` decimal(9,2) DEFAULT NULL,
  `idusuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `licencia`
--

INSERT INTO `licencia` (`idempresa`, `idlicencia`, `codigo`, `codigo2`, `idtipo_lic`, `estado`, `fecha_creacion`, `meses`, `fecha_inicio`, `fecha_fin`, `ip_server`, `idcliente`, `descuento`, `subtotal`, `total`, `idusuario`) VALUES
('001', 'Bq2wlnR03A', 'N683-4RHR-KK3Z-S697-W21C', '$2y$10$R.didNOmiIiML/Spd2G9xOBhJTVl.avP9w5wZaumKxxZsheVWQA3m', 'L01', '1', '2019-06-29 10:06:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `licencias`
--

CREATE TABLE `licencias` (
  `codigo` int(11) NOT NULL,
  `id_trabajador` int(11) NOT NULL,
  `tipo_resolucion` varchar(120) COLLATE utf8_spanish_ci DEFAULT NULL,
  `motivo_resolucion` varchar(520) COLLATE utf8_spanish_ci DEFAULT NULL,
  `numero_resolucion` varchar(120) COLLATE utf8_spanish_ci DEFAULT NULL,
  `area_trabajador` int(11) NOT NULL,
  `situacion_laboral` int(11) NOT NULL,
  `jornada_laboral` int(11) NOT NULL,
  `regimen_laboral` int(11) NOT NULL,
  `cargo_laboral` int(11) NOT NULL,
  `fecha_resolucion` varchar(11) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_inicio` varchar(11) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_fin` varchar(11) COLLATE utf8_spanish_ci DEFAULT NULL,
  `url_doc` varchar(350) COLLATE utf8_spanish_ci DEFAULT NULL,
  `name_doc` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_doc` int(11) NOT NULL,
  `folios` varchar(3) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `licencia_cliente`
--

CREATE TABLE `licencia_cliente` (
  `idlicencia` char(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idcliente` char(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `licencia_router`
--

CREATE TABLE `licencia_router` (
  `codigo` int(11) NOT NULL,
  `idlicencia` char(10) COLLATE utf8_spanish_ci NOT NULL,
  `idrouter` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `ip_server` char(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `mac_server` char(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `idmarca` int(3) NOT NULL,
  `descripcion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `dsc_corta` char(4) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT 1,
  `idgrupo` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensaje`
--

CREATE TABLE `mensaje` (
  `id` int(2) NOT NULL,
  `enviado_por` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `email_destino` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `asunto` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `mensaje` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `merito`
--

CREATE TABLE `merito` (
  `codigo` int(11) NOT NULL,
  `id_trabajador` int(11) NOT NULL,
  `tipo_resolucion` varchar(120) COLLATE utf8_spanish_ci DEFAULT NULL,
  `motivo_resolucion` varchar(520) COLLATE utf8_spanish_ci DEFAULT NULL,
  `numero_resolucion` varchar(120) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_resolucion` varchar(11) COLLATE utf8_spanish_ci DEFAULT NULL,
  `url_doc` varchar(350) COLLATE utf8_spanish_ci DEFAULT NULL,
  `name_doc` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_doc` int(11) NOT NULL,
  `folios` varchar(3) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2018_01_12_133713_create_posts_table', 1),
(2, '2021_05_08_133013_create_notas_table', 2),
(3, '2021_02_27_113258_create_tickets_table', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mision`
--

CREATE TABLE `mision` (
  `id` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `titulo` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `mision`
--

INSERT INTO `mision` (`id`, `titulo`, `descripcion`, `estado`, `fecha_creacion`) VALUES
('MSN', 'Nuestra Misión', 'Somos una empresa que busca satisfacer con excelencia la necesidad del mercado automotriz, brindando confiabilidad en lo que respecta a repuestos y accesorios, procurando la preferencia de nuestros clientes por la calidad en el servicio y la competitividad de los precios en el mercado.', '1', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelo`
--

CREATE TABLE `modelo` (
  `idmodelo` int(3) NOT NULL,
  `idmarca` int(3) NOT NULL,
  `descripcion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `dsc_corta` char(4) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modo_equipo`
--

CREATE TABLE `modo_equipo` (
  `idmodo` int(3) NOT NULL,
  `descripcion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `dsc_corta` char(4) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT 1,
  `es_emisor` decimal(1,0) DEFAULT 0,
  `es_cliente` decimal(1,0) DEFAULT 0,
  `es_router` decimal(1,0) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `msj_compra`
--

CREATE TABLE `msj_compra` (
  `id` int(11) NOT NULL,
  `idcarrito` char(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `user_email` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `asunto` char(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `visto` decimal(1,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivel_educativo`
--

CREATE TABLE `nivel_educativo` (
  `codigo` int(11) NOT NULL,
  `id_trabajador` int(11) NOT NULL,
  `nivel_educativo` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `centro_estudios` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL,
  `situacion_academica` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ano_inicio` varchar(5) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ano_fin` varchar(5) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nombre_nivel` varchar(600) COLLATE utf8_spanish_ci DEFAULT NULL,
  `url_doc` varchar(350) COLLATE utf8_spanish_ci DEFAULT NULL,
  `name_doc` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_doc` int(11) DEFAULT NULL,
  `folios` varchar(3) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `nivel_educativo`
--

INSERT INTO `nivel_educativo` (`codigo`, `id_trabajador`, `nivel_educativo`, `centro_estudios`, `situacion_academica`, `ano_inicio`, `ano_fin`, `nombre_nivel`, `url_doc`, `name_doc`, `id_doc`, `folios`, `descripcion`, `estado`, `fecha_creacion`, `glosa`) VALUES
(1, 3, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:17', NULL),
(2, 4, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:18', NULL),
(3, 5, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO PLANIFICACION', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:18', NULL),
(4, 6, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:19', NULL),
(5, 7, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 27274', '1', '2021-06-25 01:06:19', NULL),
(6, 8, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'MEDICO CIRUJANO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 024715', '1', '2021-06-25 01:06:20', NULL),
(7, 8, 'UNIVERSIDAD PERUANA CAYETANO HEREDIA', '--------', 'RNE', '---', '---', 'ANESTESIOLOGIA', NULL, NULL, NULL, NULL, 'RN :024593', '1', '2021-06-25 01:06:20', NULL),
(8, 9, 'Secundaria', '--------', NULL, '---', '---', '* SIN PROFESIÓN NI CARRERA TÉCNICA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:20', NULL),
(9, 10, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 55245', '1', '2021-06-25 01:06:21', NULL),
(10, 11, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:21', NULL),
(11, 12, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:21', NULL),
(12, 13, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 41219', '1', '2021-06-25 01:06:21', NULL),
(13, 13, 'UNIVERSIDAD PRIVADA NORBERT WIENER', '--------', 'TITULO', '---', '---', 'EMERGENCIAS Y DESASTRES', NULL, NULL, NULL, NULL, 'RN :', '1', '2021-06-25 01:06:21', NULL),
(14, 14, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 62926', '1', '2021-06-25 01:06:22', NULL),
(15, 14, 'UNIVERSIDAD PRIVADA NORBERT WIENER', '--------', 'TITULO', '---', '---', 'NEFROLOGIA', NULL, NULL, NULL, NULL, 'RN :1201-2018', '1', '2021-06-25 01:06:22', NULL),
(16, 15, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:22', NULL),
(17, 16, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:22', NULL),
(18, 17, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'INGENIERO ZOOTECNISTA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 116684', '1', '2021-06-25 01:06:23', NULL),
(19, 18, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO LABORATORISTA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:23', NULL),
(20, 19, 'Superior Técnico', '--------', 'ESTUDIANTE', '---', '---', 'TECNICO ADMINISTRADOR', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:23', NULL),
(21, 20, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'NUTRICIONISTA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 1672', '1', '2021-06-25 01:06:24', NULL),
(22, 21, 'Secundaria', '--------', NULL, '---', '---', '* SIN PROFESIÓN NI CARRERA TÉCNICA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:24', NULL),
(23, 22, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'MEDICO CIRUJANO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 40022', '1', '2021-06-25 01:06:25', NULL),
(24, 23, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO LABORATORISTA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:25', NULL),
(25, 24, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:25', NULL),
(26, 25, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'MEDICO CIRUJANO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 057563', '1', '2021-06-25 01:06:25', NULL),
(27, 26, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 64093', '1', '2021-06-25 01:06:26', NULL),
(28, 27, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:26', NULL),
(29, 28, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'OBSTETRA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 6870', '1', '2021-06-25 01:06:27', NULL),
(30, 28, 'UNIVERSIDAD NACIONAL HERMILIO VALDIZAN', '--------', 'CONSTANCIA', '---', '---', 'MONITOREO FETAL', NULL, NULL, NULL, NULL, 'RN :', '1', '2021-06-25 01:06:27', NULL),
(31, 29, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'OBSTETRA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 4868', '1', '2021-06-25 01:06:27', NULL),
(32, 29, 'UNIVERSIDAD NACIONAL HERMILIO VALDIZAN', '--------', 'CONSTANCIA', '---', '---', 'MONITOREO FETAL', NULL, NULL, NULL, NULL, 'RN :', '1', '2021-06-25 01:06:27', NULL),
(33, 30, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:27', NULL),
(34, 31, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:28', NULL),
(35, 32, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'OBSTETRA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 14363', '1', '2021-06-25 01:06:28', NULL),
(36, 32, 'UNIVERSIDAD NACIONAL HERMILIO VALDIZAN', '--------', 'CONSTANCIA', '---', '---', 'MONITOREO FETAL', NULL, NULL, NULL, NULL, 'RN :', '1', '2021-06-25 01:06:28', NULL),
(37, 33, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 35123', '1', '2021-06-25 01:06:28', NULL),
(38, 33, 'UNIVERSIDAD PERUANA CAYETANO HEREDIA', '--------', 'CONSTANCIA', '---', '---', 'CUIDADOS EN MEDICINA INTERNA', NULL, NULL, NULL, NULL, 'RN :', '1', '2021-06-25 01:06:28', NULL),
(39, 34, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'OBSTETRA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 20941', '1', '2021-06-25 01:06:28', NULL),
(40, 34, 'UNIVERSIDAD PRIVADA DE ICA', '--------', 'TITULO', '---', '---', 'EMERGENCIAS OBSTETRICAS ALTO RIESGO Y CUIDADOS CRITICOS MATERNOS', NULL, NULL, NULL, NULL, 'RN :', '1', '2021-06-25 01:06:28', NULL),
(41, 35, 'Superior Técnico', '--------', 'ESTUDIANTE', '---', '---', 'TECNICO ADMINISTRADOR', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:29', NULL),
(42, 36, 'Superior Técnico', '--------', NULL, '---', '---', '* SIN PROFESIÓN NI CARRERA TÉCNICA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:29', NULL),
(43, 37, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 19434', '1', '2021-06-25 01:06:29', NULL),
(44, 38, 'Secundaria', '--------', NULL, '---', '---', '* SIN PROFESIÓN NI CARRERA TÉCNICA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:29', NULL),
(45, 39, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:30', NULL),
(46, 40, 'Superior Técnico', '--------', 'BACHILLER', '---', '---', 'SECRETARIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:30', NULL),
(47, 41, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'MEDICO CIRUJANO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 052940', '1', '2021-06-25 01:06:30', NULL),
(48, 42, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'OBSTETRA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 28496', '1', '2021-06-25 01:06:31', NULL),
(49, 42, 'UNIVERSIDAD DE SAN MARTÍN DE PORRES', '--------', 'CONSTANCIA', '---', '---', 'EMERGENCIAS Y ALTO RIESGO OBSTETRICO', NULL, NULL, NULL, NULL, 'RN :', '1', '2021-06-25 01:06:31', NULL),
(50, 43, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'CIRUJANO DENTISTA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 9363', '1', '2021-06-25 01:06:31', NULL),
(51, 44, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:32', NULL),
(52, 45, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:32', NULL),
(53, 46, 'Secundaria', '--------', NULL, '---', '---', '* SIN PROFESIÓN NI CARRERA TÉCNICA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:32', NULL),
(54, 47, 'Superior Técnico', '--------', 'ESTUDIANTE', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:32', NULL),
(55, 48, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'OBSTETRA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 24989', '1', '2021-06-25 01:06:33', NULL),
(56, 49, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO DE FARMACIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:33', NULL),
(57, 50, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO LABORATORISTA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:34', NULL),
(58, 51, 'Secundaria', '--------', NULL, '---', '---', '* SIN PROFESIÓN NI CARRERA TÉCNICA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:34', NULL),
(59, 52, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'OBSTETRA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 9700', '1', '2021-06-25 01:06:34', NULL),
(60, 53, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'SECRETARIA EJECUTIVA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:35', NULL),
(61, 54, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'SECRETARIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:35', NULL),
(62, 55, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:35', NULL),
(63, 56, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 47954', '1', '2021-06-25 01:06:35', NULL),
(64, 56, 'UNIVERSIDAD ALAS PERUANAS', '--------', 'CONSTANCIA', '---', '---', 'NEONATOLOGIA', NULL, NULL, NULL, NULL, 'RN :', '1', '2021-06-25 01:06:35', NULL),
(65, 57, 'Superior Técnico', '--------', 'BACHILLER', '---', '---', 'TECNICO EN SALUD', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:36', NULL),
(66, 58, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:36', NULL),
(67, 59, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'OBSTETRA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 18636', '1', '2021-06-25 01:06:36', NULL),
(68, 59, 'UNIVERSIDAD ALAS PERUANAS', '--------', 'TITULO', '---', '---', 'ALTO RIESGO OBSTETRICO', NULL, NULL, NULL, NULL, 'RN :', '1', '2021-06-25 01:06:36', NULL),
(69, 60, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:36', NULL),
(70, 61, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:37', NULL),
(71, 62, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 57192', '1', '2021-06-25 01:06:37', NULL),
(72, 63, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'OBSTETRA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 11576', '1', '2021-06-25 01:06:37', NULL),
(73, 63, 'UNIVERSIDAD NACIONAL HERMILIO VALDIZAN', '--------', 'CONSTANCIA', '---', '---', 'MONITOREO FETAL', NULL, NULL, NULL, NULL, 'RN :', '1', '2021-06-25 01:06:37', NULL),
(74, 64, 'Secundaria', '--------', NULL, '---', '---', '* SIN PROFESIÓN NI CARRERA TÉCNICA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:37', NULL),
(75, 65, 'Secundaria', '--------', NULL, '---', '---', '* SIN PROFESIÓN NI CARRERA TÉCNICA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:37', NULL),
(76, 66, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'PROFESOR DE ENSEÑANZA PRIMARIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:38', NULL),
(77, 67, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:38', NULL),
(78, 68, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:39', NULL),
(79, 69, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'CONTADOR PUBLICO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 19-638', '1', '2021-06-25 01:06:39', NULL),
(80, 70, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'OBSTETRA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 11589', '1', '2021-06-25 01:06:40', NULL),
(81, 70, 'UNIVERSIDAD NACIONAL HERMILIO VALDIZAN', '--------', 'CONSTANCIA', '---', '---', 'MONITOREO FETAL', NULL, NULL, NULL, NULL, 'RN :', '1', '2021-06-25 01:06:40', NULL),
(82, 71, 'Secundaria', '--------', NULL, '---', '---', '* SIN PROFESIÓN NI CARRERA TÉCNICA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:40', NULL),
(83, 72, 'Secundaria', '--------', NULL, '---', '---', '* SIN PROFESIÓN NI CARRERA TÉCNICA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:40', NULL),
(84, 73, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'OBSTETRA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 11940', '1', '2021-06-25 01:06:41', NULL),
(85, 73, 'UNIVERSIDAD NACIONAL HERMILIO VALDIZAN', '--------', 'CONSTANCIA', '---', '---', 'MONITOREO FETAL', NULL, NULL, NULL, NULL, 'RN :', '1', '2021-06-25 01:06:41', NULL),
(86, 74, 'Superior Técnico', '--------', 'BACHILLER', '---', '---', 'SECRETARIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:41', NULL),
(87, 75, 'Secundaria', '--------', NULL, '---', '---', '* SIN PROFESIÓN NI CARRERA TÉCNICA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:41', NULL),
(88, 76, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:41', NULL),
(89, 77, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:42', NULL),
(90, 78, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:42', NULL),
(91, 79, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:42', NULL),
(92, 80, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ADMINISTRADOR', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:43', NULL),
(93, 81, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:43', NULL),
(94, 82, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 55229', '1', '2021-06-25 01:06:43', NULL),
(95, 83, 'Superior Técnico', '--------', 'BACHILLER', '---', '---', 'SECRETARIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:43', NULL),
(96, 84, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:44', NULL),
(97, 85, 'Superior Técnico', '--------', 'BACHILLER', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:44', NULL),
(98, 86, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:44', NULL),
(99, 87, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 34961', '1', '2021-06-25 01:06:45', NULL),
(100, 87, 'UNIVERSIDAD PRIVADA NORBERT WIENER', '--------', 'TITULO', '---', '---', 'ENFERMERIA DEL CUIDADO DEL PACIENTE CRITICO NEONATAL', NULL, NULL, NULL, NULL, 'RN :', '1', '2021-06-25 01:06:45', NULL),
(101, 88, 'Superior Técnico', '--------', 'BACHILLER', '---', '---', 'TECNICO EN MANTENIMIENTO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:45', NULL),
(102, 89, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:45', NULL),
(103, 90, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:45', NULL),
(104, 91, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'MEDICO CIRUJANO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 024962', '1', '2021-06-25 01:06:46', NULL),
(105, 91, 'UNIVERSIDAD PERUANA CAYETANO HEREDIA', '--------', 'RNE', '---', '---', 'GINECOLOGIA Y OBSTETRICIA', NULL, NULL, NULL, NULL, 'RN :015565', '1', '2021-06-25 01:06:46', NULL),
(106, 92, 'Secundaria', '--------', NULL, '---', '---', '* SIN PROFESIÓN NI CARRERA TÉCNICA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:46', NULL),
(107, 93, 'Secundaria', '--------', NULL, '---', '---', '* SIN PROFESIÓN NI CARRERA TÉCNICA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:47', NULL),
(108, 94, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:47', NULL),
(109, 95, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'CONTADOR PUBLICO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 191733', '1', '2021-06-25 01:06:47', NULL),
(110, 96, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'OBSTETRA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 18594', '1', '2021-06-25 01:06:47', NULL),
(111, 96, 'UNIVERSIDAD PRIVADA DE ICA', '--------', 'TITULO', '---', '---', 'MONITOREO FETAL', NULL, NULL, NULL, NULL, 'RN :', '1', '2021-06-25 01:06:47', NULL),
(112, 97, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'SECRETARIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:47', NULL),
(113, 98, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO LABORATORISTA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:48', NULL),
(114, 99, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:48', NULL),
(115, 100, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:48', NULL),
(116, 101, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 23827', '1', '2021-06-25 01:06:49', NULL),
(117, 102, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:49', NULL),
(118, 103, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'MEDICO CIRUJANO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 025371', '1', '2021-06-25 01:06:49', NULL),
(119, 103, 'UNIVERSIDAD NACIONAL MAYOR DE SAN MARCOS', '--------', 'RNE', '---', '---', 'CIRUGIA GENERAL', NULL, NULL, NULL, NULL, 'RN :015219', '1', '2021-06-25 01:06:49', NULL),
(120, 104, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:49', NULL),
(121, 105, 'Secundaria', '--------', NULL, '---', '---', '* SIN PROFESIÓN NI CARRERA TÉCNICA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:50', NULL),
(122, 106, 'Superior Técnico', '--------', 'BACHILLER', '---', '---', 'TECNICO EN SALUD', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:50', NULL),
(123, 107, 'Secundaria', '--------', NULL, '---', '---', '* SIN PROFESIÓN NI CARRERA TÉCNICA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:50', NULL),
(124, 108, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:50', NULL),
(125, 109, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN CONTABILIDAD', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:50', NULL),
(126, 110, 'Superior Técnico', '--------', 'BACHILLER', '---', '---', 'TECNICO ADMINISTRADOR', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:51', NULL),
(127, 111, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:51', NULL),
(128, 112, 'Superior Técnico', '--------', 'BACHILLER', '---', '---', 'TECNICO PLANIFICACION', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:51', NULL),
(129, 113, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:51', NULL),
(130, 114, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:51', NULL),
(131, 115, 'Secundaria', '--------', NULL, '---', '---', '* SIN PROFESIÓN NI CARRERA TÉCNICA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:52', NULL),
(132, 116, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'MEDICO CIRUJANO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 037179', '1', '2021-06-25 01:06:52', NULL),
(133, 116, 'UNIVERSIDAD NACIONAL FEDERICO VILLAREAL', '--------', 'TITULO', '---', '---', 'GASTROENTEROLOGIA', NULL, NULL, NULL, NULL, 'RN :34072', '1', '2021-06-25 01:06:52', NULL),
(134, 117, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:52', NULL),
(135, 118, 'Superior Técnico', '--------', NULL, '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:52', NULL),
(136, 119, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:53', NULL),
(137, 120, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:53', NULL),
(138, 121, 'Secundaria', '--------', NULL, '---', '---', '* SIN PROFESIÓN NI CARRERA TÉCNICA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:53', NULL),
(139, 122, 'Superior Técnico', '--------', 'BACHILLER', '---', '---', 'TECNICO EN SALUD', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:54', NULL),
(140, 123, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 33053', '1', '2021-06-25 01:06:54', NULL),
(141, 123, 'UNIVERSIDAD NACIONAL DE LA AMAZONÍA PERUANA', '--------', 'CONSTANCIA', '---', '---', 'INFECTOLOGIA', NULL, NULL, NULL, NULL, 'RN :', '1', '2021-06-25 01:06:54', NULL),
(142, 124, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'OBSTETRA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 5339', '1', '2021-06-25 01:06:54', NULL),
(143, 125, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'MEDICO CIRUJANO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 023301', '1', '2021-06-25 01:06:55', NULL),
(144, 125, 'UNIVERSIDAD PRIVADA ANTENOR ORREGO', '--------', 'RNE', '---', '---', 'PEDIATRIA', NULL, NULL, NULL, NULL, 'RN :026216', '1', '2021-06-25 01:06:55', NULL),
(145, 126, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:55', NULL),
(146, 127, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN CONTABILIDAD', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:56', NULL),
(147, 128, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'QUIMICO FARMACEUTICO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 8472', '1', '2021-06-25 01:06:56', NULL),
(148, 129, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:56', NULL),
(149, 130, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO ADMINISTRADOR', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:56', NULL),
(150, 131, 'Secundaria', '--------', NULL, '---', '---', '* SIN PROFESIÓN NI CARRERA TÉCNICA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:57', NULL),
(151, 132, 'Secundaria', '--------', NULL, '---', '---', '* SIN PROFESIÓN NI CARRERA TÉCNICA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:57', NULL),
(152, 133, 'Superior Técnico', '--------', 'BACHILLER', '---', '---', 'SECRETARIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:57', NULL),
(153, 134, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN CONTABILIDAD', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:57', NULL),
(154, 135, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:58', NULL),
(155, 136, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'MEDICO CIRUJANO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:58', NULL),
(156, 137, 'Superior Técnico', '--------', 'BACHILLER', '---', '---', 'TECNICO RADIOLOGO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:58', NULL),
(157, 138, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:59', NULL),
(158, 139, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:59', NULL),
(159, 140, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:59', NULL),
(160, 141, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:59', NULL),
(161, 142, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'MEDICO CIRUJANO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:00', NULL),
(162, 143, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'MEDICO CIRUJANO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 025762', '1', '2021-06-25 01:06:00', NULL),
(163, 143, 'UNIVERSIDAD NACIONAL DE TRUJILLO', '--------', 'RNE', '---', '---', 'MEDICINA INTERNA', NULL, NULL, NULL, NULL, 'RN :022686', '1', '2021-06-25 01:06:00', NULL),
(164, 144, 'Superior Técnico', '--------', 'BACHILLER', '---', '---', 'TECNICO LABORATORISTA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:00', NULL),
(165, 145, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:00', NULL),
(166, 146, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:01', NULL),
(167, 147, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'OBSTETRA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 16323', '1', '2021-06-25 01:06:01', NULL),
(168, 147, 'UNIVERSIDAD ALAS PERUANAS', '--------', 'TITULO', '---', '---', 'ALTO RIESGO OBSTETRICO', NULL, NULL, NULL, NULL, 'RN :', '1', '2021-06-25 01:06:01', NULL),
(169, 148, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 24260', '1', '2021-06-25 01:06:01', NULL),
(170, 149, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:01', NULL),
(171, 150, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'OBSTETRA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 16763', '1', '2021-06-25 01:06:02', NULL),
(172, 151, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO LABORATORISTA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:02', NULL),
(173, 152, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:02', NULL),
(174, 153, 'Superior Técnico', '--------', 'BACHILLER', '---', '---', 'TECNICO EN MANTENIMIENTO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:02', NULL),
(175, 154, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:03', NULL),
(176, 155, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'MEDICO CIRUJANO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 043725', '1', '2021-06-25 01:06:03', NULL),
(177, 155, 'UNIVERSIDAD NACIONAL FEDERICO VILLAREAL', '--------', 'CONSTANCIA', '---', '---', 'CIRUGIA GENERAL', NULL, NULL, NULL, NULL, 'RN :', '1', '2021-06-25 01:06:03', NULL),
(178, 156, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'MEDICO CIRUJANO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 060201', '1', '2021-06-25 01:06:03', NULL),
(179, 157, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:03', NULL),
(180, 158, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'PROFESOR EDUCACION SECUNDARIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:03', NULL),
(181, 159, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'QUIMICO FARMACEUTICO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 230', '1', '2021-06-25 01:06:04', NULL),
(182, 160, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 63183', '1', '2021-06-25 01:06:04', NULL),
(183, 160, 'UNIVERSIDAD ALAS PERUANAS', '--------', 'CONSTANCIA', '---', '---', 'CENTRO QUIRURGICO', NULL, NULL, NULL, NULL, 'RN :', '1', '2021-06-25 01:06:04', NULL),
(184, 161, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:04', NULL),
(185, 162, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:04', NULL),
(186, 163, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO LABORATORISTA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:05', NULL),
(187, 164, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:05', NULL),
(188, 165, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 59555', '1', '2021-06-25 01:06:06', NULL),
(189, 165, 'UNIVERSIDAD ALAS PERUANAS', '--------', 'CONSTANCIA', '---', '---', 'EMERGENCIAS Y DESASTRES', NULL, NULL, NULL, NULL, 'RN :', '1', '2021-06-25 01:06:06', NULL),
(190, 166, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 42173', '1', '2021-06-25 01:06:06', NULL),
(191, 167, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 50575', '1', '2021-06-25 01:06:06', NULL),
(192, 167, 'UNIVERSIDAD ALAS PERUANAS', '--------', 'TITULO', '---', '---', 'CENTRO QUIRURGICO', NULL, NULL, NULL, NULL, 'RN :', '1', '2021-06-25 01:06:06', NULL),
(193, 168, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:06', NULL),
(194, 169, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:07', NULL),
(195, 170, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:07', NULL),
(196, 171, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:07', NULL),
(197, 172, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'SECRETARIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:07', NULL),
(198, 173, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'MEDICO CIRUJANO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 027783', '1', '2021-06-25 01:06:08', NULL),
(199, 173, 'UNIVERSIDAD NACIONAL MAYOR DE SAN MARCOS', '--------', 'RNE', '---', '---', 'UROLOGIA', NULL, NULL, NULL, NULL, 'RN :023962', '1', '2021-06-25 01:06:08', NULL),
(200, 174, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:08', NULL),
(201, 175, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 64094', '1', '2021-06-25 01:06:08', NULL),
(202, 176, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:08', NULL),
(203, 177, 'Secundaria', '--------', NULL, '---', '---', '* SIN PROFESIÓN NI CARRERA TÉCNICA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:09', NULL),
(204, 178, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:09', NULL),
(205, 179, 'Secundaria', '--------', NULL, '---', '---', '* SIN PROFESIÓN NI CARRERA TÉCNICA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:09', NULL),
(206, 180, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'CONTADOR PUBLICO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 191740', '1', '2021-06-25 01:06:10', NULL),
(207, 181, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'MEDICO CIRUJANO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 036049', '1', '2021-06-25 01:06:10', NULL),
(208, 181, 'UNIVERSIDAD NACIONAL MAYOR DE SAN MARCOS', '--------', 'TITULO', '---', '---', 'MEDICINA INTENSIVA', NULL, NULL, NULL, NULL, 'RN :30276', '1', '2021-06-25 01:06:10', NULL),
(209, 182, 'Superior Técnico', '--------', 'BACHILLER', '---', '---', 'TECNICO EN SALUD', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:10', NULL),
(210, 183, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:11', NULL),
(211, 184, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN COMPUTACION E INFORMATICA/EN COMPUTADORAS', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:11', NULL),
(212, 185, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:11', NULL),
(213, 186, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO LABORATORISTA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:11', NULL),
(214, 187, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:12', NULL),
(215, 188, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'OBSTETRA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 16340', '1', '2021-06-25 01:06:12', NULL),
(216, 188, 'UNIVERSIDAD PRIVADA DE ICA', '--------', 'TITULO', '---', '---', 'ECOGRAFIA OBSTETRICA Y MONITOREO ELECTRÓNICO MATERNO FETAL', NULL, NULL, NULL, NULL, 'RN :', '1', '2021-06-25 01:06:12', NULL),
(217, 189, 'Superior Técnico', '--------', 'BACHILLER', '---', '---', 'TECNICO ELECTRICISTA EN GENERAL', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:12', NULL),
(218, 190, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:12', NULL),
(219, 191, 'Secundaria', '--------', NULL, '---', '---', '* SIN PROFESIÓN NI CARRERA TÉCNICA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:13', NULL),
(220, 192, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:13', NULL),
(221, 193, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:13', NULL),
(222, 194, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:13', NULL),
(223, 195, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:14', NULL),
(224, 196, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:14', NULL),
(225, 197, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:14', NULL),
(226, 198, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 52356', '1', '2021-06-25 01:06:14', NULL),
(227, 199, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:14', NULL),
(228, 200, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO LABORATORISTA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:15', NULL),
(229, 201, 'Superior Técnico', '--------', 'BACHILLER', '---', '---', 'SECRETARIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:15', NULL),
(230, 202, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:15', NULL),
(231, 203, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:16', NULL),
(232, 204, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:16', NULL),
(233, 205, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'OBSTETRA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 24740', '1', '2021-06-25 01:06:16', NULL),
(234, 205, 'UNIVERSIDAD NACIONAL HERMILIO VALDIZAN', '--------', 'TITULO', '---', '---', 'MONITOREO FETAL', NULL, NULL, NULL, NULL, 'RN :', '1', '2021-06-25 01:06:16', NULL),
(235, 206, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'MEDICO CIRUJANO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 033618', '1', '2021-06-25 01:06:17', NULL),
(236, 206, 'UNIVERSIDAD NACIONAL DE TRUJILLO', '--------', 'RNE', '---', '---', 'MEDICINA INTERNA', NULL, NULL, NULL, NULL, 'RN :023734', '1', '2021-06-25 01:06:17', NULL),
(237, 207, 'Superior Técnico', '--------', 'BACHILLER', '---', '---', 'SECRETARIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:17', NULL),
(238, 208, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:17', NULL),
(239, 209, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'MEDICO CIRUJANO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 036651', '1', '2021-06-25 01:06:17', NULL),
(240, 209, 'UNIVERSIDAD NACIONAL FEDERICO VILLAREAL', '--------', 'RNE', '---', '---', 'MEDICINA INTERNA', NULL, NULL, NULL, NULL, 'RN :036651', '1', '2021-06-25 01:06:17', NULL),
(241, 210, 'Superior Técnico', '--------', 'BACHILLER', '---', '---', 'SECRETARIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:18', NULL),
(242, 211, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO LABORATORISTA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:18', NULL),
(243, 212, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:18', NULL),
(244, 213, 'Superior Técnico', '--------', 'BACHILLER', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:19', NULL),
(245, 214, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO LABORATORISTA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:19', NULL),
(246, 215, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'OBSTETRA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 16795', '1', '2021-06-25 01:06:19', NULL),
(247, 215, 'UNIVERSIDAD ALAS PERUANAS', '--------', 'TITULO', '---', '---', 'ALTO RIESGO OBSTETRICO', NULL, NULL, NULL, NULL, 'RN :', '1', '2021-06-25 01:06:19', NULL),
(248, 216, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 43022', '1', '2021-06-25 01:06:19', NULL),
(249, 217, 'Superior Técnico', '--------', 'BACHILLER', '---', '---', 'TECNICO EN MANTENIMIENTO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:20', NULL),
(250, 218, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 034963', '1', '2021-06-25 01:06:20', NULL),
(251, 218, 'UNIVERSIDAD PERUANA CAYETANO HEREDIA', '--------', 'TITULO', '---', '---', 'ENFERMERIA EN CUIDADOS CARDIOVASCULARES', NULL, NULL, NULL, NULL, 'RN :', '1', '2021-06-25 01:06:20', NULL),
(252, 219, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO LABORATORISTA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:20', NULL),
(253, 220, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:20', NULL),
(254, 221, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:21', NULL),
(255, 222, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO AGROPECUARIO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:21', NULL),
(256, 223, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 67762', '1', '2021-06-25 01:06:21', NULL),
(257, 223, 'UNIVERSIDAD PRIVADA NORBERT WIENER', '--------', 'TITULO', '---', '---', 'NEFROLOGIA', NULL, NULL, NULL, NULL, 'RN :', '1', '2021-06-25 01:06:21', NULL),
(258, 224, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'MEDICO CIRUJANO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 037568', '1', '2021-06-25 01:06:21', NULL),
(259, 224, 'UNIVERSIDAD NACIONAL FEDERICO VILLAREAL', '--------', 'TITULO', '---', '---', 'NEUMOLOGIA', NULL, NULL, NULL, NULL, 'RN :29021', '1', '2021-06-25 01:06:21', NULL),
(260, 225, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 60785', '1', '2021-06-25 01:06:22', NULL),
(261, 225, 'UNIVERSIDAD PRIVADA NORBERT WIENER', '--------', 'TITULO', '---', '---', 'NEFROLOGIA', NULL, NULL, NULL, NULL, 'RN :', '1', '2021-06-25 01:06:22', NULL),
(262, 226, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 60911', '1', '2021-06-25 01:06:22', NULL),
(263, 227, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'OBSTETRA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 27577', '1', '2021-06-25 01:06:22', NULL),
(264, 227, 'UNIVERSIDAD PRIVADA DE ICA', '--------', 'TITULO', '---', '---', 'PROMOCION DE LA SALUD MATERNA CON MENCION EN PSICOPROFILAXIS OBSTETRICA Y ESTIMULACION PRENATAL', NULL, NULL, NULL, NULL, 'RN :', '1', '2021-06-25 01:06:22', NULL),
(265, 228, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:22', NULL),
(266, 229, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:23', NULL),
(267, 230, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:23', NULL),
(268, 231, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:23', NULL),
(269, 232, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 36940', '1', '2021-06-25 01:06:23', NULL),
(270, 233, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'SECRETARIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:24', NULL),
(271, 234, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'BIOLOGO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:24', NULL),
(272, 235, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'OBSTETRA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 11781', '1', '2021-06-25 01:06:24', NULL),
(273, 235, 'UNIVERSIDAD NACIONAL HERMILIO VALDIZAN', '--------', 'CONSTANCIA', '---', '---', 'MONITOREO FETAL', NULL, NULL, NULL, NULL, 'RN :', '1', '2021-06-25 01:06:24', NULL),
(274, 236, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:24', NULL),
(275, 237, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:25', NULL),
(276, 238, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:25', NULL),
(277, 239, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 047417', '1', '2021-06-25 01:06:25', NULL),
(278, 239, 'UNIVERSIDAD ALAS PERUANAS', '--------', 'TITULO', '---', '---', 'CUIDADO MATERNO INFANTIL CON MENCION EN NEONATOLOGIA', NULL, NULL, NULL, NULL, 'RN :', '1', '2021-06-25 01:06:25', NULL),
(279, 240, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:26', NULL),
(280, 241, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:26', NULL),
(281, 242, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 50577', '1', '2021-06-25 01:06:26', NULL),
(282, 243, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:26', NULL),
(283, 244, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'OBSTETRA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 16778', '1', '2021-06-25 01:06:26', NULL),
(284, 245, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:27', NULL);
INSERT INTO `nivel_educativo` (`codigo`, `id_trabajador`, `nivel_educativo`, `centro_estudios`, `situacion_academica`, `ano_inicio`, `ano_fin`, `nombre_nivel`, `url_doc`, `name_doc`, `id_doc`, `folios`, `descripcion`, `estado`, `fecha_creacion`, `glosa`) VALUES
(285, 246, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:27', NULL),
(286, 247, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 55635', '1', '2021-06-25 01:06:27', NULL),
(287, 248, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:27', NULL),
(288, 249, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:28', NULL),
(289, 250, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 2784-R', '1', '2021-06-25 01:06:28', NULL),
(290, 251, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:28', NULL),
(291, 252, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 54058', '1', '2021-06-25 01:06:28', NULL),
(292, 253, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:29', NULL),
(293, 254, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:29', NULL),
(294, 255, 'Superior Universitario', '--------', NULL, '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:29', NULL),
(295, 256, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'OBSTETRA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 27366', '1', '2021-06-25 01:06:29', NULL),
(296, 256, 'UNIVERSIDAD NACIONAL HERMILIO VALDIZAN', '--------', 'TITULO', '---', '---', 'MONITOREO FETAL', NULL, NULL, NULL, NULL, 'RN :', '1', '2021-06-25 01:06:29', NULL),
(297, 257, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 57601', '1', '2021-06-25 01:06:30', NULL),
(298, 258, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:30', NULL),
(299, 259, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO LABORATORISTA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:30', NULL),
(300, 260, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:30', NULL),
(301, 261, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 59556', '1', '2021-06-25 01:06:31', NULL),
(302, 261, 'UNIVERSIDAD ALAS PERUANAS', '--------', 'CONSTANCIA', '---', '---', 'EMERGENCIAS Y DESASTRES', NULL, NULL, NULL, NULL, 'RN :', '1', '2021-06-25 01:06:31', NULL),
(303, 262, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 45198', '1', '2021-06-25 01:06:31', NULL),
(304, 263, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'MEDICO CIRUJANO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 060127', '1', '2021-06-25 01:06:31', NULL),
(305, 263, 'UNIVERSIDAD NACIONAL DE LA AMAZONÍA PERUANA', '--------', 'RNE', '---', '---', 'PEDIATRIA', NULL, NULL, NULL, NULL, 'RN :35006', '1', '2021-06-25 01:06:31', NULL),
(306, 264, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 53500', '1', '2021-06-25 01:06:32', NULL),
(307, 265, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'MEDICO CIRUJANO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 052751', '1', '2021-06-25 01:06:32', NULL),
(308, 265, 'UNIVERSIDAD NACIONAL MAYOR DE SAN MARCOS', '--------', 'TITULO', '---', '---', 'GINECOLOGIA Y OBSTETRICIA', NULL, NULL, NULL, NULL, 'RN :', '1', '2021-06-25 01:06:32', NULL),
(309, 266, 'Superior Universitario', '--------', NULL, '---', '---', 'OBSTETRA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:32', NULL),
(310, 267, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'MEDICO CIRUJANO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 42312', '1', '2021-06-25 01:06:32', NULL),
(311, 268, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'MEDICO CIRUJANO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 047598', '1', '2021-06-25 01:06:33', NULL),
(312, 268, 'UNIVERSIDAD NACIONAL FEDERICO VILLAREAL', '--------', 'TITULO', '---', '---', 'OFTALMOLOGIA', NULL, NULL, NULL, NULL, 'RN :', '1', '2021-06-25 01:06:33', NULL),
(313, 269, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:33', NULL),
(314, 270, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'CONTADOR PUBLICO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 191279', '1', '2021-06-25 01:06:34', NULL),
(315, 272, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'INGENIERO SISTEMAS INFORMATICOS', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 111287', '1', '2021-06-25 01:06:34', NULL),
(316, 274, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'CIRUJANO DENTISTA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 3756', '1', '2021-06-25 01:06:35', NULL),
(317, 276, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'OBSTETRA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 1464', '1', '2021-06-25 01:06:35', NULL),
(318, 277, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'TRABAJADOR(A) SOCIAL', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 0393', '1', '2021-06-25 01:06:36', NULL),
(319, 279, 'Secundaria', '--------', NULL, '---', '---', '* SIN PROFESIÓN NI CARRERA TÉCNICA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:36', NULL),
(320, 280, 'Secundaria', '--------', NULL, '---', '---', '* SIN PROFESIÓN NI CARRERA TÉCNICA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:37', NULL),
(321, 281, 'Superior Universitario', '--------', 'BACHILLER', '---', '---', 'ADMINISTRADOR', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:37', NULL),
(322, 282, 'Secundaria', '--------', NULL, '---', '---', '* SIN PROFESIÓN NI CARRERA TÉCNICA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:37', NULL),
(323, 283, 'Superior Técnico', '--------', 'BACHILLER', '---', '---', 'SECRETARIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:38', NULL),
(324, 284, 'Secundaria', '--------', NULL, '---', '---', '* SIN PROFESIÓN NI CARRERA TÉCNICA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:38', NULL),
(325, 285, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:38', NULL),
(326, 286, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'CONTADOR PUBLICO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 10-391', '1', '2021-06-25 01:06:39', NULL),
(327, 287, 'Secundaria', '--------', NULL, '---', '---', '* SIN PROFESIÓN NI CARRERA TÉCNICA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:39', NULL),
(328, 288, 'Superior Universitario', '--------', 'BACHILLER', '---', '---', 'CONTADOR PUBLICO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:39', NULL),
(329, 289, 'Superior Técnico', '--------', 'BACHILLER', '---', '---', 'TECNICO EN SALUD', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:39', NULL),
(330, 290, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:40', NULL),
(331, 291, 'Secundaria', '--------', NULL, '---', '---', '* SIN PROFESIÓN NI CARRERA TÉCNICA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:40', NULL),
(332, 292, 'Superior Técnico', '--------', 'BACHILLER', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:40', NULL),
(333, 293, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'MEDICO CIRUJANO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:41', NULL),
(334, 294, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN CONTABILIDAD', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:41', NULL),
(335, 295, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'OBSTETRA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 16767', '1', '2021-06-25 01:06:41', NULL),
(336, 295, 'UNIVERSIDAD PRIVADA DE ICA', '--------', 'TITULO', '---', '---', 'ECOGRAFIA OBSTETRICA Y MONITOREO ELECTRÓNICO MATERNO FETAL', NULL, NULL, NULL, NULL, 'RN :', '1', '2021-06-25 01:06:41', NULL),
(337, 296, 'Superior Técnico', '--------', 'BACHILLER', '---', '---', 'TECNICO EN MANTENIMIENTO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:41', NULL),
(338, 297, 'Secundaria', '--------', NULL, '---', '---', '* SIN PROFESIÓN NI CARRERA TÉCNICA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:42', NULL),
(339, 298, 'Secundaria', '--------', NULL, '---', '---', '* SIN PROFESIÓN NI CARRERA TÉCNICA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:42', NULL),
(340, 301, 'Superior Universitario', '--------', NULL, '---', '---', 'MEDICO CIRUJANO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 039600', '1', '2021-06-25 01:06:43', NULL),
(341, 301, NULL, '--------', 'RNE', '---', '---', 'ANESTESIOLOGIA', NULL, NULL, NULL, NULL, 'RN :023394', '1', '2021-06-25 01:06:43', NULL),
(342, 302, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:43', NULL),
(343, 303, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:43', NULL),
(344, 304, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN COMPUTACION E INFORMATICA/EN COMPUTADORAS', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:44', NULL),
(345, 305, 'Secundaria', '--------', NULL, '---', '---', '* SIN PROFESIÓN NI CARRERA TÉCNICA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:44', NULL),
(346, 307, 'Secundaria', '--------', NULL, '---', '---', '* SIN PROFESIÓN NI CARRERA TÉCNICA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:44', NULL),
(347, 308, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO AGROPECUARIO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:44', NULL),
(348, 309, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:45', NULL),
(349, 310, 'Secundaria', '--------', NULL, '---', '---', '* SIN PROFESIÓN NI CARRERA TÉCNICA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:45', NULL),
(350, 311, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:45', NULL),
(351, 315, 'Secundaria', '--------', NULL, '---', '---', '* SIN PROFESIÓN NI CARRERA TÉCNICA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:46', NULL),
(352, 316, 'Secundaria', '--------', NULL, '---', '---', '* SIN PROFESIÓN NI CARRERA TÉCNICA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:47', NULL),
(353, 317, NULL, '--------', 'RNE', '---', '---', 'RADIOLOGIA', NULL, NULL, NULL, NULL, 'RN :018057', '1', '2021-06-25 01:06:47', NULL),
(354, 318, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:47', NULL),
(355, 319, 'Superior Universitario', '--------', 'BACHILLER', '---', '---', 'CIENCIAS POLITICAS', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:47', NULL),
(356, 321, 'Superior Técnico', '--------', 'BACHILLER', '---', '---', 'TECNICO EN MANTENIMIENTO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:48', NULL),
(357, 323, 'Superior Técnico', '--------', 'BACHILLER', '---', '---', 'TECNICO LABORATORISTA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:48', NULL),
(358, 324, 'Secundaria', '--------', NULL, '---', '---', '* SIN PROFESIÓN NI CARRERA TÉCNICA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:49', NULL),
(359, 325, 'Superior Técnico', '--------', 'BACHILLER', '---', '---', 'SECRETARIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:49', NULL),
(360, 326, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'INGENIERO ZOOTECNISTA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 156195', '1', '2021-06-25 01:06:49', NULL),
(361, 327, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:50', NULL),
(362, 328, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN COMPUTACION E INFORMATICA/EN COMPUTADORAS', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:50', NULL),
(363, 329, 'Secundaria', '--------', NULL, '---', '---', '* SIN PROFESIÓN NI CARRERA TÉCNICA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:51', NULL),
(364, 330, 'Secundaria', '--------', NULL, '---', '---', '* SIN PROFESIÓN NI CARRERA TÉCNICA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:51', NULL),
(365, 332, 'Secundaria', '--------', NULL, '---', '---', '* SIN PROFESIÓN NI CARRERA TÉCNICA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:51', NULL),
(366, 333, 'Secundaria', '--------', NULL, '---', '---', '* SIN PROFESIÓN NI CARRERA TÉCNICA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:52', NULL),
(367, 334, 'Superior Técnico', '--------', 'BACHILLER', '---', '---', 'TECNICO EN MANTENIMIENTO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:52', NULL),
(368, 335, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN COMPUTACION E INFORMATICA/EN COMPUTADORAS', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:52', NULL),
(369, 337, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO LABORATORISTA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:53', NULL),
(370, 339, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'MEDICO CIRUJANO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 011618', '1', '2021-06-25 01:06:53', NULL),
(371, 341, 'Secundaria', '--------', NULL, '---', '---', '* SIN PROFESIÓN NI CARRERA TÉCNICA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:53', NULL),
(372, 343, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN COMPUTACION E INFORMATICA/EN COMPUTADORAS', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:54', NULL),
(373, 344, 'Superior Técnico', '--------', 'EGRESADO', '---', '---', 'TECNICO EN COMPUTACION E INFORMATICA/EN COMPUTADORAS', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:54', NULL),
(374, 345, 'Secundaria', '--------', NULL, '---', '---', '* SIN PROFESIÓN NI CARRERA TÉCNICA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:54', NULL),
(375, 348, 'Secundaria', '--------', NULL, '---', '---', '* SIN PROFESIÓN NI CARRERA TÉCNICA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:55', NULL),
(376, 349, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'PROFESOR DE ENSEÑANZA PRIMARIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:55', NULL),
(377, 350, 'Superior Universitario', '--------', NULL, '---', '---', 'PSICOLOGO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 14566', '1', '2021-06-25 01:06:55', NULL),
(378, 351, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 66887', '1', '2021-06-25 01:06:56', NULL),
(379, 353, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'QUIMICO FARMACEUTICO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 3595', '1', '2021-06-25 01:06:56', NULL),
(380, 354, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'CONTADOR PUBLICO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 19928', '1', '2021-06-25 01:06:56', NULL),
(381, 355, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO DE FARMACIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:56', NULL),
(382, 356, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:57', NULL),
(383, 357, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:57', NULL),
(384, 359, 'Secundaria', '--------', NULL, '---', '---', '* SIN PROFESIÓN NI CARRERA TÉCNICA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:58', NULL),
(385, 360, 'Secundaria', '--------', NULL, '---', '---', '* SIN PROFESIÓN NI CARRERA TÉCNICA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:58', NULL),
(386, 361, 'Superior Técnico', '--------', NULL, '---', '---', 'TECNICO LABORATORISTA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:58', NULL),
(387, 362, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'MEDICO CIRUJANO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 59606', '1', '2021-06-25 01:06:58', NULL),
(388, 363, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'SECRETARIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:59', NULL),
(389, 364, 'Superior Universitario', '--------', NULL, '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:59', NULL),
(390, 365, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'INGENIERO SISTEMAS INFORMATICOS', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 052051224', '1', '2021-06-25 01:06:59', NULL),
(391, 366, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'LICENCIADO EN MARKETING Y DIRECCION DE EMPRESAS', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:59', NULL),
(392, 367, 'Secundaria', '--------', NULL, '---', '---', '* SIN PROFESIÓN NI CARRERA TÉCNICA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:00', NULL),
(393, 368, 'Secundaria', '--------', NULL, '---', '---', '* SIN PROFESIÓN NI CARRERA TÉCNICA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:00', NULL),
(394, 369, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN COMPUTACION E INFORMATICA/EN COMPUTADORAS', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:00', NULL),
(395, 370, 'Secundaria', '--------', NULL, '---', '---', '* SIN PROFESIÓN NI CARRERA TÉCNICA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:01', NULL),
(396, 371, 'Secundaria', '--------', NULL, '---', '---', '* SIN PROFESIÓN NI CARRERA TÉCNICA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:01', NULL),
(397, 372, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:01', NULL),
(398, 373, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 67763', '1', '2021-06-25 01:06:01', NULL),
(399, 373, 'UNIVERSIDAD PRIVADA NORBERT WIENER', '--------', 'TITULO', '---', '---', 'NEFROLOGIA', NULL, NULL, NULL, NULL, 'RN :', '1', '2021-06-25 01:06:01', NULL),
(400, 374, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN CONTABILIDAD', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:01', NULL),
(401, 375, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'CONTADOR PUBLICO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 19511', '1', '2021-06-25 01:06:02', NULL),
(402, 376, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN COMPUTACION E INFORMATICA/EN COMPUTADORAS', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:02', NULL),
(403, 377, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 66883', '1', '2021-06-25 01:06:02', NULL),
(404, 378, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'QUIMICO FARMACEUTICO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 18819', '1', '2021-06-25 01:06:03', NULL),
(405, 380, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'CONTADOR PUBLICO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 019-976', '1', '2021-06-25 01:06:03', NULL),
(406, 381, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:03', NULL),
(407, 382, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO MECANICO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:04', NULL),
(408, 383, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'CONTADOR PUBLICO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:04', NULL),
(409, 384, 'Superior Universitario', '--------', 'BACHILLER', '---', '---', 'ADMINISTRADOR', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:04', NULL),
(410, 385, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN COMPUTACION E INFORMATICA/EN COMPUTADORAS', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:05', NULL),
(411, 386, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:05', NULL),
(412, 387, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'SECRETARIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:05', NULL),
(413, 388, 'Superior Universitario', '--------', 'BACHILLER', '---', '---', 'CONTABILIDAD Y FINANZAS', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:05', NULL),
(414, 389, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:06', NULL),
(415, 390, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'SECRETARIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:06', NULL),
(416, 391, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:06', NULL),
(417, 392, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:07', NULL),
(418, 393, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:07', NULL),
(419, 394, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:07', NULL),
(420, 395, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:07', NULL),
(421, 396, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO LABORATORISTA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:07', NULL),
(422, 397, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:08', NULL),
(423, 398, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:08', NULL),
(424, 399, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN COMPUTACION E INFORMATICA/EN COMPUTADORAS', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:08', NULL),
(425, 400, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:08', NULL),
(426, 401, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:09', NULL),
(427, 402, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO AUTOMOTRIZ', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:09', NULL),
(428, 403, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:09', NULL),
(429, 404, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:10', NULL),
(430, 405, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:10', NULL),
(431, 406, 'Primaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:10', NULL),
(432, 407, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:11', NULL),
(433, 408, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:11', NULL),
(434, 409, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:12', NULL),
(435, 410, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:12', NULL),
(436, 411, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:12', NULL),
(437, 412, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'NUTRICIONISTA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 001705', '1', '2021-06-25 01:06:12', NULL),
(438, 413, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ECONOMISTA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 146', '1', '2021-06-25 01:06:13', NULL),
(439, 414, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:13', NULL),
(440, 415, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'MEDICO CIRUJANO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 63452', '1', '2021-06-25 01:06:14', NULL),
(441, 416, 'Superior Universitario', '--------', 'ESTUDIANTE', '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:14', NULL),
(442, 417, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:14', NULL),
(443, 418, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'CONTADOR PUBLICO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:15', NULL),
(444, 419, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'CONTADOR PUBLICO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:15', NULL),
(445, 420, 'Superior Universitario', '--------', 'ESTUDIANTE', '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:15', NULL),
(446, 421, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:15', NULL),
(447, 422, 'Superior Universitario', '--------', 'ESTUDIANTE', '---', '---', 'CONTADOR PUBLICO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:16', NULL),
(448, 423, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:16', NULL),
(449, 424, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:17', NULL),
(450, 425, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:17', NULL),
(451, 426, 'Superior Universitario', '--------', 'BACHILLER', '---', '---', 'PROFESOR EDUCACION SECUNDARIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:17', NULL),
(452, 427, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:17', NULL),
(453, 428, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:17', NULL),
(454, 429, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'CONTADOR PUBLICO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 191017', '1', '2021-06-25 01:06:18', NULL),
(455, 430, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN CONTABILIDAD', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:18', NULL),
(456, 431, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'PSICOLOGO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 17176', '1', '2021-06-25 01:06:18', NULL),
(457, 432, 'Superior Universitario', '--------', NULL, '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 71815', '1', '2021-06-25 01:06:19', NULL),
(458, 433, 'Superior Universitario', '--------', NULL, '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 71384', '1', '2021-06-25 01:06:19', NULL),
(459, 434, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:19', NULL),
(460, 435, 'Superior Universitario', '--------', 'BACHILLER', '---', '---', 'CONTADOR PUBLICO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:19', NULL),
(461, 436, 'Superior Técnico', '--------', 'ESTUDIANTE', '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:19', NULL),
(462, 437, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:20', NULL),
(463, 438, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:20', NULL),
(464, 439, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:20', NULL),
(465, 440, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'SECRETARIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:21', NULL),
(466, 441, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:21', NULL),
(467, 442, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:21', NULL),
(468, 443, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:21', NULL),
(469, 444, 'Superior Técnico', '--------', 'EGRESADO', '---', '---', 'TECNICO RADIOLOGO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:22', NULL),
(470, 445, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'MEDICO CIRUJANO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:22', NULL),
(471, 446, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'MEDICO CIRUJANO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 71490', '1', '2021-06-25 01:06:22', NULL),
(472, 447, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'MEDICO CIRUJANO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 075788', '1', '2021-06-25 01:06:23', NULL),
(473, 448, 'Superior Universitario', '--------', NULL, '---', '---', 'MEDICO CIRUJANO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:23', NULL),
(474, 449, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'MEDICO CIRUJANO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:23', NULL),
(475, 450, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:23', NULL),
(476, 451, 'Superior Universitario', '--------', NULL, '---', '---', 'MEDICO CIRUJANO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 59935', '1', '2021-06-25 01:06:24', NULL),
(477, 452, 'Superior Universitario', '--------', NULL, '---', '---', 'OBSTETRA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 32023', '1', '2021-06-25 01:06:24', NULL),
(478, 453, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'OBSTETRA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:24', NULL),
(479, 453, 'UNIVERSIDAD ALAS PERUANAS', '--------', 'CONSTANCIA', '---', '---', 'ALTO RIESGO OBSTETRICO', NULL, NULL, NULL, NULL, 'RN :', '1', '2021-06-25 01:06:24', NULL),
(480, 454, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'OBSTETRA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 32121', '1', '2021-06-25 01:06:25', NULL),
(481, 455, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'OBSTETRA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:25', NULL),
(482, 456, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'OBSTETRA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:25', NULL),
(483, 457, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'TECNOLOGO MEDICO TERAPIA FISICA Y REHABILITACION', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:25', NULL),
(484, 458, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'QUIMICO FARMACEUTICO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 18202', '1', '2021-06-25 01:06:26', NULL),
(485, 459, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:26', NULL),
(486, 460, 'Superior Técnico', '--------', NULL, '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:27', NULL),
(487, 461, 'Superior Técnico', '--------', NULL, '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:27', NULL),
(488, 462, 'Superior Técnico', '--------', NULL, '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:28', NULL),
(489, 463, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:28', NULL),
(490, 464, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:28', NULL),
(491, 465, 'Superior Universitario', '--------', NULL, '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 071378', '1', '2021-06-25 01:06:28', NULL),
(492, 466, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 78051', '1', '2021-06-25 01:06:29', NULL),
(493, 467, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:29', NULL),
(494, 468, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 82240', '1', '2021-06-25 01:06:29', NULL),
(495, 469, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 70126', '1', '2021-06-25 01:06:30', NULL),
(496, 469, 'UNIVERSIDAD PRIVADA NORBERT WIENER', '--------', 'TITULO', '---', '---', 'EMERGENCIAS Y DESASTRES', NULL, NULL, NULL, NULL, 'RN :', '1', '2021-06-25 01:06:30', NULL),
(497, 470, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 080095', '1', '2021-06-25 01:06:30', NULL),
(498, 471, 'Superior Universitario', '--------', NULL, '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 58628', '1', '2021-06-25 01:06:30', NULL),
(499, 472, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 078392', '1', '2021-06-25 01:06:30', NULL),
(500, 473, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 78053', '1', '2021-06-25 01:06:31', NULL),
(501, 474, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 073963', '1', '2021-06-25 01:06:31', NULL),
(502, 475, 'Superior Universitario', '--------', NULL, '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 73216', '1', '2021-06-25 01:06:31', NULL),
(503, 476, 'Superior Técnico', '--------', NULL, '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:32', NULL),
(504, 477, 'Superior Técnico', '--------', NULL, '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:32', NULL),
(505, 478, 'Superior Técnico', '--------', NULL, '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:32', NULL),
(506, 479, 'Superior Técnico', '--------', NULL, '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:33', NULL),
(507, 480, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'MEDICO CIRUJANO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:33', NULL),
(508, 481, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:33', NULL),
(509, 482, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:33', NULL),
(510, 483, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:34', NULL),
(511, 484, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'QUIMICO FARMACEUTICO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:34', NULL),
(512, 485, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'QUIMICO FARMACEUTICO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:34', NULL),
(513, 486, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:34', NULL),
(514, 487, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:35', NULL),
(515, 488, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:35', NULL),
(516, 489, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:35', NULL),
(517, 490, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:35', NULL),
(518, 491, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:36', NULL),
(519, 492, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:36', NULL),
(520, 493, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:36', NULL),
(521, 494, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:36', NULL),
(522, 495, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:36', NULL),
(523, 496, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:37', NULL),
(524, 497, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:37', NULL),
(525, 498, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:37', NULL),
(526, 499, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:37', NULL),
(527, 500, 'Superior Técnico', '--------', NULL, '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:38', NULL),
(528, 501, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:38', NULL),
(529, 502, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'MEDICO CIRUJANO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:38', NULL),
(530, 502, 'UNIVERSIDAD NACIONAL DE LA AMAZONÍA PERUANA', '--------', 'TITULO', '---', '---', 'GINECOLOGIA Y OBSTETRICIA', NULL, NULL, NULL, NULL, 'RN :', '1', '2021-06-25 01:06:38', NULL),
(531, 503, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'OBSTETRA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:38', NULL),
(532, 504, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'MEDICO CIRUJANO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:39', NULL),
(533, 504, 'UNIVERSIDAD PRIVADA ANTENOR ORREGO', '--------', 'CONSTANCIA', '---', '---', 'NEUROLOGIA', NULL, NULL, NULL, NULL, 'RN :', '1', '2021-06-25 01:06:39', NULL),
(534, 505, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ECONOMISTA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 284', '1', '2021-06-25 01:06:39', NULL),
(535, 506, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'MEDICO CIRUJANO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 051517', '1', '2021-06-25 01:06:40', NULL),
(536, 507, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'MEDICO CIRUJANO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:40', NULL),
(537, 508, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'MEDICO CIRUJANO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:40', NULL),
(538, 509, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'MEDICO CIRUJANO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:40', NULL),
(539, 510, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'MEDICO CIRUJANO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 44974', '1', '2021-06-25 01:06:41', NULL),
(540, 510, 'UNIVERSIDAD NACIONAL SAN LUIS GONZAGA DE ICA', '--------', 'CONSTANCIA', '---', '---', 'CIRUGIA GENERAL', NULL, NULL, NULL, NULL, 'RN :', '1', '2021-06-25 01:06:41', NULL),
(541, 511, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 51281', '1', '2021-06-25 01:06:41', NULL),
(542, 511, 'UNIVERSIDAD PERUANA CAYETANO HEREDIA', '--------', 'CONSTANCIA', '---', '---', 'PEDIATRIA', NULL, NULL, NULL, NULL, 'RN :', '1', '2021-06-25 01:06:41', NULL),
(543, 512, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'TRABAJADOR(A) SOCIAL', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:42', NULL),
(544, 513, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:42', NULL),
(545, 514, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 082406', '1', '2021-06-25 01:06:42', NULL),
(546, 515, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'CONTADOR PUBLICO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 190053', '1', '2021-06-25 01:06:42', NULL),
(547, 516, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 076772', '1', '2021-06-25 01:06:43', NULL),
(548, 517, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:43', NULL),
(549, 518, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:44', NULL),
(550, 519, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:44', NULL),
(551, 520, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO MECANICO, MOTORES', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:44', NULL),
(552, 521, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:45', NULL),
(553, 522, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN COMPUTACION E INFORMATICA/EN COMPUTADORAS', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:45', NULL),
(554, 523, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:45', NULL),
(555, 524, 'Secundaria', '--------', 'ESTUDIANTE', '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:46', NULL),
(556, 526, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:46', NULL),
(557, 527, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO DE FARMACIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:46', NULL),
(558, 528, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:46', NULL),
(559, 529, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:47', NULL),
(560, 530, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'OBSTETRA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:47', NULL),
(561, 531, 'Superior Universitario', '--------', NULL, '---', '---', 'OBSTETRA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 14919', '1', '2021-06-25 01:06:47', NULL),
(562, 532, 'Superior Universitario', '--------', NULL, '---', '---', 'TECNOLOGO MEDICO LABORATORIO CLINICO Y ANATOMIA PATOLOGICA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 10204', '1', '2021-06-25 01:06:47', NULL),
(563, 533, 'Superior Universitario', '--------', NULL, '---', '---', 'QUIMICO FARMACEUTICO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:48', NULL),
(564, 534, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO LABORATORISTA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:48', NULL),
(565, 535, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:49', NULL),
(566, 536, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:49', NULL),
(567, 537, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:49', NULL),
(568, 538, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:50', NULL),
(569, 539, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:50', NULL),
(570, 540, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:50', NULL),
(571, 541, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'TECNOLOGO MEDICO LABORATORIO CLINICO Y ANATOMIA PATOLOGICA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 10177', '1', '2021-06-25 01:06:50', NULL),
(572, 542, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:51', NULL);
INSERT INTO `nivel_educativo` (`codigo`, `id_trabajador`, `nivel_educativo`, `centro_estudios`, `situacion_academica`, `ano_inicio`, `ano_fin`, `nombre_nivel`, `url_doc`, `name_doc`, `id_doc`, `folios`, `descripcion`, `estado`, `fecha_creacion`, `glosa`) VALUES
(573, 543, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:51', NULL),
(574, 544, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:51', NULL),
(575, 545, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:51', NULL),
(576, 546, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:52', NULL),
(577, 547, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:52', NULL),
(578, 548, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:52', NULL),
(579, 549, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:53', NULL),
(580, 550, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:53', NULL),
(581, 551, 'Superior Universitario', '--------', 'ESTUDIANTE', '---', '---', 'INGENIERO SISTEMAS INFORMATICOS', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:53', NULL),
(582, 552, 'Superior Universitario', '--------', 'BACHILLER', '---', '---', 'INGENIERO AMBIENTAL', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:53', NULL),
(583, 553, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO ADMINISTRADOR', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:54', NULL),
(584, 554, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:54', NULL),
(585, 555, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:54', NULL),
(586, 556, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO DE FARMACIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:55', NULL),
(587, 557, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:55', NULL),
(588, 558, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:55', NULL),
(589, 559, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:55', NULL),
(590, 560, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:56', NULL),
(591, 561, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:56', NULL),
(592, 562, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 73204', '1', '2021-06-25 01:06:56', NULL),
(593, 564, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'MEDICO CIRUJANO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 47149', '1', '2021-06-25 01:06:57', NULL),
(594, 565, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:57', NULL),
(595, 566, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN CONTABILIDAD', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:57', NULL),
(596, 567, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'MEDICO CIRUJANO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:57', NULL),
(597, 568, 'Superior Técnico', '--------', 'EGRESADO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:57', NULL),
(598, 569, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'MEDICO CIRUJANO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 77747', '1', '2021-06-25 01:06:58', NULL),
(599, 570, 'Superior Técnico', '--------', 'EGRESADO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:58', NULL),
(600, 571, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:58', NULL),
(601, 572, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:58', NULL),
(602, 573, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:59', NULL),
(603, 574, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'INGENIERO AGRONOMO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:59', NULL),
(604, 575, 'Superior Técnico', '--------', NULL, '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:59', NULL),
(605, 576, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:59', NULL),
(606, 577, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:00', NULL),
(607, 578, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN COMPUTACION E INFORMATICA/EN COMPUTADORAS', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:00', NULL),
(608, 579, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:00', NULL),
(609, 580, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'OBSTETRA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 32519', '1', '2021-06-25 01:06:00', NULL),
(610, 581, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:01', NULL),
(611, 582, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:01', NULL),
(612, 583, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:01', NULL),
(613, 584, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:01', NULL),
(614, 585, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:02', NULL),
(615, 586, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:02', NULL),
(616, 587, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:02', NULL),
(617, 588, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:03', NULL),
(618, 589, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:03', NULL),
(619, 590, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'MEDICO CIRUJANO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:03', NULL),
(620, 591, 'Superior Universitario', '--------', 'BACHILLER', '---', '---', 'NUTRICIONISTA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:04', NULL),
(621, 592, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:04', NULL),
(622, 593, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:04', NULL),
(623, 594, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:04', NULL),
(624, 595, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:05', NULL),
(625, 596, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:05', NULL),
(626, 597, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:05', NULL),
(627, 598, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:05', NULL),
(628, 599, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO LABORATORISTA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:06', NULL),
(629, 600, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO LABORATORISTA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:06', NULL),
(630, 601, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'MEDICO CIRUJANO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:06', NULL),
(631, 602, 'Superior Universitario', '--------', 'BACHILLER', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:06', NULL),
(632, 603, 'Superior Universitario', '--------', 'BACHILLER', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:07', NULL),
(633, 604, 'Superior Universitario', '--------', 'BACHILLER', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:07', NULL),
(634, 605, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:07', NULL),
(635, 606, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:07', NULL),
(636, 607, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:08', NULL),
(637, 608, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:08', NULL),
(638, 609, 'Superior Universitario', '--------', 'EGRESADO', '---', '---', 'INGENIERO ELECTRICISTA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:08', NULL),
(639, 610, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN COMPUTACION E INFORMATICA/EN COMPUTADORAS', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:08', NULL),
(640, 611, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN COMPUTACION E INFORMATICA/EN COMPUTADORAS', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:09', NULL),
(641, 612, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO ADMINISTRADOR', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:09', NULL),
(642, 613, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO ADMINISTRADOR', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:09', NULL),
(643, 614, 'Superior Técnico', '--------', 'EGRESADO', '---', '---', 'TECNICO EN MANTENIMIENTO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:10', NULL),
(644, 615, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:10', NULL),
(645, 616, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:10', NULL),
(646, 617, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:11', NULL),
(647, 618, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:11', NULL),
(648, 619, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:11', NULL),
(649, 620, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:12', NULL),
(650, 621, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:12', NULL),
(651, 622, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:13', NULL),
(652, 623, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:13', NULL),
(653, 624, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:13', NULL),
(654, 625, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:14', NULL),
(655, 626, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:14', NULL),
(656, 627, 'Superior Universitario', '--------', 'BACHILLER', '---', '---', 'INGENIERO SISTEMAS INFORMATICOS', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:14', NULL),
(657, 628, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'CONTADOR PUBLICO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:14', NULL),
(658, 629, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:15', NULL),
(659, 630, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:15', NULL),
(660, 631, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:15', NULL),
(661, 632, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:15', NULL),
(662, 633, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:15', NULL),
(663, 634, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:16', NULL),
(664, 635, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:16', NULL),
(665, 636, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:16', NULL),
(666, 637, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:17', NULL),
(667, 638, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:17', NULL),
(668, 639, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:17', NULL),
(669, 640, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:17', NULL),
(670, 641, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO LABORATORISTA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:18', NULL),
(671, 642, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO LABORATORISTA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:18', NULL),
(672, 643, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN CONTABILIDAD', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:18', NULL),
(673, 644, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:19', NULL),
(674, 645, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:19', NULL),
(675, 646, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:20', NULL),
(676, 647, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:20', NULL),
(677, 648, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:20', NULL),
(678, 649, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:21', NULL),
(679, 650, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO DE FARMACIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:21', NULL),
(680, 651, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:21', NULL),
(681, 652, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'MEDICO CIRUJANO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 0', '1', '2021-06-25 01:06:21', NULL),
(682, 653, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO LABORATORISTA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:22', NULL),
(683, 654, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:22', NULL),
(684, 655, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:22', NULL),
(685, 656, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:22', NULL),
(686, 657, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:22', NULL),
(687, 658, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:23', NULL),
(688, 659, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:23', NULL),
(689, 660, 'Superior Técnico', '--------', 'EGRESADO', '---', '---', 'TECNICO ELECTRICISTA EN GENERAL', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:23', NULL),
(690, 661, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:23', NULL),
(691, 662, 'Superior Técnico', '--------', 'ESTUDIANTE', '---', '---', 'TECNICO MECANICO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:24', NULL),
(692, 663, 'Superior Técnico', '--------', 'ESTUDIANTE', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:24', NULL),
(693, 664, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:24', NULL),
(694, 665, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:24', NULL),
(695, 666, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:25', NULL),
(696, 667, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:25', NULL),
(697, 668, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN CONTABILIDAD', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:25', NULL),
(698, 669, 'Superior Técnico', '--------', NULL, '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:25', NULL),
(699, 670, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 80918', '1', '2021-06-25 01:06:26', NULL),
(700, 670, 'UNIVERSIDAD PRIVADA NORBERT WIENER', '--------', 'TITULO', '---', '---', 'EMERGENCIAS Y DESASTRES', NULL, NULL, NULL, NULL, 'RN :', '1', '2021-06-25 01:06:26', NULL),
(701, 671, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:26', NULL),
(702, 672, 'Superior Universitario', '--------', 'BACHILLER', '---', '---', 'INGENIERO SISTEMAS INFORMATICOS', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:27', NULL),
(703, 673, 'Superior Técnico', '--------', 'ESTUDIANTE', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:27', NULL),
(704, 674, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'OBSTETRA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 30456', '1', '2021-06-25 01:06:27', NULL),
(705, 675, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'OBSTETRA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 0', '1', '2021-06-25 01:06:27', NULL),
(706, 676, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'TRABAJADOR(A) SOCIAL', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:28', NULL),
(707, 677, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO AGRONOMO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:28', NULL),
(708, 678, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:29', NULL),
(709, 679, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:29', NULL),
(710, 680, 'Superior Técnico', '--------', 'EGRESADO', '---', '---', 'TECNICO EN CONTABILIDAD', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:29', NULL),
(711, 681, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:29', NULL),
(712, 682, 'Superior Universitario', '--------', 'BACHILLER', '---', '---', 'INGENIERO SISTEMAS INFORMATICOS', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:30', NULL),
(713, 683, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'TECNOLOGO MEDICO TERAPIA FISICA Y REHABILITACION', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 10894', '1', '2021-06-25 01:06:30', NULL),
(714, 685, 'Superior Universitario', '--------', NULL, '---', '---', 'MEDICO CIRUJANO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 72121', '1', '2021-06-25 01:06:31', NULL),
(715, 686, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'MEDICO CIRUJANO', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 068647', '1', '2021-06-25 01:06:31', NULL),
(716, 687, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'TECNOLOGO MEDICO TERAPIA FISICA Y REHABILITACION', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:31', NULL),
(717, 688, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:32', NULL),
(718, 689, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO DE FARMACIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:32', NULL),
(719, 690, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: 000', '1', '2021-06-25 01:06:33', NULL),
(720, 691, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:33', NULL),
(721, 692, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:33', NULL),
(722, 693, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:33', NULL),
(723, 694, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:33', NULL),
(724, 695, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:34', NULL),
(725, 696, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:34', NULL),
(726, 697, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:34', NULL),
(727, 698, 'Superior Técnico', '--------', 'TITULO', '---', '---', 'TECNICO EN ENFERMERIA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:34', NULL),
(728, 699, 'Superior Técnico', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:35', NULL),
(729, 700, 'Superior Técnico', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:35', NULL),
(730, 701, 'Superior Técnico', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:35', NULL),
(731, 702, 'Superior Técnico', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:36', NULL),
(732, 703, 'Superior Técnico', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:36', NULL),
(733, 704, 'Superior Técnico', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:36', NULL),
(734, 705, 'Superior Técnico', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:37', NULL),
(735, 706, 'Superior Técnico', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:37', NULL),
(736, 707, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:37', NULL),
(737, 708, 'Superior Universitario', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:38', NULL),
(738, 709, 'Superior Universitario', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:38', NULL),
(739, 710, 'Superior Técnico', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:38', NULL),
(740, 711, 'Superior Universitario', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:38', NULL),
(741, 712, 'Superior Técnico', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:39', NULL),
(742, 713, 'Secundaria', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:39', NULL),
(743, 714, 'Superior Técnico', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:39', NULL),
(744, 714, 'Superior Técnico', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:39', NULL),
(745, 716, 'Superior Técnico', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:40', NULL),
(746, 717, 'Superior Técnico', '--------', NULL, '---', '---', NULL, NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:40', NULL),
(747, 719, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'ENFERMERA(O)', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:41', NULL),
(748, 720, 'Superior Universitario', '--------', 'TITULO', '---', '---', 'TECNOLOGO MEDICO LABORATORIO CLINICO Y ANATOMIA PATOLOGICA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:41', NULL),
(749, 721, 'Secundaria', '--------', NULL, '---', '---', '* SIN PROFESIÓN NI CARRERA TÉCNICA', NULL, NULL, NULL, NULL, 'CODIGO DE PROFESIÓN: ', '1', '2021-06-25 01:06:42', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivel_remunerativo`
--

CREATE TABLE `nivel_remunerativo` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` varchar(600) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_MEF` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_PLH` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `desc_corta` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `nivel_remunerativo`
--

INSERT INTO `nivel_remunerativo` (`codigo`, `nombre`, `descripcion`, `id_MEF`, `id_PLH`, `desc_corta`, `estado`, `fecha_creacion`, `glosa`) VALUES
(1, 'STB', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, NULL, NULL, '1', '2021-06-25 13:06:17', NULL),
(2, 'STF', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, NULL, NULL, '1', '2021-06-25 13:06:17', NULL),
(3, 'STA', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, NULL, NULL, '1', '2021-06-25 13:06:18', NULL),
(4, 'ENF-14', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, NULL, NULL, '1', '2021-06-25 13:06:19', NULL),
(5, 'MC-3', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, NULL, NULL, '1', '2021-06-25 13:06:20', NULL),
(6, 'SAF', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, NULL, NULL, '1', '2021-06-25 13:06:20', NULL),
(7, 'ENF-10', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, NULL, NULL, '1', '2021-06-25 13:06:20', NULL),
(8, 'STC', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, NULL, NULL, '1', '2021-06-25 13:06:21', NULL),
(9, 'SPF', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, NULL, NULL, '1', '2021-06-25 13:06:23', NULL),
(10, 'OPS-VI', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, NULL, NULL, '1', '2021-06-25 13:06:24', NULL),
(11, 'SAB', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, NULL, NULL, '1', '2021-06-25 13:06:24', NULL),
(12, 'MC-2', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, NULL, NULL, '1', '2021-06-25 13:06:25', NULL),
(13, 'MC-1', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, NULL, NULL, '1', '2021-06-25 13:06:25', NULL),
(14, 'OBS-I', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, NULL, NULL, '1', '2021-06-25 13:06:27', NULL),
(15, 'OBS-V', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, NULL, NULL, '1', '2021-06-25 13:06:27', NULL),
(16, 'SPE', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, NULL, NULL, '1', '2021-06-25 13:06:29', NULL),
(17, 'SAC', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, NULL, NULL, '1', '2021-06-25 13:06:29', NULL),
(18, 'CD-III', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, NULL, NULL, '1', '2021-06-25 13:06:31', NULL),
(19, 'OBS-III', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, NULL, NULL, '1', '2021-06-25 13:06:34', NULL),
(20, 'F-1', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, NULL, NULL, '1', '2021-06-25 13:06:39', NULL),
(21, 'OBS-II', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, NULL, NULL, '1', '2021-06-25 13:06:40', NULL),
(22, 'STD', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, NULL, NULL, '1', '2021-06-25 13:06:40', NULL),
(23, 'MC-5', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, NULL, NULL, '1', '2021-06-25 13:06:45', NULL),
(24, 'ENF-11', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, NULL, NULL, '1', '2021-06-25 13:06:54', NULL),
(25, 'OPS-IV', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, NULL, NULL, '1', '2021-06-25 13:06:56', NULL),
(26, 'MC-4', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, NULL, NULL, '1', '2021-06-25 13:06:58', NULL),
(27, 'G5-V', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, NULL, NULL, '1', '2021-06-25 13:06:58', NULL),
(28, 'ENF-12', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, NULL, NULL, '1', '2021-06-25 13:06:01', NULL),
(29, 'SPD', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, NULL, NULL, '1', '2021-06-25 13:06:03', NULL),
(30, 'OPS-VIII', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, NULL, NULL, '1', '2021-06-25 13:06:04', NULL),
(31, 'Sin Nivel Remunerativo', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, NULL, NULL, '1', '2021-06-25 13:06:33', NULL),
(32, 'CD-V', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, NULL, NULL, '1', '2021-06-25 13:06:35', NULL),
(33, 'IMPORTADO SIN DATOS', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, NULL, NULL, '1', '2021-06-25 13:06:35', NULL),
(34, 'STE', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, NULL, NULL, '1', '2021-06-25 13:06:42', NULL),
(35, 'F-3', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, NULL, NULL, '1', '2021-06-25 13:06:03', NULL),
(36, 'F-4', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, NULL, NULL, '1', '2021-06-25 13:06:22', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nmision`
--

CREATE TABLE `nmision` (
  `id` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `titulo` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `imagen` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `url_imagen` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `img_color` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fila` decimal(1,0) DEFAULT NULL,
  `tipo_img_icon` decimal(1,0) DEFAULT NULL,
  `icono` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idtipo` char(3) COLLATE utf8_spanish_ci DEFAULT NULL,
  `posicion` char(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `nmision`
--

INSERT INTO `nmision` (`id`, `titulo`, `descripcion`, `imagen`, `url_imagen`, `img_color`, `fila`, `tipo_img_icon`, `icono`, `idtipo`, `posicion`, `estado`, `fecha_creacion`) VALUES
('MIS', 'Where does it come from?', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', 'nosotros.png', 'images/nosotros.png', 'gradient-45deg-deep-orange-orange', NULL, '1', '', NULL, 'DERECHA', '1', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nosotros`
--

CREATE TABLE `nosotros` (
  `id` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `titulo` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `imagen` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `url_imagen` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `img_color` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fila` decimal(1,0) DEFAULT NULL,
  `tipo_img_icon` decimal(1,0) DEFAULT NULL,
  `icono` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idtipo` char(3) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `posicion` char(10) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `nosotros`
--

INSERT INTO `nosotros` (`id`, `titulo`, `descripcion`, `imagen`, `url_imagen`, `img_color`, `fila`, `tipo_img_icon`, `icono`, `idtipo`, `estado`, `fecha_creacion`, `posicion`) VALUES
('NOS', '<b>CABEZON</b>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>pruebaaa......</p>', 'nosotros.png', 'images/nosotros.png', 'deep-purple lighten-4', NULL, '0', NULL, NULL, '1', NULL, 'IZQUIERDA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE `notas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificaciones`
--

CREATE TABLE `notificaciones` (
  `idempresa` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `codigo` int(11) NOT NULL,
  `aviso` int(2) DEFAULT 0,
  `corte` int(2) DEFAULT 0,
  `frecuencia` int(2) DEFAULT 0,
  `fecha_creacion` datetime DEFAULT NULL,
  `idservicio` char(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_aviso` date DEFAULT NULL,
  `fecha_corte` date DEFAULT NULL,
  `fecha_frecuencia` date DEFAULT NULL,
  `fecha_pago` date DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `fecha_facturacion` date DEFAULT NULL,
  `facturacion` decimal(2,0) DEFAULT NULL,
  `idcliente` char(11) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nvision`
--

CREATE TABLE `nvision` (
  `id` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `titulo` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `imagen` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `url_imagen` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `img_color` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fila` decimal(1,0) DEFAULT NULL,
  `tipo_img_icon` decimal(1,0) DEFAULT NULL,
  `icono` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idtipo` char(3) COLLATE utf8_spanish_ci DEFAULT NULL,
  `posicion` char(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `nvision`
--

INSERT INTO `nvision` (`id`, `titulo`, `descripcion`, `imagen`, `url_imagen`, `img_color`, `fila`, `tipo_img_icon`, `icono`, `idtipo`, `posicion`, `estado`, `fecha_creacion`) VALUES
('VIS', 'Where can I get some?', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'nosotros.png', 'images/nosotros.png', 'gradient-45deg-blue-grey-blue-grey', NULL, '1', '', NULL, 'IZQUIERDA', '1', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `otros`
--

CREATE TABLE `otros` (
  `codigo` int(11) NOT NULL,
  `id_trabajador` int(11) NOT NULL,
  `tipo_resolucion` varchar(120) COLLATE utf8_spanish_ci DEFAULT NULL,
  `motivo_resolucion` varchar(520) COLLATE utf8_spanish_ci DEFAULT NULL,
  `numero_resolucion` varchar(120) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_resolucion` varchar(11) COLLATE utf8_spanish_ci DEFAULT NULL,
  `url_doc` varchar(350) COLLATE utf8_spanish_ci DEFAULT NULL,
  `name_doc` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_doc` int(11) NOT NULL,
  `folios` varchar(3) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parametros`
--

CREATE TABLE `parametros` (
  `idempresa` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `parametro` char(20) COLLATE utf8_spanish_ci NOT NULL,
  `tipo_parametro` char(15) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `valor` char(2) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT 0,
  `fecha_creacion` date DEFAULT NULL,
  `valor_long` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `campo_texto` decimal(1,0) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `parametros`
--

INSERT INTO `parametros` (`idempresa`, `parametro`, `tipo_parametro`, `descripcion`, `valor`, `estado`, `fecha_creacion`, `valor_long`, `campo_texto`) VALUES
('001', 'ACTIVAR_NOTIFICA', 'CLIENTES', 'Definir valores por defecto para las notificaciones automaticas al agregar un servicio de internet al cliente', 'SI', '1', NULL, NULL, '0'),
('001', 'ADD_APLICAR_CORTE', 'CLIENTES', 'Definir el día de corte respecto al dia de pago', NULL, '1', NULL, '1', '2'),
('001', 'ADD_CABECERA', 'REPORTES', 'Agregar color a  la cabecera de la tabla de reportes y documentos de  exportación.', 'SI', '1', NULL, NULL, '0'),
('001', 'ADD_COD_INTERNO', 'CLIENTES', 'Reemplazar el número de documento del cliente por el codigo interno autogenerado', 'SI', '1', NULL, NULL, '0'),
('001', 'ADD_FAC_RANGOFECHA', 'FACTURACION', 'Crear documento de venta cuando el periodo del servicio sea diferente al periodo de uno doc. pendiente', 'SI', '1', NULL, NULL, '0'),
('001', 'ADD_FREC_CORTE', 'CLIENTES', 'Definir la frecuencia de corte', NULL, '1', NULL, '3', '2'),
('001', 'ADD_INICIO_AVISO', 'CLIENTES', 'Definir el día de aviso antes del día de oagi', NULL, '1', NULL, '3', '2'),
('001', 'ADD_IP_SERVER', 'SISTEMA', 'Registrar la IP del servidor de innovaMk', NULL, '1', NULL, '192.168.43.44', '1'),
('001', 'ADD_LOCAL_ADDR', 'PPPOE', 'Permitir registrar el Local Address para PPPoE en el servicio ', 'SI', '1', NULL, NULL, '0'),
('001', 'ADD_PARENT_QUEUE', 'SISTEMA', 'Permitir seleccionar el Parent para Queues Simple', 'SI', '1', NULL, NULL, '0'),
('001', 'ADD_PIN_OCULTO', 'HOTSPOT', 'Ocultar la visualización del PIN', 'SI', '1', NULL, NULL, '0'),
('001', 'ADD_REMOTE_ADDR', 'PPPOE', 'Registrar el Remote Address del PPPoE al dar de alta un servicio ', 'NO', '1', NULL, NULL, '0'),
('001', 'ADD_TEMPORIZADOR', 'HOTSPOT_EXTERNO', 'Definir el tiempo para el temporizador que activa el boton de acceso gratuito', NULL, '1', NULL, NULL, '1'),
('001', 'AUTORIZACION_ESTADO', 'GENERAL', 'Habilitar autorización de gestión de estados generales', 'SI', '1', NULL, NULL, '0'),
('001', 'COLOR_DEFAULT', 'GENERAL', 'Definir color por default para el fondo de los items del catálago de productos.', 'SI', '1', NULL, '18', '1'),
('001', 'COLOR_FONDO_PROD', 'GENERAL', 'Definir color por default para el fondo de las imagenes que se muestra la pagina web de detalle de producto.', 'SI', '1', NULL, '18', '1'),
('001', 'DIA_FECHA_VENC', 'FACTURACION', 'Definir los días de diferencia para la Fecha de Vencimiento del Comprobante con respecto a la Fecha de Emisión', NULL, '1', NULL, '6', '1'),
('001', 'DIA_GENERACION_FAC', 'FACTURACION', 'Definir el dia de cada mes para la generación automática del comprobante del servicio de internet del cliente', NULL, '1', NULL, '8', '1'),
('001', 'DIA_PAGO_CLIENTES', 'FACTURACION', 'Definir el dia de pago para todo los clientes', NULL, '1', NULL, '15', '1'),
('001', 'EDIT_DESCUENTO', 'FACTURACION', 'Habilitar el campo:DESCUENTO para el formulario de Registro de Pago', 'NO', '1', NULL, NULL, '0'),
('001', 'EDIT_FECHA_FIN', 'FACTURACION', 'Habilitar el campo:FECHA_FIN para el formulario de Registro de Pago', 'NO', '1', NULL, NULL, '0'),
('001', 'EDIT_FECHA_INICIO', 'FACTURACION', 'Habilitar el campo:FECHA_INICIO para el formulario de Registro de Pago', 'NO', '1', NULL, NULL, '0'),
('001', 'EDIT_ID_ADDRESS', 'PPPOE', 'Habilitar el campo:DIRECCION_IP para el formulario de Perfiles PPPoE', 'SI', '1', NULL, NULL, '0'),
('001', 'FORM_LOGIN', 'HOTSPOT', 'Habilitar el formulario de login en la página de inicio del Hotspot', 'SI', '1', NULL, '18', '0'),
('001', 'INTERFACE_MONITOR', 'DASHBOARD', 'Definir la Interface por default para el Monitor de Red', NULL, '1', NULL, NULL, '1'),
('001', 'LOCAL_ADDR', 'PPPOE', 'Definir el Local Address para el registro de perfiles PPPoE', 'SI', '1', NULL, '192.168.0.1', '1'),
('001', 'MOSTRAR_PRECIO', 'GENERAL', 'Mostrar el precio de los productos en la página web para todo los usuarios', 'SI', '1', NULL, '18', '0'),
('001', 'MOSTRAR_SOLO_PIN', 'HOTSPOT', 'Mostrar acceso por PIN. Por default muestra Usuario y Contraseña.', 'SI', '1', NULL, NULL, '0'),
('001', 'NRO_DOC_ALFANUM', 'CLIENTES', 'Permitir el ingreso de datos Alfanumérico para el Nro. de Documentos en el Mantenedor de Cliente', 'SI', '1', NULL, '18', '0'),
('001', 'PRECIO_DOLAR', 'GENERAL', 'Mostrar el precio en dolares de los productos en la página web', 'SI', '1', NULL, '18', '0'),
('001', 'REG_FACEBOOK', 'GENERAL', 'Habilitar botón para el registrar a los clientes por Facebook', 'SI', '1', NULL, '18', '0'),
('001', 'REG_MANUAL', 'GENERAL', 'Habilitar botón para el registro manual de clientes', 'SI', '1', NULL, '18', '0'),
('001', 'REGISTRAR_CONTRASENA', 'HOTSPOT_EXTERNO', 'Habilitar el acceso por usuario y contraseña?. Por default el acceso se realiza por la MAC del equipo.', NULL, '1', NULL, NULL, '0'),
('001', 'REGISTRO_MANUAL', 'GENERAL', 'Habilitar enlace de registro en la pagina de logeo para que los trabajadores puedan registarse temporalmente', 'NO', '1', NULL, '18', '0'),
('001', 'REGISTRO_MANUAL', 'HOTSPOT', 'Habilitar botón para el registro manual de usuarios en la pagina de de inicio del Hotspot', 'NO', '1', NULL, '18', '0'),
('001', 'ROUTER_MONITOR', 'DASHBOARD', 'Definir el Router por default para el Monitor de Red', NULL, '1', NULL, NULL, '1'),
('001', 'SHOW_DISENADOR', 'GENERAL', 'Mostrar el diseñador de la Plantilla del sistema', 'NO', '1', NULL, NULL, '0'),
('001', 'SHOW_FECHA_EMISION', 'FACTURACION', 'Habilitar el campo:FECHA_EMISION del Comprobante de pago', 'SI', '1', NULL, NULL, '0'),
('001', 'SOCIAL_FACEBOOK', 'HOTSPOT', 'Agregar botón de registro y acceso al internet mediante la red social de Facebook', 'NO', '1', NULL, '18', '0'),
('001', 'SOCIAL_GOOGLE', 'HOTSPOT', 'Agregar botón de registro y acceso al internet mediante la red social de Google+', 'NO', '1', NULL, '18', '0'),
('001', 'SOCIAL_TWITTER', 'HOTSPOT', 'Agregar botón de registro y acceso al internet mediante la red social de Twitter', 'NO', '1', NULL, '18', '0'),
('001', 'TIEMPO_LIMITE', 'HOTSPOT_EXTERNO', 'Determinar la cantidad de veces que el usuario puede ingresar por el acceso gratuito', NULL, '1', NULL, NULL, '1'),
('001', 'VALOR_IGV', 'FACTURACION', 'Definir el valor del Impuesto(%) para los comprobantes de pago a generar', 'SI', '1', NULL, '18', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfiles`
--

CREATE TABLE `perfiles` (
  `idempresa` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `idperfil` int(2) NOT NULL,
  `descripcion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `dsc_corta` char(4) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idtipo` char(3) COLLATE utf8_spanish_ci DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `idrouter` char(3) COLLATE utf8_spanish_ci DEFAULT NULL,
  `precio` decimal(9,2) DEFAULT 0.00,
  `target` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `max_limit` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `vsubida` char(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `vbajada` char(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idle_timeout` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `keepalive_timeout` char(5) COLLATE utf8_spanish_ci DEFAULT NULL,
  `status_autorefresh` char(5) COLLATE utf8_spanish_ci DEFAULT NULL,
  `shared_users` char(3) COLLATE utf8_spanish_ci DEFAULT NULL,
  `rate_limit` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `on_login` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT 0,
  `fecha_creacion` datetime DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `dsc_perfil` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `hotspot_perfil` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `perfil_pppoe` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `local_address` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `remote_address` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `parent1` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `parent2` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `limite_usu` decimal(4,0) DEFAULT NULL,
  `prioridad` decimal(1,0) DEFAULT NULL,
  `address_list` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `packet_mark` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `pcq_up` char(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `pcq_down` char(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `pcq_up_name` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `pcq_down_name` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `name_tree` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `name_tree2` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `es_principal` decimal(1,0) DEFAULT NULL,
  `users` decimal(2,0) DEFAULT NULL,
  `sesion_time` char(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nalternativo` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodo`
--

CREATE TABLE `periodo` (
  `idperiodo` int(3) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `dsc_corta` char(3) COLLATE utf8_spanish_ci DEFAULT NULL,
  `valor` int(3) DEFAULT NULL,
  `descuento` int(2) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `periodo`
--

INSERT INTO `periodo` (`idperiodo`, `nombre`, `dsc_corta`, `valor`, `descuento`, `fecha_creacion`, `estado`) VALUES
(1, 'Mensual', 'MEN', 1, 0, NULL, '1'),
(2, 'Trimestral', 'TRI', 3, 10, NULL, '1'),
(3, 'Semestral', 'SEM', 6, 12, NULL, '1'),
(4, 'Anual', 'ANU', 12, 15, NULL, '1'),
(5, 'Bienal', 'BIE', 24, 20, NULL, '1'),
(6, 'Trienal', 'TRI', 36, 26, NULL, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planes`
--

CREATE TABLE `planes` (
  `idproducto` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `idplan` char(4) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `precio` decimal(9,2) DEFAULT NULL,
  `idmoneda` int(3) DEFAULT NULL,
  `idperiodo` int(2) DEFAULT NULL,
  `limite_clientes` int(11) DEFAULT NULL,
  `actualizacion` decimal(1,0) DEFAULT 0,
  `limite_routers` int(11) DEFAULT NULL,
  `funciones_todas` decimal(1,0) DEFAULT 0,
  `instalacion_sistema` decimal(1,0) DEFAULT 0,
  `soporte_remoto` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plantillas`
--

CREATE TABLE `plantillas` (
  `idplantilla` char(20) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_Creacion` datetime DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `plantillas`
--

INSERT INTO `plantillas` (`idplantilla`, `descripcion`, `fecha_Creacion`, `estado`) VALUES
('COMPROBANTE_CLIENTE', '<p>kmkmklm</p>', '2019-02-28 12:02:36', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post`
--

CREATE TABLE `post` (
  `idpost` int(3) NOT NULL,
  `idempresa` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `titulo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `comentario` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT 0,
  `glosa` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idempresa` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `codigo` char(10) COLLATE utf8_spanish_ci NOT NULL,
  `idgrupo` char(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idprov` char(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `mon_nacional` decimal(10,2) DEFAULT NULL,
  `mon_extranjera` decimal(10,2) DEFAULT NULL,
  `stock` decimal(6,0) DEFAULT NULL,
  `imagen` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `url_imagen` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `nombre` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idtipo` char(3) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idcolor` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prueba`
--

CREATE TABLE `prueba` (
  `idempresa` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `idprueba` int(2) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `dsc_corta` char(4) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `prueba`
--

INSERT INTO `prueba` (`idempresa`, `idprueba`, `nombre`, `dsc_corta`, `fecha_creacion`, `estado`, `glosa`) VALUES
('001', 1, 'PRUEBA', 'PRU', NULL, '1', NULL),
('001', 2, 'CARLOS', 'CRL', '2020-05-12 22:05:13', '1', 'TEST PRUEBAAAA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `queues`
--

CREATE TABLE `queues` (
  `idqueues` int(10) NOT NULL,
  `idempresa` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `idrouter` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `target` decimal(15,0) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `idmaxlimint` int(10) DEFAULT NULL,
  `maxlimit` char(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `glosa` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `vsubida` char(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `vbajada` char(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `precio` decimal(15,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regimen_laboral`
--

CREATE TABLE `regimen_laboral` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` varchar(600) COLLATE utf8_spanish_ci DEFAULT NULL,
  `desc_corta` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `regimen_laboral`
--

INSERT INTO `regimen_laboral` (`codigo`, `nombre`, `descripcion`, `desc_corta`, `estado`, `fecha_creacion`, `glosa`) VALUES
(1, 'Regimen 276', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:17', NULL),
(2, 'Regimen 1057 (CAS)', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:33', NULL),
(3, 'Servicio de terceros / Locación de servicios', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:35', NULL),
(4, 'IMPORTADO SIN DATOS', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:46', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `remuneracion_familiar`
--

CREATE TABLE `remuneracion_familiar` (
  `codigo` int(11) NOT NULL,
  `id_trabajador` int(11) NOT NULL,
  `id_familiar` int(11) NOT NULL,
  `tipo_resolucion` varchar(120) COLLATE utf8_spanish_ci DEFAULT NULL,
  `motivo_resolucion` varchar(520) COLLATE utf8_spanish_ci DEFAULT NULL,
  `numero_resolucion` varchar(120) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_resolucion` varchar(11) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_pago` varchar(11) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nivelRemunerativo` int(11) NOT NULL,
  `url_doc` varchar(350) COLLATE utf8_spanish_ci DEFAULT NULL,
  `name_doc` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_doc` int(11) NOT NULL,
  `folios` varchar(3) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `remuneracion_personal`
--

CREATE TABLE `remuneracion_personal` (
  `codigo` int(11) NOT NULL,
  `id_trabajador` int(11) NOT NULL,
  `tipo_resolucion` varchar(120) COLLATE utf8_spanish_ci DEFAULT NULL,
  `motivo_resolucion` varchar(520) COLLATE utf8_spanish_ci DEFAULT NULL,
  `numero_resolucion` varchar(120) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_resolucion` varchar(11) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_pago` varchar(11) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nivelRemunerativo` int(11) NOT NULL,
  `url_doc` varchar(350) COLLATE utf8_spanish_ci DEFAULT NULL,
  `name_doc` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_doc` int(11) NOT NULL,
  `folios` varchar(3) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `renuncias`
--

CREATE TABLE `renuncias` (
  `codigo` int(11) NOT NULL,
  `id_trabajador` int(11) NOT NULL,
  `tipo_resolucion` varchar(120) COLLATE utf8_spanish_ci DEFAULT NULL,
  `numero_resolucion` varchar(120) COLLATE utf8_spanish_ci DEFAULT NULL,
  `situacion_laboral` int(11) NOT NULL,
  `fecha_resolucion` varchar(11) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_fin_contrato` varchar(11) COLLATE utf8_spanish_ci DEFAULT NULL,
  `url_doc` varchar(350) COLLATE utf8_spanish_ci DEFAULT NULL,
  `name_doc` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_doc` int(11) NOT NULL,
  `folios` varchar(3) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resolucion`
--

CREATE TABLE `resolucion` (
  `codigo` int(11) NOT NULL,
  `id_trabajador` int(11) NOT NULL,
  `fecha_resolucion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `folios_resolucion` varchar(3) COLLATE utf8_spanish_ci DEFAULT NULL,
  `numero_resolucion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `lugar_fisico` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `regimen_laboral` varchar(300) COLLATE utf8_spanish_ci DEFAULT NULL,
  `accion` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `motivo_accion` varchar(400) COLLATE utf8_spanish_ci DEFAULT NULL,
  `url_doc` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tipo_doc` char(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `extencion` char(4) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nombre` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `carpeta` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `resolucion`
--

INSERT INTO `resolucion` (`codigo`, `id_trabajador`, `fecha_resolucion`, `folios_resolucion`, `numero_resolucion`, `lugar_fisico`, `regimen_laboral`, `accion`, `motivo_accion`, `url_doc`, `tipo_doc`, `extencion`, `nombre`, `carpeta`, `descripcion`, `estado`, `fecha_creacion`, `glosa`) VALUES
(1, 329, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'storage/PDF/HBXSbNDVt69t4DOSFT7FadHdbjZKf1SEFAxQnWpR.pdf', NULL, 'pdf', NULL, NULL, NULL, '1', '2021-05-22 01:05:03', NULL),
(2, 329, NULL, '5', '5', 'lnsj', NULL, NULL, NULL, 'storage/PDF/ggHH8yzJPMAXMrbOsUBnGolTz1prIEOLPFCw7Vg9.pdf', NULL, 'pdf', NULL, NULL, NULL, '1', '2021-05-22 01:05:20', NULL),
(3, 329, '02-12-1996', '2', '01', '22', NULL, NULL, NULL, 'storage/PDF/W58ZoSA5UUdPtVqoTjINDnzmwA7J68VUlFwfza3d.pdf', NULL, 'pdf', NULL, NULL, NULL, '1', '2021-05-24 18:05:22', NULL),
(4, 329, '2021-05-21', '5', '02', 'ESTANTE 02', NULL, NULL, NULL, 'storage/PDF/NMI1R5bup6LvyDsALW14FCPxW23ln1MAOyeGmNJW.pdf', NULL, 'pdf', NULL, NULL, NULL, '1', '2021-05-26 15:05:01', NULL),
(5, 329, '2021-05-21', '5', '02', 'ESTANTE 02', NULL, NULL, NULL, 'storage/PDF/jjqjQqaTK4ZP1tjhwjldo6YpKJ4nBGaWi8gai1zM.pdf', NULL, 'pdf', NULL, NULL, NULL, '1', '2021-05-26 15:05:20', NULL),
(6, 331, '2021-05-14', '2', '03', 'estante 03', NULL, NULL, NULL, 'storage/PDF/b4d1yFRfkNsUbX1WsE5WqqziMC5mfbrfRNX8nc7L.pdf', NULL, 'pdf', NULL, NULL, NULL, '1', '2021-05-27 02:05:39', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resolucion_laboral`
--

CREATE TABLE `resolucion_laboral` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` varchar(600) COLLATE utf8_spanish_ci DEFAULT NULL,
  `desc_corta` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `router`
--

CREATE TABLE `router` (
  `idempresa` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `idrouter` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `usuario` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ip` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `puerto` decimal(5,0) DEFAULT NULL,
  `activo` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `alias` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `principal` decimal(1,0) DEFAULT NULL,
  `board_name` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `model` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `serial_number` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `firmware_type` decimal(4,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `router`
--

INSERT INTO `router` (`idempresa`, `idrouter`, `usuario`, `password`, `ip`, `puerto`, `activo`, `fecha_creacion`, `alias`, `principal`, `board_name`, `model`, `serial_number`, `firmware_type`) VALUES
('001', 'R01', 'innovatec', '12345678', '192.168.200.1', '8728', '1', '2020-07-22', 'RB 7VTA PRINCIPAL', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguimiento`
--

CREATE TABLE `seguimiento` (
  `id` int(11) NOT NULL,
  `idcliente` int(11) NOT NULL,
  `idpedido` char(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` char(3) COLLATE utf8_spanish_ci DEFAULT NULL,
  `valor` decimal(1,0) DEFAULT NULL,
  `observacion` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `idarea` char(4) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio_internet`
--

CREATE TABLE `servicio_internet` (
  `idempresa` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `idservicio` char(10) COLLATE utf8_spanish_ci NOT NULL,
  `idrouter` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `perfil_internet` int(11) DEFAULT NULL,
  `ip` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `mac` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_instalacion` date DEFAULT NULL,
  `dia_pago` int(2) DEFAULT NULL,
  `usuario_cliente` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `contrasena_cliente` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `emisor_conectado` char(3) COLLATE utf8_spanish_ci DEFAULT NULL,
  `equipo_receptor` int(11) DEFAULT NULL,
  `ip_receptor` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `direccion` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `coordenadas` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `desc_perfil` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `precio` decimal(12,2) DEFAULT NULL,
  `tipo_acceso` char(3) COLLATE utf8_spanish_ci DEFAULT NULL,
  `usuario_receptor` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `contrasena_receptor` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idcliente` char(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `iddocumento` char(3) COLLATE utf8_spanish_ci DEFAULT NULL,
  `serie` char(4) COLLATE utf8_spanish_ci DEFAULT NULL,
  `numero` char(8) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idestado` char(2) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_emision` datetime DEFAULT NULL,
  `fecha_vencimiento` datetime DEFAULT NULL,
  `formulario` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `activar_notificacion` decimal(1,0) DEFAULT 0,
  `parent` varchar(80) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `situacion_laboral`
--

CREATE TABLE `situacion_laboral` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` varchar(600) COLLATE utf8_spanish_ci DEFAULT NULL,
  `desc_corta` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `situacion_laboral`
--

INSERT INTO `situacion_laboral` (`codigo`, `nombre`, `descripcion`, `desc_corta`, `estado`, `fecha_creacion`, `glosa`) VALUES
(1, 'Nombrado', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:17', NULL),
(2, 'Destacado', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:20', NULL),
(3, 'Contratado 276 - Plazo fijo', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:37', NULL),
(4, 'Contrato CAS', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:33', NULL),
(5, 'Servicio de terceros / locación de servicios', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:35', NULL),
(6, 'IMPORTADO SIN DATOS', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:55', NULL),
(7, 'Designado de carrera', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:22', NULL),
(8, 'Contrato municipal por servicio de terceros / por locación de servicios', 'IMPORTADO DESDE EL PADRON GENERAL', NULL, '1', '2021-06-25 13:06:35', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `test`
--

CREATE TABLE `test` (
  `idempresa` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `idtest` int(11) NOT NULL,
  `descripcion` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `test`
--

INSERT INTO `test` (`idempresa`, `idtest`, `descripcion`, `estado`, `fecha_creacion`, `glosa`) VALUES
('001', 1, 'Probando', '1', NULL, NULL),
('001', 2, 'PRUEBA', '1', '2019-06-17 13:06:59', 'OTROOO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket`
--

CREATE TABLE `ticket` (
  `codigo` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `ticket` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `idperfil` int(11) DEFAULT NULL,
  `descripcion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ticket`
--

INSERT INTO `ticket` (`codigo`, `idusuario`, `ticket`, `idperfil`, `descripcion`, `estado`, `fecha_creacion`, `glosa`) VALUES
(1, 19, '7VTASOB36E6X5SZ7', 96, 'CREADO AUTOMATICAMENTE', '1', '2020-08-20 09:08:56', NULL),
(2, 19, '7VTASOB84Z9A8DLX', 96, 'CREADO AUTOMATICAMENTE', '1', '2020-08-20 10:08:48', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tickets`
--

CREATE TABLE `tickets` (
  `id` int(10) UNSIGNED NOT NULL,
  `persona` varchar(180) COLLATE utf8mb4_unicode_ci DEFAULT 'NO REGISTRADO',
  `direccion` varchar(180) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `celular` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numero` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `condicion` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'ENTREGADO',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tickets_asignados`
--

CREATE TABLE `tickets_asignados` (
  `codigo` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `tickets_cant` int(11) DEFAULT NULL,
  `idzona` char(3) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT 0,
  `fecha_creacion` datetime DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tickets_asignados_det`
--

CREATE TABLE `tickets_asignados_det` (
  `codigo_alterno` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `item` smallint(6) NOT NULL,
  `idtrabajador` int(11) NOT NULL,
  `idperfil_det` smallint(6) NOT NULL,
  `idperfil` int(2) DEFAULT NULL,
  `cantidad` smallint(6) DEFAULT NULL,
  `precio` decimal(9,2) DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tickets_asignados_perfil_det`
--

CREATE TABLE `tickets_asignados_perfil_det` (
  `codigo` int(11) NOT NULL,
  `idperfil_det` smallint(6) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `idperfil` int(2) DEFAULT NULL,
  `cantidad` smallint(6) DEFAULT NULL,
  `precio` decimal(9,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket_venta`
--

CREATE TABLE `ticket_venta` (
  `codigo` int(11) NOT NULL,
  `id_tickets_asign` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio` decimal(9,2) DEFAULT NULL,
  `idperfil` int(2) DEFAULT NULL,
  `ticket` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT 0,
  `fecha_creacion` datetime DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

CREATE TABLE `tipo` (
  `idgrupo` char(10) COLLATE utf8_spanish_ci NOT NULL,
  `idtipo` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_acceso`
--

CREATE TABLE `tipo_acceso` (
  `idempresa` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `idtipo` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `dsc_corta` char(5) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `idrouter` char(3) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tipo_acceso`
--

INSERT INTO `tipo_acceso` (`idempresa`, `idtipo`, `descripcion`, `dsc_corta`, `estado`, `fecha_creacion`, `glosa`, `idrouter`) VALUES
('001', '0Rq', 'Configuración PPPoE', 'PPP', '0', '2020-04-15 00:00:00', NULL, 'R03'),
('001', '2TJ', 'Configuración PPPoE', 'PPP', '0', '2019-04-06 00:00:00', NULL, 'R02'),
('001', '3c0', 'Configuración QUEUES', 'QUE', '0', '2020-04-15 00:00:00', NULL, 'R03'),
('001', '6rs', 'Configuración PCQ', 'PCQ', '0', '2020-04-15 00:00:00', NULL, 'R05'),
('001', 'auj', 'Configuración HotSpot', 'HST', '1', '2019-04-06 00:00:00', NULL, 'R02'),
('001', 'FOP', 'Configuración HotSpot', 'HST', '0', '2020-04-15 00:00:00', NULL, 'R03'),
('001', 'iV5', 'Configuración QUEUES', 'QUE', '0', '2020-04-15 00:00:00', NULL, 'R05'),
('001', 'qH1', 'Configuración PPPoE', 'PPP', '0', '2020-04-15 00:00:00', NULL, 'R05'),
('001', 't46', 'Configuración PCQ', 'PCQ', '0', '2020-04-15 00:00:00', NULL, 'R03'),
('001', 'UGr', 'Configuración PCQ', 'PCQ', '1', '2019-04-06 00:00:00', NULL, 'R02'),
('001', 'Xt9', 'Configuración QUEUES', 'QUE', '1', '2019-04-06 00:00:00', NULL, 'R02'),
('001', 'zPF', 'Configuración HotSpot', 'HST', '0', '2020-04-15 00:00:00', NULL, 'R05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_documento`
--

CREATE TABLE `tipo_documento` (
  `idempresa` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `iddocumento` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `dsc_corta` char(4) COLLATE utf8_spanish_ci DEFAULT NULL,
  `serie` char(4) COLLATE utf8_spanish_ci DEFAULT NULL,
  `numero` char(8) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_licencia`
--

CREATE TABLE `tipo_licencia` (
  `idtipo` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `dsc_corta` char(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `router_permitidos` decimal(2,0) DEFAULT NULL,
  `usuarios_permitidos` decimal(5,0) DEFAULT NULL,
  `precio` decimal(6,2) DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_moneda`
--

CREATE TABLE `tipo_moneda` (
  `idmoneda` int(3) NOT NULL,
  `descripcion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `dsc_corta` char(4) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tipo_moneda`
--

INSERT INTO `tipo_moneda` (`idmoneda`, `descripcion`, `dsc_corta`, `fecha_creacion`, `estado`) VALUES
(1, 'SOLES PERU', 'PEN', '2018-11-08 00:00:00', '3'),
(2, 'DOLAR', '$', '2018-11-08 00:00:00', '1'),
(3, 'EURO8', 'EU7', '2018-11-20 15:11:38', '3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `idempresa` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `idtipo` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `dsc_corta` char(5) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tipo_usuario`
--

INSERT INTO `tipo_usuario` (`idempresa`, `idtipo`, `descripcion`, `dsc_corta`, `estado`, `fecha_creacion`, `glosa`) VALUES
('001', 'ADM', 'ADMINISTRADOR', 'ADMIN', '1', NULL, NULL),
('001', 'CLE', 'CLIENTE', 'CLIEN', '1', NULL, NULL),
('001', 'EDT', 'EDITOR', 'EDIT', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trafico_usuario_hotspot`
--

CREATE TABLE `trafico_usuario_hotspot` (
  `idcliente` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `tdescarga` decimal(20,2) DEFAULT NULL,
  `tsubida` decimal(20,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `trafico_usuario_hotspot`
--

INSERT INTO `trafico_usuario_hotspot` (`idcliente`, `tdescarga`, `tsubida`) VALUES
('058jQoWg0T', '0.00', '0.00'),
('103404745996566581700', NULL, NULL),
('1239888806103508', NULL, NULL),
('u0Y47bC8Ya', '6591824.00', '7619.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubdepartamento`
--

CREATE TABLE `ubdepartamento` (
  `idDepa` int(5) NOT NULL DEFAULT 0,
  `departamento` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ubdepartamento`
--

INSERT INTO `ubdepartamento` (`idDepa`, `departamento`) VALUES
(1, 'AMAZONAS'),
(2, 'ANCASH'),
(3, 'APURIMAC'),
(4, 'AREQUIPA'),
(5, 'AYACUCHO'),
(6, 'CAJAMARCA'),
(7, 'CALLAO'),
(8, 'CUSCO'),
(9, 'HUANCAVELICA'),
(10, 'HUANUCO'),
(11, 'ICA'),
(12, 'JUNIN'),
(13, 'LA LIBERTAD'),
(14, 'LAMBAYEQUE'),
(15, 'LIMA'),
(16, 'LORETO'),
(17, 'MADRE DE DIOS'),
(18, 'MOQUEGUA'),
(19, 'PASCO'),
(20, 'PIURA'),
(21, 'PUNO'),
(22, 'SAN MARTIN'),
(23, 'TACNA'),
(24, 'TUMBES'),
(25, 'UCAYALI');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubdistrito`
--

CREATE TABLE `ubdistrito` (
  `idDist` int(5) NOT NULL DEFAULT 0,
  `distrito` varchar(50) DEFAULT NULL,
  `idProv` int(5) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ubdistrito`
--

INSERT INTO `ubdistrito` (`idDist`, `distrito`, `idProv`) VALUES
(1, 'CHACHAPOYAS', 1),
(2, 'ASUNCION', 1),
(3, 'BALSAS', 1),
(4, 'CHETO', 1),
(5, 'CHILIQUIN', 1),
(6, 'CHUQUIBAMBA', 1),
(7, 'GRANADA', 1),
(8, 'HUANCAS', 1),
(9, 'LA JALCA', 1),
(10, 'LEIMEBAMBA', 1),
(11, 'LEVANTO', 1),
(12, 'MAGDALENA', 1),
(13, 'MARISCAL CASTILLA', 1),
(14, 'MOLINOPAMPA', 1),
(15, 'MONTEVIDEO', 1),
(16, 'OLLEROS', 1),
(17, 'QUINJALCA', 1),
(18, 'SAN FRANCISCO DE DAGUAS', 1),
(19, 'SAN ISIDRO DE MAINO', 1),
(20, 'SOLOCO', 1),
(21, 'SONCHE', 1),
(22, 'LA PECA', 2),
(23, 'ARAMANGO', 2),
(24, 'COPALLIN', 2),
(25, 'EL PARCO', 2),
(26, 'IMAZA', 2),
(27, 'JUMBILLA', 3),
(28, 'CHISQUILLA', 3),
(29, 'CHURUJA', 3),
(30, 'COROSHA', 3),
(31, 'CUISPES', 3),
(32, 'FLORIDA', 3),
(33, 'JAZAN', 3),
(34, 'RECTA', 3),
(35, 'SAN CARLOS', 3),
(36, 'SHIPASBAMBA', 3),
(37, 'VALERA', 3),
(38, 'YAMBRASBAMBA', 3),
(39, 'NIEVA', 4),
(40, 'EL CENEPA', 4),
(41, 'RIO SANTIAGO', 4),
(42, 'LAMUD', 5),
(43, 'CAMPORREDONDO', 5),
(44, 'COCABAMBA', 5),
(45, 'COLCAMAR', 5),
(46, 'CONILA', 5),
(47, 'INGUILPATA', 5),
(48, 'LONGUITA', 5),
(49, 'LONYA CHICO', 5),
(50, 'LUYA', 5),
(51, 'LUYA VIEJO', 5),
(52, 'MARIA', 5),
(53, 'OCALLI', 5),
(54, 'OCUMAL', 5),
(55, 'PISUQUIA', 5),
(56, 'PROVIDENCIA', 5),
(57, 'SAN CRISTOBAL', 5),
(58, 'SAN FRANCISCO DEL YESO', 5),
(59, 'SAN JERONIMO', 5),
(60, 'SAN JUAN DE LOPECANCHA', 5),
(61, 'SANTA CATALINA', 5),
(62, 'SANTO TOMAS', 5),
(63, 'TINGO', 5),
(64, 'TRITA', 5),
(65, 'SAN NICOLAS', 6),
(66, 'CHIRIMOTO', 6),
(67, 'COCHAMAL', 6),
(68, 'HUAMBO', 6),
(69, 'LIMABAMBA', 6),
(70, 'LONGAR', 6),
(71, 'MARISCAL BENAVIDES', 6),
(72, 'MILPUC', 6),
(73, 'OMIA', 6),
(74, 'SANTA ROSA', 6),
(75, 'TOTORA', 6),
(76, 'VISTA ALEGRE', 6),
(77, 'BAGUA GRANDE', 7),
(78, 'CAJARURO', 7),
(79, 'CUMBA', 7),
(80, 'EL MILAGRO', 7),
(81, 'JAMALCA', 7),
(82, 'LONYA GRANDE', 7),
(83, 'YAMON', 7),
(84, 'HUARAZ', 8),
(85, 'COCHABAMBA', 8),
(86, 'COLCABAMBA', 8),
(87, 'HUANCHAY', 8),
(88, 'INDEPENDENCIA', 8),
(89, 'JANGAS', 8),
(90, 'LA LIBERTAD', 8),
(91, 'OLLEROS', 8),
(92, 'PAMPAS', 8),
(93, 'PARIACOTO', 8),
(94, 'PIRA', 8),
(95, 'TARICA', 8),
(96, 'AIJA', 9),
(97, 'CORIS', 9),
(98, 'HUACLLAN', 9),
(99, 'LA MERCED', 9),
(100, 'SUCCHA', 9),
(101, 'LLAMELLIN', 10),
(102, 'ACZO', 10),
(103, 'CHACCHO', 10),
(104, 'CHINGAS', 10),
(105, 'MIRGAS', 10),
(106, 'SAN JUAN DE RONTOY', 10),
(107, 'CHACAS', 11),
(108, 'ACOCHACA', 11),
(109, 'CHIQUIAN', 12),
(110, 'ABELARDO PARDO LEZAMETA', 12),
(111, 'ANTONIO RAYMONDI', 12),
(112, 'AQUIA', 12),
(113, 'CAJACAY', 12),
(114, 'CANIS', 12),
(115, 'COLQUIOC', 12),
(116, 'HUALLANCA', 12),
(117, 'HUASTA', 12),
(118, 'HUAYLLACAYAN', 12),
(119, 'LA PRIMAVERA', 12),
(120, 'MANGAS', 12),
(121, 'PACLLON', 12),
(122, 'SAN MIGUEL DE CORPANQUI', 12),
(123, 'TICLLOS', 12),
(124, 'CARHUAZ', 13),
(125, 'ACOPAMPA', 13),
(126, 'AMASHCA', 13),
(127, 'ANTA', 13),
(128, 'ATAQUERO', 13),
(129, 'MARCARA', 13),
(130, 'PARIAHUANCA', 13),
(131, 'SAN MIGUEL DE ACO', 13),
(132, 'SHILLA', 13),
(133, 'TINCO', 13),
(134, 'YUNGAR', 13),
(135, 'SAN LUIS', 14),
(136, 'SAN NICOLAS', 14),
(137, 'YAUYA', 14),
(138, 'CASMA', 15),
(139, 'BUENA VISTA ALTA', 15),
(140, 'COMANDANTE NOEL', 15),
(141, 'YAUTAN', 15),
(142, 'CORONGO', 16),
(143, 'ACO', 16),
(144, 'BAMBAS', 16),
(145, 'CUSCA', 16),
(146, 'LA PAMPA', 16),
(147, 'YANAC', 16),
(148, 'YUPAN', 16),
(149, 'HUARI', 17),
(150, 'ANRA', 17),
(151, 'CAJAY', 17),
(152, 'CHAVIN DE HUANTAR', 17),
(153, 'HUACACHI', 17),
(154, 'HUACCHIS', 17),
(155, 'HUACHIS', 17),
(156, 'HUANTAR', 17),
(157, 'MASIN', 17),
(158, 'PAUCAS', 17),
(159, 'PONTO', 17),
(160, 'RAHUAPAMPA', 17),
(161, 'RAPAYAN', 17),
(162, 'SAN MARCOS', 17),
(163, 'SAN PEDRO DE CHANA', 17),
(164, 'UCO', 17),
(165, 'HUARMEY', 18),
(166, 'COCHAPETI', 18),
(167, 'CULEBRAS', 18),
(168, 'HUAYAN', 18),
(169, 'MALVAS', 18),
(170, 'CARAZ', 26),
(171, 'HUALLANCA', 26),
(172, 'HUATA', 26),
(173, 'HUAYLAS', 26),
(174, 'MATO', 26),
(175, 'PAMPAROMAS', 26),
(176, 'PUEBLO LIBRE', 26),
(177, 'SANTA CRUZ', 26),
(178, 'SANTO TORIBIO', 26),
(179, 'YURACMARCA', 26),
(180, 'PISCOBAMBA', 27),
(181, 'CASCA', 27),
(182, 'ELEAZAR GUZMAN BARRON', 27),
(183, 'FIDEL OLIVAS ESCUDERO', 27),
(184, 'LLAMA', 27),
(185, 'LLUMPA', 27),
(186, 'LUCMA', 27),
(187, 'MUSGA', 27),
(188, 'OCROS', 21),
(189, 'ACAS', 21),
(190, 'CAJAMARQUILLA', 21),
(191, 'CARHUAPAMPA', 21),
(192, 'COCHAS', 21),
(193, 'CONGAS', 21),
(194, 'LLIPA', 21),
(195, 'SAN CRISTOBAL DE RAJAN', 21),
(196, 'SAN PEDRO', 21),
(197, 'SANTIAGO DE CHILCAS', 21),
(198, 'CABANA', 22),
(199, 'BOLOGNESI', 22),
(200, 'CONCHUCOS', 22),
(201, 'HUACASCHUQUE', 22),
(202, 'HUANDOVAL', 22),
(203, 'LACABAMBA', 22),
(204, 'LLAPO', 22),
(205, 'PALLASCA', 22),
(206, 'PAMPAS', 22),
(207, 'SANTA ROSA', 22),
(208, 'TAUCA', 22),
(209, 'POMABAMBA', 23),
(210, 'HUAYLLAN', 23),
(211, 'PAROBAMBA', 23),
(212, 'QUINUABAMBA', 23),
(213, 'RECUAY', 24),
(214, 'CATAC', 24),
(215, 'COTAPARACO', 24),
(216, 'HUAYLLAPAMPA', 24),
(217, 'LLACLLIN', 24),
(218, 'MARCA', 24),
(219, 'PAMPAS CHICO', 24),
(220, 'PARARIN', 24),
(221, 'TAPACOCHA', 24),
(222, 'TICAPAMPA', 24),
(223, 'CHIMBOTE', 25),
(224, 'CACERES DEL PERU', 25),
(225, 'COISHCO', 25),
(226, 'MACATE', 25),
(227, 'MORO', 25),
(228, 'NEPE&Ntilde;A', 25),
(229, 'SAMANCO', 25),
(230, 'SANTA', 25),
(231, 'NUEVO CHIMBOTE', 25),
(232, 'SIHUAS', 26),
(233, 'ACOBAMBA', 26),
(234, 'ALFONSO UGARTE', 26),
(235, 'CASHAPAMPA', 26),
(236, 'CHINGALPO', 26),
(237, 'HUAYLLABAMBA', 26),
(238, 'QUICHES', 26),
(239, 'RAGASH', 26),
(240, 'SAN JUAN', 26),
(241, 'SICSIBAMBA', 26),
(242, 'YUNGAY', 27),
(243, 'CASCAPARA', 27),
(244, 'MANCOS', 27),
(245, 'MATACOTO', 27),
(246, 'QUILLO', 27),
(247, 'RANRAHIRCA', 27),
(248, 'SHUPLUY', 27),
(249, 'YANAMA', 27),
(250, 'ABANCAY', 28),
(251, 'CHACOCHE', 28),
(252, 'CIRCA', 28),
(253, 'CURAHUASI', 28),
(254, 'HUANIPACA', 28),
(255, 'LAMBRAMA', 28),
(256, 'PICHIRHUA', 28),
(257, 'SAN PEDRO DE CACHORA', 28),
(258, 'TAMBURCO', 28),
(259, 'ANDAHUAYLAS', 29),
(260, 'ANDARAPA', 29),
(261, 'CHIARA', 29),
(262, 'HUANCARAMA', 29),
(263, 'HUANCARAY', 29),
(264, 'HUAYANA', 29),
(265, 'KISHUARA', 29),
(266, 'PACOBAMBA', 29),
(267, 'PACUCHA', 29),
(268, 'PAMPACHIRI', 29),
(269, 'POMACOCHA', 29),
(270, 'SAN ANTONIO DE CACHI', 29),
(271, 'SAN JERONIMO', 29),
(272, 'SAN MIGUEL DE CHACCRAMPA', 29),
(273, 'SANTA MARIA DE CHICMO', 29),
(274, 'TALAVERA', 29),
(275, 'TUMAY HUARACA', 29),
(276, 'TURPO', 29),
(277, 'KAQUIABAMBA', 29),
(278, 'ANTABAMBA', 30),
(279, 'EL ORO', 30),
(280, 'HUAQUIRCA', 30),
(281, 'JUAN ESPINOZA MEDRANO', 30),
(282, 'OROPESA', 30),
(283, 'PACHACONAS', 30),
(284, 'SABAINO', 30),
(285, 'CHALHUANCA', 31),
(286, 'CAPAYA', 31),
(287, 'CARAYBAMBA', 31),
(288, 'CHAPIMARCA', 31),
(289, 'COLCABAMBA', 31),
(290, 'COTARUSE', 31),
(291, 'HUAYLLO', 31),
(292, 'JUSTO APU SAHUARAURA', 31),
(293, 'LUCRE', 31),
(294, 'POCOHUANCA', 31),
(295, 'SAN JUAN DE CHAC&Ntilde;A', 31),
(296, 'SA&Ntilde;AYCA', 31),
(297, 'SORAYA', 31),
(298, 'TAPAIRIHUA', 31),
(299, 'TINTAY', 31),
(300, 'TORAYA', 31),
(301, 'YANACA', 31),
(302, 'TAMBOBAMBA', 32),
(303, 'COTABAMBAS', 32),
(304, 'COYLLURQUI', 32),
(305, 'HAQUIRA', 32),
(306, 'MARA', 32),
(307, 'CHALLHUAHUACHO', 32),
(308, 'CHINCHEROS', 33),
(309, 'ANCO-HUALLO', 33),
(310, 'COCHARCAS', 33),
(311, 'HUACCANA', 33),
(312, 'OCOBAMBA', 33),
(313, 'ONGOY', 33),
(314, 'URANMARCA', 33),
(315, 'RANRACANCHA', 33),
(316, 'CHUQUIBAMBILLA', 34),
(317, 'CURPAHUASI', 34),
(318, 'GAMARRA', 34),
(319, 'HUAYLLATI', 34),
(320, 'MAMARA', 34),
(321, 'MICAELA BASTIDAS', 34),
(322, 'PATAYPAMPA', 34),
(323, 'PROGRESO', 34),
(324, 'SAN ANTONIO', 34),
(325, 'SANTA ROSA', 34),
(326, 'TURPAY', 34),
(327, 'VILCABAMBA', 34),
(328, 'VIRUNDO', 34),
(329, 'CURASCO', 34),
(330, 'AREQUIPA', 35),
(331, 'ALTO SELVA ALEGRE', 35),
(332, 'CAYMA', 35),
(333, 'CERRO COLORADO', 35),
(334, 'CHARACATO', 35),
(335, 'CHIGUATA', 35),
(336, 'JACOBO HUNTER', 35),
(337, 'LA JOYA', 35),
(338, 'MARIANO MELGAR', 35),
(339, 'MIRAFLORES', 35),
(340, 'MOLLEBAYA', 35),
(341, 'PAUCARPATA', 35),
(342, 'POCSI', 35),
(343, 'POLOBAYA', 35),
(344, 'QUEQUE&Ntilde;A', 35),
(345, 'SABANDIA', 35),
(346, 'SACHACA', 35),
(347, 'SAN JUAN DE SIGUAS', 35),
(348, 'SAN JUAN DE TARUCANI', 35),
(349, 'SANTA ISABEL DE SIGUAS', 35),
(350, 'SANTA RITA DE SIGUAS', 35),
(351, 'SOCABAYA', 35),
(352, 'TIABAYA', 35),
(353, 'UCHUMAYO', 35),
(354, 'VITOR', 35),
(355, 'YANAHUARA', 35),
(356, 'YARABAMBA', 35),
(357, 'YURA', 35),
(358, 'JOSE LUIS BUSTAMANTE Y RIVERO', 35),
(359, 'CAMANA', 36),
(360, 'JOSE MARIA QUIMPER', 36),
(361, 'MARIANO NICOLAS VALCARCEL', 36),
(362, 'MARISCAL CACERES', 36),
(363, 'NICOLAS DE PIEROLA', 36),
(364, 'OCO&Ntilde;A', 36),
(365, 'QUILCA', 36),
(366, 'SAMUEL PASTOR', 36),
(367, 'CARAVELI', 37),
(368, 'ACARI', 37),
(369, 'ATICO', 37),
(370, 'ATIQUIPA', 37),
(371, 'BELLA UNION', 37),
(372, 'CAHUACHO', 37),
(373, 'CHALA', 37),
(374, 'CHAPARRA', 37),
(375, 'HUANUHUANU', 37),
(376, 'JAQUI', 37),
(377, 'LOMAS', 37),
(378, 'QUICACHA', 37),
(379, 'YAUCA', 37),
(380, 'APLAO', 38),
(381, 'ANDAGUA', 38),
(382, 'AYO', 38),
(383, 'CHACHAS', 38),
(384, 'CHILCAYMARCA', 38),
(385, 'CHOCO', 38),
(386, 'HUANCARQUI', 38),
(387, 'MACHAGUAY', 38),
(388, 'ORCOPAMPA', 38),
(389, 'PAMPACOLCA', 38),
(390, 'TIPAN', 38),
(391, 'U&Ntilde;ON', 38),
(392, 'URACA', 38),
(393, 'VIRACO', 38),
(394, 'CHIVAY', 39),
(395, 'ACHOMA', 39),
(396, 'CABANACONDE', 39),
(397, 'CALLALLI', 39),
(398, 'CAYLLOMA', 39),
(399, 'COPORAQUE', 39),
(400, 'HUAMBO', 39),
(401, 'HUANCA', 39),
(402, 'ICHUPAMPA', 39),
(403, 'LARI', 39),
(404, 'LLUTA', 39),
(405, 'MACA', 39),
(406, 'MADRIGAL', 39),
(407, 'SAN ANTONIO DE CHUCA', 39),
(408, 'SIBAYO', 39),
(409, 'TAPAY', 39),
(410, 'TISCO', 39),
(411, 'TUTI', 39),
(412, 'YANQUE', 39),
(413, 'MAJES', 39),
(414, 'CHUQUIBAMBA', 40),
(415, 'ANDARAY', 40),
(416, 'CAYARANI', 40),
(417, 'CHICHAS', 40),
(418, 'IRAY', 40),
(419, 'RIO GRANDE', 40),
(420, 'SALAMANCA', 40),
(421, 'YANAQUIHUA', 40),
(422, 'MOLLENDO', 41),
(423, 'COCACHACRA', 41),
(424, 'DEAN VALDIVIA', 41),
(425, 'ISLAY', 41),
(426, 'MEJIA', 41),
(427, 'PUNTA DE BOMBON', 41),
(428, 'COTAHUASI', 42),
(429, 'ALCA', 42),
(430, 'CHARCANA', 42),
(431, 'HUAYNACOTAS', 42),
(432, 'PAMPAMARCA', 42),
(433, 'PUYCA', 42),
(434, 'QUECHUALLA', 42),
(435, 'SAYLA', 42),
(436, 'TAURIA', 42),
(437, 'TOMEPAMPA', 42),
(438, 'TORO', 42),
(439, 'AYACUCHO', 43),
(440, 'ACOCRO', 43),
(441, 'ACOS VINCHOS', 43),
(442, 'CARMEN ALTO', 43),
(443, 'CHIARA', 43),
(444, 'OCROS', 43),
(445, 'PACAYCASA', 43),
(446, 'QUINUA', 43),
(447, 'SAN JOSE DE TICLLAS', 43),
(448, 'SAN JUAN BAUTISTA', 43),
(449, 'SANTIAGO DE PISCHA', 43),
(450, 'SOCOS', 43),
(451, 'TAMBILLO', 43),
(452, 'VINCHOS', 43),
(453, 'JESUS NAZARENO', 43),
(454, 'CANGALLO', 44),
(455, 'CHUSCHI', 44),
(456, 'LOS MOROCHUCOS', 44),
(457, 'MARIA PARADO DE BELLIDO', 44),
(458, 'PARAS', 44),
(459, 'TOTOS', 44),
(460, 'SANCOS', 45),
(461, 'CARAPO', 45),
(462, 'SACSAMARCA', 45),
(463, 'SANTIAGO DE LUCANAMARCA', 45),
(464, 'HUANTA', 46),
(465, 'AYAHUANCO', 46),
(466, 'HUAMANGUILLA', 46),
(467, 'IGUAIN', 46),
(468, 'LURICOCHA', 46),
(469, 'SANTILLANA', 46),
(470, 'SIVIA', 46),
(471, 'LLOCHEGUA', 46),
(472, 'SAN MIGUEL', 47),
(473, 'ANCO', 47),
(474, 'AYNA', 47),
(475, 'CHILCAS', 47),
(476, 'CHUNGUI', 47),
(477, 'LUIS CARRANZA', 47),
(478, 'SANTA ROSA', 47),
(479, 'TAMBO', 47),
(480, 'PUQUIO', 48),
(481, 'AUCARA', 48),
(482, 'CABANA', 48),
(483, 'CARMEN SALCEDO', 48),
(484, 'CHAVI&Ntilde;A', 48),
(485, 'CHIPAO', 48),
(486, 'HUAC-HUAS', 48),
(487, 'LARAMATE', 48),
(488, 'LEONCIO PRADO', 48),
(489, 'LLAUTA', 48),
(490, 'LUCANAS', 48),
(491, 'OCA&Ntilde;A', 48),
(492, 'OTOCA', 48),
(493, 'SAISA', 48),
(494, 'SAN CRISTOBAL', 48),
(495, 'SAN JUAN', 48),
(496, 'SAN PEDRO', 48),
(497, 'SAN PEDRO DE PALCO', 48),
(498, 'SANCOS', 48),
(499, 'SANTA ANA DE HUAYCAHUACHO', 48),
(500, 'SANTA LUCIA', 48),
(501, 'CORACORA', 49),
(502, 'CHUMPI', 49),
(503, 'CORONEL CASTA&Ntilde;EDA', 49),
(504, 'PACAPAUSA', 49),
(505, 'PULLO', 49),
(506, 'PUYUSCA', 49),
(507, 'SAN FRANCISCO DE RAVACAYCO', 49),
(508, 'UPAHUACHO', 49),
(509, 'PAUSA', 50),
(510, 'COLTA', 50),
(511, 'CORCULLA', 50),
(512, 'LAMPA', 50),
(513, 'MARCABAMBA', 50),
(514, 'OYOLO', 50),
(515, 'PARARCA', 50),
(516, 'SAN JAVIER DE ALPABAMBA', 50),
(517, 'SAN JOSE DE USHUA', 50),
(518, 'SARA SARA', 50),
(519, 'QUEROBAMBA', 51),
(520, 'BELEN', 51),
(521, 'CHALCOS', 51),
(522, 'CHILCAYOC', 51),
(523, 'HUACA&Ntilde;A', 51),
(524, 'MORCOLLA', 51),
(525, 'PAICO', 51),
(526, 'SAN PEDRO DE LARCAY', 51),
(527, 'SAN SALVADOR DE QUIJE', 51),
(528, 'SANTIAGO DE PAUCARAY', 51),
(529, 'SORAS', 51),
(530, 'HUANCAPI', 52),
(531, 'ALCAMENCA', 52),
(532, 'APONGO', 52),
(533, 'ASQUIPATA', 52),
(534, 'CANARIA', 52),
(535, 'CAYARA', 52),
(536, 'COLCA', 52),
(537, 'HUAMANQUIQUIA', 52),
(538, 'HUANCARAYLLA', 52),
(539, 'HUAYA', 52),
(540, 'SARHUA', 52),
(541, 'VILCANCHOS', 52),
(542, 'VILCAS HUAMAN', 53),
(543, 'ACCOMARCA', 53),
(544, 'CARHUANCA', 53),
(545, 'CONCEPCION', 53),
(546, 'HUAMBALPA', 53),
(547, 'INDEPENDENCIA', 53),
(548, 'SAURAMA', 53),
(549, 'VISCHONGO', 53),
(550, 'CAJAMARCA', 54),
(551, 'CAJAMARCA', 54),
(552, 'ASUNCION', 54),
(553, 'CHETILLA', 54),
(554, 'COSPAN', 54),
(555, 'ENCA&Ntilde;ADA', 54),
(556, 'JESUS', 54),
(557, 'LLACANORA', 54),
(558, 'LOS BA&Ntilde;OS DEL INCA', 54),
(559, 'MAGDALENA', 54),
(560, 'MATARA', 54),
(561, 'NAMORA', 54),
(562, 'SAN JUAN', 54),
(563, 'CAJABAMBA', 55),
(564, 'CACHACHI', 55),
(565, 'CONDEBAMBA', 55),
(566, 'SITACOCHA', 55),
(567, 'CELENDIN', 56),
(568, 'CHUMUCH', 56),
(569, 'CORTEGANA', 56),
(570, 'HUASMIN', 56),
(571, 'JORGE CHAVEZ', 56),
(572, 'JOSE GALVEZ', 56),
(573, 'MIGUEL IGLESIAS', 56),
(574, 'OXAMARCA', 56),
(575, 'SOROCHUCO', 56),
(576, 'SUCRE', 56),
(577, 'UTCO', 56),
(578, 'LA LIBERTAD DE PALLAN', 56),
(579, 'CHOTA', 57),
(580, 'ANGUIA', 57),
(581, 'CHADIN', 57),
(582, 'CHIGUIRIP', 57),
(583, 'CHIMBAN', 57),
(584, 'CHOROPAMPA', 57),
(585, 'COCHABAMBA', 57),
(586, 'CONCHAN', 57),
(587, 'HUAMBOS', 57),
(588, 'LAJAS', 57),
(589, 'LLAMA', 57),
(590, 'MIRACOSTA', 57),
(591, 'PACCHA', 57),
(592, 'PION', 57),
(593, 'QUEROCOTO', 57),
(594, 'SAN JUAN DE LICUPIS', 57),
(595, 'TACABAMBA', 57),
(596, 'TOCMOCHE', 57),
(597, 'CHALAMARCA', 57),
(598, 'CONTUMAZA', 58),
(599, 'CHILETE', 58),
(600, 'CUPISNIQUE', 58),
(601, 'GUZMANGO', 58),
(602, 'SAN BENITO', 58),
(603, 'SANTA CRUZ DE TOLED', 58),
(604, 'TANTARICA', 58),
(605, 'YONAN', 58),
(606, 'CUTERVO', 59),
(607, 'CALLAYUC', 59),
(608, 'CHOROS', 59),
(609, 'CUJILLO', 59),
(610, 'LA RAMADA', 59),
(611, 'PIMPINGOS', 59),
(612, 'QUEROCOTILLO', 59),
(613, 'SAN ANDRES DE CUTERVO', 59),
(614, 'SAN JUAN DE CUTERVO', 59),
(615, 'SAN LUIS DE LUCMA', 59),
(616, 'SANTA CRUZ', 59),
(617, 'SANTO DOMINGO DE LA CAPILLA', 59),
(618, 'SANTO TOMAS', 59),
(619, 'SOCOTA', 59),
(620, 'TORIBIO CASANOVA', 59),
(621, 'BAMBAMARCA', 60),
(622, 'CHUGUR', 60),
(623, 'HUALGAYOC', 60),
(624, 'JAEN', 61),
(625, 'BELLAVISTA', 61),
(626, 'CHONTALI', 61),
(627, 'COLASAY', 61),
(628, 'HUABAL', 61),
(629, 'LAS PIRIAS', 61),
(630, 'POMAHUACA', 61),
(631, 'PUCARA', 61),
(632, 'SALLIQUE', 61),
(633, 'SAN FELIPE', 61),
(634, 'SAN JOSE DEL ALTO', 61),
(635, 'SANTA ROSA', 61),
(636, 'SAN IGNACIO', 62),
(637, 'CHIRINOS', 62),
(638, 'HUARANGO', 62),
(639, 'LA COIPA', 62),
(640, 'NAMBALLE', 62),
(641, 'SAN JOSE DE LOURDES', 62),
(642, 'TABACONAS', 62),
(643, 'PEDRO GALVEZ', 63),
(644, 'CHANCAY', 63),
(645, 'EDUARDO VILLANUEVA', 63),
(646, 'GREGORIO PITA', 63),
(647, 'ICHOCAN', 63),
(648, 'JOSE MANUEL QUIROZ', 63),
(649, 'JOSE SABOGAL', 63),
(650, 'SAN MIGUEL', 64),
(651, 'SAN MIGUEL', 64),
(652, 'BOLIVAR', 64),
(653, 'CALQUIS', 64),
(654, 'CATILLUC', 64),
(655, 'EL PRADO', 64),
(656, 'LA FLORIDA', 64),
(657, 'LLAPA', 64),
(658, 'NANCHOC', 64),
(659, 'NIEPOS', 64),
(660, 'SAN GREGORIO', 64),
(661, 'SAN SILVESTRE DE COCHAN', 64),
(662, 'TONGOD', 64),
(663, 'UNION AGUA BLANCA', 64),
(664, 'SAN PABLO', 65),
(665, 'SAN BERNARDINO', 65),
(666, 'SAN LUIS', 65),
(667, 'TUMBADEN', 65),
(668, 'SANTA CRUZ', 66),
(669, 'ANDABAMBA', 66),
(670, 'CATACHE', 66),
(671, 'CHANCAYBA&Ntilde;OS', 66),
(672, 'LA ESPERANZA', 66),
(673, 'NINABAMBA', 66),
(674, 'PULAN', 66),
(675, 'SAUCEPAMPA', 66),
(676, 'SEXI', 66),
(677, 'UTICYACU', 66),
(678, 'YAUYUCAN', 66),
(679, 'CALLAO', 67),
(680, 'BELLAVISTA', 67),
(681, 'CARMEN DE LA LEGUA REYNOSO', 67),
(682, 'LA PERLA', 67),
(683, 'LA PUNTA', 67),
(684, 'VENTANILLA', 67),
(685, 'CUSCO', 67),
(686, 'CCORCA', 67),
(687, 'POROY', 67),
(688, 'SAN JERONIMO', 67),
(689, 'SAN SEBASTIAN', 67),
(690, 'SANTIAGO', 67),
(691, 'SAYLLA', 67),
(692, 'WANCHAQ', 67),
(693, 'ACOMAYO', 68),
(694, 'ACOPIA', 68),
(695, 'ACOS', 68),
(696, 'MOSOC LLACTA', 68),
(697, 'POMACANCHI', 68),
(698, 'RONDOCAN', 68),
(699, 'SANGARARA', 68),
(700, 'ANTA', 69),
(701, 'ANCAHUASI', 69),
(702, 'CACHIMAYO', 69),
(703, 'CHINCHAYPUJIO', 69),
(704, 'HUAROCONDO', 69),
(705, 'LIMATAMBO', 69),
(706, 'MOLLEPATA', 69),
(707, 'PUCYURA', 69),
(708, 'ZURITE', 69),
(709, 'CALCA', 70),
(710, 'COYA', 70),
(711, 'LAMAY', 70),
(712, 'LARES', 70),
(713, 'PISAC', 70),
(714, 'SAN SALVADOR', 70),
(715, 'TARAY', 70),
(716, 'YANATILE', 70),
(717, 'YANAOCA', 71),
(718, 'CHECCA', 71),
(719, 'KUNTURKANKI', 71),
(720, 'LANGUI', 71),
(721, 'LAYO', 71),
(722, 'PAMPAMARCA', 71),
(723, 'QUEHUE', 71),
(724, 'TUPAC AMARU', 71),
(725, 'SICUANI', 72),
(726, 'CHECACUPE', 72),
(727, 'COMBAPATA', 72),
(728, 'MARANGANI', 72),
(729, 'PITUMARCA', 72),
(730, 'SAN PABLO', 72),
(731, 'SAN PEDRO', 72),
(732, 'TINTA', 72),
(733, 'SANTO TOMAS', 73),
(734, 'CAPACMARCA', 73),
(735, 'CHAMACA', 73),
(736, 'COLQUEMARCA', 73),
(737, 'LIVITACA', 73),
(738, 'LLUSCO', 73),
(739, 'QUI&Ntilde;OTA', 73),
(740, 'VELILLE', 73),
(741, 'ESPINAR', 74),
(742, 'CONDOROMA', 74),
(743, 'COPORAQUE', 74),
(744, 'OCORURO', 74),
(745, 'PALLPATA', 74),
(746, 'PICHIGUA', 74),
(747, 'SUYCKUTAMBO', 74),
(748, 'ALTO PICHIGUA', 74),
(749, 'SANTA ANA', 75),
(750, 'ECHARATE', 75),
(751, 'HUAYOPATA', 75),
(752, 'MARANURA', 75),
(753, 'OCOBAMBA', 75),
(754, 'QUELLOUNO', 75),
(755, 'KIMBIRI', 75),
(756, 'SANTA TERESA', 75),
(757, 'VILCABAMBA', 75),
(758, 'PICHARI', 75),
(759, 'PARURO', 76),
(760, 'ACCHA', 76),
(761, 'CCAPI', 76),
(762, 'COLCHA', 76),
(763, 'HUANOQUITE', 76),
(764, 'OMACHA', 76),
(765, 'PACCARITAMBO', 76),
(766, 'PILLPINTO', 76),
(767, 'YAURISQUE', 76),
(768, 'PAUCARTAMBO', 77),
(769, 'CAICAY', 77),
(770, 'CHALLABAMBA', 77),
(771, 'COLQUEPATA', 77),
(772, 'HUANCARANI', 77),
(773, 'KOS&Ntilde;IPATA', 77),
(774, 'URCOS', 78),
(775, 'ANDAHUAYLILLAS', 78),
(776, 'CAMANTI', 78),
(777, 'CCARHUAYO', 78),
(778, 'CCATCA', 78),
(779, 'CUSIPATA', 78),
(780, 'HUARO', 78),
(781, 'LUCRE', 78),
(782, 'MARCAPATA', 78),
(783, 'OCONGATE', 78),
(784, 'OROPESA', 78),
(785, 'QUIQUIJANA', 78),
(786, 'URUBAMBA', 79),
(787, 'CHINCHERO', 79),
(788, 'HUAYLLABAMBA', 79),
(789, 'MACHUPICCHU', 79),
(790, 'MARAS', 79),
(791, 'OLLANTAYTAMBO', 79),
(792, 'YUCAY', 79),
(793, 'HUANCAVELICA', 80),
(794, 'ACOBAMBILLA', 80),
(795, 'ACORIA', 80),
(796, 'CONAYCA', 80),
(797, 'CUENCA', 80),
(798, 'HUACHOCOLPA', 80),
(799, 'HUAYLLAHUARA', 80),
(800, 'IZCUCHACA', 80),
(801, 'LARIA', 80),
(802, 'MANTA', 80),
(803, 'MARISCAL CACERES', 80),
(804, 'MOYA', 80),
(805, 'NUEVO OCCORO', 80),
(806, 'PALCA', 80),
(807, 'PILCHACA', 80),
(808, 'VILCA', 80),
(809, 'YAULI', 80),
(810, 'ASCENSION', 80),
(811, 'HUANDO', 80),
(812, 'ACOBAMBA', 81),
(813, 'ANDABAMBA', 81),
(814, 'ANTA', 81),
(815, 'CAJA', 81),
(816, 'MARCAS', 81),
(817, 'PAUCARA', 81),
(818, 'POMACOCHA', 81),
(819, 'ROSARIO', 81),
(820, 'LIRCAY', 82),
(821, 'ANCHONGA', 82),
(822, 'CALLANMARCA', 82),
(823, 'CCOCHACCASA', 82),
(824, 'CHINCHO', 82),
(825, 'CONGALLA', 82),
(826, 'HUANCA-HUANCA', 82),
(827, 'HUAYLLAY GRANDE', 82),
(828, 'JULCAMARCA', 82),
(829, 'SAN ANTONIO DE ANTAPARCO', 82),
(830, 'SANTO TOMAS DE PATA', 82),
(831, 'SECCLLA', 82),
(832, 'CASTROVIRREYNA', 83),
(833, 'ARMA', 83),
(834, 'AURAHUA', 83),
(835, 'CAPILLAS', 83),
(836, 'CHUPAMARCA', 83),
(837, 'COCAS', 83),
(838, 'HUACHOS', 83),
(839, 'HUAMATAMBO', 83),
(840, 'MOLLEPAMPA', 83),
(841, 'SAN JUAN', 83),
(842, 'SANTA ANA', 83),
(843, 'TANTARA', 83),
(844, 'TICRAPO', 83),
(845, 'CHURCAMPA', 84),
(846, 'ANCO', 84),
(847, 'CHINCHIHUASI', 84),
(848, 'EL CARMEN', 84),
(849, 'LA MERCED', 84),
(850, 'LOCROJA', 84),
(851, 'PAUCARBAMBA', 84),
(852, 'SAN MIGUEL DE MAYOCC', 84),
(853, 'SAN PEDRO DE CORIS', 84),
(854, 'PACHAMARCA', 84),
(855, 'HUAYTARA', 85),
(856, 'AYAVI', 85),
(857, 'CORDOVA', 85),
(858, 'HUAYACUNDO ARMA', 85),
(859, 'LARAMARCA', 85),
(860, 'OCOYO', 85),
(861, 'PILPICHACA', 85),
(862, 'QUERCO', 85),
(863, 'QUITO-ARMA', 85),
(864, 'SAN ANTONIO DE CUSICANCHA', 85),
(865, 'SAN FRANCISCO DE SANGAYAICO', 85),
(866, 'SAN ISIDRO', 85),
(867, 'SANTIAGO DE CHOCORVOS', 85),
(868, 'SANTIAGO DE QUIRAHUARA', 85),
(869, 'SANTO DOMINGO DE CAPILLAS', 85),
(870, 'TAMBO', 85),
(871, 'PAMPAS', 86),
(872, 'ACOSTAMBO', 86),
(873, 'ACRAQUIA', 86),
(874, 'AHUAYCHA', 86),
(875, 'COLCABAMBA', 86),
(876, 'DANIEL HERNANDEZ', 86),
(877, 'HUACHOCOLPA', 86),
(878, 'HUARIBAMBA', 86),
(879, '&Ntilde;AHUIMPUQUIO', 86),
(880, 'PAZOS', 86),
(881, 'QUISHUAR', 86),
(882, 'SALCABAMBA', 86),
(883, 'SALCAHUASI', 86),
(884, 'SAN MARCOS DE ROCCHAC', 86),
(885, 'SURCUBAMBA', 86),
(886, 'TINTAY PUNCU', 86),
(887, 'HUANUCO', 87),
(888, 'AMARILIS', 87),
(889, 'CHINCHAO', 87),
(890, 'CHURUBAMBA', 87),
(891, 'MARGOS', 87),
(892, 'QUISQUI', 87),
(893, 'SAN FRANCISCO DE CAYRAN', 87),
(894, 'SAN PEDRO DE CHAULAN', 87),
(895, 'SANTA MARIA DEL VALLE', 87),
(896, 'YARUMAYO', 87),
(897, 'PILLCO MARCA', 87),
(898, 'AMBO', 88),
(899, 'CAYNA', 88),
(900, 'COLPAS', 88),
(901, 'CONCHAMARCA', 88),
(902, 'HUACAR', 88),
(903, 'SAN FRANCISCO', 88),
(904, 'SAN RAFAEL', 88),
(905, 'TOMAY KICHWA', 88),
(906, 'LA UNION', 89),
(907, 'CHUQUIS', 89),
(908, 'MARIAS', 89),
(909, 'PACHAS', 89),
(910, 'QUIVILLA', 89),
(911, 'RIPAN', 89),
(912, 'SHUNQUI', 89),
(913, 'SILLAPATA', 89),
(914, 'YANAS', 89),
(915, 'HUACAYBAMBA', 90),
(916, 'CANCHABAMBA', 90),
(917, 'COCHABAMBA', 90),
(918, 'PINRA', 90),
(919, 'LLATA', 91),
(920, 'ARANCAY', 91),
(921, 'CHAVIN DE PARIARCA', 91),
(922, 'JACAS GRANDE', 91),
(923, 'JIRCAN', 91),
(924, 'MIRAFLORES', 91),
(925, 'MONZON', 91),
(926, 'PUNCHAO', 91),
(927, 'PU&Ntilde;OS', 91),
(928, 'SINGA', 91),
(929, 'TANTAMAYO', 91),
(930, 'RUPA-RUPA', 92),
(931, 'DANIEL ALOMIA ROBLES', 92),
(932, 'HERMILIO VALDIZAN', 92),
(933, 'JOSE CRESPO Y CASTILLO', 92),
(934, 'LUYANDO', 92),
(935, 'MARIANO DAMASO BERAUN', 92),
(936, 'HUACRACHUCO', 93),
(937, 'CHOLON', 93),
(938, 'SAN BUENAVENTURA', 93),
(939, 'PANAO', 94),
(940, 'CHAGLLA', 94),
(941, 'MOLINO', 94),
(942, 'UMARI', 94),
(943, 'PUERTO INCA', 95),
(944, 'CODO DEL POZUZO', 95),
(945, 'HONORIA', 95),
(946, 'TOURNAVISTA', 95),
(947, 'YUYAPICHIS', 95),
(948, 'JESUS', 96),
(949, 'BA&Ntilde;OS', 96),
(950, 'JIVIA', 96),
(951, 'QUEROPALCA', 96),
(952, 'RONDOS', 96),
(953, 'SAN FRANCISCO DE ASIS', 96),
(954, 'SAN MIGUEL DE CAURI', 96),
(955, 'CHAVINILLO', 97),
(956, 'CAHUAC', 97),
(957, 'CHACABAMBA', 97),
(958, 'APARICIO POMARES', 97),
(959, 'JACAS CHICO', 97),
(960, 'OBAS', 97),
(961, 'PAMPAMARCA', 97),
(962, 'CHORAS', 97),
(963, 'ICA', 98),
(964, 'LA TINGUI&Ntilde;A', 98),
(965, 'LOS AQUIJES', 98),
(966, 'OCUCAJE', 98),
(967, 'PACHACUTEC', 98),
(968, 'PARCONA', 98),
(969, 'PUEBLO NUEVO', 98),
(970, 'SALAS', 98),
(971, 'SAN JOSE DE LOS MOLINOS', 98),
(972, 'SAN JUAN BAUTISTA', 98),
(973, 'SANTIAGO', 98),
(974, 'SUBTANJALLA', 98),
(975, 'TATE', 98),
(976, 'YAUCA DEL ROSARIO', 98),
(977, 'CHINCHA ALTA', 99),
(978, 'ALTO LARAN', 99),
(979, 'CHAVIN', 99),
(980, 'CHINCHA BAJA', 99),
(981, 'EL CARMEN', 99),
(982, 'GROCIO PRADO', 99),
(983, 'PUEBLO NUEVO', 99),
(984, 'SAN JUAN DE YANAC', 99),
(985, 'SAN PEDRO DE HUACARPANA', 99),
(986, 'SUNAMPE', 99),
(987, 'TAMBO DE MORA', 99),
(988, 'NAZCA', 100),
(989, 'CHANGUILLO', 100),
(990, 'EL INGENIO', 100),
(991, 'MARCONA', 100),
(992, 'VISTA ALEGRE', 100),
(993, 'PALPA', 101),
(994, 'LLIPATA', 101),
(995, 'RIO GRANDE', 101),
(996, 'SANTA CRUZ', 101),
(997, 'TIBILLO', 101),
(998, 'PISCO', 102),
(999, 'HUANCANO', 102),
(1000, 'HUMAY', 102),
(1001, 'INDEPENDENCIA', 102),
(1002, 'PARACAS', 102),
(1003, 'SAN ANDRES', 102),
(1004, 'SAN CLEMENTE', 102),
(1005, 'TUPAC AMARU INCA', 102),
(1006, 'HUANCAYO', 103),
(1007, 'CARHUACALLANGA', 103),
(1008, 'CHACAPAMPA', 103),
(1009, 'CHICCHE', 103),
(1010, 'CHILCA', 103),
(1011, 'CHONGOS ALTO', 103),
(1012, 'CHUPURO', 103),
(1013, 'COLCA', 103),
(1014, 'CULLHUAS', 103),
(1015, 'EL TAMBO', 103),
(1016, 'HUACRAPUQUIO', 103),
(1017, 'HUALHUAS', 103),
(1018, 'HUANCAN', 103),
(1019, 'HUASICANCHA', 103),
(1020, 'HUAYUCACHI', 103),
(1021, 'INGENIO', 103),
(1022, 'PARIAHUANCA', 103),
(1023, 'PILCOMAYO', 103),
(1024, 'PUCARA', 103),
(1025, 'QUICHUAY', 103),
(1026, 'QUILCAS', 103),
(1027, 'SAN AGUSTIN', 103),
(1028, 'SAN JERONIMO DE TUNAN', 103),
(1029, 'SA&Ntilde;O', 103),
(1030, 'SAPALLANGA', 103),
(1031, 'SICAYA', 103),
(1032, 'SANTO DOMINGO DE ACOBAMBA', 103),
(1033, 'VIQUES', 103),
(1034, 'CONCEPCION', 104),
(1035, 'ACO', 104),
(1036, 'ANDAMARCA', 104),
(1037, 'CHAMBARA', 104),
(1038, 'COCHAS', 104),
(1039, 'COMAS', 104),
(1040, 'HEROINAS TOLEDO', 104),
(1041, 'MANZANARES', 104),
(1042, 'MARISCAL CASTILLA', 104),
(1043, 'MATAHUASI', 104),
(1044, 'MITO', 104),
(1045, 'NUEVE DE JULIO', 104),
(1046, 'ORCOTUNA', 104),
(1047, 'SAN JOSE DE QUERO', 104),
(1048, 'SANTA ROSA DE OCOPA', 104),
(1049, 'CHANCHAMAYO', 105),
(1050, 'PERENE', 105),
(1051, 'PICHANAQUI', 105),
(1052, 'SAN LUIS DE SHUARO', 105),
(1053, 'SAN RAMON', 105),
(1054, 'VITOC', 105),
(1055, 'JAUJA', 106),
(1056, 'ACOLLA', 106),
(1057, 'APATA', 106),
(1058, 'ATAURA', 106),
(1059, 'CANCHAYLLO', 106),
(1060, 'CURICACA', 106),
(1061, 'EL MANTARO', 106),
(1062, 'HUAMALI', 106),
(1063, 'HUARIPAMPA', 106),
(1064, 'HUERTAS', 106),
(1065, 'JANJAILLO', 106),
(1066, 'JULCAN', 106),
(1067, 'LEONOR ORDO&Ntilde;EZ', 106),
(1068, 'LLOCLLAPAMPA', 106),
(1069, 'MARCO', 106),
(1070, 'MASMA', 106),
(1071, 'MASMA CHICCHE', 106),
(1072, 'MOLINOS', 106),
(1073, 'MONOBAMBA', 106),
(1074, 'MUQUI', 106),
(1075, 'MUQUIYAUYO', 106),
(1076, 'PACA', 106),
(1077, 'PACCHA', 106),
(1078, 'PANCAN', 106),
(1079, 'PARCO', 106),
(1080, 'POMACANCHA', 106),
(1081, 'RICRAN', 106),
(1082, 'SAN LORENZO', 106),
(1083, 'SAN PEDRO DE CHUNAN', 106),
(1084, 'SAUSA', 106),
(1085, 'SINCOS', 106),
(1086, 'TUNAN MARCA', 106),
(1087, 'YAULI', 106),
(1088, 'YAUYOS', 106),
(1089, 'JUNIN', 107),
(1090, 'CARHUAMAYO', 107),
(1091, 'ONDORES', 107),
(1092, 'ULCUMAYO', 107),
(1093, 'SATIPO', 108),
(1094, 'COVIRIALI', 108),
(1095, 'LLAYLLA', 108),
(1096, 'MAZAMARI', 108),
(1097, 'PAMPA HERMOSA', 108),
(1098, 'PANGOA', 108),
(1099, 'RIO NEGRO', 108),
(1100, 'RIO TAMBO', 108),
(1101, 'TARMA', 109),
(1102, 'ACOBAMBA', 109),
(1103, 'HUARICOLCA', 109),
(1104, 'HUASAHUASI', 109),
(1105, 'LA UNION', 109),
(1106, 'PALCA', 109),
(1107, 'PALCAMAYO', 109),
(1108, 'SAN PEDRO DE CAJAS', 109),
(1109, 'TAPO', 109),
(1110, 'LA OROYA', 110),
(1111, 'CHACAPALPA', 110),
(1112, 'HUAY-HUAY', 110),
(1113, 'MARCAPOMACOCHA', 110),
(1114, 'MOROCOCHA', 110),
(1115, 'PACCHA', 110),
(1116, 'SANTA BARBARA DE CARHUACAYAN', 110),
(1117, 'SANTA ROSA DE SACCO', 110),
(1118, 'SUITUCANCHA', 110),
(1119, 'YAULI', 110),
(1120, 'CHUPACA', 111),
(1121, 'AHUAC', 111),
(1122, 'CHONGOS BAJO', 111),
(1123, 'HUACHAC', 111),
(1124, 'HUAMANCACA CHICO', 111),
(1125, 'SAN JUAN DE ISCOS', 111),
(1126, 'SAN JUAN DE JARPA', 111),
(1127, 'TRES DE DICIEMBRE', 111),
(1128, 'YANACANCHA', 111),
(1129, 'TRUJILLO', 112),
(1130, 'EL PORVENIR', 112),
(1131, 'FLORENCIA DE MORA', 112),
(1132, 'HUANCHACO', 112),
(1133, 'LA ESPERANZA', 112),
(1134, 'LAREDO', 112),
(1135, 'MOCHE', 112),
(1136, 'POROTO', 112),
(1137, 'SALAVERRY', 112),
(1138, 'SIMBAL', 112),
(1139, 'VICTOR LARCO HERRERA', 112),
(1140, 'ASCOPE', 113),
(1141, 'CHICAMA', 113),
(1142, 'CHOCOPE', 113),
(1143, 'MAGDALENA DE CAO', 113),
(1144, 'PAIJAN', 113),
(1145, 'RAZURI', 113),
(1146, 'SANTIAGO DE CAO', 113),
(1147, 'CASA GRANDE', 113),
(1148, 'BOLIVAR', 114),
(1149, 'BAMBAMARCA', 114),
(1150, 'CONDORMARCA', 114),
(1151, 'LONGOTEA', 114),
(1152, 'UCHUMARCA', 114),
(1153, 'UCUNCHA', 114),
(1154, 'CHEPEN', 115),
(1155, 'PACANGA', 115),
(1156, 'PUEBLO NUEVO', 115),
(1157, 'JULCAN', 116),
(1158, 'CALAMARCA', 116),
(1159, 'CARABAMBA', 116),
(1160, 'HUASO', 116),
(1161, 'OTUZCO', 117),
(1162, 'AGALLPAMPA', 117),
(1163, 'CHARAT', 117),
(1164, 'HUARANCHAL', 117),
(1165, 'LA CUESTA', 117),
(1166, 'MACHE', 117),
(1167, 'PARANDAY', 117),
(1168, 'SALPO', 117),
(1169, 'SINSICAP', 117),
(1170, 'USQUIL', 117),
(1171, 'SAN PEDRO DE LLOC', 118),
(1172, 'GUADALUPE', 118),
(1173, 'JEQUETEPEQUE', 118),
(1174, 'PACASMAYO', 118),
(1175, 'SAN JOSE', 118),
(1176, 'TAYABAMBA', 119),
(1177, 'BULDIBUYO', 119),
(1178, 'CHILLIA', 119),
(1179, 'HUANCASPATA', 119),
(1180, 'HUAYLILLAS', 119),
(1181, 'HUAYO', 119),
(1182, 'ONGON', 119),
(1183, 'PARCOY', 119),
(1184, 'PATAZ', 119),
(1185, 'PIAS', 119),
(1186, 'SANTIAGO DE CHALLAS', 119),
(1187, 'TAURIJA', 119),
(1188, 'URPAY', 119),
(1189, 'HUAMACHUCO', 120),
(1190, 'CHUGAY', 120),
(1191, 'COCHORCO', 120),
(1192, 'CURGOS', 120),
(1193, 'MARCABAL', 120),
(1194, 'SANAGORAN', 120),
(1195, 'SARIN', 120),
(1196, 'SARTIMBAMBA', 120),
(1197, 'SANTIAGO DE CHUCO', 121),
(1198, 'ANGASMARCA', 121),
(1199, 'CACHICADAN', 121),
(1200, 'MOLLEBAMBA', 121),
(1201, 'MOLLEPATA', 121),
(1202, 'QUIRUVILCA', 121),
(1203, 'SANTA CRUZ DE CHUCA', 121),
(1204, 'SITABAMBA', 121),
(1205, 'GRAN CHIMU', 122),
(1206, 'CASCAS', 122),
(1207, 'LUCMA', 122),
(1208, 'MARMOT', 122),
(1209, 'SAYAPULLO', 122),
(1210, 'VIRU', 123),
(1211, 'CHAO', 123),
(1212, 'GUADALUPITO', 123),
(1213, 'CHICLAYO', 124),
(1214, 'CHONGOYAPE', 124),
(1215, 'ETEN', 124),
(1216, 'ETEN PUERTO', 124),
(1217, 'JOSE LEONARDO ORTIZ', 124),
(1218, 'LA VICTORIA', 124),
(1219, 'LAGUNAS', 124),
(1220, 'MONSEFU', 124),
(1221, 'NUEVA ARICA', 124),
(1222, 'OYOTUN', 124),
(1223, 'PICSI', 124),
(1224, 'PIMENTEL', 124),
(1225, 'REQUE', 124),
(1226, 'SANTA ROSA', 124),
(1227, 'SA&Ntilde;A', 124),
(1228, 'CAYALTI', 124),
(1229, 'PATAPO', 124),
(1230, 'POMALCA', 124),
(1231, 'PUCALA', 124),
(1232, 'TUMAN', 124),
(1233, 'FERRE&Ntilde;AFE', 125),
(1234, 'CA&Ntilde;ARIS', 125),
(1235, 'INCAHUASI', 125),
(1236, 'MANUEL ANTONIO MESONES MURO', 125),
(1237, 'PITIPO', 125),
(1238, 'PUEBLO NUEVO', 125),
(1239, 'LAMBAYEQUE', 126),
(1240, 'CHOCHOPE', 126),
(1241, 'ILLIMO', 126),
(1242, 'JAYANCA', 126),
(1243, 'MOCHUMI', 126),
(1244, 'MORROPE', 126),
(1245, 'MOTUPE', 126),
(1246, 'OLMOS', 126),
(1247, 'PACORA', 126),
(1248, 'SALAS', 126),
(1249, 'SAN JOSE', 126),
(1250, 'TUCUME', 126),
(1251, 'LIMA', 127),
(1252, 'ANCON', 127),
(1253, 'ATE', 127),
(1254, 'BARRANCO', 127),
(1255, 'BRE&Ntilde;A', 127),
(1256, 'CARABAYLLO', 127),
(1257, 'CHACLACAYO', 127),
(1258, 'CHORRILLOS', 127),
(1259, 'CIENEGUILLA', 127),
(1260, 'COMAS', 127),
(1261, 'EL AGUSTINO', 127),
(1262, 'INDEPENDENCIA', 127),
(1263, 'JESUS MARIA', 127),
(1264, 'LA MOLINA', 127),
(1265, 'LA VICTORIA', 127),
(1266, 'LINCE', 127),
(1267, 'LOS OLIVOS', 127),
(1268, 'LURIGANCHO', 127),
(1269, 'LURIN', 127),
(1270, 'MAGDALENA DEL MAR', 127),
(1271, 'MAGDALENA VIEJA', 127),
(1272, 'MIRAFLORES', 127),
(1273, 'PACHACAMAC', 127),
(1274, 'PUCUSANA', 127),
(1275, 'PUENTE PIEDRA', 127),
(1276, 'PUNTA HERMOSA', 127),
(1277, 'PUNTA NEGRA', 127),
(1278, 'RIMAC', 127),
(1279, 'SAN BARTOLO', 127),
(1280, 'SAN BORJA', 127),
(1281, 'SAN ISIDRO', 127),
(1282, 'SAN JUAN DE LURIGANCHO', 127),
(1283, 'SAN JUAN DE MIRAFLORES', 127),
(1284, 'SAN LUIS', 127),
(1285, 'SAN MARTIN DE PORRES', 127),
(1286, 'SAN MIGUEL', 127),
(1287, 'SANTA ANITA', 127),
(1288, 'SANTA MARIA DEL MAR', 127),
(1289, 'SANTA ROSA', 127),
(1290, 'SANTIAGO DE SURCO', 127),
(1291, 'SURQUILLO', 127),
(1292, 'VILLA EL SALVADOR', 127),
(1293, 'VILLA MARIA DEL TRIUNFO', 127),
(1294, 'BARRANCA', 128),
(1295, 'PARAMONGA', 128),
(1296, 'PATIVILCA', 128),
(1297, 'SUPE', 128),
(1298, 'SUPE PUERTO', 128),
(1299, 'CAJATAMBO', 129),
(1300, 'COPA', 129),
(1301, 'GORGOR', 129),
(1302, 'HUANCAPON', 129),
(1303, 'MANAS', 129),
(1304, 'CANTA', 130),
(1305, 'ARAHUAY', 130),
(1306, 'HUAMANTANGA', 130),
(1307, 'HUAROS', 130),
(1308, 'LACHAQUI', 130),
(1309, 'SAN BUENAVENTURA', 130),
(1310, 'SANTA ROSA DE QUIVES', 130),
(1311, 'SAN VICENTE DE CA&Ntilde;ETE', 131),
(1312, 'ASIA', 131),
(1313, 'CALANGO', 131),
(1314, 'CERRO AZUL', 131),
(1315, 'CHILCA', 131),
(1316, 'COAYLLO', 131),
(1317, 'IMPERIAL', 131),
(1318, 'LUNAHUANA', 131),
(1319, 'MALA', 131),
(1320, 'NUEVO IMPERIAL', 131),
(1321, 'PACARAN', 131),
(1322, 'QUILMANA', 131),
(1323, 'SAN ANTONIO', 131),
(1324, 'SAN LUIS', 131),
(1325, 'SANTA CRUZ DE FLORES', 131),
(1326, 'ZU&Ntilde;IGA', 131),
(1327, 'HUARAL', 132),
(1328, 'ATAVILLOS ALTO', 132),
(1329, 'ATAVILLOS BAJO', 132),
(1330, 'AUCALLAMA', 132),
(1331, 'CHANCAY', 132),
(1332, 'IHUARI', 132),
(1333, 'LAMPIAN', 132),
(1334, 'PACARAOS', 132),
(1335, 'SAN MIGUEL DE ACOS', 132),
(1336, 'SANTA CRUZ DE ANDAMARCA', 132),
(1337, 'SUMBILCA', 132),
(1338, 'VEINTISIETE DE NOVIEMBRE', 132),
(1339, 'MATUCANA', 133),
(1340, 'ANTIOQUIA', 133),
(1341, 'CALLAHUANCA', 133),
(1342, 'CARAMPOMA', 133),
(1343, 'CHICLA', 133),
(1344, 'CUENCA', 133),
(1345, 'HUACHUPAMPA', 133),
(1346, 'HUANZA', 133),
(1347, 'HUAROCHIRI', 133),
(1348, 'LAHUAYTAMBO', 133),
(1349, 'LANGA', 133),
(1350, 'LARAOS', 133),
(1351, 'MARIATANA', 133),
(1352, 'RICARDO PALMA', 133),
(1353, 'SAN ANDRES DE TUPICOCHA', 133),
(1354, 'SAN ANTONIO', 133),
(1355, 'SAN BARTOLOME', 133),
(1356, 'SAN DAMIAN', 133),
(1357, 'SAN JUAN DE IRIS', 133),
(1358, 'SAN JUAN DE TANTARANCHE', 133),
(1359, 'SAN LORENZO DE QUINTI', 133),
(1360, 'SAN MATEO', 133),
(1361, 'SAN MATEO DE OTAO', 133),
(1362, 'SAN PEDRO DE CASTA', 133),
(1363, 'SAN PEDRO DE HUANCAYRE', 133),
(1364, 'SANGALLAYA', 133),
(1365, 'SANTA CRUZ DE COCACHACRA', 133),
(1366, 'SANTA EULALIA', 133),
(1367, 'SANTIAGO DE ANCHUCAYA', 133),
(1368, 'SANTIAGO DE TUNA', 133),
(1369, 'SANTO DOMINGO DE LOS OLLEROS', 133),
(1370, 'SURCO', 133),
(1371, 'HUACHO', 134),
(1372, 'AMBAR', 134),
(1373, 'CALETA DE CARQUIN', 134),
(1374, 'CHECRAS', 134),
(1375, 'HUALMAY', 134),
(1376, 'HUAURA', 134),
(1377, 'LEONCIO PRADO', 134),
(1378, 'PACCHO', 134),
(1379, 'SANTA LEONOR', 134),
(1380, 'SANTA MARIA', 134),
(1381, 'SAYAN', 134),
(1382, 'VEGUETA', 134),
(1383, 'OYON', 135),
(1384, 'ANDAJES', 135),
(1385, 'CAUJUL', 135),
(1386, 'COCHAMARCA', 135),
(1387, 'NAVAN', 135),
(1388, 'PACHANGARA', 135),
(1389, 'YAUYOS', 136),
(1390, 'ALIS', 136),
(1391, 'AYAUCA', 136),
(1392, 'AYAVIRI', 136),
(1393, 'AZANGARO', 136),
(1394, 'CACRA', 136),
(1395, 'CARANIA', 136),
(1396, 'CATAHUASI', 136),
(1397, 'CHOCOS', 136),
(1398, 'COCHAS', 136),
(1399, 'COLONIA', 136),
(1400, 'HONGOS', 136),
(1401, 'HUAMPARA', 136),
(1402, 'HUANCAYA', 136),
(1403, 'HUANGASCAR', 136),
(1404, 'HUANTAN', 136),
(1405, 'HUA&Ntilde;EC', 136),
(1406, 'LARAOS', 136),
(1407, 'LINCHA', 136),
(1408, 'MADEAN', 136),
(1409, 'MIRAFLORES', 136),
(1410, 'OMAS', 136),
(1411, 'PUTINZA', 136),
(1412, 'QUINCHES', 136),
(1413, 'QUINOCAY', 136),
(1414, 'SAN JOAQUIN', 136),
(1415, 'SAN PEDRO DE PILAS', 136),
(1416, 'TANTA', 136),
(1417, 'TAURIPAMPA', 136),
(1418, 'TOMAS', 136),
(1419, 'TUPE', 136),
(1420, 'VI&Ntilde;AC', 136),
(1421, 'VITIS', 136),
(1422, 'IQUITOS', 137),
(1423, 'ALTO NANAY', 137),
(1424, 'FERNANDO LORES', 137),
(1425, 'INDIANA', 137),
(1426, 'LAS AMAZONAS', 137),
(1427, 'MAZAN', 137),
(1428, 'NAPO', 137),
(1429, 'PUNCHANA', 137),
(1430, 'PUTUMAYO', 137),
(1431, 'TORRES CAUSANA', 137),
(1432, 'BELEN', 137),
(1433, 'SAN JUAN BAUTISTA', 137),
(1434, 'YURIMAGUAS', 138),
(1435, 'BALSAPUERTO', 138),
(1436, 'BARRANCA', 138),
(1437, 'CAHUAPANAS', 138),
(1438, 'JEBEROS', 138),
(1439, 'LAGUNAS', 138),
(1440, 'MANSERICHE', 138),
(1441, 'MORONA', 138),
(1442, 'PASTAZA', 138),
(1443, 'SANTA CRUZ', 138),
(1444, 'TENIENTE CESAR LOPEZ ROJAS', 138),
(1445, 'NAUTA', 139),
(1446, 'PARINARI', 139),
(1447, 'TIGRE', 139),
(1448, 'TROMPETEROS', 139),
(1449, 'URARINAS', 139),
(1450, 'RAMON CASTILLA', 140),
(1451, 'PEBAS', 140),
(1452, 'YAVARI', 140),
(1453, 'SAN PABLO', 140),
(1454, 'REQUENA', 141),
(1455, 'ALTO TAPICHE', 141),
(1456, 'CAPELO', 141),
(1457, 'EMILIO SAN MARTIN', 141),
(1458, 'MAQUIA', 141),
(1459, 'PUINAHUA', 141),
(1460, 'SAQUENA', 141),
(1461, 'SOPLIN', 141),
(1462, 'TAPICHE', 141),
(1463, 'JENARO HERRERA', 141),
(1464, 'YAQUERANA', 141),
(1465, 'CONTAMANA', 142),
(1466, 'INAHUAYA', 142),
(1467, 'PADRE MARQUEZ', 142),
(1468, 'PAMPA HERMOSA', 142),
(1469, 'SARAYACU', 142),
(1470, 'VARGAS GUERRA', 142),
(1471, 'TAMBOPATA', 143),
(1472, 'INAMBARI', 143),
(1473, 'LAS PIEDRAS', 143),
(1474, 'LABERINTO', 143),
(1475, 'MANU', 144),
(1476, 'FITZCARRALD', 144),
(1477, 'MADRE DE DIOS', 144),
(1478, 'HUEPETUHE', 144),
(1479, 'I&Ntilde;APARI', 145),
(1480, 'IBERIA', 145),
(1481, 'TAHUAMANU', 145),
(1482, 'MOQUEGUA', 146),
(1483, 'CARUMAS', 146),
(1484, 'CUCHUMBAYA', 146),
(1485, 'SAMEGUA', 146),
(1486, 'SAN CRISTOBAL', 146),
(1487, 'TORATA', 146),
(1488, 'OMATE', 147),
(1489, 'CHOJATA', 147),
(1490, 'COALAQUE', 147),
(1491, 'ICHU&Ntilde;A', 147),
(1492, 'LA CAPILLA', 147),
(1493, 'LLOQUE', 147),
(1494, 'MATALAQUE', 147),
(1495, 'PUQUINA', 147),
(1496, 'QUINISTAQUILLAS', 147),
(1497, 'UBINAS', 147),
(1498, 'YUNGA', 147),
(1499, 'ILO', 148),
(1500, 'EL ALGARROBAL', 148),
(1501, 'PACOCHA', 148),
(1502, 'CHAUPIMARCA', 149),
(1503, 'HUACHON', 149),
(1504, 'HUARIACA', 149),
(1505, 'HUAYLLAY', 149),
(1506, 'NINACACA', 149),
(1507, 'PALLANCHACRA', 149),
(1508, 'PAUCARTAMBO', 149),
(1509, 'SAN FCO.DE ASIS DE YARUSYACAN', 149),
(1510, 'SIMON BOLIVAR', 149),
(1511, 'TICLACAYAN', 149),
(1512, 'TINYAHUARCO', 149),
(1513, 'VICCO', 149),
(1514, 'YANACANCHA', 149),
(1515, 'YANAHUANCA', 150),
(1516, 'CHACAYAN', 150),
(1517, 'GOYLLARISQUIZGA', 150),
(1518, 'PAUCAR', 150),
(1519, 'SAN PEDRO DE PILLAO', 150),
(1520, 'SANTA ANA DE TUSI', 150),
(1521, 'TAPUC', 150),
(1522, 'VILCABAMBA', 150),
(1523, 'OXAPAMPA', 151),
(1524, 'CHONTABAMBA', 151),
(1525, 'HUANCABAMBA', 151),
(1526, 'PALCAZU', 151),
(1527, 'POZUZO', 151),
(1528, 'PUERTO BERMUDEZ', 151),
(1529, 'VILLA RICA', 151),
(1530, 'PIURA', 152),
(1531, 'CASTILLA', 152),
(1532, 'CATACAOS', 152),
(1533, 'CURA MORI', 152),
(1534, 'EL TALLAN', 152),
(1535, 'LA ARENA', 152),
(1536, 'LA UNION', 152),
(1537, 'LAS LOMAS', 152),
(1538, 'TAMBO GRANDE', 152),
(1539, 'AYABACA', 153),
(1540, 'FRIAS', 153),
(1541, 'JILILI', 153),
(1542, 'LAGUNAS', 153),
(1543, 'MONTERO', 153),
(1544, 'PACAIPAMPA', 153),
(1545, 'PAIMAS', 153),
(1546, 'SAPILLICA', 153),
(1547, 'SICCHEZ', 153),
(1548, 'SUYO', 153),
(1549, 'HUANCABAMBA', 154),
(1550, 'CANCHAQUE', 154),
(1551, 'EL CARMEN DE LA FRONTERA', 154),
(1552, 'HUARMACA', 154),
(1553, 'LALAQUIZ', 154),
(1554, 'SAN MIGUEL DE EL FAIQUE', 154),
(1555, 'SONDOR', 154),
(1556, 'SONDORILLO', 154),
(1557, 'CHULUCANAS', 155),
(1558, 'BUENOS AIRES', 155),
(1559, 'CHALACO', 155),
(1560, 'LA MATANZA', 155),
(1561, 'MORROPON', 155),
(1562, 'SALITRAL', 155),
(1563, 'SAN JUAN DE BIGOTE', 155),
(1564, 'SANTA CATALINA DE MOSSA', 155),
(1565, 'SANTO DOMINGO', 155),
(1566, 'YAMANGO', 155),
(1567, 'PAITA', 156),
(1568, 'AMOTAPE', 156),
(1569, 'ARENAL', 156),
(1570, 'COLAN', 156),
(1571, 'LA HUACA', 156),
(1572, 'TAMARINDO', 156),
(1573, 'VICHAYAL', 156),
(1574, 'SULLANA', 157),
(1575, 'BELLAVISTA', 157),
(1576, 'IGNACIO ESCUDERO', 157),
(1577, 'LANCONES', 157),
(1578, 'MARCAVELICA', 157),
(1579, 'MIGUEL CHECA', 157),
(1580, 'QUERECOTILLO', 157),
(1581, 'SALITRAL', 157),
(1582, 'PARI&Ntilde;AS', 158),
(1583, 'EL ALTO', 158),
(1584, 'LA BREA', 158),
(1585, 'LOBITOS', 158),
(1586, 'LOS ORGANOS', 158),
(1587, 'MANCORA', 158),
(1588, 'SECHURA', 159),
(1589, 'BELLAVISTA DE LA UNION', 159),
(1590, 'BERNAL', 159),
(1591, 'CRISTO NOS VALGA', 159),
(1592, 'VICE', 159),
(1593, 'RINCONADA LLICUAR', 159),
(1594, 'PUNO', 160),
(1595, 'ACORA', 160),
(1596, 'AMANTANI', 160),
(1597, 'ATUNCOLLA', 160),
(1598, 'CAPACHICA', 160),
(1599, 'CHUCUITO', 160),
(1600, 'COATA', 160),
(1601, 'HUATA', 160),
(1602, 'MA&Ntilde;AZO', 160),
(1603, 'PAUCARCOLLA', 160),
(1604, 'PICHACANI', 160),
(1605, 'PLATERIA', 160),
(1606, 'SAN ANTONIO', 160),
(1607, 'TIQUILLACA', 160),
(1608, 'VILQUE', 160),
(1609, 'AZANGARO', 161),
(1610, 'ACHAYA', 161),
(1611, 'ARAPA', 161),
(1612, 'ASILLO', 161),
(1613, 'CAMINACA', 161),
(1614, 'CHUPA', 161),
(1615, 'JOSE DOMINGO CHOQUEHUANCA', 161),
(1616, 'MU&Ntilde;ANI', 161),
(1617, 'POTONI', 161),
(1618, 'SAMAN', 161),
(1619, 'SAN ANTON', 161),
(1620, 'SAN JOSE', 161),
(1621, 'SAN JUAN DE SALINAS', 161),
(1622, 'SANTIAGO DE PUPUJA', 161),
(1623, 'TIRAPATA', 161),
(1624, 'MACUSANI', 162),
(1625, 'AJOYANI', 162),
(1626, 'AYAPATA', 162),
(1627, 'COASA', 162),
(1628, 'CORANI', 162),
(1629, 'CRUCERO', 162),
(1630, 'ITUATA', 162),
(1631, 'OLLACHEA', 162),
(1632, 'SAN GABAN', 162),
(1633, 'USICAYOS', 162),
(1634, 'JULI', 163),
(1635, 'DESAGUADERO', 163),
(1636, 'HUACULLANI', 163),
(1637, 'KELLUYO', 163),
(1638, 'PISACOMA', 163),
(1639, 'POMATA', 163),
(1640, 'ZEPITA', 163),
(1641, 'ILAVE', 164),
(1642, 'CAPAZO', 164),
(1643, 'PILCUYO', 164),
(1644, 'SANTA ROSA', 164),
(1645, 'CONDURIRI', 164),
(1646, 'HUANCANE', 165),
(1647, 'COJATA', 165),
(1648, 'HUATASANI', 165),
(1649, 'INCHUPALLA', 165),
(1650, 'PUSI', 165),
(1651, 'ROSASPATA', 165),
(1652, 'TARACO', 165),
(1653, 'VILQUE CHICO', 165),
(1654, 'LAMPA', 166),
(1655, 'CABANILLA', 166),
(1656, 'CALAPUJA', 166),
(1657, 'NICASIO', 166),
(1658, 'OCUVIRI', 166),
(1659, 'PALCA', 166),
(1660, 'PARATIA', 166),
(1661, 'PUCARA', 166),
(1662, 'SANTA LUCIA', 166),
(1663, 'VILAVILA', 166),
(1664, 'AYAVIRI', 167),
(1665, 'ANTAUTA', 167),
(1666, 'CUPI', 167),
(1667, 'LLALLI', 167),
(1668, 'MACARI', 167),
(1669, 'NU&Ntilde;OA', 167),
(1670, 'ORURILLO', 167),
(1671, 'SANTA ROSA', 167),
(1672, 'UMACHIRI', 167),
(1673, 'MOHO', 168),
(1674, 'CONIMA', 168),
(1675, 'HUAYRAPATA', 168),
(1676, 'TILALI', 168),
(1677, 'PUTINA', 169),
(1678, 'ANANEA', 169),
(1679, 'PEDRO VILCA APAZA', 169),
(1680, 'QUILCAPUNCU', 169),
(1681, 'SINA', 169),
(1682, 'JULIACA', 170),
(1683, 'CABANA', 170),
(1684, 'CABANILLAS', 170),
(1685, 'CARACOTO', 170),
(1686, 'SANDIA', 171),
(1687, 'CUYOCUYO', 171),
(1688, 'LIMBANI', 171),
(1689, 'PATAMBUCO', 171),
(1690, 'PHARA', 171),
(1691, 'QUIACA', 171),
(1692, 'SAN JUAN DEL ORO', 171),
(1693, 'YANAHUAYA', 171),
(1694, 'ALTO INAMBARI', 171),
(1695, 'YUNGUYO', 172),
(1696, 'ANAPIA', 172),
(1697, 'COPANI', 172),
(1698, 'CUTURAPI', 172),
(1699, 'OLLARAYA', 172),
(1700, 'TINICACHI', 172),
(1701, 'UNICACHI', 172),
(1702, 'MOYOBAMBA', 173),
(1703, 'CALZADA', 173),
(1704, 'HABANA', 173),
(1705, 'JEPELACIO', 173),
(1706, 'SORITOR', 173),
(1707, 'YANTALO', 173),
(1708, 'BELLAVISTA', 174),
(1709, 'ALTO BIAVO', 174),
(1710, 'BAJO BIAVO', 174),
(1711, 'HUALLAGA', 174),
(1712, 'SAN PABLO', 174),
(1713, 'SAN RAFAEL', 174),
(1714, 'SAN JOSE DE SISA', 175),
(1715, 'AGUA BLANCA', 175),
(1716, 'SAN MARTIN', 175),
(1717, 'SANTA ROSA', 175),
(1718, 'SHATOJA', 175),
(1719, 'SAPOSOA', 176),
(1720, 'ALTO SAPOSOA', 176),
(1721, 'EL ESLABON', 176),
(1722, 'PISCOYACU', 176),
(1723, 'SACANCHE', 176),
(1724, 'TINGO DE SAPOSOA', 176),
(1725, 'LAMAS', 177),
(1726, 'ALONSO DE ALVARADO', 177),
(1727, 'BARRANQUITA', 177),
(1728, 'CAYNARACHI', 177),
(1729, 'CU&Ntilde;UMBUQUI', 177),
(1730, 'PINTO RECODO', 177),
(1731, 'RUMISAPA', 177),
(1732, 'SAN ROQUE DE CUMBAZA', 177),
(1733, 'SHANAO', 177),
(1734, 'TABALOSOS', 177),
(1735, 'ZAPATERO', 177),
(1736, 'JUANJUI', 178),
(1737, 'CAMPANILLA', 178),
(1738, 'HUICUNGO', 178),
(1739, 'PACHIZA', 178),
(1740, 'PAJARILLO', 178),
(1741, 'PICOTA', 179),
(1742, 'BUENOS AIRES', 179),
(1743, 'CASPISAPA', 179),
(1744, 'PILLUANA', 179),
(1745, 'PUCACACA', 179),
(1746, 'SAN CRISTOBAL', 179),
(1747, 'SAN HILARION', 179),
(1748, 'SHAMBOYACU', 179),
(1749, 'TINGO DE PONASA', 179),
(1750, 'TRES UNIDOS', 179),
(1751, 'RIOJA', 180),
(1752, 'AWAJUN', 180),
(1753, 'ELIAS SOPLIN VARGAS', 180),
(1754, 'NUEVA CAJAMARCA', 180),
(1755, 'PARDO MIGUEL', 180),
(1756, 'POSIC', 180),
(1757, 'SAN FERNANDO', 180),
(1758, 'YORONGOS', 180),
(1759, 'YURACYACU', 180),
(1760, 'TARAPOTO', 181),
(1761, 'ALBERTO LEVEAU', 181),
(1762, 'CACATACHI', 181),
(1763, 'CHAZUTA', 181),
(1764, 'CHIPURANA', 181),
(1765, 'EL PORVENIR', 181),
(1766, 'HUIMBAYOC', 181),
(1767, 'JUAN GUERRA', 181),
(1768, 'LA BANDA DE SHILCAYO', 181),
(1769, 'MORALES', 181),
(1770, 'PAPAPLAYA', 181),
(1771, 'SAN ANTONIO', 181),
(1772, 'SAUCE', 181),
(1773, 'SHAPAJA', 181),
(1774, 'TOCACHE', 182),
(1775, 'NUEVO PROGRESO', 182),
(1776, 'POLVORA', 182),
(1777, 'SHUNTE', 182),
(1778, 'UCHIZA', 182),
(1779, 'TACNA', 183),
(1780, 'ALTO DE LA ALIANZA', 183),
(1781, 'CALANA', 183),
(1782, 'CIUDAD NUEVA', 183),
(1783, 'INCLAN', 183),
(1784, 'PACHIA', 183),
(1785, 'PALCA', 183),
(1786, 'POCOLLAY', 183),
(1787, 'SAMA', 183),
(1788, 'CORONEL GREGORIO ALBARRACIN LANCHIPA', 183),
(1789, 'CANDARAVE', 184),
(1790, 'CAIRANI', 184),
(1791, 'CAMILACA', 184),
(1792, 'CURIBAYA', 184),
(1793, 'HUANUARA', 184),
(1794, 'QUILAHUANI', 184),
(1795, 'LOCUMBA', 185),
(1796, 'ILABAYA', 185),
(1797, 'ITE', 185),
(1798, 'TARATA', 186),
(1799, 'CHUCATAMANI', 186),
(1800, 'ESTIQUE', 186),
(1801, 'ESTIQUE-PAMPA', 186),
(1802, 'SITAJARA', 186),
(1803, 'SUSAPAYA', 186),
(1804, 'TARUCACHI', 186),
(1805, 'TICACO', 186),
(1806, 'TUMBES', 187),
(1807, 'CORRALES', 187),
(1808, 'LA CRUZ', 187),
(1809, 'PAMPAS DE HOSPITAL', 187),
(1810, 'SAN JACINTO', 187),
(1811, 'SAN JUAN DE LA VIRGEN', 187),
(1812, 'ZORRITOS', 188),
(1813, 'CASITAS', 188),
(1814, 'ZARUMILLA', 189),
(1815, 'AGUAS VERDES', 189),
(1816, 'MATAPALO', 189),
(1817, 'PAPAYAL', 189),
(1818, 'CALLERIA', 190),
(1819, 'CAMPOVERDE', 190),
(1820, 'IPARIA', 190),
(1821, 'MASISEA', 190),
(1822, 'YARINACOCHA', 190),
(1823, 'NUEVA REQUENA', 190),
(1824, 'RAYMONDI', 191),
(1825, 'SEPAHUA', 191),
(1826, 'TAHUANIA', 191),
(1827, 'YURUA', 191),
(1828, 'PADRE ABAD', 192),
(1829, 'IRAZOLA', 192),
(1830, 'CURIMANA', 192),
(1831, 'PURUS', 193);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubprovincia`
--

CREATE TABLE `ubprovincia` (
  `idProv` int(5) NOT NULL DEFAULT 0,
  `provincia` varchar(50) DEFAULT NULL,
  `idDepa` int(5) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ubprovincia`
--

INSERT INTO `ubprovincia` (`idProv`, `provincia`, `idDepa`) VALUES
(1, 'CHACHAPOYAS ', 1),
(2, 'BAGUA', 1),
(3, 'BONGARA', 1),
(4, 'CONDORCANQUI', 1),
(5, 'LUYA', 1),
(6, 'RODRIGUEZ DE MENDOZA', 1),
(7, 'UTCUBAMBA', 1),
(8, 'HUARAZ', 2),
(9, 'AIJA', 2),
(10, 'ANTONIO RAYMONDI', 2),
(11, 'ASUNCION', 2),
(12, 'BOLOGNESI', 2),
(13, 'CARHUAZ', 2),
(14, 'CARLOS FERMIN FITZCARRALD', 2),
(15, 'CASMA', 2),
(16, 'CORONGO', 2),
(17, 'HUARI', 2),
(18, 'HUARMEY', 2),
(19, 'HUAYLAS', 2),
(20, 'MARISCAL LUZURIAGA', 2),
(21, 'OCROS', 2),
(22, 'PALLASCA', 2),
(23, 'POMABAMBA', 2),
(24, 'RECUAY', 2),
(25, 'SANTA', 2),
(26, 'SIHUAS', 2),
(27, 'YUNGAY', 2),
(28, 'ABANCAY', 3),
(29, 'ANDAHUAYLAS', 3),
(30, 'ANTABAMBA', 3),
(31, 'AYMARAES', 3),
(32, 'COTABAMBAS', 3),
(33, 'CHINCHEROS', 3),
(34, 'GRAU', 3),
(35, 'AREQUIPA', 4),
(36, 'CAMANA', 4),
(37, 'CARAVELI', 4),
(38, 'CASTILLA', 4),
(39, 'CAYLLOMA', 4),
(40, 'CONDESUYOS', 4),
(41, 'ISLAY', 4),
(42, 'LA UNION', 4),
(43, 'HUAMANGA', 5),
(44, 'CANGALLO', 5),
(45, 'HUANCA SANCOS', 5),
(46, 'HUANTA', 5),
(47, 'LA MAR', 5),
(48, 'LUCANAS', 5),
(49, 'PARINACOCHAS', 5),
(50, 'PAUCAR DEL SARA SARA', 5),
(51, 'SUCRE', 5),
(52, 'VICTOR FAJARDO', 5),
(53, 'VILCAS HUAMAN', 5),
(54, 'CAJAMARCA', 6),
(55, 'CAJABAMBA', 6),
(56, 'CELENDIN', 6),
(57, 'CHOTA ', 6),
(58, 'CONTUMAZA', 6),
(59, 'CUTERVO', 6),
(60, 'HUALGAYOC', 6),
(61, 'JAEN', 6),
(62, 'SAN IGNACIO', 6),
(63, 'SAN MARCOS', 6),
(64, 'SAN PABLO', 6),
(65, 'SANTA CRUZ', 6),
(66, 'CALLAO', 7),
(67, 'CUSCO', 8),
(68, 'ACOMAYO', 8),
(69, 'ANTA', 8),
(70, 'CALCA', 8),
(71, 'CANAS', 8),
(72, 'CANCHIS', 8),
(73, 'CHUMBIVILCAS', 8),
(74, 'ESPINAR', 8),
(75, 'LA CONVENCION', 8),
(76, 'PARURO', 8),
(77, 'PAUCARTAMBO', 8),
(78, 'QUISPICANCHI', 8),
(79, 'URUBAMBA', 8),
(80, 'HUANCAVELICA', 9),
(81, 'ACOBAMBA', 9),
(82, 'ANGARAES', 9),
(83, 'CASTROVIRREYNA', 9),
(84, 'CHURCAMPA', 9),
(85, 'HUAYTARA', 9),
(86, 'TAYACAJA', 9),
(87, 'HUANUCO', 10),
(88, 'AMBO', 10),
(89, 'DOS DE MAYO', 10),
(90, 'HUACAYBAMBA', 10),
(91, 'HUAMALIES', 10),
(92, 'LEONCIO PRADO', 10),
(93, 'MARA&Ntilde;ON', 10),
(94, 'PACHITEA', 10),
(95, 'PUERTO INCA', 10),
(96, 'LAURICOCHA', 10),
(97, 'YAROWILCA', 10),
(98, 'ICA', 11),
(99, 'CHINCHA', 11),
(100, 'NAZCA', 11),
(101, 'PALPA', 11),
(102, 'PISCO', 11),
(103, 'HUANCAYO', 12),
(104, 'CONCEPCION', 12),
(105, 'CHANCHAMAYO', 12),
(106, 'JAUJA', 12),
(107, 'JUNIN', 12),
(108, 'SATIPO', 12),
(109, 'TARMA', 12),
(110, 'YAULI', 12),
(111, 'CHUPACA', 12),
(112, 'TRUJILLO', 13),
(113, 'ASCOPE', 13),
(114, 'BOLIVAR', 13),
(115, 'CHEPEN', 13),
(116, 'JULCAN', 13),
(117, 'OTUZCO', 13),
(118, 'PACASMAYO', 13),
(119, 'PATAZ', 13),
(120, 'SANCHEZ CARRION', 13),
(121, 'SANTIAGO DE CHUCO', 13),
(122, 'GRAN CHIMU', 13),
(123, 'VIRU', 13),
(124, 'CHICLAYO', 14),
(125, 'FERRE&Ntilde;AFE', 14),
(126, 'LAMBAYEQUE', 14),
(127, 'LIMA', 15),
(128, 'BARRANCA', 15),
(129, 'CAJATAMBO', 15),
(130, 'CANTA', 15),
(131, 'CA&Ntilde;ETE', 15),
(132, 'HUARAL', 15),
(133, 'HUAROCHIRI', 15),
(134, 'HUAURA', 15),
(135, 'OYON', 15),
(136, 'YAUYOS', 15),
(137, 'MAYNAS', 16),
(138, 'ALTO AMAZONAS', 16),
(139, 'LORETO', 16),
(140, 'MARISCAL RAMON CASTILLA', 16),
(141, 'REQUENA', 16),
(142, 'UCAYALI', 16),
(143, 'TAMBOPATA', 17),
(144, 'MANU', 17),
(145, 'TAHUAMANU', 17),
(146, 'MARISCAL NIETO', 18),
(147, 'GENERAL SANCHEZ CERRO', 18),
(148, 'ILO', 18),
(149, 'PASCO', 19),
(150, 'DANIEL ALCIDES CARRION', 19),
(151, 'OXAPAMPA', 19),
(152, 'PIURA', 20),
(153, 'AYABACA', 20),
(154, 'HUANCABAMBA', 20),
(155, 'MORROPON', 20),
(156, 'PAITA', 20),
(157, 'SULLANA', 20),
(158, 'TALARA', 20),
(159, 'SECHURA', 20),
(160, 'PUNO', 21),
(161, 'AZANGARO', 21),
(162, 'CARABAYA', 21),
(163, 'CHUCUITO', 21),
(164, 'EL COLLAO', 21),
(165, 'HUANCANE', 21),
(166, 'LAMPA', 21),
(167, 'MELGAR', 21),
(168, 'MOHO', 21),
(169, 'SAN ANTONIO DE PUTINA', 21),
(170, 'SAN ROMAN', 21),
(171, 'SANDIA', 21),
(172, 'YUNGUYO', 21),
(173, 'MOYOBAMBA', 22),
(174, 'BELLAVISTA', 22),
(175, 'EL DORADO', 22),
(176, 'HUALLAGA', 22),
(177, 'LAMAS', 22),
(178, 'MARISCAL CACERES', 22),
(179, 'PICOTA', 22),
(180, 'RIOJA', 22),
(181, 'SAN MARTIN', 22),
(182, 'TOCACHE', 22),
(183, 'TACNA', 23),
(184, 'CANDARAVE', 23),
(185, 'JORGE BASADRE', 23),
(186, 'TARATA', 23),
(187, 'TUMBES', 24),
(188, 'CONTRALMIRANTE VILLAR', 24),
(189, 'ZARUMILLA', 24),
(190, 'CORONEL PORTILLO', 25),
(191, 'ATALAYA', 25),
(192, 'PADRE ABAD', 25),
(193, 'PURUS', 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `usuario` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `apellidos` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nro_documento` char(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cargo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `glosa` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idtipo` char(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ruc` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `razon_social` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registro` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direccion` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ubicacion` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendedor` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contacto` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `condicion_pago` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usu_licencia` decimal(1,0) DEFAULT NULL,
  `idcliente` char(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cabecera_color` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_color` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_dark` decimal(1,0) DEFAULT 0,
  `menu_colapsible` decimal(1,0) DEFAULT 0,
  `cabecera_dark` decimal(1,0) DEFAULT 0,
  `cabecera_fija` decimal(1,0) DEFAULT 1,
  `cabecera_fondo_ocultar` decimal(1,0) DEFAULT 0,
  `footer_dark` decimal(1,0) DEFAULT 0,
  `footer_fija` decimal(1,0) DEFAULT 1,
  `footer_ocultar` decimal(1,0) DEFAULT 0,
  `idempresa` char(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `idestado` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iddocumento` decimal(2,0) DEFAULT NULL,
  `idzona` char(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titulo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cod_alterno` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_codigo_alterno` smallint(6) DEFAULT NULL,
  `apertura_legajo` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NO',
  `url_imagen` varchar(600) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_trabajador` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `situacion_laboral` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `regimen_laboral` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SEXO` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `codigo_pliego` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `validado_reniec` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apellido_paterno` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apellido_materno` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_nacimiento` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado_civil` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apellidos_casada` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cargo` int(11) DEFAULT NULL,
  `email_profesional` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contacto_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `nombre`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `usuario`, `estado`, `apellidos`, `nro_documento`, `cargo`, `avatar`, `telefono`, `glosa`, `idtipo`, `ruc`, `razon_social`, `registro`, `direccion`, `ubicacion`, `vendedor`, `contacto`, `condicion_pago`, `usu_licencia`, `idcliente`, `cabecera_color`, `footer_color`, `menu_dark`, `menu_colapsible`, `cabecera_dark`, `cabecera_fija`, `cabecera_fondo_ocultar`, `footer_dark`, `footer_fija`, `footer_ocultar`, `idempresa`, `idusuario`, `idestado`, `iddocumento`, `idzona`, `titulo`, `cod_alterno`, `id_codigo_alterno`, `apertura_legajo`, `url_imagen`, `area_trabajador`, `situacion_laboral`, `regimen_laboral`, `SEXO`, `codigo_pliego`, `validado_reniec`, `apellido_paterno`, `apellido_materno`, `fecha_nacimiento`, `estado_civil`, `apellidos_casada`, `id_cargo`, `email_profesional`, `contacto_id`) VALUES
(2, 'JORGE', 'leo.pasho@gmail.com', '$2y$10$bOqpgbiwqSrDuTGeVGfOJ.W5PT.aXCGJ4zjIG9d/UuHmeeYBf.5Bu', 'J4HtURLIuIy8IF3q4botnz0XX9Cx7ndirQNDYKnd9uUV6aFaBHHemjmcUkzB', '2021-05-17 07:05:36', NULL, 'leo', '1', 'PAIVA REATEGUI', '45368895', 'PROGRAMADOR', NULL, '965767975', NULL, 'ADM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '#37474f', 'gradient-45deg-purple-deep-orange', '1', '1', '1', '1', '0', '1', '0', '1', 'E01', 2, NULL, '1', NULL, 'Maxcom', NULL, NULL, 'NO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'CLARA ELENA', '------', '$2y$10$3a1FcU88DK5vw3oWvZ2uoe3MWi5n8IpE/ggEQA1Tx9CWAJ7cg2hbC', NULL, '2021-06-25 06:06:17', NULL, '05616571', '1', 'ABARCA FERNANDEZ', '05616571', '1', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR.VICTOR SIFUENTES 607', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'SI', NULL, '1', '1', '1', NULL, '453', 'SI', 'ABARCA', 'FERNANDEZ', '15/04/1971', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(4, 'PERCY', '------', '$2y$10$hr40x02VxgB6czVI/oH7VOxgL15/twJ4CPQP0/v5ZQBkBygkUoS2y', NULL, '2021-06-25 06:06:18', NULL, '05630310', '1', 'ACHO GOMEZ', '05630310', '1', NULL, '943964632', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'AGUIRRE 625', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '1', '1', '1', NULL, '453', 'SI', 'ACHO', 'GOMEZ', '29/12/1976', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(5, 'PERPETUO MARCELINO', '------', '$2y$10$kcUeYaDdQnNYhcoOrL/ezuULL7UbPvPwPnVIICBiDl.gL9bcnTAF.', NULL, '2021-06-25 06:06:18', NULL, '05594230', '1', 'AGUILAR FLORES', '05594230', '3', NULL, '965628563', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE 15 DE AGOSTO 698', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '3', '1', '1', NULL, '453', 'SI', 'AGUILAR', 'FLORES', '06/03/1956', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(6, 'MARIA USVITA', '------', '$2y$10$p82uvMTzdWxraFZUgDkuDOQWWtwNQIOU0SBNye/uF3bdF1Yx0ZLsq', NULL, '2021-06-25 06:06:19', NULL, '16773715', '1', 'ALTAMIRANO SILVA', '16773715', '1', NULL, '945626360', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'DANIEL A. CARRION', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '4', '1', '1', NULL, '453', 'SI', 'ALTAMIRANO', 'SILVA', '21/11/1973', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(7, 'LOURDES JANETT', '------', '$2y$10$Y0VOncSNyu1MkdPOMaWJMeAdXMrr36mVdMuA49q1ZTEtQlm0rf4jy', NULL, '2021-06-25 06:06:19', NULL, '05344971', '1', 'ALVARADO VALDIVIA', '05344971', '4', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, '20 DE AGOSTO MZ-A LT-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '4', '1', '1', NULL, '453', 'SI', 'ALVARADO', 'VALDIVIA', '06/12/1971', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(8, 'ANDRES ADOLFO', '------', '$2y$10$/qfZjcADBO7HucoSaggqX.VUmJJPEVB2wO80Mci.X0GuLRH4ut0Jy', NULL, '2021-06-25 06:06:20', NULL, '09104420', '1', 'ALVAREZ ANTONIO', '09104420', '5', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'PROGRESO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '6', '2', '1', NULL, '453', 'SI', 'ALVAREZ', 'ANTONIO', '19/11/1961', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(9, 'ELIZABETH CONSUELO', '------', '$2y$10$mAkXsklallfZtwFb94ziyOXnYqtpFBH1fHXv4gOG/5v4f1vzZ00Qa', NULL, '2021-06-25 06:06:20', NULL, '05630189', '1', 'AMABLE ARAUJO', '05630189', '5', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'ASENT.H VILLA UNIVERSITARIA PSJ.MUNICHIS MZ.G LT.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '1', '1', '1', NULL, '453', 'SI', 'AMABLE', 'ARAUJO', '18/01/1977', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(10, 'MARIELA', '------', '$2y$10$OU0jGOKdaaMdpu/cn0f25.obD55L4biPYkuHR7V1kSL06TEcCEhhi', NULL, '2021-06-25 06:06:21', NULL, '43035974', '1', 'AMACIFUEN PINEDO', '43035974', '5', NULL, '948635125', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR. FRANCISCO BOLOGNESI 264 C.P.M.09 DE ABRIL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '6', '1', '1', NULL, '453', 'SI', 'AMACIFUEN', 'PINEDO', '05/07/1985', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(11, 'PAQUITA', '------', '$2y$10$fgzhlYl5/6he4NO1l8y4LemI5Muq3j4NU2t88NvJUOeK1LSTAdvPW', NULL, '2021-06-25 06:06:21', NULL, '00930448', '1', 'ANGULO TUESTA', '00930448', '8', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, '08 DE OCTUBRE MZ. I LT. 26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '8', '1', '1', NULL, '453', 'SI', 'ANGULO', 'TUESTA', '15/03/1969', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(12, 'SONIA LUZ', '------', '$2y$10$8KOkoyM6Tov4RRBBkwkK1OJJ50.lbIxel/DY3Ta9l9FtHFmMRK.MK', NULL, '2021-06-25 06:06:21', NULL, '05581286', '1', 'ARAUJO DE BARRUTIA', '05581286', '1', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'AV. A. JAUREGUI 424', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '4', '1', '1', NULL, '453', 'SI', 'ARAUJO', 'DE BARRUTIA', '20/01/1958', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(13, 'DENIZ ALBERTO', '------', '$2y$10$39X2h/WHr/TTCTouSJfmnujN12/DXkDTCSdH2IRzHfxs6ykIFIzqG', NULL, '2021-06-25 06:06:21', NULL, '01129063', '1', 'AREVALO CASTRO', '01129063', '7', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JULIO C RUIZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '8', '1', '1', NULL, '453', 'SI', 'AREVALO', 'CASTRO', '13/10/1975', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(14, 'VIVIANA', '------', '$2y$10$1RKHSEx7cCW4DTw3.DkSJeQlDbAG1mTVoT2xp1qL84QBbknxaA35W', NULL, '2021-06-25 06:06:22', NULL, '42868352', '1', 'AREVALO PINTO', '42868352', '7', NULL, '950011817', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR.SAN PEDRO 152', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '9', '1', '1', NULL, '453', 'SI', 'AREVALO', 'PINTO', '11/07/1984', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(15, 'CAROLA', '------', '$2y$10$GBJOrmXCsbJ7Atb63wRZnu40l4bUJn1Mm3YyeXufei7fVJxfZ5FX6', NULL, '2021-06-25 06:06:22', NULL, '05611475', '1', 'AREVALO TUESTA', '05611475', '1', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR UCAYALI 205', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '6', '1', '1', NULL, '453', 'SI', 'AREVALO', 'TUESTA', '27/12/1967', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(16, 'JOSEFA ANDREA', '------', '$2y$10$.dU.4S3efFGbzS6dpqhSIO3c4UBfkWyBEmA4G/QHh.54chRNPIjs.', NULL, '2021-06-25 06:06:22', NULL, '05589058', '1', 'AREVALO VASQUEZ', '05589058', '1', NULL, '999912651,999912651', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE CONDAMINE 624', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '2', '1', '1', NULL, '453', 'SI', 'AREVALO', 'VASQUEZ', '13/02/1953', 'Viudo', 'SIN DATOS', NULL, NULL, NULL),
(17, 'MANUEL ELIO', '------', '$2y$10$5WtesYeiRxrq7omQBC6nyut3PjJGJ7PEWYEZEuMwrmSDh45yBtv7y', NULL, '2021-06-25 06:06:23', NULL, '05257612', '1', 'ARMAS GUTIERREZ', '05257612', '9', NULL, '965685349', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'D.A. CARRION', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '10', '1', '1', NULL, '453', 'SI', 'ARMAS', 'GUTIERREZ', '21/01/1963', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(18, 'LUIS', '------', '$2y$10$ztR7JSqv6ZhTPcmDLgcZc.xTbVay9OPO6GTImAjrkXmF6vdIiHo/K', NULL, '2021-06-25 06:06:23', NULL, '05598589', '1', 'ASPAJO ASPAJO', '05598589', '1', NULL, '996485380', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR.ZAMORA 218', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '10', '1', '1', NULL, '453', 'SI', 'ASPAJO', 'ASPAJO', '16/08/1959', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(19, 'RENALDO', '------', '$2y$10$TPFP5UWjI2ynInkNusy/zuCy/3iYp7NtSMIkThTYLHyZvvlZLR3T6', NULL, '2021-06-25 06:06:23', NULL, '05388488', '1', 'BARRERA DEL CASTILLO', '05388488', '1', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, '08 DE OCTUBRE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '3', '1', '1', NULL, '453', 'SI', 'BARRERA', 'DEL CASTILLO', '31/08/1960', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(20, 'TEODORA', '------', '$2y$10$wlxeXWqU9.5fozEDc1rl7eHTMCUU8xHisiL8Xd5IUAN5Cp5Bh6TU2', NULL, '2021-06-25 06:06:24', NULL, '15611589', '1', 'BAZAN GOMEZ', '15611589', '10', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE ZAMORA 1122-B', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '12', '1', '1', NULL, '453', 'SI', 'BAZAN', 'GOMEZ', '10/01/1965', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(21, 'PETER JACINTO', '------', '$2y$10$PBN3sNii9qkkSNK/hFzM8eDaRRpL8y9rDcQFBKyISiGAFNQgbl4Hi', NULL, '2021-06-25 06:06:24', NULL, '29675001', '1', 'BENGOA CARDENAS', '29675001', '10', NULL, '962916887', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE LAS AMERICAS 202', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '12', '1', '1', NULL, '453', 'SI', 'BENGOA', 'CARDENAS', '18/08/1963', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(22, 'CARLOS', '------', '$2y$10$25hJBvaImSbjsAy2uGhhXuIVns92njpUVVLsdfyNJNlEHxrPFGIxG', NULL, '2021-06-25 06:06:25', NULL, '29702773', '1', 'CABRERA CUADROS', '29702773', '12', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'LORETO LT1.21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '8', '1', '1', NULL, '453', 'SI', 'CABRERA', 'CUADROS', '09/12/1976', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(23, 'DORIS LLINETH', '------', '$2y$10$rT3uWNL1SPOZgKvRl3VudO7Db/SZjhhw.vF3DkYBfShfygP524uVy', NULL, '2021-06-25 06:06:25', NULL, '41644932', '1', 'CABRERA DAVILA', '41644932', '2', NULL, '952902541', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'LUPUNA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '11', '1', '1', NULL, '453', 'SI', 'CABRERA', 'DAVILA', '09/05/1983', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(24, 'MARYLU', '------', '$2y$10$wrqio7wCLAjsm/SGfamsIOSIkv1HKSSDGlp81/FrMJVmc02b2LnH.', NULL, '2021-06-25 06:06:25', NULL, '05582426', '1', 'CACERES CONCHA', '05582426', '1', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR.CORONEL PORTILLO 731', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '14', '1', '1', NULL, '453', 'SI', 'CACERES', 'CONCHA', '10/10/1962', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(25, 'PEDRO TONY', '------', '$2y$10$jUQyaxZsyLUY7Gn8P9mu5eZk6WxydjrjTSBek2g6qh6wiTcLf3a2u', NULL, '2021-06-25 06:06:25', NULL, '44071117', '1', 'CAMEL VALERO', '44071117', '12', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'COOP. 1 RO. DE MAYO MZ. F LT. 14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '8', '1', '1', NULL, '453', 'SI', 'CAMEL', 'VALERO', '14/06/1984', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(26, 'ANGELICA MARIA', '------', '$2y$10$4YSViXSCzmL0.n0fls8iaOmFNnJNyZzkPF2YI2d5UaeNLfmA75d86', NULL, '2021-06-25 06:06:26', NULL, '05594207', '1', 'CAMUS CALAMPA', '05594207', '7', NULL, '941808086', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE FRANCISCO BOLOGNESI 817', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '1', '1', '1', NULL, '453', 'SI', 'CAMUS', 'CALAMPA', '02/11/1965', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(27, 'GUILLERMO', '------', '$2y$10$Gbo0QDdQth6Sl/biVtDOHeV2NWGwGiLhPEncN8SLnwmsqoDtUUL/O', NULL, '2021-06-25 06:06:26', NULL, '05602022', '1', 'CARIHUASAIRO FLORES', '05602022', '1', NULL, '975688691', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'PORRAS BARNECHEA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '11', '1', '1', NULL, '453', 'SI', 'CARIHUASAIRO', 'FLORES', '11/12/1962', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(28, 'MARIA OFELIA', '------', '$2y$10$7.yT8AErvvYJ8P0khiHFc.F/JarmcSmuXkjzzBbjEvMaZQkO6R/oS', NULL, '2021-06-25 06:06:27', NULL, '22660301', '1', 'CARRASCO APARICIO', '22660301', '14', NULL, '962549034', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE FRANCISCO BOLOGNESI 228', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '1', '2', '1', NULL, '453', 'SI', 'CARRASCO', 'APARICIO', '16/04/1968', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(29, 'VIRGINIA LAURA', '------', '$2y$10$79k0QB4s93I5LcRGdhVJDONL048k1eFxDAfeZVWe/oF88Dnw5hCOe', NULL, '2021-06-25 06:06:27', NULL, '05388746', '1', 'CARRASCO APARICIO', '05388746', '14', NULL, '965637454', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE FRANCISCO BOLOGNESI 228', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '1', '1', '1', NULL, '453', 'SI', 'CARRASCO', 'APARICIO', '07/11/1965', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(30, 'JUANA IRENE', '------', '$2y$10$PISX9sztrWwX0zpqA2xzLu9k9xfHivhT7tl6z2YJX3CUim28X8Lqi', NULL, '2021-06-25 06:06:27', NULL, '05624664', '1', 'CASTERNOQUE TAPAYURI DE ARBILDO', '05624664', '1', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'AV. CIRCUNVALACION 376', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '1', '1', '1', NULL, '453', 'SI', 'CASTERNOQUE', 'TAPAYURI DE ARBILDO', '21/12/1967', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(31, 'LUZ ANGELICA', '------', '$2y$10$rl5cdS5qOWCFV1p5EoNHn.ap.DdxPqZ3R4MXQ3I2COrayyiYwHDRO', NULL, '2021-06-25 06:06:28', NULL, '05592055', '1', 'CASTRO HUANCHO', '05592055', '1', NULL, '952263665', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'PEVAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '9', '1', '1', NULL, '453', 'SI', 'CASTRO', 'HUANCHO', '13/04/1960', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(32, 'CATHERINE', '------', '$2y$10$if0OfePylUvPNB/eLXGJ9OFvFb3sHt5U/pGXdf0mqCcEJlELg8zS2', NULL, '2021-06-25 06:06:28', NULL, '05389666', '1', 'HERNANDEZ VASQUEZ', '05389666', '14', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'MARISCAL CASTILLA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '1', '1', '1', NULL, '453', 'SI', 'HERNANDEZ', 'VASQUEZ', '11/11/1976', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(33, 'ROCIO FABIOLA', '------', '$2y$10$rt9AQr6Tjgf8f4cFmx8eHuX/MoPj6yS5eXnLwsMBWAfMpg2q4K7j6', NULL, '2021-06-25 06:06:28', NULL, '10727208', '1', 'CERVANTES GARNICA DE SANCHEZ', '10727208', '7', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR.ANGAMOS 215', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '8', '1', '1', NULL, '453', 'SI', 'CERVANTES', 'GARNICA DE SANCHEZ', '16/01/1978', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(34, 'PAULINA', '------', '$2y$10$Sv3vSp3wLeVJXAEx9Bb3HO8lOLzgNUvQQi4XGjME8nRC6.pZ70Zs2', NULL, '2021-06-25 06:06:28', NULL, '02449460', '1', 'CESINARRO MENDOZA', '02449460', '14', NULL, '965911167', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'GIRASOLES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '1', '1', '1', NULL, '453', 'SI', 'CESINARRO', 'MENDOZA', '22/10/1977', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(35, 'SEGUNDO JORGE', '------', '$2y$10$BIUNzjfyDL28n6.TS.fdheD2sm6G.d8oqGZo0.qHxrTKGOETBbYfa', NULL, '2021-06-25 06:06:29', NULL, '05580441', '1', 'CHAVEZ TUESTA', '05580441', '16', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'PSJ.JUNIN 121', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '15', '1', '1', NULL, '453', 'SI', 'CHAVEZ', 'TUESTA', '03/05/1958', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(36, 'ARBIN', '------', '$2y$10$vnVRn7544nVUIqQ2NOVqSeTE2Fle2dM6WczDyU1uGgsNZYlZ/pUJe', NULL, '2021-06-25 06:06:29', NULL, '41544351', '1', 'CHINO SANDI', '41544351', '11', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE PROGRESO 305,CALLE PROGRESO 305', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '13', '1', '1', NULL, '453', 'SI', 'CHINO', 'SANDI', '02/02/1982', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(37, 'TELMA', '------', '$2y$10$oxu8ZCWqBNVxp9EihHLz5eCqxxFBjuAxQyfS5VaADfofVfCzY8Qz6', NULL, '2021-06-25 06:06:29', NULL, '05275555', '1', 'CHUMBE PAIMA', '05275555', '7', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE PROGRESO 809', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '8', '1', '1', NULL, '453', 'SI', 'CHUMBE', 'PAIMA', '08/12/1963', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(38, 'GLADYS', '------', '$2y$10$Apv1AHLoom6C5oKcsxfNBOhn/QBS97ZmL77kO9bdTpe/SkXkt/USS', NULL, '2021-06-25 06:06:29', NULL, '05614007', '1', 'CHUMBE PINEDO', '05614007', '16', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'ASENT.H.28 DE JULIO PSJ.EL AGUAJAL S/N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '12', '1', '1', NULL, '453', 'SI', 'CHUMBE', 'PINEDO', '07/07/1970', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(39, 'ROSA ANGELICA', '------', '$2y$10$KYNuSy66kCImrtoeRB1l6eMkVmI6BPtLYgUI4.yCiv3uq6RTtaJcq', NULL, '2021-06-25 06:06:30', NULL, '05614805', '1', 'CONDE GONGORA', '05614805', '3', NULL, '954485625', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE HUALLAGA 624', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '14', '1', '1', NULL, '453', 'SI', 'CONDE', 'GONGORA', '29/08/1962', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(40, 'OLIVIA', '------', '$2y$10$SBS2iZmcS1fiSIPJbXDJjO5wgp8rRyZaFI434v4KXHKot1fooJBvu', NULL, '2021-06-25 06:06:30', NULL, '05614645', '1', 'CORAL VALLES', '05614645', '16', NULL, '965653363', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE 28 DE JULIO 700 A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '13', '1', '1', NULL, '453', 'SI', 'CORAL', 'VALLES', '26/11/1963', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(41, 'CARLOS HUMBERTO', '------', '$2y$10$CjmjyHVug63n/z41iWCRHOYFIC/W3WuVbYdRJJERe4k5JsxWihiYq', NULL, '2021-06-25 06:06:30', NULL, '21481102', '1', 'CORDOVA ASCENCIO', '21481102', '12', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, '15 DE AGOSTO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '4', '1', '1', NULL, '453', 'SI', 'CORDOVA', 'ASCENCIO', '01/07/1974', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(42, 'KATTY LUZ', '------', '$2y$10$fTYHpoM91YkjdztRRxb.2u.NPliZh.X0LRPC.IGv8d.Nb0Wwh7uD6', NULL, '2021-06-25 06:06:31', NULL, '43768127', '1', 'CORDOVA DIAZ', '43768127', '14', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'A. WENINGER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '16', '1', '1', NULL, '453', 'SI', 'CORDOVA', 'DIAZ', '28/08/1986', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(43, 'JOSE WENCESLAO', '------', '$2y$10$Ja9IHcOMD3XtfUVZT5oteOzeRdwKE8//brWTWb3b9IwLVJOyIUoAi', NULL, '2021-06-25 06:06:31', NULL, '21420495', '1', 'CRISOSTOMO AGUILA', '21420495', '18', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR.TACNA 201', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '16', '1', '1', NULL, '453', 'SI', 'CRISOSTOMO', 'AGUILA', '28/09/1963', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(44, 'AYDEE FRANCISCA', '------', '$2y$10$RIM8afbN0BVUQMDD75qete0oF0HhVycOZeTayI.iaD44WIPQyg0MK', NULL, '2021-06-25 06:06:32', NULL, '18018228', '1', 'CRUZ VALDIVIESO', '18018228', '1', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE VICTOR SIFUENTES 546', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '16', '1', '1', NULL, '453', 'SI', 'CRUZ', 'VALDIVIESO', '09/10/1968', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(45, 'LUPE ELENA', '------', '$2y$10$It/XSuNsPH/FKR.QbYfDeue0qYNEQgEM.Mh5QdNXXTwp.XiQt6sla', NULL, '2021-06-25 06:06:32', NULL, '05584280', '1', 'CRUZALEGUI GUZMAN', '05584280', '1', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'AGUIRRE 327', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '5', '1', '1', NULL, '453', 'SI', 'CRUZALEGUI', 'GUZMAN', '21/02/1964', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(46, 'NORA MARINA', '------', '$2y$10$eytSa7LtN5xxzedpebKT2uV7Pokd9A63oAR8y/S7BoOwHQgM0DpIO', NULL, '2021-06-25 06:06:32', NULL, '05613766', '1', 'CULQUI PEREZ', '05613766', '17', NULL, '943622519', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR. FRANCISCO BARDALEZ 810', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '13', '1', '1', NULL, '453', 'SI', 'CULQUI', 'PEREZ', '18/06/1970', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(47, 'BERTHA', '------', '$2y$10$.gEesDCvPXP9bbycEEeAt.a3v/r.G9JMN/.L2BHagcYuP8O/WSvVy', NULL, '2021-06-25 06:06:32', NULL, '05602075', '1', 'CURINUQUI TAPAYURI', '05602075', '11', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE 26 DE JULIO 239', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '1', '1', '1', NULL, '453', 'SI', 'CURINUQUI', 'TAPAYURI', '16/10/1953', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(48, 'LADYS MARIANELLA', '------', '$2y$10$TUxTJpR79fT1PR5mckImbuXA/D4spVWuDYEYEJors75qZsBti0IMa', NULL, '2021-06-25 06:06:33', NULL, '42797244', '1', 'DA SILVA VARGAS', '42797244', '14', NULL, '965814904', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'IQUITOS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '1', '1', '1', NULL, '453', 'SI', 'DA SILVA', 'VARGAS', '03/12/1984', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(49, 'SAMUEL', '------', '$2y$10$/gDC8wXA7LsSh8UzwutaB.A5UJXShdjwJulhnQ.SsHDo0WIwFj88G', NULL, '2021-06-25 06:06:33', NULL, '41232711', '1', 'DAVILA DEL AGUILA', '41232711', '2', NULL, '975116081', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'MOHENA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '5', '1', '1', NULL, '453', 'SI', 'DAVILA', 'DEL AGUILA', '07/03/1982', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(50, 'SEGUNDO FRANCISCO', '------', '$2y$10$08Yx.LnldQ/UWICp7GYfsOkV8b3yOKkpvwN2TGnnCd4H7sPBB/LoO', NULL, '2021-06-25 06:06:34', NULL, '05631200', '1', 'DAVILA DEL AGUILA', '05631200', '1', NULL, '965878731', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE PROGRESO 818', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '11', '1', '1', NULL, '453', 'SI', 'DAVILA', 'DEL AGUILA', '12/09/1974', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(51, 'MANUEL', '------', '$2y$10$qeSRSihSbyLbHM46yXp8a.1OK5CTbYnK5c06WCCzJD5SifOPl.N9y', NULL, '2021-06-25 06:06:34', NULL, '05388409', '1', 'DAVILA RUIZ', '05388409', '11', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'ZAMORA 1122 - B', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '15', '1', '1', NULL, '453', 'SI', 'DAVILA', 'RUIZ', '04/05/1965', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(52, 'REIDELINDA', '------', '$2y$10$TCIxs5Lmsh0i/.9F6gwAB.5fR51/cNDRjLsM4xZAmlQ3WLfkRcM5e', NULL, '2021-06-25 06:06:34', NULL, '01111600', '1', 'DEL AGUILA AREVALO', '01111600', '19', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, '09 DE ABRIL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '1', '1', '1', NULL, '453', 'SI', 'DEL AGUILA', 'AREVALO', '18/01/1967', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(53, 'MARTHA JANETH', '------', '$2y$10$6/aU4.h2LZTACxTq.6c8se7PTez1HUYBcCKOJYjLv4cP.cDgJaJl2', NULL, '2021-06-25 06:06:35', NULL, '05388587', '1', 'DEL AGUILA FLORES', '05388587', '8', NULL, '948071891', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'ARICA 909', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '15', '1', '1', NULL, '453', 'SI', 'DEL AGUILA', 'FLORES', '04/10/1976', 'Divorciado', 'SIN DATOS', NULL, NULL, NULL),
(54, 'SARA MARIA', '------', '$2y$10$ydbYW2U6iVSevcP8xWwYrOJm2RbXHOTjC6RqgSFgi4m1XEQIy4GLe', NULL, '2021-06-25 06:06:35', NULL, '05631694', '1', 'DEL AGUILA INUMA', '05631694', '17', NULL, '973984337', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE TARATA 613', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '19', '1', '1', NULL, '453', 'SI', 'DEL AGUILA', 'INUMA', '28/08/1978', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(55, 'LILIAN', '------', '$2y$10$KIL0ItIiaVcuo3USpxaPFuED6L5J8mFkGjkj/Q32WGyFi45BxnHBy', NULL, '2021-06-25 06:06:35', NULL, '05583492', '1', 'DEL AGUILA LOPEZ', '05583492', '1', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE ZAMORA 318', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '1', '1', '1', NULL, '453', 'SI', 'DEL AGUILA', 'LOPEZ', '27/05/1965', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(56, 'TEOLINDA ANNIE', '------', '$2y$10$bbpj8FgVcyoNBLCL3LMmY.tBL826saUOJKbz./9xS5jPm2bF6CVfO', NULL, '2021-06-25 06:06:35', NULL, '41296557', '1', 'DEL AGUILA RIVAS', '41296557', '7', NULL, '951225168', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'LAS AMERICAS 711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '9', '1', '1', NULL, '453', 'SI', 'DEL AGUILA', 'RIVAS', '18/04/1982', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(57, 'FERNANDO', '------', '$2y$10$h.I5nMVWJjKvroPbey/oluYwo1hVLLejqjewX6/omJgWeKEGYmmpK', NULL, '2021-06-25 06:06:36', NULL, '05593381', '1', 'DEL AGUILA TORREJON', '05593381', '1', NULL, '969548355', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'ANGAMOS 803', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '3', '1', '1', NULL, '453', 'SI', 'DEL AGUILA', 'TORREJON', '31/05/1966', 'Divorciado', 'SIN DATOS', NULL, NULL, NULL),
(58, 'CARMEN', '------', '$2y$10$cFcD2GFQWBAxyxWD2BNjr.Uu5miHqO2jNe07RlkionqLCSFMikvAu', NULL, '2021-06-25 06:06:36', NULL, '05581477', '1', 'DEL AGUILA TORRES', '05581477', '1', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE AGUIRRE 126', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '6', '1', '1', NULL, '453', 'SI', 'DEL AGUILA', 'TORRES', '20/12/1960', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(59, 'DORIS', '------', '$2y$10$2x9CZ4dPOiW6v07bCbiRR..kCp/oMwHc7TI6ui73Z8ovplFYP1h0i', NULL, '2021-06-25 06:06:36', NULL, '41158613', '1', 'DIAZ AGIP', '41158613', '14', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'FONAVI MZ.N LT.14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '1', '1', '1', NULL, '453', 'SI', 'DIAZ', 'AGIP', '19/03/1980', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(60, 'ISABEL', '------', '$2y$10$UfNx2UZ3ULZVttJp6woXxuygKHuZiCmBIieCQPj5jmgkolRs07gVW', NULL, '2021-06-25 06:06:36', NULL, '05617630', '1', 'DIAZ FALCON', '05617630', '1', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CORONEL PORTILLO 321', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '18', '1', '1', NULL, '453', 'SI', 'DIAZ', 'FALCON', '07/10/1966', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(61, 'CARMEN', '------', '$2y$10$AE39H/xqJQ0OiKGxM8GAWuRTZRKP3sCcYQDWjbvzNqKejTM5Bj6Hm', NULL, '2021-06-25 06:06:37', NULL, '05618509', '1', 'DIAZ RODRIGUEZ', '05618509', '2', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'SARGENTO LORES NRO.609', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '7', '1', '1', NULL, '453', 'SI', 'DIAZ', 'RODRIGUEZ', '21/05/1974', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(62, 'ROSA GIOVANNA', '------', '$2y$10$.BSr9XFGKJ7JDGmtim5OAO0kjbycdBAmTKsoE/4mbgKIhEkgA/qcm', NULL, '2021-06-25 06:06:37', NULL, '41415106', '1', 'EFFIO FLORES', '41415106', '7', NULL, '986663795', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE UCAYALY 414 BARRIO MORALILLOS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '2', '1', '1', NULL, '453', 'SI', 'EFFIO', 'FLORES', '18/08/1982', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(63, 'KATIA NATALI', '------', '$2y$10$46iZL/.rwQz29YJja7zrQOpCDhBS2op/tgvEtyPk/PLJC6GzbSxHK', NULL, '2021-06-25 06:06:37', NULL, '15763513', '1', 'ESPADA OLIVARES', '15763513', '14', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JOSE OLAYA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '1', '2', '1', NULL, '453', 'SI', 'ESPADA', 'OLIVARES', '11/11/1977', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(64, 'AMELINA', '------', '$2y$10$fKDEJdUdII55WoNoi2Gj7uSgpW4p3q7Zd72PAe6dzvPzrUP9Fcb6y', NULL, '2021-06-25 06:06:37', NULL, '05580771', '1', 'FACHIN FASABI', '05580771', '2', NULL, '975485661', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE JUAN LUIS IBARRA NRO.302', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '13', '1', '1', NULL, '453', 'SI', 'FACHIN', 'FASABI', '16/09/1956', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(65, 'EDUARDO', '------', '$2y$10$5uc.0TeaZj2tp/4hJ/A5HOMPXYYA9fEoukkH9XVkAT.GRKFXbzvxW', NULL, '2021-06-25 06:06:37', NULL, '05618783', '1', 'FERNANDEZ RIOS', '05618783', '11', NULL, '971230518', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, '15 DE AGOSTO 809', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '13', '3', '1', NULL, '453', 'SI', 'FERNANDEZ', 'RIOS', '26/10/1973', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(66, 'HEBER', '------', '$2y$10$pKuI2gSFaL4ZmJW5z7TS8.HtxRpO9k6ZNHTJJzQEhRGvWClhQG66a', NULL, '2021-06-25 06:06:38', NULL, '05618435', '1', 'FERNANDEZ RIOS', '05618435', '9', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'FCO.BARDALEZ 805', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '20', '1', '1', NULL, '453', 'SI', 'FERNANDEZ', 'RIOS', '03/11/1974', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(67, 'KIMBER ANDREI', '------', '$2y$10$5z3qdZxegRDdsBFRO1gWqOz5KUDuH.PU.s.7QBnMDJREXGrvpLF9y', NULL, '2021-06-25 06:06:38', NULL, '41383741', '1', 'FLORES FLORES', '41383741', '2', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE SARGENTO LORES 828', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '6', '1', '1', NULL, '453', 'SI', 'FLORES', 'FLORES', '29/07/1982', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(68, 'LUCILA', '------', '$2y$10$dXfbUAHrtHfW6jn/0e3mN.1HRFgEEWpgvr7szdIkANb93rml.wKtS', NULL, '2021-06-25 06:06:39', NULL, '42964897', '1', 'FLORES RISCO', '42964897', '2', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE VICTOR SIFUENTES 528', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '7', '1', '1', NULL, '453', 'SI', 'FLORES', 'RISCO', '20/05/1985', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(69, 'ATILIO', '------', '$2y$10$wv3Bz5ZgVsWlpImo1eGlnu4bxbiQVMxDpN/5ZvGx9ZViZ46JvFmqu', NULL, '2021-06-25 06:06:39', NULL, '05617168', '1', 'GARCIA IBERICO', '05617168', '20', NULL, '945548071', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR. LAS AMERICAS 615', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '21', '1', '1', NULL, '453', 'SI', 'GARCIA', 'IBERICO', '22/02/1964', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(70, 'TOMAZA', '------', '$2y$10$Q/eZ5kOpT2YOjYRGJQZU.eKzFOcfII89321niWrE2WBOKwCEmIbWy', NULL, '2021-06-25 06:06:40', NULL, '01119878', '1', 'GARCIA MARIN', '01119878', '21', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'MAYNAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '1', '1', '1', NULL, '453', 'SI', 'GARCIA', 'MARIN', '01/01/1971', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(71, 'ROSMERY', '------', '$2y$10$uU13l1eHK7bh9s79BKcCUuhPGCEFCPBSEa4zlOaP13aNcVVhCeMBW', NULL, '2021-06-25 06:06:40', NULL, '41229830', '1', 'GARCIA TAPAYURI', '41229830', '6', NULL, '998424590', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE JOSE DE SAN MARTIN 104', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '12', '1', '1', NULL, '453', 'SI', 'GARCIA', 'TAPAYURI', '30/12/1980', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(72, 'CARLO MAGNO', '------', '$2y$10$l0BKZb.68o6mg7TB58wxSOIyV6CCNx77cP3UvlQv0mJfkfqOj76Le', NULL, '2021-06-25 06:06:40', NULL, '40970614', '1', 'GAYA BARRERA', '40970614', '21', NULL, '948629881', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'COMERCIO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '3', '1', '1', NULL, '453', 'SI', 'GAYA', 'BARRERA', '31/07/1981', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(73, 'NELLY YVONNE DEL CONSUELO', '------', '$2y$10$m8RnpV5nReLUR57WbtbgXOkZC9Fuf4OrPj4JatsIFUpgMtomFScUe', NULL, '2021-06-25 06:06:41', NULL, '01120248', '1', 'GIMENEZ RUIZ', '01120248', '21', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'LIBERTAD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '1', '1', '1', NULL, '453', 'SI', 'GIMENEZ', 'RUIZ', '24/03/1971', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(74, 'GENI MARLI', '------', '$2y$10$3fDqf2p4hp9VpkY.c3rtXeWQXLEPKlu8OYQA.EPRnT09GE9wI0wxO', NULL, '2021-06-25 06:06:41', NULL, '05596588', '1', 'GOMEZ ACOSTA', '05596588', '8', NULL, '949829946', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE PUTUMAYO 104', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '22', '1', '1', NULL, '453', 'SI', 'GOMEZ', 'ACOSTA', '15/02/1967', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(75, 'REYNA ISABEL', '------', '$2y$10$tQZLP8bqBGiB2ZEbfYnY6.uXZabR12HTNSzJt/OIiLgfQB28j0R7S', NULL, '2021-06-25 06:06:41', NULL, '05387089', '1', 'GOMEZ INUMA', '05387089', '8', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, '15 DE AGOSTO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '12', '1', '1', NULL, '453', 'SI', 'GOMEZ', 'INUMA', '06/01/1974', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(76, 'SONIA', '------', '$2y$10$cHlQJfLu4li1TZbLF6YW7.bRvotnncxjAZMbwMd6XU3cqzF9ACYuS', NULL, '2021-06-25 06:06:41', NULL, '05594666', '1', 'GONZALES ALVARADO', '05594666', '1', NULL, '952906434', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CARRETERA KM.1 1/2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '1', '1', '1', NULL, '453', 'SI', 'GONZALES', 'ALVARADO', '29/04/1962', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(77, 'ANA LUISA', '------', '$2y$10$BrZnSTaBK/hdSNos6PRdyO3CUB.x1KbE1OlAW65WYy.C9p6wh4InO', NULL, '2021-06-25 06:06:42', NULL, '05612636', '1', 'GONZALES AMASIFUEN', '05612636', '1', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'LAS AMERICAS 615', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '23', '1', '1', NULL, '453', 'SI', 'GONZALES', 'AMASIFUEN', '18/09/1969', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(78, 'JORGE', '------', '$2y$10$sCbJrWb45FwaDpHi1rV4keikkkp78frMG2reoJgkddxQGzsR8yrcK', NULL, '2021-06-25 06:06:42', NULL, '05616992', '1', 'GONZALES FALCON', '05616992', '2', NULL, '943270660', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'AGUIRRE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '10', '1', '1', NULL, '453', 'SI', 'GONZALES', 'FALCON', '24/10/1971', 'Viudo', 'SIN DATOS', NULL, NULL, NULL),
(79, 'PHATRICK CROMWELL', '------', '$2y$10$EEkMxKncfsoTCfnoTJWs/OZZSU83hGbJX8/aJtLRb17J9n7IhVQsu', NULL, '2021-06-25 06:06:42', NULL, '05396863', '1', 'GONZALES GONZALES', '05396863', '8', NULL, '989938290', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE 15 DE AGOSTO 825', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '10', '1', '1', NULL, '453', 'SI', 'GONZALES', 'GONZALES', '21/03/1973', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(80, 'RAFAEL', '------', '$2y$10$Piy5/f31C5xNTZ9QPLVJQu8T28fql7MATf6HR7MMEtonxHXJpUEdq', NULL, '2021-06-25 06:06:43', NULL, '05231483', '1', 'GONZALES MENESES', '05231483', '16', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'AV.DEL EJERCITO 1249', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '23', '1', '1', NULL, '453', 'SI', 'GONZALES', 'MENESES', '13/02/1955', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(81, 'EVILA', '------', '$2y$10$l4ap4gBNxXliu9a1GO8H9u.T7K2QUqpg1sC3YerBfHgSh45Xgr7bq', NULL, '2021-06-25 06:06:43', NULL, '05594416', '1', 'GONZALES TORRES DE FARGE', '05594416', '3', NULL, '941996995', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE JUAN PRIMO RUIZ 407-A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '14', '1', '1', NULL, '453', 'SI', 'GONZALES', 'TORRES DE FARGE', '19/07/1960', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(82, 'KAREN', '------', '$2y$10$6I4un3Gkv4sg4zkywYslnuKwyjxosTS.T4kq2L3MJRb43AnMYEnPS', NULL, '2021-06-25 06:06:43', NULL, '42847392', '1', 'GUADALUPE PIZANGO', '42847392', '7', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'GARCILAZO DE LA VEGA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '9', '1', '1', NULL, '453', 'SI', 'GUADALUPE', 'PIZANGO', '09/01/1985', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(83, 'DALIA VIOLETA', '------', '$2y$10$9XdIRLl1wDDiPsrnbt4GgO5lea6JLt.iSbTJTJQ1BF3nDeEllq0NO', NULL, '2021-06-25 06:06:43', NULL, '05588234', '1', 'GUERRA JARAMILLO', '05588234', '1', NULL, '943026420,943026420,943026420', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE SAN MARTIN 434', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '25', '1', '1', NULL, '453', 'SI', 'GUERRA', 'JARAMILLO', '19/11/1960', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(84, 'CESAR', '------', '$2y$10$TQ/8eNrJKDP6uSs5URcnb.OKIhwM2kEzc7//CBDS/v4uo9DwgGp3S', NULL, '2021-06-25 06:06:44', NULL, '42640613', '1', 'GUERRA TORRES', '42640613', '2', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'LOS ANGELES S/N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '6', '1', '1', NULL, '453', 'SI', 'GUERRA', 'TORRES', '17/03/1982', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(85, 'JUAN PABLO', '------', '$2y$10$fyncea4I33rLsriCi4ro4.9woGrIG7NK8wNQ5eARnM.gAYk2kEIbu', NULL, '2021-06-25 06:06:44', NULL, '05617048', '1', 'GUEVARA HUAMAN', '05617048', '11', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'ASENT.H.NATIVIDAD MZ.10 LT.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '26', '1', '1', NULL, '453', 'SI', 'GUEVARA', 'HUAMAN', '09/06/1972', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(86, 'JANIS', '------', '$2y$10$5jHFfybp1VziTuPei9eko.8qs0H/GfGJb4IUVbseKW/y4fm73PITy', NULL, '2021-06-25 06:06:44', NULL, '05582546', '1', 'GUEVARA TORRES', '05582546', '8', NULL, '965639609', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR FRANCISCO BOLOGNESI 101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '5', '1', '1', NULL, '453', 'SI', 'GUEVARA', 'TORRES', '02/04/1964', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(87, 'GIANINA', '------', '$2y$10$GrsQ4hnPNuF9fk5mldT9BuxoFqu/eF3c/BOVsdF78/qmnSit0XiBi', NULL, '2021-06-25 06:06:45', NULL, '05392898', '1', 'HARO SHAPIAMA', '05392898', '7', NULL, '962559868', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'BARRIO MIGUEL IRIZAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '9', '1', '1', NULL, '453', 'SI', 'HARO', 'SHAPIAMA', '06/04/1976', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(88, 'EDGARDO', '------', '$2y$10$zwPsYpkbJJ/ud3tOrs8SG.ZbSpqTeLy5td4784rx9IEfH4ngKGSZC', NULL, '2021-06-25 06:06:45', NULL, '05250045', '1', 'HIDALGO GARCIA', '05250045', '3', NULL, '920058764', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CL.TACNA 727 BARRIO MORALILLO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '22', '1', '1', NULL, '453', 'SI', 'HIDALGO', 'GARCIA', '04/11/1954', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(89, 'ROSITA', '------', '$2y$10$ZUwXrJhcA.gOVophd2VWQesHYk1CCVOvccekLGaqwNlX44VC8j8pi', NULL, '2021-06-25 06:06:45', NULL, '05591754', '1', 'HIDALGO HIDALGO', '05591754', '3', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR CORONEL PORTILLO 707 A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '8', '1', '1', NULL, '453', 'SI', 'HIDALGO', 'HIDALGO', '11/08/1963', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(90, 'CARMEN TEOFILA', '------', '$2y$10$9jdjZYVdAk57jIPd/ZptDeV7weHzB28IEnY0HlQ8fw1HRsYM5NSWi', NULL, '2021-06-25 06:06:45', NULL, '29607921', '1', 'HUARSAYA HANCO DE BENGOA', '29607921', '2', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE LAS AMERICAS 202', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '9', '1', '1', NULL, '453', 'SI', 'HUARSAYA', 'HANCO DE BENGOA', '28/12/1959', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(91, 'ROSA AMELIA', '------', '$2y$10$Z0yIj4qpo9CyB/NrkHNnUeQXJr018c7krqfJguZTahPDvjH6M0AiW', NULL, '2021-06-25 06:06:46', NULL, '29261193', '1', 'HUARSAYA HANCO', '29261193', '23', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'LAS AMERICAS 202', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '1', '1', '1', NULL, '453', 'SI', 'HUARSAYA', 'HANCO', '20/08/1961', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(92, 'ARQUIMEDES', '------', '$2y$10$GZtcgm/PJK3oS7liXInG0OfAXkq95qtFu8sobYEE/NybJflDQqBJK', NULL, '2021-06-25 06:06:46', NULL, '05587239', '1', 'HUAICAMA CURINUQUI', '05587239', '17', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CASERIO TRANCAYACU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '12', '1', '1', NULL, '453', 'SI', 'HUAICAMA', 'CURINUQUI', '10/06/1957', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(93, 'NERINA', '------', '$2y$10$ozsbpBbILfM67.v4aLoQiODezKTZJazUQ7UczYsumEWRVRMU.2ajm', NULL, '2021-06-25 06:06:47', NULL, '05289844', '1', 'HUAYCAMA PIZANGO', '05289844', '17', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE JUAN LUIS IBARRA 422', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '12', '1', '1', NULL, '453', 'SI', 'HUAYCAMA', 'PIZANGO', '25/05/1954', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(94, 'IRMA', '------', '$2y$10$88nb0iE4NldWJpnCWCIkCe7xbtwBNMThebgPH9pW7.9mavooKY3q.', NULL, '2021-06-25 06:06:47', NULL, '05613278', '1', 'INUMA MORAL', '05613278', '8', NULL, '974127098', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR.TACNA 918', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '2', '1', '1', NULL, '453', 'SI', 'INUMA', 'MORAL', '24/07/1969', 'Casado', 'SIN DATOS', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `nombre`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `usuario`, `estado`, `apellidos`, `nro_documento`, `cargo`, `avatar`, `telefono`, `glosa`, `idtipo`, `ruc`, `razon_social`, `registro`, `direccion`, `ubicacion`, `vendedor`, `contacto`, `condicion_pago`, `usu_licencia`, `idcliente`, `cabecera_color`, `footer_color`, `menu_dark`, `menu_colapsible`, `cabecera_dark`, `cabecera_fija`, `cabecera_fondo_ocultar`, `footer_dark`, `footer_fija`, `footer_ocultar`, `idempresa`, `idusuario`, `idestado`, `iddocumento`, `idzona`, `titulo`, `cod_alterno`, `id_codigo_alterno`, `apertura_legajo`, `url_imagen`, `area_trabajador`, `situacion_laboral`, `regimen_laboral`, `SEXO`, `codigo_pliego`, `validado_reniec`, `apellido_paterno`, `apellido_materno`, `fecha_nacimiento`, `estado_civil`, `apellidos_casada`, `id_cargo`, `email_profesional`, `contacto_id`) VALUES
(95, 'JOSE ANSBERTO', '------', '$2y$10$j6C4sgj2zGUQEt167WYmSuN6x035W4FY5Zyh8mIz7HhwaxYpTsJKO', NULL, '2021-06-25 06:06:47', NULL, '05594310', '1', 'INUMA VASQUEZ', '05594310', '16', NULL, '942134782', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE C.PORTILLO 625', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '19', '1', '1', NULL, '453', 'SI', 'INUMA', 'VASQUEZ', '26/02/1956', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(96, 'NELSON', '------', '$2y$10$y.ZzTMBqlfoRFhYV39C2SeM/2SeBCNtWOZduN/cuMCr///PkKJ9dG', NULL, '2021-06-25 06:06:47', NULL, '41995009', '1', 'IZQUIERDO RAMIREZ', '41995009', '14', NULL, '942490770', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'LUPUNA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '1', '1', '1', NULL, '453', 'SI', 'IZQUIERDO', 'RAMIREZ', '16/05/1980', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(97, 'SUSY', '------', '$2y$10$cfivMhjV0GqSKsvdpHM2FetTYy8oxTxMiil6bhbuVJ4ybDdH8g6Ey', NULL, '2021-06-25 06:06:47', NULL, '05363152', '1', 'JESUS PUA', '05363152', '2', NULL, '965695463', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'FRANCISCO BOLOGNESI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '21', '1', '1', NULL, '453', 'SI', 'JESUS', 'PUA', '10/04/1973', 'Casado', 'DE BARRERA', NULL, NULL, NULL),
(98, 'CECILIA KARINA DEL ROCIO', '------', '$2y$10$2m6cDFyR4McWWc1a/.V4kem7LeY7YPrAgvtxD67x3TUKgPZTqVXka', NULL, '2021-06-25 06:06:48', NULL, '05387001', '1', 'JIMENEZ ROJAS', '05387001', '3', NULL, '965097453', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JAUREGUI NRO. 536', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '11', '1', '1', NULL, '453', 'SI', 'JIMENEZ', 'ROJAS', '09/05/1975', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(99, 'ROSA PERPETUA', '------', '$2y$10$U2Oxij6Cl9ks0apssOqgAeMeHFWN2S.VUW33XS531q5cYZv2NMdSO', NULL, '2021-06-25 06:06:48', NULL, '05581973', '1', 'LANARO DE RUIZ', '05581973', '3', NULL, '965999348', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CP CALLEJON DE HUAYLAS 110', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '1', '1', '1', NULL, '453', 'SI', 'LANARO', 'DE RUIZ', '28/09/1959', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(100, 'MARUJA', '------', '$2y$10$sjOprE.9BJnn4RGd/PMcOupfzvBZDXRcNGA3LwSnfHjIKWCDlF91.', NULL, '2021-06-25 06:06:48', NULL, '05585275', '1', 'LINARES CANCINO', '05585275', '1', NULL, '957565912', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE JULIO C.ARANA 460', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '2', '1', '1', NULL, '453', 'SI', 'LINARES', 'CANCINO', '04/12/1961', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(101, 'MANUEL MARIO', '------', '$2y$10$cwS0B4AIaXFvEjoRTIXfwOH5qzSeicizNWp6EUo0EEyWbleQsD0/S', NULL, '2021-06-25 06:06:49', NULL, '05601895', '1', 'LLANOS NOREÑA', '05601895', '4', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR. T. C. LOPEZ 748', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '5', '1', '1', NULL, '453', 'SI', 'LLANOS', 'NOREÑA', '10/05/1963', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(102, 'VICTORIA', '------', '$2y$10$6OcUhhYtisOBwXRrUGZFv.5JsCsf4RrEuzCPnwcbAji8r6ACQpbUi', NULL, '2021-06-25 06:06:49', NULL, '05589575', '1', 'LLOJA SOUZA', '05589575', '3', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE ALFONSO UGARTE 524', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '14', '1', '1', NULL, '453', 'SI', 'LLOJA', 'SOUZA', '25/03/1954', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(103, 'VICTOR HUGO', '------', '$2y$10$jBOZZF6q6TmOsf2TvTTqkOHivMCUFYfFy6XNDCdqD/G9/bG3pqEeq', NULL, '2021-06-25 06:06:49', NULL, '07955179', '1', 'LOCK GOVEA', '07955179', '5', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE UNAP 154-156', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '27', '1', '1', NULL, '453', 'SI', 'LOCK', 'GOVEA', '31/10/1962', 'Divorciado', 'SIN DATOS', NULL, NULL, NULL),
(104, 'BERTHA', '------', '$2y$10$MDjDEOnSRoFKvKX9sJtuKudn9.nSSWD/WCdp8rEBAp28Z6udyzZ8K', NULL, '2021-06-25 06:06:49', NULL, '05582134', '1', 'LOPEZ BERTHA', '05582134', '3', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE 15 DE AGOSTO 900', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '9', '1', '1', NULL, '453', 'SI', 'LOPEZ', 'BERTHA', '12/09/1958', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(105, 'WINTER', '------', '$2y$10$HD5WG0bjGul/OT317dSLHOP.Dx2yqBvtelBa6O48dwpGMNoVyqrfW', NULL, '2021-06-25 06:06:50', NULL, '05583787', '1', 'LOPEZ BERTHA', '05583787', '1', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR.CONDAMINE 104', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '18', '1', '1', NULL, '453', 'SI', 'LOPEZ', 'BERTHA', '17/12/1959', 'Divorciado', 'SIN DATOS', NULL, NULL, NULL),
(106, 'PEDRO', '------', '$2y$10$yfdZ8j4nqaE6nUScp3r5purKI8PyHVIjYEL1j7TWScLAnVXfTdEI.', NULL, '2021-06-25 06:06:50', NULL, '05588177', '1', 'LOPEZ GONZALES', '05588177', '20', NULL, '978084667', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR.28 DE JULIO 219', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '22', '1', '1', NULL, '453', 'SI', 'LOPEZ', 'GONZALES', '06/07/1955', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(107, 'JUAN MANUEL', '------', '$2y$10$FBmqIXyvFzlGoD.Liav1QuDkfmjoTlcG03K77oPh848eyELXvB5ja', NULL, '2021-06-25 06:06:50', NULL, '05594605', '1', 'LOPEZ OJANAMA', '05594605', '1', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR.CONDAMINE 618', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '12', '1', '1', NULL, '453', 'SI', 'LOPEZ', 'OJANAMA', '27/01/1957', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(108, 'SILVIA', '------', '$2y$10$Lw0/LYrbgGCZ9zsIIChiP./NnXMZmsL4lxFDrwPBNw/kSyc7lajbK', NULL, '2021-06-25 06:06:50', NULL, '05614666', '1', 'LOPEZ PEÑA', '05614666', '1', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, '15 DE AGOSTO 712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '8', '1', '1', NULL, '453', 'SI', 'LOPEZ', 'PEÑA', '20/06/1968', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(109, 'EMILIANO DIRCEO', '------', '$2y$10$sNuz.LLmah4XywTSPgL5mO2IZzdbs5Zt1zbXtHYgni6NU1LrKTkCq', NULL, '2021-06-25 06:06:50', NULL, '40055845', '1', 'LOPEZ ROMAN', '40055845', '8', NULL, '965954137', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'TARATA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '19', '1', '1', NULL, '453', 'SI', 'LOPEZ', 'ROMAN', '02/07/1978', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(110, 'YASDINA DEL ROSARIO', '------', '$2y$10$dlHFYlPt2TWssn2oUC8yCeV2enLs2HT7a9hL16wx27r/ywD8KKCyO', NULL, '2021-06-25 06:06:51', NULL, '05580749', '1', 'LUQUE FLORES', '05580749', '1', NULL, '948661048', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE CORONEL PORTILLO 402', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '18', '1', '1', NULL, '453', 'SI', 'LUQUE', 'FLORES', '17/04/1962', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(111, 'ZULEMA', '------', '$2y$10$TcQahA4qxWWbKVhXveZroeTNuHSxRjYbE1AJfEHZx/qDW52v1eBj2', NULL, '2021-06-25 06:06:51', NULL, '05580862', '1', 'MACEDO CORDOVA', '05580862', '3', NULL, '957590910', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'V.DE NIEVES A16 S/N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '4', '1', '1', NULL, '453', 'SI', 'MACEDO', 'CORDOVA', '13/12/1961', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(112, 'CIRILO', '------', '$2y$10$KbE8Q1JCk69JuGCNxHf4gO81FikNRjDbANocOC5HZn3bYbdJc0VTy', NULL, '2021-06-25 06:06:51', NULL, '05581643', '1', 'MACEDO LAVI', '05581643', '20', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE FRANCISCO BARDALEZ 305', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '22', '1', '1', NULL, '453', 'SI', 'MACEDO', 'LAVI', '09/03/1954', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(113, 'MODESTA', '------', '$2y$10$RmKLNoKE38ZllS2h8hudVe0FLe7qcFZ5otySUbmE5RLFC4tAHfBTm', NULL, '2021-06-25 06:06:51', NULL, '05587795', '1', 'MACEDO RENGIFO', '05587795', '1', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'AV.ATANACIO JAUREGUI 623', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '27', '1', '1', NULL, '453', 'SI', 'MACEDO', 'RENGIFO', '13/07/1960', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(114, 'RISTER', '------', '$2y$10$0epJfjIeLXq/4CmR0uyftOrvgnu.Q8haTUcNd7kVbpgMR4NOcNClG', NULL, '2021-06-25 06:06:51', NULL, '05581742', '1', 'MAFALDO DEL AGUILA', '05581742', '1', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR. FRANCISCO BARDALEZ 742', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '5', '1', '1', NULL, '453', 'SI', 'MAFALDO', 'DEL AGUILA', '14/10/1963', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(115, 'LUDITH', '------', '$2y$10$N5MylL9pzMK8bL/uh55Mhu4t5k7YKvzXyjUdYHeUlTFeCtZvempES', NULL, '2021-06-25 06:06:52', NULL, '05612724', '1', 'MARIN PINEDO', '05612724', '17', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'PSJ.TARAPOTO 215', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '12', '1', '1', NULL, '453', 'SI', 'MARIN', 'PINEDO', '17/06/1969', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(116, 'FRANK HENRRY', '------', '$2y$10$vY/1ak1asZ2LuF.xuIUSkuttt08ky1ReHjsbuc2VWFX/SsvRKWag6', NULL, '2021-06-25 06:06:52', NULL, '09734008', '1', 'MATEO BERNAL', '09734008', '5', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, '23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '2', '1', '1', NULL, '453', 'SI', 'MATEO', 'BERNAL', '31/05/1970', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(117, 'NANCY', '------', '$2y$10$fe/zIq1qGFPW2VD/p6mRK.JAvJLAvwOaKCeGGMN5IAQFEJrnPQQDC', NULL, '2021-06-25 06:06:52', NULL, '00953148', '1', 'MENDOZA SOUSA', '00953148', '1', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR.SARGENTO LORES 743', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '6', '1', '1', NULL, '453', 'SI', 'MENDOZA', 'SOUSA', '17/01/1968', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(118, 'JUAN CARLOS', '------', '$2y$10$AjQ0Hp5DX2W7jyEWc18O3O3spqMy5dQOywLnfLDYWdDPJ0Pcl07j2', NULL, '2021-06-25 06:06:52', NULL, '05630415', '1', 'MEZA NAVARRO', '05630415', '8', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'BOLIVAR 417', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '6', '3', '1', NULL, '453', 'SI', 'MEZA', 'NAVARRO', '21/02/1977', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(119, 'LLENSI KARINA', '------', '$2y$10$LeEi9lZ7/lZSzSdgmXbO6usw2XeySnXYPDQaxy.ZyO9njxKV9eJR2', NULL, '2021-06-25 06:06:53', NULL, '05618333', '1', 'MEZA NAVARRO', '05618333', '8', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'BOLIVAR 417', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '7', '1', '1', NULL, '453', 'SI', 'MEZA', 'NAVARRO', '29/11/1974', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(120, 'CARLOS', '------', '$2y$10$nFD4mCtVjNXG.x4oz1Csaug9c0dDagM4d.mL7P9vyk3jpYr8OAmru', NULL, '2021-06-25 06:06:53', NULL, '05616669', '1', 'MORI LOPEZ', '05616669', '1', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'EL ISHPINGO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '14', '1', '1', NULL, '453', 'SI', 'MORI', 'LOPEZ', '24/07/1972', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(121, 'ESTHER', '------', '$2y$10$9GiQvZk2/kEBkfeJb2xTjuIx3wG/NGt8spmipHblt5rfvkWyP.W9e', NULL, '2021-06-25 06:06:53', NULL, '43066938', '1', 'MURAYARI HUAYNACARI', '43066938', '17', NULL, '969500182', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE LA LORETANA 302', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '25', '1', '1', NULL, '453', 'SI', 'MURAYARI', 'HUAYNACARI', '24/11/1972', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(122, 'LAURO', '------', '$2y$10$hk6Kxfb0anCG7IoZ12yUb.Pa3s8zcTJZSCD6p4.TDGLaIVu06Ml.y', NULL, '2021-06-25 06:06:54', NULL, '05592367', '1', 'MURRIETA RENGIFO', '05592367', '3', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR. FRANCISCO BARDALEZ 810', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '13', '1', '1', NULL, '453', 'SI', 'MURRIETA', 'RENGIFO', '01/07/1958', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(123, 'TANIA CLAVEL', '------', '$2y$10$aJNROc2epGaW/0KdFXkxausA0aMV/wmHao5yUjuWvgXlmC7mTfGNC', NULL, '2021-06-25 06:06:54', NULL, '05396077', '1', 'MURRIETA SANDOVAL', '05396077', '24', NULL, '972818383', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'HUALLAGA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '5', '1', '1', NULL, '453', 'SI', 'MURRIETA', 'SANDOVAL', '09/03/1976', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(124, 'PAULINA', '------', '$2y$10$lUT7m31zd0hCweEn0CZLSeUerLTfK8iuDqzr/hD9Q6Z8jaS3aI4wO', NULL, '2021-06-25 06:06:54', NULL, '25516156', '1', 'NAJARRO CASAVERDE', '25516156', '15', NULL, '967985085', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE MARISCAL CASTILLA 410', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '8', '1', '1', NULL, '453', 'SI', 'NAJARRO', 'CASAVERDE', '02/03/1964', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(125, 'LIDIA ESTHER', '------', '$2y$10$4TeS1rKiU7r.d9ELHw6ga..HO.xMcHWqX8hpDlKi4A6qIuk.YYQC2', NULL, '2021-06-25 06:06:55', NULL, '08071929', '1', 'NAVARRO BARDALEZ', '08071929', '23', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR. PROGRESO 310', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '4', '1', '1', NULL, '453', 'SI', 'NAVARRO', 'BARDALEZ', '08/10/1962', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(126, 'ZARELA', '------', '$2y$10$E.jyo868e5fEnK36mIofOO8UpGLBUxLOO5vGkoYwQapGJ2WdWq6bu', NULL, '2021-06-25 06:06:55', NULL, '05388798', '1', 'NAVARRO RAMIREZ DE CHILICAHUA', '05388798', '1', NULL, '998427114', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'PSJ. LAS VIOLETAS 107 BARRIO LAS FLORES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '8', '1', '1', NULL, '453', 'SI', 'NAVARRO', 'RAMIREZ DE CHILICAHUA', '20/03/1960', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(127, 'ISABEL', '------', '$2y$10$6blj4THibqilFD/maJ0MqOH9uDqbO/sYU7rKhjsVWCT0f9kPkoiSa', NULL, '2021-06-25 06:06:56', NULL, '41359643', '1', 'ORTIZ RAMIREZ', '41359643', '8', NULL, '943607945', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CORONEL PORTILLO 1015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '22', '1', '1', NULL, '453', 'SI', 'ORTIZ', 'RAMIREZ', '02/06/1982', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(128, 'ALEXANDER TITO', '------', '$2y$10$meeK.uMRN82ObdEmwWwXAuZKo3Atbrev75rO8.CbAUFbr2jGKicpe', NULL, '2021-06-25 06:06:56', NULL, '32987512', '1', 'PACHECO ROJAS', '32987512', '25', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'MAYNAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '18', '1', '1', NULL, '453', 'SI', 'PACHECO', 'ROJAS', '18/08/1977', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(129, 'MIGUEL', '------', '$2y$10$MqzeMFjo1hKwt9AH9AEqpOuWoHEgHPI.ImXd69glygd2seAWUfDx2', NULL, '2021-06-25 06:06:56', NULL, '05594316', '1', 'PAIMA HUANSI', '05594316', '1', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE PROGRESO 728', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '6', '1', '1', NULL, '453', 'SI', 'PAIMA', 'HUANSI', '26/05/1966', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(130, 'CARMEN ROSA', '------', '$2y$10$3Cegek9amp6aE9PW7PxFOOhnCo5rzE97VYbDPdBcMBPEcBAhl3xOq', NULL, '2021-06-25 06:06:56', NULL, '05389062', '1', 'PAIMA MOZOMBITE', '05389062', '8', NULL, '968037686', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, '26 DE JULIO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '22', '1', '1', NULL, '453', 'SI', 'PAIMA', 'MOZOMBITE', '10/11/1969', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(131, 'PABLO', '------', '$2y$10$cwXlai/87zqMmSriwB0lCeadcThAQdcd7GAL4/VPQP4Y26bajkoNe', NULL, '2021-06-25 06:06:57', NULL, '10805930', '1', 'PAIMA MOZOMBITE', '10805930', '8', NULL, '942139172', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE LIBERTAD 119', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '13', '1', '1', NULL, '453', 'SI', 'PAIMA', 'MOZOMBITE', '26/07/1978', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(132, 'ARLITH', '------', '$2y$10$R9kEBsza2t0KZsVLNGV8..guEVTnK5P3IJ122CE/PuDs6za13ugPO', NULL, '2021-06-25 06:06:57', NULL, '40777541', '1', 'PAIMA SALAS', '40777541', '17', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE JOSE C. MARIATEGUI 319 ASENT. H. SAN JUAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '12', '1', '1', NULL, '453', 'SI', 'PAIMA', 'SALAS', '14/12/1980', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(133, 'MAGALI GISSELA', '------', '$2y$10$/xxAW2vAY0mSeHk26IasgOJDvIGv5cJqlnwhNmBLhErBcdJb8bLSu', NULL, '2021-06-25 06:06:57', NULL, '05387949', '1', 'PAJUELO RODRIGUEZ DE LA VIUDA', '05387949', '8', NULL, '965646170', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE PROGRESO 207', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '22', '1', '1', NULL, '453', 'SI', 'PAJUELO', 'RODRIGUEZ DE LA VIUDA', '28/07/1964', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(134, 'ABEL', '------', '$2y$10$Wv1wCw3PuwODgt9HkROD0uljoXm0X8pEe7dsxhGZ7wnDZJiwLKVZC', NULL, '2021-06-25 06:06:57', NULL, '43941450', '1', 'PAREDES ORDOÑEZ', '43941450', '1', NULL, '933882436', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE SARGENTO LORES 900', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '25', '1', '1', NULL, '453', 'SI', 'PAREDES', 'ORDOÑEZ', '28/10/1986', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(135, 'BLANCA NIEVES', '------', '$2y$10$nMUSbFp.j0hWL3jsYEfz.OD6x61z9cpei6voBWeNev3Ycn5NvexDW', NULL, '2021-06-25 06:06:58', NULL, '43731300', '1', 'PEREZ ALTAMIRANO', '43731300', '2', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'LOS ANGELES S/N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '6', '1', '1', NULL, '453', 'SI', 'PEREZ', 'ALTAMIRANO', '12/03/1986', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(136, 'MIGUEL', '------', '$2y$10$LR/zIGybMQcispM9K/5QK.W29L.484MzRTzvXVGq2vYxJhzGG4Kx.', NULL, '2021-06-25 06:06:58', NULL, '08678621', '1', 'PEREZ LOPEZ', '08678621', '26', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE ALFONSO UGARTE 804', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '7', '1', '1', NULL, '453', 'SI', 'PEREZ', 'LOPEZ', '16/04/1968', 'Divorciado', 'SIN DATOS', NULL, NULL, NULL),
(137, 'JOSE FLAVIO', '------', '$2y$10$dVIjlFis6/tdtIDscLeOeeUnqhD7TdwDQG4T4XasNFiUeDBMJR3MS', NULL, '2021-06-25 06:06:58', NULL, '05582439', '1', 'PEREZ MENDOZA', '05582439', '26', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE CONDAMINE 607', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '26', '1', '1', NULL, '453', 'SI', 'PEREZ', 'MENDOZA', '21/05/1960', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(138, 'ALAN', '------', '$2y$10$75CsjxJEuk7BFpvVibezpevGtvJpsZMe9VrnWF1F26MRD8m4YXB2G', NULL, '2021-06-25 06:06:59', NULL, '42066117', '1', 'PEREZ RAMIREZ', '42066117', '2', NULL, '965913005', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'ALFONSO WENINGER 124', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '14', '1', '1', NULL, '453', 'SI', 'PEREZ', 'RAMIREZ', '19/10/1983', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(139, 'ELSI LUZ', '------', '$2y$10$qnfufoM03OpSSvHeKrz9LuK1BJQHwuX/ydkZXoGy0Q/hHT0P/GlTi', NULL, '2021-06-25 06:06:59', NULL, '05630919', '1', 'PINEDO PEREZ', '05630919', '1', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CRT.YGS-TARAPOTO 4.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '9', '1', '1', NULL, '453', 'SI', 'PINEDO', 'PEREZ', '14/01/1968', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(140, 'ELSA GLORIA', '------', '$2y$10$AWkscdf2qj4J97XRLpfPGebGAgsh0erzV1XRqc062LJEbNaK7KOIq', NULL, '2021-06-25 06:06:59', NULL, '05389652', '1', 'PINEDO TORRES', '05389652', '3', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE JULIO C.ARANA 450', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '6', '1', '1', NULL, '453', 'SI', 'PINEDO', 'TORRES', '10/04/1961', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(141, 'ESTHER', '------', '$2y$10$aVZ41DZ2nuCtZD/BQYttZeOlddUtMWrl0y.yGmXitBCL7oB9R0m8S', NULL, '2021-06-25 06:06:59', NULL, '05584544', '1', 'PUTPAÑI MELENDEZ', '05584544', '1', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'PSJ.RIOJA 118', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '6', '1', '1', NULL, '453', 'SI', 'PUTPAÑI', 'MELENDEZ', '15/04/1965', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(142, 'JORGE LUIS', '------', '$2y$10$i6FJCw0lTNiwRLN1ZoFY1OAoKoyWAywLbkU7JwMnDh2Orq9QIh/RS', NULL, '2021-06-25 06:06:00', NULL, '25764071', '1', 'QUINTANA FLORES', '25764071', '13', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR.SUPE 359 URB.SANTA MARINA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '5', '1', '1', NULL, '453', 'SI', 'QUINTANA', 'FLORES', '07/01/1966', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(143, 'VICTOR MARIO', '------', '$2y$10$zrYOAHF.fFzCLuAC2cKUa.m35V2841U4f7fcbVHOPJ6RIIitXjSOC', NULL, '2021-06-25 06:06:00', NULL, '08537215', '1', 'QUIÑONES MONTENEGRO', '08537215', '23', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE FCO.BOLOGNESI 626', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '28', '1', '1', NULL, '453', 'SI', 'QUIÑONES', 'MONTENEGRO', '12/12/1956', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(144, 'GENARO', '------', '$2y$10$mDCjz5ETlI3YjSKn3bvXouWry7tEgiutcdaKTjp4binZD/7vnt40u', NULL, '2021-06-25 06:06:00', NULL, '05389522', '1', 'RAMIREZ CORDOVA', '05389522', '11', NULL, '958437718', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE MAYNAS 128', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '11', '1', '1', NULL, '453', 'SI', 'RAMIREZ', 'CORDOVA', '06/08/1952', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(145, 'CARO', '------', '$2y$10$2Zgj8K/0dBDEBLozAMkln.si.iph3WiGdUV7A3/2SP82ZDmAFlE52', NULL, '2021-06-25 06:06:00', NULL, '05398590', '1', 'RAMIREZ DIAZ', '05398590', '1', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR.TTE.ZECADA 257', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '6', '1', '1', NULL, '453', 'SI', 'RAMIREZ', 'DIAZ', '29/07/1968', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(146, 'PATRICIA', '------', '$2y$10$048WDK39kH14O/vmrZwP1eFswNSBbQtC2tnRapQu.UecGKdSdkHSG', NULL, '2021-06-25 06:06:01', NULL, '40710748', '1', 'RAMIREZ PANDURO', '40710748', '8', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'ANGAMOS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '8', '1', '1', NULL, '453', 'SI', 'RAMIREZ', 'PANDURO', '19/12/1980', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(147, 'NELIA SARA', '------', '$2y$10$6td9XhhARzpwD5eri4UYyuAujTMHBJLRf90PistUtiXoL2Gke69He', NULL, '2021-06-25 06:06:01', NULL, '01163337', '1', 'RAMIREZ PEREZ', '01163337', '14', NULL, '955992074', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR.JULIO C.ARANA 310', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '16', '1', '1', NULL, '453', 'SI', 'RAMIREZ', 'PEREZ', '10/07/1978', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(148, 'FABRICIA', '------', '$2y$10$FS7.LkUArmKUpMIbJKQVEORoXDh33YWKzatBRxJfOGJZLAvNOX5yK', NULL, '2021-06-25 06:06:01', NULL, '05326629', '1', 'REATEGUI DAVILA DE FLORES', '05326629', '28', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR COMERCIO 740', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '29', '1', '1', NULL, '453', 'SI', 'REATEGUI', 'DAVILA DE FLORES', '16/07/1968', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(149, 'CARO DEL PILAR', '------', '$2y$10$ff.VBWOv3g6Adfwru.cJNevrvauVLmMOVytcMbbpSvzPfxjBsci6.', NULL, '2021-06-25 06:06:01', NULL, '05594043', '1', 'REATEGUI OJITOS', '05594043', '1', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR ANGAMOS 113', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '8', '1', '1', NULL, '453', 'SI', 'REATEGUI', 'OJITOS', '18/09/1964', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(150, 'LETTY', '------', '$2y$10$NmIYciSy8rwlmxdbnYgFGe8V91SH2SNYqV3Rp.sQcwoXk2CLByZTe', NULL, '2021-06-25 06:06:02', NULL, '05630775', '1', 'RENGIFO DEL AGUILA', '05630775', '14', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, '15 DE AGOSTO 705', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '16', '1', '1', NULL, '453', 'SI', 'RENGIFO', 'DEL AGUILA', '27/09/1977', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(151, 'NELLY', '------', '$2y$10$NlRj7yaMtsA3bTJqGwUBn./PuSgvl84TW6l07iSwrSHtb4cvdSt..', NULL, '2021-06-25 06:06:02', NULL, '10012565', '1', 'RENGIFO GARCIA', '10012565', '1', NULL, '965889111', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CAPIRONA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '11', '1', '1', NULL, '453', 'SI', 'RENGIFO', 'GARCIA', '23/03/1971', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(152, 'MARLLORI GOVANNI', '------', '$2y$10$jkviIzV37v8y2QkHiei2du2TTbVX7pCyQ3rOuMr.d2PKVeaHuTXVS', NULL, '2021-06-25 06:06:02', NULL, '44918030', '1', 'RIOJA DIAZ', '44918030', '2', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE ZAMORA 416', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '6', '1', '1', NULL, '453', 'SI', 'RIOJA', 'DIAZ', '21/03/1985', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(153, 'NANCY ENITH', '------', '$2y$10$ecfXI7K2crxbbcerI2QGQulCI5xYm4iG.hP2ek96T58PGgmKE2zRC', NULL, '2021-06-25 06:06:02', NULL, '07167264', '1', 'RIOS RAMIREZ', '07167264', '8', NULL, '966948816', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE CONDAMINE 308A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '25', '1', '1', NULL, '453', 'SI', 'RIOS', 'RAMIREZ', '20/11/1963', 'Divorciado', 'SIN DATOS', NULL, NULL, NULL),
(154, 'SARA', '------', '$2y$10$CxtfmUwHLqduer9txkVbxuy0HKoSV6WHKM/KGD7nUJeDTyjffbce.', NULL, '2021-06-25 06:06:03', NULL, '05588235', '1', 'RODRIGUEZ DE DEL AGUILA', '05588235', '1', NULL, '955884650', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'MARISCAL CACERES 125', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '18', '1', '1', NULL, '453', 'SI', 'RODRIGUEZ', 'DE DEL AGUILA', '01/04/1957', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(155, 'FERNANDO', '------', '$2y$10$3UbVC23zX7Oc1HIGGTgDSOz01tJVedqKfXAlEsmxR6AmQftrQRaji', NULL, '2021-06-25 06:06:03', NULL, '08174877', '1', 'ROJAS RUIZ', '08174877', '5', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE HUARAZ 103 P.JOVEN STA.ROSA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '14', '1', '1', NULL, '453', 'SI', 'ROJAS', 'RUIZ', '09/04/1975', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(156, 'SONIA ISOLINA', '------', '$2y$10$dFpWT1kYwuo9T5GS0at9KOizUSPLql9kwWsERCl/qODv8DRhfxjDC', NULL, '2021-06-25 06:06:03', NULL, '43996849', '1', 'ROJAS SOSA', '43996849', '13', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'ATANASIO JAUREGUI 713-B', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '8', '1', '1', NULL, '453', 'SI', 'ROJAS', 'SOSA', '30/03/1986', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(157, 'JESSICA GRACIELA', '------', '$2y$10$scaufVfKQHkc5VS5/UgnDODzVImqwDwVRb8Aq6TMr1ym.pIXkQYvm', NULL, '2021-06-25 06:06:03', NULL, '40179143', '1', 'ROMERO BARDALES', '40179143', '2', NULL, '972802155', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'ALFONSO UGARTE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '1', '1', '1', NULL, '453', 'SI', 'ROMERO', 'BARDALES', '02/05/1979', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(158, 'ELVIA', '------', '$2y$10$ZGpDr1TfsGh8MsPAyXULOuf1uTHBdNpbNaSP28w1oxs9LQ4zI2zhu', NULL, '2021-06-25 06:06:03', NULL, '05593614', '1', 'RUBIO ESCOBAR', '05593614', '29', NULL, '978943821', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE JOSE RIERA 161', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '20', '1', '1', NULL, '453', 'SI', 'RUBIO', 'ESCOBAR', '04/11/1960', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(159, 'CONSUELO', '------', '$2y$10$RWBkaj9srs9T/3gMcJoVdOXiQmpikTPto/nMM7UrK6Dxjrsbk.PQa', NULL, '2021-06-25 06:06:04', NULL, '05591823', '1', 'RUIZ DE APAGÜEÑO', '05591823', '30', NULL, '988319405', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE ARICA 419', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '18', '1', '1', NULL, '453', 'SI', 'RUIZ', 'DE APAGÜEÑO', '31/03/1955', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(160, 'KAREN', '------', '$2y$10$.aT5MvNnyFD504RqSwzS2OvPB5GHqD2s5h0YD6QhAMkN2HinSIyLu', NULL, '2021-06-25 06:06:04', NULL, '44454452', '1', 'RUIZ FASANANDO', '44454452', '7', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR.SAN MARTIN CD-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '8', '1', '1', NULL, '453', 'SI', 'RUIZ', 'FASANANDO', '15/08/1987', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(161, 'SOFIA', '------', '$2y$10$ltCxSXKes4WVZGB6cznshOUrhMuxYQvlxRRiUp4T9Oi.68kHDVQ7i', NULL, '2021-06-25 06:06:04', NULL, '05596530', '1', 'RUIZ GONZALES', '05596530', '8', NULL, '959574503', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'PASAJE 4 MZ. O LT. 01 CF 4 DE AGOSTO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '9', '1', '1', NULL, '453', 'SI', 'RUIZ', 'GONZALES', '22/12/1966', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(162, 'ROSA ANGELICA', '------', '$2y$10$vBZBLMSa2lSSwGYdMNmI6eBwNlABVyOkP.bC/q2qJi9P4u1vjeZZ.', NULL, '2021-06-25 06:06:04', NULL, '05589607', '1', 'RUIZ GRANDEZ', '05589607', '1', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'PSJ.SUCRE ASENT.H.SAN MARTIN 224', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '1', '1', '1', NULL, '453', 'SI', 'RUIZ', 'GRANDEZ', '01/07/1965', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(163, 'HENRY ALEX', '------', '$2y$10$felChtF15YnxoIdcyutp.uBXbRaAr47/wO19mZZkVV4PUKImZrt7a', NULL, '2021-06-25 06:06:05', NULL, '40916353', '1', 'RUIZ VALLES', '40916353', '1', NULL, '942893783', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE CALLEJON DE HUAYLAS 123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '11', '1', '1', NULL, '453', 'SI', 'RUIZ', 'VALLES', '21/11/1980', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(164, 'BETSI ISOLINA', '------', '$2y$10$1GH/P5Ur3UhSBavzlY3mMeDid88K00eQ3CpJ2qaTRa/q.ak4NSgSO', NULL, '2021-06-25 06:06:05', NULL, '05629430', '1', 'SAAVEDRA CASTERNOQUE', '05629430', '1', NULL, '942627967', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'LAS FLORES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '4', '1', '1', NULL, '453', 'SI', 'SAAVEDRA', 'CASTERNOQUE', '17/11/1967', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(165, 'LUZ ELENA', '------', '$2y$10$mJAcKHj751qoUGcAMOxpVen76esF0/qEfdJIJiO.zbWAFs4Hw8bue', NULL, '2021-06-25 06:06:06', NULL, '42068266', '1', 'SAAVEDRA CORDOVA', '42068266', '7', NULL, '942819763', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR SANTA EUFRACIA 547', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '8', '1', '1', NULL, '453', 'SI', 'SAAVEDRA', 'CORDOVA', '27/10/1983', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(166, 'RAQUEL', '------', '$2y$10$x7nG66j6GN.Uf3gftMk8VeKPmlKRrK9sqN0iQOA48oka5jWzAyGju', NULL, '2021-06-25 06:06:06', NULL, '40726164', '1', 'SAAVEDRA LOPEZ', '40726164', '7', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'MARISCAL CACERES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '8', '1', '1', NULL, '453', 'SI', 'SAAVEDRA', 'LOPEZ', '19/12/1980', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(167, 'SILVIA', '------', '$2y$10$b9ZlroEmTajfs1BmC0fRLOEkwuFAcc9Wgck3kOtv1./SsDNRH/Hyu', NULL, '2021-06-25 06:06:06', NULL, '42445425', '1', 'SAAVEDRA LOPEZ', '42445425', '7', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR. 23 DE MARZO 348', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '6', '1', '1', NULL, '453', 'SI', 'SAAVEDRA', 'LOPEZ', '07/06/1984', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(168, 'BLANCA LUZ', '------', '$2y$10$Ur/bOU.DWWJ55Qp/XyYLWu60iOLGIZC4qOHeEO/3Gh5EvGIGHTIBG', NULL, '2021-06-25 06:06:06', NULL, '05610813', '1', 'SAAVEDRA PANDURO', '05610813', '1', NULL, '957933556', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE ZAMORA 310', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '14', '1', '1', NULL, '453', 'SI', 'SAAVEDRA', 'PANDURO', '10/08/1967', 'Divorciado', 'SIN DATOS', NULL, NULL, NULL),
(169, 'NERIDA', '------', '$2y$10$3qWPvn/5lwX0cB4GF1ixfetn0JXXQ7TEIujMGxh9jmgEBgpzEVlwK', NULL, '2021-06-25 06:06:07', NULL, '05580375', '1', 'SAAVEDRA PANDURO', '05580375', '1', NULL, '975789579', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR.PROGRESO 711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '14', '1', '1', NULL, '453', 'SI', 'SAAVEDRA', 'PANDURO', '24/06/1964', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(170, 'DORIS', '------', '$2y$10$Vcg69GD940CJylzFUgWveu28oUck9QrE7Rw6HL5YMG4480c3WCStC', NULL, '2021-06-25 06:06:07', NULL, '05615201', '1', 'SABOYA SABOYA DE FASABI', '05615201', '1', NULL, '996466211', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'AC. CIRCUNVALACION 253', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '6', '1', '1', NULL, '453', 'SI', 'SABOYA', 'SABOYA DE FASABI', '04/02/1972', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(171, 'ROSA LUZ', '------', '$2y$10$DGFFtneezpqZ8qvDz66hUeao.roAAWES689I6CIu4KuC51JxD5Eba', NULL, '2021-06-25 06:06:07', NULL, '40473701', '1', 'SABOYA SABOYA', '40473701', '1', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE AGUIRRE 402', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '1', '1', '1', NULL, '453', 'SI', 'SABOYA', 'SABOYA', '15/03/1976', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(172, 'ROSA ISABEL', '------', '$2y$10$uhQyzdGjtSTmiil8PgG6nuUY/0mFz6UpkSmEp.B3/tckd0njWga7u', NULL, '2021-06-25 06:06:07', NULL, '42276202', '1', 'SALAS BARTRA', '42276202', '17', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'MARISCAL CASTILLA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '20', '1', '1', NULL, '453', 'SI', 'SALAS', 'BARTRA', '27/05/1981', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(173, 'FRANCISCO VICTOR', '------', '$2y$10$we6Pzpyi8gdatUOXuDoI5.zKt8czfiL9JNL5XSdcwLqCwO1cjeFAe', NULL, '2021-06-25 06:06:08', NULL, '10322707', '1', 'SALAS TARAZONA', '10322707', '5', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'ALFONSO UGARTE MZ\"A\"L10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '27', '1', '1', NULL, '453', 'SI', 'SALAS', 'TARAZONA', '10/10/1962', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(174, 'KETTY', '------', '$2y$10$OnDhTgrLlN2My2FbOphDne6CeFiT.EaC5UfCEGEmvFpI0qJ80Ptau', NULL, '2021-06-25 06:06:08', NULL, '05618758', '1', 'SALAZAR AVIDON', '05618758', '1', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'D. A. CARRION', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '8', '1', '1', NULL, '453', 'SI', 'SALAZAR', 'AVIDON', '16/05/1975', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(175, 'GILMA', '------', '$2y$10$xaFT5i.KniKbEACE3aY7qOVUV5Rtw9KRPIiFVTFTgm9pHnGy2FA6O', NULL, '2021-06-25 06:06:08', NULL, '05613546', '1', 'SALDAÑA DE PANDURO', '05613546', '7', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'MAYNAS 540', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '7', '1', '1', NULL, '453', 'SI', 'SALDAÑA', 'DE PANDURO', '14/02/1960', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(176, 'NATALIA', '------', '$2y$10$KABx8vr5jRvdr/kHtRRXNO6o0fwxUoCdJZBA8kGWL39FzuS2rOT..', NULL, '2021-06-25 06:06:08', NULL, '05614721', '1', 'SALDAÑA GARCIA', '05614721', '8', NULL, '943412949', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE LIBERTAD 721', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '28', '1', '1', NULL, '453', 'SI', 'SALDAÑA', 'GARCIA', '13/05/1972', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(177, 'JUAN', '------', '$2y$10$/.8s1j5FxQHmKl377q1y8.IZVSY6nvdLi2grGik5FXj22G8qhjA86', NULL, '2021-06-25 06:06:09', NULL, '05205435', '1', 'SALDAÑA RODRIGUEZ', '05205435', '11', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE DANIEL ALCIDES CARRION 816', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '13', '1', '1', NULL, '453', 'SI', 'SALDAÑA', 'RODRIGUEZ', '20/02/1962', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(178, 'JAVIER', '------', '$2y$10$svRrqLZ5fjMNwZt160ksMu9vGg1QjdS2tYd7GP7NNkbWuo2sbY942', NULL, '2021-06-25 06:06:09', NULL, '42628332', '1', 'SALVADOR ARAUJO', '42628332', '2', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'INDEPENDENCIA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '8', '1', '1', NULL, '453', 'SI', 'SALVADOR', 'ARAUJO', '02/10/1984', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(179, 'EDWIN', '------', '$2y$10$F17k.ASZ4QuCuyRmrqx6cehdIXF.XmHCzHfk84jN7hpmeiGbESb/i', NULL, '2021-06-25 06:06:09', NULL, '42068079', '1', 'SANCHEZ ESCOBILLA', '42068079', '11', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'PROGRESO 714', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '12', '3', '1', NULL, '453', 'SI', 'SANCHEZ', 'ESCOBILLA', '30/10/1983', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(180, 'DORIS CONSUELO', '------', '$2y$10$FR5K2mrTYI1X1XBqPrhLNuxpMTZ0gbDDlFio28gFKoxHE9NMuG7G.', NULL, '2021-06-25 06:06:10', NULL, '05387738', '1', 'SÁNCHEZ MORI', '05387738', '16', NULL, '999428090,999428090,065353554', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JOSE OLAYA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '22', '1', '1', NULL, '453', 'SI', 'SÁNCHEZ', 'MORI', '05/02/1975', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(181, 'ARMANDO', '------', '$2y$10$N3G2CotffsJYhDUKOo1Qruia3pdomdVddrTHY0cVfE05eRjK9nNPm', NULL, '2021-06-25 06:06:10', NULL, '07871578', '1', 'SANCHEZ TUANAMA', '07871578', '5', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'ANGAMOS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '8', '1', '1', NULL, '453', 'SI', 'SANCHEZ', 'TUANAMA', '08/06/1970', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(182, 'SEGUNDO', '------', '$2y$10$GzNYbq1C2Ams2bHlPpyNIeQneZl8loLjcy6txwvH3f.ehgoBynWXS', NULL, '2021-06-25 06:06:10', NULL, '05583971', '1', 'SHAPIAMA CENEPO', '05583971', '20', NULL, '965631925', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE JOSE C. MARIATEGUI 319-A.H.SAN JUAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '10', '1', '1', NULL, '453', 'SI', 'SHAPIAMA', 'CENEPO', '04/03/1956', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(183, 'GULNARA', '------', '$2y$10$ReaLNq2ezijSaxyxiMRUyezUDTOGjW5HKvTSU9TdkiCEK9Y49WFGS', NULL, '2021-06-25 06:06:11', NULL, '05614535', '1', 'SHARDIN CENEPO', '05614535', '1', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'UCAYALI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '6', '1', '1', NULL, '453', 'SI', 'SHARDIN', 'CENEPO', '19/06/1962', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(184, 'ESTRELLA', '------', '$2y$10$RIhuN8x2Vpq.vu.A94veB.Ew0VmQDajcJ2R16mNNzj1h5hsGls38O', NULL, '2021-06-25 06:06:11', NULL, '05388416', '1', 'SHARDIN FLORES', '05388416', '1', NULL, '965680505', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'ZAMORA 340', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '3', '1', '1', NULL, '453', 'SI', 'SHARDIN', 'FLORES', '23/08/1968', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(185, 'CARMINA', '------', '$2y$10$PFyjjEe18V46mhAVq177ZewyPUeY5ELzk4rBDbXV7fx1shnL22EUy', NULL, '2021-06-25 06:06:11', NULL, '05587043', '1', 'SHUPINGAHUA ALVA', '05587043', '1', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'COMERCIO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '4', '1', '1', NULL, '453', 'SI', 'SHUPINGAHUA', 'ALVA', '29/09/1965', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(186, 'GLORIA PATRICIA', '------', '$2y$10$ilBvzpwkuMkBXer.ptwXV.05DpPpdnmIsKcrlah87P5N5znZJ8Fx2', NULL, '2021-06-25 06:06:11', NULL, '05614062', '1', 'SILVA SIFUENTES', '05614062', '1', NULL, '943110505', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE FRANCISCO BARDALES 450', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '11', '1', '1', NULL, '453', 'SI', 'SILVA', 'SIFUENTES', '23/10/1970', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(187, 'NORMA LUISA', '------', '$2y$10$Y3NHwlZuTRweJd.bb0pagehX22wFfWhY.j1dEOo.P1RhWQPemksXm', NULL, '2021-06-25 06:06:12', NULL, '05588280', '1', 'SILVA SIFUENTES', '05588280', '8', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE TACNA 516', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '8', '2', '1', NULL, '453', 'SI', 'SILVA', 'SIFUENTES', '20/07/1965', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(188, 'MARINA', '------', '$2y$10$uXXjP.xE.wtmaRWkepn0iuSTsM0kxiPzwjejxHANeWwBOzAIwbOOW', NULL, '2021-06-25 06:06:12', NULL, '05630581', '1', 'TANANTA BARTRA', '05630581', '14', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'MIGUEL GRAU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '1', '1', '1', NULL, '453', 'SI', 'TANANTA', 'BARTRA', '05/10/1977', 'Soltero', 'SIN DATOS', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `nombre`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `usuario`, `estado`, `apellidos`, `nro_documento`, `cargo`, `avatar`, `telefono`, `glosa`, `idtipo`, `ruc`, `razon_social`, `registro`, `direccion`, `ubicacion`, `vendedor`, `contacto`, `condicion_pago`, `usu_licencia`, `idcliente`, `cabecera_color`, `footer_color`, `menu_dark`, `menu_colapsible`, `cabecera_dark`, `cabecera_fija`, `cabecera_fondo_ocultar`, `footer_dark`, `footer_fija`, `footer_ocultar`, `idempresa`, `idusuario`, `idestado`, `iddocumento`, `idzona`, `titulo`, `cod_alterno`, `id_codigo_alterno`, `apertura_legajo`, `url_imagen`, `area_trabajador`, `situacion_laboral`, `regimen_laboral`, `SEXO`, `codigo_pliego`, `validado_reniec`, `apellido_paterno`, `apellido_materno`, `fecha_nacimiento`, `estado_civil`, `apellidos_casada`, `id_cargo`, `email_profesional`, `contacto_id`) VALUES
(189, 'DENIS', '------', '$2y$10$xfqeXT39ra8nGFfshKZ4rOZQuzkp6D.uzQ.P8684kFVtZqC91YnGu', NULL, '2021-06-25 06:06:12', NULL, '05388034', '1', 'TANCHIVA AYACHI', '05388034', '11', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE JOSE OLAYA 400 MZ. 20 LT. 01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '13', '1', '1', NULL, '453', 'SI', 'TANCHIVA', 'AYACHI', '31/07/1971', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(190, 'GREISY', '------', '$2y$10$BH5QWtjhlhwYU70gdWBt/e/DYeViyw9Pf8T0dsVBKbKeaC6kA3lSG', NULL, '2021-06-25 06:06:12', NULL, '41814495', '1', 'TANGOA SORIA', '41814495', '2', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'BRASIL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '1', '1', '1', NULL, '453', 'SI', 'TANGOA', 'SORIA', '09/03/1983', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(191, 'JULIO RAUL', '------', '$2y$10$U/Y18Gi6qC/dunlRWateTe35FHwH.ySKmeHib0s5n.oMl/7YPAFrS', NULL, '2021-06-25 06:06:13', NULL, '05594278', '1', 'TELLO PINEDO', '05594278', '17', NULL, '965664813', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'ASENT.H.LA VICTORIA CALLE JUAN IBERICO TORRES 122 MZ.01 LT.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '3', '1', '1', NULL, '453', 'SI', 'TELLO', 'PINEDO', '22/12/1965', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(192, 'IVONNE', '------', '$2y$10$ZG/CEnSpzPhV13C0GB8T/e8TK7DbT9skVjMxf1t8r4nilVwgwS.r2', NULL, '2021-06-25 06:06:13', NULL, '42294000', '1', 'TELLO RENGIFO', '42294000', '2', NULL, '948155584', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE UCAYALI 422', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '6', '1', '1', NULL, '453', 'SI', 'TELLO', 'RENGIFO', '19/01/1983', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(193, 'ROSARIO', '------', '$2y$10$QQ67ao4u3STuwqdeSxTZyO8HVZY.jYtaNmQJZLCwuXbMLfaCywhKS', NULL, '2021-06-25 06:06:13', NULL, '05614665', '1', 'TELLO ROJAS', '05614665', '8', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'ASENT. H. TIWINZA B LT 09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '2', '1', '1', NULL, '453', 'SI', 'TELLO', 'ROJAS', '14/11/1968', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(194, 'CARMEN', '------', '$2y$10$NI/lqxu.Cj5DhOstn9MqNeAGRDIZnTRe2AvWEU6cRsoC8bOHom82C', NULL, '2021-06-25 06:06:13', NULL, '05611687', '1', 'TELLO VARGAS', '05611687', '2', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE JOSE RIERA 214', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '30', '1', '1', NULL, '453', 'SI', 'TELLO', 'VARGAS', '24/04/1968', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(195, 'TANITH YSABEL', '------', '$2y$10$DnTzKIqZCGZBqGxdJ7gYlOlR9srgfDV8Tg8fL32QbGSOpRJkv3sEi', NULL, '2021-06-25 06:06:14', NULL, '05614734', '1', 'TENAZOA PINEDO', '05614734', '2', NULL, '999263868,999263868', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'ANGAMOS 509', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '5', '1', '1', NULL, '453', 'SI', 'TENAZOA', 'PINEDO', '18/08/1971', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(196, 'NORA DEL PILAR', '------', '$2y$10$SgJuKrqIVhUFTJIbubtHj..Enfc.4ht10Qt3SeCHZuIUCm7EZoMjm', NULL, '2021-06-25 06:06:14', NULL, '05613180', '1', 'TORRES FASABI', '05613180', '1', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE MARISCAL CACERES 320-A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '4', '1', '1', NULL, '453', 'SI', 'TORRES', 'FASABI', '18/06/1967', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(197, 'ESPERANZA', '------', '$2y$10$kuiyKLYA/86QIlaGMbvgV.AxCiDLwkQlDIVLtLGfhOIIumdbDbcWK', NULL, '2021-06-25 06:06:14', NULL, '05594309', '1', 'TORRES PAREDES', '05594309', '3', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR. CORONEL PORTILLO 625', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '6', '1', '1', NULL, '453', 'SI', 'TORRES', 'PAREDES', '26/02/1956', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(198, 'GRETTY FIORELLA', '------', '$2y$10$DAQCZeqr471J3ddnqvmZ8uzvSBs8MjWJbl1AEOLNRcfxdqT1VVVna', NULL, '2021-06-25 06:06:14', NULL, '43392877', '1', 'TORRES TELLO', '43392877', '7', NULL, '953527719', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'SARGENTO LORES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '10', '1', '1', NULL, '453', 'SI', 'TORRES', 'TELLO', '06/12/1985', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(199, 'PIEDAD', '------', '$2y$10$b/9N9zk9qam7PTkVMhtUe.0XlK3QP1X..5d85LzOaUsM.rucMoLj2', NULL, '2021-06-25 06:06:14', NULL, '05585734', '1', 'TRIGOSO MENDOZA', '05585734', '3', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'GARCILAZO DE LA VEGA 129', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '4', '1', '1', NULL, '453', 'SI', 'TRIGOSO', 'MENDOZA', '15/03/1957', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(200, 'JANS', '------', '$2y$10$oyDpHOYN8rFkPDOPCB7LoOpsOXFY5qtSVQPidhJBEBbCk.Kky/15W', NULL, '2021-06-25 06:06:15', NULL, '43747184', '1', 'TUANAMA ARMAS', '43747184', '2', NULL, '956801034', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'PSJ. SHILCAYO MZ.E LT.02 ASENT.H.VILLA AUTONOMA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '11', '1', '1', NULL, '453', 'SI', 'TUANAMA', 'ARMAS', '24/07/1986', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(201, 'NELLY PATRICIA', '------', '$2y$10$1YseWavGHhSz.sFBC8CbB.biHpHcNXOv5roE56ZJRCEan9DzGHtCe', NULL, '2021-06-25 06:06:15', NULL, '05613226', '1', 'TUESTA REATEGUI', '05613226', '3', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'TACNA 849 BARRIO MORALILLOS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '31', '1', '1', NULL, '453', 'SI', 'TUESTA', 'REATEGUI', '29/06/1969', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(202, 'PATRICIA DEL ROCIO', '------', '$2y$10$0wdu3nKIZIO746UJ0Nfb8ewzubnXj.HcqX./QoQciK.h85lWGgUyu', NULL, '2021-06-25 06:06:15', NULL, '05611936', '1', 'UBILLUZ MANRIQUE', '05611936', '1', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE LIBERTAD 321', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '14', '1', '1', NULL, '453', 'SI', 'UBILLUZ', 'MANRIQUE', '07/04/1968', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(203, 'MARIELA', '------', '$2y$10$FBj/cLkuYvAJpqbPQTWqX.tKLNUA5gj3EhOn0YP8xWKt8KYWAiJJm', NULL, '2021-06-25 06:06:16', NULL, '05630162', '1', 'VALDIVIA SHUÑA', '05630162', '8', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JUAN PRIMO RUIZ 407', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '9', '1', '1', NULL, '453', 'SI', 'VALDIVIA', 'SHUÑA', '01/06/1977', 'Divorciado', 'SIN DATOS', NULL, NULL, NULL),
(204, 'CESAR AUGUSTO', '------', '$2y$10$FFQs6YNcALM4kxy5AJkLIOJ/J9XLBP5O.AjsLbWQDQEkUQufSNqBO', NULL, '2021-06-25 06:06:16', NULL, '43396695', '1', 'VALENCIA OLIVEIRA', '43396695', '2', NULL, '920215691', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'HIP. UNANUE MZ.5 LT.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '14', '1', '1', NULL, '453', 'SI', 'VALENCIA', 'OLIVEIRA', '07/11/1985', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(205, 'VICENTE', '------', '$2y$10$nRfG001TnB1bhGL6I05g8utBzK8WkR6qGqLv.toxvTZ.umbTTD77e', NULL, '2021-06-25 06:06:16', NULL, '41657315', '1', 'VALENTIN MARIANO', '41657315', '14', NULL, '947542829', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'ATANASIO JAUREGUI NRO A14-22 MZ A14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '16', '1', '1', NULL, '453', 'SI', 'VALENTIN', 'MARIANO', '05/05/1982', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(206, 'ITALO EDGAR', '------', '$2y$10$GC4gZXHwOLtFp/MPZLZ7SeWPGSY73Gati/Iz1bFjNL6sRpet2l9Ai', NULL, '2021-06-25 06:06:17', NULL, '08674565', '1', 'VALERA GARDINI', '08674565', '23', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CARRETERA KM.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '28', '1', '1', NULL, '453', 'SI', 'VALERA', 'GARDINI', '20/11/1968', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(207, 'ELOISA', '------', '$2y$10$a39BV/BxDNvjYwFobap2oejR6lFeMhOhIO80Gz33BxMHp/E69Mwlm', NULL, '2021-06-25 06:06:17', NULL, '05589773', '1', 'VARGAS MILHO', '05589773', '16', NULL, '965889097', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE TNTE.CESAR LOPEZ 405', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '1', '1', '1', NULL, '453', 'SI', 'VARGAS', 'MILHO', '17/12/1960', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(208, 'LLONY', '------', '$2y$10$V790LLSwEH3lLP0TCVV5zemL7jQWLXz6ozPYdh8ozf8QJo/c5nBme', NULL, '2021-06-25 06:06:17', NULL, '05614818', '1', 'VARGAS RIOS', '05614818', '1', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE MANUEL ALCIDES CARRION 1029 A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '6', '1', '1', NULL, '453', 'SI', 'VARGAS', 'RIOS', '01/03/1961', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(209, 'CARLOS', '------', '$2y$10$qbL9.LneZmysWwiD50PhU.uUlBPUU3bIdg4z6nbMqAbVQ4XhQ3BvO', NULL, '2021-06-25 06:06:17', NULL, '29537064', '1', 'VARGAS VENTURA', '29537064', '5', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'HUALLAGA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '8', '1', '1', NULL, '453', 'SI', 'VARGAS', 'VENTURA', '19/05/1969', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(210, 'BERTA', '------', '$2y$10$gI./bGE4/kaSzEYijCtzmOHQS7zBWGb6w/Uv5cFxFaODuKi/ZsabC', NULL, '2021-06-25 06:06:18', NULL, '05589517', '1', 'VASQUEZ DE RENGIFO', '05589517', '16', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'MARISCAL CASTILLA 612', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '32', '1', '1', NULL, '453', 'SI', 'VASQUEZ', 'DE RENGIFO', '02/02/1951', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(211, 'JACQUELIN CARO', '------', '$2y$10$KP8KQ1N.PXRdfYXJOpdFhOTcjL/.t5YyGhdioBAiPzvtNclddrLbW', NULL, '2021-06-25 06:06:18', NULL, '40193147', '1', 'VASQUEZ OLANO', '40193147', '2', NULL, '971025184', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, '26 DE JULIO MZ. D LT.23 ASENT. H. 28 DE JULIO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '11', '1', '1', NULL, '453', 'SI', 'VASQUEZ', 'OLANO', '04/05/1979', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(212, 'DELWIN', '------', '$2y$10$KLlShrGOqTbwDXqg4yf/WOkoZnXWlcaICgD.pG3ySnMtGuZTEfFom', NULL, '2021-06-25 06:06:18', NULL, '05386308', '1', 'VASQUEZ TEAGUAS', '05386308', '1', NULL, '968666012', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'AV. 15 DE AGOSTO 811', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '18', '1', '1', NULL, '453', 'SI', 'VASQUEZ', 'TEAGUAS', '14/07/1974', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(213, 'EDUARDO SEGUNDO', '------', '$2y$10$1iXrE7MTijV1BWhEYPEP0.5OQ.ri4SEc8idlmf6eClVXrt4gLKmje', NULL, '2021-06-25 06:06:19', NULL, '05589028', '1', 'VELA SALCEDO', '05589028', '3', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR.MAYNAS 420', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '17', '1', '1', NULL, '453', 'SI', 'VELA', 'SALCEDO', '14/12/1951', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(214, 'JESSICA', '------', '$2y$10$00UpEz1u0urPqp2k0L8ruuSPuFtfFtESAGDBewBk/vpnm6XVZj9QK', NULL, '2021-06-25 06:06:19', NULL, '10754767', '1', 'VILLACORTA TUESTA', '10754767', '8', NULL, '926315075', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CAL 15 DE AGOSTO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '11', '3', '1', NULL, '453', 'SI', 'VILLACORTA', 'TUESTA', '22/07/1978', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(215, 'ESTHER', '------', '$2y$10$SJFPQMizXsZtVGHCADTss.oI09CM.mxuQ.ldLtzq1Tx6E3KdvIhNi', NULL, '2021-06-25 06:06:19', NULL, '27427015', '1', 'VILLALOBOS LEIVA', '27427015', '14', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'LAS AMERICAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '1', '1', '1', NULL, '453', 'SI', 'VILLALOBOS', 'LEIVA', '05/04/1975', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(216, 'MARUJA', '------', '$2y$10$g4KVR0LwoHYYpjMzVEttCO8inqK4h8DDcVYN52o7sxgctGHOsE7cW', NULL, '2021-06-25 06:06:19', NULL, '27437365', '1', 'VILLALOBOS LEYVA', '27437365', '7', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'LAS AMERICAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '6', '1', '1', NULL, '453', 'SI', 'VILLALOBOS', 'LEYVA', '20/09/1977', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(217, 'JINDER', '------', '$2y$10$Moe.N7GLsbtI3nJSNfRLT.tLwyCbNp5pSJ4LIaUXsHtA84a0i1Cva', NULL, '2021-06-25 06:06:20', NULL, '05582478', '1', 'VILLASIS DEL CASTILLO', '05582478', '3', NULL, '968581932', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'DOS DE MAYO 214', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '21', '1', '1', NULL, '453', 'SI', 'VILLASIS', 'DEL CASTILLO', '15/01/1960', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(218, 'BONNIE', '------', '$2y$10$W6309XTN0jd.WYyfZ9DfOuKwdVspiIgsxmxp1xgTbg/V1jQregdVC', NULL, '2021-06-25 06:06:20', NULL, '05378370', '1', 'VON BANCELS ANGULO', '05378370', '28', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLEJON DE HUAYLAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '6', '1', '1', NULL, '453', 'SI', 'VON BANCELS', 'ANGULO', '28/03/1975', 'Divorciado', 'SIN DATOS', NULL, NULL, NULL),
(219, 'GENRY', '------', '$2y$10$Tdk74LWuBpt0/hjyNQSaou/KcJtCKfx/R6z3esrSLIiepuvMF7uUm', NULL, '2021-06-25 06:06:20', NULL, '41336379', '1', 'YAHUARCANI ARIRAMA', '41336379', '8', NULL, '939145438', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CARRETERA A YURIMAGUAS KM.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '11', '3', '1', NULL, '453', 'SI', 'YAHUARCANI', 'ARIRAMA', '11/03/1980', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(220, 'PATSY ROSSANA', '------', '$2y$10$F1yywWDAlxJswWT4ZFg2IONJms.tSVbgY7BKt3dUylOPLLvqROyWO', NULL, '2021-06-25 06:06:20', NULL, '40256153', '1', 'YUMBATO ANGULO', '40256153', '2', NULL, '965363855', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE AGUIRRE 311', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '1', '1', '1', NULL, '453', 'SI', 'YUMBATO', 'ANGULO', '17/06/1979', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(221, 'TERCERO', '------', '$2y$10$TRmpawB.HeMPp2NKGmgseu1N5OkYnjeWL/XJeBGhZREjP4q3xYXbG', NULL, '2021-06-25 06:06:21', NULL, '05612788', '1', 'YUPE ASPAJO', '05612788', '1', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR. SANTA GEMA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '5', '1', '1', NULL, '453', 'SI', 'YUPE', 'ASPAJO', '02/12/1964', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(222, 'AARON', '------', '$2y$10$w9gTv1rGLAR5bz682XwmOO6lVBJsQDmpLDbMnMiLd79tSixBTeYTi', NULL, '2021-06-25 06:06:21', NULL, '05617118', '1', 'ZEGARRA GUERRA', '05617118', '8', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE LUIS BECERRA PEREA 103 AH LA PRIMAVERA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '22', '1', '1', NULL, '453', 'SI', 'ZEGARRA', 'GUERRA', '25/03/1973', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(223, 'GABRIELA', '------', '$2y$10$ts6DHxHlnQPpzPuwLqWTKuizD7tm8YlM.YZPMNEnlBkcXETAyX99.', NULL, '2021-06-25 06:06:21', NULL, '44504774', '1', 'GARCIA GONZALES', '44504774', '7', NULL, '065351103', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JULIO RUIZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '27', '3', '1', NULL, '453', 'SI', 'GARCIA', 'GONZALES', '19/09/1987', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(224, 'AMALYN', '------', '$2y$10$YGIVHF8a/yxzDeT93ZIruusjZhs1PxKauAS6MCf5z8dtkQKqs8hVy', NULL, '2021-06-25 06:06:21', NULL, '21521700', '1', 'CLAUDIO CRUZ', '21521700', '5', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE SIMON BOLIVAR 409', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '28', '1', '1', NULL, '453', 'SI', 'CLAUDIO', 'CRUZ', '18/06/1972', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(225, 'MAYRA DANIELA', '------', '$2y$10$x5Nc2L9kk2t9r8BPFoNZDemlIYY/hWNCPutJji6jpy1eBP8Byt4Pm', NULL, '2021-06-25 06:06:22', NULL, '44687429', '1', 'QUIÑONEZ RODRIGUEZ', '44687429', '7', NULL, '979100178', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JUAN PRIMO RUIZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '8', '1', '1', NULL, '453', 'SI', 'QUIÑONEZ', 'RODRIGUEZ', '30/11/1987', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(226, 'CIRIACO ENRIQUE', '------', '$2y$10$ZESOAYxraLWDt.5UH7EFuurxr0KgLVNZSF1aVHfvENFvhvNsijjxS', NULL, '2021-06-25 06:06:22', NULL, '42528936', '1', 'MONTALVAN RUIZ', '42528936', '7', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR. PEDRO TEJADA 262', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '4', '1', '1', NULL, '453', 'SI', 'MONTALVAN', 'RUIZ', '15/07/1984', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(227, 'FIORELLA INGRID', '------', '$2y$10$s4A/ng0Fx3bYWwvpVFSvAeB0BWeGj6sdvzRKpV5FNY8jwB.4Pn4ta', NULL, '2021-06-25 06:06:22', NULL, '42898335', '1', 'RAMIREZ CISNEROS', '42898335', '14', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE SANTA ROSA 452', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '1', '3', '1', NULL, '453', 'SI', 'RAMIREZ', 'CISNEROS', '06/03/1985', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(228, 'ROCIO DEL PILAR', '------', '$2y$10$vgSGmIIzaMdxIb6KvY.tjOZp2U66YCmSk1o0kbTuvR0DcnBKL5oXi', NULL, '2021-06-25 06:06:22', NULL, '46213910', '1', 'ALVARADO TORRES', '46213910', '8', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE MARISCAL CACERES 320', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '9', '3', '1', NULL, '453', 'SI', 'ALVARADO', 'TORRES', '04/01/1990', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(229, 'TONY', '------', '$2y$10$bbE5SOBrQu6OZjMIhF.TR.6FpNyKAorKNADC3o4dvlDyrRtXFJcFS', NULL, '2021-06-25 06:06:23', NULL, '45391821', '1', 'HUANSI ISMIÑO', '45391821', '2', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE AGUIRRE 701', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '6', '1', '1', NULL, '453', 'SI', 'HUANSI', 'ISMIÑO', '30/10/1988', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(230, 'GLORIA MARIA', '------', '$2y$10$o44YMr.0ujjwK/NJqoasYePr5LvaH4O4U8aIKpCdJD3WMNmbfQh1C', NULL, '2021-06-25 06:06:23', NULL, '43749774', '1', 'ROMERO CANALES', '43749774', '2', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'PASTAZA 126 A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '2', '1', '1', NULL, '453', 'SI', 'ROMERO', 'CANALES', '30/07/1986', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(231, 'JAYLITH', '------', '$2y$10$kUlXxw/iPaBJNlDnq0At8eV4udm/zKIscK1tlJ3oPL4puIzih6V66', NULL, '2021-06-25 06:06:23', NULL, '45708436', '1', 'FLORES VILLANUEVA', '45708436', '2', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE MAYNAS 127', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '8', '1', '1', NULL, '453', 'SI', 'FLORES', 'VILLANUEVA', '18/03/1989', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(232, 'ANGELLA CANESSA', '------', '$2y$10$gUxz3Z2KAjdm5OmlLaKdWewaTAzJyBqip5sWSKeZjMLW0Wufvf1nu', NULL, '2021-06-25 06:06:23', NULL, '05409765', '1', 'ARMAS CABALLERO', '05409765', '7', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'TNTE. CESAR LOPEZ 608 - A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '4', '1', '1', NULL, '453', 'SI', 'ARMAS', 'CABALLERO', '29/06/1978', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(233, 'TERESA', '------', '$2y$10$0REAXiddJOrYGQPaHT/zweZ.odPiEyHuXqaDbppqddzXqWXtdvkF2', NULL, '2021-06-25 06:06:24', NULL, '40548079', '1', 'DIAZ SHAPIAMA', '40548079', '8', NULL, '942954067', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'MARISCAL CACERES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '12', '1', '1', NULL, '453', 'SI', 'DIAZ', 'SHAPIAMA', '26/04/1980', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(234, 'CONNIE BIBI', '------', '$2y$10$FJst93KvyG68f0akJn6i6OCJy2OX0C6IcpkodPknyvEqXbjf1ag/y', NULL, '2021-06-25 06:06:24', NULL, '29554672', '1', 'FERNANDEZ NEYRA', '29554672', '10', NULL, '999555868,999555868', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'ALFONSO UGARTE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '11', '1', '1', NULL, '453', 'SI', 'FERNANDEZ', 'NEYRA', '14/02/1973', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(235, 'MILAGRITOS EVELYN', '------', '$2y$10$5WE24XGb5WwpswUpXFNMB.o8K/NvJ7sgerRs340jx22h0unP0YNFK', NULL, '2021-06-25 06:06:24', NULL, '18123570', '1', 'PAREDES GUTIERREZ', '18123570', '21', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE JULIO C. ARANA 515', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '1', '1', '1', NULL, '453', 'SI', 'PAREDES', 'GUTIERREZ', '06/02/1973', 'Divorciado', 'SIN DATOS', NULL, NULL, NULL),
(236, 'JULIO CESAR', '------', '$2y$10$PuSfBjA9Co92JT8oyU2WT.eyiI9v5CpvX/pY45QLEjVSOvshumuaq', NULL, '2021-06-25 06:06:24', NULL, '05591899', '1', 'PAREDES PINEDO', '05591899', '17', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR ARICA 503', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '13', '1', '1', NULL, '453', 'SI', 'PAREDES', 'PINEDO', '22/12/1958', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(237, 'GERARDO', '------', '$2y$10$Gkdi0YYHBCQx06NaJ.uXb.RUBMhyr9CLGYo2fGqFkeeduphUq3toS', NULL, '2021-06-25 06:06:25', NULL, '46436232', '1', 'ARIRAMA PACAYA', '46436232', '2', NULL, '920055992', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE BELEN S/N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '14', '1', '1', NULL, '453', 'SI', 'ARIRAMA', 'PACAYA', '20/04/1990', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(238, 'MARIA ELENA', '------', '$2y$10$.ekXfTs2lLVxchMErH3hW.gr3l9JBnhmoSS9oPuh5j4CybMlbZJi6', NULL, '2021-06-25 06:06:25', NULL, '47949687', '1', 'BARDALES MORIANO', '47949687', '2', NULL, '972233893', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'PEVAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '18', '1', '1', NULL, '453', 'SI', 'BARDALES', 'MORIANO', '22/07/1990', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(239, 'JHOANNA FABIOLA', '------', '$2y$10$E7CNjT60UrL8a3fRZr0z6O39aqKsOa9CYG3x3Rqh3ZPLT3sNe1p/S', NULL, '2021-06-25 06:06:25', NULL, '41210015', '1', 'BARRIA RAMIREZ', '41210015', '7', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, '15 DE AGOSTO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '9', '1', '1', NULL, '453', 'SI', 'BARRIA', 'RAMIREZ', '01/06/1982', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(240, 'ANGELA MERICI', '------', '$2y$10$Q9Tg5lAprqbhncIJCjqRXeaa8.MSGxxs5EM3amvZdGGuH6NbuaXd6', NULL, '2021-06-25 06:06:26', NULL, '05395756', '1', 'BORIA ALVARADO', '05395756', '8', NULL, '948496629', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'PROLONG. ALF. UGARTE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '30', '3', '1', NULL, '453', 'SI', 'BORIA', 'ALVARADO', '27/01/1975', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(241, 'CESAR RENIMER', '------', '$2y$10$1KenFiurD2Lb3BWzaU2OrenWXHboMf9sHl9uqE5GZ/aOjOTKaZ7Dq', NULL, '2021-06-25 06:06:26', NULL, '42666996', '1', 'CANAQUIRI ARIRAMA', '42666996', '6', NULL, '949579290', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CASERIO ARAHUANTE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '14', '1', '1', NULL, '453', 'SI', 'CANAQUIRI', 'ARIRAMA', '28/11/1983', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(242, 'JOHANNA NOEMI', '------', '$2y$10$pUJYR021HyVsaoHeBZEhW.4rvGDMN132g8Gr.gqEx3Kg727LDFXxW', NULL, '2021-06-25 06:06:26', NULL, '40514211', '1', 'CLAUDIO GUTIERREZ', '40514211', '7', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR. JORGE CHAVEZ 1020 BARRIO HUAYCO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '7', '1', '1', NULL, '453', 'SI', 'CLAUDIO', 'GUTIERREZ', '13/04/1980', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(243, 'GEILITH', '------', '$2y$10$vrne1cUgc/ti8daQA1BH8eDk.OoQZfewkfR1/pPG5hkXL02bKFsbi', NULL, '2021-06-25 06:06:26', NULL, '41483475', '1', 'CORAL CHICHIPE', '41483475', '11', NULL, '947815324', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'FCO PIZARRO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '9', '3', '1', NULL, '453', 'SI', 'CORAL', 'CHICHIPE', '31/10/1979', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(244, 'ROSIBEL', '------', '$2y$10$ncG1ycZ0kGc0go.6jEmahebW5dmcO3agrlq51Q7q3VqN45.0erBrO', NULL, '2021-06-25 06:06:26', NULL, '01121977', '1', 'FASANANDO PUYO', '01121977', '14', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR.UNION 281 P.JOVEN TUPAC AMARU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '16', '1', '1', NULL, '453', 'SI', 'FASANANDO', 'PUYO', '01/10/1972', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(245, 'OSTIN STALIN', '------', '$2y$10$eyM8HPp1r1Z5.WX988bn2.Sqp6PRrSq6qZAect5DbGoTeLzao/4Ei', NULL, '2021-06-25 06:06:27', NULL, '42101903', '1', 'HIPUSHIMA URUMA', '42101903', '2', NULL, '969883762', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'PSJ.AYACUCHO 109', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '2', '1', '1', NULL, '453', 'SI', 'HIPUSHIMA', 'URUMA', '24/09/1983', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(246, 'SINTIA KATERINE', '------', '$2y$10$9P.BfU8WtIsvHR/SCyhUx.YGHKF0nNNtoCL6.dkHKf6j6/bFTwy1.', NULL, '2021-06-25 06:06:27', NULL, '45121794', '1', 'LOMAS CHOTA', '45121794', '2', NULL, '947458240', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'TACNA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '8', '1', '1', NULL, '453', 'SI', 'LOMAS', 'CHOTA', '13/02/1988', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(247, 'SEGUNDO ARNULFO', '------', '$2y$10$Gjcxp55P06Sybq7RUwmovO63Eg5Zz3AfYnHJsDTYkm22OWpr3DMFO', NULL, '2021-06-25 06:06:27', NULL, '41556782', '1', 'MARIN PINEDO', '41556782', '7', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'TARAPOTO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '9', '1', '1', NULL, '453', 'SI', 'MARIN', 'PINEDO', '19/05/1981', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(248, 'LIBITH', '------', '$2y$10$mhCNR8vGBEGPWtDVbCWjn.ypLbHUO96E2x5brPc.tECXxL6.Al5TO', NULL, '2021-06-25 06:06:27', NULL, '44186571', '1', 'MESTANZA RIOS', '44186571', '2', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR SARGENTO LORES 905', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '8', '1', '1', NULL, '453', 'SI', 'MESTANZA', 'RIOS', '11/04/1987', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(249, 'MARITZA', '------', '$2y$10$Opih7KfvdGKadCh/V8gYMu8cPwKd5wXukWxT4yfCIrMQF5.w0GIIC', NULL, '2021-06-25 06:06:28', NULL, '05624350', '1', 'MURAYARI PEREIRA', '05624350', '2', NULL, '952999974', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'ACHUAL TIPISHCA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '8', '1', '1', NULL, '453', 'SI', 'MURAYARI', 'PEREIRA', '15/11/1972', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(250, 'SANDRA PAOLA', '------', '$2y$10$8qu0V7VUu2IfPgWEu0Quz.reit/Fi.JMK6GxkPbl75mBlfzzmNFAG', NULL, '2021-06-25 06:06:28', NULL, '43894077', '1', 'OLIVERA SATALAYA', '43894077', '7', NULL, '945163382', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR.MOYOBAMBA 213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '9', '1', '1', NULL, '453', 'SI', 'OLIVERA', 'SATALAYA', '25/11/1986', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(251, 'VIVIANA', '------', '$2y$10$ae5ePJRzKW0ebPFdYpMp8e.a5FriSxTkcm99/hl8toPTIcZ/4Hfbu', NULL, '2021-06-25 06:06:28', NULL, '40573769', '1', 'PAREDES AMASIFUENTES', '40573769', '2', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE HUMBOLT 540', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '6', '1', '1', NULL, '453', 'SI', 'PAREDES', 'AMASIFUENTES', '28/05/1980', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(252, 'WILBER', '------', '$2y$10$GxGnWLt2g7Agc8QkM.bLMuXQ7C8OH2t2nyOGNlYv1xNfS05k/xG9C', NULL, '2021-06-25 06:06:28', NULL, '40566429', '1', 'PICKMAN ROJAS', '40566429', '7', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'LA VIA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '1', '1', '1', NULL, '453', 'SI', 'PICKMAN', 'ROJAS', '25/04/1980', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(253, 'JULIETA BEBERLI', '------', '$2y$10$zKhk0A.4ntmMbWZ2ZwTV1OPivqxkXa4dBSmrmPcpc6En0OAYfsZsK', NULL, '2021-06-25 06:06:29', NULL, '43744322', '1', 'PINEDO CASTERNOQUE', '43744322', '2', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'VIRGEN DE LA NIEVES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '30', '1', '1', NULL, '453', 'SI', 'PINEDO', 'CASTERNOQUE', '08/09/1986', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(254, 'PILAR', '------', '$2y$10$K0vePKw5NRE2MKc1DLeKPO1vNAdfyBsrGMf7v0Xazs/XCmjOyZhSW', NULL, '2021-06-25 06:06:29', NULL, '05630104', '1', 'RIOS GONZALES', '05630104', '2', NULL, '954467081', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR.COMERCIO 1003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '9', '1', '1', NULL, '453', 'SI', 'RIOS', 'GONZALES', '11/05/1977', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(255, 'JACSON', '------', '$2y$10$z/mdGd51/8eq91HyKJVx4OT5okEWtyN3sM3wgzwoCSzj2IcG4OWSO', NULL, '2021-06-25 06:06:29', NULL, '43702248', '1', 'RIOS OJANAMA', '43702248', '2', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE COMERCIO 607', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '6', '1', '1', NULL, '453', 'SI', 'RIOS', 'OJANAMA', '04/07/1986', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(256, 'DOMENICA FABIOLA', '------', '$2y$10$D2hwpRF9e6cBJ6EDOR/CkeFup6p.KVZCjT7blzxqIAHpVa8zulbDu', NULL, '2021-06-25 06:06:29', NULL, '42231281', '1', 'RUIZ VELA', '42231281', '14', NULL, '954931957', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'FRANCISCO BARDALEZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '16', '1', '1', NULL, '453', 'SI', 'RUIZ', 'VELA', '31/12/1983', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(257, 'GABRIELA', '------', '$2y$10$EovPPVtpM9WKReFu5Crm..5GATXC8ZBtzvPzxH2ORqlsZxSjJLv1K', NULL, '2021-06-25 06:06:30', NULL, '43125122', '1', 'TORRES PAIMA', '43125122', '7', NULL, '963993070', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE TARATA 320', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '9', '1', '1', NULL, '453', 'SI', 'TORRES', 'PAIMA', '27/06/1985', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(258, 'NERIO', '------', '$2y$10$3YYZwi0Plm8Qybhdr/w2Vur67DdHRjdpMKyoPH4ueV/6YS4MAm/na', NULL, '2021-06-25 06:06:30', NULL, '42544575', '1', 'TUANAMA TAPULLIMA', '42544575', '2', NULL, '952664920', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'P.JOVEN 82 CALLE MOYOBAMBA L-28 M-8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '6', '1', '1', NULL, '453', 'SI', 'TUANAMA', 'TAPULLIMA', '06/08/1984', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(259, 'MARIA CLEMIT', '------', '$2y$10$3VAVWtigwWTL3xJgFPgI..ii4Wri.vFbw2fFLMLe00wW5w9P7qD2i', NULL, '2021-06-25 06:06:30', NULL, '44849964', '1', 'VALERA LINARES', '44849964', '8', NULL, '931482524', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CAL MALAPI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '11', '3', '1', NULL, '453', 'SI', 'VALERA', 'LINARES', '12/12/1987', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(260, 'YONY YOLANDA', '------', '$2y$10$8dInEbosoiNryEU1VEUnSuIH7HH/uebsMe.G.hOKyw8sHaNKHEf5q', NULL, '2021-06-25 06:06:30', NULL, '40950630', '1', 'VARGAS PINEDO', '40950630', '2', NULL, '992551714', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'PROLONG. 15 DE AGOSTO MZ.6 LT.04 ASENT.H. LOS MADEROS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '2', '1', '1', NULL, '453', 'SI', 'VARGAS', 'PINEDO', '26/05/1981', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(261, 'NEFRYS NATHALY', '------', '$2y$10$GLOkGuR4wVyLvoBl9n0zxOXX7DDtjXdeq9aUaBTC3PLFM8KuVxVnm', NULL, '2021-06-25 06:06:31', NULL, '44586752', '1', 'VELA CORNE', '44586752', '7', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JUAN VARGAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '8', '1', '1', NULL, '453', 'SI', 'VELA', 'CORNE', '09/05/1987', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(262, 'CARMEN DEL PILAR', '------', '$2y$10$8AfJo3VLJIc5XOQMR/RLS.Dp/KC4EUiOUDSFgDGnvQWT4v/xqY/Lu', NULL, '2021-06-25 06:06:31', NULL, '40997275', '1', 'GUERRA FERREYRA', '40997275', '7', NULL, '962652866', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE LAS AMERICAS NRO.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '8', '1', '1', NULL, '453', 'SI', 'GUERRA', 'FERREYRA', '06/07/1981', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(263, 'JANETT FIORELLA', '------', '$2y$10$aOoewFIbjBjWomzQ1EbLz.hkstjdTb9X6zumwzHqv6mloPRv4MPfm', NULL, '2021-06-25 06:06:31', NULL, '42916331', '1', 'MORENO CAHUAZA', '42916331', '13', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE JOSE GALVEZ 210 A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '9', '3', '1', NULL, '453', 'SI', 'MORENO', 'CAHUAZA', '01/04/1985', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(264, 'EDGAR MARIANO', '------', '$2y$10$9PfIyvsRNWrdRJnppNspqO/Mpws0eFiq/kwx.AyvxkeMl036leGwW', NULL, '2021-06-25 06:06:32', NULL, '43657650', '1', 'PEREZ FLORES', '43657650', '7', NULL, '984882405', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR. CIRO ALEGRIA 150 BARRIO SAN MARTIN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '6', '1', '1', NULL, '453', 'SI', 'PEREZ', 'FLORES', '26/07/1986', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(265, 'JORGE ALBERTO', '------', '$2y$10$FNWzgjeFck2POZq5ddkXxuBGeTam/HLGtQjF1aLa4QVpFlDuS5qcq', NULL, '2021-06-25 06:06:32', NULL, '80321802', '1', 'MERCADO SEANCAS', '80321802', '12', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'TUPAC AMARU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '1', '1', '1', NULL, '453', 'SI', 'MERCADO', 'SEANCAS', '24/01/1980', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(266, 'MIKEY', '------', '$2y$10$s2qwlou4LsdxR3wYFiLdreSH6fcttMI7x8vjcneBTfkcei/QLo56e', NULL, '2021-06-25 06:06:32', NULL, '00862515', '1', 'PEREZ REATEGUI', '00862515', '14', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JUNIN 3P CUADRA 3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '16', '1', '1', NULL, '453', 'SI', 'PEREZ', 'REATEGUI', '08/12/1975', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(267, 'JHONY RONALD', '------', '$2y$10$F3zAgQvfoQL7iTphYpEL1u21QzVeeZ8vLr6T2oVodGYXgX0hAdVB2', NULL, '2021-06-25 06:06:32', NULL, '41493658', '1', 'VALENCIA PALACIOS', '41493658', '13', NULL, '918912041', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'GARCILAZO DE LA VEGA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '36', '3', '1', NULL, '453', 'SI', 'VALENCIA', 'PALACIOS', '14/09/1978', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(268, 'TEOFILO', '------', '$2y$10$dOMNliQ60jYp9ZfNUEhRAOKz9HvWb650zDYXELtFRk2448mssOZ5C', NULL, '2021-06-25 06:06:33', NULL, '02661549', '1', 'BERNAL PAIVA', '02661549', '5', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'LAS AMERICAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '14', '1', '1', NULL, '453', 'SI', 'BERNAL', 'PAIVA', '06/08/1969', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(269, 'IRMA', '------', '$2y$10$DQOEWsuClQI81y/S3RIXg.ZOObaPDQP6S7C9tkap1zBKHkN7AaIqu', NULL, '2021-06-25 06:06:33', NULL, '05386641', '1', 'TUESTA CORAL', '05386641', '8', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, '15 DE AGOSTO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '7', '3', '1', NULL, '453', 'SI', 'TUESTA', 'CORAL', '03/02/1975', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(270, 'ALICIA BRILLY', '------', '$2y$10$0LFab4TO607YnIz/DIMV.OksrvvpoV537IKSjPuqQYtoDUMlrDx12', NULL, '2021-06-25 06:06:34', NULL, '70337649', '1', 'AMASIFUEN ROBLEDO', '70337649', '31', NULL, '952053701', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE ANGAMOS 926', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '21', '4', '2', NULL, '453', 'SI', 'AMASIFUEN', 'ROBLEDO', '04/06/1989', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(271, 'ADDINSON', '------', '$2y$10$zscAoYk3n76qNnc2dHwyTO6F.lR2IJ6.hn7qzVCWr/DVZiL0ca/I2', NULL, '2021-06-25 06:06:34', NULL, '04652451', '1', 'ANGULO DEL AGUILA', '04652451', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'NO', 'ANGULO', 'DEL AGUILA', '1976-08-24', NULL, NULL, NULL, NULL, NULL),
(272, 'ROY ROGER', '------', '$2y$10$GSNVSu9s3tc5Gak3Xim3aeXXLj1IGOoj9SY4MpBkbjb9upk8QvjCG', NULL, '2021-06-25 06:06:34', NULL, '40268325', '1', 'ANGULO RAMIREZ', '40268325', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JOSE RIERA 320', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'ANGULO', 'RAMIREZ', '19/08/1979', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(273, 'JULIO', '------', '$2y$10$5v32kE9N/BqKV4t7tC9kxuPl8yRZT9wTvH5H7.R8/bYs4r.vuqV16', NULL, '2021-06-25 06:06:34', NULL, '07871839', '1', 'AREVALO REATEGUI', '07871839', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'NO', 'AREVALO', 'REATEGUI', '1970-07-06', NULL, NULL, NULL, NULL, NULL),
(274, 'ABDIEL ESTANISLAO', '------', '$2y$10$80G6W2n3Gw1iICrt4W36uOA1e2Jgtd1mq0xD.CNXtr/CuA8zfmWyG', NULL, '2021-06-25 06:06:35', NULL, '05585682', '1', 'AREVALO SAAVEDRA', '05585682', '32', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR.COMERCIO 116', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '1', '1', NULL, '453', 'SI', 'AREVALO', 'SAAVEDRA', '03/05/1950', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(275, 'NELSON', '------', '$2y$10$opWExPb94K.1lC3.jXgtAeJRUoPlXyt3TESZxGjB/aM0oTKBYiYay', NULL, '2021-06-25 06:06:35', NULL, '05580423', '1', 'SANGAMA PAIMA', '05580423', '20', NULL, '984580197', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '1', '1', NULL, '453', 'NO', 'SANGAMA', 'PAIMA', '1959-11-21', NULL, NULL, NULL, NULL, NULL),
(276, 'ANTONIETA', '------', '$2y$10$XAfZxWZQokZ2PdoUkkO.AeNEfXf7OLQPFhsj6busxsEp8J95V58I2', NULL, '2021-06-25 06:06:35', NULL, '05582119', '1', 'CHUQUIPOMA MANDARACHI', '05582119', '15', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JULIO C ARANA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '1', '1', NULL, '453', 'SI', 'CHUQUIPOMA', 'MANDARACHI', '26/02/1947', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(277, 'DELIA', '------', '$2y$10$EkehtJWIaaazbPc65mzljukQDRQlEFxCBu676llc.fKzXEoZvtyWi', NULL, '2021-06-25 06:06:36', NULL, '05581823', '1', 'CHUQUIPOMA MANDARACHI', '05581823', '32', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JULIO C ARANA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'CHUQUIPOMA', 'MANDARACHI', '03/03/1950', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(278, 'ESTHER', '------', '$2y$10$JVGlTGIvmFB94zyP0c4FwujwY7mBtuBYkZffNw.dslnSTwV1MZe7e', NULL, '2021-06-25 06:06:36', NULL, '05594630', '1', 'DEL AGUILA DE CEDANO', '05594630', '1', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '1', '1', NULL, '453', 'NO', 'DEL AGUILA', 'DE CEDANO', '1956-03-12', NULL, NULL, NULL, NULL, NULL),
(279, 'RAFAEL ARISTIDES', '------', '$2y$10$Hwxy.QCd1nshLkydE3NxMe6vVH6smoL1v4Jilwsw1cPzFsfZ5wZoG', NULL, '2021-06-25 06:06:36', NULL, '05588238', '1', 'DEL AGUILA PEREZ', '05588238', '31', NULL, '957912078', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR.MARISCAL CACERES 125', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'DEL AGUILA', 'PEREZ', '15/04/1959', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(280, 'LLIM', '------', '$2y$10$A77pqmXAO/X8WCrttm8Ybu67riTA9TP0ON2UIwtM8ayNsxEmamNUK', NULL, '2021-06-25 06:06:37', NULL, '44253653', '1', 'DIAZ SANGAMA', '44253653', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR LA FLORIDA S/N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '13', '4', '2', NULL, '453', 'SI', 'DIAZ', 'SANGAMA', '20/01/1981', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(281, 'EVELYN', '------', '$2y$10$/k6KbVeyVj5hS5jOldVBaenqmLdN4GmllqFw9wFGJRqsjZ4sMcwZ.', NULL, '2021-06-25 06:06:37', NULL, '41312652', '1', 'FLORINDEZ DELERNA', '41312652', '31', NULL, '985640833', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'SANTA GEMA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'FLORINDEZ', 'DELERNA', '12/05/1982', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(282, 'LUIS ALBERTO', '------', '$2y$10$NwnwR02.i2GNUA0NiOJ/2.fZMPi.X8rfWjNvhoBmbovj0EmT4DQBK', NULL, '2021-06-25 06:06:37', NULL, '05580755', '1', 'GALVEZ GARCIA', '05580755', '11', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR COMERCIO 830', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '1', '1', NULL, '453', 'SI', 'GALVEZ', 'GARCIA', '19/01/1965', 'Casado', 'SIN DATOS', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `nombre`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `usuario`, `estado`, `apellidos`, `nro_documento`, `cargo`, `avatar`, `telefono`, `glosa`, `idtipo`, `ruc`, `razon_social`, `registro`, `direccion`, `ubicacion`, `vendedor`, `contacto`, `condicion_pago`, `usu_licencia`, `idcliente`, `cabecera_color`, `footer_color`, `menu_dark`, `menu_colapsible`, `cabecera_dark`, `cabecera_fija`, `cabecera_fondo_ocultar`, `footer_dark`, `footer_fija`, `footer_ocultar`, `idempresa`, `idusuario`, `idestado`, `iddocumento`, `idzona`, `titulo`, `cod_alterno`, `id_codigo_alterno`, `apertura_legajo`, `url_imagen`, `area_trabajador`, `situacion_laboral`, `regimen_laboral`, `SEXO`, `codigo_pliego`, `validado_reniec`, `apellido_paterno`, `apellido_materno`, `fecha_nacimiento`, `estado_civil`, `apellidos_casada`, `id_cargo`, `email_profesional`, `contacto_id`) VALUES
(283, 'CESAREA', '------', '$2y$10$nLzt35InoQdDXmmEJU.BveSfZ3ZjlWxsFsCkBgatGkLPkIUS6tlYO', NULL, '2021-06-25 06:06:38', NULL, '05584254', '1', 'GARCIA RODRIGUEZ', '05584254', '3', NULL, '965020834,965020834,965020834', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR. JUAN PRIMO RUIZ 429', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '1', '1', NULL, '453', 'SI', 'GARCIA', 'RODRIGUEZ', '08/04/1950', 'Viudo', 'VDA DE ZEGARRA', NULL, NULL, NULL),
(284, 'ALAN', '------', '$2y$10$o3NcXBPL5PZF2uG1ZJnA9.e22E0TXe.qX2/Rv7EuW6hb43RiUJIJO', NULL, '2021-06-25 06:06:38', NULL, '42897961', '1', 'GARCIA FLORES', '42897961', '31', NULL, '975507695', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE ALFONSO UGARTE 408', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'GARCIA', 'FLORES', '28/02/1985', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(285, 'JOSE', '------', '$2y$10$Bg.LlmcZIqozyGCMUSSJu.gF0ZEhw0MNXst5wy2P0kUHUYq7TyHj2', NULL, '2021-06-25 06:06:38', NULL, '05582907', '1', 'GARCIA PANDURO', '05582907', '1', NULL, '942823942', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'MARISCAL CACERES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '1', '1', NULL, '453', 'SI', 'GARCIA', 'PANDURO', '16/07/1954', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(286, 'JAVIER FRANCISCO', '------', '$2y$10$Y/RYdZqJ/gB1XzO1ePq1Ke1K2gqtMksQun8AerhMELZ52oTW8UVLW', NULL, '2021-06-25 06:06:39', NULL, '05281464', '1', 'GARCIA ZUMAETA', '05281464', '31', NULL, '959440151', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'ATANACIO JAUREGUI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'GARCIA', 'ZUMAETA', '04/12/1959', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(287, 'GEMA', '------', '$2y$10$8AYrqFlNU6NISLMR23pdHeAUCa6XEIJ8.YJdm/YshKXNfDcodkubS', NULL, '2021-06-25 06:06:39', NULL, '05613631', '1', 'GONZALES MEZA', '05613631', '11', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JUAN PRIMO RUIZ 422', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '1', '1', NULL, '453', 'SI', 'GONZALES', 'MEZA', '24/06/1968', 'Casado', 'DE ALVIZ', NULL, NULL, NULL),
(288, 'JOSSI ELVA', '------', '$2y$10$OvVa5HmBOtiDMZJklypNzuN57fE3.jHHx45oVGk7p3B6yuXiHIwZe', NULL, '2021-06-25 06:06:39', NULL, '40546617', '1', 'GUEVARA TRUJILLO', '40546617', '31', NULL, '965942960', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE BOLOGNESI 101,CALLE BOLOGNESI 101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'GUEVARA', 'TRUJILLO', '05/05/1980', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(289, 'ROSA', '------', '$2y$10$Bhjex8qD6yZ3bhzTdCJdi.A2AnXS1jWOrlMr5NMhvtYwxbSs.EMQy', NULL, '2021-06-25 06:06:39', NULL, '05595352', '1', 'GUZMAN ISUIZA', '05595352', '1', NULL, '975807085', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE AGUIRRE 329', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '1', '1', NULL, '453', 'SI', 'GUZMAN', 'ISUIZA', '12/06/1950', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(290, 'DOLIBETZ', '------', '$2y$10$kfwlWl9/UAEoptdEuwTMVOiIuLpBN2r7uHcLuqXGBIc6VPSUa48h2', NULL, '2021-06-25 06:06:40', NULL, '05585886', '1', 'HUAMAN HIDALGO', '05585886', '3', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CONJ.HAB.VIRGEN DE LAS NIEVES 4A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '1', '1', NULL, '453', 'SI', 'HUAMAN', 'HIDALGO', '29/10/1957', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(291, 'ANTONIO', '------', '$2y$10$zSxlSTKFurXFJZKyr6HwKOupEkIzlqY/bf/UF83iIzZgY.kNwUtSK', NULL, '2021-06-25 06:06:40', NULL, '05587619', '1', 'HUANCI PIZANGO', '05587619', '11', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE DANIEL ALCIDES CARRION 840', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '1', '1', NULL, '453', 'SI', 'HUANCI', 'PIZANGO', '23/04/1962', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(292, 'GERARDO', '------', '$2y$10$AJYRVxLSFl.bnUYzaHu07.mo2g94NfZAwJwSxfz2Lx7S51K4U1yj2', NULL, '2021-06-25 06:06:40', NULL, '05602423', '1', 'HUANSI TAPULLIMA', '05602423', '8', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'UCAYALI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '1', '1', NULL, '453', 'SI', 'HUANSI', 'TAPULLIMA', '21/08/1958', 'Viudo', 'SIN DATOS', NULL, NULL, NULL),
(293, 'WALTER', '------', '$2y$10$uLaPORaGWAKOu96Jp5c5Wut5A1ybQA5AGclR52QmA5i5uuTxNFEk.', NULL, '2021-06-25 06:06:41', NULL, '05581281', '1', 'HURTADO VILCATOMA', '05581281', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE ANGAMOS 509', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '5', '4', '2', NULL, '453', 'SI', 'HURTADO', 'VILCATOMA', '24/11/1947', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(294, 'ROSSANA', '------', '$2y$10$xLrs3aAUqAuPFlcvvT44gOriCMbsEHko5GxCNaUtkdVMT.xLQkoxK', NULL, '2021-06-25 06:06:41', NULL, '40632342', '1', 'INUMA MORAL', '40632342', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE DANIEL ALCIDES CARRION 422', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'INUMA', 'MORAL', '30/08/1980', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(295, 'MIGUEL ANGEL', '------', '$2y$10$jcSKOzh6RI7aroIcKsvMse1mUvJK4XO18/ph73bRKFRSiLhutx3GG', NULL, '2021-06-25 06:06:41', NULL, '17441114', '1', 'LLUEN SECLEN', '17441114', '14', NULL, '930685905', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'TUPAC AMARU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '1', '1', NULL, '453', 'SI', 'LLUEN', 'SECLEN', '18/09/1969', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(296, 'DEMETRIO MANUEL', '------', '$2y$10$V9tFTbf4HVC4LX7JJBc1QOXNWFjQaRYWgBxpnWek/dDkIGUV26l36', NULL, '2021-06-25 06:06:41', NULL, '05586481', '1', 'LOBO FLORES', '05586481', '16', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'TACNA 717', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '1', '1', NULL, '453', 'SI', 'LOBO', 'FLORES', '22/12/1946', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(297, 'MARIA ZOILA', '------', '$2y$10$FZYlmLSVZZBKAOQLccRds.DnUjJoP1qgz1sQ1zCFLnlepyQ1IbN8u', NULL, '2021-06-25 06:06:42', NULL, '40961423', '1', 'MASLUCAN FLORES', '40961423', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE TNTE.ZECADA 507', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'MASLUCAN', 'FLORES', '17/07/1981', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(298, 'JORGE', '------', '$2y$10$OrxEMHbZtKHEMe0.pNSbSO8v/6A7c/v0e/ws1DqprBaBYzHxuwcaq', NULL, '2021-06-25 06:06:42', NULL, '05588928', '1', 'MENDOZA VALERA', '05588928', '34', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'V.DE NIEVES A.7 S/N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '1', '1', NULL, '453', 'SI', 'MENDOZA', 'VALERA', '16/09/1956', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(299, 'CONSUELO', '------', '$2y$10$utYEJynuE7MovP2yHoMpd.vCjw78x25NcXnA1h0ViOgMjGIJJHDy2', NULL, '2021-06-25 06:06:42', NULL, '05582109', '1', 'MORAL DE INUMA', '05582109', '1', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '1', '1', NULL, '453', 'NO', 'MORAL', 'DE INUMA', '1942-11-22', NULL, NULL, NULL, NULL, NULL),
(300, 'DORA', '------', '$2y$10$T9nOh9szusdGecshzdBGTO6HijuBr/Tz/.d2ek5o.uJG5J0mFvUMu', NULL, '2021-06-25 06:06:42', NULL, '05594978', '1', 'MOREY FLORES', '05594978', '3', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '1', '1', NULL, '453', 'NO', 'MOREY', 'FLORES', '1944-11-13', NULL, NULL, NULL, NULL, NULL),
(301, 'JUAN CARLOS', '------', '$2y$10$AABzWUIJyhYB8AzeXqA7quvmdzNgPM4yw5rLX2910fWWOshK/KAI.', NULL, '2021-06-25 06:06:43', NULL, '05374449', '1', 'MORI CELIS', '05374449', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'PROGRESO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '6', '5', '3', NULL, '453', 'SI', 'MORI', 'CELIS', '21/03/1974', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(302, 'JOSEFA', '------', '$2y$10$57OnCyaL1a7/J0vpxwHfxOKTL6wOQhJ3GXQ80s6YFsGWMcWcPzEMK', NULL, '2021-06-25 06:06:43', NULL, '05589506', '1', 'MUÑOZ DE GUEVARA', '05589506', '3', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE TACNA 431', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '1', '1', NULL, '453', 'SI', 'MUÑOZ', 'DE GUEVARA', '22/01/1948', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(303, 'HERMA', '------', '$2y$10$8I1/1eC3TaVnKt49UCgkRuLxaIkSZ3BXm0q0K.EXmPoo40t8k8XPy', NULL, '2021-06-25 06:06:43', NULL, '05590777', '1', 'NAVA PANDURO DE INFANTE', '05590777', '1', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'PRIMERO DE MAYO 1114-A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '1', '1', NULL, '453', 'SI', 'NAVA', 'PANDURO DE INFANTE', '04/09/1958', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(304, 'VISALTY', '------', '$2y$10$skyapoUNMuZOMBJxpqMoNOrR0Ltd2Wu7nz5N3tjyHvVj9gmcYrMAa', NULL, '2021-06-25 06:06:44', NULL, '43607809', '1', 'PAREDES MANGIA', '43607809', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, '15 DE AGOSTO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'PAREDES', 'MANGIA', '24/05/1986', 'Divorciado', 'SIN DATOS', NULL, NULL, NULL),
(305, 'MODESTO', '------', '$2y$10$RmlqNhUaHfHxI0oUXLylgeJYYNheES.GhGLlpgwl.oYD2Pq5/yMPa', NULL, '2021-06-25 06:06:44', NULL, '05591526', '1', 'PAREDES PEREZ', '05591526', '11', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'ASENT.H 92 14 LT.02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '1', '1', NULL, '453', 'SI', 'PAREDES', 'PEREZ', '11/03/1948', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(306, 'MIREYA', '------', '$2y$10$BmbFwCsuRots2kXSSe8bMOtSVCzM1scJwnoRib2ud1cdXnwLXrDFK', NULL, '2021-06-25 06:06:44', NULL, '05391899', '1', 'SANDOVAL MOZOMBITE', '05391899', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '1', '1', NULL, '453', 'NO', 'SANDOVAL', 'MOZOMBITE', '1976-06-29', NULL, NULL, NULL, NULL, NULL),
(307, 'JOSE CLEBER', '------', '$2y$10$0FY.Q.UYhF7g3qMT0loDeeTGrSLdojQKDDcDBPKDIZN8Ga3sul3zW', NULL, '2021-06-25 06:06:44', NULL, '05612502', '1', 'PEREA LOPEZ', '05612502', '2', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE JOSE GALVEZ 105', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '1', '1', NULL, '453', 'SI', 'PEREA', 'LOPEZ', '20/12/1968', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(308, 'ELADIO', '------', '$2y$10$tl8gaT3NND5YLOa5ZniloOTPR7TQkThY1/VjNGFDJj9mWOcyaMmXW', NULL, '2021-06-25 06:06:44', NULL, '01114830', '1', 'PEREZ GOMEZ', '01114830', '31', NULL, '956640758', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'YURIMAGUAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'PEREZ', 'GOMEZ', '29/09/1967', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(309, 'LILIA', '------', '$2y$10$b7B9D49YX3UUSb1XkdISv.GqJGE3WOvmbU3WlBVOwqtHr.sIQp8ci', NULL, '2021-06-25 06:06:45', NULL, '01061075', '1', 'PEREZ PANDURO', '01061075', '1', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR.SAN MARTIN 1301', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '1', '1', NULL, '453', 'SI', 'PEREZ', 'PANDURO', '24/11/1964', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(310, 'CELIA DE JESUS', '------', '$2y$10$d7zRoC.DXocEbHSwIJB8B.wEIrM8Vv0hp5oi5vCrb9EVx0UF7Ecle', NULL, '2021-06-25 06:06:45', NULL, '05592838', '1', 'PEREZ VELA', '05592838', '11', NULL, '920341135', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'TACNA 416', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '1', '1', NULL, '453', 'SI', 'PEREZ', 'VELA', '18/09/1964', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(311, 'TATIANA MERITH', '------', '$2y$10$nCMpd7GXqewDqcOXqRqpReoNgcJwmWW73uqSuv1SMxvSA5vwWFieu', NULL, '2021-06-25 06:06:45', NULL, '05596709', '1', 'PEZO CORREA', '05596709', '1', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'TARAPOTO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '1', '1', NULL, '453', 'SI', 'PEZO', 'CORREA', '02/02/1967', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(312, 'ENITH ANDREA', '------', '$2y$10$RtpqEVl7riPSZVDmwSqCl.zhecO.39UsN7D08sp4aOOZZaGlP742u', NULL, '2021-06-25 06:06:45', NULL, '05586803', '1', 'PINEDO DE MARIN', '05586803', '1', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '1', '1', NULL, '453', 'NO', 'PINEDO', 'DE MARIN', '1947-12-16', NULL, NULL, NULL, NULL, NULL),
(313, 'ROSA VICTORIA', '------', '$2y$10$xZYBgmYlxDjX45syCkOxU.CtXzdWowUHx.4E.lotBUUTPyN.Gtvnm', NULL, '2021-06-25 06:06:46', NULL, '05589264', '1', 'PINEDO VELA DE HURTADO', '05589264', '3', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '1', '1', NULL, '453', 'NO', 'PINEDO', 'VELA DE HURTADO', '1946-06-30', NULL, NULL, NULL, NULL, NULL),
(314, 'DAN MARDEN', '------', '$2y$10$90kHv78841Cw8IWj9ZCjv.iq9qeDt.LDbPNA7F9REtVTAbTmKn.dK', NULL, '2021-06-25 06:06:46', NULL, '44008036', '1', 'PIPA GARCIA', '44008036', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'NO', 'PIPA', 'GARCIA', '1987-01-18', NULL, NULL, NULL, NULL, NULL),
(315, 'MANUEL EFRAIN', '------', '$2y$10$WesaKm0m0hLEg.BY5JytL.ONPQGdEg8c2we2vQMBdeb1L7.AcxCme', NULL, '2021-06-25 06:06:46', NULL, '05389209', '1', 'POZADA MONTENEGRO', '05389209', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE FRANCISCO BARDALES 413', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'POZADA', 'MONTENEGRO', '11/11/1943', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(316, 'JAIME WILLIAM', '------', '$2y$10$wBRT.4h0m.7o9VwjN2GVneP8xwMuMlaiUiS5l37Zh7mGy6296Hmvy', NULL, '2021-06-25 06:06:47', NULL, '46097593', '1', 'RACCHUMI JULON', '46097593', '31', NULL, '915209390', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE ATAHUALPA 508', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'RACCHUMI', 'JULON', '16/07/1989', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(317, 'ARIEL', '------', '$2y$10$oYdl8RxJwu8Fa7NhXfeJ8uIUub1.TH75j4EfobqOEd/VdpO4uoitm', NULL, '2021-06-25 06:06:47', NULL, '29377177', '1', 'RAMIREZ CHINO', '29377177', '26', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '1', '1', NULL, '453', 'NO', 'RAMIREZ', 'CHINO', '1962-10-01', NULL, NULL, NULL, NULL, NULL),
(318, 'FLORITA', '------', '$2y$10$hYBwC1qBAnbCGfhhgejf0e5AInCBFxtPiXQaGpeGTfkgh7YMOWyge', NULL, '2021-06-25 06:06:47', NULL, '05590095', '1', 'RAMIREZ GARCIA VDA DE GARCIA', '05590095', '3', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'ARICA 450', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '1', '1', NULL, '453', 'SI', 'RAMIREZ', 'GARCIA VDA DE GARCIA', '06/07/1950', 'Viudo', 'SIN DATOS', NULL, NULL, NULL),
(319, 'CESAR OSWALDO', '------', '$2y$10$GUMLscKu0Xs88HG90wegOOeS0XSgL057TqUA5XceQ7k7PY/990HBa', NULL, '2021-06-25 06:06:47', NULL, '05617054', '1', 'RAMIREZ TELLO', '05617054', '31', NULL, '965683923', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'MARISCAL CACERES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'RAMIREZ', 'TELLO', '09/08/1973', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(320, 'CINDY ISABEL', '------', '$2y$10$ME/qPbA/snzhsMq/FbYH/eBehD09PmGojWr/Ah4w1N4YGI1NIdVzq', NULL, '2021-06-25 06:06:48', NULL, '44862763', '1', 'RAMIREZ TRUJILLO', '44862763', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'NO', 'RAMIREZ', 'TRUJILLO', '1988-01-24', NULL, NULL, NULL, NULL, NULL),
(321, 'CARLOS', '------', '$2y$10$9sAFu7MnurobJaRlz6iVV.n8PohFQ.cCa3T3Vbf3iihtb0X5qX6zG', NULL, '2021-06-25 06:06:48', NULL, '05618104', '1', 'RAMOS MORENO', '05618104', '8', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'VICTOR SIFUENTES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '1', '1', NULL, '453', 'SI', 'RAMOS', 'MORENO', '24/09/1950', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(322, 'ZULMA ISABEL', '------', '$2y$10$s3UzW7bvD5QozcqAh49cSOsI.hy4hxYlUc4QRwkVEstTMnZxOAlGe', NULL, '2021-06-25 06:06:48', NULL, '43484617', '1', 'REATEGUI VILLACORTA', '43484617', '31', NULL, '945646927', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'NO', 'REATEGUI', 'VILLACORTA', '1986-03-07', NULL, NULL, NULL, NULL, NULL),
(323, 'WILLIAM', '------', '$2y$10$DOxHpBefQekL36gPYM7E7uBG89EhBhv1T5A.Pvvu8AXBz6DlC/opG', NULL, '2021-06-25 06:06:48', NULL, '05591981', '1', 'RENGIFO CORAL', '05591981', '27', NULL, '965915379', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'UCAYALI 400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '1', '1', NULL, '453', 'SI', 'RENGIFO', 'CORAL', '26/04/1952', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(324, 'HUGO', '------', '$2y$10$8EbBYBFqPj0rAwrAas7raOAnLDpGLRblY.0u.wQEymHeYc5hx2gDy', NULL, '2021-06-25 06:06:49', NULL, '05227275', '1', 'RINCON DONAYRE', '05227275', '17', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE NAUTA 526', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '1', '1', NULL, '453', 'SI', 'RINCON', 'DONAYRE', '19/12/1957', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(325, 'MONICA', '------', '$2y$10$/.JdqQaIMWidKrhnyfoP/.jT2/ARcSEiZEIA.8q0rH3EdkyZLByXG', NULL, '2021-06-25 06:06:49', NULL, '09677046', '1', 'RODRIGUEZ ROJAS', '09677046', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE SAN LORENZO 163', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'RODRIGUEZ', 'ROJAS', '20/06/1974', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(326, 'LADY MIREILLE', '------', '$2y$10$lDq3fR/DnQGCQ9JuIhRreOHxmGjscTXBUtVaNPDF5lCQUKUvomaee', NULL, '2021-06-25 06:06:49', NULL, '42422884', '1', 'RUIZ LANARO', '42422884', '31', NULL, '945303636', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLEJON DE HUAYLAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'RUIZ', 'LANARO', '08/05/1984', 'Casado', 'DE REATEGUI', NULL, NULL, NULL),
(327, 'RAUL', '------', '$2y$10$somwejMqA34FKFv6zNaCAOvJNtdGJk7J2Gyx0dVuhrtTOKtB9IawS', NULL, '2021-06-25 06:06:50', NULL, '05580136', '1', 'SAAVEDRA RODRIGUEZ', '05580136', '1', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE TENIENTE ZECADA 329', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '1', '1', NULL, '453', 'SI', 'SAAVEDRA', 'RODRIGUEZ', '22/09/1948', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(328, 'KARINA', '------', '$2y$10$9kA5ZnfFCVusRhOVVMyhvu3KCEVLx6swkaIUE1zS3FCrk2mNcCipG', NULL, '2021-06-25 06:06:50', NULL, '44665283', '1', 'SAAVEDRA SHARDIN', '44665283', '31', NULL, '948557602', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR. TACNA 615', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'SAAVEDRA', 'SHARDIN', '20/11/1987', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(329, 'CARMEN', '------', '$2y$10$8UNiftXcf4P7LGLkV6oeW.xkAzUGFQhUDyCJNnVJNO4W1W/EE598W', NULL, '2021-06-25 06:06:51', NULL, '05588485', '1', 'SALAS TAPULLIMA', '05588485', '1', NULL, '964994611', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE AGUIRRE 326', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '1', '1', NULL, '453', 'SI', 'SALAS', 'TAPULLIMA', '18/11/1947', 'Divorciado', 'SIN DATOS', NULL, NULL, NULL),
(330, 'PEDRO', '------', '$2y$10$Kty8HJO5WV.KSYgoi7q8IuCBmR3jyZc0ex1k5vEL8Nu2dcG/xf6UC', NULL, '2021-06-25 06:06:51', NULL, '05224298', '1', 'SALDAÑA RODRIGUEZ', '05224298', '17', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'TARAPOTO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '1', '1', NULL, '453', 'SI', 'SALDAÑA', 'RODRIGUEZ', '05/10/1965', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(331, 'LENNY ESTHER', '------', '$2y$10$bk7Hfu2JwgN1cCJaKFTzoOw3R46PLF0xfyS2a0lOC5pBz3UyNJwRa', NULL, '2021-06-25 06:06:51', NULL, '22425368', '1', 'SANDOVAL DE CHAPA', '22425368', '4', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '1', '1', NULL, '453', 'NO', 'SANDOVAL', 'DE CHAPA', '1961-03-25', NULL, NULL, NULL, NULL, NULL),
(332, 'SANTIAGO', '------', '$2y$10$6FtReLQDS0GHrO4WfS2Faee/zUAqsrsdc1Iin7YgE9uAwJjuSMOAG', NULL, '2021-06-25 06:06:51', NULL, '05581317', '1', 'PIPA VELA', '05581317', '11', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'S. MASLUCAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '1', '1', NULL, '453', 'SI', 'PIPA', 'VELA', '14/03/1962', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(333, 'AROLDO', '------', '$2y$10$GoivTAvIDSFydnr1tBNRBOtrHcD8.nOt7nLjgO/XM4ecSwvgj7TOK', NULL, '2021-06-25 06:06:52', NULL, '05783141', '1', 'SINTI TORRES', '05783141', '17', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE PROGRESO 819', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '1', '1', NULL, '453', 'SI', 'SINTI', 'TORRES', '27/05/1960', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(334, 'ELSA', '------', '$2y$10$rYFs8ioJ2O2Kv759NF2UO.Jq2gPnbG1L.KccZ4qYiq2R/i8NDbXXe', NULL, '2021-06-25 06:06:52', NULL, '05590072', '1', 'TAPAYURI DE BARRERA', '05590072', '33', NULL, '990262508', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR. FRANCISCO BOLOGNESI 808', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'TAPAYURI', 'DE BARRERA', '12/11/1950', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(335, 'GERSON WILLIAM', '------', '$2y$10$9C3cyAuZIyNycUCFzAclVOlS.TGOO6s5fIXJxsbbBmhaWdDw3fsRe', NULL, '2021-06-25 06:06:52', NULL, '43342184', '1', 'TENAZOA PINEDO', '43342184', '31', NULL, '965852867', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'ANGAMOS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'TENAZOA', 'PINEDO', '02/11/1985', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(336, 'LENER', '------', '$2y$10$bWmeuLMn5J7cOvXlmIHTfuAsggnkTlxIbkSw44YAjDAKMuT5Pl8/2', NULL, '2021-06-25 06:06:52', NULL, '05618044', '1', 'TORRES GRANDEZ', '05618044', '1', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '1', '1', NULL, '453', 'NO', 'TORRES', 'GRANDEZ', '1957-03-28', NULL, NULL, NULL, NULL, NULL),
(337, 'GERMAN HILARIO', '------', '$2y$10$g31M5WR9snGbLYM6ugOcL.SL3o6lZBHewStBiM8sYV3/5hHi29ju6', NULL, '2021-06-25 06:06:53', NULL, '05595612', '1', 'TORRES SANGAMA', '05595612', '3', NULL, '951922775', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE JULIO C. ARANA 450', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '1', '1', NULL, '453', 'SI', 'TORRES', 'SANGAMA', '02/10/1957', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(338, 'BALTAZAR', '------', '$2y$10$VsAvMsQoDSWWPuGM6ZOVIeavJXW./DoQs0R9a0gVYOkCau80QICTu', NULL, '2021-06-25 06:06:53', NULL, '05581808', '1', 'UBILLUZ CABALCANTI', '05581808', '8', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '1', '1', NULL, '453', 'NO', 'UBILLUZ', 'CABALCANTI', '1946-01-30', NULL, NULL, NULL, NULL, NULL),
(339, 'MANUEL JESUS', '------', '$2y$10$8SAQnk1l/WTgDvX4MqaBcOUvoWOuIYJtvnsaA.gZselxivox0.Vpe', NULL, '2021-06-25 06:06:53', NULL, '05593879', '1', 'URTEAGA PANDO', '05593879', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE MARISCAL CASTILLA 408', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'URTEAGA', 'PANDO', '15/10/1948', 'Viudo', 'SIN DATOS', NULL, NULL, NULL),
(340, 'ELIODORO', '------', '$2y$10$c8n8C7TODGxjQ2LKYOrJDOAZy9VlJJz6BRiHPwNCwl8D01XWEFR8m', NULL, '2021-06-25 06:06:53', NULL, '05389193', '1', 'VALDERRAMA CHOTA', '05389193', '1', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '1', '1', NULL, '453', 'NO', 'VALDERRAMA', 'CHOTA', '1959-03-06', NULL, NULL, NULL, NULL, NULL),
(341, 'ANA MARIA', '------', '$2y$10$GvRMGgrK49NRzguMmg9tt.XSKHh/IleV3eHDZih9ZSiMiPQ.L7euO', NULL, '2021-06-25 06:06:53', NULL, '05613588', '1', 'VALLES LAZO', '05613588', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'PROLONG.JUAN PRIMO RUIZ 520 A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'VALLES', 'LAZO', '26/02/1970', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(342, 'EDUARDO', '------', '$2y$10$rD2iYdKMzJeiZZo.h/eyr.XCw03YRq8EFwRQEl6xydZkZFu8Q78Z.', NULL, '2021-06-25 06:06:53', NULL, '05585969', '1', 'VASQUEZ PANDURO', '05585969', '3', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '1', '1', NULL, '453', 'NO', 'VASQUEZ', 'PANDURO', '1937-10-13', NULL, NULL, NULL, NULL, NULL),
(343, 'JONATHAN ELEAZAR', '------', '$2y$10$gIuY6TiHoWzMh0SPRCkBWe9tx/KvFAsQJsBqDFvxahBrduB3YSR0y', NULL, '2021-06-25 06:06:54', NULL, '45565667', '1', 'VASQUEZ VILLANUEVA', '45565667', '31', NULL, '931482522', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'ALCIBIADES MALAPI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'VASQUEZ', 'VILLANUEVA', '13/01/1989', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(344, 'BIRCHER', '------', '$2y$10$oy52.Pz.IFp6ai8wcccV3eOLHkbfokzhG.EAsKQy9qJH1e/bsAcBW', NULL, '2021-06-25 06:06:54', NULL, '40897666', '1', 'VELA PINEDO', '40897666', '31', NULL, '966919438,998093544', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE MAYNAS 420', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'VELA', 'PINEDO', '18/04/1981', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(345, 'MIGUELINA', '------', '$2y$10$L.vOk2g61VTvcDOXVbHqqecx6IJcxM2vb2YnD4OX0AQn0rgcE0exW', NULL, '2021-06-25 06:06:54', NULL, '05585666', '1', 'VELA SHUY DE MASLUCAN', '05585666', '11', NULL, '979959076', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE ANGAMOS 916', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '1', '1', NULL, '453', 'SI', 'VELA', 'SHUY DE MASLUCAN', '05/07/1957', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(346, 'SIMON ENRIQUE', '------', '$2y$10$o.WxwxVT32D3iFbI.kc65uEqd7xzDkmvxREPSVOsalWDyD2/cRZoq', NULL, '2021-06-25 06:06:54', NULL, '05614701', '1', 'VILLACORTA BARDALEZ', '05614701', '31', NULL, '965995173', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'NO', 'VILLACORTA', 'BARDALEZ', '1959-11-29', NULL, NULL, NULL, NULL, NULL),
(347, 'ROSA MERCEDES', '------', '$2y$10$w71FjXhhmlGGRb4zY8QVH.3Jyibm8jfyMajW6oXqmgb8aAfrG0yR2', NULL, '2021-06-25 06:06:55', NULL, '05588482', '1', 'YUMBATO TAPULLIMA', '05588482', '1', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '1', '1', NULL, '453', 'NO', 'YUMBATO', 'TAPULLIMA', '1942-09-27', NULL, NULL, NULL, NULL, NULL),
(348, 'RAUL SALVADOR', '------', '$2y$10$kes3E.u1oQPJnqRLpJDfPeCRs75BH2P6gM4yay4HKrLcm8Pot7ktC', NULL, '2021-06-25 06:06:55', NULL, '01130884', '1', 'ZAVALA GONZALES', '01130884', '31', NULL, '990065482,932778693', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'TNTE CESAR LOPEZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'ZAVALA', 'GONZALES', '11/07/1973', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(349, 'DEIVIS', '------', '$2y$10$6dnjAtP0JWtWHCkkS0U7LOnR11jXeg2c8YaioMz6O88tpbRI.v.GW', NULL, '2021-06-25 06:06:55', NULL, '05615027', '1', 'ZUMAETA ROJAS', '05615027', '31', NULL, '948166252', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE LIBERTAD 541', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'ZUMAETA', 'ROJAS', '24/03/1971', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(350, 'IRIS DESIREE KAREN', '------', '$2y$10$9crnds.ULmjwA9/x8JqQa.hDu/ITnUDLWFiIaC8IYES0Dit5kb5YO', NULL, '2021-06-25 06:06:55', NULL, '41840375', '1', 'GUERRERO FARFAN', '41840375', '31', NULL, '956637596', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'PSJ.LAS CRUCES 244 DPTO.202 CIUDAD SATELITE STA.ROSA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '6', '1', NULL, '453', 'SI', 'GUERRERO', 'FARFAN', '21/11/1982', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(351, 'RONI', '------', '$2y$10$7XWq5.v8.oxWgx4BZGmRqe.1OY8gzNXMqJSPdWTXPMz4bG9qim2eO', NULL, '2021-06-25 06:06:56', NULL, '43284799', '1', 'SANGAMA MORI', '43284799', '31', NULL, '944941741', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'C.P.M. AGUANO MUYUNA S/N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'SANGAMA', 'MORI', '15/12/1985', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(352, 'CRISTIAN TONY', '------', '$2y$10$UUOzlSXy36eEIBeWwYLxjuHZkmn6yF2hg1EuaMpWqYEeYq0VjQg8a', NULL, '2021-06-25 06:06:56', NULL, '45391819', '1', 'AQUINO GONZALES', '45391819', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'NO', 'AQUINO', 'GONZALES', '1988-10-14', NULL, NULL, NULL, NULL, NULL),
(353, 'LUIS JAVIER', '------', '$2y$10$vNsW6kSULRJKHVXykT/zeOSOZC4phg405xoLGXaQiI7HN0J3o1kZO', NULL, '2021-06-25 06:06:56', NULL, '08644615', '1', 'CORAL VELA', '08644615', '31', NULL, '952613961', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'FRANCISCO BOLOGNESI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'CORAL', 'VELA', '29/12/1963', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(354, 'DUSTIN HOWARD', '------', '$2y$10$PX1ywc8v16yzwbyIJ/GwkO5O2hmgjAVJr/EsPmEec9BMCSBBKOlUe', NULL, '2021-06-25 06:06:56', NULL, '42987414', '1', 'ROJAS MACEDO', '42987414', '31', NULL, '978816140', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CAL ATANASIO JAUREGUI,CAL ATANASIO JAUREGUI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'ROJAS', 'MACEDO', '17/04/1985', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(355, 'CARLOS ALBERTO', '------', '$2y$10$9sRbQMPPyMn5PDIYWLtlr.5a1qL32HBUpgd0l74k/6JMhyR0Cjnlu', NULL, '2021-06-25 06:06:56', NULL, '43025855', '1', 'DEL AGUILA PANAIFO', '43025855', '31', NULL, '971343924', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE JUAN LUIS IBARRA 413 URB.PUEBLO JOVEN 92', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'DEL AGUILA', 'PANAIFO', '07/05/1985', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(356, 'VENIS', '------', '$2y$10$LjSV6Hgsi0k6ckm.KX94JuPrFfB1HaFRaXPBeSaP8oIzBFdcqW/m2', NULL, '2021-06-25 06:06:57', NULL, '46633562', '1', 'LOPEZ TORRES', '46633562', '31', NULL, '938133784', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'SAN PABLO DE LA CRUZ 380', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'LOPEZ', 'TORRES', '09/11/1990', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(357, 'RUKMINI', '------', '$2y$10$.8.rNEKSLlhEn4kWILw84uCn3JLYrNZ4rzZ.RQUpVJlx2nsdUJeXW', NULL, '2021-06-25 06:06:57', NULL, '45377714', '1', 'PANAIFO GONZALES', '45377714', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE 28 DE JULIO 823', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'PANAIFO', 'GONZALES', '22/09/1988', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(358, 'ERICK ALEXANDER', '------', '$2y$10$RcAR2ONTMggWXTyFm7A/zu1JD6B8ZFiKuZrb4mKc48BNeRjSLH/sG', NULL, '2021-06-25 06:06:57', NULL, '42710722', '1', 'AGUILAR GARCIA', '42710722', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'NO', 'AGUILAR', 'GARCIA', '1984-08-29', NULL, NULL, NULL, NULL, NULL),
(359, 'JOSE HUMBERTO', '------', '$2y$10$yd3T9fGPOsEUKH69.Mta.uuA4mbEJtBzBs4ZSzB8DX8Q9EUTKE/JW', NULL, '2021-06-25 06:06:58', NULL, '05225175', '1', 'CELIS CUEVA', '05225175', '31', NULL, '979119591', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE CALLEJON DE HUAYLAS 115', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'CELIS', 'CUEVA', '11/10/1963', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(360, 'DARWIN', '------', '$2y$10$oiKbFNnmLPlkWSeInscIyegi1n6Gj/DI7H7vBbcdwdnPi5YwkhwEy', NULL, '2021-06-25 06:06:58', NULL, '40436477', '1', 'TORRES LAZO', '40436477', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'SIN DATOS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'TORRES', 'LAZO', '23/07/1979', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(361, 'JESARY HIBITH', '------', '$2y$10$TJdlcXH.TaIAOumWm/XYG.HF2e8rKIewFaSc3W12pQCYoA41nC.hG', NULL, '2021-06-25 06:06:58', NULL, '46351609', '1', 'RAMIREZ CANAQUIRI', '46351609', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE SEÑOR DE LOS MILAGROS 251', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'RAMIREZ', 'CANAQUIRI', '01/05/1990', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(362, 'HECTOR JOSE', '------', '$2y$10$oel.Rt38B3FOM26hytFvbO5sroTrcPFEQwjeikSHhBwHWVWcxp9DC', NULL, '2021-06-25 06:06:58', NULL, '41691702', '1', 'HERBOZO OLORTEGUI', '41691702', '13', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'HUALLAGA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '1', '1', NULL, '453', 'SI', 'HERBOZO', 'OLORTEGUI', '30/06/1981', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(363, 'PATRICIA HOMELY', '------', '$2y$10$R5F20gNv7aZBBR9m5UpfOeXO7SG6lc6hYmT2Y99rjKSUKncxlxDYK', NULL, '2021-06-25 06:06:59', NULL, '41869904', '1', 'ALVAN VELA', '41869904', '31', NULL, '961959801', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'LIBERTAD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'ALVAN', 'VELA', '11/02/1983', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(364, 'YESSENIA MARIA', '------', '$2y$10$ofwzeClnMEf3RJPjGQDGOec2I2UaXcvMk0LMQYJTyW.1Havge3BTW', NULL, '2021-06-25 06:06:59', NULL, '46058779', '1', 'CAMPOMANES LLOJA', '46058779', '7', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, '15 DE AGOSTO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '1', '1', NULL, '453', 'SI', 'CAMPOMANES', 'LLOJA', '11/11/1989', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(365, 'ROY RONY', '------', '$2y$10$18hzE4ELuFUZmvGwc5RQhun0YmxqoqULWQMWZr8GdDbw.6fM/b7pW', NULL, '2021-06-25 06:06:59', NULL, '44186579', '1', 'CELIS GRANDEZ', '44186579', '31', NULL, '959882355', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE ZAMORA 505', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'CELIS', 'GRANDEZ', '28/08/1986', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(366, 'CHARLES', '------', '$2y$10$OWSAj31FLJUJIdDsGOycK.Cg/Gr6whNakePR8mT4xJsNtwsczT0Xu', NULL, '2021-06-25 06:06:59', NULL, '05630821', '1', 'CHAVEZ ORTEGA', '05630821', '31', NULL, '967262354', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'SARGENTO LORES 410', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'CHAVEZ', 'ORTEGA', '28/10/1977', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(367, 'MARIA ANGELA', '------', '$2y$10$2s01OUKLlt2zeGvlzcTpS.TGSmKIbLZBlmKNu.wMWfkXZP0rQEk0q', NULL, '2021-06-25 06:06:00', NULL, '46012751', '1', 'GUEVARA GIL', '46012751', '31', NULL, '949981770', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CORONEL PORTILLO 126', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'GUEVARA', 'GIL', '06/01/1989', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(368, 'MAYDELENI', '------', '$2y$10$2leVIbeB3Q.U7rxfuVw0WOdj5d/zGuDr1Oy/YagzlF0BqmOCbh08y', NULL, '2021-06-25 06:06:00', NULL, '40829082', '1', 'HUAYCAMA CARDENAS', '40829082', '31', NULL, '950504587', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE BOLIVAR 738', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'HUAYCAMA', 'CARDENAS', '12/06/1979', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(369, 'RAFAEL LAHOZ', '------', '$2y$10$LowaK.fd6MfGbaylLpbnnuS/2loh3tPtof231j6IdqK3Mg4pnMj9e', NULL, '2021-06-25 06:06:00', NULL, '05618032', '1', 'MONTERO MORI', '05618032', '31', NULL, '955862360', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'UCAYALI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'MONTERO', 'MORI', '23/08/1972', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(370, 'PIOQUINTO', '------', '$2y$10$TjhCGp4rnACYp3TNP61Btume3A11p/a0im.FXR7eemhE1odwalQEG', NULL, '2021-06-25 06:06:01', NULL, '45186413', '1', 'PANAIFO AMASIFUEN', '45186413', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE TENIENTE ZECADA 320', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'PANAIFO', 'AMASIFUEN', '12/03/1958', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(371, 'ROSELL', '------', '$2y$10$vHTTzt8vmHRfpk9zOi8Q1O35JTjTeskKjkhnXtEnFWP7rPggCDcoS', NULL, '2021-06-25 06:06:01', NULL, '40785115', '1', 'SHAPIAMA GUERRA', '40785115', '31', NULL, '999261137,999261137', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'MOYOBAMBA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'SHAPIAMA', 'GUERRA', '11/05/1978', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(372, 'RICKY BALTAZAR', '------', '$2y$10$dVnbsFsScK/8ZitvGuPfN.KNJf4HVCA5pLrnDKhtk6uiBCip4LF5q', NULL, '2021-06-25 06:06:01', NULL, '72871749', '1', 'UBILLUZ MACEDO', '72871749', '31', NULL, '947557400', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE TENIENTE SECADA 312', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'UBILLUZ', 'MACEDO', '12/05/1992', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(373, 'MILAGROS GRETEL', '------', '$2y$10$VB6zS2rIsQfFnyhWT8/kVeQROdamnDV.jvQPLKtBvupR79OJA.Ygm', NULL, '2021-06-25 06:06:01', NULL, '45377718', '1', 'PINEDO FLORES', '45377718', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE COMERCIO 705', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'PINEDO', 'FLORES', '29/10/1988', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(374, 'IRIS GABRIELA', '------', '$2y$10$Nhi0//R/op5UyMKkH.re/.IpsYwi/q.5oBcXZykCG.YHklJ4sHqOW', NULL, '2021-06-25 06:06:01', NULL, '70163490', '1', 'CABRERA DAVILA', '70163490', '31', NULL, '957959606', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR.MOYOBAMBA 635', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'CABRERA', 'DAVILA', '22/04/1994', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(375, 'PEDRO HERNÁN', '------', '$2y$10$/TfS40m.23I4YwDrcCZS6.mfUi3Oi89VhM1yMSEwIdMa9Vg0Gw6pC', NULL, '2021-06-25 06:06:02', NULL, '40174134', '1', 'CHUNG HUANSI', '40174134', '31', NULL, '939307490', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE SARGENTO LORES 739', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'CHUNG', 'HUANSI', '14/03/1979', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(376, 'JUAN RAUL OMAR', '------', '$2y$10$r1bsAjymbg71B6rGHNZ.dO3itrJZHy9TjOHWSj53TqrKQtkmqkrZO', NULL, '2021-06-25 06:06:02', NULL, '44566226', '1', 'AQUINO GONZALES', '44566226', '31', NULL, '95603255', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'PASAJE BELEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'AQUINO', 'GONZALES', '01/07/1987', 'Soltero', 'SIN DATOS', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `nombre`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `usuario`, `estado`, `apellidos`, `nro_documento`, `cargo`, `avatar`, `telefono`, `glosa`, `idtipo`, `ruc`, `razon_social`, `registro`, `direccion`, `ubicacion`, `vendedor`, `contacto`, `condicion_pago`, `usu_licencia`, `idcliente`, `cabecera_color`, `footer_color`, `menu_dark`, `menu_colapsible`, `cabecera_dark`, `cabecera_fija`, `cabecera_fondo_ocultar`, `footer_dark`, `footer_fija`, `footer_ocultar`, `idempresa`, `idusuario`, `idestado`, `iddocumento`, `idzona`, `titulo`, `cod_alterno`, `id_codigo_alterno`, `apertura_legajo`, `url_imagen`, `area_trabajador`, `situacion_laboral`, `regimen_laboral`, `SEXO`, `codigo_pliego`, `validado_reniec`, `apellido_paterno`, `apellido_materno`, `fecha_nacimiento`, `estado_civil`, `apellidos_casada`, `id_cargo`, `email_profesional`, `contacto_id`) VALUES
(377, 'RUTH ROSARIO', '------', '$2y$10$yyyUkPFL7q0cuQowha2juerDIKSrX94rIF/eWLP.auSt1c0k9Luqm', NULL, '2021-06-25 06:06:02', NULL, '44226046', '1', 'PEREZ GALLARDO', '44226046', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR. SUCRE - POR AMORARCA 92', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'PEREZ', 'GALLARDO', '26/04/1987', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(378, 'PAOLA MILAGROS', '------', '$2y$10$Icvh2QZV55myz7BuYVIYuOfY2Ask3DeeANx7RC1EfY8seuwmoTGMa', NULL, '2021-06-25 06:06:03', NULL, '70309526', '1', 'REATEGUI CARDENAS', '70309526', '31', NULL, '965341633', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, '2 DE MAYO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'REATEGUI', 'CARDENAS', '12/09/1990', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(379, 'JULIO REYES', '------', '$2y$10$niU8gF55spOcOVGkvfbrJe9EnVNvOc5s3CGt2/OlmJpVK0j0WS75a', NULL, '2021-06-25 06:06:03', NULL, '05925905', '1', 'WONG GARCIA', '05925905', '29', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '3', '1', NULL, '453', 'NO', 'WONG', 'GARCIA', '1968-01-06', NULL, NULL, NULL, NULL, NULL),
(380, 'ANTHONY PATRICK', '------', '$2y$10$IZsrgtvw1EuEYWSa6thuYOU5BZ.whKxUbqZdHvq/pA3RW.vfLUa2.', NULL, '2021-06-25 06:06:03', NULL, '45713856', '1', 'PAREDES PAREDES', '45713856', '31', NULL, '965887539', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CARRTERA MARGINAL SUR 320', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'PAREDES', 'PAREDES', '11/03/1989', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(381, 'MARISELA', '------', '$2y$10$ZRB2i63y83F/5NWJ0qm2ie9YRAjU.PiP9OoACjYWnd21JGv4OMaBS', NULL, '2021-06-25 06:06:03', NULL, '44981135', '1', 'SALDAÑA PEÑAHERRERA', '44981135', '31', NULL, '999781300,999781300', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'D. A. CARRION', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'SALDAÑA', 'PEÑAHERRERA', '18/03/1988', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(382, 'JOSE ALBERTO', '------', '$2y$10$CHc0AKR68ZMRJOvZZke2Q.c20JRV12BcIqzsgX9AmG3W5FGTT3B96', NULL, '2021-06-25 06:06:04', NULL, '44201631', '1', 'LOPEZ LORREN', '44201631', '31', NULL, '996847703', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'BARRIO CHINO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'LOPEZ', 'LORREN', '24/11/1981', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(383, 'ANGEL LLOYD', '------', '$2y$10$CgKKBmSajY6.yyPc8xOzGOguCLZe3oWpFBXbzUFcnWhIPGIe8KyUC', NULL, '2021-06-25 06:06:04', NULL, '41113857', '1', 'BARRERA TAPAYURI', '41113857', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'FRANCISCO BOLOGNESI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'BARRERA', 'TAPAYURI', '02/10/1981', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(384, 'FAVIOLA SANDIBEL', '------', '$2y$10$8qDM5yFrp20.OY3A/B8QUuh.ASf4XsGotZrscHrypiGs6.gJltvpS', NULL, '2021-06-25 06:06:04', NULL, '71693941', '1', 'HUAMAN AMASIFUENTES', '71693941', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE HUMBOLT 430', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'HUAMAN', 'AMASIFUENTES', '28/01/1993', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(385, 'BRAILON', '------', '$2y$10$Dg9wrHCHQOFdF8SEtn84j.t.pmIGRSHtscQ83FFwfUebPvCECAs.C', NULL, '2021-06-25 06:06:05', NULL, '75576743', '1', 'GONZALES TANGOA', '75576743', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JOSE CARLOS MARIATEGUI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '25', '4', '2', NULL, '453', 'SI', 'GONZALES', 'TANGOA', '16/07/1996', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(386, 'REILY', '------', '$2y$10$fTeQ5WqfMQ5O/sePiGIbnuVbbuTmYMS1hIDujo.38yrOwlQf29HJ6', NULL, '2021-06-25 06:06:05', NULL, '05386674', '1', 'RENGIFO PANDURO', '05386674', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'PSJ.TRUJILLO 137', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'RENGIFO', 'PANDURO', '28/07/1974', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(387, 'KARY MAGALY', '------', '$2y$10$TjC.OIc0JGVQoYl7cf5deuvJ7AkfCsqBKcwgbtSMmKZMhHp2KE8nu', NULL, '2021-06-25 06:06:05', NULL, '45124759', '1', 'TELLO MACAHUACHI', '45124759', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, '15 DE AGOSTO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '8', '4', '2', NULL, '453', 'SI', 'TELLO', 'MACAHUACHI', '19/05/1988', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(388, 'TANIA CAYNA', '------', '$2y$10$q8L1PbgABWgCYwDX926jC.uXSTlgiV2rvlu2EJT/G1kfaclGnujxW', NULL, '2021-06-25 06:06:05', NULL, '48695359', '1', 'SABOYA ROMERO', '48695359', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JUAN PRIMO RUIZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'SABOYA', 'ROMERO', '07/02/1996', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(389, 'MARIBEL', '------', '$2y$10$9kHcOieAuE5.d2oZDNYCW.ORVfY3KQQivyWnaElxIAF05rJpeQen6', NULL, '2021-06-25 06:06:06', NULL, '72788073', '1', 'TANCHIVA SABOYA', '72788073', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE JOSE OLAYA 400 URB. SAN JUAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '23', '4', '2', NULL, '453', 'SI', 'TANCHIVA', 'SABOYA', '06/10/1994', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(390, 'NILDA', '------', '$2y$10$GllXCtEffskPgJMUV1u0q.K.jBiNi.DYcVSJu44pLd6HtZuyqmtDW', NULL, '2021-06-25 06:06:06', NULL, '44226965', '1', 'RAMIREZ TANGOA', '44226965', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'LA CAPIRONA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '23', '4', '2', NULL, '453', 'SI', 'RAMIREZ', 'TANGOA', '27/07/1983', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(391, 'JHOANA', '------', '$2y$10$i9r7zkXSacplSE9PwBcMhO7SD6CyoMiCzFfWadWLMAa8/SHAoj7YS', NULL, '2021-06-25 06:06:06', NULL, '45222090', '1', 'OLANO HILAS', '45222090', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR.15 DE AGOSTO 710', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'OLANO', 'HILAS', '02/08/1987', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(392, 'MARLITH', '------', '$2y$10$tSVU2l5Szgudsu61USL6sOr.jtNekQ1CUBWr9gefMXxxBIqthwEVq', NULL, '2021-06-25 06:06:07', NULL, '44475288', '1', 'RICOPA PIZANGO', '44475288', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'HUALLAGA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'RICOPA', 'PIZANGO', '06/06/1984', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(393, 'KARINA ELIZABETH', '------', '$2y$10$5.X96GDwjX8d40gVZF1TSOcUIwKI4sWISHHTZ7dIHnhjxXMqOjdLm', NULL, '2021-06-25 06:06:07', NULL, '42263700', '1', 'CHIROQUE PEREZ', '42263700', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE TACNA MZ.D LT.14 P.JOVEN SANTA ROSA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'CHIROQUE', 'PEREZ', '29/01/1984', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(394, 'KATHERINE', '------', '$2y$10$xPhryFwP/63ktKA51g.piuYqLprfhTopCbi7H36qAdasbWvi5o1ou', NULL, '2021-06-25 06:06:07', NULL, '44374814', '1', 'SAAVEDRA DAVILA', '44374814', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'PERU S/N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'SAAVEDRA', 'DAVILA', '06/07/1987', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(395, 'FRISETH MAGALY', '------', '$2y$10$vz.9nyywE13RmI43dq2Gl.vQ1WdPxxQmm.1THUw1wYdoRkXA/ckrK', NULL, '2021-06-25 06:06:07', NULL, '70669574', '1', 'SHARDIN DEL PINO', '70669574', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR JORGE CHAVEZ 324', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '8', '4', '2', NULL, '453', 'SI', 'SHARDIN', 'DEL PINO', '13/09/1993', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(396, 'BELLITA', '------', '$2y$10$bhD2yDJifNeyNdNYfhmQbOvAIZVC7Ey7dk9..Y/b0D9b2t9uZ3fDK', NULL, '2021-06-25 06:06:07', NULL, '46958222', '1', 'ACOSTA REATEGUI', '46958222', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE LOS NOGALES 222 ASENT. H. VILLA UNIVERSITARIA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'ACOSTA', 'REATEGUI', '20/03/1991', 'Casado', 'DE CHAVEZ', NULL, NULL, NULL),
(397, 'INDIRA ELMITH', '------', '$2y$10$uXtEZveLqwwcN6CVq2Q4IOQP9yS4gjfCJGVhCkRBT.dnKPDYwVE9e', NULL, '2021-06-25 06:06:08', NULL, '71098041', '1', 'PAREDES HUAMAN', '71098041', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE ARICA 503', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'PAREDES', 'HUAMAN', '03/01/1991', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(398, 'SARA', '------', '$2y$10$yTKd0Wlh/0UXwAYGQzMBuuIU0hibq9dBi.x7J9ieG9e/WeVH2URc.', NULL, '2021-06-25 06:06:08', NULL, '05616584', '1', 'ESCOBILLA TORRES', '05616584', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE PROGRESO 731', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'ESCOBILLA', 'TORRES', '01/12/1972', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(399, 'MAYRA DE JESUS', '------', '$2y$10$dZuchfwyIa6kw9wgY3gVO.9Q0qZFScvegLbCexP/C9nafjEATeySu', NULL, '2021-06-25 06:06:08', NULL, '70655521', '1', 'HIDALGO CORAL', '70655521', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE 28 DE JULIO 700 A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'HIDALGO', 'CORAL', '05/12/1994', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(400, 'ALEXANDRA', '------', '$2y$10$yHFU77Um9Ita6J1mJDQ9IuGUA2IXQrWRmZyBQdFoIdw01px/e1mE2', NULL, '2021-06-25 06:06:08', NULL, '43807353', '1', 'REATEGUI VARGAS', '43807353', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'TENIENTE CESAR LOPEZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '11', '4', '2', NULL, '453', 'SI', 'REATEGUI', 'VARGAS', '12/09/1986', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(401, 'GRETEL BEBERLIN', '------', '$2y$10$VvyjmIIVYdveFRj5v0OuXuaG4GtbqR2Q3NlnYU3ed6mOAOUsHWdAa', NULL, '2021-06-25 06:06:09', NULL, '47717301', '1', 'BARDALES MACAHUACHI', '47717301', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'MAYNAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '38', '4', '2', NULL, '453', 'SI', 'BARDALES', 'MACAHUACHI', '12/12/1992', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(402, 'BREZZE', '------', '$2y$10$nNO/al9tBBMoy0li0gozc.celDoU68uH.c5Zj3mZPKMJc1qREScT.', NULL, '2021-06-25 06:06:09', NULL, '05630291', '1', 'ROJAS REATEGUI', '05630291', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'LAS FLORES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'ROJAS', 'REATEGUI', '29/12/1976', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(403, 'NANCY EMNEDITH', '------', '$2y$10$eBearpVfc/zOznSTLNfJFeS1qw4KKn/3QpZsGVSdzrzUXRKTB3VyS', NULL, '2021-06-25 06:06:09', NULL, '05615640', '1', 'PEÑA HERBACH', '05615640', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE JUANJUI 121', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'PEÑA', 'HERBACH', '31/12/1971', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(404, 'SERGIO', '------', '$2y$10$BHu227yeWCtm0tq7rtgwEuMbxK.VaNgdMCYjgCARiwMGjszSY9ZJm', NULL, '2021-06-25 06:06:10', NULL, '05624956', '1', 'MURAYARI CURITIMA', '05624956', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE 26 DE JULIO MZ S LT 9 ASENT. H. INDEPENDENCIA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'MURAYARI', 'CURITIMA', '11/09/1973', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(405, 'ISAURA', '------', '$2y$10$ecoVxlgWU8tozqmCKg3ANuxAFCS0z2ZS7KFwIE9BaWs.UfUVdeGJ6', NULL, '2021-06-25 06:06:10', NULL, '05387691', '1', 'DAVILA TRIGOZO', '05387691', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE MI PERU S/N MZ.T LT.5 ASENT.H.LA NATIVIDAD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'DAVILA', 'TRIGOZO', '09/05/1976', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(406, 'MARIA DE LOS ANGELES', '------', '$2y$10$vm347ts9CutHvCNjMBxvz.mw8T0aH660bjt46EzLzsQ0Y04WCFYSC', NULL, '2021-06-25 06:06:10', NULL, '00821984', '1', 'VILLANUEVA TORRES', '00821984', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CUMALA MZ A L 11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'VILLANUEVA', 'TORRES', '18/11/1962', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(407, 'NELSON HAROLDO', '------', '$2y$10$m3IEb7WQMJdMDAkHWzbJ5.Fy4JasqbGbxhh2HFbdr8PKmUMPbMWum', NULL, '2021-06-25 06:06:11', NULL, '05617587', '1', 'LANCHA CANSINO', '05617587', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE JOSE OLAYA 401', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'LANCHA', 'CANSINO', '28/11/1961', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(408, 'LUZ', '------', '$2y$10$eHhEcYF1J7gAkZbq0lJYy.vTjh28zlSZbytY88z0X5H/qEkA7w3Qq', NULL, '2021-06-25 06:06:11', NULL, '05588320', '1', 'CARDICELIS DAZA', '05588320', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR.TACNA 506', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'CARDICELIS', 'DAZA', '13/12/1958', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(409, 'ZOILA GLADIS', '------', '$2y$10$gPS.K9d59eGP8KRRx/sO0ORE.Qbzddcdsj0riOdXTFgWqDRTcKCma', NULL, '2021-06-25 06:06:12', NULL, '05611754', '1', 'FLORES GUEVARA', '05611754', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR.LOS PINOS 237 VALDIVIEZO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'FLORES', 'GUEVARA', '01/01/1968', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(410, 'LIDIA', '------', '$2y$10$SH10Y7dEK4J9mkX5FVQsx.vzKj0ZQsdliW2hbt3bsRpvXojY9KEgO', NULL, '2021-06-25 06:06:12', NULL, '05386650', '1', 'RENGIFO VILLAVICENCIO', '05386650', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE MAYNAS 538', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'RENGIFO', 'VILLAVICENCIO', '17/10/1972', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(411, 'KARLA VIRGINIA', '------', '$2y$10$jqa2N7QxBKb2LC7uL9JgJuo7GCwlelPKBkhtmzvggYK9TbJDF1P1q', NULL, '2021-06-25 06:06:12', NULL, '45212480', '1', 'PANDURO CASTRO', '45212480', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR.CONDAMINE 517', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'PANDURO', 'CASTRO', '06/05/1988', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(412, 'LICIA LORENA', '------', '$2y$10$2mmWkmr4A4r5IXXxY12LXOHfM1QeFVcMJ5pp2GCG5i1rvn4f9lxau', NULL, '2021-06-25 06:06:12', NULL, '45481539', '1', 'IBERICO DEL AGUILA', '45481539', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE COROT 170', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'IBERICO', 'DEL AGUILA', '05/01/1989', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(413, 'ABDUL', '------', '$2y$10$PchSDtDvksQk4CiHEvm/auZb5KJGfrn8BPfTMN7.n7D6WaTKbJDW2', NULL, '2021-06-25 06:06:13', NULL, '07559512', '1', 'VELA WONG', '07559512', '35', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'DANIEL ALCIDES CARRION', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '3', '1', NULL, '453', 'SI', 'VELA', 'WONG', '05/03/1960', 'Divorciado', 'SIN DATOS', NULL, NULL, NULL),
(414, 'ERIKA', '------', '$2y$10$bZZ8lSRbpF2emTEfJhhXxONQTzHQ2udLL48WTNC12tJbFFT110kU6', NULL, '2021-06-25 06:06:13', NULL, '42725792', '1', 'ACHO GOMEZ', '42725792', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE AGUIRRE 625', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'ACHO', 'GOMEZ', '26/11/1984', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(415, 'JACK ARMANDO', '------', '$2y$10$1A6obaG2W1oP9ZjnW8QPZe9WLicOSSSLnp04NJyqPFRI2mcs/nSRW', NULL, '2021-06-25 06:06:14', NULL, '41825753', '1', 'SANCHEZ TUANAMA', '41825753', '31', NULL, '984558047', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'ANGAMOS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'SANCHEZ', 'TUANAMA', '02/04/1983', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(416, 'POLY CAROLINA', '------', '$2y$10$2MTjspNaEqEBAs4oTNmPCuv151Mf.EZM7LJqkpJcwp65ZhtPMOP36', NULL, '2021-06-25 06:06:14', NULL, '44107966', '1', 'SHAPIAMA PROAÑO', '44107966', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR MARISCAL CASTILLA 706', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'SHAPIAMA', 'PROAÑO', '19/01/1987', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(417, 'KAREN LLANETH', '------', '$2y$10$BABG.vvn6ZQg/l5rKTjN6uEOjwIZ1HaqnikU3meCwk6Exhrh0hcS6', NULL, '2021-06-25 06:06:14', NULL, '42591786', '1', 'CARDENAS TATE', '42591786', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JUAN LUIS IBARRA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'CARDENAS', 'TATE', '20/08/1984', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(418, 'DANNY MANUEL', '------', '$2y$10$0DJFlPYvA8t7JWRzS3bNOOxTbLizuLtg/tZ8fwTGj7VQbwKpoDjG6', NULL, '2021-06-25 06:06:15', NULL, '40785073', '1', 'MORENO PEZO', '40785073', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'MAYNAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'MORENO', 'PEZO', '22/12/1980', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(419, 'LIRIDA', '------', '$2y$10$4JpPDcHFv8tU09zbJSUeo.bu90Cjiu.rCWCkYd8FY7cJ3A2eIwJUm', NULL, '2021-06-25 06:06:15', NULL, '45477812', '1', 'PANDURO ISMIÑO', '45477812', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE COMERCIO 900', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'PANDURO', 'ISMIÑO', '08/12/1988', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(420, 'FREDDY', '------', '$2y$10$LO838V49CffbUbv8wjgWTesQMfS1A1I3xeqaM/DuLVTpSZeZxx5.S', NULL, '2021-06-25 06:06:15', NULL, '43055054', '1', 'DEL AGUILA TUESTA', '43055054', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR.BOLIVAR 415', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'DEL AGUILA', 'TUESTA', '07/11/1983', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(421, 'JULISSA KEYLA', '------', '$2y$10$rf4KQEHbglRMN5r49LIeY.KBKPOkdkKpcP3n9vVlnx9tU9C1E12j6', NULL, '2021-06-25 06:06:15', NULL, '73950546', '1', 'PINARES VARGAS', '73950546', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, '15 DE AGOSTO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'PINARES', 'VARGAS', '28/12/1993', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(422, 'JHONATAN', '------', '$2y$10$toI9BEbCRtRpqa/o9DNHeumhgDyJmtCr41F/FltHSocI6LfOASMri', NULL, '2021-06-25 06:06:16', NULL, '43034044', '1', 'CADENILLAS HUALINGA', '43034044', '31', NULL, '932894328', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE IQUITOS 417', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '21', '4', '2', NULL, '453', 'SI', 'CADENILLAS', 'HUALINGA', '29/05/1985', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(423, 'LEIDY', '------', '$2y$10$5uCkPdolf6b.1HWG2MS8l.M7.ABz5uZGgv.OkzgQxmtb4am3F8jcq', NULL, '2021-06-25 06:06:16', NULL, '05611790', '1', 'BABILONIA VARGAS', '05611790', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'ASENT.H.NATIVIDAD 28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'BABILONIA', 'VARGAS', '24/04/1968', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(424, 'ANITA MARILU', '------', '$2y$10$azPSoEv7gKgAD2MgCgeA.uBdB3gtam78FVv9KYZEYXahDS7hWQdTW', NULL, '2021-06-25 06:06:17', NULL, '41338075', '1', 'GONZALES CRUZ', '41338075', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE CARMETAL 148', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'GONZALES', 'CRUZ', '08/07/1982', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(425, 'CARINA EDITH', '------', '$2y$10$X25FLfaktHtBFK6nbHj1G.HtT1iJpd1M/KRVsGUakGaSVYKnPstqO', NULL, '2021-06-25 06:06:17', NULL, '44487290', '1', 'PANDURO HUAICAMA', '44487290', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE JUAN LUIS IBARRA 422', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '13', '4', '2', NULL, '453', 'SI', 'PANDURO', 'HUAICAMA', '16/06/1983', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(426, 'MILAGROS DEL ROSARIO', '------', '$2y$10$DNTDMjQlpDtt8xR2Zy77kueGLtA.vTm1nn3kdXbCbYJjvZbSMSmC6', NULL, '2021-06-25 06:06:17', NULL, '44616325', '1', 'PEREZ PEZO', '44616325', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR. CONDAMINE 607', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'PEREZ', 'PEZO', '28/09/1987', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(427, 'SILA', '------', '$2y$10$WF8WQytWLvtCu8N2w/hJ9uMAIUz1Q9s2VU6LEZbeFra2gTaEGJxni', NULL, '2021-06-25 06:06:17', NULL, '45635157', '1', 'SAAVEDRA PANAIFO', '45635157', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'MOYOBAMBA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'SAAVEDRA', 'PANAIFO', '16/03/1989', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(428, 'FRANK BRYAN', '------', '$2y$10$JZTm6BLzDUv0W5DgIJgWcuHW7r5GV3m97JGl6pWtpj.8PAeux4vJ2', NULL, '2021-06-25 06:06:17', NULL, '71314664', '1', 'DAVILA NAVARRO', '71314664', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE PROGRESO 818', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'DAVILA', 'NAVARRO', '12/09/1996', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(429, 'GUILLERMO', '------', '$2y$10$VxENgmnmeu4xKfgV9tA5L.NtyCfadkvUpgNMRvtVfZJc2kLTNOeYq', NULL, '2021-06-25 06:06:18', NULL, '41979625', '1', 'BARRERA CORDOVA', '41979625', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR.ARICA 206', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'BARRERA', 'CORDOVA', '24/07/1983', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(430, 'RITA MARIA', '------', '$2y$10$GBxmtniwBmT6E9zROxbngugYGBmPMZv3ysWZY54OfzZUrdlGfJWPy', NULL, '2021-06-25 06:06:18', NULL, '44476638', '1', 'MORENO PINEDO', '44476638', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'DANIEL A CARRION,DANIEL A CARRION', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'MORENO', 'PINEDO', '14/07/1987', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(431, 'ANGHELA VICTORIA', '------', '$2y$10$5BQL6i1LZuZcGJwF90FOUeFmgdn3O0HBAoWxPfhRAbjMT55kgnuRu', NULL, '2021-06-25 06:06:18', NULL, '43306354', '1', 'BERNAL SEPULVEDA', '43306354', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'MAYNAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'BERNAL', 'SEPULVEDA', '09/10/1985', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(432, 'LILIANA', '------', '$2y$10$CG8RgC4CncfMrckQuorJq.0cgdpQzheO523edQNzAKid8HeJy8OJu', NULL, '2021-06-25 06:06:19', NULL, '46944059', '1', 'LOPEZ GARCIA', '46944059', '31', NULL, '966964730', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'MIGUEL GRAU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'LOPEZ', 'GARCIA', '02/03/1991', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(433, 'GISELA', '------', '$2y$10$geFWWUBYiNIdHFQA6Tvyq.ciZPIlFECciNtfxc34xoMb6cGIyT7nO', NULL, '2021-06-25 06:06:19', NULL, '46469041', '1', 'PINEDO DAVILA', '46469041', '31', NULL, '959654113', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'TARAPOTO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'PINEDO', 'DAVILA', '02/05/1990', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(434, 'ZULI GABRIELA', '------', '$2y$10$cTggA8ZPjpPU7mSCy3ZVaO2eQg0gbDE2F7kI/wM3torvEo7cSjl5C', NULL, '2021-06-25 06:06:19', NULL, '70366096', '1', 'MENDOZA SALDAÑA', '70366096', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR.MIRAFLORES 665', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'MENDOZA', 'SALDAÑA', '29/01/1993', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(435, 'WILGER', '------', '$2y$10$o6hnu8bNP6uGvc44U3E.quKphZpuE58W0ZfWuLPeLp755//hBbqjC', NULL, '2021-06-25 06:06:19', NULL, '42754430', '1', 'SAAVEDRA ARMAS', '42754430', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CASERIO SAN JUAN DE CUMBAZA S/N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '21', '4', '2', NULL, '453', 'SI', 'SAAVEDRA', 'ARMAS', '28/09/1984', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(436, 'ALBERTO', '------', '$2y$10$Dac/VVvGfICiDPva8Lc8b.MdUzWfxUbqH4YzCwoUbmQcay8TX58ia', NULL, '2021-06-25 06:06:19', NULL, '47498027', '1', 'PEZO ANGULO', '47498027', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'D. A. CARRION', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'PEZO', 'ANGULO', '29/12/1992', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(437, 'KAREN PATRICIA', '------', '$2y$10$6RVrb4Ot6pI5ura3SXoYlegZhBg2E28KLOwEhp6CKeqnV.yTmXHbq', NULL, '2021-06-25 06:06:20', NULL, '45914774', '1', 'GUEVARA ORDOÑEZ', '45914774', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE LA LORETANA 396', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'GUEVARA', 'ORDOÑEZ', '12/06/1989', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(438, 'LIER', '------', '$2y$10$0X8h5VOTxHtkRqNIu/P0wecShkQwryIOWpuybiQGgvS.31.3KX1Ra', NULL, '2021-06-25 06:06:20', NULL, '44338075', '1', 'DEL AGUILA CURINUQUI', '44338075', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'BARRIO MIGUEL IRIZAR CAMPOS 239', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'DEL AGUILA', 'CURINUQUI', '19/09/1986', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(439, 'PERCY', '------', '$2y$10$TqWciQ4fjOJrHpPeVzv5gOp3JKlo0fJr4MVO2msVMrJ3BRDx.Ez4q', NULL, '2021-06-25 06:06:20', NULL, '05618323', '1', 'PAREDES MANGIA', '05618323', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'GIRASOLES 125', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'PAREDES', 'MANGIA', '10/06/1973', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(440, 'AIDA LUZ', '------', '$2y$10$Qe56.U6FjT6Ml3lKrGhYfO8mnaUUrnQZsepVz.PnyhKUzfSKMcmC2', NULL, '2021-06-25 06:06:21', NULL, '46197429', '1', 'GARCIA FACHIN', '46197429', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, '28 DE JULIO 1586 CERCADO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'GARCIA', 'FACHIN', '24/02/1990', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(441, 'MARIO LUIS', '------', '$2y$10$C4xR3PB9chJ3Sz8i0ra9iegQepj8HJwR5i95y2olMObMekE8/PaNS', NULL, '2021-06-25 06:06:21', NULL, '42525535', '1', 'PEREZ SILVA', '42525535', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, '06 DE FEBRERO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'PEREZ', 'SILVA', '11/06/1984', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(442, 'SILVIA GABRIELA', '------', '$2y$10$5mkBtbn1u5bAHnv90W4C1.IFJt3hz4eLMWFT0HDiDtFE.mKB6KI1i', NULL, '2021-06-25 06:06:21', NULL, '40880188', '1', 'AYALA MORAN', '40880188', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'ASENT.H.JOSE A.QUIÑONES A-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'AYALA', 'MORAN', '03/04/1981', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(443, 'DELDITH', '------', '$2y$10$WPqgNye1NYme/kjtPMP6ZeFBqV2dOg.go2CvOVxSoZvYmR65fs9Tq', NULL, '2021-06-25 06:06:21', NULL, '46319599', '1', 'BRICEÑO PIÑA', '46319599', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'PSJ.LOS ANGELES 105', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'BRICEÑO', 'PIÑA', '22/03/1990', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(444, 'ANTHONY EDWARD', '------', '$2y$10$MZ4qGTlZPznrc/mYGnXaoO2IRRfY5woA1u.eKBrT/L2.SGe4CP9gO', NULL, '2021-06-25 06:06:22', NULL, '46003113', '1', 'PEÑA LOPEZ', '46003113', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE LIBERACION 240 SECADA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'PEÑA', 'LOPEZ', '15/05/1989', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(445, 'ALDO ENRIQUE', '------', '$2y$10$.SDp08w72OSlxckcvsKf4uD/QTySQ5nbRtJrWN6H.7bFdJZ2moR9y', NULL, '2021-06-25 06:06:22', NULL, '45774649', '1', 'PINCHI FLORES', '45774649', '36', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'SAN MARTIN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '7', '1', NULL, '453', 'SI', 'PINCHI', 'FLORES', '29/04/1989', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(446, 'LUZ ESTHER', '------', '$2y$10$MQv6Y3KoiD44Qn6R809wAOis4fuTSxF9cG0xpt24GEtRrYepkqA22', NULL, '2021-06-25 06:06:22', NULL, '43283827', '1', 'CEDANO DEL AGUILA', '43283827', '31', NULL, '945265427', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, '15 DE AGOSTO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'CEDANO', 'DEL AGUILA', '06/10/1985', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(447, 'FLAVIO JESUS', '------', '$2y$10$d8qJ8vh0ceVaeG8I7aYIFOazGZkOTCY0DIxxImVdfBO6Y6.kQa.gW', NULL, '2021-06-25 06:06:23', NULL, '45506127', '1', 'PEREZ PEZO', '45506127', '31', NULL, '981735752', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'URB PALMERAS D-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '8', '4', '2', NULL, '453', 'SI', 'PEREZ', 'PEZO', '17/01/1989', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(448, 'RAUL', '------', '$2y$10$W9vJOmb5f.TOXdRGH5jDredgjJih6Sh.lTbcc9xSaMOgEih0FZDUm', NULL, '2021-06-25 06:06:23', NULL, '42203315', '1', 'ROJAS ROMERO', '42203315', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'ASENT.H.SANTA MARIA MZ.C-1 LT.14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '8', '4', '2', NULL, '453', 'SI', 'ROJAS', 'ROMERO', '03/11/1983', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(449, 'JOSUE', '------', '$2y$10$JVLj3nqsv8quayQp4hIrQOsrJTvrvOZig5EYARqHuaaA2Q7wyOwgi', NULL, '2021-06-25 06:06:23', NULL, '05374743', '1', 'PACAYA TENAZOA', '05374743', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'LORETO 1495', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'PACAYA', 'TENAZOA', '16/02/1974', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(450, 'CESAR EDUARDO', '------', '$2y$10$bd0tZtijX0skbdN2wd3WgesRDURnKA9xiis4IDl9LGD.xTqm0.aoG', NULL, '2021-06-25 06:06:23', NULL, '40880158', '1', 'TORERO DEL CASTILLO', '40880158', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'ALFONSO UGARTE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '13', '4', '2', NULL, '453', 'SI', 'TORERO', 'DEL CASTILLO', '23/03/1981', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(451, 'LITHO THESSEO', '------', '$2y$10$08j5WaMwK4AD8IK31HdABOArXyypGWUS28oWjvgqD/RShuDel6iJ.', NULL, '2021-06-25 06:06:24', NULL, '41850965', '1', 'ALEGRIA RODRIGUEZ', '41850965', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'MALECON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '8', '4', '2', NULL, '453', 'SI', 'ALEGRIA', 'RODRIGUEZ', '01/07/1983', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(452, 'GRACIELA JANET', '------', '$2y$10$aM1/Su9j8NVo.lqmf3niS.so/7UmvJuy7QvAK9saFIhubzXyW5.DG', NULL, '2021-06-25 06:06:24', NULL, '42476869', '1', 'CHOZO REATEGUI', '42476869', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, '29 DE MAYO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'CHOZO', 'REATEGUI', '04/07/1984', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(453, 'EMILIA EDITH', '------', '$2y$10$Gg.G6csL2lP5v7kqGGYv/e5c5Jes4u90Ix4h7QRZI6IjVFjWiNQHy', NULL, '2021-06-25 06:06:24', NULL, '41522041', '1', 'GONZALES MONTENEGRO', '41522041', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'LAS COMPUERTAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'GONZALES', 'MONTENEGRO', '01/11/1982', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(454, 'DELIA ROSAURA', '------', '$2y$10$MSxw1pGe3OpPdcJqZTP.Mep2WdB.Cgj2eMJUX4xPwXB0W8dvHa6Vi', NULL, '2021-06-25 06:06:25', NULL, '43884226', '1', 'GARAZATUA ORBE', '43884226', '31', NULL, '959080415', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR.ANGAMOS 202', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'GARAZATUA', 'ORBE', '25/09/1986', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(455, 'LILIANA', '------', '$2y$10$ToIWYS3JW3EFk3yWSj5zzeFS65hiJkWheP4AObJikwU.orFSD13Fm', NULL, '2021-06-25 06:06:25', NULL, '40889566', '1', 'ORBE IÑAPI', '40889566', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JOSE OLAYA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'ORBE', 'IÑAPI', '11/02/1981', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(456, 'YERI ESTHER', '------', '$2y$10$mfncmHycS/48vXJ.49WM4.VQVI13Cfn7ohCzzR0GpSUsuudOI6Ch2', NULL, '2021-06-25 06:06:25', NULL, '71514690', '1', 'MACEDO CÁRDENAS', '71514690', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR. VICTOR MANUEL GONZALES PAJARES SN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'MACEDO', 'CÁRDENAS', '12/05/1992', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(457, 'LIZBETH', '------', '$2y$10$ukyfR4/NJGyPjyW5JlOmkuvoOMH42KMgxQWBO8vREcpR6r97OeiEG', NULL, '2021-06-25 06:06:25', NULL, '42159651', '1', 'SANCHEZ LANARO', '42159651', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE JOSE OLAYA 296 - P.J. VARGAS GUERRA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'SANCHEZ', 'LANARO', '08/02/1982', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(458, 'YOLLY', '------', '$2y$10$FWcwTOFT.pTMWGO0YGmUR..W3JDMFByhVWhvSC/.JZDcsoi7Wmf6e', NULL, '2021-06-25 06:06:26', NULL, '71108667', '1', 'PINEDO PINEDO', '71108667', '31', NULL, '950568432', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CRNEL. FRANCISCO BOLOGNESI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'PINEDO', 'PINEDO', '28/03/1991', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(459, 'DANI MERLY', '------', '$2y$10$F.ZIo3bW/iTUkNqWMvfyBuuG1FSSsb.nGqpdZAPp7wqdJMYkvAHtC', NULL, '2021-06-25 06:06:26', NULL, '47214073', '1', 'CANAQUIRI YUYARIMA', '47214073', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'ATANASIO JAUREGUI NRO A14-22 MZ A14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'CANAQUIRI', 'YUYARIMA', '28/05/1992', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(460, 'NELLY', '------', '$2y$10$vl1dnzc0xaUUrZui3xNJbOkLuvOllBzGIeY60BARZ53.uBvdf9j3i', NULL, '2021-06-25 06:06:27', NULL, '05618473', '1', 'PAIMA FLORES', '05618473', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE LA FLORIDA 287', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'PAIMA', 'FLORES', '31/01/1975', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(461, 'GRETTY', '------', '$2y$10$KvM4ps7FGfME5CFmBtqRd.m.mum17DZiq9JFjIzimoHCPU7VVoX2m', NULL, '2021-06-25 06:06:27', NULL, '05618777', '1', 'FLORES VALERA', '05618777', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE JOSE GALVEZ 226', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'FLORES', 'VALERA', '26/04/1975', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(462, 'LERY', '------', '$2y$10$mA9dx.vUSdeLLQVvmQbf8e1H.ddyyk3Cj2vdFzCh7Koe9RGsC3.rO', NULL, '2021-06-25 06:06:28', NULL, '41992173', '1', 'SAAVEDRA ACOSTA', '41992173', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE ZAMORA 607', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'SAAVEDRA', 'ACOSTA', '23/06/1983', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(463, 'SANDRA ISABEL', '------', '$2y$10$o1Arz/WGBF2WTgYHxGTsZuMUMOnRutz8MIfwwGyXt8ulrsi6tzfeK', NULL, '2021-06-25 06:06:28', NULL, '41108760', '1', 'ALVIS TANGOA', '41108760', '33', NULL, '987057654', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'GENERAL VELARDE 1190 3ER.PISO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'ALVIS', 'TANGOA', '16/02/1981', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(464, 'MARY CRUZ', '------', '$2y$10$JYZMg1Rr/SYzzAIWdjFi6.uy./DZz8KJC9nVhr2goNipR7Ma1m3Oe', NULL, '2021-06-25 06:06:28', NULL, '45485998', '1', 'PORTOCARRERO TAFUR', '45485998', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'TUPAC AMARU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'PORTOCARRERO', 'TAFUR', '01/12/1988', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(465, 'MYLY', '------', '$2y$10$92Zl8ld.fwYDTsN7Lab/Ver7qb1fPaUWeYwMuMLA/A99.NQaGqNT6', NULL, '2021-06-25 06:06:28', NULL, '45550154', '1', 'PINEDO RUIZ', '45550154', '33', NULL, '503378', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR. SARGENTO LORES 131', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'PINEDO', 'RUIZ', '26/11/1988', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(466, 'JORGE ELIAS', '------', '$2y$10$l6B6R9BJWNwNeYROwDKnOeUpFX0in4Sz17/EJ1g1VU.gJGSTQuTfq', NULL, '2021-06-25 06:06:29', NULL, '70077661', '1', 'GUEVARA GARCIA', '70077661', '31', NULL, '921260920', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'LAS MALVINAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'GUEVARA', 'GARCIA', '10/03/1989', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(467, 'ELINA', '------', '$2y$10$P9i2D4nZBbCsj.Q01oaCoejKs6tw/oFPYiPJCQqrLBW7Pya4vfiXy', NULL, '2021-06-25 06:06:29', NULL, '40062346', '1', 'PEÑA GARCIA', '40062346', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE AREQUIPA 672 SECTOR DRAGA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'PEÑA', 'GARCIA', '25/01/1979', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(468, 'MAURICIA ELIZETH', '------', '$2y$10$LtIsZs5CkzuUvku.ttYjQe48khtIqA5V3DSDXiek./OWKWkMSPcUi', NULL, '2021-06-25 06:06:29', NULL, '47585834', '1', 'TINEO TINEO', '47585834', '33', NULL, '995654183', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'LAS FLORES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'TINEO', 'TINEO', '10/11/1992', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(469, 'DULMA', '------', '$2y$10$g1MRlgn43kBO0GRE3xmy6es3I2H0aQk0g7GEsi5mK6zmEjWulif3G', NULL, '2021-06-25 06:06:30', NULL, '44522718', '1', 'RAMIREZ CHASNAMOTE', '44522718', '31', NULL, '959287236', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE JUAN PRIMO RUIZ 444 - B. LA LOMA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'RAMIREZ', 'CHASNAMOTE', '11/06/1987', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(470, 'MARINA ISABEL', '------', '$2y$10$KiLQv0tXirs.MpzSM/Kl8.doFFMebr2jbSi6sxJMYpknW9Q7l0xZG', NULL, '2021-06-25 06:06:30', NULL, '17528879', '1', 'MUSAYON TABOADA', '17528879', '31', NULL, '979196555', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'AV.AUGUSTO B.LEGUIA 120', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'MUSAYON', 'TABOADA', '20/02/1960', 'Casado', 'SIN DATOS', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `nombre`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `usuario`, `estado`, `apellidos`, `nro_documento`, `cargo`, `avatar`, `telefono`, `glosa`, `idtipo`, `ruc`, `razon_social`, `registro`, `direccion`, `ubicacion`, `vendedor`, `contacto`, `condicion_pago`, `usu_licencia`, `idcliente`, `cabecera_color`, `footer_color`, `menu_dark`, `menu_colapsible`, `cabecera_dark`, `cabecera_fija`, `cabecera_fondo_ocultar`, `footer_dark`, `footer_fija`, `footer_ocultar`, `idempresa`, `idusuario`, `idestado`, `iddocumento`, `idzona`, `titulo`, `cod_alterno`, `id_codigo_alterno`, `apertura_legajo`, `url_imagen`, `area_trabajador`, `situacion_laboral`, `regimen_laboral`, `SEXO`, `codigo_pliego`, `validado_reniec`, `apellido_paterno`, `apellido_materno`, `fecha_nacimiento`, `estado_civil`, `apellidos_casada`, `id_cargo`, `email_profesional`, `contacto_id`) VALUES
(471, 'MELODY VANESSA', '------', '$2y$10$4HNSCrQkm3ONyLOnVS8ltezrhgLVWo2I37A8T0v3kTl.9QvNtHZ2G', NULL, '2021-06-25 06:06:30', NULL, '44795369', '1', 'VASQUEZ JIMENEZ', '44795369', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'SIN DATOS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'VASQUEZ', 'JIMENEZ', '25/05/1987', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(472, 'KAREN NATALY', '------', '$2y$10$0pDtGqChvfxgnV5eKeljsugOdpmJ3ZJys9Ogrl4AHV8s1B085mida', NULL, '2021-06-25 06:06:30', NULL, '47502023', '1', 'CHUMBES MEDINA', '47502023', '33', NULL, '012386280', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'BOLOGNESI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'CHUMBES', 'MEDINA', '15/12/1991', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(473, 'LILIANE JIMENA', '------', '$2y$10$BD7MWVzz0.F6YbD/Hm0Xmerxy6ZhOmZkp2/SYBlDpEUYIp/S2jH2q', NULL, '2021-06-25 06:06:31', NULL, '71252665', '1', 'SAAVEDRA VASQUEZ', '71252665', '31', NULL, '948484298', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR. FRANCISCO IZQUIERDO RIOS 620', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'SAAVEDRA', 'VASQUEZ', '25/08/1991', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(474, 'SEGUNDO WILTER', '------', '$2y$10$B1Zu9iM92/QK3EsZgfcFgegMQEsMl4fGJELffn3eqrD/luXmFGgsy', NULL, '2021-06-25 06:06:31', NULL, '42922332', '1', 'SALAS FATAMA', '42922332', '31', NULL, '978122779', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'PSJ. 06 DE SETIEMBRE 128', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'SALAS', 'FATAMA', '29/03/1985', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(475, 'DORIS', '------', '$2y$10$6ZrVcGnwz2pjLE0IbLgdFOZEznsXZguFSNsMoFkRK5W0yH8F1/opK', NULL, '2021-06-25 06:06:31', NULL, '46245221', '1', 'AREVALO MEGO', '46245221', '31', NULL, '942108280', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'BOLOGNESI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'AREVALO', 'MEGO', '13/12/1989', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(476, 'NIEVES MILAGROS', '------', '$2y$10$LhXi.KoJUjmw42M7/zylpOselUjNYW65dNAEUU4NHPTuoyiM6wdx6', NULL, '2021-06-25 06:06:32', NULL, '44995443', '1', 'MENDOZA SILVA', '44995443', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CH VIRGEN DE LAS NIEVES 7A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'MENDOZA', 'SILVA', '30/01/1988', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(477, 'DIANA', '------', '$2y$10$QtNk4CxU24ldE6zZ3KQG9elj5t9/qAPgYa2wh3Xl5CAqPHe1J4diy', NULL, '2021-06-25 06:06:32', NULL, '43062753', '1', 'TAFUR TAPULLIMA', '43062753', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR.PROGRESO 817', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'TAFUR', 'TAPULLIMA', '12/07/1985', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(478, 'JULIANA', '------', '$2y$10$bfGjUfWmaKe10oeF9xOzlOGuSHVP9cKBzdpHiJhkxvkuT3cvkgZR.', NULL, '2021-06-25 06:06:32', NULL, '05631566', '1', 'HUAINACARI NORIEGA', '05631566', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'SIN DATOS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'HUAINACARI', 'NORIEGA', '20/06/1978', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(479, 'BETTHI NERILUZ', '------', '$2y$10$QuY.ummT5Z6ipcVS4B9HruM9/HB1TRF5ig2zY0SnkxlJsSrXg4olO', NULL, '2021-06-25 06:06:33', NULL, '45477800', '1', 'MARICHIN OLORTEGUI', '45477800', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'SIN DATOS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'MARICHIN', 'OLORTEGUI', '08/11/1988', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(480, 'ROY CHRISTIAN', '------', '$2y$10$h3hkv52g90w69OTdygWjwuDzmNRSS2JEuocFnHLX8VQqFO3mKvQza', NULL, '2021-06-25 06:06:33', NULL, '44210532', '1', 'CAMPOS REQUEJO', '44210532', '33', NULL, '969656905', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'URB.C.ARAUJO C-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'CAMPOS', 'REQUEJO', '25/02/1987', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(481, 'ANA ORFA', '------', '$2y$10$bhra2chijWEu22wfoG/K0uYRTBEbC2154gPQnXUPm1i.CVocwN6EK', NULL, '2021-06-25 06:06:33', NULL, '41894392', '1', 'HURTADO REQUEJO', '41894392', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE CHINCHAYSUYO S/N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'HURTADO', 'REQUEJO', '25/06/1983', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(482, 'KETY ROSELY', '------', '$2y$10$4oCbkojRQTFqxA9SmI.I/Ol4cIQifc.YsmhyRzIrOsn6YgxiE70Ne', NULL, '2021-06-25 06:06:33', NULL, '42656395', '1', 'GUERRERO CALDERON', '42656395', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR.LA ESPERANZA S/N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'GUERRERO', 'CALDERON', '10/12/1979', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(483, 'ELIA TERESA', '------', '$2y$10$DXjNNWEYPfdvI5qZPTKYN.yRn4RF.RivP8COLbdvMJZbky0U4R4Yu', NULL, '2021-06-25 06:06:34', NULL, '48340440', '1', 'CARO GALLARDO', '48340440', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'DANIEL ALCIDES CARRION', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'CARO', 'GALLARDO', '13/04/1994', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(484, 'ELDER AARON', '------', '$2y$10$5EtvMgsXry0uPdC1L./JC.qxwJFAuDCjm4YoyTikXcJSfZqc5WYQa', NULL, '2021-06-25 06:06:34', NULL, '43590272', '1', 'RODRIGUEZ GALVEZ', '43590272', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CORONEL PORTILLO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'RODRIGUEZ', 'GALVEZ', '16/05/1986', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(485, 'KARLA CAROLA', '------', '$2y$10$PJp4chgStVd4/2AOO8cs7Ob.34/AWlmA3GDDMwlOeccQzDLCym7kK', NULL, '2021-06-25 06:06:34', NULL, '47381623', '1', 'PANDURO SAJAMI', '47381623', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'PROL TRUJILLO 12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'PANDURO', 'SAJAMI', '20/04/1991', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(486, 'LIZ INGRID', '------', '$2y$10$1NcVjb9xwWO0ndCcSoWgqOZcplOR2PpLfvBoi/dnhVQSc29Zd.o66', NULL, '2021-06-25 06:06:34', NULL, '46592777', '1', 'RODRIGUEZ UPARI', '46592777', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JORGE CHAVEZ 403 LT. 21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'RODRIGUEZ', 'UPARI', '29/10/1990', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(487, 'DIANA', '------', '$2y$10$A9wJv2Eaz6tOiSl.Tvc67utUMlSb9Xl3AUacHYzCEGcnMV2lqqWs2', NULL, '2021-06-25 06:06:35', NULL, '44883344', '1', 'CACHIQUE CHUJUTALLI', '44883344', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CONDAMINE MZ.01 LT.06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'CACHIQUE', 'CHUJUTALLI', '05/02/1988', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(488, 'JANETH DEL CARMEN', '------', '$2y$10$HOSYhJFRtWG8NR6/gPXQ2OPGJjGjRoc.FDB7/lrhUmsSOmdYOWqYy', NULL, '2021-06-25 06:06:35', NULL, '42798273', '1', 'DAVILA TUANAMA', '42798273', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'PROLONG LIBERTAD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'DAVILA', 'TUANAMA', '16/01/1985', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(489, 'FRANZ', '------', '$2y$10$d6yYvS7c7Sg.QyMSB9qn2u3OD4xIpWxrgQu0zEQzQnRI9s/XRSNPq', NULL, '2021-06-25 06:06:35', NULL, '44674279', '1', 'DAVILA LOPEZ', '44674279', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CORONEL PORTILLO 1018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'DAVILA', 'LOPEZ', '18/05/1986', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(490, 'PERCY JAIME', '------', '$2y$10$DRlvCpanLNcw8LdG9kSSy./atX7e81O89XZQh8UGXbb6/kd1gx3.q', NULL, '2021-06-25 06:06:35', NULL, '74243049', '1', 'PEREZ SEOPA', '74243049', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'PUCALLPA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'PEREZ', 'SEOPA', '15/01/1995', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(491, 'OLINDA', '------', '$2y$10$nyvcO9uJ/edksfYn0IrrsOHfQlKjgheKg0B35tj.lGcW9nKBc0tJ6', NULL, '2021-06-25 06:06:36', NULL, '43467486', '1', 'TANGOA RIOS', '43467486', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, '15 DE AGOSTO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'TANGOA', 'RIOS', '25/02/1986', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(492, 'MARFI', '------', '$2y$10$Oo9xOEWYBUOQvZY9f60CWOv63hQueKTyiX.kw5Cm5asiVe/M5QWNu', NULL, '2021-06-25 06:06:36', NULL, '05631036', '1', 'PAREDES CORAL', '05631036', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'LOS OLIVOS 125 COOP TAYACAJA MZ H', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'PAREDES', 'CORAL', '01/08/1976', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(493, 'JHEFFERSON DARIEL', '------', '$2y$10$vX5WpuqCrxL4Xcy74Z9QAOjxm5uymMQRB.1ENjIg2wC67MUr4Hv8S', NULL, '2021-06-25 06:06:36', NULL, '70298100', '1', 'QUEVARE ACHO', '70298100', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CAL LAS AMERICAS 504', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'QUEVARE', 'ACHO', '17/05/1992', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(494, 'LUCAS', '------', '$2y$10$uvo1vNY5H73EBD.asJ4jj.ZMtbyZwd0XRJEYd2sxkIaVXuA0IHM/W', NULL, '2021-06-25 06:06:36', NULL, '71819164', '1', 'PINEDO SINTI', '71819164', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE LAS PALMERAS MZ B LT 6 BARRIO SANTA ANITA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'PINEDO', 'SINTI', '01/10/1993', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(495, 'BLANCA JUSTINA LEONOR', '------', '$2y$10$YRrCWvaCjqLYd40Eo8KTpO2K21.1n8..74Oap/rPMJABFuiW/3EJG', NULL, '2021-06-25 06:06:36', NULL, '45573227', '1', 'SALDAÑA ASPAJO', '45573227', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE GARCILAZO DE LA VEGA 611', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'SALDAÑA', 'ASPAJO', '12/02/1989', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(496, 'MARLITH', '------', '$2y$10$Qd34iqYrzYSIoK0KcnABaue78pcXw0/ufAiTJ1/WsyYLgoXCXJvYq', NULL, '2021-06-25 06:06:37', NULL, '43098767', '1', 'CORAL TAPULLIMA', '43098767', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'REVOLUCION 1323', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'CORAL', 'TAPULLIMA', '11/08/1985', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(497, 'KARINA LIZET', '------', '$2y$10$28V5NXY/VgA5CerE/UL1Due/Kei1T18ZVieYhkj1BST1glXfcwwpK', NULL, '2021-06-25 06:06:37', NULL, '43750459', '1', 'SANDOVAL PEREZ', '43750459', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'TUPAC AMARU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'SANDOVAL', 'PEREZ', '11/07/1986', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(498, 'HIRASITH', '------', '$2y$10$3iyMdA/6c.f98CK0Q0wmFeJTQjy32.qgbQElNKDudMeB6Cbjq6Wja', NULL, '2021-06-25 06:06:37', NULL, '42289959', '1', 'PIZANGO TAPULLIMA', '42289959', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'AGUIRRE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'PIZANGO', 'TAPULLIMA', '02/04/1982', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(499, 'ALDILBERTO VICTOR EDGARDO', '------', '$2y$10$0QsL.B398YRWe1hl4OgMAOiM4hXqfQF1oWrMu996iy5gckOETAY7G', NULL, '2021-06-25 06:06:37', NULL, '48275215', '1', 'TAPULLIMA MARICHIN', '48275215', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'FUNDO SAN JUAN - BANDA DEL RIO HUALLAGA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'TAPULLIMA', 'MARICHIN', '10/05/1994', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(500, 'ZADITH', '------', '$2y$10$6ejHCLORQQU5mqAjHHjRdetlukx8sBFNt9fa.w23sGfq0BLOnZHWq', NULL, '2021-06-25 06:06:38', NULL, '01161298', '1', 'GONZALES TORRES', '01161298', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'MIGUEL GRAU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'GONZALES', 'TORRES', '17/11/1977', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(501, 'CARLOS DAVID', '------', '$2y$10$PAlzPr2OYIZ2nL8sUF5TA.fytiw4234SNOfdj22YU2tNyV1WhVww.', NULL, '2021-06-25 06:06:38', NULL, '42388554', '1', 'PINEDO VILLACORTA', '42388554', '7', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'PROGRESO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '14', '1', '1', NULL, '453', 'SI', 'PINEDO', 'VILLACORTA', '08/03/1984', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(502, 'YIN', '------', '$2y$10$8V6x4dswy28WHR8BS42gnOvoL2hkijoEon4HzY8Rxe/3aSk9Rhzkm', NULL, '2021-06-25 06:06:38', NULL, '41474884', '1', 'CHOY GOMEZ', '41474884', '13', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'SIN DATOS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '1', '3', '1', NULL, '453', 'SI', 'CHOY', 'GOMEZ', '16/09/1982', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(503, 'RUT', '------', '$2y$10$rpsmD/VJeSY6IAUCrd.wTuGNSKKj1NFNdw8k0A.FmPi27idqWyMyK', NULL, '2021-06-25 06:06:38', NULL, '01148428', '1', 'MASQUEZ RUIDIAS', '01148428', '14', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR. BOLOGNESI 691', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '23', '1', '1', NULL, '453', 'SI', 'MASQUEZ', 'RUIDIAS', '13/07/1972', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(504, 'DIANA VANESA', '------', '$2y$10$cbjLvf7MLHhfjYGzH2/T0eSuvgk4joKXeT2jMLzQTcmlHmABNOqK2', NULL, '2021-06-25 06:06:39', NULL, '42351767', '1', 'GUERRA GONZALES', '42351767', '13', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'MARAÑON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '2', '1', '1', NULL, '453', 'SI', 'GUERRA', 'GONZALES', '18/03/1984', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(505, 'BILLY JACK', '------', '$2y$10$K4iRY91msspxA5sa4JYpiufNJVG0VbnPyBAZoHB9zu4CuhU4ENCaO', NULL, '2021-06-25 06:06:39', NULL, '45557436', '1', 'LLERENA ZEGARRA', '45557436', '35', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'PSJ LAS MALVINAS 41 -PUNCHANA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '19', '3', '1', NULL, '453', 'SI', 'LLERENA', 'ZEGARRA', '22/02/1988', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(506, 'FERNANDO', '------', '$2y$10$rADmlQqWcWQOF7TJeZJLc.GxmSo7AJD1pcTc2BiqEQWD2/c0ZkYN.', NULL, '2021-06-25 06:06:40', NULL, '07494172', '1', 'RAMOS ESCALANTE', '07494172', '12', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'URB.SAN BORJA SUR CALLE LOPEZ DE AYALA 1412', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '6', '1', '1', NULL, '453', 'SI', 'RAMOS', 'ESCALANTE', '04/12/1973', 'Divorciado', 'SIN DATOS', NULL, NULL, NULL),
(507, 'ELVIS RUBEN', '------', '$2y$10$SkEm39Ecib9pybcOdOne4eHZmNRuGmQQim4mhAmIXD7koRJwNXeEu', NULL, '2021-06-25 06:06:40', NULL, '46742138', '1', 'HERNANDEZ CORREA', '46742138', '13', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'TUPAC YUPANQUI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '8', '3', '1', NULL, '453', 'SI', 'HERNANDEZ', 'CORREA', '01/12/1991', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(508, 'JESUS ENRIQUE', '------', '$2y$10$Kvz4.mES/ClJybn940gkZOXyJ27PaqC3oe3f02kXVwwp3vJO8eZvi', NULL, '2021-06-25 06:06:40', NULL, '42459567', '1', 'COCHACHIN CAMPOBLANCO', '42459567', '13', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'AV.PEDRO A. VILLON MZ. 170 LT. 23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '8', '3', '1', NULL, '453', 'SI', 'COCHACHIN', 'CAMPOBLANCO', '15/03/1984', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(509, 'FRANCIS HENDERSON', '------', '$2y$10$5rgD8Umy1zw/7qt6FEyt9.Sfi227BRXHynG1GGK6ZXSzfmH9JAEZC', NULL, '2021-06-25 06:06:40', NULL, '43409621', '1', 'HUAMAN GOMEZ', '43409621', '13', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'T VALCARCEL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '6', '1', '1', NULL, '453', 'SI', 'HUAMAN', 'GOMEZ', '08/09/1985', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(510, 'ELMER MARTIN', '------', '$2y$10$dmHiUZBITJQogstadCTnF.idcG3exQ5n2uo82Y0KiJmWuiEs20b12', NULL, '2021-06-25 06:06:41', NULL, '30423313', '1', 'CARNERO CARNERO', '30423313', '13', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'AV.LIMA 416', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '33', '3', '1', NULL, '453', 'SI', 'CARNERO', 'CARNERO', '28/06/1974', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(511, 'CECILIA', '------', '$2y$10$1V7kNlu6cRTCSg.UwdZF0.TlkaFjERcaPGnBh.5nBUWLDe1OLT24a', NULL, '2021-06-25 06:06:41', NULL, '43207556', '1', 'GARCIA GONZALES', '43207556', '7', NULL, '949523376', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JULIO C. RUIZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '6', '1', '1', NULL, '453', 'SI', 'GARCIA', 'GONZALES', '07/10/1985', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(512, 'ELENA', '------', '$2y$10$B/qVpcyOQI9A3b5G3XcQ..ki3bKlz9gH6TQkJoV4L3rM.m0ykpKLm', NULL, '2021-06-25 06:06:42', NULL, '05388233', '1', 'ORTIZ RAMIREZ', '05388233', '30', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'NAPOLEON CHU RIOS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '23', '3', '1', NULL, '453', 'SI', 'ORTIZ', 'RAMIREZ', '04/05/1966', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(513, 'MARIA ELA', '------', '$2y$10$1uPovxCTXdJjHgFGyI8RxOoioHAItXnn3gyca.kALAt66SQD6seNW', NULL, '2021-06-25 06:06:42', NULL, '44475298', '1', 'MONDRAGON FERNANDEZ', '44475298', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CASERIO SANTA ROSA DEL ORIENTE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'MONDRAGON', 'FERNANDEZ', '08/07/1985', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(514, 'ANGELA ROSARIO DEL MILAGRO', '------', '$2y$10$onLuW3BH7gIQPcRkZnNr4.tBTSGqujc9jBZlFFz2feXtQR6n8bYjS', NULL, '2021-06-25 06:06:42', NULL, '47087168', '1', 'SANCHEZ ROJAS', '47087168', '31', NULL, '937669174', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE AYACUCHO 570 C.P.M.GARCES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'SANCHEZ', 'ROJAS', '07/10/1991', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(515, 'JUAN MANUEL', '------', '$2y$10$I9VLdLrG7nC.AcUlAH9VBuVwwTazD0SrS5.apQj7dS5hBWA70h3b.', NULL, '2021-06-25 06:06:42', NULL, '41004079', '1', 'VELA LOZANO', '41004079', '35', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'LOCALIDAD DE ULLPAYACU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '3', '1', NULL, '453', 'SI', 'VELA', 'LOZANO', '06/12/1980', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(516, 'LUPITA ANDREA', '------', '$2y$10$dmkU.QE39alaLKibQ8hbUORs2XwcTPc.RzJREqt.QKbSyjvmhSG2.', NULL, '2021-06-25 06:06:43', NULL, '44024628', '1', 'GARCIA LOPEZ', '44024628', '31', NULL, '948985706', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'URB. LOS ANGELES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'GARCIA', 'LOPEZ', '14/03/1986', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(517, 'ALICIA', '------', '$2y$10$8gEe2umylKcAVR3T2bAwAeD1iiFUvBongFiWLoFTQVE1lVf.BZ.XS', NULL, '2021-06-25 06:06:43', NULL, '10563868', '1', 'ROMERO GUEVARA', '10563868', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JOSE RIERA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'ROMERO', 'GUEVARA', '10/11/1972', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(518, 'ANGELA MARIA', '------', '$2y$10$eWNxLpwE00qIurYaa8pcTu5zrrU7.rH7s7VX.Eojpd6oPvovjf3NS', NULL, '2021-06-25 06:06:44', NULL, '05614016', '1', 'ORTIZ LAULATE', '05614016', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR.SARGENTO LORES 508', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'ORTIZ', 'LAULATE', '05/11/1970', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(519, 'LUISA', '------', '$2y$10$24ZVc1tL5WDaC3L8yb8GT.qLueiTQJnZpVj79JFDIsZqRfAUgwNyW', NULL, '2021-06-25 06:06:44', NULL, '42783134', '1', 'TAPULLIMA CAMPOS', '42783134', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'SAMUEL FRITZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '13', '4', '2', NULL, '453', 'SI', 'TAPULLIMA', 'CAMPOS', '02/01/1985', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(520, 'RAUL ALBERTO', '------', '$2y$10$KqHBxtpkuSVnh3rKYH1f3eJKEw.YzKhZIEf3pd2hhE.ZedysS7Tsi', NULL, '2021-06-25 06:06:44', NULL, '40176232', '1', 'ARTEAGA RENGIFO', '40176232', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE TNTE.CESAR LOPEZ S/N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '13', '4', '2', NULL, '453', 'SI', 'ARTEAGA', 'RENGIFO', '13/03/1976', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(521, 'CLAUDIA VANESSA', '------', '$2y$10$s/TjMsY5as9dnmwKXMgNY.G5cpQImWGdPOrzTNxCSW15T4kWl16Om', NULL, '2021-06-25 06:06:45', NULL, '43664058', '1', 'CAIPO PAREDES', '43664058', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CORONEL PORTILLO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'CAIPO', 'PAREDES', '13/07/1986', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(522, 'ABRAHAM', '------', '$2y$10$.oZfiSiYQPlaEN7VpLT8RuaNOU968AefFaoaAbg/DHthLqnQ0IZPa', NULL, '2021-06-25 06:06:45', NULL, '71540165', '1', 'PEREZ RODRIGUEZ', '71540165', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'DANIEL ALCIDES CARRION 1075', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'PEREZ', 'RODRIGUEZ', '05/07/1996', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(523, 'CESAR AUGUSTO', '------', '$2y$10$bziWyl53YLGnPnmVK3icpOgAZzx.Cw71g29fXvrl5ZbTZHm/FSae6', NULL, '2021-06-25 06:06:45', NULL, '02822576', '1', 'CORONADO CABANILLAS', '02822576', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'MALECON SHANUSI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'CORONADO', 'CABANILLAS', '02/09/1971', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(524, 'ROY ROYERS', '------', '$2y$10$7.QJh3YrbCL2Kxpj4XAXTeuTv7TFRz8gAMQnFIXSsJIPsu6HmLXWG', NULL, '2021-06-25 06:06:46', NULL, '47726765', '1', 'AQUINO RUIZ', '47726765', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JOSE RIERA NRO.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'AQUINO', 'RUIZ', '22/02/1993', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(525, 'ROSA ISABEL', '------', '$2y$10$9CL2OLsSai29Agp4hJg8He5tPHIYDxeqJbYpR0q//6oPCZBlKmMhu', NULL, '2021-06-25 06:06:46', NULL, '05580320', '1', 'QUEVEDO TENAZOA', '05580320', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE LAS AMERICAS 516', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '6', '4', NULL, '453', 'SI', 'QUEVEDO', 'TENAZOA', '22/05/1959', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(526, 'GOLBER MARTIN', '------', '$2y$10$CIwCBund4EPfP0.JR6l4wuzL4bmeZPQ3TrPNjWcEaPM89ElXcak9m', NULL, '2021-06-25 06:06:46', NULL, '45637430', '1', 'BUSTAMANTE NUBE', '45637430', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'DANIEL ALCIDES CARRION', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '13', '4', '2', NULL, '453', 'SI', 'BUSTAMANTE', 'NUBE', '12/02/1988', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(527, 'LILIANA MILAGROS', '------', '$2y$10$fuaH/mr4i9VsDcwtwhdiE.w1tdAzJPqgXb/KR.EoGMJXav9VTn3gq', NULL, '2021-06-25 06:06:46', NULL, '43085474', '1', 'SECLEN GUZMAN', '43085474', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE YOQUE YUPANQUI 1784 CPM. EL BOSQUE I ETAPA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'SECLEN', 'GUZMAN', '09/06/1985', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(528, 'MELIZA', '------', '$2y$10$UwUddqCN5xzNubGe8Ja8XesXsTdcDCTOGcySY/atOhpjtce7EJGiW', NULL, '2021-06-25 06:06:46', NULL, '72801263', '1', 'LACHI RODRÍGUEZ', '72801263', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR. INDEPENDENCIA C- 8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'LACHI', 'RODRÍGUEZ', '14/07/1993', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(529, 'YOLLY KATHERINE', '------', '$2y$10$FTXc89J65AljSfcXyUyn6unlMHiIllHotHFeHcnehKNFpMn2m.WcW', NULL, '2021-06-25 06:06:47', NULL, '45843290', '1', 'MUÑOZ RENGIFO', '45843290', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE HUMBOLT 242', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'MUÑOZ', 'RENGIFO', '21/07/1989', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(530, 'MIGUEL', '------', '$2y$10$hi75axZUkc0T3mxaBJIhpOrQ9GTxmZLv0sUCsOEwQcGOO/04etT1q', NULL, '2021-06-25 06:06:47', NULL, '01061297', '1', 'GOMEZ FLORES', '01061297', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'PSJ LA PAZ 342 SAN ANTONIO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'GOMEZ', 'FLORES', '29/10/1964', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(531, 'ANITA', '------', '$2y$10$aLTDcMy5sFuD1RGm8oiANOTxb5v2jTywMAf2Sc79j2.RT6VvJ7vA6', NULL, '2021-06-25 06:06:47', NULL, '01119283', '1', 'CHANZAPA TORRES', '01119283', '31', NULL, '969525360', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR.JIMENEZ PIMENTEL NRO.836', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'CHANZAPA', 'TORRES', '02/08/1970', 'Divorciado', 'SIN DATOS', NULL, NULL, NULL),
(532, 'GEORGE', '------', '$2y$10$ALjYE1b/BBz05TL9NxKL5O3ci9EKjjaIxAF5RKqPu1l1s3WaHn/cO', NULL, '2021-06-25 06:06:47', NULL, '45484904', '1', 'VEGA WENINGER', '45484904', '33', NULL, '945728456', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE TRUJILLO 1885', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'VEGA', 'WENINGER', '26/09/1988', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(533, 'NOELIA', '------', '$2y$10$bQ2WX6vbwSxs123Ev9I8Ju/RBy5PaddF9E8.uuZ59w25GDfAB9GWi', NULL, '2021-06-25 06:06:48', NULL, '44165027', '1', 'LEIVA VELASQUEZ', '44165027', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'LORETO 380', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'LEIVA', 'VELASQUEZ', '10/03/1987', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(534, 'GREY KANDY', '------', '$2y$10$opXxhQ/IWB022nnRWD9NKOwMBtQN.a2d0eTxhDFTPwaI5KV7hwZqG', NULL, '2021-06-25 06:06:48', NULL, '71241457', '1', 'HUAMAN CORDOVA', '71241457', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'ENRIQUE LEON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'HUAMAN', 'CORDOVA', '19/02/1993', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(535, 'BETSY LUCIA', '------', '$2y$10$iE10rBsDI8bA8c7X1zKOTOr5zTvrQSGZkWQsYaNoVtAaZE1g256vu', NULL, '2021-06-25 06:06:49', NULL, '41695948', '1', 'VALENCIA MAGIPO', '41695948', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'PSJ MUNICHIS 201-ASENT.H.V.UNIVERSITARIA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'VALENCIA', 'MAGIPO', '20/12/1982', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(536, 'MARLENI', '------', '$2y$10$hGRWouhn/ZeZlOVPx8Rg/OvzORrkpC5OenhndISKMWJEfFL3MfZhe', NULL, '2021-06-25 06:06:49', NULL, '46299801', '1', 'LEYVA IZQUIERDO', '46299801', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE ZAMORA S/N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'LEYVA', 'IZQUIERDO', '20/11/1989', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(537, 'DANNY', '------', '$2y$10$zBR209o3QH0kkBpHYIy.K.x1hPazkC5PERQBw7wJVS.tamxHcoGXa', NULL, '2021-06-25 06:06:49', NULL, '47176244', '1', 'CAMUS TORRES', '47176244', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'MAYNAS 545-A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'CAMUS', 'TORRES', '15/05/1990', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(538, 'RINA', '------', '$2y$10$tIC.qHgneQKjg6DcAowx/eBXK9GqHKVeUBqy41J7Lmy2cx5gOfmGi', NULL, '2021-06-25 06:06:50', NULL, '42477717', '1', 'GAVIRIA VALLES', '42477717', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JULIO C. ARANA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'GAVIRIA', 'VALLES', '29/08/1983', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(539, 'GENNI LIDER', '------', '$2y$10$5FSykRVTjzOx9LgtnsMen.AhUwdI2.aub9QQqxaLOPuqoei9DxeIC', NULL, '2021-06-25 06:06:50', NULL, '46724658', '1', 'PINCHI GUERRA', '46724658', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE LA FLORIDA 227', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'PINCHI', 'GUERRA', '21/03/1991', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(540, 'JUAN LUIS', '------', '$2y$10$azRXXszMHSBieW8wMlSGIuMaxRVJkaUDgN1BV6yoPi7cdq.eKwZsW', NULL, '2021-06-25 06:06:50', NULL, '44268286', '1', 'MURRIETA CULQUI', '44268286', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE FRANCISCO BARDALES 810', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'MURRIETA', 'CULQUI', '11/03/1987', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(541, 'OSCAR', '------', '$2y$10$NGuorM6oSSpIQ62qjk7TF.wNsJ8kq6ZpGHPxhnSzMQrkNssapc9r2', NULL, '2021-06-25 06:06:50', NULL, '80584161', '1', 'SANTA CRUZ SANCHEZ', '80584161', '31', NULL, '990679431', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR.EL TERRAZO 1973 INCA MANCO CAPAC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'SANTA CRUZ', 'SANCHEZ', '22/07/1977', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(542, 'JAIME LUIS', '------', '$2y$10$Jquoej8TJjVrlFEp2qfEwOXwtD7GK5x1AtcQ9cFwJmPGPOCW6bj22', NULL, '2021-06-25 06:06:51', NULL, '43777081', '1', 'RAMIREZ VELASQUEZ', '43777081', '31', NULL, '990516711', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR. SAN MIGUEL 531', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'RAMIREZ', 'VELASQUEZ', '25/07/1986', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(543, 'FRANZ GERMAN', '------', '$2y$10$n0F6/Q9rCRAqUjToAcO8q.o68HZH/Zva3WFDLQJlHiOxYlwv9LXZC', NULL, '2021-06-25 06:06:51', NULL, '45212479', '1', 'RODRIGUEZ ROJAS', '45212479', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'ARICA 537', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'RODRIGUEZ', 'ROJAS', '12/07/1988', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(544, 'CISELY YAKORY', '------', '$2y$10$TyTRXlnrwnUuTiGiYY.Btup5ChcQoIU57oc6f7si4KzCNxuWHcjxK', NULL, '2021-06-25 06:06:51', NULL, '45041729', '1', 'REQUEJO COLLANTES', '45041729', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR.UTCUBAMBA C-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'REQUEJO', 'COLLANTES', '23/04/1988', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(545, 'MILTON', '------', '$2y$10$gBy2KsFrt7sJlBUzBhNqV.KEG0Ha4068r1kPPPLxy858NEs9KHeNm', NULL, '2021-06-25 06:06:51', NULL, '44156473', '1', 'SALDAÑA ALVAN', '44156473', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'FITZCARRALD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '13', '4', '2', NULL, '453', 'SI', 'SALDAÑA', 'ALVAN', '30/05/1984', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(546, 'KATY', '------', '$2y$10$Z5XhdkI453r1BRbbYwG2peba3/RwAq9AjBxW8/kCiSTXn0wsSfTYu', NULL, '2021-06-25 06:06:52', NULL, '76154069', '1', 'FACHIN YNUMA', '76154069', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'NAUTA 310 - A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'FACHIN', 'YNUMA', '15/12/1997', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(547, 'EDGARD', '------', '$2y$10$5nApcbeg8dtBr5wU/R9TQOyDN5NQgqjetjmZWvpcJa4pY99DSj5lG', NULL, '2021-06-25 06:06:52', NULL, '40932746', '1', 'CORONADO TAYPE', '40932746', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR.MANUEL GONZALES 1158', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'CORONADO', 'TAYPE', '09/11/1979', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(548, 'JANETH', '------', '$2y$10$G2xJ.f0uQb76E5jUsTI94OzflSab2/.5Cm5NEpnh1HXF1xDyPDBDi', NULL, '2021-06-25 06:06:52', NULL, '44630988', '1', 'CALDERON PAREDES', '44630988', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR. ZAMORA 1110', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'CALDERON', 'PAREDES', '05/03/1987', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(549, 'ATILIO', '------', '$2y$10$rj7xLNGhceI0eyEtUZC4/ewo8sWeQv2SqMA.Dk1CYhNnM.BxIExSe', NULL, '2021-06-25 06:06:53', NULL, '05624734', '1', 'RUIZ TAPULLIMA', '05624734', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CASERIO SANANGUILLO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'RUIZ', 'TAPULLIMA', '24/04/1974', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(550, 'GINA', '------', '$2y$10$YaYEl92d4tOwE9kSlpREtO3axW/Xphy/zp.SARpkBkPpVf/8vZrAq', NULL, '2021-06-25 06:06:53', NULL, '05618754', '1', 'RUIZ TAPULLIMA', '05618754', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'SIN DATOS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '13', '4', '2', NULL, '453', 'SI', 'RUIZ', 'TAPULLIMA', '17/03/1971', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(551, 'ALEX', '------', '$2y$10$U4tmIxKRJsdp9BolaT4AKu7B.oVqlwIbi5BLFrExda5JxzVWFUQXm', NULL, '2021-06-25 06:06:53', NULL, '45987763', '1', 'ARRIETA VELA', '45987763', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR. ATAHUALPA 222', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'ARRIETA', 'VELA', '25/10/1989', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(552, 'RENZO JESUS', '------', '$2y$10$oQo2Q7JKayhMAGe.VL.1seX3AvdhyBiQxO95eUH.GA0fn3M0x/JdC', NULL, '2021-06-25 06:06:53', NULL, '70339165', '1', 'VASQUEZ TORRES', '70339165', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'ECHENIQUE 220-A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'VASQUEZ', 'TORRES', '14/04/1994', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(553, 'ROEL LYNN CLYNTON', '------', '$2y$10$uMRRrv3EUtt8kk.IBT6uBuCx72fadgDcgyCBU7B.mtR3n78J9Xsl.', NULL, '2021-06-25 06:06:54', NULL, '47561364', '1', 'MOZOMBITE GOMEZ', '47561364', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, '15 DE AGOSTO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '18', '4', '2', NULL, '453', 'SI', 'MOZOMBITE', 'GOMEZ', '15/01/1993', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(554, 'ERLY MARITH', '------', '$2y$10$sk9pR.LltuT/.HqQ34Z9Hu8M8UsDMSll/m.1LLnA0uOZyv/rjQeBa', NULL, '2021-06-25 06:06:54', NULL, '42746158', '1', 'CARRASCO FASANANDO', '42746158', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'MAYNAS NRO.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '13', '4', '2', NULL, '453', 'SI', 'CARRASCO', 'FASANANDO', '27/07/1982', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(555, 'ABELINO', '------', '$2y$10$0NK/yi4PYXrtQCmm2Qv7y.gx6Z2XZ/KwnPnI4ynNoyXlim7LQsi6G', NULL, '2021-06-25 06:06:54', NULL, '43941460', '1', 'PISCO ISUIZA', '43941460', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR.TUPAC AMARU MZ.R LT.2 ASENT.H.LA PERLA DE YARINA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'PISCO', 'ISUIZA', '13/03/1971', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(556, 'KATY DEYDI', '------', '$2y$10$pdNdgF9x5mnLb5OwWTwjAO7iJIRWyMh6Z7g8cWf0eIrAGa2UT1.Ty', NULL, '2021-06-25 06:06:55', NULL, '70817203', '1', 'CRUZ TEAGUA', '70817203', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'ALIPIO PONCE S/N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'CRUZ', 'TEAGUA', '23/10/1990', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(557, 'JESSICA', '------', '$2y$10$p0faNxMgVzVpuzjye8HhZe/rCq4GwdlSRIxMA8GiotzJwFlY79Com', NULL, '2021-06-25 06:06:55', NULL, '70463119', '1', 'PISCO TELLO', '70463119', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'REQUIA MZ.09 LT.20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'PISCO', 'TELLO', '04/04/1993', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(558, 'MONICA', '------', '$2y$10$sGhkTrId.9jsBWQbcBLOre4w6qzRRINI4OCuKWo7PVhnpPYByilri', NULL, '2021-06-25 06:06:55', NULL, '46112758', '1', 'PAREDES CORDOVA', '46112758', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'PSJ. YURIMAGUAS 102 ASENT. H. LA VICTORIA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'PAREDES', 'CORDOVA', '03/04/1987', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(559, 'WILFREDO', '------', '$2y$10$.GFAS.0.W1AXUiBd7/MhaOCQQC6eKJ5MZ919h06OrpjvBkYyF48ry', NULL, '2021-06-25 06:06:55', NULL, '44811034', '1', 'FLORES MORI', '44811034', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR.TARATA 417', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'FLORES', 'MORI', '04/08/1987', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(560, 'LUZMILA', '------', '$2y$10$V7KvlMsdduHsYSK7kVn5quZBjhHfbNjpmIeWXaClmVgOkK0Ru0j9W', NULL, '2021-06-25 06:06:56', NULL, '44169027', '1', 'RENGIFO SANTAMARIA', '44169027', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE AVIACION 107', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'RENGIFO', 'SANTAMARIA', '11/12/1984', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(561, 'KATHERINE LIZETH', '------', '$2y$10$chouyQWYtOTAqoMFuMQ2KevTz8rSsTyAgvOMi6OdA6C7HuuoQm9PG', NULL, '2021-06-25 06:06:56', NULL, '73237997', '1', 'GARCIA VIDARTE', '73237997', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE EUGENIO MOYA 477', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'GARCIA', 'VIDARTE', '31/03/1994', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(562, 'CECYL ALMENDRA', '------', '$2y$10$7cfx.hmkw/hGdMtrOe5kkO57mxYr7C3s3Ifw/LuTCV05uiW15b./a', NULL, '2021-06-25 06:06:56', NULL, '70082474', '1', 'PEZO HOYOS', '70082474', '33', NULL, '962943683,930461013', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR.GUEPI 135', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'PEZO', 'HOYOS', '04/09/1991', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(563, 'ALCIDES', '------', '$2y$10$YoxfrbmUVKle2/uizSxQcOQ5GOOckRD7jznWSc05leICjbdi3c9WC', NULL, '2021-06-25 06:06:56', NULL, '708117203', '1', 'HUISA LINO', '708117203', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'ASENT. URB. MUN. GUSTAVO MOHME LLONA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '6', '4', NULL, '453', 'SI', 'HUISA', 'LINO', '06/12/1995', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(564, 'GIOVANA ELENA', '------', '$2y$10$UvIwS868OqX6M9oIe/dX6udLoRC9siZSHP1CpdHjlQjekrmxSlUBy', NULL, '2021-06-25 06:06:57', NULL, '21556375', '1', 'BELTRAN GALA', '21556375', '13', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE JOSE RIERA 154', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '3', '1', NULL, '453', 'SI', 'BELTRAN', 'GALA', '21/02/1976', 'Casado', 'SIN DATOS', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `nombre`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `usuario`, `estado`, `apellidos`, `nro_documento`, `cargo`, `avatar`, `telefono`, `glosa`, `idtipo`, `ruc`, `razon_social`, `registro`, `direccion`, `ubicacion`, `vendedor`, `contacto`, `condicion_pago`, `usu_licencia`, `idcliente`, `cabecera_color`, `footer_color`, `menu_dark`, `menu_colapsible`, `cabecera_dark`, `cabecera_fija`, `cabecera_fondo_ocultar`, `footer_dark`, `footer_fija`, `footer_ocultar`, `idempresa`, `idusuario`, `idestado`, `iddocumento`, `idzona`, `titulo`, `cod_alterno`, `id_codigo_alterno`, `apertura_legajo`, `url_imagen`, `area_trabajador`, `situacion_laboral`, `regimen_laboral`, `SEXO`, `codigo_pliego`, `validado_reniec`, `apellido_paterno`, `apellido_materno`, `fecha_nacimiento`, `estado_civil`, `apellidos_casada`, `id_cargo`, `email_profesional`, `contacto_id`) VALUES
(565, 'LUIS MARTIN', '------', '$2y$10$x8oP6zPe4Mz4cBtf78Bm4OeyoQyfQY0nTFnaCU.LCQ8UYGKjOpgIi', NULL, '2021-06-25 06:06:57', NULL, '46056482', '1', 'MUÑOA DAVILA', '46056482', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'ZAMORA 401', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'MUÑOA', 'DAVILA', '13/11/1988', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(566, 'RAQUEL', '------', '$2y$10$lAJVop7NzQ.c7PshQjcA9eYAdvWL3KF19TOnvm1GcoKq0aZbMM7Te', NULL, '2021-06-25 06:06:57', NULL, '46488357', '1', 'CACHIQUE CHUJUTALLI', '46488357', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE CONDAMINE 915 P.J. 82', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '18', '4', '2', NULL, '453', 'SI', 'CACHIQUE', 'CHUJUTALLI', '26/01/1990', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(567, 'JUANA', '------', '$2y$10$0GQvQr6TlT8NjbaWG245eutsFnwfhuov.qxsCv1gfc0GZYehsFaxu', NULL, '2021-06-25 06:06:57', NULL, '70085084', '1', 'CALLIZAYA GONZALES', '70085084', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'COM. CAMPESINA QUENAJANI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'CALLIZAYA', 'GONZALES', '23/05/1993', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(568, 'JIMI', '------', '$2y$10$nFiucICpUR3Y/vLuewvBDOpXWnBd2h1HGgpfnexMCtqK4FHuOxa2W', NULL, '2021-06-25 06:06:57', NULL, '74558302', '1', 'SANGAMA ISUIZA', '74558302', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CAL COMERCIO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'SANGAMA', 'ISUIZA', '12/09/1997', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(569, 'MARIO SERGIO', '------', '$2y$10$Sa2xlerOZcCb2ufw6/sx4OqEjJOpnvl7Tf8lOvo5pmI.HWM5sukBK', NULL, '2021-06-25 06:06:58', NULL, '71223001', '1', 'YNOUE MENDOZA', '71223001', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'MANUEL AREVALO ORBE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'YNOUE', 'MENDOZA', '20/09/1990', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(570, 'JACSON LENIN', '------', '$2y$10$8QBWBtANutxORnWo8jUmy.14j17QhKZCy6H4zK6W3wubkit45WqmG', NULL, '2021-06-25 06:06:58', NULL, '46740967', '1', 'CHUMBE TELLO', '46740967', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE CONDAMINE 318', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'CHUMBE', 'TELLO', '20/05/1990', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(571, 'JUAN CALVINO', '------', '$2y$10$geduDX/kbjjJWO45aIzLoO5QkkZ/ah14XdWoZ2r4wzx5DFDCYQJSG', NULL, '2021-06-25 06:06:58', NULL, '40772211', '1', 'CORAL MACEDO', '40772211', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE TNTE.CESAR LOPEZ ROJAS S/N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'CORAL', 'MACEDO', '15/12/1979', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(572, 'ANGEL', '------', '$2y$10$VW51Ri5oAQY5x9r0UjS2MO3nH2QZt5wCQyTSS911bFwUoBgLcBHvm', NULL, '2021-06-25 06:06:58', NULL, '40892865', '1', 'PEZO SORIA', '40892865', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE JUAN PRIMO RUIZ 304', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '13', '4', '2', NULL, '453', 'SI', 'PEZO', 'SORIA', '26/03/1981', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(573, 'ERIKA DE BELEN', '------', '$2y$10$MxeuFoptBIQOTI/zHxXn0.Gj1.gdOoXpxd5NPIoJZRjC5VELqp3Qe', NULL, '2021-06-25 06:06:59', NULL, '16790121', '1', 'LOPEZ ZUMBA', '16790121', '31', NULL, '920528754', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE FRANCISCO BARDALES 612', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'LOPEZ', 'ZUMBA', '08/07/1977', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(574, 'SEGUNDO RAFAEL', '------', '$2y$10$Z8TB8E/RibZbhPrNKBhhnusIb8KvH593/oWvkxvYBqnRcQwKTcBJi', NULL, '2021-06-25 06:06:59', NULL, '05581047', '1', 'MACEDO URRELO', '05581047', '35', NULL, '5297723,936306135', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'URB.VENTANILLA ALTA MZ.A4 LT.18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '2', '1', NULL, '453', 'SI', 'MACEDO', 'URRELO', '24/07/1949', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(575, 'CESAR AUGUSTO', '------', '$2y$10$zkqdUSsxNu9uZwKVQcANZOM8Y4p9VoetwWi6HdCXw/6JhE1J9lEnm', NULL, '2021-06-25 06:06:59', NULL, '40683266', '1', 'PANDURO MOZOMBITE', '40683266', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'AGUIRRE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'PANDURO', 'MOZOMBITE', '12/03/1980', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(576, 'JAIRO LUBER', '------', '$2y$10$P60xeAdkR7PgGa8ypuAP0eZyAL0azs0Xqej42eSqGLDyrtm32VBoe', NULL, '2021-06-25 06:06:59', NULL, '40552772', '1', 'TUANAMA GUERRA', '40552772', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE CORONEL PORTILLO 808', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'TUANAMA', 'GUERRA', '23/10/1976', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(577, 'SINDY ELENA', '------', '$2y$10$QO6eU1tvUbRfkUes/0qpGuyHWnrVRJbygHNthzarOPrbfNgGSHn2G', NULL, '2021-06-25 06:06:00', NULL, '72632988', '1', 'SILVA TUESTA', '72632988', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE TARATA 311', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'SILVA', 'TUESTA', '12/09/1997', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(578, 'MILAGRO DE JESUS', '------', '$2y$10$wDkKGj6r7P6odm3x.xkJeeySWUVBgGEvGu8kVLEfLQ7LvdyfD03ZO', NULL, '2021-06-25 06:06:00', NULL, '74589945', '1', 'GARCIA TAPULLIMA', '74589945', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, '17 DE NOVIEMBRE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'GARCIA', 'TAPULLIMA', '07/11/1997', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(579, 'SANDRA', '------', '$2y$10$b6.hTIeaRHErFYI3b0fZ7OwT.T227FQxhIPEi0HgFhQYwf5hrF7iS', NULL, '2021-06-25 06:06:00', NULL, '42659845', '1', 'DEL AGUILA RODRIGUEZ', '42659845', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE LIBERTAD 727', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'DEL AGUILA', 'RODRIGUEZ', '08/10/1984', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(580, 'MERCY', '------', '$2y$10$SlHO683LrUypI.f.MFtTZ.oK.FYR7OZ8UTFkAfwT5LmwK6oEXmpiO', NULL, '2021-06-25 06:06:00', NULL, '45914171', '1', 'PINEDO TUESTA', '45914171', '31', NULL, '948601979', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'ABANCAY 114', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'PINEDO', 'TUESTA', '25/03/1989', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(581, 'MIKY', '------', '$2y$10$4PgbVlO1h0fpQI3gh1FDkOEM38cto38CFCfM5tZyDGF14PizvgrSe', NULL, '2021-06-25 06:06:01', NULL, '45527540', '1', 'VALLES TENAZOA', '45527540', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE DOS DE MAYO 310', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'VALLES', 'TENAZOA', '23/01/1989', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(582, 'BALDOMERO', '------', '$2y$10$G9.Joes1PfBxFgeDy3Iv8eP.JLO0vNbiKyMWbhgyLgBtBE2aIH4Ra', NULL, '2021-06-25 06:06:01', NULL, '74594216', '1', 'MORI YAICURIMA', '74594216', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'LA TRIPLAYERA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'MORI', 'YAICURIMA', '15/02/1995', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(583, 'EINSTEIN ALEXANDER', '------', '$2y$10$MjQNd6gXDlWb7nVAlhNkQOhVKTX9S/KniduKc1P3i7Wl.tA1Moe3G', NULL, '2021-06-25 06:06:01', NULL, '75317185', '1', 'AREVALO PANDURO', '75317185', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'TAROTA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'AREVALO', 'PANDURO', '26/08/1996', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(584, 'EDGAR', '------', '$2y$10$Nul1Ka18Te.gEIU8qZEB3.M.TjFU7YWBAd0EqIT5lnQJHQy9sWZhm', NULL, '2021-06-25 06:06:01', NULL, '44000704', '1', 'ARIRAMA TAPULLIMA', '44000704', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR. JORGE CHAVEZ 512', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'ARIRAMA', 'TAPULLIMA', '27/11/1986', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(585, 'ADITA', '------', '$2y$10$3O4.ZBb1UP.0uadGcsAnu.xudZTuXxtoQc7ixGj7CfQFKe71cozzO', NULL, '2021-06-25 06:06:02', NULL, '47759555', '1', 'SOBERON VELA', '47759555', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'MOHENA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'SOBERON', 'VELA', '06/10/1992', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(586, 'MISAEL', '------', '$2y$10$78Un/NOIg.l0NJUuYZfft.urJW1OKw8uIwaVKHOXgbArkho4iI6r6', NULL, '2021-06-25 06:06:02', NULL, '43063537', '1', 'HUANCI CAHUAZA', '43063537', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CASERIO LEONCIO PRADO RIO HUALLAGA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '13', '4', '2', NULL, '453', 'SI', 'HUANCI', 'CAHUAZA', '15/07/1985', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(587, 'CELIA', '------', '$2y$10$bmsEUyqvthDp7MEvU.cea.YgtFc8Mw7S6XgXVHLYsVsEX2gkfiaFi', NULL, '2021-06-25 06:06:02', NULL, '44248616', '1', 'URIARTE PEREZ', '44248616', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'SIN DATOS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'URIARTE', 'PEREZ', '17/01/1977', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(588, 'JUANA LOURDES', '------', '$2y$10$hjGu8.F.P4fmYvBn/f.IX.l34zNpPTcXrw5q6wt0AOoS3ZHCmCqIu', NULL, '2021-06-25 06:06:03', NULL, '05394769', '1', 'YQUE LACHY', '05394769', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CASERIO SAN PEDRO DEL ESTRENO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'YQUE', 'LACHY', '10/10/1976', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(589, 'MIRI', '------', '$2y$10$NS51OQ0hfMEnHiLEfZ578el6pDdzWiru9/11g7NAQbCA0HtZEh.lC', NULL, '2021-06-25 06:06:03', NULL, '05361701', '1', 'RIOS BUSTOS', '05361701', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'AV.A. JAUREGUI 308', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '12', '4', '2', NULL, '453', 'SI', 'RIOS', 'BUSTOS', '23/12/1972', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(590, 'BUENAVENTURA', '------', '$2y$10$Cfo7PgalF7bY8QlpTgKQB.Qubzu7XL.xADhVtiv6K0dAOOvMtgBnO', NULL, '2021-06-25 06:06:03', NULL, '45326320', '1', 'MARREROS GARCIA', '45326320', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'ESTEBAN DELGADO C-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'MARREROS', 'GARCIA', '08/07/1988', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(591, 'JHONNY MAYK', '------', '$2y$10$HO/jU4AEFak8R8GdK0vycOCI1GUgP5gHCXC1UGc1ziCjvw/sCii5S', NULL, '2021-06-25 06:06:04', NULL, '44895077', '1', 'SORIA CORDOVA', '44895077', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'A. JAUREGUI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'SORIA', 'CORDOVA', '16/02/1988', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(592, 'LILIAN', '------', '$2y$10$Nfq8Hn7NOftCktDOznaPrOisL2t/N7HFsgOjEz/A.6wVCbiJFh4jW', NULL, '2021-06-25 06:06:04', NULL, '46148935', '1', 'MORE MANAHUACO', '46148935', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'SANTA ROSA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'MORE', 'MANAHUACO', '28/01/1990', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(593, 'BACRI', '------', '$2y$10$tmvacLX1cdTkAgZJITOPO.Q1YI3OF2TsvsSbaZq9Z50Vx.FLp1oAq', NULL, '2021-06-25 06:06:04', NULL, '47220000', '1', 'AMARINGO HUAYTA', '47220000', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CL MARIANO MELGAR MZ.A02 LT.02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'AMARINGO', 'HUAYTA', '13/06/1992', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(594, 'ERICA LUCIA', '------', '$2y$10$WzIO28DUD/mwF0F2Jrnwru7ewJ0DykVZqnXy0.cUsdMrzqB/eCVX6', NULL, '2021-06-25 06:06:04', NULL, '47457305', '1', 'DEL POZO ORBE', '47457305', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'TACNA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'DEL POZO', 'ORBE', '11/09/1991', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(595, 'CLAUDIA', '------', '$2y$10$dPnwt2bj0aaFv3Mx7ad/f.Cmm.pkifO8MCk1Eanwqir3mm.haewAa', NULL, '2021-06-25 06:06:05', NULL, '46071986', '1', 'ACHO TARICUARIMA', '46071986', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CL.JORGE CHAVEZ 213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'ACHO', 'TARICUARIMA', '19/08/1989', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(596, 'CLARI EDENITH', '------', '$2y$10$P7HV3F.Bxg1m8W03r4P92uQwOlUsdrPHy2vR8qS.NoPCEh.iuDjaa', NULL, '2021-06-25 06:06:05', NULL, '70825326', '1', 'PUTPAÑA TIHUAIRO', '70825326', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'PUERTO AMERICA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'PUTPAÑA', 'TIHUAIRO', '28/07/1992', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(597, 'DENITH', '------', '$2y$10$tRCxYvkhJApU3ZZOhz4/PuF1vLJ41fyVpJ7Wc5Ikkz8HMrUZuHrRO', NULL, '2021-06-25 06:06:05', NULL, '45251785', '1', 'TAFUR PINEDO', '45251785', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'FLORIDA 529', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'TAFUR', 'PINEDO', '26/07/1988', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(598, 'ALCIDIA', '------', '$2y$10$rux3BvK0cRf7T7tUez3eo..LoHNAvgatgJtXC3COlOmJVf2VuTWey', NULL, '2021-06-25 06:06:05', NULL, '05630129', '1', 'MEZA GRANDEZ', '05630129', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'BUENOS AIRES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'MEZA', 'GRANDEZ', '28/04/1977', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(599, 'ARTURO VIRGILIO', '------', '$2y$10$OmL0Ye/UbyscB91tW62bG.kczNyyeBFEfTHemALOwpPekCrz5vNmi', NULL, '2021-06-25 06:06:06', NULL, '05630550', '1', 'MONTOYA FATAMA', '05630550', '8', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'LAS CASTAÑAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '2', '1', NULL, '453', 'SI', 'MONTOYA', 'FATAMA', '07/09/1975', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(600, 'JOSE LUIS', '------', '$2y$10$GLBfJQwhcdXYf5157JP/G.z/JmuW.OMx933Je7ayh6/lSL5OCWJ7m', NULL, '2021-06-25 06:06:06', NULL, '43599065', '1', 'AREVALO GRANDEZ', '43599065', '31', NULL, '975010662', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR. LOS PROCERES 376', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'AREVALO', 'GRANDEZ', '20/06/1986', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(601, 'ABELARDO', '------', '$2y$10$nmzu6Oee8nG/sG2gC2.eRe0vQY660Nebk7UaZqqiFq8DFdkvh8BoK', NULL, '2021-06-25 06:06:06', NULL, '45591892', '1', 'SILVA QUIROZ', '45591892', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'ATAHUALPA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '8', '4', '2', NULL, '453', 'SI', 'SILVA', 'QUIROZ', '18/11/1988', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(602, 'ELI', '------', '$2y$10$CCjtGC/e2/m7B2LoC8bGIO/CxhA5VjH9t3XGSdjclifGOF5/TO0hG', NULL, '2021-06-25 06:06:06', NULL, '47642616', '1', 'CRUZADO AREVALO', '47642616', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CP. SAN JUAN DE RIO SORITOR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'CRUZADO', 'AREVALO', '13/04/1991', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(603, 'LUCERO ARACELLY', '------', '$2y$10$v0Wl.a9rQJpRYOJFhySmIOZN6b6HZl.lx5QxcrJg7InO3vPqMj4XO', NULL, '2021-06-25 06:06:07', NULL, '47842667', '1', 'ROJALES DIAZ', '47842667', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CAJAMARCA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'ROJALES', 'DIAZ', '02/10/1992', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(604, 'GRIFFITHS SMITH', '------', '$2y$10$fMWEHuqbCJA0V3jhGW.4CeTwgPq4NvxIDY/yLKo55IweuoOYXI20K', NULL, '2021-06-25 06:06:07', NULL, '73083567', '1', 'SHAPIAMA QUINTEROS', '73083567', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CABO A. LEVEAU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'SHAPIAMA', 'QUINTEROS', '17/08/1996', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(605, 'TANIA', '------', '$2y$10$75RIRBd1EYC159ISc6D5nONlifxnFNgB2n.zxvzMZysRCcAeObUy2', NULL, '2021-06-25 06:06:07', NULL, '42171457', '1', 'RIOS MACAHUACHI', '42171457', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE ARICA 1013', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'RIOS', 'MACAHUACHI', '10/01/1984', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(606, 'WALTER ANGEL', '------', '$2y$10$aWTb8vePVEUXziJnf2ZpEOIRsHZHDUq0BRbJnVdekDgYce595IDg6', NULL, '2021-06-25 06:06:07', NULL, '45538992', '1', 'GARCIA TANGOA', '45538992', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CP MUNICHIS BARRIO CENTRAL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'GARCIA', 'TANGOA', '31/10/1988', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(607, 'CALEB', '------', '$2y$10$0AWVBgXkF88mFUtQD30UsuF1uRZEQ41XuH/2vIE.Khz5VSW5VJ0kq', NULL, '2021-06-25 06:06:08', NULL, '47429418', '1', 'PASHANASI ROMERO', '47429418', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'SIMON BOLIVAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'PASHANASI', 'ROMERO', '09/03/1990', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(608, 'ROBERTH', '------', '$2y$10$MqTlnLE6nDbMQKoZmz/p9O/xdIfeMH1qAqnUI1s1qjNWnU/..HAli', NULL, '2021-06-25 06:06:08', NULL, '45088418', '1', 'TUESTA SALAS', '45088418', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'BOLIVAR ULT.CDRA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'TUESTA', 'SALAS', '11/05/1988', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(609, 'GILMAR EURICH', '------', '$2y$10$4njbdupval0/9N2Des4mW.qmyTAAatm2vAaqIUcnovHjVaVSatPDO', NULL, '2021-06-25 06:06:08', NULL, '02841577', '1', 'LOPEZ SAAVEDRA', '02841577', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'P.JOVEN CAMPO POLO JR.PERU 112', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '13', '4', '2', NULL, '453', 'SI', 'LOPEZ', 'SAAVEDRA', '29/07/1970', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(610, 'JHONY RICHER', '------', '$2y$10$TuS.Gx7pDhtt26UBu3WX5Ogexw47Z1xJJq302WyLdYfeCU9rD3kaa', NULL, '2021-06-25 06:06:08', NULL, '46592784', '1', 'RIOS DIAZ', '46592784', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE MAYNAS 432A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'RIOS', 'DIAZ', '14/08/1990', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(611, 'MAX KEMY', '------', '$2y$10$8SPp894PFh.VPi0AqnlKyOgP8hVcupdaiHidEBaQ/N9/vVEBgdz3y', NULL, '2021-06-25 06:06:09', NULL, '75807013', '1', 'RAMIREZ MARCOS', '75807013', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'DANIEL ALCIDES CARRION', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'RAMIREZ', 'MARCOS', '27/03/1997', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(612, 'FLOR DE ROSA', '------', '$2y$10$7fpXJtiux3bM8awV.HwDmefijPm1CiCUTEkJ9oKndSM1xS.gG.Yxi', NULL, '2021-06-25 06:06:09', NULL, '76636304', '1', 'RODRIGUEZ TAPAYURI', '76636304', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'PROGRESO S/N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'RODRIGUEZ', 'TAPAYURI', '20/10/1994', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(613, 'KELLY', '------', '$2y$10$JHQNIA.9ik9MEuLs3Ao80O.0BAWq2vSBvsdDB9kvEoIp8wdisZkg.', NULL, '2021-06-25 06:06:09', NULL, '72727116', '1', 'YUPE BOCANEGRA', '72727116', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'PSJ. AEROPUERTO MZ.B LT.11 ASENT.H. LA MOLINA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'YUPE', 'BOCANEGRA', '15/07/1994', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(614, 'JULIO CESAR', '------', '$2y$10$Worc2by1IPClhsDqSKiq5eofKQFZgJOCzEz2CLxzDBfwHODrmdDjm', NULL, '2021-06-25 06:06:10', NULL, '41936904', '1', 'PEREZ RODRIGUEZ', '41936904', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'PROGRESO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'PEREZ', 'RODRIGUEZ', '27/07/1983', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(615, 'PERCY', '------', '$2y$10$xfd1fO0BDDdZ/h700vjYvOdE/4t1.oAKYBXFU8fKyZunG02D5EGvC', NULL, '2021-06-25 06:06:10', NULL, '45354997', '1', 'ROJAS MOZOMBITE', '45354997', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'MALECON PARANAPURA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '10', '4', '2', NULL, '453', 'SI', 'ROJAS', 'MOZOMBITE', '18/10/1988', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(616, 'JHONATAN CALEB', '------', '$2y$10$RQe9ZfgPqr5YHmpMUwgIq.hhbKinXM4p8M/oBBEQzHuZVT0HRHjkm', NULL, '2021-06-25 06:06:10', NULL, '74558267', '1', 'PINEDO AGUILAR', '74558267', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'LA PERLA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '10', '4', '2', NULL, '453', 'SI', 'PINEDO', 'AGUILAR', '07/05/2000', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(617, 'JORGE ARTURO', '------', '$2y$10$E47Uf0yI2PFme1/zwKO6pus46triO5aCX96lDpzJEKr.1m9hmQuAK', NULL, '2021-06-25 06:06:11', NULL, '43941471', '1', 'CARDENAS MORE', '43941471', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR.LA ARENA 965 URB.RESIDENCIA PIURA MZ.E LT.9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'CARDENAS', 'MORE', '24/10/1986', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(618, 'KATTY ROSANA', '------', '$2y$10$9iLMmy6IxlN5Pkl.6AY3KeUclzMxlhHO5l3.XW9.B1IgAyz1GLMwy', NULL, '2021-06-25 06:06:11', NULL, '70816991', '1', 'MURRIETA VILCHEZ', '70816991', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE 6 DE JUNIO - ULLPAYACU S/N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '13', '4', '2', NULL, '453', 'SI', 'MURRIETA', 'VILCHEZ', '17/11/1994', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(619, 'JORGE', '------', '$2y$10$pSGIL.UNMhyDMA37qCnmAOjlOGoagu7x6csPyMF/t5WTm2TASlVAm', NULL, '2021-06-25 06:06:11', NULL, '76778767', '1', 'LOZANO TAPULLIMA', '76778767', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'LA FLORIDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'LOZANO', 'TAPULLIMA', '02/12/1995', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(620, 'TERCERO ARQUIMEDES', '------', '$2y$10$GfsAAUNLCUpbYhL00tVEK.XDHPIThBYQAaKlyd5.Zjxu0e0YG15ti', NULL, '2021-06-25 06:06:12', NULL, '75316277', '1', 'HUAYCAMA AYAMBO', '75316277', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'ARGENTINA MZ. 21 LT. 05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '13', '4', '2', NULL, '453', 'SI', 'HUAYCAMA', 'AYAMBO', '19/12/1999', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(621, 'NEY', '------', '$2y$10$f1kqQB2LhnnLM01EEsDbLOj3lQ7mOhuVDZLSH6bBV9tA/1TBRGTVe', NULL, '2021-06-25 06:06:12', NULL, '41652126', '1', 'CORAL TAPULLIMA', '41652126', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'REPUBLICA DE PANAMA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '13', '4', '2', NULL, '453', 'SI', 'CORAL', 'TAPULLIMA', '08/02/1983', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(622, 'ROSA ISELA KAROLINA', '------', '$2y$10$tPlNLRwb24KMLU9jzkq9cuTgVcAyNJEXUldovZpoRgmKILm/sMnA2', NULL, '2021-06-25 06:06:13', NULL, '62816762', '1', 'SOLAR AYACHI', '62816762', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'SIN DATOS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'SOLAR', 'AYACHI', '05/08/2000', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(623, 'ANGI CAROLINA', '------', '$2y$10$XLKqVwt43b1i.3SvG6iFJ.LJlw2fVvF8xeM3e..ytoup3kPRIzcLe', NULL, '2021-06-25 06:06:13', NULL, '003697375', '1', 'MEJIAS MONTILLA', '003697375', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'PROGRESO 305', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '8', '4', '2', NULL, '453', 'NO', 'MEJIAS', 'MONTILLA', '22/02/1991', 'Soltero', NULL, NULL, NULL, NULL),
(624, 'MERY SOLIVET', '------', '$2y$10$fqb4x4P2KH5Tk6k4UNK1Uen71YOt0XZ/2wyFmbpilAxsNBHcFPHdS', NULL, '2021-06-25 06:06:13', NULL, '002990642', '1', 'MANRIQUE GARCIA', '002990642', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'PROGRESO 305', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '8', '4', '2', NULL, '453', 'NO', 'MANRIQUE', 'GARCIA', '16/06/1989', 'Casado', NULL, NULL, NULL, NULL),
(625, 'JAIRO', '------', '$2y$10$WrRlkqo64r6y/N8dSqfIuuK8Wn3l7671WBgfM4.qKwRc2igxnwwja', NULL, '2021-06-25 06:06:14', NULL, '46473505', '1', 'CARIHUASAIRO CHICHIPE', '46473505', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'PSJ.SANTA ROSA MZ.A LT.04 ASENT.H.PRIMAVERA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'CARIHUASAIRO', 'CHICHIPE', '23/06/1990', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(626, 'JOSE WILFREDO', '------', '$2y$10$83W8N6NnDW5pDvQNVhxwceCMY4G6RznVwxS3mh5P0IEcJsB/c76FS', NULL, '2021-06-25 06:06:14', NULL, '05587276', '1', 'DEL CASTILLO PEZO', '05587276', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'DANIEL ALCIDES CARRION', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '18', '4', '2', NULL, '453', 'SI', 'DEL CASTILLO', 'PEZO', '16/05/1966', 'Divorciado', 'SIN DATOS', NULL, NULL, NULL),
(627, 'ROBERT DANIEL', '------', '$2y$10$Q3AxgjEu4Um2uG5FPdAM5.L89JWYoLkCQWo8VexrUB3vG4kNkWhuO', NULL, '2021-06-25 06:06:14', NULL, '42052774', '1', 'ROMAN AYRE', '42052774', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'VICTOR SIFUENTES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '25', '4', '2', NULL, '453', 'SI', 'ROMAN', 'AYRE', '07/09/1983', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(628, 'MELITA CRISTINA', '------', '$2y$10$ymyi0YawMdiuVIrMM2C1HegulxHsckPf7WoH8ho9/Xmo0s5CbQH16', NULL, '2021-06-25 06:06:14', NULL, '44616318', '1', 'VELA MAZUELOS', '44616318', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'LOS PROCERES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '23', '4', '2', NULL, '453', 'SI', 'VELA', 'MAZUELOS', '05/11/1987', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(629, 'JEAN CARLO', '------', '$2y$10$UOo4jgXLfwlmdpa2wyLHQ.ruyscTJUjOmoeZIZKv4l7kAczE21hr6', NULL, '2021-06-25 06:06:15', NULL, '47496146', '1', 'CHILIN CRUZ', '47496146', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'HUALLAGA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'CHILIN', 'CRUZ', '31/10/1992', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(630, 'GLEYDIS', '------', '$2y$10$Zd4pt9YzelHA5vx5tzEPeu4kL7CSjZc9YSApkK7oJQuDApUWWsUaW', NULL, '2021-06-25 06:06:15', NULL, '05630003', '1', 'AYACHI GONZALES', '05630003', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR. JOSE RIERA 155', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'AYACHI', 'GONZALES', '31/07/1976', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(631, 'LETY CARINA', '------', '$2y$10$no1XdHPaZHehEyiiCv3MueGkYoeEcOEXiTu7/9WtdG55MA5wGCxcS', NULL, '2021-06-25 06:06:15', NULL, '42271211', '1', 'MANIHUARI TAPAYURI', '42271211', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR RAYMONDI 314', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '13', '4', '2', NULL, '453', 'SI', 'MANIHUARI', 'TAPAYURI', '14/09/1974', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(632, 'FRANK ANDY', '------', '$2y$10$77HRVfth30WPQVvSSbkX6emno7fUNiF155GNZh2VKm.dOhIANWL1G', NULL, '2021-06-25 06:06:15', NULL, '43409629', '1', 'HUAMAN PEZO', '43409629', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'FRANCISCO BARDALEZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '10', '4', '2', NULL, '453', 'SI', 'HUAMAN', 'PEZO', '17/11/1985', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(633, 'DANIEL', '------', '$2y$10$GwdbG1vEcP7KNOws0CSSrOqn9LIZlC9sGHGIYnctBVsDz1oUC3F/C', NULL, '2021-06-25 06:06:15', NULL, '43606323', '1', 'JACINTO VASQUEZ', '43606323', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'PSJ.RIMAC 312', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '13', '4', '2', NULL, '453', 'SI', 'JACINTO', 'VASQUEZ', '22/05/1986', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(634, 'CAROLINA', '------', '$2y$10$I0fd5B3PSfo/Aenrfw1XKOz3ezWTKnYjJhFRNNaUfhUcF64JBXP/O', NULL, '2021-06-25 06:06:16', NULL, '74898297', '1', 'SANGAMA MANIHUARI', '74898297', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'RAYMONDI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'SANGAMA', 'MANIHUARI', '15/04/1997', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(635, 'LLOISY', '------', '$2y$10$nJflKAZQAJ177A2MvZJf6.bxWtbyA5Nzz9A.3rHwE.TLBvBekhVLa', NULL, '2021-06-25 06:06:16', NULL, '48228697', '1', 'MURAYARI YUYARIMA', '48228697', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'MARISCAL CASTILLA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'MURAYARI', 'YUYARIMA', '02/05/1993', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(636, 'MANUEL ENRIQUE', '------', '$2y$10$ufv6L3UW9K3Vjl5K2.6/sOPGf4lrlMC41ek48Bl1gdpZ1DKMVvXZW', NULL, '2021-06-25 06:06:16', NULL, '44092457', '1', 'ESCOBAR JUCOS', '44092457', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'ORIENTE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '13', '4', '2', NULL, '453', 'SI', 'ESCOBAR', 'JUCOS', '28/09/1986', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(637, 'PIEDAD', '------', '$2y$10$fxaOVo1VXm1kqPl/8lY5GuNU./ffWkgdibBFwjmPTgBbU/s2ffWgq', NULL, '2021-06-25 06:06:17', NULL, '05617722', '1', 'GONZALES MEZA', '05617722', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JUAN PRIMO RUIZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'GONZALES', 'MEZA', '01/05/1973', 'Casado', 'DE PEÑA', NULL, NULL, NULL),
(638, 'EDWIN FERNANDO', '------', '$2y$10$vFZqEICeL2xe53uXWDcwuevx0kqdcjy3hjYcMKg3roSGqt/edrMnq', NULL, '2021-06-25 06:06:17', NULL, '61534493', '1', 'GOMEZ GARCIA', '61534493', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'RAYMONDI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'GOMEZ', 'GARCIA', '02/02/2001', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(639, 'MARCOS', '------', '$2y$10$007NAyHvdKxhkyiTXvTmSO1x61tAIO9JJV4aTKoqzWHA3ivbl/6bO', NULL, '2021-06-25 06:06:17', NULL, '47390717', '1', 'ROJAS AMABLE', '47390717', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'MUNICHIS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'ROJAS', 'AMABLE', '26/10/1992', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(640, 'JORGE LUIS', '------', '$2y$10$f0sdoLimzBDKlQyZErMgE.0bT0dyGq1XEVuTiCzHaD0LIyPRnWlWu', NULL, '2021-06-25 06:06:17', NULL, '72435764', '1', 'RUIZ BOCANEGRA', '72435764', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE RAYMONDI MZ.A8 LT.23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'RUIZ', 'BOCANEGRA', '24/02/1995', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(641, 'CLARISSA IVETT', '------', '$2y$10$FffTNdBB4DcR3RUox9OJeu1nFChIPdpXAdRb5qt3z5iOYKFf5HdoS', NULL, '2021-06-25 06:06:18', NULL, '71269333', '1', 'TORRES ZUMAETA', '71269333', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'AV FREYRE 1175', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'TORRES', 'ZUMAETA', '10/09/1992', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(642, 'ARCIN', '------', '$2y$10$erWp2z5hWcqhU8ilgTrySOHTEfrWmlZbJIqGvVOKxnIaHM6tGMv.G', NULL, '2021-06-25 06:06:18', NULL, '42309017', '1', 'YUYARIMA CANAQUIRI', '42309017', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE JOSE OLAYA 329', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'YUYARIMA', 'CANAQUIRI', '17/03/1984', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(643, 'ASTRIT', '------', '$2y$10$XZ5EhtHNWxssYZfy9SWl.uJliIs5GC7vW47cbkhxe3DP0EWxvoQTe', NULL, '2021-06-25 06:06:18', NULL, '47220459', '1', 'FLORES PAIMA', '47220459', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE LA FLORIDA 287 BARRIO LA FLORIDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '23', '4', '2', NULL, '453', 'SI', 'FLORES', 'PAIMA', '04/07/1991', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(644, 'JORGE FERNANDO', '------', '$2y$10$obpU/zwQD.07HxvPY46mN.j13SB032vQom1.PW9n6ACQnHifOfuEu', NULL, '2021-06-25 06:06:19', NULL, '25854438', '1', 'PINEDO CARRION', '25854438', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, '15 DE AGOSTO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'PINEDO', 'CARRION', '09/02/1978', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(645, 'MARCO ANTONIO', '------', '$2y$10$NCHwxAi5hynrwy9ZySR.qe8nDmTKciSJAv9NGnXx/NkBBZ3HdeU9e', NULL, '2021-06-25 06:06:19', NULL, '44908498', '1', 'RAMIREZ PINEDO', '44908498', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'SANTA ROSA MZ.A1-E LT.06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'RAMIREZ', 'PINEDO', '20/05/1987', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(646, 'JOSE HERMOGENES', '------', '$2y$10$JLbwitVBcj430Cis5vUj6u0S9YNHdTok6GUMmf9/dUHWKsBZvvK6i', NULL, '2021-06-25 06:06:20', NULL, '47115102', '1', 'AREVALO ORBE', '47115102', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE 29 D JUNIO MZ A-15 LT-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '6', '4', '2', NULL, '453', 'SI', 'AREVALO', 'ORBE', '05/04/1991', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(647, 'ADAN', '------', '$2y$10$0g.s.f5B5L9xHJzhMoWxuOp1ClYbIfZCpUxU6D9YUCoYbGsDiSjcK', NULL, '2021-06-25 06:06:20', NULL, '47496082', '1', 'VASQUEZ LLANOS', '47496082', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'LAS AMERICAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'VASQUEZ', 'LLANOS', '15/12/1992', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(648, 'MIRELY', '------', '$2y$10$r3TOF1Ep1Of2kSHrX/s68epHvUB9zx00lyta3RplatP.r02W20CuC', NULL, '2021-06-25 06:06:20', NULL, '45462367', '1', 'VASQUEZ LLANOS', '45462367', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR.LAS AMERICAS S/N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'VASQUEZ', 'LLANOS', '24/10/1988', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(649, 'MIRLI ERLITH', '------', '$2y$10$6F4iad/wogH4/cue5njIAe.gInM7enNVSw2x9l0YiBhSpT3B6PCDK', NULL, '2021-06-25 06:06:21', NULL, '72420523', '1', 'HUAICAMA CANAQUIRI', '72420523', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'MI PERU MZ. 14 LT. 03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'HUAICAMA', 'CANAQUIRI', '26/05/1992', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(650, 'PAMELA', '------', '$2y$10$4b7VMHXs4O5jofRU3RaAHOF.2o1JRzPnEUJ8GvoAP8Eeyqolu7a42', NULL, '2021-06-25 06:06:21', NULL, '47053853', '1', 'VALDERRAMA FLORES', '47053853', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'SEBASTIAN BARRANCA 3916 URB. PANAMERICANA NORTE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'VALDERRAMA', 'FLORES', '09/05/1992', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(651, 'ANA DE JESUS', '------', '$2y$10$y7OYzo7voE.U8ZnFmA2BBeELeHxH4y.X07JH1mBfyQ9Xh6WCE.T2.', NULL, '2021-06-25 06:06:21', NULL, '44542867', '1', 'GARCIA MURAYARI', '44542867', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'PSJ.6 DE FEBRERO 109', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'GARCIA', 'MURAYARI', '20/04/1984', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(652, 'FRANK HELMUTH', '------', '$2y$10$FTXsvJLq27iZgYuPvuRtVuIZraOI1p7zJQh7A4Uci3HwnN6MA2pNq', NULL, '2021-06-25 06:06:21', NULL, '71860666', '1', 'DEL AGUILA MENDOZA', '71860666', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'C.V. COVICIP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'DEL AGUILA', 'MENDOZA', '13/01/1992', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(653, 'ISABEL', '------', '$2y$10$3x1ETjNKNUrHme9g2VwQ..8g8ipYqwyl1cEP764J4wWgYfrs8WOoq', NULL, '2021-06-25 06:06:22', NULL, '73864359', '1', 'LAZO PEZO', '73864359', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'MZ LL LT 5 ASOC PROV VIV LOS LIBERTADORES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'LAZO', 'PEZO', '27/12/1993', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(654, 'MADELEINE', '------', '$2y$10$EaZ.bvqCs7R9K/h.vUxoiOvdiLkBqR8oH39AXqpGxpsGsK8NyLKU6', NULL, '2021-06-25 06:06:22', NULL, '41471252', '1', 'SHAPIAMA PROAÑO', '41471252', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'TARATA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'SHAPIAMA', 'PROAÑO', '29/08/1982', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(655, 'KATHIA GISSELA', '------', '$2y$10$I9igf0NxU0QeCSg5hqRcyO4ZoJmFR.TpuFHi4R1Td3NyGyVKGvRwi', NULL, '2021-06-25 06:06:22', NULL, '46466597', '1', 'FLORES SANDOVAL', '46466597', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE A.WENINGER 1008', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'FLORES', 'SANDOVAL', '03/07/1990', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(656, 'JOHN HENRY', '------', '$2y$10$dFyPaDxdno1W5cvKaI14beffOBrWdWICwj100GexKVfNycIHRM3mO', NULL, '2021-06-25 06:06:22', NULL, '07533743', '1', 'DAVILA TUESTA', '07533743', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE T.C.LOPEZ 417', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '15', '4', '2', NULL, '453', 'SI', 'DAVILA', 'TUESTA', '09/03/1974', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(657, 'MICHEL', '------', '$2y$10$3eOYLfWO2cssM/H9BoQqvO2TU0hGxAq.mUyj1brLrehWea8pVVVnK', NULL, '2021-06-25 06:06:22', NULL, '45506650', '1', 'CHUMBE SHUPINGAHUA', '45506650', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE MALECON PASTAZA S/N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '13', '4', '2', NULL, '453', 'SI', 'CHUMBE', 'SHUPINGAHUA', '13/09/1988', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(658, 'GABRIELA', '------', '$2y$10$EeaPEP0.78JDJGUsPAlt7.qQ8iw5hmaBJUCJelX..LScjlKgLub2a', NULL, '2021-06-25 06:06:23', NULL, '47453375', '1', 'PEREZ TOVAR', '47453375', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'LIBERDAD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'PEREZ', 'TOVAR', '19/07/1992', 'Soltero', 'SIN DATOS', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `nombre`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `usuario`, `estado`, `apellidos`, `nro_documento`, `cargo`, `avatar`, `telefono`, `glosa`, `idtipo`, `ruc`, `razon_social`, `registro`, `direccion`, `ubicacion`, `vendedor`, `contacto`, `condicion_pago`, `usu_licencia`, `idcliente`, `cabecera_color`, `footer_color`, `menu_dark`, `menu_colapsible`, `cabecera_dark`, `cabecera_fija`, `cabecera_fondo_ocultar`, `footer_dark`, `footer_fija`, `footer_ocultar`, `idempresa`, `idusuario`, `idestado`, `iddocumento`, `idzona`, `titulo`, `cod_alterno`, `id_codigo_alterno`, `apertura_legajo`, `url_imagen`, `area_trabajador`, `situacion_laboral`, `regimen_laboral`, `SEXO`, `codigo_pliego`, `validado_reniec`, `apellido_paterno`, `apellido_materno`, `fecha_nacimiento`, `estado_civil`, `apellidos_casada`, `id_cargo`, `email_profesional`, `contacto_id`) VALUES
(659, 'SEGUNDO', '------', '$2y$10$f9UBBgS4sTYA.i5PKEQ3lOykYpOKDNidwUWLp9gtiPZdu7VcPyktS', NULL, '2021-06-25 06:06:23', NULL, '43941461', '1', 'SILVA MANUYAMA', '43941461', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'ASENT.H.CALIFORNIA CALLE AREQUIPA S/N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '10', '4', '2', NULL, '453', 'SI', 'SILVA', 'MANUYAMA', '30/09/1979', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(660, 'HENRY ANTHONY BADDY', '------', '$2y$10$Jzw/CLDOUN9cMEnKaiW2Y.ern4aRSU3KuZaYWuQuhPa6lorvjX3Km', NULL, '2021-06-25 06:06:23', NULL, '46104138', '1', 'SILVA MEZA', '46104138', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE 15 DE AGOSTO 612 BARRIO MORALILLOS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'SILVA', 'MEZA', '30/11/1989', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(661, 'FREDY MARTIN', '------', '$2y$10$jywovLYVPRc4H6U1.hXV6u/XCODjeGDwZvtE9ZFbeObOGQkIFi7Rq', NULL, '2021-06-25 06:06:23', NULL, '47376722', '1', 'VARGAS PINEDO', '47376722', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'PRL. 15 DE AGOSTO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'VARGAS', 'PINEDO', '23/03/1990', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(662, 'AUGUSTO SAMUEL', '------', '$2y$10$W4AlSdm3jU5Q.LV/l6kbHOaURO37Cx6.N0ls0W159jemSgHUIB7Ku', NULL, '2021-06-25 06:06:24', NULL, '70135435', '1', 'ESPINOZA PISCO', '70135435', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'PROGRESO CD 12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '13', '4', '2', NULL, '453', 'SI', 'ESPINOZA', 'PISCO', '07/01/1995', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(663, 'MARVIN STEVEN', '------', '$2y$10$64g6Kelwi9I8DyxqZ0JhduWV.pC1iO.0lsASyYUO69bchpMUgVHDK', NULL, '2021-06-25 06:06:24', NULL, '76599633', '1', 'MONTERO PEÑAHERRERA', '76599633', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JAZMIN - CIUDAD JARDIN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '25', '4', '2', NULL, '453', 'SI', 'MONTERO', 'PEÑAHERRERA', '12/06/1995', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(664, 'ANDREA AZALEA', '------', '$2y$10$R781OB6hleJwBUYYtv0FHu1gEMArFLe9krYNPC5s11xa5GKKGuUOm', NULL, '2021-06-25 06:06:24', NULL, '45252974', '1', 'HERVACH GUELA', '45252974', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'MARIA PARADO DE BELLIDO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '13', '4', '2', NULL, '453', 'SI', 'HERVACH', 'GUELA', '10/11/1987', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(665, 'NILO ABEL', '------', '$2y$10$pa0tY2hn.MOlrv2EiGUsFu.fOVXQXh4gpbJ0/o4usDJUQksO.JH7G', NULL, '2021-06-25 06:06:24', NULL, '46839871', '1', 'RODRIGUEZ CORDOVA', '46839871', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'ESTORAQUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '13', '4', '2', NULL, '453', 'SI', 'RODRIGUEZ', 'CORDOVA', '10/10/1990', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(666, 'ROSANITA', '------', '$2y$10$gnTh56pcnfTREI0Wj5j/gevAIkdajDQ9Ca71/IIaDaWntfKzMblzq', NULL, '2021-06-25 06:06:25', NULL, '48190800', '1', 'PEREZ GONZALES', '48190800', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'LUPUNA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'PEREZ', 'GONZALES', '15/11/1992', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(667, 'LOURDES MARNITH', '------', '$2y$10$GKhsZogip.7jYOnZlCsMk.ZLAp8ZqGmXOxBt1hoYqWniHeNh1mTJG', NULL, '2021-06-25 06:06:25', NULL, '47828714', '1', 'RAMIREZ RAMIREZ', '47828714', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'HOMERO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'RAMIREZ', 'RAMIREZ', '26/06/1993', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(668, 'TONY STEVE', '------', '$2y$10$VWtc735rL2nEJHe8gQm/L.qJWVdEG7xrRz1b72AV2JPB5esI7Psa.', NULL, '2021-06-25 06:06:25', NULL, '71689256', '1', 'PEREA VILLACORTA', '71689256', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE JOSE GALVEZ 105', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '3', '4', '2', NULL, '453', 'SI', 'PEREA', 'VILLACORTA', '05/11/1998', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(669, 'MELISA', '------', '$2y$10$AWqu2wsv4av88a9zLNv.GOqw7t.Ab0zmSp/qbA3HDFIMBV/oX3AAy', NULL, '2021-06-25 06:06:25', NULL, '46093972', '1', 'MORI RIOS', '46093972', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'SARGENTO LORES 711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'MORI', 'RIOS', '31/08/1989', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(670, 'LUZ GABRIELA', '------', '$2y$10$YO8/6IjyfQGRku8CyLCXVOR4XdQzZiLDnrPMthJ71qE0tsYU.Z9j.', NULL, '2021-06-25 06:06:26', NULL, '42910160', '1', 'VARGAS MONTOYA', '42910160', '31', NULL, '942839228,967302003', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE NAYLAMP MZE4 LOT 5 P. JOVEN SAN MARTIN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'VARGAS', 'MONTOYA', '13/01/1985', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(671, 'DIANA MARIBEL', '------', '$2y$10$/bAPUYEl3IPSqL1SgGgpEeq0zDLLx.cMIGLeq7431o62hSEIjlTha', NULL, '2021-06-25 06:06:26', NULL, '05587092', '1', 'PEZO CORREA', '05587092', '3', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'TACNA 512', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '2', '1', NULL, '453', 'SI', 'PEZO', 'CORREA', '18/01/1964', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(672, 'ANGEL', '------', '$2y$10$hveDzVWRJNtvGg71pjXem.LtOa5LZPYbPkYkZUgFnyx4KUxUDbu/i', NULL, '2021-06-25 06:06:27', NULL, '44607647', '1', 'ARAUJO SANCHEZ', '44607647', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'PSJ. CARRILLO 35 INT. B', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'ARAUJO', 'SANCHEZ', '18/02/1987', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(673, 'MARICARMEN', '------', '$2y$10$nbzkpgJmh3IpljYDQ8RyK.SlMtkv4BzrOD81ONpqHIHnZYUmYiPwa', NULL, '2021-06-25 06:06:27', NULL, '46243015', '1', 'SEIJAS SILVA', '46243015', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'LOS CEDROS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'SEIJAS', 'SILVA', '02/01/1990', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(674, 'JEAN NEIL', '------', '$2y$10$SCszo02DHmfXJcFwVGHbfOjNsJ8TIQU/kDCK6GeKVD/GbOELx9ZxK', NULL, '2021-06-25 06:06:27', NULL, '46585041', '1', 'HERNANDEZ ANGULO', '46585041', '31', NULL, '964614969', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'SANTA CATALINA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'HERNANDEZ', 'ANGULO', '31/08/1990', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(675, 'KATHERIN SUSAN', '------', '$2y$10$yZAvxTZTgEhP7oEeyNesp.7jgYwDrzTv315Uh7CSyVshLDejdAqTa', NULL, '2021-06-25 06:06:27', NULL, '72249813', '1', 'VALLEJOS ORBE', '72249813', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'MALECON HUALLAGA S/N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'VALLEJOS', 'ORBE', '18/05/1994', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(676, 'MIRIAM', '------', '$2y$10$ndZ2If3hcSc74KiWorzC8uSdafTRtPOqyuws66SX4gdYDkV9GmW62', NULL, '2021-06-25 06:06:28', NULL, '10750368', '1', 'AYME ESPINOZA', '10750368', '30', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'TNTE. CESAR LOPEZ 412-ALTOS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '3', '1', NULL, '453', 'SI', 'AYME', 'ESPINOZA', '01/09/1977', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(677, 'JAMES', '------', '$2y$10$OJFud8QgDZsP5MkecaN8qOjogPBKH72MTy0zMSq/u0qaft7ZUW9ei', NULL, '2021-06-25 06:06:28', NULL, '09850080', '1', 'CORAL PANDURO', '09850080', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'AV.MONSEÑOR ATANASIO JAUREGUI 713', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '13', '4', '2', NULL, '453', 'SI', 'CORAL', 'PANDURO', '09/01/1972', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(678, 'LEXI RUBI', '------', '$2y$10$ZQgFnPNaC8yimtsJtTQkrOghj1O.oToKPMX3L3yl0n/q1Iev5T83a', NULL, '2021-06-25 06:06:29', NULL, '47310294', '1', 'CENEPO ORTIZ', '47310294', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'RAYMONDI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'CENEPO', 'ORTIZ', '02/11/1991', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(679, 'CARLOS FERNANDO', '------', '$2y$10$22P6vW9wKJNc.NdCZX8hZegjI3ZDUNKwLBvNbbDdrsUkfHjBwEG3m', NULL, '2021-06-25 06:06:29', NULL, '42422903', '1', 'BURNEO TAPAYURI', '42422903', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'VIA DE EVITAMIENTO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '13', '4', '2', NULL, '453', 'SI', 'BURNEO', 'TAPAYURI', '23/12/1982', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(680, 'ROSY VIVIANA', '------', '$2y$10$vBkuoAlNbugD4Qh3BKlkke7Z7mYyvzNWUkZ6UAMQmx3bKt2YGnaq2', NULL, '2021-06-25 06:06:29', NULL, '45127860', '1', 'EGUSQUIZA RAMIREZ', '45127860', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR.MANUELA MOREY 637', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'EGUSQUIZA', 'RAMIREZ', '08/02/1988', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(681, 'MILGUER MAX', '------', '$2y$10$mBRoHT4oB6lEIj9lC.cfV.q5KLuvRMiC1IFJyZ.uF5WNoD0XxLqYu', NULL, '2021-06-25 06:06:29', NULL, '47432592', '1', 'TAPAYURI CANAQUIRI', '47432592', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'LAS AMERICAS S/N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '13', '4', '2', NULL, '453', 'SI', 'TAPAYURI', 'CANAQUIRI', '17/10/1991', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(682, 'EDUARDO PAUL', '------', '$2y$10$9i4JocZqEEah4kCA.3iNi.8QB13n0E1Ni9faEzm6a4kbYp45AqG9u', NULL, '2021-06-25 06:06:30', NULL, '70667098', '1', 'RODRÍGUEZ VÁSQUEZ', '70667098', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'SIN DATOS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'RODRÍGUEZ', 'VÁSQUEZ', '07/02/1993', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(683, 'NATALIA', '------', '$2y$10$4pjN.y1uO/Gu22jBmJE4ROOhQxHbebvZWv5KaWXObsYeXC0d7LWcm', NULL, '2021-06-25 06:06:30', NULL, '46483293', '1', 'TORRES MAYANCHI', '46483293', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CL. MIRAFLORES 467', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'TORRES', 'MAYANCHI', '29/10/1986', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(684, 'MATILDE', '------', '$2y$10$DMJr0IvGofXgx5xzV7WPQunphjp5RTfjjMtbsy4sBA628LqOrgJuW', NULL, '2021-06-25 06:06:31', NULL, '05582370', '1', 'FLORES DE SHARDIN', '05582370', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE JORGE CHAVEZ 326', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '6', '4', NULL, '453', 'SI', 'FLORES', 'DE SHARDIN', '13/10/1935', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(685, 'JESUS IVAN', '------', '$2y$10$aJM34DxVK4js2nHmU6.jZOAApBJMc.VUYPvRmn8itC65ZxGiaQbJ6', NULL, '2021-06-25 06:06:31', NULL, '71880116', '1', 'CARPIO CHARAJA', '71880116', '31', NULL, '949461212', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'SIN DATOS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'CARPIO', 'CHARAJA', '15/07/1991', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(686, 'DANILO', '------', '$2y$10$K0Atcm.TMRpcVVXzDMnJYezQVCymLkkeIaSBcFrvE8R1.s692jQNy', NULL, '2021-06-25 06:06:31', NULL, '42842062', '1', 'CARRASCO HUAMAN', '42842062', '33', NULL, '995501876', 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE LORETO E - 75 VILLA DISNARDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'CARRASCO', 'HUAMAN', '12/12/1984', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(687, 'KAREN FABIOLA', '------', '$2y$10$j8pFolmuEgi4wSrHUZEgEOlIaTBBSPaqjY224fwVqxCjT8ZKJ1KLC', NULL, '2021-06-25 06:06:31', NULL, '46396206', '1', 'LEON REQUE', '46396206', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'RUIBARES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'LEON', 'REQUE', '27/06/1990', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(688, 'FATIMA DE GRECIA', '------', '$2y$10$b52CvbAa9a.LQrbASQtRw.sos6CJf0XlBlwBatbg.s0asufN3cxXC', NULL, '2021-06-25 06:06:32', NULL, '70676647', '1', 'PRADA MARIN', '70676647', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'AV CIRCUNVALACION 112', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'PRADA', 'MARIN', '08/04/1995', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(689, 'MARIA DEL ROSARIO', '------', '$2y$10$uzAeJMfx.IUiOT7.Cngn1uolTW.w4phAvDyRQM7r9G7.i0p7bLOmy', NULL, '2021-06-25 06:06:32', NULL, '75722691', '1', 'BALAREZO INUMA', '75722691', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'BALAREZO', 'INUMA', '09/11/1994', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(690, 'DOLY ROCIO', '------', '$2y$10$ZGNoYkqEYWovBWOQcseFbu9UITcP8ZhyD.NEFJ1sniF20HruE.bia', NULL, '2021-06-25 06:06:33', NULL, '70676646', '1', 'REATEGUI HUAMAN', '70676646', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'ESPAÑA 451', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '2', '4', '2', NULL, '453', 'SI', 'REATEGUI', 'HUAMAN', '20/09/1995', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(691, 'CYNTHIA IRIS', '------', '$2y$10$biMpSU6ZH/ohRhE5RSbdmuJBSFiDp/LsUCnky3IRZWldXj9IpdXhe', NULL, '2021-06-25 06:06:33', NULL, '47240623', '1', 'ALVAN LOZANO', '47240623', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CL LOS CLAVELES MZE-114', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '8', '4', '2', NULL, '453', 'SI', 'ALVAN', 'LOZANO', '10/06/1992', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(692, 'KATHY', '------', '$2y$10$MaLvG0lCyQl8JD8rojTZhet6dmuUDLy9eOJpA/Iyyl/U63zprAn5C', NULL, '2021-06-25 06:06:33', NULL, '40950623', '1', 'ESCOBILLA FLORES', '40950623', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE LAS BEGONIAS 119', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '40', '4', '2', NULL, '453', 'SI', 'ESCOBILLA', 'FLORES', '29/05/1981', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(693, 'MILAGROS', '------', '$2y$10$RIrUyWzkw8ooaOnE46WAFeWsDFMG7R9QOy77uP5IVH7MV62MCBgIa', NULL, '2021-06-25 06:06:33', NULL, '41511663', '1', 'CHOTA LOMAS', '41511663', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'PSJ.TARAPOTO 211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '40', '4', '2', NULL, '453', 'SI', 'CHOTA', 'LOMAS', '09/10/1982', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(694, 'NATALI VALERI', '------', '$2y$10$/g6TdKV6en/tpoVjwzeQKe9ln5XBlS8hOuNWkmYH0Bkp/TaGCajVu', NULL, '2021-06-25 06:06:33', NULL, '41422753', '1', 'RAMIREZ LOPEZ', '41422753', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE SARGENTO LORES 405', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'RAMIREZ', 'LOPEZ', '21/11/1981', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(695, 'KARINA', '------', '$2y$10$KGLX0/Clc0Wi/18A9z9JUuiU3.qFrtaOgC0RXSFnhiXgjiYK3XC1K', NULL, '2021-06-25 06:06:34', NULL, '75844327', '1', 'ARCE APAGÜEÑO', '75844327', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, '1 DE AGOSTO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '40', '4', '2', NULL, '453', 'SI', 'ARCE', 'APAGÜEÑO', '09/08/1994', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(696, 'EVELYN KATHERINE', '------', '$2y$10$RQf6whq80eabBKtbKjx/HObUx.rrgJDd64te0xWPRxpaWcZF8/uza', NULL, '2021-06-25 06:06:34', NULL, '70817891', '1', 'AMASIFUEN TANCHIVA', '70817891', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JULIO C ARANA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '40', '4', '2', NULL, '453', 'SI', 'AMASIFUEN', 'TANCHIVA', '02/12/1993', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(697, 'CLAY KLEIVER', '------', '$2y$10$BNqI4dUfUzc/oerxX6nV.uLgmaIMnsW2XJEzd6GX8iTsRIy8QIa7u', NULL, '2021-06-25 06:06:34', NULL, '74595487', '1', 'OCHOA TITO', '74595487', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'PSJE. SAN ISIDRO AA.HH. LAS VEGAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '40', '4', '2', NULL, '453', 'SI', 'OCHOA', 'TITO', '09/05/1999', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(698, 'ELVIA', '------', '$2y$10$W2aaNsQgiDVG8wVQ0yHE3u2tB/.Kma8QKA/M8Gb1UUw/gYaVlbKe2', NULL, '2021-06-25 06:06:34', NULL, '47249823', '1', 'FIGUEROA SHARDIN', '47249823', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'BOLIVAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '8', '4', '2', NULL, '453', 'SI', 'FIGUEROA', 'SHARDIN', '26/08/1991', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(699, 'EDGARDO CESAR', '------', '$2y$10$LLohEQK2hRme0SkPTDHSCuCmIcuD71XpQupH5pAk2LxRq6I3wLSwO', NULL, '2021-06-25 06:06:35', NULL, '75598518', '1', 'TAPULLIMA CANEVARO', '75598518', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'PASAJE EN FORMACION', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'TAPULLIMA', 'CANEVARO', '15/04/1997', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(700, 'CLAUDIO FRANCO', '------', '$2y$10$ZQDHc1S2KXTh9sK0W6XT1uqlMWkCHVa.z6fZ3SvlfdTlRfF9DsuzG', NULL, '2021-06-25 06:06:35', NULL, '42094295', '1', 'GALVEZ RUIZ', '42094295', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CONDAMINE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '8', '3', NULL, '453', 'SI', 'GALVEZ', 'RUIZ', '03/10/1983', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(701, 'NATALI', '------', '$2y$10$PM/qQOggiul2pM0duiwv5.aBGUxkXgTBWhLMNX9csGftM.3R3Fe0q', NULL, '2021-06-25 06:06:35', NULL, '62535878', '1', 'FACHIN HUESEMBER', '62535878', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, '4 DE AGOSTO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'FACHIN', 'HUESEMBER', '16/07/2000', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(702, 'ALEJANDRO', '------', '$2y$10$L1OF274EkRYL8JnIHff5TO4S.vfh.Ipm29HnIgYfsqeJji86KPsAG', NULL, '2021-06-25 06:06:36', NULL, '45222089', '1', 'BRIONES REATEGUI', '45222089', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE 15 DE AGOSTO 908', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'BRIONES', 'REATEGUI', '11/06/1988', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(703, 'LIZBETH PRICILA', '------', '$2y$10$85DZb9NWE7RRA4ZjWzmOruBKbYzozVNqDea/skptKxl03IZbt7rGK', NULL, '2021-06-25 06:06:36', NULL, '76181978', '1', 'ZUMBILLA PAPA', '76181978', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'ALBERTO FUJIMORI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'ZUMBILLA', 'PAPA', '09/07/1999', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(704, 'JORGE ALEXANDER', '------', '$2y$10$oPP5A0VsufAnTMTbu49Lwu2VEIja7PL6Smq2etgHy35hqHO/LDsDW', NULL, '2021-06-25 06:06:36', NULL, '46499262', '1', 'FIESTAS ARELLANO', '46499262', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE UNO 716', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'FIESTAS', 'ARELLANO', '16/07/1990', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(705, 'ROXANA IVONNE', '------', '$2y$10$rC33OAZxzLunbZKBntj7se0nO7Co8XGyG4bewlMQhxWFhE8lfo1xa', NULL, '2021-06-25 06:06:37', NULL, '44461010', '1', 'VASQUEZ LINARES', '44461010', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'AV. GRAN CHIMU 732 DPTO. 402', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'VASQUEZ', 'LINARES', '19/07/1987', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(706, 'LUIS JOFFRED', '------', '$2y$10$pSww9vAk8u1AY4ePJobGYO6Ievs0dP.GiiGrSVLvjRwi3CxkkihSu', NULL, '2021-06-25 06:06:37', NULL, '45212469', '1', 'CORAL CORREA', '45212469', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'SIN DATOS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'CORAL', 'CORREA', '31/07/1988', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(707, 'ROBERTO VIRGILIO', '------', '$2y$10$q5bxwMSqD5fkvhVOiLoMKefGbxZyNTu29q7wKIcPOBCG.msrr8GZ.', NULL, '2021-06-25 06:06:37', NULL, '72937936', '1', 'VASQUEZ MONTERO', '72937936', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'VICTOR ANDRES BELAUNDE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'VASQUEZ', 'MONTERO', '04/06/1991', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(708, 'JHONI', '------', '$2y$10$qBKZZXfWP8JfVYz7Lu8aWOJfPFmfDw6wYi5QfLK6vAcPVL1ecLrKC', NULL, '2021-06-25 06:06:38', NULL, '48002626', '1', 'AURES CURO', '48002626', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'MZ B LT 15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'AURES', 'CURO', '16/01/1992', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(709, 'LUIS CARLOS', '------', '$2y$10$UsJdT.KUoZcV2db7s/LTJu0kyykYTa5Pl.JcNq8PVVOxwbOHIspJG', NULL, '2021-06-25 06:06:38', NULL, '42174737', '1', 'GREFFA CUEVA', '42174737', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'CALLE JOSE OLAYA 327', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'GREFFA', 'CUEVA', '16/01/1984', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(710, 'JORGE ALEJANDRO', '------', '$2y$10$858t9y6f1r4hYXqQstOVL.wPHkuk5.Q6Vs..d1AByzy/xJwKVg/g2', NULL, '2021-06-25 06:06:38', NULL, '42977864', '1', 'MARIN MANRIQUE', '42977864', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'LOS CONQUISTADORES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'MARIN', 'MANRIQUE', '16/05/1985', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(711, 'VICTOR HUGO', '------', '$2y$10$l5528D612wCuCaFc2dZavu3fzGDH16zeF7b5xSJCC2eotKpDKznRe', NULL, '2021-06-25 06:06:38', NULL, '42003179', '1', 'MONTREUIL PAREDES', '42003179', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'URB. FCO. BOLOGNESI C-01 - PAMPACHICA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'MONTREUIL', 'PAREDES', '14/09/1983', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(712, 'DIDIER', '------', '$2y$10$5kRAF3x5tqDjW/0QCbaFvufSQLZrnspVYgQRvavJuv5LYfVJ6G2mO', NULL, '2021-06-25 06:06:39', NULL, '45432984', '1', 'PAREDES RIOS', '45432984', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'SIN DATOS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'PAREDES', 'RIOS', '17/07/1988', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(713, 'DENIA ALICIA', '------', '$2y$10$j2qSrvRs8R1hF8iaYbIA6OYEdAAjhCGdq2HtxPzz8Fe0tHBGXWBCK', NULL, '2021-06-25 06:06:39', NULL, '46797019', '1', 'GUTIERREZ YUYARIMA', '46797019', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JUAN VASQUEZ S/N.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'GUTIERREZ', 'YUYARIMA', '04/01/1991', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(714, 'AUGUSTO JUNIOR', '------', '$2y$10$D855HaBYRJNyE0CJjf.X3OaFH9PVShXHOa1TUGCryGtoWoWO27AWW', NULL, '2021-06-25 06:06:39', NULL, '05373151', '1', 'ESPINOZA OBLITAS', '05373151', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, '15 DE AGOSTO 715 - B,15 DE AGOSTO 715 - B', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'ESPINOZA', 'OBLITAS', '22/11/1973', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(715, 'AUGUSTO JUNIOR', '------', '$2y$10$vRENA055V8JOFuLtEwE9LemBvHjuLmpPm6JJwO2z9EDm2MnAalyjS', NULL, '2021-06-25 06:06:39', NULL, '05373151', '1', 'ESPINOZA OBLITAS', '05373151', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, '15 DE AGOSTO 715 - B,15 DE AGOSTO 715 - B', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'ESPINOZA', 'OBLITAS', '22/11/1973', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(716, 'BIANCA IRALDA', '------', '$2y$10$wCiIAzKlyARcaSBybBT0fO.QxbxDOHeUGkmqDbK1BgQKv1mw4BYbu', NULL, '2021-06-25 06:06:40', NULL, '46151249', '1', 'OYARCE INUMA', '46151249', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'D.A. CARRION,D.A. CARRION,D.A. CARRION,D.A. CARRION,D.A. CARRION,D.A. CARRION,D.A. CARRION', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'OYARCE', 'INUMA', '06/11/1989', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(717, 'PATRICIA', '------', '$2y$10$6IeFTGeL1ON/a/5AwWND8uBo/skZ5tNs.VXUbxGwyeol5UxW4OlzK', NULL, '2021-06-25 06:06:40', NULL, '40480898', '1', 'VASQUEZ ACHO', '40480898', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'SUCRE MZ. C LT. 15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'VASQUEZ', 'ACHO', '15/01/1980', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(718, 'DESIBEL', '------', '$2y$10$FF5SZpfdnGPqinbandSpH.1uLCtk33Y0YE6i7DmJiUoOj8X1eCI2W', NULL, '2021-06-25 06:06:41', NULL, '05630114', '1', 'ISUIZA FACHIN', '05630114', '33', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JUVENTUD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '5', '3', NULL, '453', 'SI', 'ISUIZA', 'FACHIN', '24/01/1977', 'Casado', 'SIN DATOS', NULL, NULL, NULL),
(719, 'ANGI CAROLINA', '------', '$2y$10$aEs2D.3UvvG6mi0NjYGITeTUDCeqIh5FO0uPXCcELu5gVvUEba3ny', NULL, '2021-06-25 06:06:41', NULL, '079741277', '1', 'MEJIAS MONTILLA', '079741277', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'PROGRESO 305', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'NO', 'MEJIAS', 'MONTILLA', '22/02/1991', 'Soltero', NULL, NULL, NULL, NULL),
(720, 'GUISSELLA YAHAIDA', '------', '$2y$10$6oBSVjWE5PRfU1OHSPOsbevoCgn1yZbweh4Ej7p7ci5.ZnX4qzQTq', NULL, '2021-06-25 06:06:41', NULL, '43209983', '1', 'VEREAU DE LA CRUZ', '43209983', '31', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR.CAHUIDE 1181', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '4', '2', NULL, '453', 'SI', 'VEREAU', 'DE LA CRUZ', '15/09/1985', 'Soltero', 'SIN DATOS', NULL, NULL, NULL),
(721, 'MAIRO', '------', '$2y$10$L.CzOqECrsfC6fqIHGBQvOin.G1m9aOi4jm6u7UO1YRCQdmU91Exi', NULL, '2021-06-25 06:06:42', NULL, '05394552', '1', 'RAMIREZ TRIGOSO', '05394552', '11', NULL, NULL, 'IMPORTADO DE ECXEL', 'TRA', NULL, NULL, NULL, 'JR.AGUIRRE 126', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', '0', '0', '1', '0', 'E01', 2, NULL, '1', NULL, NULL, NULL, NULL, 'NO', NULL, '37', '2', '1', NULL, '453', 'SI', 'RAMIREZ', 'TRIGOSO', '01/05/1975', 'Casado', 'SIN DATOS', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_hotspot`
--

CREATE TABLE `usuarios_hotspot` (
  `idempresa` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `codigo` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `usuario` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `contrasena` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `mac` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ip` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descarga` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `subida` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `uptime` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `social_login` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nickname` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `avatar` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ciudad_nacimiento` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ciudad_radica` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `avatar_original` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `genero` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `celular` decimal(15,0) DEFAULT NULL,
  `apellidos` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `concurrencia` int(11) DEFAULT NULL,
  `tdescarga` decimal(20,2) DEFAULT NULL,
  `tsubida` decimal(20,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vacaciones`
--

CREATE TABLE `vacaciones` (
  `codigo` int(11) NOT NULL,
  `id_trabajador` int(11) NOT NULL,
  `tipo_resolucion` varchar(120) COLLATE utf8_spanish_ci DEFAULT NULL,
  `motivo_resolucion` varchar(520) COLLATE utf8_spanish_ci DEFAULT NULL,
  `numero_resolucion` varchar(120) COLLATE utf8_spanish_ci DEFAULT NULL,
  `area_trabajador` int(11) NOT NULL,
  `situacion_laboral` int(11) NOT NULL,
  `jornada_laboral` int(11) NOT NULL,
  `regimen_laboral` int(11) NOT NULL,
  `cargo_laboral` int(11) NOT NULL,
  `fecha_resolucion` varchar(11) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_inicio` varchar(11) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_fin` varchar(11) COLLATE utf8_spanish_ci DEFAULT NULL,
  `numero_dias` varchar(3) COLLATE utf8_spanish_ci DEFAULT NULL,
  `url_doc` varchar(350) COLLATE utf8_spanish_ci DEFAULT NULL,
  `name_doc` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_doc` int(11) NOT NULL,
  `folios` varchar(3) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `glosa` text COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `validacion`
--

CREATE TABLE `validacion` (
  `codigo` int(10) NOT NULL,
  `idusuario` int(10) NOT NULL,
  `valor` decimal(1,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `validacion`
--

INSERT INTO `validacion` (`codigo`, `idusuario`, `valor`) VALUES
(3, 1, '0'),
(4, 1, '0'),
(5, 2, '0'),
(6, 3, '0'),
(7, 4, '0'),
(8, 3, '0'),
(9, 2, '0'),
(10, 3, '0'),
(11, 4, '0'),
(12, 4, '0'),
(13, 19, '0'),
(14, 3, '0'),
(15, 4, '0'),
(16, 5, '0'),
(17, 6, '0'),
(18, 7, '0'),
(19, 8, '0'),
(20, 4, '0'),
(21, 5, '0'),
(22, 8, '0'),
(23, 300, '0'),
(24, 16, '0'),
(25, 17, '0'),
(26, 18, '0'),
(27, 324, '0'),
(28, 20, '0'),
(29, 22, '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vcarrito`
--

CREATE TABLE `vcarrito` (
  `idcarrito` int(11) NOT NULL,
  `idcliente` int(11) NOT NULL,
  `item` int(2) NOT NULL,
  `idproducto` char(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `precio` decimal(9,2) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `total` decimal(9,2) DEFAULT NULL,
  `estado` char(10) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `vcarrito`
--

INSERT INTO `vcarrito` (`idcarrito`, `idcliente`, `item`, `idproducto`, `precio`, `cantidad`, `total`, `estado`) VALUES
(97, 2, 1, '0000000167', '2.53', 1, '2.53', 'PEDIDO'),
(98, 2, 2, '0000000168', '2.53', 1, '2.53', 'PEDIDO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vision`
--

CREATE TABLE `vision` (
  `id` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `titulo` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `vision`
--

INSERT INTO `vision` (`id`, `titulo`, `descripcion`, `estado`, `fecha_creacion`) VALUES
('VSN', 'Nuestra Visión', 'Ser la mejor empresa importadora y comercializadora de repuestos automotrices en el Perú, brindando un excelente servicio en venta y post-venta, generando valor agregado para nuestros clientes y la sociedad.', '1', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zonas`
--

CREATE TABLE `zonas` (
  `id` char(3) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `dsc_corta` char(4) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `glosa` text DEFAULT NULL,
  `estado` decimal(1,0) DEFAULT NULL,
  `color` char(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `zonas`
--

INSERT INTO `zonas` (`id`, `nombre`, `descripcion`, `dsc_corta`, `fecha_creacion`, `glosa`, `estado`, `color`) VALUES
('020', 'pachaca', '5 horas', '5 ho', '2020-08-30 04:08:27', NULL, '1', 'ffff00'),
('066', 'ARNILIA', 'FILO', NULL, '2020-12-25 03:12:35', NULL, '1', NULL),
('099', 'FILO LINDO', '5 HORAS', '5 H', '2020-12-25 03:12:03', NULL, '1', NULL),
('P01', '7VTA', '7 VUELTAS', NULL, '2020-09-09 12:09:07', NULL, '1', '5e35b1'),
('P03', 'CANDELARIA', NULL, 'CAND', '2020-09-13 08:09:19', NULL, '1', '6a1b9a'),
('P04', 'TRINIDAD', 'TRINIDAD', 'TRN', '2020-09-04 07:09:08', 'TRN', '1', '00695c'),
('PO5', 'SAN JOSE', 'SAN JOSE', 'SN', '2020-09-12 06:09:20', NULL, '1', 'ff1744');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `area_laboral`
--
ALTER TABLE `area_laboral`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `ascensos`
--
ALTER TABLE `ascensos`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `aviso`
--
ALTER TABLE `aviso`
  ADD PRIMARY KEY (`idempresa`,`codigo`);

--
-- Indices de la tabla `campanas`
--
ALTER TABLE `campanas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `capacitaciones`
--
ALTER TABLE `capacitaciones`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `cargo_laboral`
--
ALTER TABLE `cargo_laboral`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD PRIMARY KEY (`idempresa`,`idcarrito`,`idcliente`);

--
-- Indices de la tabla `carrusel`
--
ALTER TABLE `carrusel`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idempresa`,`dni`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idempresa`,`idcliente`);

--
-- Indices de la tabla `codigo_alterno`
--
ALTER TABLE `codigo_alterno`
  ADD PRIMARY KEY (`codigo`,`idtrabajador`);

--
-- Indices de la tabla `contratos`
--
ALTER TABLE `contratos`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `corte`
--
ALTER TABLE `corte`
  ADD PRIMARY KEY (`idempresa`,`codigo`);

--
-- Indices de la tabla `dcarrito`
--
ALTER TABLE `dcarrito`
  ADD PRIMARY KEY (`idcarrito`,`item`);

--
-- Indices de la tabla `dcontactanos`
--
ALTER TABLE `dcontactanos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `declaraciones_juradas`
--
ALTER TABLE `declaraciones_juradas`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `demerito`
--
ALTER TABLE `demerito`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `dequipos`
--
ALTER TABLE `dequipos`
  ADD PRIMARY KEY (`idequipo`,`idservicio`,`idcliente`);

--
-- Indices de la tabla `desplazamiento`
--
ALTER TABLE `desplazamiento`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `dfactura`
--
ALTER TABLE `dfactura`
  ADD PRIMARY KEY (`item`,`idfactura`);

--
-- Indices de la tabla `dgeneral`
--
ALTER TABLE `dgeneral`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `dimagen_producto`
--
ALTER TABLE `dimagen_producto`
  ADD PRIMARY KEY (`id`,`idproducto`);

--
-- Indices de la tabla `direcciones`
--
ALTER TABLE `direcciones`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `dmision`
--
ALTER TABLE `dmision`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `dnosotros`
--
ALTER TABLE `dnosotros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `documento`
--
ALTER TABLE `documento`
  ADD PRIMARY KEY (`iddocumento`);

--
-- Indices de la tabla `documentos_adjuntos`
--
ALTER TABLE `documentos_adjuntos`
  ADD PRIMARY KEY (`iddocumento`,`idempresa`,`idcliente`);

--
-- Indices de la tabla `documentos_digitalizados`
--
ALTER TABLE `documentos_digitalizados`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `documento_venta`
--
ALTER TABLE `documento_venta`
  ADD PRIMARY KEY (`iddocumento`);

--
-- Indices de la tabla `dvision`
--
ALTER TABLE `dvision`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `edocs`
--
ALTER TABLE `edocs`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`idempresa`,`idusuario`);

--
-- Indices de la tabla `empresa_usuario`
--
ALTER TABLE `empresa_usuario`
  ADD PRIMARY KEY (`idempresa`,`idusuario`);

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`idequipo`,`idempresa`);

--
-- Indices de la tabla `evaluaciones`
--
ALTER TABLE `evaluaciones`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`codigo`,`idempresa`);

--
-- Indices de la tabla `familiares`
--
ALTER TABLE `familiares`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `fichas`
--
ALTER TABLE `fichas`
  ADD PRIMARY KEY (`idfichas`,`idempresa`);

--
-- Indices de la tabla `fichas_det`
--
ALTER TABLE `fichas_det`
  ADD PRIMARY KEY (`codigo`,`idfichas`);

--
-- Indices de la tabla `fichas_plantilla`
--
ALTER TABLE `fichas_plantilla`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `formas_pago`
--
ALTER TABLE `formas_pago`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `forma_pagos`
--
ALTER TABLE `forma_pagos`
  ADD PRIMARY KEY (`idforma_pago`);

--
-- Indices de la tabla `general`
--
ALTER TABLE `general`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD PRIMARY KEY (`idgrupo`);

--
-- Indices de la tabla `grupo_pro`
--
ALTER TABLE `grupo_pro`
  ADD PRIMARY KEY (`idgrupo`);

--
-- Indices de la tabla `herramienta_plantilla`
--
ALTER TABLE `herramienta_plantilla`
  ADD PRIMARY KEY (`codigo`,`usuario`);

--
-- Indices de la tabla `historial_acceso`
--
ALTER TABLE `historial_acceso`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `historial_recurrencia`
--
ALTER TABLE `historial_recurrencia`
  ADD PRIMARY KEY (`codigo`,`idempresa`,`idcliente`);

--
-- Indices de la tabla `hotspot_bienvenida`
--
ALTER TABLE `hotspot_bienvenida`
  ADD PRIMARY KEY (`idempresa`,`codigo`);

--
-- Indices de la tabla `hotspot_logout`
--
ALTER TABLE `hotspot_logout`
  ADD PRIMARY KEY (`idempresa`,`codigo`);

--
-- Indices de la tabla `hotspot_publicidad`
--
ALTER TABLE `hotspot_publicidad`
  ADD PRIMARY KEY (`codigo`,`idempresa`);

--
-- Indices de la tabla `importador`
--
ALTER TABLE `importador`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `incidencias`
--
ALTER TABLE `incidencias`
  ADD PRIMARY KEY (`idincidencias`,`idempresa`);

--
-- Indices de la tabla `innova_productos`
--
ALTER TABLE `innova_productos`
  ADD PRIMARY KEY (`idproducto`);

--
-- Indices de la tabla `ip_pool`
--
ALTER TABLE `ip_pool`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `jornada_laboral`
--
ALTER TABLE `jornada_laboral`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `legajo`
--
ALTER TABLE `legajo`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `licencia`
--
ALTER TABLE `licencia`
  ADD PRIMARY KEY (`idempresa`,`idlicencia`);

--
-- Indices de la tabla `licencias`
--
ALTER TABLE `licencias`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `licencia_router`
--
ALTER TABLE `licencia_router`
  ADD PRIMARY KEY (`codigo`,`idlicencia`,`idrouter`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`idmarca`);

--
-- Indices de la tabla `mensaje`
--
ALTER TABLE `mensaje`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `merito`
--
ALTER TABLE `merito`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mision`
--
ALTER TABLE `mision`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`idmodelo`,`idmarca`);

--
-- Indices de la tabla `modo_equipo`
--
ALTER TABLE `modo_equipo`
  ADD PRIMARY KEY (`idmodo`);

--
-- Indices de la tabla `msj_compra`
--
ALTER TABLE `msj_compra`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `nivel_educativo`
--
ALTER TABLE `nivel_educativo`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `nivel_remunerativo`
--
ALTER TABLE `nivel_remunerativo`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `nmision`
--
ALTER TABLE `nmision`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `nosotros`
--
ALTER TABLE `nosotros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  ADD PRIMARY KEY (`codigo`,`idempresa`);

--
-- Indices de la tabla `nvision`
--
ALTER TABLE `nvision`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `otros`
--
ALTER TABLE `otros`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `parametros`
--
ALTER TABLE `parametros`
  ADD PRIMARY KEY (`idempresa`,`parametro`,`tipo_parametro`);

--
-- Indices de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  ADD PRIMARY KEY (`idperfil`,`idempresa`);

--
-- Indices de la tabla `periodo`
--
ALTER TABLE `periodo`
  ADD PRIMARY KEY (`idperiodo`);

--
-- Indices de la tabla `planes`
--
ALTER TABLE `planes`
  ADD PRIMARY KEY (`idproducto`,`idplan`);

--
-- Indices de la tabla `plantillas`
--
ALTER TABLE `plantillas`
  ADD PRIMARY KEY (`idplantilla`);

--
-- Indices de la tabla `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`idpost`,`idempresa`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idempresa`,`codigo`);

--
-- Indices de la tabla `prueba`
--
ALTER TABLE `prueba`
  ADD PRIMARY KEY (`idprueba`,`idempresa`);

--
-- Indices de la tabla `queues`
--
ALTER TABLE `queues`
  ADD PRIMARY KEY (`idqueues`,`idempresa`);

--
-- Indices de la tabla `regimen_laboral`
--
ALTER TABLE `regimen_laboral`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `remuneracion_familiar`
--
ALTER TABLE `remuneracion_familiar`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `remuneracion_personal`
--
ALTER TABLE `remuneracion_personal`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `renuncias`
--
ALTER TABLE `renuncias`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `resolucion`
--
ALTER TABLE `resolucion`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `resolucion_laboral`
--
ALTER TABLE `resolucion_laboral`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `router`
--
ALTER TABLE `router`
  ADD PRIMARY KEY (`idempresa`,`idrouter`);

--
-- Indices de la tabla `seguimiento`
--
ALTER TABLE `seguimiento`
  ADD PRIMARY KEY (`id`,`idcliente`);

--
-- Indices de la tabla `servicio_internet`
--
ALTER TABLE `servicio_internet`
  ADD PRIMARY KEY (`idservicio`,`idempresa`);

--
-- Indices de la tabla `situacion_laboral`
--
ALTER TABLE `situacion_laboral`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`idtest`,`idempresa`);

--
-- Indices de la tabla `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tickets_asignados`
--
ALTER TABLE `tickets_asignados`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `tickets_asignados_det`
--
ALTER TABLE `tickets_asignados_det`
  ADD PRIMARY KEY (`item`,`codigo_alterno`);

--
-- Indices de la tabla `tickets_asignados_perfil_det`
--
ALTER TABLE `tickets_asignados_perfil_det`
  ADD PRIMARY KEY (`idperfil_det`,`codigo`);

--
-- Indices de la tabla `ticket_venta`
--
ALTER TABLE `ticket_venta`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`idgrupo`,`idtipo`);

--
-- Indices de la tabla `tipo_acceso`
--
ALTER TABLE `tipo_acceso`
  ADD PRIMARY KEY (`idempresa`,`idtipo`);

--
-- Indices de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  ADD PRIMARY KEY (`idempresa`,`iddocumento`);

--
-- Indices de la tabla `tipo_licencia`
--
ALTER TABLE `tipo_licencia`
  ADD PRIMARY KEY (`idtipo`);

--
-- Indices de la tabla `tipo_moneda`
--
ALTER TABLE `tipo_moneda`
  ADD PRIMARY KEY (`idmoneda`);

--
-- Indices de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`idempresa`,`idtipo`);

--
-- Indices de la tabla `trafico_usuario_hotspot`
--
ALTER TABLE `trafico_usuario_hotspot`
  ADD PRIMARY KEY (`idcliente`);

--
-- Indices de la tabla `ubdepartamento`
--
ALTER TABLE `ubdepartamento`
  ADD PRIMARY KEY (`idDepa`);

--
-- Indices de la tabla `ubdistrito`
--
ALTER TABLE `ubdistrito`
  ADD PRIMARY KEY (`idDist`);

--
-- Indices de la tabla `ubprovincia`
--
ALTER TABLE `ubprovincia`
  ADD PRIMARY KEY (`idProv`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios_hotspot`
--
ALTER TABLE `usuarios_hotspot`
  ADD PRIMARY KEY (`idempresa`,`codigo`);

--
-- Indices de la tabla `vacaciones`
--
ALTER TABLE `vacaciones`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `validacion`
--
ALTER TABLE `validacion`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `vcarrito`
--
ALTER TABLE `vcarrito`
  ADD PRIMARY KEY (`idcarrito`,`idcliente`,`item`);

--
-- Indices de la tabla `vision`
--
ALTER TABLE `vision`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `zonas`
--
ALTER TABLE `zonas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `area_laboral`
--
ALTER TABLE `area_laboral`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `ascensos`
--
ALTER TABLE `ascensos`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `campanas`
--
ALTER TABLE `campanas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `capacitaciones`
--
ALTER TABLE `capacitaciones`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `cargo_laboral`
--
ALTER TABLE `cargo_laboral`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT de la tabla `carrusel`
--
ALTER TABLE `carrusel`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `codigo_alterno`
--
ALTER TABLE `codigo_alterno`
  MODIFY `codigo` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `contratos`
--
ALTER TABLE `contratos`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=720;

--
-- AUTO_INCREMENT de la tabla `dcontactanos`
--
ALTER TABLE `dcontactanos`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `declaraciones_juradas`
--
ALTER TABLE `declaraciones_juradas`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `demerito`
--
ALTER TABLE `demerito`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `desplazamiento`
--
ALTER TABLE `desplazamiento`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `dfactura`
--
ALTER TABLE `dfactura`
  MODIFY `item` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `dgeneral`
--
ALTER TABLE `dgeneral`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `dimagen_producto`
--
ALTER TABLE `dimagen_producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `direcciones`
--
ALTER TABLE `direcciones`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `dmision`
--
ALTER TABLE `dmision`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `dnosotros`
--
ALTER TABLE `dnosotros`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `documento`
--
ALTER TABLE `documento`
  MODIFY `iddocumento` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `documentos_adjuntos`
--
ALTER TABLE `documentos_adjuntos`
  MODIFY `iddocumento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `documentos_digitalizados`
--
ALTER TABLE `documentos_digitalizados`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `documento_venta`
--
ALTER TABLE `documento_venta`
  MODIFY `iddocumento` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `dvision`
--
ALTER TABLE `dvision`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `edocs`
--
ALTER TABLE `edocs`
  MODIFY `codigo` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `equipos`
--
ALTER TABLE `equipos`
  MODIFY `idequipo` int(1) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `evaluaciones`
--
ALTER TABLE `evaluaciones`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `familiares`
--
ALTER TABLE `familiares`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `fichas_det`
--
ALTER TABLE `fichas_det`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `fichas_plantilla`
--
ALTER TABLE `fichas_plantilla`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `formas_pago`
--
ALTER TABLE `formas_pago`
  MODIFY `codigo` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `forma_pagos`
--
ALTER TABLE `forma_pagos`
  MODIFY `idforma_pago` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `grupo`
--
ALTER TABLE `grupo`
  MODIFY `idgrupo` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `herramienta_plantilla`
--
ALTER TABLE `herramienta_plantilla`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `historial_acceso`
--
ALTER TABLE `historial_acceso`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `historial_recurrencia`
--
ALTER TABLE `historial_recurrencia`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `hotspot_publicidad`
--
ALTER TABLE `hotspot_publicidad`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `importador`
--
ALTER TABLE `importador`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `incidencias`
--
ALTER TABLE `incidencias`
  MODIFY `idincidencias` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ip_pool`
--
ALTER TABLE `ip_pool`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `jornada_laboral`
--
ALTER TABLE `jornada_laboral`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `legajo`
--
ALTER TABLE `legajo`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `licencias`
--
ALTER TABLE `licencias`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `licencia_router`
--
ALTER TABLE `licencia_router`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
  MODIFY `idmarca` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mensaje`
--
ALTER TABLE `mensaje`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `merito`
--
ALTER TABLE `merito`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `modelo`
--
ALTER TABLE `modelo`
  MODIFY `idmodelo` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `modo_equipo`
--
ALTER TABLE `modo_equipo`
  MODIFY `idmodo` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `msj_compra`
--
ALTER TABLE `msj_compra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `nivel_educativo`
--
ALTER TABLE `nivel_educativo`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=750;

--
-- AUTO_INCREMENT de la tabla `nivel_remunerativo`
--
ALTER TABLE `nivel_remunerativo`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `notas`
--
ALTER TABLE `notas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `otros`
--
ALTER TABLE `otros`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  MODIFY `idperfil` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `periodo`
--
ALTER TABLE `periodo`
  MODIFY `idperiodo` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `post`
--
ALTER TABLE `post`
  MODIFY `idpost` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `prueba`
--
ALTER TABLE `prueba`
  MODIFY `idprueba` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `queues`
--
ALTER TABLE `queues`
  MODIFY `idqueues` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `regimen_laboral`
--
ALTER TABLE `regimen_laboral`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `remuneracion_familiar`
--
ALTER TABLE `remuneracion_familiar`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `remuneracion_personal`
--
ALTER TABLE `remuneracion_personal`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `renuncias`
--
ALTER TABLE `renuncias`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `resolucion`
--
ALTER TABLE `resolucion`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `resolucion_laboral`
--
ALTER TABLE `resolucion_laboral`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `seguimiento`
--
ALTER TABLE `seguimiento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `situacion_laboral`
--
ALTER TABLE `situacion_laboral`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `test`
--
ALTER TABLE `test`
  MODIFY `idtest` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `ticket`
--
ALTER TABLE `ticket`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tickets_asignados`
--
ALTER TABLE `tickets_asignados`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tickets_asignados_det`
--
ALTER TABLE `tickets_asignados_det`
  MODIFY `item` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tickets_asignados_perfil_det`
--
ALTER TABLE `tickets_asignados_perfil_det`
  MODIFY `idperfil_det` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ticket_venta`
--
ALTER TABLE `ticket_venta`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_moneda`
--
ALTER TABLE `tipo_moneda`
  MODIFY `idmoneda` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=722;

--
-- AUTO_INCREMENT de la tabla `vacaciones`
--
ALTER TABLE `vacaciones`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `validacion`
--
ALTER TABLE `validacion`
  MODIFY `codigo` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `vcarrito`
--
ALTER TABLE `vcarrito`
  MODIFY `idcarrito` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 12-05-2023 a las 20:15:47
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sinscrip`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `academic`
--

CREATE TABLE `academic` (
  `id` bigint(20) NOT NULL,
  `cve_academic` varchar(6) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `cve_sexo` varchar(9) NOT NULL,
  `cve_campus` varchar(3) NOT NULL,
  `cve_institu` varchar(3) NOT NULL,
  `cve_program` varchar(3) NOT NULL,
  `email` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `academic`
--

INSERT INTO `academic` (`id`, `cve_academic`, `nombres`, `apellidos`, `cve_sexo`, `cve_campus`, `cve_institu`, `cve_program`, `email`) VALUES
(1, 'X00913', 'LAURO', 'LOPEZ MATA', 'MASCULINO', 'MON', 'BOT', 'BOT', 'lauro@colpos.mx'),
(2, 'X00610', 'CECILIA BEATRIZ', 'PEÑA VALDIVIA', 'FEMENINO', 'MON', 'BOT', 'BOT', 'cecilia@colpos.mx'),
(3, 'X01294', 'ARNULFO', 'ALDRETE ', 'MASCULINO', 'MON', 'FOR', 'FOR', 'aaldrete@colpos.mx'),
(4, 'X01456', 'GREGORIO', 'ANGELES PEREZ', 'MASCULINO', 'MON', 'FOR', 'FOR', 'gangeles@colpos.mx'),
(5, 'X00977', 'MANUEL DE JESUS', 'GONZALEZ GUILLEN', 'MASCULINO', 'MON', 'FOR', 'FOR', 'manuelg@colpos.mx'),
(6, 'X01337', 'PATRICIA', 'HERNANDEZ DE LA ROSA', 'FEMENINO', 'MON', 'FOR', 'FOR', 'pathr@colpos.mx'),
(7, 'X01378', 'MIGUEL ANGEL', 'LOPEZ LOPEZ', 'MASCULINO', 'MON', 'FOR', 'FOR', 'lopezma@colpos.mx'),
(8, 'X01232', 'JAVIER', 'LOPEZ UPTON', 'MASCULINO', 'MON', 'FOR', 'FOR', 'uptonj@colpos.mx'),
(9, 'X01392', 'CARLOS', 'RAMIREZ HERRERA', 'MASCULINO', 'MON', 'FOR', 'FOR', 'kmcram@colpos.mx'),
(10, 'X00604', 'J. JESUS', 'VARGAS HERNANDEZ', 'MASCULINO', 'MON', 'FOR', 'FOR', 'vargashj@colpos.mx'),
(11, 'X01197', 'GUILLERMO', 'CRESPO PICHARDO', 'MASCULINO', 'MON', 'HID', 'HID', ''),
(12, 'X01368', 'JORGE', 'ALVARADO LOPEZ', 'MASCULINO', 'MON', 'EDA', 'EDA', ''),
(13, 'X00101', 'MANUEL', 'ANAYA GARDUÑO', 'MASCULINO', 'MON', 'EDA', 'EDA', 'anayam@colpos.mx'),
(14, 'X01348', 'LENOM', 'CAJUSTE BONTEMPS', 'MASCULINO', 'MON', 'EDA', 'EDA', ''),
(15, 'A01049', 'ENRIQUE', 'OJEDA TREJO', 'MASCULINO', 'MON', 'EDA', 'EDA', 'enriqueot@colpos.mx'),
(16, 'X00264', 'CARLOS ALBERTO', 'ORTIZ SOLORIO', 'MASCULINO', 'MON', 'EDA', 'EDA', 'ortiz@colpos.mx'),
(17, 'X00885', 'OMAR KAYAM', 'VILLALPANDO BARRIGA', 'MASCULINO', 'MON', 'IRN', 'AGM', ''),
(18, 'X00733', 'ALEJANDRO', 'VELAZQUEZ MARTINEZ', 'MASCULINO', 'MON', 'FOR', 'FOR', 'alejvela@colpos.mx'),
(19, 'X00760', 'IGNACIO', 'CID DEL PRADO VERA', 'MASCULINO', 'MON', 'IFS', 'FIT', 'icid@colpos.mx'),
(20, 'X00855', 'RAQUEL', 'ALATORRE ROSAS', 'FEMENINO', 'MON', 'IFS', 'ENT', 'alatoros@colpos.mx'),
(21, 'X00627', 'JESUS', 'ROMERO NAPOLES', 'MASCULINO', 'MON', 'IFS', 'ENT', 'jnapoles@colpos.mx'),
(22, 'X00617', 'JUAN', 'CIBRIAN TOVAR', 'MASCULINO', 'MON', 'IFS', 'ENT', 'jcibrian@colpos.mx'),
(23, 'X00856', 'GABRIEL', 'OTERO COLINA', 'MASCULINO', 'MON', 'IFS', 'ENT', 'gotero@colpos.mx'),
(24, 'X00414', 'MARIA CELINA MICAELA', 'LLANDERAL CAZARES', 'FEMENINO', 'MON', 'IFS', 'ENT', 'llcelina@colpos.mx'),
(25, 'X00395', 'EMMA', 'ZAVALETA MEJIA', 'FEMENINO', 'MON', 'IFS', 'FIT', 'zavaleta@colpos.mx'),
(26, 'X00694', 'ARMANDO', 'EQUIHUA MARTINEZ', 'MASCULINO', 'MON', 'IFS', 'ENT', 'equihuaa@colpos.mx'),
(27, 'X01289', 'MANUEL', 'SANDOVAL VILLA', 'MASCULINO', 'MON', 'EDA', 'EDA', 'msandoval@colpos.mx'),
(28, 'X00211', 'EDMUNDO', 'GARCIA MOYA', 'MASCULINO', 'MON', 'BOT', 'BOT', 'edmundo@colpos.mx'),
(29, 'X00386', 'VICTOR HUGO', 'VOLKE HALLER', 'MASCULINO', 'MON', 'EDA', 'EDA', 'vvolke@colpos.mx'),
(30, 'X00614', 'CARLOS', 'TREJO LOPEZ', 'MASCULINO', 'MON', 'BOT', 'BOT', 'catre@colpos.mx'),
(31, 'X01247', 'JESUS', 'PEREZ MORENO', 'MASCULINO', 'MON', 'EDA', 'EDA', 'jperezm@colpos.mx'),
(32, 'X00403', 'RONALD', 'FERRERA CERRATO', 'MASCULINO', 'MON', 'EDA', 'EDA', 'ronaldfc@colpos.mx'),
(33, 'X00609', 'RAMON MARCOS', 'SOTO HERNANDEZ', 'MASCULINO', 'MON', 'BOT', 'BOT', 'msoto@colpos.mx'),
(34, 'X00493', 'JORGE DIONISIO', 'ETCHEVERS BARRA', 'MASCULINO', 'MON', 'EDA', 'EDA', 'jetchev@colpos.mx'),
(35, 'X01085', 'ARTURO', 'GALVIS SPINOLA', 'MASCULINO', 'MON', 'EDA', 'EDA', 'galvis@colpos.mx'),
(36, 'A01094', 'VICTOR MANUEL', 'ORDAZ CHAPARRO', 'MASCULINO', 'MON', 'EDA', 'EDA', 'ordaz@colpos.mx'),
(37, 'X00111', 'OSCAR LUIS', 'PALACIOS VELEZ', 'MASCULINO', 'MON', 'HID', 'HID', 'opalacio@colpos.mx'),
(38, 'X00435', 'ADOLFO', 'EXEBIO GARCIA', 'MASCULINO', 'MON', 'HID', 'HID', 'exebio@colpos.mx'),
(39, 'X00512', 'CARLOS', 'RAMIREZ AYALA', 'MASCULINO', 'MON', 'HID', 'HID', 'cara@colpos.mx'),
(40, 'X00177', 'ENRIQUE', 'PALACIOS VELEZ', 'MASCULINO', 'MON', 'HID', 'HID', 'epalacio@colpos.mx'),
(41, 'X00496', 'ERNESTO GABRIEL', 'ALCANTAR GONZALEZ', 'MASCULINO', 'MON', 'EDA', 'EDA', 'alcantar@colpos.mx'),
(42, 'A01176', 'MA. DEL CARMEN ANGELES', 'GONZALEZ CHAVEZ', 'FEMENINO', 'MON', 'EDA', 'EDA', 'carmeng@colpos.mx'),
(43, 'X01335', 'MA. DEL PILAR', 'ALBERTI MANZANARES', 'FEMENINO', 'MON', 'ISE', 'DES', 'palberti@colpos.mx'),
(44, 'X00525', 'EMMA MARIA', 'ZAPATA MARTELO', 'FEMENINO', 'MON', 'ISE', 'DES', 'emzapata@colpos.mx'),
(45, 'A01046', 'HERMILIO', 'NAVARRO GARZA', 'MASCULINO', 'MON', 'ISE', 'DES', 'hermnava@colpos.mx'),
(46, 'X00852', 'MARTHA ELVA', 'RAMIREZ GUZMAN', 'FEMENINO', 'MON', 'ISE', 'EST', 'martharg@colpos.mx'),
(47, 'X00700', 'GILBERTO', 'RENDON SANCHEZ', 'MASCULINO', 'MON', 'ISE', 'EST', 'rendon@colpos.mx'),
(48, 'X00241', 'GRACIELA M.', 'BUENO AGUILAR', 'FEMENINO', 'MON', 'ISE', 'COA', 'gbueno@colpos.mx'),
(49, 'X00244', 'YOLANDA MARGARITA', 'FERNANDEZ ORDOÑEZ', 'FEMENINO', 'MON', 'ISE', 'COA', 'yfernand@colpos.mx'),
(50, 'X00430', 'ENRIQUE DE JESUS', 'ARJONA SUAREZ', 'MASCULINO', 'MON', 'ISE', 'EST', 'arjona@colpos.mx'),
(51, 'A01152', 'DAVID HEBERT', 'DEL VALLE PANIAGUA', 'MASCULINO', 'MON', 'ISE', 'COA', 'dhvallep@colpos.mx'),
(52, 'A01062', 'MIGUEL ANGEL', 'MARTINEZ DAMIAN', 'MASCULINO', 'MON', 'ISE', 'ECO', 'angel01@colpos.mx'),
(53, 'X00955', 'JOSE SATURNINO', 'MORA FLORES', 'MASCULINO', 'MON', 'ISE', 'ECO', 'saturmf@colpos.mx'),
(54, 'X00409', 'ROBERTO', 'GARCIA MATA', 'MASCULINO', 'MON', 'ISE', 'ECO', 'rory@colpos.mx'),
(55, 'X00195', 'LUIS EDUARDO', 'CHALITA TOVAR', 'MASCULINO', 'MON', 'ISE', 'ECO', 'chalita@colpos.mx'),
(56, 'X00730', 'MARIA DE JESUS', 'SANTIAGO CRUZ', 'FEMENINO', 'MON', 'ISE', 'ECO', 'ecomjsc@colpos.mx'),
(57, 'X01164', 'JOSE MIGUEL', 'OMAÑA SILVESTRE', 'MASCULINO', 'MON', 'ISE', 'ECO', 'miguelom@colpos.mx'),
(58, 'X00432', 'JAIME ARTURO', 'MATUS GARDEA', 'MASCULINO', 'MON', 'ISE', 'ECO', 'matusgar@colpos.mx'),
(59, 'X00640', 'SARA MARIA DE LA CONCEPCION', 'SANCHEZ QUINTANAR', 'FEMENINO', 'MON', 'ISE', 'DES', 'csq@colpos.mx'),
(60, 'X00976', 'MERCEDES AURELIA', 'JIMENEZ VELAZQUEZ', 'FEMENINO', 'MON', 'ISE', 'DES', 'mercedes@colpos.mx'),
(61, 'A01001', 'ANIBAL GRICELDO', 'QUISPE LIMAYLLA', 'MASCULINO', 'MON', 'ISE', 'DES', 'anibalq@colpos.mx'),
(62, 'X01402', 'JACINTA', 'PALERM VIQUEIRA', 'FEMENINO', 'MON', 'ISE', 'DES', 'jpalerm@colpos.mx'),
(63, 'X00592', 'JUAN CELESTINO', 'MOLINA MORENO', 'MASCULINO', 'MON', 'IRG', 'SEM', ''),
(64, 'X00312', 'AQUILES', 'CARBALLO CARBALLO', 'MASCULINO', 'MON', 'IRG', 'SEM', 'carballo@colpos.mx'),
(65, 'X00581', 'FERNANDO', 'CASTILLO GONZALEZ', 'MASCULINO', 'MON', 'IRG', 'GEN', 'fcastill@colpos.mx'),
(66, 'X00035', 'SALVADOR', 'MIRANDA COLIN', 'MASCULINO', 'MON', 'IRG', 'GEN', 'smiranda@colpos.mx'),
(67, 'X01295', 'LUIS', 'VILLARREAL RUIZ', 'MASCULINO', 'MON', 'IRG', 'GEN', 'luisvirl@colpos.mx'),
(68, 'X00703', 'JOSE APOLINAR', 'MEJIA CONTRERAS', 'MASCULINO', 'MON', 'IRG', 'SEM', 'mapolinar@colpos.mx'),
(69, 'X00591', 'MA. DEL CARMEN', 'MENDOZA CASTILLO', 'FEMENINO', 'MON', 'IRG', 'GEN', 'camen@colpos.mx'),
(70, 'X00237', 'GUILLERMO', 'CARRILLO CASTAÑEDA', 'MASCULINO', 'MON', 'IRG', 'GEN', 'carrillo@colpos.mx'),
(71, 'X00580', 'IGNACIO', 'BENITEZ RIQUELME', 'MASCULINO', 'MON', 'IRG', 'GEN', 'riquelme@colpos.mx'),
(72, 'X01252', 'ALEJANDRINA', 'ROBLEDO PAZ', 'FEMENINO', 'MON', 'IRG', 'SEM', 'arobledo@colpos.mx'),
(73, 'X00744', 'MARIA CRISTINA GUADALUPE', 'LOPEZ PERALTA', 'FEMENINO', 'MON', 'IRG', 'GEN', 'cristy@colpos.mx'),
(74, 'X01322', 'VICTOR HEBER', 'AGUILAR RINCON', 'MASCULINO', 'MON', 'IRG', 'GEN', 'aheber@colpos.mx'),
(75, 'X00251', 'JOSE GUADALUPE', 'HERRERA HARO', 'MASCULINO', 'MON', 'IRG', 'GAN', 'haro@colpos.mx'),
(76, 'X01233', 'MARIA ESTHER', 'ORTEGA CERRILLA', 'FEMENINO', 'MON', 'IRG', 'GAN', 'meoc@colpos.mx'),
(77, 'X00898', 'CARLOS MIGUEL', 'BECERRIL PEREZ', 'MASCULINO', 'MON', 'IRG', 'GAN', 'color@colpos.mx'),
(78, 'X01320', 'MARIA TERESA', 'SANCHEZ-TORRES ESQUEDA', 'FEMENINO', 'MON', 'IRG', 'GAN', 'teresa@colpos.mx'),
(79, 'X00398', 'ARTURO', 'PRO MARTINEZ', 'MASCULINO', 'MON', 'IRG', 'GAN', 'aproma@colpos.mx'),
(80, 'X00488', 'JOSE RICARDO', 'BARCENA GAMA', 'MASCULINO', 'MON', 'IRG', 'GAN', 'rbarcena@colpos.mx'),
(81, 'X00466', 'SERGIO SEGUNDO', 'GONZALEZ MUÑOZ', 'MASCULINO', 'MON', 'IRG', 'GAN', 'sergiogabriel@colpos.mx'),
(82, 'X00889', 'MARIO ANTONIO', 'COBOS PERALTA', 'MASCULINO', 'MON', 'IRG', 'GAN', 'cobos@colpos.mx'),
(83, 'X00285', 'GLAFIRO', 'TORRES HERNANDEZ', 'MASCULINO', 'MON', 'IRG', 'GAN', 'glatohe@colpos.mx'),
(84, 'X00385', 'LEOPOLDO E.', 'MENDOZA ONOFRE', 'MASCULINO', 'MON', 'IRG', 'SEM', 'leopoldo@colpos.mx'),
(85, 'X00711', 'VICTOR ARTURO', 'GONZALEZ HERNANDEZ', 'MASCULINO', 'MON', 'IRG', 'GEN', 'vagh@colpos.mx'),
(86, 'X01360', 'GUILLERMO', 'CALDERON ZAVALA', 'MASCULINO', 'MON', 'IRG', 'FRU', 'cazagu@colpos.mx'),
(87, 'A01066', 'ALFREDO', 'LOPEZ JIMENEZ', 'MASCULINO', 'MON', 'IRG', 'FRU', 'lopezja@colpos.mx'),
(88, 'X00464', 'ALBERTO ENRIQUE', 'BECERRIL ROMAN', 'MASCULINO', 'MON', 'IRG', 'FRU', 'becerril@colpos.mx'),
(89, 'X01482', 'GREGORIO', 'ARELLANO OSTOA', 'MASCULINO', 'MON', 'IRG', 'FRU', 'arellano@colpos.mx'),
(90, 'X00722', 'SERGIO HUMBERTO', 'CHAVEZ FRANCO', 'MASCULINO', 'MON', 'IRG', 'FRU', 'sergiocf@colpos.mx'),
(91, 'X00596', 'ANGEL', 'VILLEGAS MONTER', 'MASCULINO', 'MON', 'IRG', 'FRU', 'avillega@colpos.mx'),
(92, 'X00463', 'CRESCENCIANO', 'SAUCEDO VELOZ', 'MASCULINO', 'MON', 'IRG', 'FRU', 'sauveloz@colpos.mx'),
(93, 'X00316', 'JOSE ISABEL', 'CORTES FLORES', 'MASCULINO', 'MON', 'EDA', 'EDA', 'jicortes@colpos.mx'),
(94, 'X00608', 'JOSE ALBERTO SALVADOR', 'ESCALANTE ESTRADA', 'MASCULINO', 'MON', 'BOT', 'BOT', 'jasee@colpos.mx'),
(95, 'X00584', 'CANDIDO', 'LOPEZ CASTAÑEDA', 'MASCULINO', 'MON', 'IRG', 'GEN', 'clc@colpos.mx'),
(96, 'X00217', 'DAVID ANTONIO', 'SOTRES RAMOS', 'MASCULINO', 'MON', 'ISE', 'EST', 'dsotres@colpos.mx'),
(97, 'X00267', 'ANGEL', 'LAGUNES TEJEDA', 'MASCULINO', 'MON', 'IFS', 'ENT', 'alagunes@colpos.mx'),
(98, 'X00242', 'HECTOR', 'GONZALEZ ROSAS', 'MASCULINO', 'MON', 'IRG', 'FRU', 'hectorgr@colpos.mx'),
(99, 'X00626', 'J. CONCEPCION', 'RODRIGUEZ MACIEL', 'MASCULINO', 'MON', 'IFS', 'ENT', 'concho@colpos.mx'),
(100, 'X00481', 'HECTOR MANUEL', 'ORTEGA ESCOBAR', 'MASCULINO', 'MON', 'HID', 'HID', 'mortega@colpos.mx'),
(101, 'X00673', 'JOSE DONALDO', 'RIOS BERBER', 'MASCULINO', 'MON', 'EDA', 'EDA', ''),
(102, 'X01467', 'ANA MARIA', 'HERNANDEZ ANGUIANO', 'FEMENINO', 'MON', 'IFS', 'FIT', 'ahernandez@colpos.mx'),
(103, 'A01136', 'DIONICIO', 'ALVARADO ROSALES', 'MASCULINO', 'MON', 'IFS', 'FIT', 'dionicio@colpos.mx'),
(104, 'X00071', 'DANIEL', 'TELIZ ORTIZ', 'MASCULINO', 'MON', 'IFS', 'FIT', 'dteliz@colpos.mx'),
(105, 'X00408', 'BARTOLOME', 'CRUZ GALINDO', 'MASCULINO', 'MON', 'ISE', 'ECO', ''),
(106, 'X01228', 'FERNANDO', 'CLEMENTE SANCHEZ', 'MASCULINO', 'MON', 'IRG', 'GAN', 'clemente@colpos.mx'),
(107, 'X00883', 'LAURA  ELENA', 'GARZA BUENO', 'FEMENINO', 'MON', 'ISE', 'ECO', 'garzal@colpos.mx'),
(109, 'X00204', 'JUAN RICARDO', 'BAUER MENGELBERG', 'MASCULINO', 'MON', 'ISE', 'COA', 'jbauer@colpos.mx'),
(110, 'X00372', 'FELIX VALERIO', 'GONZALEZ COSSIO', 'MASCULINO', 'MON', 'ISE', 'EST', 'felixgc@colpos.mx'),
(111, 'X00887', 'JUAN MANUEL', 'GONZALEZ CAMACHO', 'MASCULINO', 'MON', 'ISE', 'COA', 'jmgc@colpos.mx'),
(112, 'X01137', 'ROGELIO', 'CARRILLO GONZALEZ', 'MASCULINO', 'MON', 'EDA', 'EDA', 'crogelio@colpos.mx'),
(113, 'X01417', 'JUAN JOSE', 'ALMARAZ SUAREZ', 'MASCULINO', 'MON', 'EDA', 'EDA', 'jalmaraz@colpos.mx'),
(114, 'X00633', 'MARIA DEL PILAR', 'RODRIGUEZ GUZMAN', 'FEMENINO', 'MON', 'IFS', 'FIT', 'pilarrg@colpos.mx'),
(115, 'X00755', 'GABRIEL', 'HARO AGUILAR', 'MASCULINO', 'MON', 'IRN', 'AGM', ''),
(116, 'X01644', 'CLAUDIA MARIA ISABEL', 'HIDALGO MORENO', 'FEMENINO', 'MON', 'EDA', 'EDA', 'hidalgo@colpos.mx'),
(117, 'X01241', 'LAURA DELIA', 'ORTEGA ARENAS', 'FEMENINO', 'MON', 'IFS', 'ENT', 'ladeorar@colpos.mx'),
(118, 'X00994', 'GUSTAVO', 'RAMIREZ VALVERDE', 'MASCULINO', 'MON', 'ISE', 'EST', 'gramirez@colpos.mx'),
(119, 'X01130', 'DANIEL', 'NIETO ANGEL', 'MASCULINO', 'MON', 'IFS', 'FIT', 'dnieto@colpos.mx'),
(120, 'X01502', 'JOSE LUIS', 'FIGUEROA VELASCO', 'MASCULINO', 'MON', 'IRG', 'GAN', 'jlfigueroa@colpos.mx'),
(121, 'X01646', 'OMAR', 'HERNANDEZ MENDO', 'MASCULINO', 'MON', 'IRG', 'GAN', 'ohmendo@colpos.mx'),
(122, 'X01318', 'PROMETEO', 'SANCHEZ GARCIA', 'MASCULINO', 'MON', 'EDA', 'EDA', 'promet@colpos.mx'),
(123, 'A01065', 'RAQUEL', 'CANO MEDRANO', 'FEMENINO', 'MON', 'IRG', 'FRU', 'racm@colpos.mx'),
(124, 'A01083', 'VICENTE', 'ESPINOSA HERNANDEZ', 'MASCULINO', 'MON', 'EDA', 'EDA', 'vespinos@colpos.mx'),
(125, 'A01129', 'ESTEBAN', 'VALTIERRA PACHECO', 'MASCULINO', 'MON', 'ISE', 'DES', 'evaltier@colpos.mx'),
(126, 'X00070', 'CARLOS', 'DE LEON GARCIA DE ALBA', 'MASCULINO', 'MON', 'IFS', 'FIT', 'cdeleon@colpos.mx'),
(127, 'X00093', 'MIGUEL', 'CABALLERO DELOYA', 'MASCULINO', 'MON', 'FOR', 'FOR', 'mcaballero@colpos.mx'),
(128, 'X00128', 'ANTONIO', 'TURRENT FERNANDEZ', 'MASCULINO', 'MON', '', '', 'aturrent37@colpos.mx'),
(129, 'X00205', 'DANIEL', 'BARRERA ISLAS', 'MASCULINO', 'MON', 'ISE', 'ECO', 'dbarrera@colpos.mx'),
(130, 'X00458', 'SALVADOR AGUSTIN', 'PEÑA DIAZ', 'MASCULINO', 'MON', 'HID', 'HID', ''),
(131, 'X00465', 'AURELIO MANUEL', 'FIERROS GONZALEZ', 'MASCULINO', 'MON', 'FOR', 'FOR', 'amfierros@colpos.mx'),
(132, 'X00531', 'JOSE DE JESUS', 'BRAMBILA PAZ', 'MASCULINO', 'MON', 'ISE', 'ECO', 'jbrambilaa@colpos.mx'),
(133, 'X00586', 'TARSICIO', 'CORONA TORRES', 'MASCULINO', 'MON', 'IRG', 'GEN', 'tcoronat@colpos.mx'),
(134, 'X00587', 'GABINO', 'GARCIA DE LOS SANTOS', 'MASCULINO', 'MON', 'IRG', 'SEM', 'garciag@colpos.mx'),
(135, 'X00619', 'NESTOR', 'BAUTISTA MARTINEZ', 'MASCULINO', 'MON', 'IFS', 'ENT', 'nestor@colpos.mx'),
(136, 'X00629', 'JULIO', 'SANCHEZ ESCUDERO', 'MASCULINO', 'MON', 'IFS', 'ENT', 'sanchezej@colpos.mx'),
(137, 'X00662', 'MARIA DE LAS NIEVES', 'RODRIGUEZ MENDOZA', 'FEMENINO', 'MON', 'EDA', 'EDA', 'marinie@colpos.mx'),
(138, 'X00749', 'VICTOR MANUEL', 'CETINA ALCALA', 'MASCULINO', 'MON', 'FOR', 'FOR', 'vicmac@colpos.mx'),
(139, 'X00820', 'MANUEL', 'LIVERA MUÑOZ', 'MASCULINO', 'MON', 'IRG', 'GEN', 'mlivera@colpos.mx'),
(140, 'X00854', 'HECTOR', 'GONZALEZ HERNANDEZ', 'MASCULINO', 'MON', 'IFS', 'ENT', 'hgzzhdz@colpos.mx'),
(141, 'X00946', 'HUMBERTO', 'VAQUERA HUERTA', 'MASCULINO', 'MON', 'ISE', 'EST', 'hvaquera@colpos.mx'),
(142, 'X00978', 'ARMANDO', 'GOMEZ GUERRERO', 'MASCULINO', 'MON', 'FOR', 'FOR', 'agomezg@colpos.mx'),
(143, 'X01018', 'REMIGIO ANASTACIO', 'GUZMAN PLAZOLA', 'MASCULINO', 'MON', 'IFS', 'FIT', 'rguzmanp@colpos.mx'),
(144, 'X01098', 'JAIME', 'GALLEGOS SANCHEZ', 'MASCULINO', 'MON', 'IRG', 'GAN', 'gallegos@colpos.mx'),
(145, 'X01113', 'MA. DE JESUS', 'YAÑEZ MORALES', 'FEMENINO', 'MON', 'IFS', 'FIT', 'yanezmj@colpos.mx'),
(146, 'X01220', 'JOSE SERGIO', 'SANDOVAL ISLAS', 'MASCULINO', 'MON', 'IFS', 'FIT', 'sandoval@colpos.mx'),
(147, 'X01302', 'GERARDO SERGIO', 'BENEDICTO VALDEZ', 'MASCULINO', 'MON', 'EDA', 'EDA', 'bsergio@colpos.mx'),
(148, 'X01308', 'GUSTAVO', 'MORA AGUILERA', 'MASCULINO', 'MON', 'IFS', 'FIT', 'morag@colpos.mx'),
(149, 'X01311', 'JOSE LUIS', 'GARCIA CUE', 'MASCULINO', 'MON', 'ISE', 'EST', 'jlgcue@colpos.mx'),
(150, 'X01312', 'REYNA ISABEL', 'ROJAS MARTINEZ', 'FEMENINO', 'MON', 'IFS', 'FIT', 'rojas@colpos.mx'),
(151, 'X01347', 'JOSE ANTONIO', 'MORA AGUILERA', 'MASCULINO', 'MON', 'IFS', 'FIT', 'aguilera@colpos.mx'),
(152, 'X01350', 'LUIS ANTONIO', 'TARANGO ARAMBULA', 'MASCULINO', 'MON', 'IRG', 'GAN', 'ltarango@colpos.mx'),
(153, 'X01379', 'JUAN ENRIQUE', 'RUBIÑOS PANTA', 'MASCULINO', 'MON', 'HID', 'HID', 'jerpkike@colpos.mx'),
(154, 'X01436', 'DANIEL LEOBARDO', 'OCHOA MARTINEZ', 'MASCULINO', 'MON', 'IFS', 'FIT', 'ldaniel@colpos.mx'),
(155, 'X01503', 'MARIA MAGDALENA', 'CROSBY GALVAN', 'FEMENINO', 'MON', 'IRG', 'GAN', 'maria@colpos.mx'),
(156, 'X01557', 'YOLANDA LETICIA', 'FERNANDEZ PAVIA', 'FEMENINO', 'MON', 'IRG', 'FRU', 'mapale1@colpos.mx'),
(157, 'X01577', 'ABEL', 'QUEVEDO NOLASCO', 'MASCULINO', 'MON', 'HID', 'HID', 'anolascos@colpos.mx'),
(158, 'X01578', 'LUCERO DEL MAR', 'RUIZ POSADAS', 'FEMENINO', 'MON', 'BOT', 'BOT', 'lucpo@colpos.mx'),
(159, 'X01601', 'ALEJANDRO', 'PEREZ PANDURO', 'MASCULINO', 'MON', 'IFS', 'ENT', 'aperez@colpos.mx'),
(160, 'X01682', 'MA. DEL CARMEN', 'GUTIERREZ CASTORENA', 'FEMENINO', 'MON', 'EDA', 'EDA', 'castor@colpos.mx'),
(161, 'X01704', 'DEMETRIO SALVADOR', 'FERNANDEZ REYNOSO', 'MASCULINO', 'MON', 'HID', 'HID', 'demetrio@colpos.mx'),
(162, 'X01718', 'VERONICA', 'VAZQUEZ GARCIA', 'FEMENINO', 'MON', 'ISE', 'DES', 'vvazquez@colpos.mx'),
(163, 'X01721', 'FRANCISCA OFELIA', 'PLASCENCIA ESCALANTE', 'FEMENINO', 'MON', 'FOR', 'FOR', 'fplascen@colpos.mx'),
(164, 'X01786', 'MARIO', 'LUNA CAVAZOS', 'MASCULINO', 'MON', 'BOT', 'BOT', 'mluna@colpos.mx'),
(165, 'X01845', 'FLORENTINO VICTOR', 'CONDE MARTINEZ', 'MASCULINO', 'MON', 'BOT', 'BOT', 'vconde@colpos.mx'),
(166, 'X01828', 'FERNANDO', 'MANZO RAMOS', 'MASCULINO', 'MON', 'ISE', 'DES', 'fmanzo@colpos.mx'),
(167, 'X01791', 'JUAN IGNACIO', 'VALDEZ HERNANDEZ', 'MASCULINO', 'MON', 'FOR', 'FOR', 'ignaciov@colpos.mx'),
(168, 'X01755', 'ALEJANDRO', 'ALARCON ', 'MASCULINO', 'MON', 'EDA', 'EDA', 'alexala@colpos.mx'),
(169, 'X01879', 'HEIKE', 'VIBRANS LINDEMANN', 'FEMENINO', 'MON', 'BOT', 'BOT', 'heike@colpos.mx'),
(170, 'X01807', 'EBANDRO', 'USCANGA MORTERA', 'MASCULINO', 'MON', 'BOT', 'BOT', 'euscanga@colpos.mx'),
(171, 'X01774', 'MIGUEL JORGE', 'ESCALONA MAURICE', 'MASCULINO', 'MON', 'ISE', 'DES', 'mescalona@colpos.mx'),
(172, 'X01910', 'OBDULIA LOURDES', 'SEGURA LEON', 'FEMENINO', 'MON', 'IFS', 'ENT', 'sleon@colpos.mx'),
(173, 'X01764', 'SERGIO', 'ARANDA OCAMPO', 'MASCULINO', 'MON', 'IFS', 'FIT', 'saranda@colpos.mx'),
(174, 'X01838', 'ROBERTO CARLOS', 'GARCIA SANCHEZ', 'MASCULINO', 'MON', 'ISE', 'ECO', 'rcgarcia@colpos.mx'),
(175, 'X01868', 'GENARO', 'OLMOS OROPEZA', 'MASCULINO', 'MON', 'IRG', 'GAN', 'olmosg@colpos.mx'),
(176, 'X01911', 'MARIO MANUEL', 'ALIPHAT FERNANDEZ', 'MASCULINO', 'PUE', 'CEI', 'CEI', ''),
(177, 'X01918', 'ARIEL WILBERT', 'GUZMAN FRANCO', 'MASCULINO', 'MON', 'IFS', 'ENT', 'gariel@colpos.mx'),
(178, 'X01941', 'ESTEBAN', 'RODRIGUEZ LEYVA', 'MASCULINO', 'MON', 'IFS', 'ENT', 'esteban@colpos.mx'),
(179, 'X01946', 'MA. ANTONIA', 'PEREZ OLVERA', 'FEMENINO', 'MON', 'ISE', 'DES', 'molvera@colpos.mx'),
(180, 'X01966', 'RUFINO', 'VIVAR MIRANDA', 'MASCULINO', 'MON', 'ISE', 'DES', 'rvm@colpos.mx'),
(181, 'X01990', 'MARCOS', 'JIMENEZ CASAS', 'MASCULINO', 'MON', 'FOR', 'FOR', 'marcosjc@colpos.mx'),
(182, 'X02001', 'AURELIO', 'LEON MERINO', 'MASCULINO', 'MON', 'ISE', 'DES', 'laurelio@colpos.mx'),
(183, 'X02003', 'MARTIN', 'HERNANDEZ JUAREZ', 'MASCULINO', 'MON', 'ISE', 'DES', 'mhernand@colpos.mx'),
(184, 'X02005', 'GUADALUPE', 'VALDOVINOS PONCE', 'FEMENINO', 'MON', 'IFS', 'FIT', 'gvapon@colos.mx'),
(185, 'X02009', 'LENIN GERARDO', 'GUAJARDO HERNANDEZ', 'MASCULINO', 'MON', 'ISE', 'DES', 'glenin@colpos.mx'),
(186, 'X02042', 'CRISTIAN', 'NAVA DIAZ', 'MASCULINO', 'MON', 'IFS', 'FIT', 'cnava@colpos.mx'),
(187, 'X02040', 'ALEJANDRO', 'MORENO REPETUR', 'MASCULINO', 'MON', 'IDI', 'IDI', 'repetur@colpos.mx'),
(188, 'X02068', 'SERGIO', 'PEREZ ELIZALDE', 'MASCULINO', 'MON', 'ISE', 'EST', 'sergiop@colpos.mx'),
(189, 'X02101', 'JUAN FELIPE', 'NUÑEZ ESPINOZA', 'MASCULINO', 'MON', 'ISE', 'DES', 'nunezej@colpos.mx'),
(190, 'X02117', 'JOSE ALBERTO', 'GARCIA SALAZAR', 'MASCULINO', 'MON', 'ISE', 'ECO', 'jsalazar@colpos.mx'),
(191, 'X02120', 'CESAR', 'CORTEZ ROMERO', 'MASCULINO', 'MON', 'IRG', 'GAN', 'ccortez@colpos.mx'),
(192, 'X02141', 'JOSE JESUS', 'GARCIA ZAVALA', 'MASCULINO', 'MON', 'IRG', 'GEN', 'zavala@colpos.mx'),
(193, 'X02152', 'JOSE LUIS', 'CROSSA HIRIART', 'MASCULINO', 'MON', 'ISE', 'EST', 'j.crossa@cgiar.org'),
(194, 'X02186', 'ELIA', 'PEREZ NASSER', 'FEMENINO', 'MON', 'ISE', 'DES', 'epnasser@colpos.mx'),
(195, 'X02187', 'LIBIA IRIS', 'TREJO TELLEZ', 'FEMENINO', 'MON', 'EDA', 'EDA', 'tlibia@colpos.mx'),
(196, 'X02188', 'ADRIAN RAYMUNDO', 'QUERO CARRILLO', 'MASCULINO', 'MON', 'IRG', 'GAN', 'queroadrian@colpos.mx'),
(197, 'X02199', 'DIEGO', 'FLORES SANCHEZ', 'MASCULINO', 'MON', 'ISE', 'DES', 'dfs@colpos.mx'),
(198, 'X02203', 'JAVIER', 'SUAREZ ESPINOSA', 'MASCULINO', 'MON', 'ISE', 'EST', 'sjavier@colpos.mx'),
(199, 'X02207', 'ABDUL KHALIL', 'GARDEZI GARDEZI', 'MASCULINO', 'MON', 'HID', 'HID', 'kabdul@colpos.mx'),
(200, 'X02227', 'MA. DE LOURDES CATALINA', 'AREVALO GALARZA', 'FEMENINO', 'MON', 'IRG', 'FRU', 'larevalo@colpos.mx'),
(201, 'X02228', 'DAVID', 'HERNANDEZ SANCHEZ', 'MASCULINO', 'MON', 'IRG', 'GAN', 'sanchezd@colpos.mx'),
(202, 'X02240', 'JOSE LUIS', 'PIMENTEL EQUIHUA', 'MASCULINO', 'MON', 'ISE', 'DES', 'jequihua@colpos.mx'),
(203, 'X02255', 'JAVIER', 'HERNANDEZ MORALES', 'MASCULINO', 'MON', 'IFS', 'FIT', 'hjavier@colpos.mx'),
(204, 'X02260', 'TOMAS', 'MARTINEZ TRINIDAD', 'MASCULINO', 'MON', 'FOR', 'FOR', 'tomtz@colpos.mx'),
(205, 'X02271', 'JOSE LUIS', 'ALCANTARA CARBAJAL', 'MASCULINO', 'MON', 'IRG', 'GAN', 'jlalcant@colpos.mx'),
(206, 'X02277', 'FELIPE JOSE ANTONIO', 'PEDRAZA OROPEZA', 'MASCULINO', 'MON', 'EDA', 'EDA', ''),
(207, 'X02789', 'AMALIO', 'SANTACRUZ VARELA', 'MASCULINO', 'MON', 'IRG', 'GEN', 'asvarela@colpos.mx'),
(208, 'X02812', 'J. REFUGIO', 'LOMELI FLORES', 'MASCULINO', 'MON', 'IFS', 'ENT', 'jrlomeli@colpos.mx'),
(209, 'X02813', 'LEOBIGILDO', 'CORDOVA TELLEZ', 'MASCULINO', 'MON', 'IRG', 'SEM', 'lcordova@colpos.mx'),
(210, 'X02821', 'HILDA VICTORIA', 'SILVA ROJAS', 'FEMENINO', 'MON', 'IRG', 'SEM', 'hsilva@colpos.mx'),
(211, 'X02835', 'JOSE ALFREDO', 'CARRILLO SALAZAR', 'MASCULINO', 'MON', 'IRG', 'GEN', 'asalazar@colpos.mx'),
(212, 'X02838', 'JOSE RENE', 'VALDEZ LAZALDE', 'MASCULINO', 'MON', 'FOR', 'FOR', 'valdez@colpos.mx'),
(213, 'X02861', 'HILDA ARACELI', 'ZAVALETA MANCERA', 'FEMENINO', 'MON', 'BOT', 'BOT', 'arazavaleta@colpos.mx'),
(214, 'X02905', 'CHRISTIAN ENRIQUE', 'ACEVES RUIZ', 'MASCULINO', 'MON', 'IDI', 'IDI', 'christianar@colpos.mx'),
(215, 'X02918', 'OSCAR JAVIER', 'AYALA GARAY', 'MASCULINO', 'MON', 'IRG', 'SEM', 'oayala@colpos.mx'),
(216, 'X03023', 'HECTOR MANUEL', 'DE LOS SANTOS POSADAS', 'MASCULINO', 'MON', 'FOR', 'FOR', 'hmsantos@colpos.mx'),
(217, 'X03028', 'MIGUEL ALEJANDRO', 'HERNANDEZ ZARCO', 'MASCULINO', 'MON', 'IDI', 'IDI', 'alejandro.hernandez@colpos.mx'),
(218, 'X03061', 'JACINTO EFREN', 'RAMIREZ BRIBIESCA', 'MASCULINO', 'MON', 'IRG', 'GAN', 'efrenrb@colpos.mx'),
(219, 'X03085', 'JULIAN', 'DELGADILLO MARTINEZ', 'MASCULINO', 'MON', 'EDA', 'EDA', 'juliandm@colpos.mx'),
(220, 'X03127', 'OLGA', 'GOMEZ RODRIGUEZ', 'FEMENINO', 'MON', 'IFS', 'FIT', 'olgago@colpos.mx'),
(221, 'X03207', 'OSCAR LUIS', 'FIGUEROA RODRIGUEZ', 'MASCULINO', 'MON', 'ISE', 'DES', 'figueroa@colpos.mx'),
(222, 'X03226', 'MA. DEL CARMEN', 'LOPEZ REYNA', 'FEMENINO', 'MON', 'ISE', 'ECO', 'creyna@colpos.mx'),
(223, 'X03368', 'EDUARDO', 'GARCIA VILLANUEVA', 'MASCULINO', 'MON', 'IRG', 'FRU', 'egarciav@colpos.mx'),
(224, 'X03394', 'MA. TERESA', 'SANTILLAN GALICIA', 'FEMENINO', 'MON', 'IFS', 'ENT', 'tgalicia@colpos.mx'),
(225, 'X03434', 'MARTIN ALEJANDRO', 'BOLAÑOS GONZALEZ', 'MASCULINO', 'MON', 'HID', 'HID', 'bolanos@colpos.mx'),
(226, 'X03451', 'JUAN DE DIOS', 'GUERRERO RODRIGUEZ', 'MASCULINO', 'MON', 'IRG', 'GAN', 'rjuan@colpos.mx'),
(227, 'X03462', 'OCTAVIO CESAR', 'ROSAS ROSAS', 'MASCULINO', 'MON', 'IRG', 'GAN', 'octaviocrr@colpos.mx'),
(228, 'X03463', 'JULIANA', 'PADILLA CUEVAS', 'FEMENINO', 'MON', 'EDA', 'EDA', ''),
(229, 'X03537', 'PAULINO', 'PEREZ RODRIGUEZ', 'MASCULINO', 'MON', 'ISE', 'COA', 'perpdgo@colpos.mx'),
(230, 'X03559', 'ELIZABETH', 'GONZALEZ ESTRADA', 'FEMENINO', 'MON', 'ISE', 'EST', 'egonzalez@colpos.mx'),
(231, 'X03606', 'HECTOR', 'FLORES MAGDALENO', 'MASCULINO', 'MON', 'HID', 'HID', 'mhector@colpos.mx'),
(232, 'X03610', 'RICARDO', 'LOBATO ORTIZ', 'MASCULINO', 'MON', 'IRG', 'GEN', 'rlobato@colpos.mx'),
(233, 'X03632', 'OSCAR ANTONIO', 'ARANA CORONADO', 'MASCULINO', 'MON', 'ISE', 'ECO', 'aranaosc@colpos.mx'),
(234, 'X03646', 'OLGA', 'TEJEDA SARTORIUS', 'FEMENINO', 'MON', 'EDA', 'EDA', 'olgats@colpos.mx'),
(235, 'A01296', 'SILVIA', 'PIMENTEL AGUILAR', 'FEMENINO', 'MON', 'ISE', 'DES', 'silviapimentel@colpos.mx'),
(236, 'X03648', 'SERAFIN', 'CRUZ IZQUIERDO', 'MASCULINO', 'MON', 'IRG', 'GEN', 'sercruz@colpos.mx'),
(237, 'X03651', 'NICACIO', 'CRUZ HUERTA', 'MASCULINO', 'MON', 'IRG', 'FIV', 'ncruzh@colpos.mx'),
(238, 'X03674', 'ALFREDO', 'SANCHEZ VILLARREAL', 'MASCULINO', 'CAM', 'CAM', 'CAT', ''),
(239, 'X03675', 'LEONOR', 'MIRANDA JIMENEZ', 'FEMENINO', 'MON', 'IRG', 'GAN', 'lmirandaj@colpos.mx'),
(240, 'A01455', 'ISRAEL', 'CASTILLO JUAREZ', 'MASCULINO', 'MON', 'BOT', 'BOT', 'israel.castillo@colpos.mx'),
(241, 'A01477', 'MARIA DEL ROSARIO', 'AYALA CARRILLO', 'FEMENINO', 'MON', 'ISE', 'DES', ''),
(242, 'X03681', 'JOSE JAIME', 'ARANA CORONADO', 'MASCULINO', 'MON', 'ISE', 'ECO', 'jarana@colpos.mx'),
(243, 'X03684', 'CIRO', 'VELASCO CRUZ', 'MASCULINO', 'MON', 'ISE', 'EST', 'cvelasco@colpos.mx'),
(244, 'X03686', 'ANGELA', 'FONTES CARRILLO', 'FEMENINO', 'MON', 'ISE', 'ECO', 'afontes@colpos.mx'),
(245, 'X03687', 'MARIA GUADALUPE', 'BRAVO VINAJA', 'FEMENINO', 'MON', 'IRG', 'GAN', 'gbravo@colpos.mx'),
(246, 'A01556', 'MONICA', 'RAMIREZ MELLA', 'FEMENINO', 'MON', 'IRG', 'GAN', 'monicara@colpos.mx'),
(247, 'X03692', 'ANTONIA', 'MACEDO CRUZ', 'FEMENINO', 'MON', 'HID', 'HID', 'macedoan@colpos.mx'),
(248, 'X03715', 'SILVIA XOCHILT', 'ALMERAYA QUINTERO', 'FEMENINO', 'MON', 'ISE', 'DES', 'xalmeraya@colpos.mx'),
(249, 'A01705', 'MARTHA', 'HERNANDEZ RODRIGUEZ', 'FEMENINO', 'MON', 'IRG', 'GEN', ''),
(250, 'X03720', 'IRMA', 'DIAZ AGUILAR', 'FEMENINO', 'MON', 'EDA', 'EDA', 'idiaz@colpos.mx'),
(251, 'X03721', 'VALENTIN JOSE', 'REYES HERNANDEZ', 'MASCULINO', 'MON', 'FOR', 'FOR', 'vreyes@colpos.mx'),
(252, 'X03722', 'LUZ MARIA', 'PEREZ HERNANDEZ', 'FEMENINO', 'MON', 'ISE', 'DES', 'luzmaph@colpos.mx'),
(253, 'A01756', 'SERGIO IBAN', 'MENDOZA PEDROZA', 'MASCULINO', 'MON', 'IRG', 'GAN', 'sergiomp@colpos.mx'),
(254, 'X03729', 'EZEQUIEL', 'ARVIZU BARRON', 'MASCULINO', 'MON', '', '', ''),
(255, 'A01820', 'DANIEL', 'PADILLA CHACON', 'MASCULINO', 'MON', 'BOT', 'BOT', 'daniel.padilla@colpos.mx'),
(256, 'X03741', 'CESAR', 'GAMBOA RAMIREZ', 'MASCULINO', 'MON', 'COR', 'COR', ''),
(257, 'C00020', 'IRIS GRISEL', 'GALVAN ESCOBEDO', 'FEMENINO', 'MON', 'BOT', 'BOT', 'igalvan@colpos.mx'),
(258, 'X03745', 'JUAN MANUEL', 'ROMERO PADILLA', 'MASCULINO', 'MON', 'ISE', 'EST', 'romero.manuel@colpos.mx'),
(259, 'X03746', 'MIREYA', 'BURGOS HERNANDEZ', 'FEMENINO', 'MON', 'BOT', 'BOT', 'burgos.mireya@colpos.mx'),
(260, 'X03747', 'MONSERRAT', 'VAZQUEZ SANCHEZ', 'FEMENINO', 'MON', 'BOT', 'BOT', 'vazquez.monserrat@colpos.mx'),
(261, 'C00021', 'VICTOR MANUEL', 'ZUÑIGA MAYO', 'MASCULINO', 'MON', 'IFS', 'FIT', ''),
(262, 'C00022', 'VICTOR DAVID', 'CIBRIAN LLANDERAL', 'MASCULINO', 'MON', 'FOR', 'FOR', 'cibrian.victor@colpos.mx'),
(263, 'X60055', 'CESAR', 'SAN MARTIN HERNANDEZ', 'MASCULINO', 'MON', 'EDA', 'EDA', 'sanmartin.cesar@colpos.mx'),
(264, 'X60060', 'JORGE', 'FLORES VELAZQUEZ', 'MASCULINO', 'MON', 'HID', 'HID', 'jorgelv@colpos.mx'),
(265, 'X60061', 'ADOLFO', 'LOPEZ PEREZ', 'MASCULINO', 'MON', 'HID', 'HID', ''),
(266, 'X60063', 'MARIA ISABEL', 'ROSAS JACO', 'FEMENINO', 'MON', 'ISE', 'DES', ''),
(267, 'X60073', 'NIDIA BELGICA', 'PEREZ DE LA O', 'FEMENINO', 'MON', 'IFS', 'ENT', ''),
(268, 'X60074', 'CANDIDO', 'MENDOZA PEREZ', 'MASCULINO', 'MON', 'HID', 'HID', 'mendoza.candido@colpos.mx');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'coordinaciones');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(2, 1, 77),
(3, 1, 78),
(4, 1, 79),
(1, 1, 80);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add academic', 8, 'add_academic'),
(26, 'Can change academic', 8, 'change_academic'),
(27, 'Can delete academic', 8, 'delete_academic'),
(28, 'Can view academic', 8, 'view_academic'),
(29, 'Can add auth group', 9, 'add_authgroup'),
(30, 'Can change auth group', 9, 'change_authgroup'),
(31, 'Can delete auth group', 9, 'delete_authgroup'),
(32, 'Can view auth group', 9, 'view_authgroup'),
(33, 'Can add auth group permissions', 10, 'add_authgrouppermissions'),
(34, 'Can change auth group permissions', 10, 'change_authgrouppermissions'),
(35, 'Can delete auth group permissions', 10, 'delete_authgrouppermissions'),
(36, 'Can view auth group permissions', 10, 'view_authgrouppermissions'),
(37, 'Can add auth permission', 11, 'add_authpermission'),
(38, 'Can change auth permission', 11, 'change_authpermission'),
(39, 'Can delete auth permission', 11, 'delete_authpermission'),
(40, 'Can view auth permission', 11, 'view_authpermission'),
(41, 'Can add auth user', 12, 'add_authuser'),
(42, 'Can change auth user', 12, 'change_authuser'),
(43, 'Can delete auth user', 12, 'delete_authuser'),
(44, 'Can view auth user', 12, 'view_authuser'),
(45, 'Can add auth user groups', 13, 'add_authusergroups'),
(46, 'Can change auth user groups', 13, 'change_authusergroups'),
(47, 'Can delete auth user groups', 13, 'delete_authusergroups'),
(48, 'Can view auth user groups', 13, 'view_authusergroups'),
(49, 'Can add auth user user permissions', 14, 'add_authuseruserpermissions'),
(50, 'Can change auth user user permissions', 14, 'change_authuseruserpermissions'),
(51, 'Can delete auth user user permissions', 14, 'delete_authuseruserpermissions'),
(52, 'Can view auth user user permissions', 14, 'view_authuseruserpermissions'),
(53, 'Can add catacurs', 15, 'add_catacurs'),
(54, 'Can change catacurs', 15, 'change_catacurs'),
(55, 'Can delete catacurs', 15, 'delete_catacurs'),
(56, 'Can view catacurs', 15, 'view_catacurs'),
(57, 'Can add django admin log', 16, 'add_djangoadminlog'),
(58, 'Can change django admin log', 16, 'change_djangoadminlog'),
(59, 'Can delete django admin log', 16, 'delete_djangoadminlog'),
(60, 'Can view django admin log', 16, 'view_djangoadminlog'),
(61, 'Can add django content type', 17, 'add_djangocontenttype'),
(62, 'Can change django content type', 17, 'change_djangocontenttype'),
(63, 'Can delete django content type', 17, 'delete_djangocontenttype'),
(64, 'Can view django content type', 17, 'view_djangocontenttype'),
(65, 'Can add django migrations', 18, 'add_djangomigrations'),
(66, 'Can change django migrations', 18, 'change_djangomigrations'),
(67, 'Can delete django migrations', 18, 'delete_djangomigrations'),
(68, 'Can view django migrations', 18, 'view_djangomigrations'),
(69, 'Can add django session', 19, 'add_djangosession'),
(70, 'Can change django session', 19, 'change_djangosession'),
(71, 'Can delete django session', 19, 'delete_djangosession'),
(72, 'Can view django session', 19, 'view_djangosession'),
(73, 'Can add imparegu', 7, 'add_imparegu'),
(74, 'Can change imparegu', 7, 'change_imparegu'),
(75, 'Can delete imparegu', 7, 'delete_imparegu'),
(76, 'Can view imparegu', 7, 'view_imparegu'),
(77, 'Can add capcurs', 20, 'add_capcurs'),
(78, 'Can change capcurs', 20, 'change_capcurs'),
(79, 'Can delete capcurs', 20, 'delete_capcurs'),
(80, 'Can view capcurs', 20, 'view_capcurs'),
(81, 'Can add login', 21, 'add_login'),
(82, 'Can change login', 21, 'change_login'),
(83, 'Can delete login', 21, 'delete_login'),
(84, 'Can view login', 21, 'view_login'),
(85, 'Can add colaboradores', 22, 'add_colaboradores'),
(86, 'Can change colaboradores', 22, 'change_colaboradores'),
(87, 'Can delete colaboradores', 22, 'delete_colaboradores'),
(88, 'Can view colaboradores', 22, 'view_colaboradores'),
(89, 'Can add horapractica', 23, 'add_horapractica'),
(90, 'Can change horapractica', 23, 'change_horapractica'),
(91, 'Can delete horapractica', 23, 'delete_horapractica'),
(92, 'Can view horapractica', 23, 'view_horapractica'),
(93, 'Can add coordinaciones', 24, 'add_coordinaciones'),
(94, 'Can change coordinaciones', 24, 'change_coordinaciones'),
(95, 'Can delete coordinaciones', 24, 'delete_coordinaciones'),
(96, 'Can view coordinaciones', 24, 'view_coordinaciones'),
(97, 'Can add imparegubda', 25, 'add_imparegubda'),
(98, 'Can change imparegubda', 25, 'change_imparegubda'),
(99, 'Can delete imparegubda', 25, 'delete_imparegubda'),
(100, 'Can view imparegubda', 25, 'view_imparegubda');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$vxDlJk5jCkQ8lz1V0rn2EV$F1VDWmVHz5SHoDoJ5EEl6zZGT45pl/G8kuyuK4Od5mE=', '2023-02-10 18:22:02.205512', 1, 'JoseRR', '', '', 'rodriguez.rosales@colpos.mx', 1, 1, '2023-02-10 17:03:14.114526'),
(2, 'pbkdf2_sha256$390000$m3wTctygESvRa2bfP0jF1h$brTvHQ5HGp5dHcFuMNk87lZqZu1eje3sn973QIrmEUc=', '2023-03-03 17:20:54.702509', 1, 'daniel', '', '', 'rodriguez.rosales@colpos.mx', 1, 1, '2023-02-24 22:09:00.881694'),
(3, 'pbkdf2_sha256$390000$eE9BAJW1UtFXPkl8VSgoO3$rbFGxLpckUedsX8Npp8LqOsnKmToN6VOU2LFCjAmP1E=', NULL, 0, 'admision.coa@colpos.mx', '', '', '', 1, 1, '2023-03-03 17:09:59.000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_user_user_permissions`
--

INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
(2, 3, 77),
(3, 3, 78),
(4, 3, 79),
(1, 3, 80);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `capcurs`
--

CREATE TABLE `capcurs` (
  `id` bigint(20) NOT NULL,
  `cve_program` varchar(3) NOT NULL,
  `cve_curso` varchar(6) NOT NULL,
  `nombre` varchar(120) NOT NULL,
  `cve_academic` varchar(6) NOT NULL,
  `nom_academic` varchar(50) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `participacion` varchar(20) NOT NULL,
  `creditos` int(11) NOT NULL,
  `aula` varchar(100) DEFAULT NULL,
  `observaciones` varchar(120) DEFAULT NULL,
  `lunes_ini` time DEFAULT NULL,
  `lunes_fin` time DEFAULT NULL,
  `martes_ini` time DEFAULT NULL,
  `martes_fin` time DEFAULT NULL,
  `miercoles_fin` time DEFAULT NULL,
  `miercoles_ini` time DEFAULT NULL,
  `jueves_ini` time DEFAULT NULL,
  `jueves_fin` time DEFAULT NULL,
  `viernes_fin` time DEFAULT NULL,
  `viernes_ini` time DEFAULT NULL,
  `periodo` varchar(9) NOT NULL,
  `agno` int(4) NOT NULL,
  `lunes_inip` time DEFAULT NULL,
  `lunes_finp` time DEFAULT NULL,
  `martes_inip` time DEFAULT NULL,
  `martes_finp` time DEFAULT NULL,
  `miercoles_inip` time DEFAULT NULL,
  `miercoles_finp` time DEFAULT NULL,
  `jueves_inip` time DEFAULT NULL,
  `jueves_finp` time DEFAULT NULL,
  `viernes_inip` time DEFAULT NULL,
  `viernes_finp` time DEFAULT NULL,
  `aulap` text DEFAULT NULL,
  `observacionesp` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `capcurs`
--

INSERT INTO `capcurs` (`id`, `cve_program`, `cve_curso`, `nombre`, `cve_academic`, `nom_academic`, `apellidos`, `participacion`, `creditos`, `aula`, `observaciones`, `lunes_ini`, `lunes_fin`, `martes_ini`, `martes_fin`, `miercoles_fin`, `miercoles_ini`, `jueves_ini`, `jueves_fin`, `viernes_fin`, `viernes_ini`, `periodo`, `agno`, `lunes_inip`, `lunes_finp`, `martes_inip`, `martes_finp`, `miercoles_inip`, `miercoles_finp`, `jueves_inip`, `jueves_finp`, `viernes_inip`, `viernes_finp`, `aulap`, `observacionesp`) VALUES
(273, 'COA', 'COA501', 'HERRAMIENTAS DE COMPUTO PARA INVESTIGADORES', 'X00581', 'FERNANDO', 'CASTILLO GONZALEZ', 'Titular', 3, NULL, NULL, '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', 'Primavera', 2023, '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '', ''),
(274, 'COA', 'COA633', 'BASES DE DATOS I', 'A01065', 'SILVIA', 'PIMENTEL AGUILAR', 'Titular', 3, NULL, NULL, '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', 'Primavera', 2023, '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '', ''),
(275, 'COA', 'COA637', 'BASES DE DATOS III (TOPICOS AVANZADOS)', 'A01455', 'ISRAEL', 'CASTILLO JUAREZ', 'Titular', 3, NULL, 'AULA 3', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', 'Primavera', 2023, '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '', 'Por definir'),
(276, 'COA', 'COA635', 'MINERIA DE DATOS', 'A01455', 'ISRAEL', 'CASTILLO JUAREZ', 'Titular', 3, NULL, 'Por definir', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', 'Primavera', 2023, '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '', 'Por definir'),
(277, 'COA', 'COA667', 'SISTEMAS DE INFORMACION GEOGRAFICOS', 'A01136', 'DIONICIO', 'ALVARADO ROSALES', 'Titular', 3, NULL, NULL, '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', 'Primavera', 2023, '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '', ''),
(279, 'COA', 'COA661', 'INTELIGENCIA ARTIFICIAL', 'X00242', 'DAVID HEBERT', 'DEL VALLE PANIAGUA', 'Titular', 3, NULL, NULL, '10:00:00', '12:00:00', '00:00:00', '00:00:00', '12:00:00', '10:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', 'Primavera', 2023, '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '', ''),
(280, 'AEC', 'AEC607', 'AGROECOLOGIA Y DESARROLLO RURAL PARTICI-PATIVO: BASES CONCEPTUALES Y METODOLO-  GICAS', 'X00242', 'HECTOR', 'GONZALEZ ROSAS', 'Titular', 3, NULL, 'Por definir', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', 'Primavera', 2023, '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '', 'Por definir'),
(281, 'COA', 'COA601', 'MATEMATICAS PARA COMPUTACION', 'A01049', 'ENRIQUE', 'OJEDA TREJO', 'Titular', 3, NULL, NULL, '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', 'Primavera', 2023, '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '', ''),
(282, 'COA', 'COA503', 'INTRODUCCION A LAS BASES DE DATOS Y SISTEMAS DE INFORMACION', 'A01094', 'VICTOR MANUEL', 'ORDAZ CHAPARRO', 'Titular', 3, NULL, 'Por definir', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', 'Primavera', 2023, '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '', 'Por definir'),
(283, 'COA', 'COA603', 'ALGORITMOS NUMERICOS', 'A01066', 'ALFREDO', 'LOPEZ JIMENEZ', 'Titular', 3, NULL, 'AULA 3', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', 'Primavera', 2023, '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '', 'ESTA POR DEFINIR');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catacurs`
--

CREATE TABLE `catacurs` (
  `id` bigint(20) NOT NULL,
  `cve_campus` varchar(3) NOT NULL,
  `cve_program` varchar(3) NOT NULL,
  `cve_curso` varchar(6) NOT NULL,
  `gpo_670` varchar(2) DEFAULT NULL,
  `nombre` varchar(120) NOT NULL,
  `credimi` int(11) NOT NULL,
  `credima` int(11) NOT NULL,
  `vigente` varchar(2) DEFAULT NULL,
  `es_tecno` varchar(1) DEFAULT NULL,
  `periodo` varchar(9) NOT NULL,
  `agno` int(11) NOT NULL,
  `hay_credi` varchar(2) DEFAULT NULL,
  `hay_calif` varchar(2) DEFAULT NULL,
  `tipo` varchar(16) NOT NULL,
  `isevaluated` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `catacurs`
--

INSERT INTO `catacurs` (`id`, `cve_campus`, `cve_program`, `cve_curso`, `gpo_670`, `nombre`, `credimi`, `credima`, `vigente`, `es_tecno`, `periodo`, `agno`, `hay_credi`, `hay_calif`, `tipo`, `isevaluated`) VALUES
(1, 'MON', 'FIT', 'FIT690', 'E', 'INVESTIGACION', 1, 9, 'S', '', 'PRIMAVERA', 2010, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(2, 'MON', 'AEC', 'AEC690', 'A', 'INVESTIGACION', 1, 9, 'S', '', 'VERANO', 2011, 'S', 'S', '', NULL),
(10, 'MON', 'BOT', 'BOT690', 'A', 'INVESTIGACION', 1, 9, 'S', '', 'VERANO', 2011, 'S', 'S', '', NULL),
(12, 'MON', 'DES', 'DES690', 'C', 'INVESTIGACION', 3, 9, 'S', '', 'VERANO', 2011, 'S', 'S', '', NULL),
(13, 'MON', 'ECO', 'ECO690', 'F', 'INVESTIGACION', 1, 9, 'S', '', 'VERANO', 2011, 'S', 'S', '', NULL),
(14, 'MON', 'EDA', 'EDA690', 'A', 'INVESTIGACION', 1, 9, 'S', '', 'VERANO', 2011, 'S', 'S', '', NULL),
(17, 'MON', 'FIV', 'FIV690', 'A', 'INVESTIGACION', 1, 9, 'S', '', 'VERANO', 2011, 'S', 'S', '', NULL),
(21, 'MON', 'FOR', 'FOR690', 'A', 'INVESTIGACION', 1, 9, 'S', '', 'VERANO', 2011, 'S', 'S', '', NULL),
(24, 'MON', 'GAN', 'GAN690', 'G', 'INVESTIGACION', 1, 9, 'S', '', 'VERANO', 2011, 'S', 'S', '', NULL),
(26, 'MON', 'HID', 'HID690', 'E', 'INVESTIGACION', 1, 9, 'S', '', 'VERANO', 2011, 'S', 'S', '', NULL),
(31, 'MON', 'SEM', 'SEM690', 'M', 'INVESTIGACION', 1, 9, 'S', '', 'VERANO', 2011, 'S', 'S', '', NULL),
(32, 'MON', 'AEC', 'AEC663', '', 'AGROECOLOGIA', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(33, 'MON', 'BOT', 'BOT623', '', 'SISTEMATICA APLICADA', 2, 2, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(34, 'MON', 'BOT', 'BOT634', '', 'ECOLOGIA DE AGOSTADEROS', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(35, 'MON', 'BOT', 'BOT646', '', 'FISIOLOGIA DE CULTIVOS', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(36, 'MON', 'DES', 'DES601', '', 'LAS CIENCIAS EN EL DESARROLLO RURAL', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO', NULL),
(37, 'MON', 'DES', 'DES602', '', 'SOCIOLOGIA Y DESARROLLO RURAL', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO', NULL),
(38, 'MON', 'DES', 'DES605', '', 'TECNICAS DE INVESTIGACION DE CAMPO', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(39, 'MON', 'DES', 'DES611', '', 'DESARROLLO DEL POTENCIAL DE GRUPOS PARA EL DESARROLLO RURAL', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO', NULL),
(40, 'MON', 'DES', 'DES631', '', 'RELACIONES INTERSECTORIALES: EL ESTADO, LOS GRUPOS DE PODER Y LOS(LAS) CAMPESINOS(NAS) EN EL DESARROLLO RURAL', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO', NULL),
(41, 'MON', 'DES', 'DES633', '', 'ORGANIZACION SOCIAL Y PEQUEÑO RIEGO EN MEXICO', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO', NULL),
(42, 'MON', 'DES', 'DES634', '', 'LA ORGANIZACION CAMPESINA EN EL DESARRO-LLO RURAL', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO', NULL),
(43, 'MON', 'DES', 'DES637', '', 'ANALISIS DE SISTEMAS DE PRODUCCION EN LA AGRICULTURA REGIONAL', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(44, 'MON', 'DES', 'DES649', '', 'PROBLEMATICA DE LA MUJER RURAL: ESTRUC- TURA SEXUAL Y PSICOLOGIA', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO', NULL),
(45, 'MON', 'ECO', 'ECO600', '', 'METODOLOGIA DE LA CIENCIA Y LA ECONOMIA', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO', NULL),
(46, 'MON', 'ECO', 'ECO601', '', 'POLITICA AGRICOLA', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO', NULL),
(47, 'MON', 'ECO', 'ECO638', '', 'ECONOMIA DE LA PRODUCCION AVANZADA', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO', NULL),
(48, 'MON', 'ECO', 'ECO661', '', 'TEORIA DE LAS FINANZAS INTERNACIONALES', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', '', NULL),
(49, 'MON', 'EDA', 'EDA603', '', 'MATERIA ORGANICA EDAFICA: RESERVAS Y PROCESOS', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(50, 'MON', 'EDA', 'EDA604', '', 'MICROMORFOLOGIA DE SUELOS', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(51, 'MON', 'EDA', 'EDA608', '', 'MANEJO SOSTENIBLE DEL RECURSO SUELO', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(52, 'MON', 'EDA', 'EDA609', '', 'ANALISIS INSTRUMENTAL DE FISICA DE SUE- LOS', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(53, 'MON', 'EDA', 'EDA618', '', 'FISICO-QUIMICA DE SUELOS', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(54, 'MON', 'EDA', 'EDA623', '', 'COLECCIONES DE SUELOS', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(55, 'MON', 'EDA', 'EDA632', '', 'DIAGNOSTICO DE LA FERTILIDAD DEL SUELO', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(56, 'MON', 'EDA', 'EDA633', '', 'TECNOLOGIA Y USO DE FERTILIZANTES', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(57, 'MON', 'EDA', 'EDA643', '', 'FIJACION DE NITROGENO EN LEGUMINOSAS', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(58, 'MON', 'EDA', 'EDA644', '', 'EL USO DE LA MICORRIZA EN LA PRODUCCION AGRICOLA, FRUTICOLA Y FORESTAL', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(59, 'MON', 'EDA', 'EDA646', '', 'FILOSOFIA DE LA CIENCIA', 2, 2, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO', NULL),
(60, 'MON', 'EDA', 'EDA652', '', 'ABSORCION Y TRANSPORTE NUTRIMENTAL', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(61, 'MON', 'EDA', 'EDA654', '', 'CULTIVOS HIDROPONICOS', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(62, 'MON', 'EDA', 'EDA656', '', 'MECANISMOS CELULARES DE HOMEOSTASIS DE  METALES EN PLANTAS SUPERIORES', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(63, 'MON', 'EDA', 'EDA664', '', 'PREPARACION DEL ARTICULO CIENTIFICO', 2, 2, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO', NULL),
(64, 'MON', 'ENT', 'ENT604', '', 'TAXONOMIA DE INSECTOS', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(65, 'MON', 'ENT', 'ENT606', '', 'ACAROLOGIA AGRICOLA', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(66, 'MON', 'ENT', 'ENT611', '', 'EVOLUCION MOLECULAR', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(67, 'MON', 'ENT', 'ENT639', '', 'INTRODUCCION A LAS BUENAS PRACTICAS AGRICOLAS', 4, 4, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(68, 'MON', 'ENT', 'ENT654', '', 'ENTOMOLOGIA AGRICOLA', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(69, 'MON', 'ENT', 'ENT656', '', 'MANEJO INTEGRADO DE PLAGAS', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(70, 'MON', 'ENT', 'ENT660', '', 'INSECTICIDAS VEGETALES', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(71, 'MON', 'ENT', 'ENT669', '', 'ENTOMOLOGIA MEDICA Y VETERINARIA', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(72, 'MON', 'EST', 'EST554', '', 'INTRODUCCION A LA ECONOMETRIA', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO', NULL),
(73, 'MON', 'EST', 'EST752', '', 'MODELACION ESTADISTICA', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO', NULL),
(74, 'MON', 'FIT', 'FIT612', '', 'EPIDEMIOLOGIA AGRICOLA', 1, 4, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(75, 'MON', 'FIT', 'FIT621', '', 'VIRUS FITOPATOGENOS', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(76, 'MON', 'FIT', 'FIT624', '', 'INTRODUCCION A LA BIOLOGIA MOLECULAR', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(77, 'MON', 'FIT', 'FIT660', '', 'ENFERMEDADES DE FRUTOS EN POSTCOSECHA', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(78, 'MON', 'FIV', 'FIV610', '', 'METODOS PARA LA PREDICCION DEL RENDIMIENTO Y CALIDAD DE LA PRODUCCION', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(79, 'MON', 'FOR', 'FOR614', '', 'POLITICA Y LEGISLACION FORESTAL, AMBIEN-TAL Y AGRARIA', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO', NULL),
(80, 'MON', 'FOR', 'FOR616', '', 'DINAMICA DE BOSQUES NATURALES', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(81, 'MON', 'FOR', 'FOR618', '', 'MEJORAMIENTO GENETICO DE ARBOLES FORES- TALES', 4, 4, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(82, 'MON', 'FOR', 'FOR619', '', 'PRODUCTIVIDAD DE ECOSISTEMAS FORESTALES', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(83, 'MON', 'FOR', 'FOR667', '', 'METODOS Y APLICACION DE SIG EN EL MANEJODE RECURSOS NATURALES', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(84, 'MON', 'FRU', 'FRU603', '', 'FRUTICULTURA TROPICAL', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(85, 'MON', 'FRU', 'FRU639', '', 'PLANTAS TRANSGENICAS Y SU APLICACION EN LA AGRICULTURA', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(86, 'MON', 'FRU', 'FRU643', '', 'FISIOLOGIA DE FRUTOS EN PRECOSECHA', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(87, 'MON', 'GAN', 'GAN601', '', 'NUTRICION DE NO RUMIANTES', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(88, 'MON', 'GAN', 'GAN611', '', 'FORMULACION DE DIETAS', 4, 4, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(89, 'MON', 'GAN', 'GAN620', '', 'BIOQUIMICA NUTRICIONAL', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(90, 'MON', 'GAN', 'GAN629', '', 'TECNICAS DE INVESTIGACION EN FORRAJES', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(91, 'MON', 'GAN', 'GAN647', '', 'NEUROENDOCRINOLOGIA DE LA REPRODUCCION', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(92, 'MON', 'GEN', 'GEN603', '', 'GENETICA DE POBLACIONES', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(93, 'MON', 'GEN', 'GEN607', '', 'BIOTECNOLOGIA', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(94, 'MON', 'GEN', 'GEN610', '', 'FISIOTECNIA VEGETAL AVANZADA', 4, 4, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(95, 'MON', 'GEN', 'GEN613', '', 'MEJORAMIENTO GENETICO EN AGROSISTEMAS DE TEMPORAL', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(96, 'MON', 'GEN', 'GEN621', '', 'PRINCIPIOS DE MEJORAMIENTO GENETICO', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(97, 'MON', 'GEN', 'GEN624', '', 'APLICACION GENOTECNICA', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(98, 'MON', 'GEN', 'GEN628', '', 'RESISTENCIA GENETICA A ENFERMEDADES DE  PLANTAS', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(99, 'MON', 'HID', 'HID602', '', 'EL AGUA EN EL SISTEMA SUELO-PLANTA-ATMOSFERA II', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO', NULL),
(100, 'MON', 'HID', 'HID632', '', 'EFECTO DE SALES SOLUBLES SOBRE LAS PLAN-TAS', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(101, 'MON', 'HID', 'HID637', '', 'IMPACTO ECOLOGICO DEL RIEGO Y DRENAJE   AGRICOLA', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO', NULL),
(102, 'MON', 'HID', 'HID642', '', 'OPERACION DE SISTEMAS DE RIEGO', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO', NULL),
(103, 'MON', 'HID', 'HID643', '', 'INGENIERIA DE SISTEMAS DE RECURSOS      HIDRAULICOS', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(104, 'MON', 'HID', 'HID654', '', 'CONSERVACION DEL SUELO Y DEL AGUA', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(105, 'MON', 'HID', 'HID655', '', 'MANEJO DE CUENCAS HIDROGRAFICAS', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO', NULL),
(106, 'MON', 'HID', 'HID657', '', 'VALORACION DE LOS RECURSOS NATURALES    HIDRICOS EN ECOSISTEMAS', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(107, 'MON', 'HID', 'HID661', '', 'INGENIERIA ECONOMICA', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO', NULL),
(108, 'MON', 'SEM', 'SEM603', '', 'PRINCIPIOS GENETICOS DE LA PRODUCCION DE SEMILLAS', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(109, 'MON', 'SEM', 'SEM604', '', 'PRINCIPIOS AGROCLIMATICOS Y TECNOLOGICOS DE LA PRODUCCION DE SEMILLAS', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(110, 'MON', 'SEM', 'SEM610', '', 'BIOTECNOLOGIA DE SEMILLAS', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(111, 'MON', 'GEN', 'GEN640', '', 'RECURSOS GENETICOS DE CACTACEAS: CONSER-VACION Y USO SUSTENTABLE', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(112, 'MON', 'EST', 'EST624', '', 'SERIES DE TIEMPO', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', '', NULL),
(113, 'MON', 'HID', 'HID653', '', 'HIDROLOGIA SUBTERRANEA', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', '', NULL),
(114, 'MON', 'GAN', 'GAN661', '', 'MEJORAMIENTO DE HABITAT PARA FAUNA SIL- VESTRE', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(115, 'MON', 'EST', 'EST502', '', 'INTRODUCCION A LAS MATEMATICAS PARA     INVESTIGADORES', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO', NULL),
(116, 'MON', 'ENT', 'ENT650', '', 'BIOLOGIA DE ENTOMOFAGOS', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(117, 'MON', 'FRU', 'FRU645', '', 'FISIOLOGIA Y BIOQUIMICA DE FRUTOS EN POSTCOSECHA', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', '', NULL),
(118, 'MON', 'COA', 'COA665', '', 'SISTEMAS DE INFORMACION II', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO', NULL),
(119, 'MON', 'HID', 'HID621', '', 'DRENAJE AGRICOLA', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', '', NULL),
(120, 'MON', 'FOR', 'FOR663', '', 'DINAMICA DE POBLACIONES', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(121, 'MON', 'HID', 'HID611', '', 'INGENIERIA DE RIEGO POR GRAVEDAD', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', '', NULL),
(122, 'MON', 'BOT', 'BOT636', '', 'BIODIVERSIDAD', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(123, 'MON', 'FIT', 'FIT627', '', 'HISTOPATOLOGIA VEGETAL', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(124, 'MON', 'HID', 'HID619', '', 'DINAMICA DE LA EROSION EN EL SUELO', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(125, 'MON', 'DES', 'DES628', '', 'TEORIAS DEL CAMPESINADO II', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(126, 'MON', 'GAN', 'GAN622', '', 'PRODUCCION Y MANEJO DE FORRAJES Y PRADE-RAS', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(127, 'MON', 'GAN', 'GAN685', '', 'TOPICOS AVANZADOS EN GANADERIA:         INOCUIDAD EN PRODUCTOS DE ORIGEN ANIMAL', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO', NULL),
(128, 'MON', 'COA', 'COA634', '', 'BASES DE DATOS II', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO', NULL),
(129, 'MON', 'AGM', 'AGM624', '', 'MODELOS DE SIMULACION APLICADOS A LA    AGRICULTURA', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', '', NULL),
(130, 'MON', 'COA', 'COA650', '', 'REDES DE COMPUTADORAS', 2, 2, 'S', '', 'VERANO', 2011, 'S', 'S', '', NULL),
(131, 'MON', 'BOT', 'BOT635', '', 'ECOLOGIA DE POBLACIONES Y COMUNIDADES', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(132, 'MON', 'COA', 'COA503', '', 'INTRODUCCION A LAS BASES DE DATOS Y SISTEMAS DE INFORMACION', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', '', NULL),
(133, 'MON', 'FOR', 'FOR621', '', 'ARBORICULTURA', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(134, 'MON', 'FIT', 'FIT667', '', 'ECOLOGIA DE ENFERMEDADES DE LA RAIZ', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(135, 'MON', 'EST', 'EST622', '', 'DISEÑOS EXPERIMENTALES II', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', '', NULL),
(136, 'MON', 'EST', 'EST627', '', 'PROCESOS ESTOCASTICOS', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', '', NULL),
(137, 'MON', 'GEN', 'GEN625', '', 'MUTAGENESIS', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(138, 'MON', 'BOT', 'BOT616', '', 'HISTOQUIMICA', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(139, 'MON', 'GAN', 'GAN664', '', 'TECNICAS DE MUESTREO EN FAUNA SILVESTRE', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', '', NULL),
(140, 'MON', 'EST', 'EST652', '', 'INFERENCIA ESTADISTICA', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', '', NULL),
(141, 'MON', 'BOT', 'BOT642', '', 'FISIOLOGIA VEGETAL AVANZADA', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(142, 'MON', 'GAN', 'GAN613', '', 'INOCUIDAD EN ALIMENTOS DE ORIGEN ANIMAL', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(143, 'MON', 'FOR', 'FOR609', '', 'FUNDAMENTOS DE CONSERVACION BIOLOGICA', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(145, 'CAM', 'CAT', 'CAT620', '', 'CURSO DE PCR', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', '', NULL),
(147, 'MON', 'AEC', 'AEC621', '', 'MANEJO ECOLOGICO DE PLAGAS Y ENFERMEDA- DES', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(148, 'MON', 'AGM', 'AGM625', '', 'AGROCLIMATOLOGIA CUANTITATIVA', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(149, 'MON', 'AGM', 'AGM628', '', 'DETERIORO-PRESERVACION AMBIENTAL Y AGRI-CULTURA', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO', NULL),
(150, 'MON', 'BOT', 'BOT600', '', 'RECURSOS NATURALES', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(151, 'MON', 'BOT', 'BOT640', '', 'ECOFISIOLOGIA DE ESTOMAS', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(152, 'MON', 'BOT', 'BOT650', '', 'ECOFISIOLOGIA DE CULTIVOS', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(153, 'MON', 'COA', 'COA602', '', 'PROGRAMACION EN LENGUAJE C/C++', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO', NULL),
(154, 'MON', 'DES', 'DES604', '', 'INTERMEDIARIOS FINANCIEROS RURALES', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(155, 'MON', 'DES', 'DES610', '', 'COMPORTAMIENTOS SOCIALES Y DESARROLLO', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', '', NULL),
(156, 'MON', 'DES', 'DES612', '', 'FORMULACION DE PROYECTOS CON PARTICIPA- CION CAMPESINA', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO', NULL),
(157, 'MON', 'DES', 'DES618', '', 'ENCUESTAS RURALES', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(158, 'MON', 'DES', 'DES620', '', 'FINANCIAMIENTO RURAL', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO', NULL),
(159, 'MON', 'DES', 'DES622', '', 'CAMBIOS TECNOLOGICOS EN LA SOCIEDAD     RURAL', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO', NULL),
(160, 'MON', 'DES', 'DES636', '', 'EVALUACION SOCIOECONOMICA DE PROGRAMAS  DE DESARROLLO AGRICOLA REGIONAL', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(161, 'MON', 'DES', 'DES638', '', 'ORGANIZACIONES AUTOGESTIVAS CAMPESINAS', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', '', NULL),
(162, 'MON', 'DES', 'DES647', '', 'GENERO, MEDIO AMBIENTE, DESARROLLO RURAL', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO', NULL),
(163, 'MON', 'DES', 'DES658', '', 'DISENO Y PLANEACION DE PROGRAMAS DE EXTENSION RURAL Y EDUCACION DE ADULTOS', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', '', NULL),
(164, 'MON', 'ECO', 'ECO621', '', 'MERCADOS Y ANALISIS DE PRECIOS DE PRODUCTOS AGRICOLAS', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO', NULL),
(165, 'MON', 'ECO', 'ECO640', '', 'MACROECONOMIA APLICADA A LA AGRICULTURA', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO', NULL),
(166, 'MON', 'ECO', 'ECO657', '', 'ANALISIS ECONOMICO EN MICROCOMPUTADORAS', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO', NULL),
(167, 'MON', 'ECO', 'ECO663', '', 'TOPICOS DE ECONOMETRIA', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO', NULL),
(168, 'MON', 'ECO', 'ECO668', '', 'MATEMATICAS FINANCIERAS Y CONTABILIDAD', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO', NULL),
(169, 'MON', 'EDA', 'EDA607', '', 'PREVENCION Y CONTROL DE LA DESERTIFICACION', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(170, 'MON', 'EDA', 'EDA610', '', 'SISTEMAS DE LABRANZA', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(171, 'MON', 'EDA', 'EDA612', '', 'ANALISIS QUIMICO DE SUELOS Y PLANTAS', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(172, 'MON', 'EDA', 'EDA619', '', 'QUIMICA AMBIENTAL', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(173, 'MON', 'EDA', 'EDA625', '', 'CLASIFICACION DE SUELOS', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(174, 'MON', 'EDA', 'EDA635', '', 'PRODUCTIVIDAD DE AGROSISTEMAS', 4, 4, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(175, 'MON', 'EDA', 'EDA637', '', 'PRODUCTIVIDAD DE AGROSISTEMAS AVANZADO', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO', NULL),
(176, 'MON', 'EDA', 'EDA653', '', 'FUNCIONES DE LOS NUTRIMENTOS EN LA PRO- DUCCION DE CULTIVOS', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(177, 'MON', 'EDA', 'EDA655', '', 'PRODUCCION INTENSIVA DE HORTALIZAS', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(178, 'MON', 'EDA', 'EDA667', '', 'ECOFISIOLOGIA DE LA RAIZ', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(179, 'MON', 'ENT', 'ENT603', '', 'ENTOMOLOGIA SISTEMATICA', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(180, 'MON', 'ENT', 'ENT638', '', 'CONTROL DE MALEZAS', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(181, 'MON', 'ENT', 'ENT645', '', 'ECOLOGIA Y MANEJO DE INSECTOS VECTORES  DE FITOPATOGENOS', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(182, 'MON', 'ENT', 'ENT647', '', 'PLAGAS Y ENFERMEDADES DE HORTALIZAS', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(183, 'MON', 'ENT', 'ENT655', '', 'CONTROL BIOLOGICO', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(184, 'MON', 'ENT', 'ENT657', '', 'PATOLOGIA DE INSECTOS', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(185, 'MON', 'ENT', 'ENT668', '', 'FITOSANIDAD FORESTAL', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(186, 'MON', 'EST', 'EST510', '', 'DISEÑOS EXPERIMENTALES EN LA AGRICULTURA', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', '', NULL),
(187, 'MON', 'FIT', 'FIT622', '', 'FITOPATOGENOS TRANSMITIDOS POR SEMILLA', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(188, 'MON', 'FIT', 'FIT623', '', 'BACTERIAS FITOPATOGENAS', 4, 4, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(189, 'MON', 'FIT', 'FIT645', '', 'FITOSANIDAD FORESTAL', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(190, 'MON', 'FIT', 'FIT665', '', 'FISIOLOGIA DE LA INTERACCION PLANTA-PATOGENO', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(191, 'MON', 'FOR', 'FOR611', '', 'INVENTARIO DE RECURSOS FORESTALES', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(192, 'MON', 'FOR', 'FOR615', '', 'MANEJO DE GERMOPLASMA FORESTAL', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO', NULL),
(193, 'MON', 'FOR', 'FOR620', '', 'BIOGEOQUIMICA DE ECOSISTEMAS FORESTALES', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(194, 'MON', 'FOR', 'FOR646', '', 'ECONOMIA DE LOS RECURSOS NATURALES Y    EL AMBIENTE', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(195, 'MON', 'FOR', 'FOR660', '', 'CONCEPTOS DE REGENERACION FORESTAL', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(196, 'MON', 'FOR', 'FOR664', '', 'ANALISIS DE ECOSISTEMAS FORESTALES', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(197, 'MON', 'FOR', 'FOR665', '', 'MANEJO DE BOSQUES', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(198, 'MON', 'FOR', 'FOR666', '', 'CRECIMIENTO Y RENDIMIENTO DE RODALES', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(199, 'MON', 'FOR', 'FOR668', '', 'ECOLOGIA Y MANEJO DE BOSQUES TROPICALES', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(200, 'MON', 'FRU', 'FRU604', '', 'PRODUCCION DE ORNAMENTALES', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(201, 'MON', 'FRU', 'FRU631', '', 'NUTRICION DE FRUTALES', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(202, 'MON', 'FRU', 'FRU646', '', 'FISIOLOGIA Y MANEJO POSTCOSECHA DE PLAN-TAS DE MACETA Y FLOR DE CORTE', 1, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(203, 'MON', 'GAN', 'GAN605', '', 'METABOLISMO DE ENERGIA', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(204, 'MON', 'GAN', 'GAN610', '', 'NUTRICION ANIMAL AVANZADA', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(205, 'MON', 'GAN', 'GAN612', '', 'NUTRICION DE CERDOS', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(206, 'MON', 'GAN', 'GAN642', '', 'FISIOLOGIA DE LA REPRODUCCION', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(207, 'MON', 'GAN', 'GAN643', '', 'MANEJO REPRODUCTIVO', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(208, 'MON', 'GAN', 'GAN651', '', 'METODOLOGIA DEL MEJORAMIENTO GENETICO   ANIMAL', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(209, 'MON', 'GAN', 'GAN655', '', 'MEJORAMIENTO GENETICO DE BOVINOS Y OVI- NOS', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(210, 'MON', 'GAN', 'GAN662', '', 'BIOLOGIA Y MANEJO DE AVES ACUATICAS     MIGRATORIAS', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO', NULL),
(212, 'MON', 'GEN', 'GEN602', '', 'GENETICA GENERAL AVANZADA', 4, 4, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(213, 'MON', 'GEN', 'GEN604', '', 'GENETICA CUANTITATIVA', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(214, 'MON', 'GEN', 'GEN606', '', 'GENETICA Y FISIOLOGIA DEL DESARROLLO', 4, 4, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(215, 'MON', 'GEN', 'GEN609', '', 'FISIOTECNIA VEGETAL', 4, 4, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(216, 'MON', 'GEN', 'GEN616', '', 'BIOLOGIA CELULAR', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(217, 'MON', 'GEN', 'GEN622', '', 'METODOS DE MEJORAMIENTO GENETICO', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(218, 'MON', 'GEN', 'GEN626', '', 'RESISTENCIA A SEQUIA', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(219, 'MON', 'GEN', 'GEN635', '', 'EVOLUCION ORGANICA', 4, 4, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(220, 'MON', 'HID', 'HID603', '', 'EVAPOTRANSPIRACION', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(221, 'MON', 'HID', 'HID604', '', 'PROGRAMACION DE MICROCOMPUTADORAS', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO', NULL),
(222, 'MON', 'HID', 'HID612', '', 'INGENIERIA DE RIEGO PRESURIZADO', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(223, 'MON', 'HID', 'HID639', '', 'EVALUACION TECNICA Y VALORACION DEL     IMPACTO AMBIENTAL EN CUENCAS HIDROGRA-  FICAS', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', '', NULL),
(224, 'MON', 'HID', 'HID656', '', 'DINAMICA DE SEDIMENTOS EN CUENCAS HIDRO-GRAFICAS', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO', NULL),
(225, 'MON', 'SEM', 'SEM605', '', 'ACONDICIONAMIENTO DE SEMILLAS', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(226, 'MON', 'SEM', 'SEM607', '', 'INTRODUCCION AL MANEJO DE RECURSOS      FITOGENETICOS', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(227, 'MON', 'SEM', 'SEM608', '', 'FISIOLOGIA Y BIOLOGIA MOLECULAR', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(228, 'MON', 'AGM', 'AGM610', '', 'CLIMATOLOGIA AGRICOLA', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', '', NULL),
(229, 'MON', 'DES', 'DES615', '', 'DINAMICA POBLACIONAL Y DESARROLLO RURAL', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', '', NULL),
(230, 'MON', 'EST', 'EST751', '', 'ESTADISTICA MATEMATICA', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO', NULL),
(231, 'MON', 'GAN', 'GAN663', '', 'CONSERVACION DE ESPECIES EN PELIGRO DE  EXTINCION', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO', NULL),
(233, 'MON', 'ENT', 'ENT679', '', 'ENTOMOLOGIA URBANA', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(234, 'MON', 'FRU', 'FRU657', '', 'FRUTALES DE CLIMA TEMPLADO EN ZONAS SUBTROPICALES', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(235, 'TAB', 'PAT', 'PAT640', '', 'MANEJO POSTCOSECHA E INOCUIDAD ALIMENTARIA', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', '', NULL),
(236, 'MON', 'DES', 'DES613', '', 'DESARROLLO TERRITORIAL', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', '', NULL),
(237, 'MON', 'FIT', 'FIT613', '', 'HONGOS FITOPATOGENOS', 4, 4, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(238, 'MON', 'ECO', 'ECO623', '', 'COMERCIO INTERNACIONAL', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO', NULL),
(239, 'MON', 'EST', 'EST726', '', 'ANALISIS DE SUPERVIVENCIA', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', '', NULL),
(240, 'MON', 'GAN', 'GAN609', '', 'BIOQUIMICA ANIMAL', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(241, 'MON', 'COA', 'COA502', '', 'CONCEPTOS BASICOS DE COMPUTACION', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO', NULL),
(242, 'MON', 'COA', 'COA635', '', 'MINERIA DE DATOS', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', '', NULL),
(243, 'MON', 'COA', 'COA637', '', 'BASES DE DATOS III (TOPICOS AVANZADOS)', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', '', NULL),
(244, 'MON', 'COA', 'COA662', '', 'MODELACION MATEMATICA', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', '', NULL),
(245, 'MON', 'EST', 'EST619', '', 'PROGRAMACION EN LENGUAJE C++', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', '', NULL),
(246, 'MON', 'EST', 'EST656', '', 'MUESTREO ESTADISTICO II', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO', NULL),
(247, 'MON', 'FRU', 'FRU638', '', 'PROPAGACION IN VITRO DE FRUTALES', 4, 4, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(249, 'MON', 'DES', 'DES648', '', 'METODOS DE DESARROLLO Y CAPACITACION CONMUJERES RURALES', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', '', NULL),
(250, 'MON', 'ECO', 'ECO667', '', 'MODELOS DE EQUILIBRIO ESPACIAL E INTER- TEMPORAL', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO', NULL),
(251, 'MON', 'EDA', 'EDA611', '', 'SISTEMAS DE INFORMACION GEOGRAFICA', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(252, 'MON', 'IDI', 'IDI403', '', 'CONVERSATION AND WRITING', 0, 0, 'S', '', 'OTONO', 2011, 'N', 'S', '', NULL),
(253, 'MON', 'FOR', 'FOR622', '', 'DASONOMIA URBANA', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(254, 'MON', 'ECO', 'ECO651', '', 'MATEMATICAS PARA ECONOMISTAS', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO', NULL),
(255, 'MON', 'ENT', 'ENT610', '', 'FISIOLOGIA DE INSECTOS', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(256, 'MON', 'COA', 'COA661', '', 'INTELIGENCIA ARTIFICIAL', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', '', NULL),
(257, 'MON', 'HID', 'HID623', '', 'FLUJO EN MEDIOS POROSOS', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', '', NULL),
(259, 'MON', 'BOT', 'BOT648', '', 'FITOQUIMICA', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(260, 'MON', 'ECO', 'ECO603', '', 'TEORIA MICROECONOMICA I', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO', NULL),
(261, 'MON', 'ECO', 'ECO637', '', 'PROGRAMACION APLICADA A LA AGRICULTURA', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', '', NULL),
(262, 'MON', 'ECO', 'ECO664', '', 'ECONOMIA INTERNACIONAL', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO', NULL),
(263, 'MON', 'ENT', 'ENT665', '', 'ECOLOGIA QUIMICA DE INSECTOS', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(264, 'MON', 'EST', 'EST657', '', 'PRACTICA DEL MUESTREO', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO', NULL),
(265, 'MON', 'GAN', 'GAN641', '', 'FISIOLOGIA ANIMAL', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(266, 'MON', 'COA', 'COA660', '', 'MODELACION MATEMATICA', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', '', NULL),
(267, 'MON', 'IDI', 'IDI405', '', 'LISTENING AND SPEAKING', 0, 0, 'S', '', 'OTONO', 2011, 'N', 'S', '', NULL),
(269, 'MON', 'COA', 'COA606', '', 'INGENIERIA DE SOFTWARE', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', '', NULL),
(270, 'MON', 'ECO', 'ECO602', '', 'TEORIA MACROECONOMICA I', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO', NULL),
(271, 'MON', 'EST', 'EST501', 'A', 'INTRODUCCION A LA ESTADISTICA', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', '', NULL),
(272, 'MON', 'FIT', 'FIT603', '', 'MICOLOGIA AGRICOLA', 4, 4, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(273, 'MON', 'FIT', 'FIT655', '', 'ESTUDIOS FITOPATOLOGICOS DE CAMPO', 4, 4, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(274, 'MON', 'GEN', 'GEN618', '', 'GENOMICA', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(275, 'MON', 'DES', 'DES630', '', 'ECONOMIA POLITICA', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', '', NULL),
(276, 'TAB', 'PAT', 'PAT620', '', 'SISTEMAS DE INFORMACI[ON GEOGRAFICA APLICADOS A LA GESTION AMBIENTAL', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', '', NULL),
(277, 'MON', 'DES', 'DES614', '', 'INTRODUCCION AL ANALISIS DE REDES SOCIALES DE COMUNICACION PARA EL DESARROLLO RURAL', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', '', NULL),
(278, 'MON', 'AEC', 'AEC601', '', 'TEORIA DE SISTEMAS APLICADO EN LA AGRI- CULTURA', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(279, 'MON', 'AGM', 'AGM602', '', 'MATEMATICAS', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', '', NULL),
(280, 'MON', 'AGM', 'AGM620', '', 'INSTRUMENTAL METEOROLOGICO', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', '', NULL),
(281, 'MON', 'AGM', 'AGM635', '', 'AGROMETEOROLOGIA', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO', NULL),
(282, 'MON', 'BOT', 'BOT601', '', 'INTRODUCCION A LA BOTANICA ESTRUCTURAL', 1, 1, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(283, 'MON', 'BOT', 'BOT602', '', 'INTRODUCCION A LA BOTANICA DE CAMPO', 2, 2, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(284, 'MON', 'BOT', 'BOT603', '', 'INTRODUCCION A LA BOTANICA FUNCIONAL', 2, 2, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(285, 'MON', 'BOT', 'BOT612', '', 'ANATOMIA VEGETAL', 1, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(286, 'MON', 'BOT', 'BOT621', '', 'BOTANICA SISTEMATICA AVANZADA', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(287, 'MON', 'BOT', 'BOT624', '', 'ETNOBOTANICA', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(288, 'MON', 'BOT', 'BOT625', '', 'BOTANICA ECONOMICA', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(289, 'MON', 'BOT', 'BOT633', '', 'ECOLOGIA VEGETAL', 4, 4, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(290, 'MON', 'BOT', 'BOT644', '', 'RELACIONES HIDRICA E INTERCAMBIO DE GA- SES EN PLANTAS', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(291, 'MON', 'BOT', 'BOT645', '', 'BIOQUIMICA FUNDAMENTAL', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(292, 'MON', 'BOT', 'BOT647', '', 'TEMAS SELECTOS DE BIOQUIMICA VEGETAL', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(293, 'MON', 'BOT', 'BOT651', '', 'AJUSTE PRACTICO DE CURVAS DE CRECIMIENTOVEGETAL E INDICES DE ANALISIS DE CRECI- MIENTO DE LOS CULTIVOS', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(294, 'MON', 'COA', 'COA501', '', 'HERRAMIENTAS DE COMPUTO PARA INVESTIGADORES', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', '', NULL),
(295, 'MON', 'COA', 'COA601', '', 'MATEMATICAS PARA COMPUTACION', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', '', NULL),
(296, 'MON', 'COA', 'COA603', '', 'ALGORITMOS NUMERICOS', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', '', NULL),
(297, 'MON', 'COA', 'COA605', '', 'PROGRAMACION ORIENTADA A OBJETOS', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO', NULL),
(298, 'MON', 'COA', 'COA618', '', 'PROGRAMACION Y ESTRUCTURA DE DATOS', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', '', NULL),
(299, 'MON', 'COA', 'COA633', '', 'BASES DE DATOS I', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO', NULL),
(300, 'MON', 'COA', 'COA664', '', 'SISTEMAS DE INFORMACION', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', '', NULL),
(301, 'MON', 'COA', 'COA666', '', 'SISTEMAS DE AYUDA A LA TOMA DE DECISIO- NES', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO', NULL),
(302, 'MON', 'DES', 'DES603', '', 'INTRODUCCION A LA METODOLOGIA', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO', NULL),
(303, 'MON', 'DES', 'DES607', '', 'TEORIAS DEL CAMPESINADO I', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(304, 'MON', 'DES', 'DES608', '', 'PSICOLOGIA SOCIAL Y PRODUCTIVIDAD', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO', NULL),
(305, 'MON', 'DES', 'DES617', '', 'SOCIEDAD Y MEDIO AMBIENTE', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(306, 'MON', 'DES', 'DES621', '', 'TEORIAS DEL DESARROLLO', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', '', NULL),
(307, 'MON', 'DES', 'DES623', '', 'TEORIAS DEL DESARROLLO II', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(308, 'MON', 'DES', 'DES624', '', 'SISTEMAS DE INFORMACION GEOGRAFICA APLI-CADA A CIENCIAS SOCIALES', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(309, 'MON', 'DES', 'DES626', '', 'ANALISIS DE PROGRAMAS DE DESARROLLO RU- RAL EN MEXICO', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO', NULL),
(310, 'MON', 'DES', 'DES645', '', 'MUJER, DESARROLLO Y POLITICA AGRARIA', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO', NULL),
(311, 'MON', 'DES', 'DES646', '', 'INTRODUCCION A LOS ESTUDIOS DE GENERO EN LAS CIENCIAS SOCIALES', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO', NULL),
(312, 'MON', 'DES', 'DES655', '', 'PLANEACION ESTRATEGICA PARA EL DESARROLLO RURAL', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', '', NULL),
(313, 'MON', 'DES', 'DES657', '', 'PROGRAMAS DE EXTENSION RURAL Y EDUCACION DE ADULTOS', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(314, 'MON', 'DES', 'DES665', '', 'PLANEACION ESTRATEGICA PARA EL DESAROLLO RURAL', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', '', NULL),
(315, 'MON', 'ECO', 'ECO617', '', 'EVALUACION FINANCIERA DE PROYECTOS DE   INVERSION', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO', NULL),
(316, 'MON', 'ECO', 'ECO622', '', 'COMERCIALIZACION DE PRODUCTOS AGRICOLAS', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO', NULL),
(317, 'MON', 'ECO', 'ECO634', '', 'LIDERAZGO (PLAN NEGOCIOS)', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', '', NULL),
(318, 'MON', 'ECO', 'ECO636', '', 'ECONOMIA DE LA PRODUCCION AGRICOLA', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', '', NULL),
(319, 'MON', 'ECO', 'ECO645', '', 'DESARROLLO AGRICOLA', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO', NULL),
(320, 'MON', 'ECO', 'ECO658', '', 'FUNDAMENTOS MICROECONOMICOS DE LA MACRO-ECONOMIA', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO', NULL),
(321, 'MON', 'ECO', 'ECO659', '', 'ECONOMIA Y MANAGEMENT', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', '', NULL),
(322, 'MON', 'ECO', 'ECO662', '', 'ECONOMIA INSTITUCIONAL Y AGRICULTURA', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', '', NULL),
(323, 'MON', 'ECO', 'ECO665', '', 'MACROECONOMIA DINAMICA', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', '', NULL),
(324, 'MON', 'EDA', 'EDA600', '', 'DINAMICA DE LA EROSION DEL SUELO', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', '', NULL),
(325, 'MON', 'EDA', 'EDA601', '', 'FISICA DE SUELOS (FUNDAMENTOS Y PRINCI- PIOS)', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', '', NULL),
(326, 'MON', 'EDA', 'EDA602', '', 'CONSERVACION DEL SUELO Y DEL AGUA', 1, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', '', NULL),
(327, 'MON', 'EDA', 'EDA605', '', 'CAPTACION DE AGUA DE LLUVIA', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(328, 'MON', 'EDA', 'EDA616', '', 'QUIMICA DE SUELOS Y SUS IMPLICACIONES   AMBIENTALES', 4, 4, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(329, 'MON', 'EDA', 'EDA621', '', 'CLASIFICACION Y EVALUACION DE TIERRAS', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(330, 'MON', 'EDA', 'EDA622', '', 'MINERALOGIA DEL SUELO', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(331, 'MON', 'EDA', 'EDA624', '', 'GEOMORFOLOGIA', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', '', NULL),
(332, 'MON', 'EDA', 'EDA626', '', 'PRINCIPIOS DE CARTOGRAFIA AUTOMATIZADA', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(333, 'MON', 'EDA', 'EDA631', '', 'FERTILIDAD DE SUELOS', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO', NULL),
(334, 'MON', 'EDA', 'EDA634', '', 'MANEJO DE LA FERTILIZACION ORGANICA Y   MINERAL', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(335, 'MON', 'EDA', 'EDA641', '', 'MICROBIOLOGIA DEL SUELO', 4, 4, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(336, 'MON', 'EDA', 'EDA642', '', 'MICROBIOLOGIA AMBIENTAL', 1, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(337, 'MON', 'EDA', 'EDA645', '', 'INTERACCION MOLECULAR PLANTA-MICROORGA- NISMO', 4, 4, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(338, 'MON', 'EDA', 'EDA647', '', 'ECOLOGIA FISIOLOGICA DE MICROORGANISMOS Y PLANTAS', 1, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(339, 'MON', 'EDA', 'EDA648', '', 'COMPOSTAJE', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(340, 'MON', 'EDA', 'EDA651', '', 'NUTRICION VEGETAL', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(341, 'MON', 'EDA', 'EDA657', '', 'BIOMOLECULAS Y METABOLISMO', 2, 2, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(342, 'MON', 'EDA', 'EDA662', '', 'APLICACION DEL ANALISIS DE REGRESION EN EDAFOLOGIA', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', '', NULL),
(343, 'MON', 'EDA', 'EDA663', '', 'OPTIMIZACION DE INSUMOS PARA LA AGRUCUL-TURA', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(344, 'MON', 'EDA', 'EDA665', '', 'EDAFOLOGIA GENERAL', 4, 4, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(345, 'MON', 'ENT', 'ENT602', '', 'MORFOLOGIA DE INSECTOS', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(346, 'MON', 'ENT', 'ENT605', '', 'ACAROLOGIA GENERAL', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(347, 'MON', 'ENT', 'ENT609', '', 'ESTADOS INMADUROS DE INSECTOS', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(348, 'MON', 'ENT', 'ENT640', '', 'ECOLOGIA DE INSECTOS', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(349, 'MON', 'ENT', 'ENT658', '', 'RESISTENCIA VEGETAL A INSECTOS Y ACAROS', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(350, 'MON', 'ENT', 'ENT659', '', 'PLAGAS DE FRUTALES', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(351, 'MON', 'ENT', 'ENT661', '', 'TOXICOLOGIA Y MANEJO DE LA RESISTENCIA A INSECTICIDAS', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(352, 'MON', 'ENT', 'ENT664', '', 'INSECTICIDAS AGRICOLAS', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(353, 'MON', 'EST', 'EST521', '', 'INTRODUCCION A LOS DISEÑOS EXPERIMENTA- LES', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO', NULL),
(354, 'MON', 'EST', 'EST526', '', 'INTRODUCCION A LOS METODOS ESTADISTICOS NO PARAMETRICOS', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', '', NULL),
(355, 'MON', 'EST', 'EST540', '', 'INTRODUCCION AL CONTROL ESTADISTICO DE CALIDAD', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', '', NULL),
(356, 'MON', 'EST', 'EST555', '', 'INTRODUCCION AL MUESTREO', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO', NULL),
(357, 'MON', 'EST', 'EST600', '', 'PROBABILIDAD I', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO', NULL),
(358, 'MON', 'EST', 'EST601', '', 'METODOS ESTADISTICOS I', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO', NULL),
(359, 'MON', 'EST', 'EST610', '', 'HERRAMIENTAS INFORMATICAS PARA LA INVES-TIGACION', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO', NULL),
(360, 'MON', 'EST', 'EST621', '', 'DISEÑOS EXPERIMENTALES I', 1, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO', NULL),
(361, 'MON', 'EST', 'EST626', '', 'METODOS ESTADISTICOS NO PARAMETRICOS', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO', NULL),
(362, 'MON', 'EST', 'EST629', '', 'ANALISIS DE DATOS CATEGORICOS', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO', NULL),
(363, 'MON', 'EST', 'EST633', '', 'ALGEBRA LINEAL', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO', NULL),
(364, 'MON', 'EST', 'EST640', '', 'CONTROL ESTADISTICO DE LA CALIDAD', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO', NULL),
(365, 'MON', 'EST', 'EST642', '', 'MODELOS LINEALES', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO', NULL),
(366, 'MON', 'EST', 'EST643', '', 'REGRESION LINEAL', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO', NULL),
(367, 'MON', 'EST', 'EST646', '', 'ANALISIS MATEMATICO', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO', NULL),
(368, 'MON', 'EST', 'EST651', '', 'PROBABILIDAD II', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO', NULL),
(369, 'MON', 'EST', 'EST653', '', 'TEORIA DE LA MEDIDA', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', '', NULL),
(370, 'MON', 'EST', 'EST655', '', 'MUESTREO ESTADISTICO I', 1, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', '', NULL),
(371, 'MON', 'EST', 'EST658', '', 'ESTADISTICA MULTIVARIADA', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO', NULL),
(372, 'MON', 'EST', 'EST660', '', 'TEORIA DE PRUEBA DE HIPOTESIS', 1, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', '', NULL),
(373, 'MON', 'EST', 'EST662', '', 'METODOS COMPUTACIONALES EN INFERENCIA   ESTADISTICA', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO', NULL),
(374, 'MON', 'EST', 'EST663', '', 'ESTADISTICA MATEMATICA', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', '', NULL),
(375, 'MON', 'EST', 'EST671', '', 'SEMINARIO DE INVESTIGACION', 2, 2, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'SEMINARIO', NULL),
(376, 'MON', 'EST', 'EST685', '', 'REVISION GENERAL DE CONOCIMIENTOS', 0, 0, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', '', NULL),
(377, 'MON', 'EST', 'EST728', '', 'ANALISIS BAYESIANO', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO', NULL),
(378, 'MON', 'EST', 'EST742', '', 'TEORIA DEL ANALISIS MULTIVARIADO', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO', NULL),
(379, 'MON', 'EST', 'EST753', '', 'METODOS ESTADISTICOS AVANZADOS', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO', NULL),
(380, 'MON', 'FIT', 'FIT608', '', 'CONCEPTOS FITOPATOLOGICOS', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(381, 'MON', 'FIT', 'FIT620', '', 'NEMATODOS FITOPATOGENOS', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(382, 'MON', 'FIT', 'FIT644', '', 'REGULACION FITOSANITARIA', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(383, 'MON', 'FIT', 'FIT658', '', 'ENFERMEDADES DE FRUTALES', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(384, 'MON', 'FOR', 'FOR612', '', 'EDAFOLOGIA FORESTAL', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(385, 'MON', 'FOR', 'FOR613', '', 'TEMAS SELECTOS DE FISIOLOGIA FORESTAL', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(386, 'MON', 'FOR', 'FOR617', '', 'GENETICA FORESTAL', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(387, 'MON', 'FOR', 'FOR635', '', 'TEMAS SOBRE PLANTACIONES FORESTALES', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(388, 'MON', 'FOR', 'FOR655', '', 'METODOS CUANTITATIVOS EN LA DASONOMIA', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(389, 'MON', 'FOR', 'FOR661', '', 'SILVICULTURA PARA EL MANEJO SUSTENTABLE', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(390, 'MON', 'FOR', 'FOR662', '', 'TEORIA SILVICOLA', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', '', NULL),
(391, 'MON', 'FOR', 'FOR669', '', 'CRECIMIENTO Y APROVECHAMIENTO DE ARBOLESTROPICALES', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(392, 'MON', 'FRU', 'FRU602', '', 'FRUTICULTURA GENERAL AVANZADA', 4, 4, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(393, 'MON', 'FRU', 'FRU621', '', 'MANEJO DE HUERTOS', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(394, 'MON', 'FRU', 'FRU635', '', 'PROPAGACION DE PLANTAS Y MANEJO DE VIVE-ROS', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(395, 'MON', 'FRU', 'FRU640', '', 'FISIOLOGIA DE ARBOLES FRUTALES', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(396, 'MON', 'FRU', 'FRU648', '', 'TECNOLOGIA POSTCOSECHA DE FRUTOS', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(397, 'MON', 'FRU', 'FRU650', '', 'ANATOMIA Y MORFOLOGIA DE FRUTALES', 4, 4, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(398, 'MON', 'GAN', 'GAN602', '', 'MICROBIOLOGIA DEL RUMEN', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(399, 'MON', 'GAN', 'GAN603', '', 'METABOLISMO Y MINERALES', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(400, 'MON', 'GAN', 'GAN604', '', 'NUTRICION DE RUMIANTES', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(401, 'MON', 'GAN', 'GAN606', '', 'METABOLISMO DE COMPUESTOS NITROGENADOS', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(402, 'MON', 'GAN', 'GAN608', '', 'TECNICAS DE LABORATORIO EN NUTRICION    ANIMAL', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(403, 'MON', 'GAN', 'GAN623', '', 'PRODUCCION DE SEMILLAS DE ESPECIES FORRAJERAS TROPICALES', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(404, 'MON', 'GAN', 'GAN624', '', 'MANEJO DE PASTOREO COMO PERSPECTIVA DE  SUSTENTABILIDAD', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(405, 'MON', 'GAN', 'GAN628', '', 'EVALUACION Y UTILIZACION DE FORRAJES', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(406, 'MON', 'GAN', 'GAN644', '', 'ENDOCRINOLOGIA', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL);
INSERT INTO `catacurs` (`id`, `cve_campus`, `cve_program`, `cve_curso`, `gpo_670`, `nombre`, `credimi`, `credima`, `vigente`, `es_tecno`, `periodo`, `agno`, `hay_credi`, `hay_calif`, `tipo`, `isevaluated`) VALUES
(407, 'MON', 'GAN', 'GAN645', '', 'FISIOLOGIA REPRODUCTIVA DEL MACHO', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(408, 'MON', 'GAN', 'GAN648', '', 'BIOLOGIA DEL CRECIMIENTO Y DESARROLLO   ANIMAL', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(409, 'MON', 'GAN', 'GAN650', '', 'ANALISIS DE EXPERIMENTOS CON ANIMALES', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(410, 'MON', 'GAN', 'GAN660', '', 'INTRODUCCION A LA FAUNA SILVESTRE COMO  CIENCIA', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO', NULL),
(411, 'MON', 'GAN', 'GAN665', '', 'NUTRICION DE FAUNA SILVESTRE', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(412, 'MON', 'GAN', 'GAN686', '', 'EXAMEN COMPRENSIVO', 0, 0, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', '', NULL),
(413, 'MON', 'GEN', 'GEN605', '', 'GENETICA MOLECULAR', 4, 4, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(414, 'MON', 'GEN', 'GEN614', '', 'DISEÑOS GENETICOS', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(415, 'MON', 'GEN', 'GEN615', '', 'CITOGENETICA', 4, 4, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(416, 'MON', 'GEN', 'GEN617', '', 'MEJORAMIENTO GENETICO MOLECULAR', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(417, 'MON', 'GEN', 'GEN623', '', 'TEORIA DEL MEJORAMIENTO GENETICO', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(418, 'MON', 'GEN', 'GEN627', '', 'GENOTECNIA VEGETAL PARA RESISTENCIA A SEQUIA Y HELADAS', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(419, 'MON', 'HID', 'HID601', '', 'EL AGUA EN EL SISTEMA SUELO-PLANTA-ATMOSFERA', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(420, 'MON', 'HID', 'HID605', '', 'FLUJO DEL AGUA EN SUELOS PARCIALMENTE SATURADOS', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', '', NULL),
(421, 'MON', 'HID', 'HID607', '', 'INTRODUCCION AL USO DE SISTEMAS DE      INFORMACION GEOGRAFICA', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO', NULL),
(422, 'MON', 'HID', 'HID610', '', 'CLIMATOLOGIA AGRICOLA', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', '', NULL),
(423, 'MON', 'HID', 'HID614', '', 'GESTION INTEGRAL DE CUENCAS', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO', NULL),
(424, 'MON', 'HID', 'HID616', '', 'AUTOMATIZACION DE RIEGO EN TIEMPO REAL', 1, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(425, 'MON', 'HID', 'HID618', '', 'CONTROL BIOLOGICO DE LA CONTAMINACION EN SUELO-AGUA-PLANTA', 1, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', '', NULL),
(426, 'MON', 'HID', 'HID631', '', 'SALINIDAD DE SUELOS AGRICOLAS BAJO RIEGO', 1, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO', NULL),
(427, 'MON', 'HID', 'HID633', '', 'ANALISIS QUIMICO DE SUELOS SALINOS Y SODICOS', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(428, 'MON', 'HID', 'HID636', '', 'LA CALIDAD DE LAS AGUAS Y USO EN LA     AGRICULTURA', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(429, 'MON', 'HID', 'HID638', '', 'MATERIALES FERTILIZANTES Y CALIDAD      AMBIENTAL', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(430, 'MON', 'HID', 'HID641', '', 'INTRODUCCION AL ANALISIS DE SISTEMAS', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', '', NULL),
(431, 'MON', 'HID', 'HID645', '', 'METODOS NUMERICOS', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', '', NULL),
(432, 'MON', 'HID', 'HID646', '', 'HIDRAULICA AVANZADA', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', '', NULL),
(433, 'MON', 'HID', 'HID652', '', 'HIDROLOGIA SUPERFICIAL', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', '', NULL),
(434, 'MON', 'IDI', 'IDI404', '', 'READING AND WRITING', 0, 0, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', '', NULL),
(435, 'MON', 'IDI', 'IDI503', '0', 'TOEFL', 0, 0, 'S', '', 'PRIMAVERA', 2012, 'N', 'S', '', NULL),
(436, 'MON', 'IDI', 'IDI505', '0', 'TOEFL', 0, 0, 'S', '', 'PRIMAVERA', 2012, 'N', 'S', '', NULL),
(437, 'MON', 'SEM', 'SEM601', '', 'ANALISIS DE SEMILLAS', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(438, 'MON', 'SEM', 'SEM602', '', 'FISIOLOGIA Y BIOQUIMICA DE SEMILLAS', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(439, 'MON', 'SEM', 'SEM606', '', 'ALMACENAMIENTO Y CONSERVACION DE SEMI-  LLAS Y GRANOS', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(440, 'MON', 'SEM', 'SEM609', '', 'ECOFISIOLOGIA DE LA PRODUCCION DE SEMI- LLAS DE HORTALIZAS Y ORNAMENTALES TUBE- RIFERAS', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(471, 'MON', 'COA', 'COA690', 'C', 'INVESTIGACION', 1, 9, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', '', NULL),
(574, 'MON', 'ENT', 'ENT690', 'C', 'INVESTIGACION', 1, 9, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', '', NULL),
(600, 'MON', 'EST', 'EST690', 'A', 'INVESTIGACION', 1, 9, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', '', NULL),
(719, 'MON', 'FRU', 'FRU690', '1', 'INVESTIGACION', 1, 9, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', '', NULL),
(806, 'MON', 'GEN', 'GEN690', '1', 'INVESTIGACION', 1, 9, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', '', NULL),
(902, 'MON', 'ECO', 'ECO604', '', 'TEORIA MACROECONOMICA II', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', '', NULL),
(903, 'MON', 'ECO', 'ECO605', '', 'TEORIA MICROECONOMICA II', 3, 3, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO', NULL),
(906, 'MON', 'ECO', 'ECO694', '4', 'INVESTIGACION', 1, 9, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', '', NULL),
(914, 'MON', 'MTF', 'MTF601', '', 'INTRUDUCCION A LA CONSERVACION DE LOS RECURSOS NATURALES', 2, 2, 'S', '', 'VERANO', 2011, 'S', 'S', '', NULL),
(915, 'MON', 'MTF', 'MTF602', '', 'SUELOS FORESTALES', 2, 2, 'S', '', 'VERANO', 2011, 'S', 'S', '', NULL),
(916, 'MON', 'MTF', 'MTF603', '', 'SISTEMAS SILVICOLAS', 2, 2, 'S', '', 'VERANO', 2011, 'S', 'S', '', NULL),
(917, 'MON', 'MTF', 'MTF604', '', 'ESTADISTICA APLICADA EN DASONOMIA E INVENTARIOS FORESTALES', 2, 2, 'S', '', 'VERANO', 2011, 'S', 'S', '', NULL),
(918, 'MON', 'MTF', 'MTF620', '', 'ESTRUCTURA Y FUNCION DE ECOSISTEMAS', 2, 2, 'S', '', 'OTONO', 2011, 'S', 'S', '', NULL),
(919, 'MON', 'MTF', 'MTF621', '', 'RESTAURACION E IMPACTO AMBIENTAL', 2, 2, 'S', '', 'OTONO', 2011, 'S', 'S', '', NULL),
(920, 'MON', 'MTF', 'MTF622', '', 'MANEJO DE FAUNA SILVESTRE', 2, 2, 'S', '', 'OTONO', 2011, 'S', 'S', '', NULL),
(921, 'MON', 'MTF', 'MTF614', '', 'SISTEMAS DE INFORMACION GEOGRAFICA', 2, 2, 'S', '', 'OTONO', 2011, 'S', 'S', '', NULL),
(922, 'MON', 'MTF', 'MTF651', '', 'GENETICA FORESTAL Y MEJORAMIENTO GENETICO FORESTAL', 2, 2, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', '', NULL),
(923, 'MON', 'MTF', 'MTF652', '', 'MANEJO DE SEMILLAS FORESTALES', 2, 2, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', '', NULL),
(924, 'MON', 'MTF', 'MTF653', '', 'PRODUCCION DE PLANTA EN VIVEROS', 2, 2, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', '', NULL),
(925, 'MON', 'MTF', 'MTF654', '', 'SILVICULTURA DE PLANTACIONES FORESTALES COMERCIALES', 2, 2, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', '', NULL),
(927, 'MON', 'DES', 'DES691', '0', 'EXAMEN DE GRADO', 0, 0, 'S', '', 'PRIMAVERA', 2012, 'N', 'N', 'TEORICO', NULL),
(928, 'MON', 'ECO', 'ECO691', '0', 'EXAMEN DE GRADO', 0, 0, 'S', '', 'PRIMAVERA', 2012, 'N', 'N', 'TEORICO', NULL),
(929, 'MON', 'EDA', 'EDA691', '0', 'EXAMEN DE GRADO', 0, 0, 'S', '', 'PRIMAVERA', 2012, 'N', 'N', 'TEORICO', NULL),
(930, 'MON', 'FOR', 'FOR608', '', 'PRINCIPIOS DE RESTAURACION', 3, 3, 'S', '', 'VERANO', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(931, 'MON', 'GEN', 'GEN619', '', 'ANALISIS DE DATOS GENETICOS', 3, 3, 'S', '', 'VERANO', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(932, 'MON', 'GAN', 'GAN691', '0', 'EXAMEN DE GRADO', 0, 0, 'S', '', 'PRIMAVERA', 2012, 'N', 'N', 'TEORICO', NULL),
(934, 'MON', 'FIT', 'FIT691', '0', 'EXAMEN DE GRADO', 0, 0, 'S', '', 'PRIMAVERA', 2012, 'N', 'N', 'TEORICO', NULL),
(935, 'MON', 'GAN', 'GAN615', '', 'CALIDAD DE LA CARNE COMO VALOR AGREGADO', 3, 3, 'S', '', 'OTONO', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(936, 'MON', 'GAN', 'GAN616', '', 'CONDUCTA Y BIENESTAR ANIMAL', 3, 3, 'S', '', 'OTONO', 2012, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(937, 'MON', 'FIV', 'FIV691', '0', 'EXAMEN DE GRADO', 0, 0, 'S', '', 'PRIMAVERA', 2012, 'N', 'N', 'TEORICO', NULL),
(938, 'MON', 'HID', 'HID691', '0', 'EXAMEN DE GRADO', 0, 0, 'S', '', 'PRIMAVERA', 2012, 'N', 'N', 'TEORICO', NULL),
(940, 'PUE', 'CEI', 'CEI665', '', 'APROVECHAMIENTO DE RECURSOS FITOGENETICOS', 3, 3, 'S', '', 'VERANO', 2012, 'S', 'S', 'TEORICO', NULL),
(941, 'MON', 'DES', 'DES641', '', 'METODOLOGIA DE LA INVESTIGACION SOCIAL', 3, 3, 'S', '', 'OTONO', 2012, 'S', '', 'TEORICO', NULL),
(942, 'MON', 'DES', 'DES616', '', 'FUNDAMENTOS EPISTEMOLOGICOS FEMINISTAS  EN LAS RELACIONES SOCIALES RURALES', 3, 3, 'S', '', 'PRIMAVERA', 2013, 'S', '', 'TEORICO', NULL),
(943, 'MON', 'BOT', 'BOT691', '0', 'EXAMEN DE GRADO', 0, 0, 'S', '', 'VERANO', 2012, 'N', 'N', 'TEORICO', NULL),
(944, 'MON', 'FRU', 'FRU691', '0', 'EXAMEN DE GRADO', 0, 0, 'S', '', 'VERANO', 2012, 'N', 'N', 'TEORICO', NULL),
(945, 'MON', 'ENT', 'ENT691', '0', 'EXAMEN DE GRADO', 0, 0, 'S', '', 'VERANO', 2012, 'N', 'N', 'TEORICO', NULL),
(946, 'MON', 'GEN', 'GEN691', '0', 'EXAMEN DE GRADO', 0, 0, 'S', '', 'VERANO', 2012, 'N', 'N', 'TEORICO', NULL),
(947, 'MON', 'EST', 'EST606', '', 'METODOS ESTADISTICOS EN BIOINFORMATICA', 3, 3, 'S', '', 'OTONO', 2012, 'S', '', 'TEORICO-PRACTICO', NULL),
(948, 'MON', 'EST', 'EST604', '', 'DISEÑO Y ANALISIS DE ESPERIMENTOS CON   MICROARREGLOS', 3, 3, 'S', '', 'PRIMAVERA', 2013, 'S', '', 'TEORICO-PRACTICO', NULL),
(949, 'MON', 'GAN', 'GAN618', '', 'EVALUACIONES GENETICAS EN MEJORAMIENTO  ANIMAL', 3, 3, 'S', '', 'PRIMAVERA', 2013, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(950, 'MON', 'GAN', 'GAN617', '', 'ECOLOGIA Y MANEJO DE DEPREDADORES', 3, 3, 'S', '', 'PRIMAVERA', 2013, 'S', '', 'TEORICO', NULL),
(951, 'MON', 'GAN', 'GAN646', '', 'FISIOLOGIA AMBIENTAL', 3, 3, 'S', '', 'VERANO', 2013, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(952, 'MON', 'SEM', 'SEM691', '0', 'EXAMEN DE GRADO', 0, 0, 'S', '', 'VERANO', 2012, 'N', 'N', 'TEORICO', NULL),
(956, 'MON', 'EST', 'EST691', '0', 'EXAMEN DE GRADO', 0, 0, 'S', '', 'VERANO', 2012, 'N', 'N', 'TEORICO', NULL),
(957, 'MON', 'FOR', 'FOR691', '0', 'EXAMEN DE GRADO', 0, 0, 'S', '', 'VERANO', 2012, 'N', 'N', 'TEORICO', NULL),
(958, 'MON', 'COA', 'COA691', '0', 'EXAMEN DE GRADO', 0, 0, 'S', '', 'VERANO', 2012, 'N', 'N', 'TEORICO', NULL),
(961, 'VER', 'CTH', 'CTH639', '', 'SISTEMAS AGROPECUARIOS SOSTENIBLES EN ZONAS TROPICALES', 3, 3, 'S', '', 'OTONO', 2012, 'S', 'S', 'TEORICO', NULL),
(964, 'MON', 'FOR', 'FOR607', '', 'BIOTECNOLOGIA FORESTAL', 3, 3, 'S', '', 'PRIMAVERA', 2013, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(965, 'MON', 'MTH', 'MTH612', '', 'INTRODUCCION A LOS SENSORES REMOTOS', 3, 3, 'S', '', 'PRIMAVERA', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(966, 'MON', 'MTH', 'MTH613', '', 'OPERACION DE DISTRITOS DE RIEGO CON SENSORES REMOTOS', 3, 3, 'S', '', 'PRIMAVERA', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(967, 'MON', 'MTH', 'MTH614', '', 'DISEÑO DE SISTEMAS DE RIEGO LOCALIZADO', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(968, 'MON', 'MTH', 'MTH615', '', 'PROYECTOS EJECUTIVOS DE OBRAS HIDRAULICAS', 3, 3, 'S', '', 'VERANO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(969, 'MON', 'MTH', 'MTH616', '', 'INGENIERIA ECONOMICA', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(970, 'MON', 'MTH', 'MTH617', '', 'EVALUACION ECONOMICA DE PROYECTOS DE INFRAESTRUCTURA HIDROAGRICOLA', 3, 3, 'S', '', 'OTONO', 2011, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(971, 'MON', 'MTH', 'MTH691', '0', 'EXAMEN DE GRADO', 0, 0, 'S', '', 'OTONO', 2011, 'N', 'N', 'TEORICO', NULL),
(972, 'MON', 'EST', 'EST641', '', 'DISEÑOS EXPERIMENTALES PARA EL MEJORAMIENTO DE PRODUCTOS Y PROCESOS', 3, 3, 'S', '', 'PRIMAVERA', 2013, 'S', 'S', 'TEORICO', NULL),
(974, 'MON', 'FIT', 'FIT609', '', 'DIAGNOSTICO Y MANEJO DE ENFERMEDADES', 3, 3, 'S', '', 'VERANO', 2013, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(976, 'COR', 'IAS', 'IAS605', '', 'BIOQUIMICA DE ALIMENTOS', 3, 3, 'S', '', 'PRIMAVERA', 2013, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(977, 'COR', 'IAS', 'IAS617', '', 'INNOVACION Y DESARROLLO ALIMENTARIO', 3, 3, 'S', '', 'PRIMAVERA', 2013, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(979, 'MON', 'IDI', 'IDI402', '', 'WRITING', 0, 0, 'S', '', 'PRIMAVERA', 2013, 'N', 'S', 'TEORICO', NULL),
(980, 'MON', 'CMB', 'CMB690', 'A', 'INVESTIGACION', 0, 4, 'S', '', 'PRIMAVERA', 2012, 'S', 'S', 'TEORICO', NULL),
(984, 'PUE', 'CEI', 'CEI611', '', 'ADMINISTRACION DE RECURSOS', 3, 3, 'S', '', 'PRIMAVERA', 2013, 'S', 'S', 'TEORICO', NULL),
(986, 'MON', 'FIT', 'FIT666', '', 'RESISTENCIA GENETICA A FITOPATOGENOS', 3, 3, 'S', '', 'OTONO', 2013, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(988, 'MON', 'CMB', 'CMB691', '0', 'EXAMEN DE GRADO', 0, 0, 'S', '', 'PRIMAVERA', 2013, 'N', 'N', 'TEORICO', NULL),
(990, 'MON', 'GAN', 'GAN621', '', 'DINAMICA Y ESTIMACION DE POBLACIONES DE FAUNA SILVESTRE', 3, 3, 'S', '', 'VERANO', 2013, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(997, 'PUE', 'CEI', 'CEI649', '', 'EL METODO DE CAMPO EN LA INVESTIGACION  SOBRE PRODUCTIVIDAD PROSOSTENIBLE DE SISTEMA AGRICOLA', 3, 3, 'S', '', 'VERANO', 2013, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(1004, 'MON', 'GAN', 'GAN619', '', 'INGENIERIA GENETICA Y PRODUCCION DE ENZIMAS RECOMBINANTES', 4, 4, 'S', '', 'OTONO', 2013, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(1009, 'PUE', 'CEI', 'CEI625', '', 'CAMBIO TECNOLOGICO Y DESARROLLO REGIONAL', 3, 3, 'S', '', 'OTONO', 2013, 'S', 'S', 'TEORICO', NULL),
(1010, 'PUE', 'CEI', 'CEI642', '', 'ORGANIZACION Y ORGANIZACION CAMPESINA', 3, 3, 'S', '', 'OTONO', 2013, 'S', 'S', 'TEORICO', NULL),
(1011, 'PUE', 'CEI', 'CEI626', '', 'CONOCIMIENTO DE LA AGRICULTURA TRADICIONAL', 3, 3, 'S', '', 'OTONO', 2013, 'S', 'S', 'TEORICO', NULL),
(1015, 'MON', 'ECO', 'ECO609', '', 'ADMINISTRACION DE RIESGOS EN AGRONEGOCIOS', 3, 3, 'S', '', 'PRIMAVERA', 2014, 'S', 'S', 'TEORICO', NULL),
(1019, 'VER', 'CTH', 'CTH602', '', 'INTRODUCCION A LA ESTADISTICA', 3, 3, 'S', '', 'PRIMAVERA', 2014, 'S', 'S', 'TEORICO', NULL),
(1020, 'VER', 'CTH', 'CTH640', '', 'MANEJO INTEGRADO DE PLAGAS EN EL TROPICO', 3, 3, 'S', '', 'PRIMAVERA', 2014, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(1021, 'MON', 'FRU', 'FRU684', '', 'SEMINARIO IV: INVESTIGACION Y DESARROLLODE LA HORTOFRUTICULTURA EN MEXICO', 2, 2, 'S', '', 'PRIMAVERA', 2014, 'S', 'S', 'SEMINARIO', NULL),
(1022, 'MON', 'BOT', 'BOT692', '0', 'EXAMEN DE CANDIDATURA', 0, 0, 'S', '', 'PRIMAVERA', 2014, 'N', 'N', 'TEORICO', NULL),
(1023, 'MON', 'EDA', 'EDA692', '0', 'EXAMEN DE CANDIDATURA', 0, 0, 'S', '', 'PRIMAVERA', 2014, 'N', 'N', 'TEORICO', NULL),
(1024, 'MON', 'SEM', 'SEM692', '0', 'EXAMEN DE CANDIDATURA', 0, 0, 'S', '', 'PRIMAVERA', 2014, 'N', 'N', 'TEORICO', NULL),
(1025, 'MON', 'FOR', 'FOR692', '0', 'EXAMEN DE CANDIDATURA', 0, 0, 'S', '', 'PRIMAVERA', 2014, 'N', 'N', 'TEORICO', NULL),
(1026, 'MON', 'DES', 'DES629', '', 'DESARROLLO TERRITORIAL: HACIA UNA NUEVA RURALIDAD', 4, 4, 'S', '', 'VERANO', 2014, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(1028, 'MON', 'FIT', 'FIT692', '0', 'EXAMEN DE CANDIDATURA', 0, 0, 'S', '', 'PRIMAVERA', 2014, 'N', 'N', 'TEORICO', NULL),
(1029, 'MON', 'GAN', 'GAN692', '0', 'EXAMEN DE CANDIDATURA', 0, 0, 'S', '', 'PRIMAVERA', 2014, 'N', 'N', 'TEORICO', NULL),
(1031, 'MON', 'EST', 'EST607', '', 'ESTADISTICA GENETICA', 3, 3, 'S', '', 'VERANO', 2014, 'S', 'S', 'TEORICO', NULL),
(1033, 'MON', 'ENT', 'ENT692', '0', 'EXAMEN DE CANDIDATURA', 0, 0, 'S', '', 'PRIMAVERA', 2014, 'N', 'N', 'TEORICO', NULL),
(1034, 'PUE', 'CEI', 'CEI657', '', 'RECURSOS GENETICOS Y SU DIVERSIDAD', 3, 3, 'S', '', 'VERANO', 2014, 'S', 'S', 'TEORICO', NULL),
(1036, 'PUE', 'CEI', 'CEI627', '', 'ELABORACION, GESTION Y OBTENCION DE FONDOS PARA PROYECTOS EDUCATIVOS', 2, 2, 'S', '', 'PRIMAVERA', 2014, 'S', 'S', 'TEORICO', NULL),
(1037, 'MON', 'EST', 'EST692', '0', 'EXAMEN DE CANDIDATURA', 0, 0, 'S', '', 'VERANO', 2014, 'N', 'N', 'TEORICO', NULL),
(1038, 'MON', 'FRU', 'FRU692', '0', 'EXAMEN DE CANDIDATURA', 0, 0, 'S', '', 'VERANO', 2014, 'N', 'N', 'TEORICO', NULL),
(1039, 'MON', 'HID', 'HID608', '', 'INTRODUCCION A LOS SENSORES REMOTOS', 4, 4, 'S', '', 'VERANO', 2014, 'S', 'S', 'TEORICO', NULL),
(1040, 'MON', 'FIV', 'FIV692', '0', 'EXAMEN DE CANDIDATURA', 0, 0, 'S', '', 'VERANO', 2014, 'N', 'N', 'TEORICO', NULL),
(1041, 'MON', 'HID', 'HID606', '', 'CONCEPTOS BASICOS DE MATEMATICAS, ESTA- DISTICA E HIDRAULICA', 4, 4, 'S', '', 'OTONO', 2014, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(1042, 'MON', 'GEN', 'GEN692', '0', 'EXAMEN DE CANDIDATURA', 0, 0, 'S', '', 'VERANO', 2014, 'S', 'S', 'TEORICO', NULL),
(1043, 'MON', 'HID', 'HID692', '0', 'EXAMEN DE CANDIDATURA', 0, 0, 'S', '', 'VERANO', 2014, 'N', 'N', 'TEORICO', NULL),
(1044, 'MON', 'FOR', 'FOR625', '', 'TECNICAS BIOTECNOLOGICAS APLICADAS AL   MEJORAMIENTO Y CONSERVACION DE LAS      ESPECIES FORESTALES', 3, 3, 'S', '', 'OTONO', 2014, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(1047, 'MON', 'ECO', 'ECO692', '0', 'EXAMEN DE CANDIDATURA', 0, 0, 'S', '', 'OTONO', 2014, 'N', 'N', 'TEORICO', NULL),
(1048, 'VER', 'CTH', 'CTH607', '', 'FILOSOFIA DE LA CIENCIA', 2, 2, 'S', '', 'OTONO', 2012, 'S', 'S', 'TEORICO', NULL),
(1049, 'VER', 'CTH', 'CTH613', '', 'METODOLOGIA DE LA INVESTIGACION', 3, 3, 'S', '', 'OTONO', 2012, 'S', 'S', 'TEORICO', NULL),
(1050, 'VER', 'CTH', 'CTH621', '', 'INTRODUCCION AL ESTUDIO DE LOS AGROECO- SISTEMAS', 3, 3, 'S', '', 'OTONO', 2012, 'S', 'S', 'TEORICO', NULL),
(1051, 'VER', 'CTH', 'CTH623', '', 'METODOS DE ANALISIS DE AGROECOSISTEMAS', 3, 3, 'S', '', 'PRIMAVERA', 2013, 'S', 'S', 'TEORICO', NULL),
(1052, 'VER', 'CTH', 'CTH627', '', 'COMPORTAMIENTO ANIMALY ECOLOGIA DEL PAS-TOREO', 3, 3, 'S', '', 'PRIMAVERA', 2013, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(1053, 'VER', 'CTH', 'CTH615', '', 'DIAGNOSTICO DE LOS AGROECOSISTEMAS', 3, 3, 'S', '', 'VERANO', 2013, 'S', 'S', 'TEORICO', NULL),
(1054, 'VER', 'CTH', 'CTH626', '', 'ECONOMIA DE LOS RECURSOS NATURALES Y ME-DIO AMBIENTE', 3, 3, 'S', '', 'VERANO', 2014, 'S', 'S', 'TEORICO', NULL),
(1055, 'VER', 'CTH', 'CTH690', 'A', 'INVESTIGACION', 1, 9, 'S', '', 'VERANO', 2013, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(1056, 'MON', 'AGT', 'AGT654', '', 'POLITICAS PUBLICAS PARA LA GESTION AGRI-COLA', 3, 3, 'S', '', 'VERANO', 2014, 'S', 'S', 'TEORICO', NULL),
(1057, 'MON', 'AGT', 'AGT655', '', 'MARCO TEORICO', 2, 2, 'S', '', 'VERANO', 2014, 'S', 'S', 'TEORICO', NULL),
(1059, 'MON', 'HID', 'HID609', '', 'CONTAMINACION DEL SUELO, AGUA, PLANTA Y ATMOSFERA', 3, 3, 'S', '', 'OTONO', 2015, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(1063, 'MON', 'DES', 'DES692', '0', 'EXAMEN DE CANDIDATURA', 0, 0, 'S', '', 'OTONO', 2014, 'N', 'N', 'TEORICO', NULL),
(1064, 'MON', 'ENT', 'ENT601', '', 'ENTOMOLOGIA GENERAL I', 3, 3, 'S', '', 'PRIMAVERA', 2015, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(1065, 'COR', 'IAS', 'IAS601', '', 'FUNDAMENTOS DE LAS CADENAS AGROALIMENTA-RIAS', 3, 3, 'S', '', 'OTONO', 2015, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(1067, 'MON', 'MTF', 'MTF624', '', 'EVALUACION DEL IMPACTO AMBIENTAL', 2, 2, 'S', '', 'PRIMAVERA', 2015, 'S', 'S', 'TEORICO', NULL),
(1068, 'MON', 'MTF', 'MTF623', '', 'SANIDAD FORESTAL', 2, 2, 'S', '', 'PRIMAVERA', 2015, 'S', 'S', 'TEORICO', NULL),
(1069, 'MON', 'MTF', 'MTF655', '', 'INVETARIOS FORESTALES', 2, 2, 'S', '', 'VERANO', 2015, 'S', 'S', 'TEORICO', NULL),
(1070, 'MON', 'MTF', 'MTF656', '', 'MANEJO FORESTAL', 2, 2, 'S', '', 'VERANO', 2015, 'S', 'S', 'TEORICO', NULL),
(1083, 'MON', 'ECO', 'ECO654', '', 'MODELOS ECONOMETRICOS', 3, 3, 'S', '', 'VERANO', 2015, 'S', 'S', 'TEORICO', NULL),
(1085, 'COR', 'IAS', 'IAS615', '', 'BIOTECNOLOGIA Y DESARROLLO SUSTENTABLE', 3, 3, 'S', '', 'VERANO', 2015, 'S', 'S', 'TEORICO', NULL),
(1090, 'MON', 'ECO', 'ECO624', '', 'TEORIA ECONOMICA DEL MEDIO AMBIENTE', 3, 3, 'S', '', 'VERANO', 2016, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(1091, 'MON', 'ECO', 'ECO629', '', 'ECONOMIA DINAMICA', 3, 3, 'S', '', 'OTONO', 2015, 'S', 'S', 'TEORICO', NULL),
(1092, 'MON', 'DES', 'DES651', '', 'INFANCIA RURAL E INDIGENA', 3, 3, 'S', '', 'OTONO', 2015, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(1094, 'PUE', 'CEI', 'CEI630', '', 'RECURSOS GENETICOS Y SU PRODUCTIVIDAD', 3, 3, 'S', '', 'PRIMAVERA', 2016, 'S', 'S', 'TEORICO', NULL),
(1095, 'MON', 'FOR', 'FOR641', '', 'ECONOMIA FORESTAL', 3, 3, 'S', '', 'OTONO', 2016, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(1096, 'MON', 'ECO', 'ECO626', '', 'ANALISIS CUANTITATIVO DE POLITICA       AGRICOLA', 3, 3, 'S', '', 'VERANO', 2016, 'S', 'S', 'TEORICO', NULL),
(1098, 'MON', 'BOT', 'BOT605', '', 'ESTRATEGIAS BIOQUIMICAS Y MOLECULARES   PARA INCREMENTAR LA CAPACIDAD FITOSIN-  TETICA EN PLANTAS', 3, 3, 'S', '', 'VERANO', 2016, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(1100, 'COR', 'IAS', 'IAS603', '', 'ANALISIS SENSORIAL DE PRODUCTOS AGROALI-MENTARIOS', 3, 3, 'S', '', 'VERANO', 2016, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(1101, 'COR', 'IAS', 'IAS606', '', 'DISEÑOS EXPERIMENTALES AVANZADOS EN     SISTEMAS AGROALIMENTARIOS', 3, 3, 'S', '', 'VERANO', 2016, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(1102, 'COR', 'IAS', 'IAS614', '', 'POLITICA, NORMATIVA Y GESTION DE LA CA- LIDAD ALIMENTARIA', 3, 3, 'S', '', 'VERANO', 2016, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(1103, 'MON', 'GAN', 'GAN607', '', 'MANIPULACION MICROBIOLOGICA Y FERMENTA- TIVA DEL RUMEN Y BIODIGESTORES', 3, 3, 'S', '', 'OTONO', 2016, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(1104, 'MON', 'TFL', 'TFL602', '', 'EDAFOLOGIA FORESTAL', 2, 2, 'S', '', 'PRIMAVERA', 2016, 'S', 'S', 'TEORICO', NULL),
(1105, 'MON', 'TFL', 'TFL604', '', 'ESTADISTICA BASICA', 2, 2, 'S', '', 'PRIMAVERA', 2016, 'S', 'S', 'TEORICO', NULL),
(1106, 'MON', 'TFL', 'TFL654', '', 'PLANTACIONES FORESTALES COMERCIALES', 2, 2, 'S', '', 'PRIMAVERA', 2016, 'S', 'S', 'TEORICO', NULL),
(1107, 'MON', 'TFL', 'TFL603', '', 'SILVICULTURA', 2, 2, 'S', '', 'PRIMAVERA', 2016, 'S', 'S', 'TEORICO', NULL),
(1108, 'MON', 'TFL', 'TFL620', '', 'ECOSISTEMAS FORESTALES', 2, 2, 'S', '', 'VERANO', 2016, 'S', 'S', 'TEORICO', NULL),
(1109, 'MON', 'TFL', 'TFL621', '', 'RESTAURACION FORESTAL', 2, 2, 'S', '', 'VERANO', 2016, 'S', 'S', 'TEORICO', NULL),
(1110, 'MON', 'TFL', 'TFL624', '', 'IMPACTO AMBIENTAL', 2, 2, 'S', '', 'VERANO', 2016, 'S', 'S', 'TEORICO', NULL),
(1111, 'MON', 'TFL', 'TFL623', '', 'SALUD FORESTAL', 2, 2, 'S', '', 'OTONO', 2016, 'S', 'S', 'TEORICO', NULL),
(1112, 'MON', 'TFL', 'TFL655', '', 'INVENTARIOS FORESTALES', 2, 2, 'S', '', 'OTONO', 2016, 'S', 'S', 'TEORICO', NULL),
(1113, 'MON', 'TFL', 'TFL622', '', 'FAUNA SILVESTRE', 2, 2, 'S', '', 'OTONO', 2016, 'S', 'S', 'TEORICO', NULL),
(1114, 'MON', 'TFL', 'TFL657', '', 'ADMINISTRACION FORESTAL', 2, 2, 'S', '', 'OTONO', 2016, 'S', 'S', 'TEORICO', NULL),
(1115, 'MON', 'TFL', 'TFL656', '', 'SISTEMAS DE MANEJO FORESTAL', 2, 2, 'S', '', 'OTONO', 2016, 'S', 'S', 'TEORICO', NULL),
(1116, 'COR', 'IAS', 'IAS619', '', 'GENERACION Y ADMINISTRACION DE NEGOCIOS AGROALIMENTARIOS', 3, 3, 'S', '', 'OTONO', 2016, 'S', 'S', 'TEORICO', NULL),
(1117, 'COR', 'IAS', 'IAS628', '', 'CIENCIA Y TECNOLOGIA DEL CAFE', 3, 3, 'S', '', 'OTONO', 2016, 'S', 'S', 'TEORICO', NULL),
(1118, 'SLP', 'IRN', 'IRN624', '', 'MANEJO Y APROVECHAMIENTO SUSTENTABLE DE RECURSOS NATURALES', 3, 3, 'S', '', 'OTONO', 2016, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(1119, 'MON', 'GAN', 'GAN625', '', 'ORNITOLOGIA', 3, 3, 'S', '', 'OTONO', 2016, 'S', 'S', 'TEORICO', NULL),
(1120, 'MON', 'BSA', 'BSA639', '', 'APLICACION DE LAS CIENCIAS GENOMICAS EN EL TROPICO', 3, 3, 'S', '', 'OTONO', 2016, 'S', 'S', 'TEORICO', NULL),
(1121, 'MON', 'BSA', 'BSA635', '', 'GENOTECNIA MODERNA', 3, 3, 'S', '', 'OTONO', 2016, 'S', 'S', 'TEORICO', NULL),
(1122, 'MON', 'BSA', 'BSA637', '', 'INOVACIONES MOLECULARES PARA LA BIOPROS-PECCION Y LA AGRICULTURA TROPICAL', 3, 3, 'S', '', 'OTONO', 2016, 'S', 'S', 'TEORICO', NULL),
(1123, 'PUE', 'CEI', 'CEI668', '', 'USO DE LOS RECURSOS FITOGENETICOS EN LOSSISTEMAS ALIMENTARIOS', 3, 3, 'S', '', 'OTONO', 2016, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(1124, 'MON', 'FRU', 'FRU654', '', 'MEJORAMIENTO GENETICO DE FRUTALES', 3, 3, 'S', '', 'OTONO', 2016, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(1126, 'MON', 'AEC', 'AEC602', '', 'FUNDAMENTOS DE ECOLOGIA Y TEORIA DE     SISTEMAS AGROPECUARIOS', 3, 3, 'S', '', 'PRIMAVERA', 2017, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(1127, 'COR', 'IAS', 'IAS620', '', 'COMERCIALIZACION DE PRODUCTOS AGROALI-  MENTARIOS', 3, 3, 'S', '', 'OTONO', 2016, 'S', 'S', 'TEORICO', NULL),
(1128, 'MON', 'MTF', 'MTF690', 'A', 'INVESTIGACION', 1, 4, 'S', '', 'VERANO', 2015, 'S', 'S', 'TEORICO', NULL),
(1132, 'MON', 'MTF', 'MTF691', '0', 'EXAMEN DE GRADO', 0, 0, 'S', '', 'PRIMAVERA', 2017, 'N', 'N', 'TEORICO', NULL),
(1133, 'MON', 'AEC', 'AEC603', '', 'EPISTEMOLOGIA Y METODOLOGIA DE LAS      CIENCIAS SOCIALES', 3, 3, 'S', '', 'VERANO', 2017, 'S', 'S', 'TEORICO', NULL),
(1134, 'MON', 'AEC', 'AEC604', '', 'MODELOS DE GESTION DE LA CALIDAD Y CER- TIFICACION EN SISTEMAS AGROALIMENTARIOS:SELLOS Y DISTINTIVOS', 3, 3, 'S', '', 'VERANO', 2017, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(1135, 'MON', 'AEC', 'AEC605', '', 'SABERES Y CONOCIMIENTOS TRADICIONALES   PARA EL MANEJO SUSTENTABLE DE AGROECO-  SISTEMAS', 3, 3, 'S', '', 'VERANO', 2017, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(1136, 'MON', 'AEC', 'AEC606', '', 'AGRICULTURA ORGANICA: FUNDAMENTOS Y     ASPECTOS PRACTICOS', 3, 3, 'S', '', 'OTONO', 2017, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(1137, 'MON', 'AEC', 'AEC607', '', 'AGROECOLOGIA Y DESARROLLO RURAL PARTICI-PATIVO: BASES CONCEPTUALES Y METODOLO-  GICAS', 3, 3, 'S', '', 'OTONO', 2017, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(1138, 'MON', 'AEC', 'AEC609', '', 'POLITICAS PUBLICAS Y EL ENFOQUE AGROECO-LOGICO', 3, 3, 'S', '', 'OTONO', 2017, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(1139, 'MON', 'HID', 'HID613', '', 'BIORREMEDIACION DE SUELOS Y AGUAS', 3, 3, 'S', '', 'VERANO', 2017, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(1140, 'MON', 'BOT', 'BOT681', '', 'SEMINARIO DE INVESTIGACION', 2, 2, 'S', '', 'VERANO', 2017, 'S', 'S', 'SEMINARIO', NULL),
(1141, 'MON', 'DES', 'DES680', '', 'SEMINARIO DE INVESTIGACION', 2, 2, 'S', '', 'VERANO', 2017, 'S', 'S', 'SEMINARIO', NULL),
(1142, 'MON', 'FOR', 'FOR681', '', 'SEMINARIO DE INVESTIGACION', 1, 1, 'S', '', 'VERANO', 2017, 'S', 'S', 'SEMINARIO', NULL),
(1143, 'MON', 'GAN', 'GAN680', '', 'SEMINARIO DE INVESTIGACION', 2, 2, 'S', '', 'VERANO', 2017, 'S', 'S', 'SEMINARIO', NULL),
(1144, 'MON', 'GEN', 'GEN681', '', 'SEMINARIO DE INVESTIGACION', 2, 2, 'S', '', 'VERANO', 2017, 'S', 'S', 'SEMINARIO', NULL),
(1146, 'MON', 'COA', 'COA680', '', 'SEMINARIO DE INVESTIGACION', 1, 1, 'S', '', 'VERANO', 2017, 'S', 'S', 'SEMINARIO', NULL),
(1147, 'TAB', 'PAT', 'PAT636', '', 'MEJORAMIENTO GENETICO MOLECULAR', 3, 3, 'S', '', 'VERANO', 2017, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(1148, 'MON', 'AEC', 'AEC610', '', 'SISTEMAS DE PRODUCCION AGROECOLOGICOS Y PROCESO DE RECONVERSION', 3, 3, 'S', '', 'VERANO', 2017, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(1149, 'MON', 'IDI', 'IDI407', 'A', 'STARTER', 0, 0, 'S', '', 'VERANO', 2017, 'N', 'S', 'TEORICO', NULL),
(1150, 'MON', 'ECO', 'ECO627', '', 'MERCADOTECNIA', 3, 3, 'S', '', 'VERANO', 2017, 'S', 'S', 'TEORICO', NULL),
(1151, 'MON', 'AEC', 'AEC608', '', 'SISTEMAS DE INFORMACION GEOGRAFICA Y    PERCEPCION REMOTA', 3, 3, 'S', '', 'PRIMAVERA', 2017, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(1152, 'MON', 'AEC', 'AEC622', '', 'METODOS CUANTITATIVOS EN ECOLOGIA', 3, 3, 'S', '', 'VERANO', 2017, 'S', 'S', 'TEORICO', NULL),
(1153, 'MON', 'DES', 'DES619', '', 'CADENAS DE VALOR COMO EJE DE DESARROLLO RURAL', 3, 3, 'S', '', 'VERANO', 2017, 'S', 'S', 'TEORICO', NULL),
(1154, 'MON', 'DES', 'DES635', '', 'GESTION DE LA INNOVACION PARA EL DESA-  RROLLO RURAL', 3, 3, 'S', '', 'OTONO', 2017, 'S', 'S', 'TEORICO', NULL),
(1155, 'VER', 'CTH', 'CTH638', '', 'CULTIVO SIN SUELO Y ACUAPONIA', 3, 3, 'S', '', 'VERANO', 2017, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(1156, 'MON', 'HID', 'HID681', '', 'SEMINARIO DE INVESTIGACION', 2, 2, 'S', '', 'VERANO', 2017, 'S', 'S', 'SEMINARIO', NULL),
(1157, 'MON', 'HID', 'HID682', '', 'SEMINARIO DE INVESTIGACION', 2, 2, 'S', '', 'OTONO', 2017, 'S', 'S', 'SEMINARIO', NULL),
(1158, 'MON', 'COA', 'COA667', '', 'SISTEMAS DE INFORMACION GEOGRAFICOS', 3, 3, 'S', '', 'VERANO', 2017, 'S', 'S', 'TEORICO', NULL),
(1160, 'MON', 'AEC', 'AEC680', '', 'SEMINARIO DE INVESTIGACION', 2, 2, 'S', '', 'OTONO', 2017, 'S', 'S', 'SEMINARIO', NULL),
(1161, 'MON', 'ECO', 'ECO680', '', 'SEMINARIO DE INVESTIGACION', 1, 1, 'S', '', 'OTONO', 2017, 'S', 'S', 'SEMINARIO', NULL),
(1162, 'MON', 'FIT', 'FIT680', '', 'SEMINARIO DE INVESTIGACION', 2, 2, 'S', '', 'OTONO', 2017, 'S', 'S', 'SEMINARIO', NULL),
(1163, 'MON', 'FIT', 'FIT681', '', 'SEMINARIO DE INVESTIGACION', 1, 1, 'S', '', 'OTONO', 2017, 'S', 'S', 'SEMINARIO', NULL),
(1164, 'MON', 'FIV', 'FIV680', '', 'SEMINARIO DE INVESTIGACION', 2, 2, 'S', '', 'OTONO', 2017, 'S', 'S', 'SEMINARIO', NULL),
(1165, 'MON', 'FOR', 'FOR680', '', 'SEMINARIO DE INVESTIGACION', 2, 2, 'S', '', 'OTONO', 2017, 'S', 'S', 'SEMINARIO', NULL),
(1166, 'MON', 'SEM', 'SEM680', '', 'SEMINARIO DE INVESTIGACION', 1, 1, 'S', '', 'OTONO', 2017, 'S', 'S', 'SEMINARIO', NULL),
(1167, 'MON', 'SEM', 'SEM681', '', 'SEMINARIO DE INVESTIGACION', 1, 1, 'S', '', 'OTONO', 2017, 'S', 'S', 'SEMINARIO', NULL),
(1168, 'MON', 'EST', 'EST680', '', 'SEMINARIO DE INVESTIGACION', 1, 1, 'S', '', 'OTONO', 2017, 'S', 'S', 'SEMINARIO', NULL),
(1169, 'MON', 'EST', 'EST681', '', 'SEMINARIO DE INVESTIGACION', 2, 2, 'S', '', 'OTONO', 2017, 'S', 'S', 'SEMINARIO', NULL),
(1170, 'MON', 'FRU', 'FRU680', '', 'SEMINARIO DE INVESTIGACION', 2, 2, 'S', '', 'OTONO', 2017, 'S', 'S', 'SEMINARIO', NULL),
(1171, 'MON', 'FRU', 'FRU681', '', 'SEMINARIO DE INVESTIGACION', 2, 2, 'S', '', 'OTONO', 2017, 'S', 'S', 'SEMINARIO', NULL),
(1172, 'MON', 'FRU', 'FRU682', '', 'SEMINARIO DE INVESTIGACION', 1, 1, 'S', '', 'OTONO', 2017, 'S', 'S', 'SEMINARIO', NULL),
(1173, 'MON', 'EDA', 'EDA680', '', 'SEMINARIO DE INVESTIGACION', 2, 2, 'S', '', 'OTONO', 2017, 'S', 'S', 'SEMINARIO', NULL),
(1174, 'MON', 'EDA', 'EDA681', '', 'SEMINARIO DE INVESTIGACION', 2, 2, 'S', '', 'OTONO', 2017, 'S', 'S', 'SEMINARIO', NULL),
(1176, 'MON', 'BSA', 'BSA624', '', 'BIOLOGIA MOLECULAR Y GENOMAS', 3, 3, 'S', '', 'OTONO', 2017, 'S', 'S', 'TEORICO', NULL),
(1178, 'MON', 'HID', 'HID615', '', 'VISION ARTIFICIAL APLICADA A LOS RECUR- SOS NATURALES: AGUA, SUELO Y VEGETACION', 4, 4, 'S', '', 'OTONO', 2017, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(1179, 'MON', 'DES', 'DES642', '', 'LOS HOMBRES Y LAS MASCULINIDADES EN LAS REPRESENTACIONES Y PRACTICA SOCIAL RURAL', 3, 3, 'S', '', 'OTONO', 2017, 'S', 'S', 'TEORICO', NULL),
(1180, 'MON', 'FOR', 'FOR610', '', 'DASONOMIA', 4, 4, 'S', '', 'OTONO', 2017, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(1182, 'MON', 'DMI', 'DMI601', 'A', 'FORMULACION DEL PROTOCOLO DE INVESTIGA- CION', 9, 9, 'S', '', 'OTONO', 2017, 'S', 'S', 'TEORICO', NULL),
(1184, 'MON', 'DMI', 'DMI690', 'A', 'INVESTIGACION', 1, 9, 'S', '', 'OTONO', 2017, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(1190, 'MON', 'FOR', 'FOR671', '', 'GENETICA DEL LA CONSERVACION', 3, 3, 'S', '', 'OTONO', 2017, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(1192, 'MON', 'HID', 'HID680', '', 'SEMINARIO DE INVESTIGACION', 1, 1, 'S', '', 'PRIMAVERA', 2018, 'S', 'S', 'SEMINARIO', NULL),
(1194, 'MON', 'ENT', 'ENT680', '', 'SEMINARIO DE INVESTIGACION', 1, 1, 'S', '', 'PRIMAVERA', 2018, 'S', 'S', 'SEMINARIO', NULL),
(1195, 'MON', 'ENT', 'ENT681', '', 'SEMINARIO DE INVESTIGACION', 2, 2, 'S', '', 'PRIMAVERA', 2018, 'S', 'S', 'SEMINARIO', NULL),
(1196, 'MON', 'GEN', 'GEN680', 'A', 'SEMINARIO DE INVESTIGACION', 2, 2, 'S', '', 'PRIMAVERA', 2018, 'S', 'S', 'SEMINARIO', NULL),
(1200, 'MON', 'ECO', 'ECO631', '', 'MODELOS DE DESARROLLO COMUNITARIO', 3, 3, 'S', '', 'PRIMAVERA', 2018, 'S', 'S', 'TEORICO', NULL),
(1201, 'MON', 'ECO', 'ECO639', '', 'ECONOMIA SOCIAL Y SOLIDARIA', 3, 3, 'S', '', 'PRIMAVERA', 2018, 'S', 'S', 'TEORICO', NULL),
(1202, 'MON', 'GAN', 'GAN681', '', 'SEMINARIO DE INVESTIGACIO', 1, 1, 'S', '', 'PRIMAVERA', 2018, 'S', 'S', 'SEMINARIO', NULL),
(1204, 'MON', 'EDA', 'EDA613', '', 'METODOS CROMATOGRAFICOS Y SU APLICACION AGROPECUARIA', 3, 3, 'S', '', 'VERANO', 2018, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(1205, 'TAB', 'PAT', 'PAT615', '', 'MICROBIOLOGIA ABROAMBIENTAL', 3, 3, 'S', '', 'VERANO', 2018, 'S', 'S', 'TEORICO', NULL),
(1206, 'TAB', 'PAT', 'PAT621', '', 'ALIMENTACION BOVINA', 3, 3, 'S', '', 'VERANO', 2018, 'S', 'S', 'TEORICO', NULL),
(1207, 'TAB', 'PAT', 'PAT623', '', 'ALIMENTOS DE ORIGEN ANIMAL', 3, 3, 'S', '', 'VERANO', 2018, 'S', 'S', 'TEORICO', NULL),
(1209, 'PUE', 'CEI', 'CEI684', 'A', 'ESCRITURA, PUBLICACION Y PRESENTACION DEARTICULOS CIENTIFICOS', 3, 3, 'S', '', 'VERANO', 2018, 'S', 'S', 'TEORICO', NULL),
(1210, 'SLP', 'IRN', 'IRN622', '', 'LEGISLACION Y PROPIEDAD INTELECTUAL', 3, 3, 'S', '', 'VERANO', 2018, 'S', 'S', 'TEORICO', NULL),
(1211, 'MON', 'FOR', 'FOR606', '', 'GEOESTADISTICA APLICADA EN EL ESTUDIO DELOS RECURSOS FORESTALES', 3, 3, 'S', '', 'VERANO', 2018, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(1213, 'MON', 'DES', 'DES639', '', 'TEORIAS AVANZADAS DEL DESARROLLO', 3, 3, 'S', '', 'OTONO', 2018, 'S', 'S', 'TEORICO', NULL),
(1214, 'VER', 'CTH', 'CTH664', '', 'CAMBIO CLIMATICO Y AGROECOSISTEMAS', 3, 3, 'S', '', 'OTONO', 2018, 'S', 'S', 'TEORICO', NULL),
(1217, 'SLP', 'IRN', 'IRN636', '', 'ECOLOGIA APLICADA PARA EL MANEJO DE RE- CURSOS NATURALES', 3, 3, 'S', '', 'PRIMAVERA', 2019, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(1218, 'PUE', 'CEI', 'CEI613', '', 'DISEÑOS EXPERIMENTALES: MANEJO Y ANALI- SIS DE DATOS', 3, 3, 'S', '', 'PRIMAVERA', 2019, 'S', 'S', 'TEORICO', NULL),
(1219, 'MON', 'TFL', 'TFL614', '', 'SISTEMAS DE INFORMACION GEOGRAFICA', 2, 2, 'S', '', 'OTONO', 2016, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(1220, 'MON', 'GAN', 'GAN675', 'A', 'TEMAS SELECTOS DE ALIMENTACION: ANTIOXI-DANTES', 2, 2, 'S', '', 'OTONO', 2018, 'S', 'S', 'TEORICO', NULL),
(1221, 'MON', 'ECO', 'ECO646', '', 'AGRONEGOCIOS (TOPICOS SELECTOS)', 3, 3, 'S', '', 'VERANO', 2019, 'S', 'S', 'TEORICO', NULL),
(1222, 'MON', 'DES', 'DES659', '', 'ETNOGRAFIA PARA EL DESARROLLO', 3, 3, 'S', '', 'VERANO', 2019, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(1225, 'MON', 'TFL', 'TFL690', 'A', 'INVESTIGACION', 1, 4, 'S', '', 'PRIMAVERA', 2017, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(1226, 'MON', 'TFL', 'TFL691', '0', 'EXAMEN DE GRADO', 0, 0, 'S', '', 'VERANO', 2019, 'N', 'N', 'TEORICO', NULL),
(1228, 'MON', 'COA', 'COA681', '', 'SEMINARIO DE INVESTIGACION', 1, 1, 'S', '', 'OTONO', 2019, 'S', 'S', 'SEMINARIO', NULL),
(1229, 'MON', 'BOT', 'BOT622', '', 'METODOLOGIAS EN SISTEMATICA', 3, 3, 'S', '', 'OTONO', 2019, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(1230, 'MON', 'ECO', 'ECO635', '', 'EVALUACION DE POLITICAS PUBLICAS', 3, 3, 'S', '', 'OTONO', 2019, 'S', 'S', 'TEORICO', NULL),
(1231, 'PUE', 'CEI', 'CEI669', '', 'DESARROLLO DE LA GANADERIA FAMILIAR DE  RUMIANTES: EL SISTEMA DE ALIMENTACION', 3, 3, 'S', '', 'OTONO', 2019, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(1232, 'MON', 'BOT', 'BOT606', '', 'FITOQUIMICOS ANTIVIRULENCIA: NUEVOS     ANTIBACTERIANOS', 3, 3, 'S', '', 'VERANO', 2019, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(1233, 'MON', 'AEC', 'AEC691', '0', 'EXAMEN DE GRADO', 0, 0, 'S', '', 'VERANO', 2019, 'N', 'N', 'TEORICO', NULL),
(1234, 'MON', 'GEN', 'GEN611', '', 'RELACIONES ENTRE LA PLANTA Y SU MICRO-  CLIMA', 3, 3, 'S', '', 'OTONO', 2019, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(1235, 'MON', 'GAN', 'GAN626', '', 'BASES Y APLICACIONES DE BIOTECNOLOGIAS  EN REPRODUCCION ANIMAL', 3, 3, 'S', '', 'VERANO', 2020, 'S', 'S', 'TEORICO', NULL),
(1243, 'MON', 'HID', 'HID617', '', 'IMPACTO DEL CAMBIO CLIMATICO EN LOS RE- CURSOS HIDRICOS', 3, 3, 'S', '', 'VERANO', 2020, 'S', 'S', 'TEORICO', NULL),
(1246, 'MON', 'BOT', 'BOT675', 'B', 'MORFOLOGIA, TAXONOMIA Y BIOLOGIA DE     ESCARABAJOS (COLEOPTERA:SCARABAEOIDEA)', 1, 1, 'S', '', 'OTONO', 2019, 'S', 'S', 'TEORICO', NULL),
(1248, 'MON', 'ECO', 'ECO641', '', 'PROGRAMACION MATEMATICA POSITIVA APLICA-DA A LA ECONOMIA DE LOS RECURSOS NATU-  RALES Y AGRONEGOCIOS', 3, 3, 'S', '', 'VERANO', 2020, 'S', 'S', 'TEORICO', NULL),
(1249, 'MON', 'BOT', 'BOT607', '', 'PALINOLOGIA', 3, 3, 'S', '', 'OTONO', 2020, 'S', 'S', 'TEORICO', NULL),
(1250, 'MON', 'AEC', 'AEC681', '', 'SEMINARIO DE INVESTIGACION', 1, 1, 'S', '', 'VERANO', 2020, 'S', 'S', 'SEMINARIO', NULL),
(1251, 'MON', 'DES', 'DES625', '', 'ANALISIS GEOGRAFICO REGIONAL TERRITORIALY PRINCIPIOS DE REGIONALIZACION', 3, 3, 'S', '', 'OTONO', 2020, 'S', 'S', 'TEORICO', NULL),
(1254, 'MON', 'DES', 'DES652', '', 'TURISMO RURAL COMUNITARIO', 3, 3, 'S', '', 'OTONO', 2020, 'S', 'S', 'TEORICO', NULL),
(1255, 'MON', 'DMI', 'DMI692', '0', 'EXAMEN DE CANDIDATURA', 0, 0, 'S', '', 'OTONO', 2020, 'N', 'N', 'TEORICO', NULL),
(1261, 'MON', 'DMI', 'DMI610', '0', 'DIVULGACION DE RESULTADOS DE INVESTIGA- CION', 0, 0, 'S', '', 'OTONO', 2020, 'N', 'N', 'TEORICO', NULL),
(1263, 'MON', 'DMI', 'DMI691', '0', 'EXAMEN DE GRADO', 0, 0, 'S', '', 'OTONO', 2020, 'N', 'N', 'TEORICO', NULL),
(1264, 'COR', 'IAS', 'IAS610', '', 'DESARROLLO REGIONAL SUSTENTABLE', 3, 3, 'S', '', 'PRIMAVERA', 2021, 'S', 'S', 'TEORICO', NULL),
(1265, 'MON', 'COA', 'COA682', '', 'SEMINARIO DE INVESTIGACION', 1, 1, 'S', '', 'PRIMAVERA', 2021, 'S', 'S', 'SEMINARIO', NULL),
(1267, 'MON', 'IDI', 'IDI408', '', 'CURSO INTRODUCCION AL INGLES', 0, 0, 'S', '', 'PRIMAVERA', 2021, 'N', 'S', 'TEORICO', NULL),
(1268, 'MON', 'IDI', 'IDI409', '', 'CURSO NIVELACION INGLES', 0, 0, 'S', '', 'PRIMAVERA', 2021, 'N', 'S', 'TEORICO', NULL),
(1269, 'MON', 'IDI', 'IDI411', '', 'CURSO TOEFL', 0, 0, 'S', '', 'PRIMAVERA', 2021, 'N', 'S', 'TEORICO', NULL),
(1270, 'MON', 'IDI', 'IDI412', '', 'CURSO FRANCES 1', 0, 0, 'S', '', 'PRIMAVERA', 2021, 'N', 'S', 'TEORICO', NULL),
(1271, 'MON', 'IDI', 'IDI414', '', 'CURSO FRANCES 3', 0, 0, 'S', '', 'PRIMAVERA', 2021, 'N', 'S', 'TEORICO', NULL),
(1272, 'CAM', 'CAT', 'CAT609', '', 'MODELACION DE LOS SISTEMAS AGROPECUARIOS', 3, 3, 'S', '', 'PRIMAVERA', 2021, 'S', 'S', 'TEORICO', NULL),
(1273, 'MON', 'GAN', 'GAN688', 'A', 'PRACTICA DOCENTE', 1, 1, 'S', '', 'PRIMAVERA', 2021, 'S', 'S', 'TEORICO', NULL),
(1275, 'MON', 'GEN', 'GEN612', '', 'EPIGENETICA', 3, 3, 'S', '', 'OTONO', 2021, 'S', 'S', 'TEORICO', NULL),
(1276, 'MON', 'BOT', 'BOT608', '', 'GESTION DE MALEZAS', 3, 3, 'S', '', 'OTONO', 2021, 'S', 'S', 'TEORICO', NULL),
(1279, 'MON', 'IDI', 'IDI410', '', 'CURSO PRE-TOEFL', 0, 0, 'S', '', 'VERANO', 2021, 'N', 'S', 'TEORICO', NULL),
(1280, 'MON', 'IDI', 'IDI415', '', 'FRANCES IV', 0, 0, 'S', '', 'VERANO', 2021, 'N', 'S', 'TEORICO', NULL),
(1282, 'MON', 'BOT', 'BOT688', 'A', 'PRACTICA DOCENTE', 1, 1, 'S', '', 'VERANO', 2021, 'S', 'S', 'TEORICO', NULL),
(1284, 'MON', 'ECO', 'ECO688', 'A', 'PRACTICA DOCENTE', 1, 1, 'S', '', 'OTONO', 2021, 'S', 'S', 'TEORICO', NULL),
(1285, 'MON', 'EDA', 'EDA670', 'A', 'OBTENCION DE METABOLITOS BACTERIANOS Y  FUNGICOS', 1, 1, 'S', '', 'OTONO', 2021, 'S', 'S', 'TEORICO', NULL),
(1289, 'MON', 'FOR', 'FOR670', 'A', 'DETECCION Y MANEJO DE FUSARIUM EN       ESPECIES FORESTALES', 1, 1, 'S', '', 'OTONO', 2021, 'S', 'S', 'TEORICO', NULL),
(1290, 'MON', 'FIV', 'FIV670', 'A', 'ANALISIS DE LA EXPRESION GENETICA       MEDIANTE MARCADORES CDNA-AFLP', 1, 1, 'S', '', 'VERANO', 2021, 'S', 'S', 'TEORICO', NULL),
(1291, 'MON', 'IDI', 'IDI413', '', 'CURSO FRANCES II', 0, 0, 'S', '', 'OTONO', 2021, 'N', 'S', 'TEORICO', NULL),
(1292, 'MON', 'EDA', 'EDA688', 'A', 'PRACTICA DOCENTE', 1, 1, 'S', '', 'VERANO', 2021, 'S', 'S', 'TEORICO', NULL),
(1294, 'MON', 'BSA', 'BSA622', '', 'AGUA Y SUELO EN LOS AGROECOSISTEMAS', 3, 3, 'S', '', 'PRIMAVERA', 2022, 'S', 'S', 'TEORICO', NULL),
(1295, 'MON', 'PTR', 'PTR603', '', 'PRINCIPIOS DE PAISAJE', 3, 3, 'S', '', 'PRIMAVERA', 2022, 'S', 'S', 'TEORICO', NULL),
(1296, 'MON', 'GAN', 'GAN600', '', 'ALIMENTOS Y ALIMENTACION DE AVES', 4, 4, 'S', '', 'PRIMAVERA', 2022, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(1297, 'MON', 'GAN', 'GAN614', '', 'NUTRICION Y ALIMENTACION DE CONEJOS', 4, 4, 'S', '', 'OTONO', 2022, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(1299, 'MON', 'ENT', 'ENT688', 'A', 'PRACTICA DOCENTE', 1, 1, 'S', '', 'PRIMAVERA', 2022, 'S', 'S', 'TEORICO', NULL),
(1300, 'VER', 'CTH', 'CTH614', '', 'ZONIFICACION Y GESTION AMBIENTAL', 3, 3, 'S', '', 'PRIMAVERA', 2022, 'S', 'S', 'TEORICO', NULL),
(1301, 'PUE', 'CEI', 'CEI624', 'A', 'GENERO Y SUSTENTABILIDAD EN EL          DESARROLLO AGRICOLA RURAL', 3, 3, 'S', '', 'VERANO', 2022, 'S', 'S', 'TEORICO', NULL),
(1305, 'MON', 'ENT', 'ENT641', '', 'ECOLOGIA CUANTITATIVA DE INSECTOS', 3, 3, 'S', '', 'OTONO', 2022, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(1306, 'MON', 'GAN', 'GAN670', 'A', 'DIVERSIDAD GENETICA MEDIANTE MARCADORES DERIVADOS DE TECNOLOGIA DE MEDIANO      RENDIMIENTO Y DE SECUENCIA MASIVA', 1, 1, 'S', '', 'OTONO', 2022, 'S', 'S', 'TEORICO', NULL),
(1307, 'VER', 'CTH', 'CTH657', '', 'DISEÑO DEL PROTOCOLO DE INVESTIGACION', 2, 2, 'S', '', 'OTONO', 2021, 'S', 'S', 'TEORICO', NULL),
(1308, 'VER', 'CTH', 'CTH665', '', 'PROCESO DE INNOVACION RURAL', 3, 3, 'S', '', 'OTONO', 2021, 'S', 'S', 'TEORICO', NULL),
(1309, 'VER', 'CTH', 'CTH650', '', 'EPISTEMOLOGIA', 3, 3, 'S', '', 'PRIMAVERA', 2022, 'S', 'S', 'TEORICO', NULL),
(1310, 'VER', 'CTH', 'CTH653', '', 'TEORIAS CIENTIFICAS', 2, 2, 'S', '', 'OTONO', 2021, 'S', 'S', 'TEORICO', NULL),
(1311, 'VER', 'CTH', 'CTH651', '', 'PLANIFICACION DE AGROECOSISTEMAS', 3, 3, 'S', '', 'PRIMAVERA', 2022, 'S', 'S', 'TEORICO', NULL),
(1313, 'PUE', 'CEI', 'CEI658', '', 'ETNOECOLOGIA', 3, 3, 'S', '', 'OTONO', 2022, 'S', 'S', 'TEORICO', NULL),
(1315, 'MON', 'FIT', 'FIT614', '', 'HORMONAS VEGETALES Y SU FUNCION EN LAS  INTERACCIONES PLANTA-PATOGENO Y PLANTA- INSECTOS PLAGA', 3, 3, 'S', '', 'OTONO', 2022, 'S', 'S', 'TEORICO', NULL),
(1316, 'MON', 'SEM', 'SEM611', '', 'LA SEMILLA Y SU INTERACCION CON EL      MICROBIOMA', 4, 4, 'S', '', 'OTONO', 2022, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(1317, 'PUE', 'CEI', 'CEI604', '', 'ESTRATEGIAS PARA EL DESARROLLO AGRICOLA REGIONAL', 3, 3, 'S', '', 'OTONO', 2021, 'S', 'S', 'TEORICO', NULL),
(1319, 'PUE', 'CEI', 'CEI650', '', 'ECONOMIA AGROALIMENTARIA', 3, 3, 'S', '', 'PRIMAVERA', 2022, 'S', 'S', 'TEORICO', NULL),
(1320, 'PUE', 'CEI', 'CEI690', 'I', 'INVESTIGACION', 9, 9, 'S', '', 'VERANO', 2022, 'S', 'S', 'TEORICO-PRACTICO', NULL),
(1323, 'MON', 'SEM', 'SEM688', 'A', 'PRACTICA DOCENTE', 1, 1, 'S', '', 'OTONO', 2022, 'S', 'S', 'TEORICO', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coordinaciones`
--

CREATE TABLE `coordinaciones` (
  `id` int(11) NOT NULL,
  `cve_campus` varchar(3) NOT NULL,
  `cve_posgrad` varchar(6) NOT NULL,
  `nom_posgra` varchar(60) NOT NULL,
  `cve_program` varchar(3) NOT NULL,
  `nom_program` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `cont_veces` int(2) NOT NULL,
  `cont_final` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `coordinaciones`
--

INSERT INTO `coordinaciones` (`id`, `cve_campus`, `cve_posgrad`, `nom_posgra`, `cve_program`, `nom_program`, `username`, `password`, `cont_veces`, `cont_final`) VALUES
(1, 'MON', 'AEC', 'AGROECOLOGÍA Y SUSTENTABILIDAD', 'AEC', 'AGROECOLOGÍA Y SUSTENTABILIDAD', 'agroecologia@colpos.mx', '306a1ca9', 0, 0),
(2, 'MON', 'BOT', 'BOTANICA', 'BOT', 'BOTANICA', 'posgrado_botanica@colpos.mx', '7ed56a52', 0, 0),
(3, 'MON', 'PSEI', 'SOCIOECONOMÍA, ESTADÍSTICA E INFORMÁTICA', 'COA', 'CÓMPUTO APLICADO', 'admision.coa@colpos.mx', '10101010', 0, 0),
(4, 'MON', 'PSEI', 'SOCIOECONOMÍA, ESTADÍSTICA E INFORMÁTICA', 'DES', 'DESARROLLO RURAL', 'desrural@colpos.mx', '4a69a4e9', 0, 0),
(5, 'MON', 'PSEI', 'SOCIOECONOMÍA, ESTADÍSTICA E INFORMÁTICA', 'ECO', 'ECONOMÍA', 'economía@colpos.mx', '3ad590da', 0, 0),
(6, 'MON', 'EDA', 'EDAFOLOGÍA', 'EDA', 'EDAFOLOGÍA', 'edafologia@colpos.mx', '28f6b261', 0, 0),
(7, 'MON', 'FIT', 'POSGRADO EN FITOSANIDAD', 'ENT', 'ENTOMOLOGÍA Y ACAROLOGIA', 'coorento@colpos.mx', '30961e8a', 0, 0),
(8, 'MON', 'PSEI', 'SOCIOECONOMÍA, ESTADÍSTICA E INFORMÁTICA', 'EST', 'ESTADISTICA', 'cooresta@colpos.mx', '8c364eb4', 0, 0),
(9, 'MON', 'PREGEP', 'POSGRADO EN RECURSOS GENÉTICOS Y PRODUCTIVIDAD', 'FIS', 'FISIOLOGIA VEGETAL', 'coordfis@colpos.mx', '8d9ab273', 0, 0),
(10, 'MON', 'FIT', 'POSGRADO EN FITOSANIDAD', 'FIT', 'FITOPATOLOGIA', 'admon-fitopatologia@colpos.mx', '70b40155', 0, 0),
(11, 'MON', 'FOR', 'CIENCIAS FORESTALES', 'FOR', 'CIENCIAS FORESTALES', 'forest@colpos.mx', '3884989e', 0, 0),
(12, 'MON', 'PREGEP', 'POSGRADO EN RECURSOS GENÉTICOS Y PRODUCTIVIDAD', 'FRU', 'FRUTICULTURA', 'coordfru@colpos.mx', '4e63ff88', 0, 0),
(13, 'MON', 'PREGEP', 'POSGRADO EN RECURSOS GENÉTICOS Y PRODUCTIVIDAD', 'GAN', 'GANADERIA', 'coorgan@colpos.mx', 'dfbab19b', 0, 0),
(14, 'MON', 'PREGEP', 'POSGRADO EN RECURSOS GENÉTICOS Y PRODUCTIVIDAD', 'GEN', 'GENETICA', 'genetica@colpos.mx', 'f5341db8', 0, 0),
(15, 'MON', 'HID', 'HIDROCIENCIAS', 'HID', 'HIDROCIENCIAS', 'hidrociencias@colpos.mx', 'c2f1b7cc', 0, 0),
(16, 'MON', 'PREGEP', 'POSGRADO EN RECURSOS GENÉTICOS Y PRODUCTIVIDAD', 'SEM', 'PRODUCCIÓN DE SEMILLAS', 'semillas@colpos.mx', '9b5f44e6', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-03-03 17:09:59.980837', '3', 'admision.coa@colpos.mx', 1, '[{\"added\": {}}]', 4, 2),
(2, '2023-03-03 17:10:37.026351', '3', 'admision.coa@colpos.mx', 2, '[]', 4, 2),
(3, '2023-03-03 17:16:41.021727', '1', 'coordinaciones', 1, '[{\"added\": {}}]', 3, 2),
(4, '2023-03-03 17:16:47.061447', '1', 'coordinaciones', 2, '[]', 3, 2),
(5, '2023-03-03 17:16:58.500226', '1', 'coordinaciones', 2, '[]', 3, 2),
(6, '2023-03-03 17:19:32.355435', '3', 'admision.coa@colpos.mx', 2, '[{\"changed\": {\"fields\": [\"Staff status\", \"User permissions\"]}}]', 4, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(8, 'capcursapp', 'academic'),
(9, 'capcursapp', 'authgroup'),
(10, 'capcursapp', 'authgrouppermissions'),
(11, 'capcursapp', 'authpermission'),
(12, 'capcursapp', 'authuser'),
(13, 'capcursapp', 'authusergroups'),
(14, 'capcursapp', 'authuseruserpermissions'),
(20, 'capcursapp', 'capcurs'),
(15, 'capcursapp', 'catacurs'),
(22, 'capcursapp', 'colaboradores'),
(24, 'capcursapp', 'coordinaciones'),
(16, 'capcursapp', 'djangoadminlog'),
(17, 'capcursapp', 'djangocontenttype'),
(18, 'capcursapp', 'djangomigrations'),
(19, 'capcursapp', 'djangosession'),
(23, 'capcursapp', 'horapractica'),
(7, 'capcursapp', 'imparegu'),
(25, 'capcursapp', 'imparegubda'),
(21, 'capcursapp', 'login'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-02-10 16:59:50.900823'),
(2, 'auth', '0001_initial', '2023-02-10 17:00:02.873761'),
(3, 'admin', '0001_initial', '2023-02-10 17:00:07.860391'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-02-10 17:00:07.926405'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-02-10 17:00:07.975417'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-02-10 17:00:10.259461'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-02-10 17:00:11.186878'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-02-10 17:00:11.384811'),
(9, 'auth', '0004_alter_user_username_opts', '2023-02-10 17:00:11.456829'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-02-10 17:00:12.087985'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-02-10 17:00:12.121992'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-02-10 17:00:12.181012'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-02-10 17:00:12.340295'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-02-10 17:00:12.483768'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-02-10 17:00:12.658536'),
(16, 'auth', '0011_update_proxy_permissions', '2023-02-10 17:00:12.746708'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-02-10 17:00:13.742532'),
(18, 'sessions', '0001_initial', '2023-02-10 17:00:15.417581'),
(20, 'capcursapp', '0002_delete_academic_delete_authgroup_and_more', '2023-02-20 15:56:14.967660'),
(21, 'capcursapp', '0003_initial', '2023-02-21 16:45:32.276586'),
(22, 'capcursapp', '0004_login', '2023-02-21 16:58:41.512807'),
(23, 'capcursapp', '0005_colaboradores_horapractica', '2023-02-23 18:38:32.450189'),
(48, 'capcursapp', '0001_initial', '2023-03-15 19:38:36.303788'),
(49, 'capcursapp', '0002_rename_jueves_capcurs_jueves_fin_and_more', '2023-03-15 19:38:36.311576'),
(50, 'capcursapp', '0003_alter_capcurs_options', '2023-03-15 19:38:36.313063'),
(51, 'capcursapp', '0004_alter_capcurs_options', '2023-03-15 19:38:36.314251'),
(52, 'capcursapp', '0005_coordinaciones_delete_login', '2023-03-15 19:38:36.315174'),
(53, 'capcursapp', '0006_alter_coordinaciones_table', '2023-03-15 19:38:36.316116'),
(54, 'capcursapp', '0007_rename_nom_curso_capcurs_nombre', '2023-03-15 19:38:36.317340'),
(55, 'capcursapp', '0008_alter_capcurs_id', '2023-03-15 19:38:36.318234'),
(56, 'capcursapp', '0009_alter_capcurs_options', '2023-03-15 19:38:36.319079'),
(57, 'capcursapp', '0010_imparegubda_alter_capcurs_options_and_more', '2023-04-19 18:04:11.607629');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('049v5g6aj570logndduq88ibhvcz4wi5', 'eyJ1c3VhcmlvX2lkIjozfQ:1pwdgs:Uf0Tac48pa68rIenBGOuhwMSpJjdET43uyMqxhy9HxQ', '2023-05-24 06:52:46.365474'),
('05e3dwlqccbbmj46yiydrxius7i6vsvn', 'eyJ1c3VhcmlvX2lkIjozfQ:1pcYMt:rlDv-BEHOp9RjiXBvE9nmxLzujm8J8ScctcrYE0y5o8', '2023-03-29 21:09:07.804925'),
('06hiy0ivo8noxkd7j5v08dudvnrxfcg8', 'eyJ1c3VhcmlvX2lkIjozfQ:1pw8fe:XzmSObQ056BYaitVKwiFXkhcoxUH-grETWZGb1zPNWY', '2023-05-22 21:45:26.536472'),
('0f2q4xqzke4y5015xfckzravtnskes4b', 'eyJ1c3VhcmlvX2lkIjozfQ:1prOs5:vv9jbAJlR0HQXxw-tJ4Q6fr-yAkt4bnJHGKkQ3AhZE0', '2023-05-09 20:02:41.414385'),
('0ljbvrneqs5kk1xrqt2380d8l791joea', 'eyJ1c3VhcmlvX2lkIjozfQ:1ptcv0:7bzSMdd57rGVAiDiDnaa5Q6CHIqnqm-hao_cxmlWEeE', '2023-05-15 23:26:54.521747'),
('0rcrijgstflb259zelvnfs36v6o9nygm', 'eyJ1c3VhcmlvX2lkIjozfQ:1pvWKR:dXa7L-NzFSTmA_Cy4bfoZ4uTP5GgUhgO1li5UYQlurM', '2023-05-21 04:48:59.193543'),
('0x34mfsjb4mjrdceg5s7jm3m8wj068ub', 'eyJ1c3VhcmlvX2lkIjozfQ:1pwT6w:XhFt1AcWz_B4cSvgO7hN5e63MbnZbfRbDYTHT_Sr5hE', '2023-05-23 19:34:58.180138'),
('0xajvxpijh6wfxrthfyqn9zhvyikuf04', 'eyJ1c3VhcmlvX2lkIjozfQ:1pfTgN:aonADSCHz4SJhGaPAOmq18h704KwZUrtTlEWLwJ-1qg', '2023-04-06 22:45:19.901378'),
('10obd0tljlcgll0wb0w602jm7kcg6g4l', 'eyJ1c3VhcmlvX2lkIjo1fQ:1paNdr:aPZ2FT3URpHYWLsUui9UTZCL2nAeXB8flyqKI4gCCiw', '2023-03-23 21:17:39.407612'),
('1eh2t6ps7m2q2xir1w0uw5n66tl67b9a', 'eyJ1c3VhcmlvX2lkIjozfQ:1pxCYL:squQvgDMYOKcmJu2SLmV9Gm3WbzPzeOFkjTm4u4cwtw', '2023-05-25 20:06:17.327213'),
('1ud834zu97u60nxml76sgdj2yjna6gnm', 'eyJ1c3VhcmlvX2lkIjozfQ:1pwwJb:E-jwU4v8AFO5irV_Reyc0i9lsD6_yXndt5Hh2s-opb4', '2023-05-25 02:45:59.228666'),
('1wajtyd7ieg6vi2b5aph1bqnxy6ro7la', 'eyJ1c3VhcmlvX2lkIjozfQ:1pZarA:eN8Q_R8K03SUbgbc0ll-k2g233ZbvfLr3QR3V67sUsk', '2023-03-21 17:12:08.849020'),
('26jrfohz1kozhh4nhmhwmt7cp4tahh7w', 'eyJ1c3VhcmlvX2lkIjozfQ:1pwwr5:Y0_XxpH3NyeaTAUq-pbnCHBedCa1UNFK_Yq_juOgrtU', '2023-05-25 03:20:35.844777'),
('2idrnsgcuuhiotuecsiv4iv9b8kkogxd', 'eyJ1c3VhcmlvX2lkIjoyfQ:1ps6JC:2J2q3b3eyQeOVyT2fgOHXxnan_sgtAyZfa01x9FyR34', '2023-05-11 18:25:34.294811'),
('2mqhjcizhhfs1xkaw13agq5jhmq920io', 'eyJ1c3VhcmlvX2lkIjozfQ:1pwV35:dyHw_jIz0EsqRD4cpyPT0EzWfn74MKciDvkReuVAMV0', '2023-05-23 21:39:07.676635'),
('2mzmr4uiviqg7wxm8390tex07nhzrtn5', 'eyJ1c3VhcmlvX2lkIjozfQ:1prKmT:nAGZcu8fT-WfBBsTA2sP3nRyEBLJhZ1CcggnbfPg2f4', '2023-05-09 15:40:37.582149'),
('2pszgcqqeh7e60sopcdhiuic46wh5q1q', 'eyJ1c3VhcmlvX2lkIjozfQ:1pwzsU:mHRdIr9dKcMBsH-FvM4eO72C19FCSHCXF6YcCx-rEPc', '2023-05-25 06:34:14.865164'),
('2tptkrkzdf1cu3lfmoj4tnsf168yrt05', 'eyJ1c3VhcmlvX2lkIjozfQ:1pwdPe:KIUQEq9ZFB6PHwmUYyOr80Pr-hVOYBhWbjxNN38t12s', '2023-05-24 06:34:58.269311'),
('33e5ozu9b239nruuw5cepvyrr1vzx2i2', 'eyJ1c3VhcmlvX2lkIjozfQ:1pwTX1:zud26rOwqKYLrJGf_KzZOqz_Ku3JxYiaxXrgZkukKtg', '2023-05-23 20:01:55.162718'),
('35ff4pt5e0uevr5gd25ezeyjxfqhmj8x', 'eyJ1c3VhcmlvX2lkIjozfQ:1pn2F0:5AbeFQJQZaTzUZvwT7lLtRhqovCcb0T1EbIqfSirkhk', '2023-04-27 19:04:18.533243'),
('36auid9ke6m7q3qptc4nwnxzn8pbnqld', 'eyJ1c3VhcmlvX2lkIjozfQ:1pw4wu:gus7YGAliVNsz6gRq-oz9nqnCZVeWQkyzk_D36pvP5c', '2023-05-22 17:47:00.216882'),
('3a8axjja9nhnfog38o91jtjofcjw1zqf', 'eyJ1c3VhcmlvX2lkIjozfQ:1px14k:6xvtvLqsCMnpUsj0VMRIk-Y8bSbT_8Cn2GaHTkLxcKg', '2023-05-25 07:50:58.318881'),
('3czy7t99kz3o0tlpmwwc7t26upbfh62j', 'eyJ1c3VhcmlvX2lkIjozfQ:1pf40E:G-HhWnH7lh3HDBRlgI3gTgqARw22vDTO20HUrdxZxTI', '2023-04-05 19:20:06.556322'),
('3hx90nupf7ivdpcjb7nzb89jrte15lw4', 'eyJ1c3VhcmlvX2lkIjozfQ:1pxEQP:WFvKUzI3X1546KZ90Jx1qk6B6qA0fS27-Rh2nB3HShE', '2023-05-25 22:06:13.844063'),
('3l14sfptv1fhap6mn9uo5plizvvnopg7', 'eyJ1c3VhcmlvX2lkIjozfQ:1pxCHt:A42N39-nUi2q0v0eA5FRQ1FX8V1osMdnDVb836F-2Uk', '2023-05-25 19:49:17.494294'),
('3o0m4hn4qm6iua72wncmeplosps0z7zc', 'eyJ1c3VhcmlvX2lkIjozfQ:1ppzNh:Ti1bJXA1ysfPN9KYol1tizp0zGWJpMzMkGvAbwbcsM0', '2023-05-05 22:37:29.818699'),
('4it0aogggmp48rswv861nyqvhxxv8p5x', 'eyJ1c3VhcmlvX2lkIjozfQ:1pvZNf:mcKSoD78vlJxR4E_JbM5p9M798rwDVvHcs2HVTmrMMI', '2023-05-21 08:04:31.802211'),
('4vtr8hcwl205j37xycc9txfgfqwo5uhy', 'eyJ1c3VhcmlvX2lkIjozfQ:1pucDY:0FvZ8DmnAKzNbkaB-Jy65FPBuQZPIS4PaJ7M3vALqRE', '2023-05-18 16:54:08.056407'),
('4xc0i54s3pb2ie8yfuz83i0gml3a81t1', 'eyJ1c3VhcmlvX2lkIjozfQ:1pxUVe:xI9FsCZ_yaa9kU5rWrudvyeejRFlxFdsedIkqpqYV2w', '2023-05-26 15:16:42.565984'),
('53trr6bzoo8g9h18t8hnc1kxgiszoz5l', 'eyJ1c3VhcmlvX2lkIjozfQ:1psANj:VuFXeSxg1yXeN8vDNN2ovgoHD1yHa269jV3dFel6Mxg', '2023-05-11 22:46:31.001435'),
('55rg5fwp65nm9k9vm1m5xw4sd38ml97k', 'eyJ1c3VhcmlvX2lkIjozfQ:1pwTT1:cbiZv6pskf2NIsCkO3xwu_T-U8dlLXw6sC88ZYA2rrE', '2023-05-23 19:57:47.753338'),
('5abj154fweb0n0hdt75x8r5svrpuendu', 'eyJ1c3VhcmlvX2lkIjozfQ:1pvhpv:EObHGc1wFtPLoR_8YJEIBDotxC_6cZ133vJxgdBuNvc', '2023-05-21 17:06:15.682093'),
('5fmd37k3ncdhihzoe5bvkwdg940w96tq', 'eyJ1c3VhcmlvX2lkIjozfQ:1pvqIT:w5CKNA3YEkQnkJHuss4YCPy1JemM3ldcugBym-oy4oQ', '2023-05-22 02:08:17.483011'),
('5syevj21snshmbay6j7bouqafn2b995o', 'eyJ1c3VhcmlvX2lkIjozfQ:1pvnnR:gO31gAEhXMMbktPht2UNeNfNikbMmq0pShPNG3VF5CM', '2023-05-21 23:28:05.552864'),
('64m7k33r0qsqqgzeztvx2usort43l2r9', 'eyJ1c3VhcmlvX2lkIjozfQ:1pw4cx:_VdqejaMOisF7upxSG_01is2g_JE-2axPpYHgM3Bju4', '2023-05-22 17:26:23.138341'),
('67i4qaio592521qisd4hzsrm3i776ktm', 'eyJ1c3VhcmlvX2lkIjozfQ:1pZItU:DRujfTpvnli2gKeoKaE0GPBv22wZKZmjIarKrQUFPhU', '2023-03-20 22:01:20.209310'),
('6imozjuco1b5g7dkavasdru4vtek3fzr', 'eyJ1c3VhcmlvX2lkIjozfQ:1paO7A:iCVaPyY16ejHv_4auPIHN0tQLAE1IyCuUYB7ZJEv3sw', '2023-03-23 21:47:56.010477'),
('6ut5979ci7y71m7irw9mjkrf2y0c2i38', 'eyJ1c3VhcmlvX2lkIjozfQ:1prKKg:Fs75D7PKi5qJ2B6JlXLR4Y_hcwMFF4N7mDmSNLGFSAk', '2023-05-09 15:11:54.875337'),
('730ze00laqd7nerlfkab6crvns6pidwg', 'eyJ1c3VhcmlvX2lkIjozfQ:1pwoWM:Va4ot8F70Ueppjj0ooRO0yS1uPdHPSdxhC83pyPZSLI', '2023-05-24 18:26:38.878706'),
('77kuft3og4o4n4hpjqe7ypa1q6niwrt7', 'eyJ1c3VhcmlvX2lkIjozfQ:1pr3s8:tgoyt-MrIzra-dMwcpBnhP4mbIdxMBf5ZHFrlTwwEU4', '2023-05-08 21:37:20.430132'),
('7azgz8iislmkdq7f7vmy875i3bd08p4e', 'eyJ1c3VhcmlvX2lkIjozfQ:1pZayz:QYUU7vLNcmC4LioOeTxxR9FRqQqzaGVdfv1VZRayBOI', '2023-03-21 17:20:13.863531'),
('7drh4ksj857yiy6jgc7s19awl0j62d0m', 'eyJ1c3VhcmlvX2lkIjozfQ:1plvjz:ChQmjiHHKynWo9hAZqRqUtxQjaCqr-x1DI7AnXJpbNk', '2023-04-24 17:55:43.347385'),
('7ep9u4rwbm6yzsf4bu6jb6tba08vk19s', 'eyJ1c3VhcmlvX2lkIjozfQ:1ppE2k:diW8hI35Bp4nl8xaOdiZ1VEzBms3fYrF2xn8lL7jsWs', '2023-05-03 20:04:42.053100'),
('7it3f5lfgqg07sfmvd4809yypu5p9q84', 'eyJ1c3VhcmlvX2lkIjoxfQ:1pw8tz:KZctyBg58wf5l0TaY4GgwrkZwWLJvCvWMS7vFhv5W3A', '2023-05-22 22:00:15.468471'),
('7oqobj5a5i8nbbmxvt79y1iu4syy99po', 'eyJ1c3VhcmlvX2lkIjozfQ:1pZJnR:9DrT95CvqysY6GFnZG9JJemOdsdSN_2dnrNCyG333_M', '2023-03-20 22:59:09.420632'),
('7qplwg9rspbf7t8bthtz8mejnnzc3212', 'eyJ1c3VhcmlvX2lkIjozfQ:1pef8E:qPGk2LkRMhDbOCswXNFcI1D79ufbRlzTs-Jul_LJ-NY', '2023-04-04 16:46:42.191161'),
('7sfr0dwqbcu350e7xvt8pjjd6b556kpo', 'eyJ1c3VhcmlvX2lkIjozfQ:1pvhMt:iRtI5Qa8wIsL77xPk1H458UdvftEbbkyq8ktgH7KYLc', '2023-05-21 16:36:15.429964'),
('7yu54ns5g1p77dssdz5er7y8xyt7fbp5', 'eyJ1c3VhcmlvX2lkIjozfQ:1px00P:UxoleDeobh17R3zPltbKOsxktHysF6DPLK7crufs_ao', '2023-05-25 06:42:25.615472'),
('8bds5spoj0jusewmj0igilxju2jvj375', 'eyJ1c3VhcmlvX2lkIjozfQ:1psVoH:VSKNZPsQJdnO-nA2zzE6v6TJeSS464K6ncVg0HhRHnQ', '2023-05-12 21:39:21.899068'),
('8bxpmjll2cgylenqof4dj3mzy39dwnd3', 'eyJ1c3VhcmlvX2lkIjozfQ:1pviLe:7hdwHd1Yf2TkLY01B-hKTTO8Xtq3FmC57GpGlZwlzBo', '2023-05-21 17:39:02.056418'),
('8j3nrpau3aa21tlvpvbiih6i3gss2ecm', 'eyJ1c3VhcmlvX2lkIjozfQ:1phu0o:EF8m7IAsECTKIPJ6Uwrm0ZgILCgPRbCWPMaut0E0iwA', '2023-04-13 15:16:26.318045'),
('8o7ygcdkjp52apfy0vzee73n3qp6vbe0', 'eyJ1c3VhcmlvX2lkIjozfQ:1pudNP:7VR8iWHpc0xDvlrgVZwa3wzPJ6Z0ja3M2ENSiza2SmY', '2023-05-18 18:08:23.829311'),
('8wbrbokqm433alk9302x0fd6yz4ofzjk', 'eyJ1c3VhcmlvX2lkIjozfQ:1px0CJ:kC9SuNhy555n0VUCXvfBdXRX-YuUmdlR9i-SSfcst_c', '2023-05-25 06:54:43.270407'),
('90m8maqjv2q9kxxyrqcea1t5en4jmefy', 'eyJ1c3VhcmlvX2lkIjozfQ:1pr41a:FsFt30muVr8t0EiMS1U4CP07aS2Qv2gso962hTbB0TI', '2023-05-08 21:47:06.331420'),
('95v5unpcrknzej60kbk1x2zaxblp3gks', 'eyJ1c3VhcmlvX2lkIjozfQ:1poVPF:2GWvuK-BpEFCUJP_iZzW_GZZykTixRJc5y9jvBIe2K0', '2023-05-01 20:24:57.081618'),
('99lyskixpfozj75wtpmozj8g6mae62xy', 'eyJ1c3VhcmlvX2lkIjozfQ:1pvql0:B-5BAdjRCYli_Ktqt181Emw72y-V6mrtxYNaQpMoCDQ', '2023-05-22 02:37:46.385950'),
('9g43jboefic2e5capqwbt3c5m46surjc', 'eyJ1c3VhcmlvX2lkIjoyfQ:1ppa5r:UpEu2el58jG9GZNOXIxotUuxpHhBbnqoICqYDlGd43M', '2023-05-04 19:37:23.643183'),
('a3tsjpeldvtky1dthv0qf7evoyz2i8r4', 'eyJ1c3VhcmlvX2lkIjozfQ:1pviVv:xRBMQh9RRIyoaaHECrMJLQaODQO9B8E4Lea1FYGNL_s', '2023-05-21 17:49:39.786119'),
('ajvnxj7d4uyzu9ofijul9pwjlgpnumx5', 'eyJ1c3VhcmlvX2lkIjozfQ:1pahs4:Tl-KmUBm5bhCyeXOrsNQYXsXrmjHvE92UaXo-Lflyq8', '2023-03-24 18:53:40.422104'),
('akb2a7sih88hbtsz7lxjbp5y8k1ndz45', 'eyJ1c3VhcmlvX2lkIjozfQ:1pme3L:DPtSFa5Bu53CnrekqN7gJ1w2FyW-hzjJAzTw1MUp5kI', '2023-04-26 17:14:39.232056'),
('b2hool3h2jtdcnea5gymdh87toms4o46', 'eyJ1c3VhcmlvX2lkIjozfQ:1peiXG:q8-UnWctFER1K_wuioTKYO6W9_RKtzIeurNw6XREEk4', '2023-04-04 20:24:46.570642'),
('bgb9b92mi0p57y2m2i48dwhf6iiuhgee', 'eyJ1c3VhcmlvX2lkIjozfQ:1pwooM:_9EAcNqDLCvNdlwVcXj9EE639kFsKvHW_PUGSQRzTKQ', '2023-05-24 18:45:14.493640'),
('bi43j32tia7i7az1md9c51v5r4pmc15m', 'eyJ1c3VhcmlvX2lkIjozfQ:1pvpig:nkuS3bF5iuFY3727X84rZ2ziau_km4tqUjuIUki50YM', '2023-05-22 01:31:18.892957'),
('c0bb5jhqo38gklfuw2emjy7lpsobexxs', 'eyJ1c3VhcmlvX2lkIjozfQ:1pr434:HEkGSJuSraIzSa4MHqmbZoIcOj-CflhGtIOaprmOqok', '2023-05-08 21:48:38.377830'),
('c0d8pzrjt2p90o2zge5xnzx69gw26qoj', 'eyJ1c3VhcmlvX2lkIjozfQ:1pwSKo:fA8C3rurnGF0Ii-y68AN6t7oCC9m0h8H65a8F-A76hA', '2023-05-23 18:45:14.186730'),
('c38gb2eii4w4j7djvujd811kabza51y6', 'eyJ1c3VhcmlvX2lkIjozfQ:1ppy1U:slgTLMIQg8xVtD4EVHkll92NEypQyOoarcSNOlosxAU', '2023-05-05 21:10:28.411142'),
('c5zxbtmysfhveicgi6n3bqun55yfs2hj', 'eyJ1c3VhcmlvX2lkIjozfQ:1prhP4:qUKsu6IBpK2UH2LxqPNetDPBFjtxVvKhiXjKmL-Nndk', '2023-05-10 15:49:58.233404'),
('cbe8hexd9c0xgpza4am3up9cc9tz0q3x', 'eyJ1c3VhcmlvX2lkIjozfQ:1pvV8K:-CDMKNJ9Of3MXWlivkxX8RAUaeaNugS5zCOnclbC4Cg', '2023-05-21 03:32:24.180050'),
('ccef3bepqf1lsdctgqi5b2hqx03z0ccm', 'eyJ1c3VhcmlvX2lkIjozfQ:1pvUk0:x_Q91L8BCHz54yycS9wBmoS-XJ8b5jVpMKCCSCj-U3M', '2023-05-21 03:07:16.681765'),
('cg5u3a8hzi2w6hndxlnrpuj5an4n8up6', 'eyJ1c3VhcmlvX2lkIjozfQ:1pZJZl:k9cPCt2CBojqnIpd7m9agmJ4oFmQerQoOsWdUkn2mzk', '2023-03-20 22:45:01.000890'),
('ckbndzynrecou21lk6layxopst7ccofk', 'eyJ1c3VhcmlvX2lkIjozfQ:1prBeL:YIHqWjNXZO6mPj7ojrJdyIQhmAkD5_PjL3a1_XhYJ3s', '2023-05-09 05:55:37.809734'),
('clml009asfk5vcxv72vteqir12ux955y', '.eJxVjsEOwiAQRP-FsyEs0oV69N5vaJYFbNWUBMrJ-O-2pge9zpt5mZcYqa3T2Gos4xzERWhx-s088SMuOwh3Wm5Zcl7WMnu5V-RBqxxyiM_r0f0TTFSnbW2wO_ekUyLsASwG4BB1ZDIJNaPpPDpjOwRlidA7BtAKXELPqiejNmmrjcqcvzfh_QFAKTx1:1pZ5Mr:QSNkCA662hEWVb8OpmKHNYHgraF3bc02gFB857lTAHc', '2023-03-20 07:34:45.180635'),
('cp604ergiqwxugb9fiyb7785xa9x3wpv', 'eyJ1c3VhcmlvX2lkIjozfQ:1pwrRn:8LvpCwG41D3wYqeLqhIvYJxq-m3oF7xZHRfQ5f1fVy8', '2023-05-24 21:34:07.575898'),
('d3j6ni2fg8tyg6szs9db56llxnll0f98', 'eyJ1c3VhcmlvX2lkIjozfQ:1pqyKv:N1Tmkl55K_KPRnEV-50b_MQ2cA-5hiRVdg5VT41WNV0', '2023-05-08 15:42:41.026771'),
('d4cfjqiftktdyzwi1qysn6qdvc71mhi5', 'eyJ1c3VhcmlvX2lkIjozfQ:1pwsbr:s0P28NWedfltODIK6Vg3tH-R2A9anfClvwBqOvwxv-E', '2023-05-24 22:48:35.862484'),
('d9yr7w4ag41jtxplfdh0jwn0yp7iqg8t', 'eyJ1c3VhcmlvX2lkIjozfQ:1ppAJ3:aQjaDkBvasMqLEwNiR7tg5artAsPLp3gcohYf1YYqjs', '2023-05-03 16:05:17.448536'),
('db2xk87g1bjlk5u5mpsp6gviq8gjqtx4', 'eyJ1c3VhcmlvX2lkIjozfQ:1pZcZM:X184UGpEFpuDugDBOUlz4dMLElwW9wtSCiIZQ3c3mw4', '2023-03-21 19:01:52.243020'),
('dbmcutkbez9eibq874s7x394cxealr42', 'eyJ1c3VhcmlvX2lkIjozfQ:1pcZ4o:G4RSrJRvYCcr9pSv0BsuxuRMYf7jG2Sc7a1WLUmRgr0', '2023-03-29 21:54:30.168839'),
('dccmwfdaflj11cf14bv6s9z0l4bws2fw', 'eyJ1c3VhcmlvX2lkIjoyfQ:1ptfIT:K99V1mE6nbHmjn3DYCnuDPFkbXsci6IFvB_EfFv6wrM', '2023-05-16 01:59:17.736891'),
('dlty5kecoj7rh0vu012tbwxemtwlv8e5', 'eyJ1c3VhcmlvX2lkIjozfQ:1pwlxL:pUdwNVg9Br08K6cJawvgtFavTrzUfjXGyj_-iXDgh-w', '2023-05-24 15:42:19.050384'),
('dqiakv188d0dqo7he1d9uvt9flduuioe', 'eyJ1c3VhcmlvX2lkIjozfQ:1pr3AV:4LmRylMf4Td2uUYSUouw3LKgxQBIGYiI00fXEXBFvks', '2023-05-08 20:52:15.135599'),
('dr0bym4eqqd7r10cz5la4qo9r22ublu7', 'eyJ1c3VhcmlvX2lkIjozfQ:1pr1SU:EP5ocppd2R8R3ZVMvKVNGE5-dOjH4o66X7nzaCpeycc', '2023-05-08 19:02:42.791767'),
('drx3nolt08iqlupo8x09juidqc6i69ng', 'eyJ1c3VhcmlvX2lkIjozfQ:1pcXT3:lzAhPI3wi7h025AU1Ut4VlHsAOH-t-Riy6u4mKnSNBU', '2023-03-29 20:11:25.063908'),
('e1ran6jbgjp0y6lasrv8xx6f0y64zg2r', 'eyJ1c3VhcmlvX2lkIjozfQ:1pwS7W:3KS2rPYsbnblQ9oKTRmty9VtVehqS8rIt00b-x0Jm7Y', '2023-05-23 18:31:30.960776'),
('e3cnixkv7pi1gqls8t00djuzffgzvai7', 'eyJ1c3VhcmlvX2lkIjozfQ:1pw7dF:lNInT8M2vwANt9eYEt6a_5A50C-YD6q3Egr5ZfD0Wy8', '2023-05-22 20:38:53.071901'),
('e949peojzszl791b48tythyek2zvzqp7', 'eyJ1c3VhcmlvX2lkIjozfQ:1pw86n:wfaszO6c54tJYA9RD-gHXeMmL2QMfSEP7EwU8TVq5kI', '2023-05-22 21:09:25.874836'),
('ehjhlhhx711ztjoghgs52oscg390npqz', 'eyJ1c3VhcmlvX2lkIjozfQ:1ptdNy:vNxuqU2TkFcmc3hx9l1uvApJeKjaIjCzdP3NbB66C2c', '2023-05-15 23:56:50.214374'),
('ej15dvpamth2wp3g5h8e9tf1nw5hzr33', 'eyJ1c3VhcmlvX2lkIjozfQ:1pw8Sl:ByobGkgymLDXD6lKwDElrx_QXOo0TQhGAjZ_FCvvTXQ', '2023-05-22 21:32:07.609206'),
('etw1bh3bwic6du5kmbn5lsz07nenqkhn', 'eyJ1c3VhcmlvX2lkIjozfQ:1prjtF:XEIps-FhvbZbuA9cbBDHefmNtMkbgIeCsOmlqEj__cI', '2023-05-10 18:29:17.253698'),
('f4ogtya3lw43pb1japvqbw4nxbg5b3o1', 'eyJ1c3VhcmlvX2lkIjozfQ:1pwsOu:BdPeqVYH5GAydovZI4h2HkX6NUUf2Nhn1WR291m_tgk', '2023-05-24 22:35:12.900636'),
('f7sh357rr7kle0zd28sabvekntef2wqa', 'eyJ1c3VhcmlvX2lkIjozfQ:1prP7J:g1ImMBTF7mGmE6tKQf0hXidJPXmCxAZ0tPDEiV065zc', '2023-05-09 20:18:25.282825'),
('f83i59mt4wsb0cky2hybiqhvvudgjjs0', 'eyJ1c3VhcmlvX2lkIjozfQ:1pvnqA:oyAnhDKZjM1WmiLrVHU1yf7YDGtC-sc1muyHlq1ncuM', '2023-05-21 23:30:54.287716'),
('fbxv854nw63pesd0amert3yr2q26aq6s', 'eyJ1c3VhcmlvX2lkIjozfQ:1poVOi:-FRH_-nBroVveMt8PpW3_pt06IUELkDzi1DSfiFXsZ4', '2023-05-01 20:24:24.794962'),
('fe9oiof345u03vxdzzrvopdrudgmyki4', 'eyJ1c3VhcmlvX2lkIjozfQ:1pwUMa:sgnjLJcmICR9ElYDDFbScWjBmTBRhUQYxvzukyHZxf4', '2023-05-23 20:55:12.873169'),
('gv8ix7kd8ujnm813c6lq1vhm3ohveeff', 'eyJ1c3VhcmlvX2lkIjozfQ:1phvZT:UIZmSRAbxamSV_4OZ8kZrhIkeXOJsthXnvUWOIgxA0g', '2023-04-13 16:56:19.817596'),
('h49qn9dqu743fcaksbars9kjzbo7tkpo', 'eyJ1c3VhcmlvX2lkIjoxfQ:1pwxKV:owLmbKoYBIgZFgQ7rwfnk5w5XtFS63EgPENaSXv6kPk', '2023-05-25 03:50:59.076594'),
('hgt08lzku44zochcktct5hur2vvtnnwo', 'eyJ1c3VhcmlvX2lkIjozfQ:1prRPC:fXSBUdQHw-ehgBz2GT2tGFYYay7ZZJcWohbYCCuX4po', '2023-05-09 22:45:02.377152'),
('hhcw58vgbe667wpte39fajcq40fxdgz5', 'eyJ1c3VhcmlvX2lkIjozfQ:1pw4g3:pZmg6ar2gi5BV789QkbfaS_0ptyH9YoAsFl3WO3pjHs', '2023-05-22 17:29:35.450975'),
('hk7avbpyksd7d0i07l03qfxxhgianciv', 'e30:1pY7Wt:QWypvgVvnu_eA1FKvnkWPTUU71gFEuviyGxD-a15Vzg', '2023-03-17 15:41:07.230534'),
('hoe2ht0zyma9o60nfsywz77m8baanccs', 'eyJ1c3VhcmlvX2lkIjozfQ:1pbksM:lS52zN_z0oFsPRhePt2diN4EP60HBwP4n9D4ZnF0SV4', '2023-03-27 16:18:18.108140'),
('hqpe18yde4a4io7yt2nkh1113nhqwhxf', 'eyJ1c3VhcmlvX2lkIjozfQ:1pwQAN:kuc_vmVnXnrIh1opbve2v5L5A9fUF95xy7rOd2VSaE4', '2023-05-23 16:26:19.232890'),
('hrr0b6unb46pswzcvyasp1xhbpj5tpwa', 'eyJ1c3VhcmlvX2lkIjozfQ:1pviZN:k-AkXohhTasGGTxlphZJ9UWiyeeSx1YJkGZu-rwawvY', '2023-05-21 17:53:13.033613'),
('iq6satb3sko8jnsqwqs59bv5n3oqdrvr', 'eyJ1c3VhcmlvX2lkIjoyfQ:1pf7Rd:LJe8kGu2FxFKSfzw988Y13oOwYAeTzNtaUqxJbRtNY0', '2023-04-05 23:00:37.461497'),
('isgqsts8eg4t53bg7vaxjsz1l1wai0ll', 'eyJ1c3VhcmlvX2lkIjozfQ:1prmhT:7slxnJ_evlbNRKZhysuDSLB3EQN0vAhpfyCE2Z_lnn8', '2023-05-10 21:29:19.115110'),
('itl77r99n81ptk37yebmy0k2o6ubcmkn', 'eyJ1c3VhcmlvX2lkIjozfQ:1pxAKt:gztdoOz03MArpaIs87GTsdI322kDuI00fXOIDcXvqgc', '2023-05-25 17:44:15.467908'),
('je90ucpytcqtzoysbxa1gw6vd5idtocg', 'eyJ1c3VhcmlvX2lkIjoyfQ:1psWUI:c4ZDksq0-x-LCIuo4hLEWPiuqusIKKsUAgoM1wjBTG0', '2023-05-12 22:22:46.283827'),
('k0se27qo95eyvfkd10r2ebqa5csjxee9', 'eyJ1c3VhcmlvX2lkIjozfQ:1puHev:fWNSAocURTsfbSIsj27sBpCIYZaIpglrKzKJWxe_v84', '2023-05-17 18:57:01.166244'),
('k6o47x894v2p5ewrgsx6zoucnkjhjnot', 'eyJ1c3VhcmlvX2lkIjozfQ:1pvpHO:Og_6QZbzZEu8VDlR09Usaodz-Jo1Jg98nF4L1HyAIoo', '2023-05-22 01:03:06.770159'),
('k6pm85qu4odw46dmowi1fvyrg36b28hq', 'eyJ1c3VhcmlvX2lkIjozfQ:1pviX1:n4hyYfMxDogZKrVwACo0-d5Tmu19YSs-3ZetIZdmzUg', '2023-05-21 17:50:47.138294'),
('k6vtn71hlihmr0cs362lps3fvnb0rr5n', 'eyJ1c3VhcmlvX2lkIjozfQ:1pw4xm:tF-PDJf1JMfxA7gzzvTzI8C_CXK-STdf04X8wwf0eMY', '2023-05-22 17:47:54.390264'),
('karg5lhmfdu1oycuqi1njxhgc1bdsn86', 'eyJ1c3VhcmlvX2lkIjozfQ:1ppxc9:cZJhiwiFtBBt7_cEysa4UG0_qBTA1eMCCWPf19uU1Hs', '2023-05-05 20:44:17.106343'),
('kb9c0p8sf7gbcwzz88ijewmva3e3njsc', 'eyJ1c3VhcmlvX2lkIjozfQ:1pltb7:uFT3I1EUqUuXi-9cx-1QniC73bhi1K7dGUTlIRhExuY', '2023-04-24 15:38:25.939643'),
('ke34n2o9m8emwefz5cewf2olszghtte3', 'eyJ1c3VhcmlvX2lkIjozfQ:1px0Tm:2Vjir2aHBTGvQ_1bM6kFPK7DkAn2hf9_EymsZoeOD40', '2023-05-25 07:12:46.714507'),
('kht1s0sonnwmoy861zipa05u7xbad8nq', 'eyJ1c3VhcmlvX2lkIjozfQ:1pteHY:Hw2vxuc9TqazwSgE6AJ7y9eYRBqFycQA_yL-XDDGd_4', '2023-05-16 00:54:16.698477'),
('knfjdtiinfmm64ufh7luze6v11tqismn', 'eyJ1c3VhcmlvX2lkIjozfQ:1pvYij:58KuyDxsKPh0AH3QTc5F7Ht4W2dc92wqBQRuV5k0wMc', '2023-05-21 07:22:13.689336'),
('kqfa91r2bkgglruvn0axru9zvnpiozqk', 'eyJ1c3VhcmlvX2lkIjozfQ:1pwTk3:rur4TEqGqZBuwlZlorOQqByQ6E1pFiI5DbaIse43qis', '2023-05-23 20:15:23.831431'),
('kymmna45azd2wguq46d06vk2p6k7fj82', 'eyJ1c3VhcmlvX2lkIjozfQ:1ppWzx:B5kSYHWOQqOFaaqPU8ZITP1N-pwRNy0fm__UX_zGOpQ', '2023-05-04 16:19:05.272345'),
('ldvh1pqqtc7v4vp6qp130tv3f9jx2a7m', 'eyJ1c3VhcmlvX2lkIjozfQ:1paOmB:SnQdWmjereATQ6EXzIEDU_MMM8ziDR0Jh18b2_z9nKU', '2023-03-23 22:30:19.374114'),
('lnp7o2ematxtfnxvz95q4tk88wb2nwuo', 'eyJ1c3VhcmlvX2lkIjozfQ:1pudKK:HUx1TrX77TUAtMkyI0to8GKJaMiRhI8gJOQLwEJckFM', '2023-05-18 18:05:12.264409'),
('lps0rr9veyobcl80jtyj9girkv3laq1f', 'eyJ1c3VhcmlvX2lkIjozfQ:1pw4b0:Ufk6vkjUD-A09ewHAH8u7Qybd0FLo7CBw471TapmaNM', '2023-05-22 17:24:22.651469'),
('m2409u460gowkq3en1hmit1ky5ddi8j1', 'eyJ1c3VhcmlvX2lkIjozfQ:1pwTAz:X1beMhjl3Fa8P8HhEkj-ctgyOgjseyGkGY07bFmNxEc', '2023-05-23 19:39:09.054851'),
('m4yubh6dbdcdgiczcq2cck99xngvofnw', 'eyJ1c3VhcmlvX2lkIjozfQ:1pZHRP:XyQeBx0gqRsg6aHj-Q88soXz5YIpbI4qLGhz8zkS6JI', '2023-03-20 20:28:15.563402'),
('m6v5gvjimr7tnjlo6amjngw7yh37seuf', 'eyJ1c3VhcmlvX2lkIjozfQ:1ptdx6:FXVEDI_s5xyFmKfGJ7pMw8OzPchOeGpL4zx_0dXj_dU', '2023-05-16 00:33:08.140146'),
('mehet5cc8mf9b2pbta7b5yu0b4bu3747', 'eyJ1c3VhcmlvX2lkIjozfQ:1pwvzW:8-Rr91z1ok-YaHT6t2SkC4tN18iVkmLJibEcsRCWEdQ', '2023-05-25 02:25:14.204629'),
('mf7f1ftwyum2aq751t83y39346csrqjy', 'eyJ1c3VhcmlvX2lkIjozfQ:1pw8fJ:X4si3mgfmB18uEPXEjmFdA4EJu-8nLsFW2KUadaz_ps', '2023-05-22 21:45:05.961269'),
('mq9yueki1uoh2z7c5twr7man0euzre8d', 'eyJ1c3VhcmlvX2lkIjozfQ:1ppbTg:v3P3QpXtJkfXnHkMabPRUMLuoa5x6ghIOSxd57iHi2E', '2023-05-04 21:06:04.744017'),
('mwmj5omva1atltthkhi0055iul0a2i9x', 'eyJ1c3VhcmlvX2lkIjozfQ:1pxBL6:9QczZoDpGKxGar9sed3w9cxZVdo0Xqdx_XXCQRl1F5Q', '2023-05-25 18:48:32.080560'),
('n0gyvrvmu65uj03bl0hhwccv0l132g43', 'eyJ1c3VhcmlvX2lkIjozfQ:1pwwQZ:XcqCqn-hjZIwB7X5ZSGsbNBAo6S5q9tgucW6XT2RCNM', '2023-05-25 02:53:11.149075'),
('n3jzyxhf82g4hw2ra2s54l1zg24fy3cj', 'eyJ1c3VhcmlvX2lkIjozfQ:1pZI2Y:c5wXMSx-AgZ7Et9y8KvFAwd7aXyuf0lF01DfZ-ZeNp8', '2023-03-20 21:06:38.854989'),
('n8n4j07lhq5acxxk9itijwkdlfod16xt', 'eyJ1c3VhcmlvX2lkIjozfQ:1px8xy:nFI2JVPvcofIREHj27_8IdpYwxtL_Lg8tDWggOpLuOw', '2023-05-25 16:16:30.071769'),
('ncj50nw48t5htriopcgjwuikizf1ak16', 'eyJ1c3VhcmlvX2lkIjozfQ:1pf20w:33LRAqocOslINzcq59v3xwshx9o52I9Ne2cj8U0EOKY', '2023-04-05 17:12:42.898572'),
('nuerj2u3pwtwpqir9i37sgi8ho81lm2z', 'eyJ1c3VhcmlvX2lkIjozfQ:1px0VR:XOvUu6J6CYtlEh7TLEKt4Q_cza_SfgDf30NuCGX5EIc', '2023-05-25 07:14:29.140702'),
('nzdpto89vka9e03r20t7dvr8ymmv7otg', 'eyJ1c3VhcmlvX2lkIjoxfQ:1pZdT4:5qlY0vlYol55ydJqUAC7JDhQF3NDWs92lmGHFJCMWqM', '2023-03-21 19:59:26.066966'),
('oiotmrk9f5gzpclnvz6pywiswmh85r90', 'eyJ1c3VhcmlvX2lkIjozfQ:1px0oi:ihwf1fu7NPrib5p_8A6hNuXGeoIh_o_20_r6hMAl2g4', '2023-05-25 07:34:24.080164'),
('op6k837o18gapvhenvrfq0dz3y4lhse5', 'eyJ1c3VhcmlvX2lkIjozfQ:1pwPdb:h8xXufubb17l00ERrXaRzAGDoHZB4HuVgsag5tbV_IM', '2023-05-23 15:52:27.056639'),
('oti0u7psor165gheibugjtekyt9saiwl', 'eyJ1c3VhcmlvX2lkIjoyfQ:1ptxvh:hQBz9Ks7hG_zJKpdLi81hyCnHdzD3bgt1YPHUuqpBdY', '2023-05-16 21:53:01.070659'),
('owql4k02tj1j5jqm7q0b1ht385pmfvhm', 'eyJ1c3VhcmlvX2lkIjozfQ:1prlvh:vM68uYzRpfSe91WbsO6u4G2CA0hABRo_PnRo4CIS9tI', '2023-05-10 20:39:57.706354'),
('phnhew8gfoevyh64nvdba3qu774k0hec', 'eyJ1c3VhcmlvX2lkIjozfQ:1ppxuE:2Ry26CdNwQexcIBhDnw6t7WZWRHNMw5c6Ovp0P8UZNM', '2023-05-05 21:02:58.863017'),
('piq3r88gddupuc22yqq91agx62s4keww', '.eJxVjDsOwjAQBe_iGlm7zi62Kek5g-XPBgeQI8VJhbg7ipQC2jcz761C3NYati5LmIq6KFSn3y3F_JS2g_KI7T7rPLd1mZLeFX3Qrm9zkdf1cP8Oaux1rzMbhkwITsRbOIOFNDgc2BQwThCFvUXrMFIyI_mR84hAxIkJLKnPF660NkM:1pQY26:XzdL-NV0pU_q24n9SoS10coMM-K70HF0v8uQRtD8TbU', '2023-02-24 18:22:02.248523'),
('q70rp343lcfamg2yf5gm91fafbivg2t0', 'eyJ1c3VhcmlvX2lkIjozfQ:1px8ja:BPXifojhowOmVYNXtnRaKl9XH7XfKjpX84y1hwPDkqc', '2023-05-25 16:01:38.789725'),
('qpn4o5l1yllftidcdvpfr3becrbfsuj1', 'eyJ1c3VhcmlvX2lkIjozfQ:1pZGcb:1zHe1V9Yd2Y0ahkqHwc176XWdHx247K7dv2Es5lYSsM', '2023-03-20 19:35:45.598062'),
('qr4xtrjk7ivsfhmnxmjbpmjflsjhx90t', 'eyJ1c3VhcmlvX2lkIjozfQ:1peeHY:6Q8T6WEWd-mzK1Hw0gURRgDlxj3TbcP57MwheifoedU', '2023-04-04 15:52:16.936850'),
('r9pswkuqpv2jplhyfetpv3fvtmfiybqc', 'eyJ1c3VhcmlvX2lkIjozfQ:1popt0:b-xPYTgED47CnVGCAon0F3F1w13AUuE2gtCMhDA79z4', '2023-05-02 18:17:02.896011'),
('rfui5493fycmin5gs89eq9t7wzltfot0', 'eyJ1c3VhcmlvX2lkIjozfQ:1pva4u:wNVulYcs0Di6Kk8_pxQV9fTxpscqs9MqTRdLdR-dXWs', '2023-05-21 08:49:12.443987'),
('rp95tav9uzyd6q2vcj3dqs7rvd63kn0e', 'eyJ1c3VhcmlvX2lkIjozfQ:1ppF4r:_Y9tQdqQArWekc_ejDkiGsW4OXCo7XDfpfhQWIY6qLA', '2023-05-03 21:10:57.278865'),
('rqt4dkbzi5onufry0kptcxgsb8etn7on', 'eyJ1c3VhcmlvX2lkIjoxfQ:1pr559:iHIWlTqNWNhC0o9Kx6wJlEDOJEk_YRmHK6FRTY5j6yU', '2023-05-08 22:54:51.799719'),
('rscxiyevjcaxh3mpsf3ie4d65o14ta9r', 'eyJ1c3VhcmlvX2lkIjozfQ:1pZflR:xJ4PZT1V2J4SYR6bvC8qCAfvBX353uC-6axhThlRwas', '2023-03-21 22:26:33.304912'),
('rsvxfvoh37dsfsdniaf5alx6582bwlr6', 'eyJ1c3VhcmlvX2lkIjozfQ:1pcAyE:gRBejdgrg0I_5uGVpMK-X5HEoN8upsJnCcuE_Uwowbo', '2023-03-28 20:10:06.979380'),
('rweb3q4731bwpid8dxvpc048ofneg1y2', 'eyJ1c3VhcmlvX2lkIjozfQ:1pw7MV:NJcLAXKfKpsUr8uVDBow1Vy9DAJW_KwJeev8DksupIk', '2023-05-22 20:21:35.325052'),
('s93as4trd6zi8tbqp19dfcr9yp32hk82', 'eyJ1c3VhcmlvX2lkIjozfQ:1pr55j:qaQsfWbfhpgkSRWj1I90JhBuPxBT9oDEYfpKK2qfqpI', '2023-05-08 22:55:27.723382'),
('sg8lahgbhslawvp4iecflc4pvar6ec3y', 'e30:1pY7Zw:uczIvzsCqPV_BhBxH7Dd_vxT7huSX2aYWBeUzNa3BVY', '2023-03-17 15:44:16.308141'),
('so62ui4kys29jco0q81ig4ep07chzvls', 'eyJ1c3VhcmlvX2lkIjozfQ:1pZIKb:Nx1Wi8h-92gtRi-N2ceAqwH00FTGG34EXuDyJ-ZVaa0', '2023-03-20 21:25:17.440972'),
('sup6y6vcba2bcrvm6ibu7y91cg3ebgbq', 'eyJ1c3VhcmlvX2lkIjozfQ:1paOlW:FVfShAHHTwQKb7zx97pY1pr1xiPHPD9KBfTsqU0KgfE', '2023-03-23 22:29:38.820879'),
('t0uqx6zxs03klhge8sramjho8xh83k92', 'eyJ1c3VhcmlvX2lkIjozfQ:1plvrf:OX_IFweEmWGqn6N0_RWuzxdW7z5qe-_WyDdsjhqwbqU', '2023-04-24 18:03:39.247463'),
('tathvs23uzzc2eb1adz1viyb64vfq2t2', 'eyJ1c3VhcmlvX2lkIjozfQ:1px8eK:nSV1ZXXIKAZX6XF5VFJTNR08Y06JBcXyU8cf9Reczu0', '2023-05-25 15:56:12.704459'),
('tgh2q7ilobruevoh4doz0eo2bginriw8', 'eyJ1c3VhcmlvX2lkIjozfQ:1pcphe:qPCZn3Dmrc-W1-lgnlPjbhQGdbnb57MkpH0Ce-kQ6gM', '2023-03-30 15:39:42.478586'),
('tjlwwvta0vh0qp91jwtqz9ka3ylikc5f', 'eyJ1c3VhcmlvX2lkIjozfQ:1pvp6m:UdViHUSRBGjhqV0BElqKqSLAMCbMuqcPIQ-8wPLBdp0', '2023-05-22 00:52:08.092621'),
('to7n6v3kvdq859rc25zpfa54tcljblwz', 'eyJ1c3VhcmlvX2lkIjozfQ:1pwPWr:oPAjHUvNb2GBZXs6NOEYdbFroII1TBTdsnI-VWkJlpk', '2023-05-23 15:45:29.014374'),
('tsoxnuzuhu401qmw70m9hqwtwhv14a5k', 'eyJ1c3VhcmlvX2lkIjoxfQ:1pn0sd:1I2AUrGx6qFFiXv29bOqTKhBoa68wz6eHHbnfML4Fnc', '2023-04-27 17:37:07.727233'),
('tximiecepnlwya6byhlicp4ql33ps21q', 'eyJ1c3VhcmlvX2lkIjozfQ:1ppAAI:MqnEN5bh8o5NtCabhYdb5EN3KySj-Luer1Vw3R8wDZM', '2023-05-03 15:56:14.175074'),
('u0u2dvyz2wneo1yqa722rrr8h2rjvln8', '.eJyrViotLk0sysxXsqpWykxRsjLWAYqkFuUl5qYqWSklpuRmFmfm5-kl5yc6JOfnFOQX6-VWKOkoJZelxgM56UWJQD1KAcGunkDBvPzc-IKifKBgLlDQOabUwCDF2DcgNMRfwTHAx9PZ0cVfqVYHZmM82LpaAERhKyQ:1pZ5MM:i85p8ZhThdp1S4cfzI4xxf2dhgIpe--kgcMHINPwFXA', '2023-03-20 07:34:14.640673'),
('u9149psdar6rag3keuvg47ea7xe8k581', 'eyJ1c3VhcmlvX2lkIjozfQ:1prM9I:eNY-q7fVec57PjHlcQQHEbVSPD91IpgsSzdl2QiaG3Y', '2023-05-09 17:08:16.757971'),
('uhj1123u0rfaial3tz9cghaqbzqhmb5a', 'eyJ1c3VhcmlvX2lkIjozfQ:1pwlYt:-0rh07GcOSESDhziRAxQkknIHv69LwIlZhmw-A9QzsI', '2023-05-24 15:17:03.667527'),
('uk7gqqm0nvsrs60vubu1wnfix9rmo2ya', 'eyJ1c3VhcmlvX2lkIjozfQ:1ppxbD:qy7nzW9BqfbXvRe32xHgHTHroJtjh4z94_2uCGb5TaQ', '2023-05-05 20:43:19.842052'),
('ummqat0i9xw3xki5k0wlw1yjj7thruxo', 'eyJ1c3VhcmlvX2lkIjozfQ:1pw8Qd:jeyK59UdZwY6azYxo_V3srAMIS5_-2Dv99HWGgSMeis', '2023-05-22 21:29:55.202872'),
('unot326b757hagx3yr9xzgem5br9lhy7', 'eyJ1c3VhcmlvX2lkIjozfQ:1prkBl:hvQeN_hfuPfib2bzd_3jIRctf0TE-XKgj-VJtmoEzlA', '2023-05-10 18:48:25.517766'),
('v7z59rnqfng53ewjb9mgkjajxk9wsl0d', 'eyJ1c3VhcmlvX2lkIjozfQ:1prCWl:iDEcyfWMOL8DHxYIaZBASgybc6TPSK2LYuluEY0HH-A', '2023-05-09 06:51:51.809707'),
('vfgjjg92coapjp8hxsf5ibrxmbn3nba8', 'eyJ1c3VhcmlvX2lkIjozfQ:1prADB:n5a6J6WbPOu1l-zZGs7dDFkx9WgrYYnasX4d0EAs9fY', '2023-05-09 04:23:29.113072'),
('vqtwgufmg7yk0ctnhoxgieq028sbpn04', 'eyJ1c3VhcmlvX2lkIjozfQ:1ppyOI:UdLH25YdNu6Wd2ek4U3Z3V_ABff6T4N5nfwRFvpXKDc', '2023-05-05 21:34:02.704106'),
('vqyznrs8emmfgptxuegij600qv0nizgy', 'eyJ1c3VhcmlvX2lkIjozfQ:1pr3P2:u0McgnAyVk99ktF9oaquMhqqbOCmWRiC1fNAjPvpDvc', '2023-05-08 21:07:16.477795'),
('vxh5vml1hgz8rp72nuj6yslygk7rdx33', 'eyJ1c3VhcmlvX2lkIjozfQ:1px8Pu:Haat62g0vm7rqXk0B5g-8CCtHz60Tzt9pWzw2hBk5Cs', '2023-05-25 15:41:18.516886'),
('w4x8gety3e5n30gsvol1kxpgybusqevw', 'eyJ1c3VhcmlvX2lkIjozfQ:1pttad:pfsTK0BEvcdwYn-_3LIHxe2SMhcUaUpPODVk5ew1thI', '2023-05-16 17:14:59.927015'),
('w6qgkfpr61uypeqy1y6v17b6956qeg7u', 'eyJ1c3VhcmlvX2lkIjozfQ:1pw5M5:Xis6ZogjrdFPjpLVuJpBKsOerVMvu4xDiFx_ZUL2a_A', '2023-05-22 18:13:01.524985'),
('wlwoejsyftp9e0tosd1yec6ix5mxsj8w', 'eyJ1c3VhcmlvX2lkIjozfQ:1prjXY:1mEQn5PS2JDdy5QyjGU2KNhxOpFozvzqtCy8sc0t3Ms', '2023-05-10 18:06:52.667029'),
('wqdhs57jrh8jod69mxsh5f5va1vw9sd9', 'eyJ1c3VhcmlvX2lkIjozfQ:1pwUJV:kJlYwc6R5Es8I0XoHlsBTxEJwuuwOEsSGEARRu3Z9aw', '2023-05-23 20:52:01.130140'),
('x8clln9zs9uw0ldcqcb2f7qgq66lepsv', 'eyJ1c3VhcmlvX2lkIjozfQ:1palOC:Jus5Zatb3BxArvGyJTO0MYfhka6NhAPGWv-WIq4NG9g', '2023-03-24 22:39:04.325900'),
('x8ercel21tj9loq9blij1wvcr0e00an9', 'eyJ1c3VhcmlvX2lkIjozfQ:1pw7uq:9KzJuDH-I9OUN96F95E3XnaC5TB2gRmKHuCs4jyKclk', '2023-05-22 20:57:04.896514'),
('xphdztogkyhas4zu1fv3buzgqz386i17', 'eyJ1c3VhcmlvX2lkIjozfQ:1ppxZa:xMQPYlB2oA-rBL37L1qtfD1iVNyS_aUtDS9jaAhVAd0', '2023-05-05 20:41:38.513722'),
('xzznn3gpzg7nkdcbbh22r3ijelv9gbm9', 'eyJ1c3VhcmlvX2lkIjozfQ:1pZJrW:E4naeffup8nMRhaigMedBoVz5q4cJ9CJxAaXcXcEEYs', '2023-03-20 23:03:22.915927'),
('y3n11wf8zectrk83kocc9yyuf42hvj0a', 'eyJ1c3VhcmlvX2lkIjozfQ:1pZatc:Tzx7KbYXDr_rsIXp0GsKBOa0frOiLNz4ZnBZtlhvh4E', '2023-03-21 17:14:40.764820'),
('yke3osuyfkn5g0xfh9g3uame4qxlfpcw', 'eyJ1c3VhcmlvX2lkIjozfQ:1pwW9f:WMGpQqY5dIw_uHQBkt7DHy6qlO6EIZSMUi9ReVNeSH8', '2023-05-23 22:49:59.176178'),
('ykixsj1e2yiujlirozwkfgwu6x1oekka', 'eyJ1c3VhcmlvX2lkIjozfQ:1psWuc:Y-8LhFGwU34W9OnmWyLp6-hcHhNVvnskqnUr6CMNnII', '2023-05-12 22:49:58.482232'),
('ymdc0tqh3nvrwcs7k4wn3ukltb3gu51f', 'eyJ1c3VhcmlvX2lkIjozfQ:1px0Ej:C_wHfL-p85zBm0IFUSsa6g3ObGzCNxq1Fv7PotrRMHA', '2023-05-25 06:57:13.276351'),
('yskvggscg0iyqsho9ua19399zgh1x4ql', 'eyJ1c3VhcmlvX2lkIjozfQ:1ps4a1:YjauMeGsR1zj5bBhv0qfTTC1eHz9dO7lowLxMORAxaw', '2023-05-11 16:34:49.205258'),
('ytqnvkm1mlm9fzmhqiqkuc7kg82it7zf', 'eyJ1c3VhcmlvX2lkIjozfQ:1ptfQg:wsZTzd6vX6H-R8-kjDtDgqS_H31oRBkDXtBV2S0ZNRU', '2023-05-16 02:07:46.904257'),
('z7b4z7n6tej1klhqdbsd0t0wfq5q63t2', 'eyJ1c3VhcmlvX2lkIjoxfQ:1prkdQ:IWWfNehHEo1yuwwu7uGDxrShAVfmboZtKFpx5uZb0Qg', '2023-05-10 19:17:00.962497'),
('zp2jwngpfmkkkaxryqs8v5auvh1f9ij2', 'e30:1pY7WX:gWCOiwTylMYalEqyY90I5FoTfExBiVkPkjB1YenRwnY', '2023-03-17 15:40:45.012303'),
('ztxdvcpmu9abpeugwe5a550eeprno9ku', 'eyJ1c3VhcmlvX2lkIjozfQ:1pudNw:jzte2jLLxMgYr4q3JDKEW7Q89dyBDRYaz3y9388IYKc', '2023-05-18 18:08:56.344590'),
('zun776ael0fp6wa1uj7t10a33rabuo56', 'eyJ1c3VhcmlvX2lkIjozfQ:1pr2m9:sxNS5LY9_mzebcEIyqCFa26X8-j8EatumlPkkytLPHo', '2023-05-08 20:27:05.961975');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imparegu`
--

CREATE TABLE `imparegu` (
  `id_auto` int(11) NOT NULL,
  `num_emplea` bigint(20) DEFAULT NULL,
  `cve_academic` varchar(6) NOT NULL DEFAULT '',
  `cve_curso` varchar(6) NOT NULL DEFAULT '',
  `gpo_670` char(2) NOT NULL DEFAULT '',
  `periodo` varchar(9) NOT NULL DEFAULT '',
  `agno` int(4) NOT NULL DEFAULT 0,
  `participa` varchar(11) NOT NULL DEFAULT '',
  `registro` date NOT NULL DEFAULT '1753-01-01',
  `per_vi_cur` varchar(9) NOT NULL DEFAULT '',
  `ano_vi_cur` int(4) NOT NULL DEFAULT 0,
  `dis_cre` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Cursos impartidos por los profesores';

--
-- Volcado de datos para la tabla `imparegu`
--

INSERT INTO `imparegu` (`id_auto`, `num_emplea`, `cve_academic`, `cve_curso`, `gpo_670`, `periodo`, `agno`, `participa`, `registro`, `per_vi_cur`, `ano_vi_cur`, `dis_cre`) VALUES
(411, 0, 'X00581', 'COA501', '', 'Primavera', 2023, 'Titular', '1753-01-01', 'PRIMAVERA', 2012, 0),
(414, 0, 'A01065', 'COA637', '', 'Primavera', 2023, 'Colaborador', '1753-01-01', 'PRIMAVERA', 2012, 0),
(415, 0, 'A01083', 'COA637', '', 'Primavera', 2023, 'Colaborador', '1753-01-01', 'PRIMAVERA', 2012, 0),
(416, 0, 'A01455', 'COA637', '', 'Primavera', 2023, 'Titular', '1753-01-01', 'VERANO', 2015, 0),
(417, 0, 'A01083', 'COA635', '', 'Primavera', 2023, 'Colaborador', '1753-01-01', 'PRIMAVERA', 2012, 0),
(418, 0, 'A01455', 'COA635', '', 'Primavera', 2023, 'Titular', '1753-01-01', 'VERANO', 2015, 0),
(419, 0, 'A01136', 'COA667', '', 'Primavera', 2023, 'Titular', '1753-01-01', 'PRIMAVERA', 2012, 0),
(420, 0, 'A01066', 'COA667', '', 'Primavera', 2023, 'Colaborador', '1753-01-01', 'PRIMAVERA', 2012, 0),
(425, 53059, 'A01152', 'COA661', '', 'Primavera', 2023, 'Titular', '1753-01-01', 'PRIMAVERA', 2012, 3),
(426, 41318, 'A01176', 'COA661', '', 'Primavera', 2023, 'Colaborador', '1753-01-01', 'PRIMAVERA', 2012, 0),
(428, 5880, 'X00242', 'AEC607', '', 'Primavera', 2023, 'Titular', '1753-01-01', 'OTONO', 2014, 0),
(429, 6817, 'A01049', 'COA601', '', 'Primavera', 2023, 'Colaborador', '1753-01-01', 'PRIMAVERA', 2012, 0),
(430, 6817, 'A01049', 'COA601', '', 'Primavera', 2023, 'Titular', '1753-01-01', 'PRIMAVERA', 2012, 0),
(431, 0, 'A01065', 'COA601', '', 'Primavera', 2023, 'Colaborador', '1753-01-01', 'PRIMAVERA', 2012, 0),
(432, 0, 'A01136', 'COA503', '', 'Primavera', 2023, 'Colaborador', '1753-01-01', 'PRIMAVERA', 2012, 0),
(433, 0, 'A01094', 'COA503', '', 'Primavera', 2023, 'Titular', '1753-01-01', 'PRIMAVERA', 2012, 0),
(434, 6817, 'A01049', 'COA603', '', 'Primavera', 2023, 'Colaborador', '1753-01-01', 'PRIMAVERA', 2012, 0),
(435, 0, 'A01094', 'COA603', '', 'Primavera', 2023, 'Colaborador', '1753-01-01', 'PRIMAVERA', 2012, 0),
(436, 0, 'A01066', 'COA603', '', 'Primavera', 2023, 'Titular', '1753-01-01', 'PRIMAVERA', 2012, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imparegubda`
--

CREATE TABLE `imparegubda` (
  `id` bigint(20) NOT NULL,
  `num_emplea` bigint(20) NOT NULL,
  `cve_academic` varchar(6) NOT NULL,
  `cve_curso` varchar(7) NOT NULL,
  `gpo_670` varchar(2) NOT NULL,
  `periodo` varchar(9) NOT NULL,
  `agno` int(11) NOT NULL,
  `participa` varchar(11) NOT NULL,
  `registro` date DEFAULT NULL,
  `per_vi_cur` varchar(9) NOT NULL,
  `ano_vi_cur` int(11) NOT NULL,
  `dis_cre` double NOT NULL,
  `IsEvaluated` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `imparegubda`
--

INSERT INTO `imparegubda` (`id`, `num_emplea`, `cve_academic`, `cve_curso`, `gpo_670`, `periodo`, `agno`, `participa`, `registro`, `per_vi_cur`, `ano_vi_cur`, `dis_cre`, `IsEvaluated`) VALUES
(1, 0, 'X00205', 'ECO601', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'VERANO', 2011, 3, NULL),
(2, 28809, 'A01062', 'ECO602', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(3, 0, 'X02117', 'ECO603', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(4, 0, 'X03632', 'ECO617', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 3, NULL),
(5, 20763, 'X00409', 'ECO621', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 0, NULL),
(6, 0, 'X01838', 'ECO621', '', 'OTONO', 2022, 'COLABORADOR', '1753-01-01', 'OTONO', 2011, 0, NULL),
(7, 0, 'X00531', 'ECO629', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2015, 3, NULL),
(8, 38248, 'X00730', 'ECO635', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2019, 3, NULL),
(9, 3860, 'X00195', 'ECO637', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(10, 29030, 'X00955', 'ECO651', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(11, 58668, 'X01164', 'ECO657', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(12, 28809, 'A01062', 'ECO663', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(13, 0, 'X02117', 'ECO667', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(14, 58668, 'X01164', 'ECO668', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(15, 58668, 'X01164', 'ECO680', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2017, 0, NULL),
(16, 40837, 'X00408', 'ECO680', '', 'OTONO', 2022, 'COLABORADOR', '1753-01-01', 'OTONO', 2017, 0, NULL),
(17, 5428, 'X00627', 'ENT603', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(18, 5339, 'X00414', 'ENT610', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(19, 44731, 'X01241', 'ENT645', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(20, 0, 'X02812', 'ENT655', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(21, 44207, 'X00855', 'ENT657', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(22, 0, 'X00619', 'ENT647', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(23, 16393, 'X00694', 'ENT668', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(24, 0, 'X03394', 'ENT641', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2022, 0, NULL),
(25, 0, 'X60073', 'ENT641', '', 'OTONO', 2022, 'COLABORADOR', '1753-01-01', 'OTONO', 2022, 0, NULL),
(26, 5253, 'X00617', 'ENT681', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2018, 2, NULL),
(27, 0, 'A01705', 'GAN670', 'A', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2022, 1, NULL),
(28, 0, 'X01557', 'FRU604', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 0, NULL),
(29, 0, 'X03646', 'FRU604', '', 'OTONO', 2022, 'COLABORADOR', '1753-01-01', 'OTONO', 2011, 0, NULL),
(30, 35941, 'X00316', 'FRU631', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 0, NULL),
(31, 0, 'A01065', 'FRU640', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(32, 54763, 'X01360', 'FRU640', '', 'OTONO', 2022, 'COLABORADOR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(33, 18633, 'X00722', 'FRU645', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'VERANO', 2011, 3, NULL),
(34, 0, 'X03368', 'FRU650', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(35, 54763, 'X01360', 'FRU657', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(36, 0, 'A01065', 'FRU680', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2017, 2, NULL),
(37, 62788, 'X01482', 'FRU682', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2017, 1, NULL),
(38, 3455, 'X00211', 'BOT690', 'F', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(39, 0, 'X02861', 'BOT690', 'K', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(40, 0, 'X00609', 'BOT690', 'L', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(41, 0, 'X00610', 'BOT690', 'N', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(42, 29516, 'X00608', 'BOT690', 'O', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(43, 45990, 'X00913', 'BOT690', 'S', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(44, 0, 'X01578', 'BOT690', 'U', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(45, 0, 'X01879', 'BOT690', 'V', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(46, 0, 'A01820', 'BOT690', 'X', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'VERANO', 2015, 0, NULL),
(47, 0, 'A01455', 'BOT690', 'Z', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'VERANO', 2015, 0, NULL),
(48, 14132, 'X00204', 'COA690', 'H', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(49, 42813, 'X00887', 'COA690', '2', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(50, 0, 'X01335', 'DES690', 'D', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(51, 29550, 'X00525', 'DES690', 'G', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(52, 0, 'A01046', 'DES690', 'J', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(53, 43712, 'A01001', 'DES690', 'M', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(54, 0, 'A01129', 'DES690', 'O', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(55, 0, 'X01828', 'DES690', 'P', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(56, 0, 'X02009', 'DES690', 'Q', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(57, 0, 'X03207', 'DES690', '10', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(58, 0, 'X01774', 'DES690', '11', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(59, 0, 'X02003', 'DES690', '12', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(60, 0, 'X02001', 'DES690', 'Y', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2015, 0, NULL),
(61, 0, 'X00531', 'ECO690', '1', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(62, 0, 'X00195', 'ECO690', 'A', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(63, 0, 'X00432', 'ECO690', 'C', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(64, 0, 'X00730', 'ECO690', 'D', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(65, 0, 'X02117', 'ECO690', 'I', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(66, 0, 'X00955', 'ECO690', 'K', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(67, 0, 'A01062', 'ECO690', 'M', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(68, 58668, 'X01164', 'ECO690', 'V', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(69, 345, 'X00883', 'ECO690', '2', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(70, 0, 'X03686', 'ECO690', 'Z', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2013, 0, NULL),
(71, 0, 'X03681', 'ECO690', '13', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2013, 0, NULL),
(72, 0, 'X03632', 'ECO690', 'Y', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'VERANO', 2014, 0, NULL),
(73, 52341, 'X01137', 'EDA690', '01', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(74, 41318, 'A01176', 'EDA690', '04', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(75, 60085, 'X01247', 'EDA690', '07', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(76, 0, 'X01682', 'EDA690', '6', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(77, 0, 'X01644', 'EDA690', '7', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(78, 0, 'X00662', 'EDA690', '8', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(79, 49014, 'X01289', 'EDA690', '9', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(80, 6817, 'A01049', 'EDA690', 'A1', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(81, 0, 'X01318', 'EDA690', 'D', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(82, 0, 'A01094', 'EDA690', 'E', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(83, 0, 'X00264', 'EDA690', 'G', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(84, 0, 'A01083', 'EDA690', 'H', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(85, 0, 'X00316', 'EDA690', 'J', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(86, 0, 'X00386', 'EDA690', 'L', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(87, 0, 'X00403', 'EDA690', 'M', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(88, 45123, 'X01085', 'EDA690', 'O', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(89, 0, 'X00493', 'EDA690', 'P', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(90, 0, 'X00496', 'EDA690', 'T', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(91, 0, 'X01302', 'EDA690', 'U', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(92, 0, 'X01755', 'EDA690', '08', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(93, 52880, 'X01417', 'EDA690', '09', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(94, 0, 'X03085', 'EDA690', '14', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'VERANO', 2013, 0, NULL),
(95, 0, 'X00627', 'ENT690', 'D', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(96, 0, 'X00267', 'ENT690', 'F', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(97, 0, 'X00856', 'ENT690', 'J', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(98, 0, 'X00617', 'ENT690', 'K', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(99, 0, 'X00626', 'ENT690', 'O', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(100, 0, 'X00694', 'ENT690', 'P', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(101, 0, 'X00854', 'ENT690', 'S', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(102, 0, 'X01241', 'ENT690', 'T', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(103, 0, 'X00619', 'ENT690', 'U', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(104, 0, 'X01910', 'ENT690', '4', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(105, 0, 'X03394', 'ENT690', '9', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(106, 0, 'X00946', 'EST690', 'C', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(107, 0, 'X02068', 'EST690', 'A', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(108, 0, 'X03537', 'EST690', 'B', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(109, 0, 'X01308', 'FIT690', 'A', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(110, 0, 'X00071', 'FIT690', 'B', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(111, 0, 'X01436', 'FIT690', 'G', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(112, 0, 'X00395', 'FIT690', 'H', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(113, 0, 'X00760', 'FIT690', 'K', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(114, 0, 'X01347', 'FIT690', 'M', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(115, 0, 'X01220', 'FIT690', 'P', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(116, 0, 'A01136', 'FIT690', 'Q', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(117, 0, 'X01113', 'FIT690', 'X', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(118, 0, 'X00070', 'FIT690', '2', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(119, 0, 'X02042', 'FIT690', '3', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(120, 0, 'X01764', 'FIT690', '4', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(121, 0, 'X02835', 'FIV690', '03', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(122, 0, 'X02227', 'FIV690', '04', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(123, 0, 'X00614', 'FIV690', '1', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(124, 61488, 'X01318', 'FIV690', '6', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(125, 0, 'X00711', 'FIV690', 'C', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(126, 0, 'X00596', 'FIV690', 'X', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(127, 44608, 'X01252', 'FIV690', '07', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(128, 0, 'X02187', 'FIV690', '08', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(129, 0, 'X02918', 'FIV690', '12', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(130, 0, 'X02861', 'FIV690', '14', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(131, 0, 'X03648', 'FIV690', '18', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2014, 0, NULL),
(132, 40720, 'X00977', 'FOR690', '1', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(133, 0, 'X03023', 'FOR690', '2', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(134, 40734, 'X01337', 'FOR690', '3', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(135, 56784, 'X01456', 'FOR690', 'P', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(136, 0, 'X00978', 'FOR690', 'Q', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(137, 0, 'X00749', 'FOR690', 'S', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(138, 40172, 'X01232', 'FOR690', 'X', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(139, 0, 'X02838', 'FOR690', 'Z', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(140, 37890, 'X01378', 'FOR690', '5', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(141, 48547, 'X01392', 'FOR690', '9', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(142, 0, 'X02260', 'FOR690', '10', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(143, 0, 'X01721', 'FOR690', '11', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(144, 0, 'X01990', 'FOR690', '13', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(145, 32980, 'X00604', 'FOR690', 'N', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'VERANO', 2011, 0, NULL),
(146, 0, 'X03721', 'FOR690', 'F', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'VERANO', 2011, 0, NULL),
(147, 0, 'X02227', 'FRU690', '01', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(148, 0, 'X01360', 'FRU690', '2', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(149, 0, 'X00463', 'FRU690', 'D', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(150, 0, 'X00464', 'FRU690', 'M', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(151, 0, 'A01066', 'FRU690', 'N', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(152, 0, 'X00596', 'FRU690', 'Q', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(153, 0, 'X00722', 'FRU690', 'S', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(154, 0, 'X01482', 'FRU690', 'V', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(155, 0, 'X02271', 'GAN690', '4', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(156, 0, 'X02228', 'GAN690', '5', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(157, 60616, 'X01646', 'GAN690', '6', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(158, 0, 'X03061', 'GAN690', '8', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(159, 0, 'X00251', 'GAN690', 'B', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(160, 0, 'X00285', 'GAN690', 'C', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(161, 0, 'X00398', 'GAN690', 'D', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(162, 0, 'X00466', 'GAN690', 'E', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(163, 58390, 'X01502', 'GAN690', 'F', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(164, 0, 'X02188', 'GAN690', 'L', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(165, 0, 'X00488', 'GAN690', 'N', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(166, 0, 'X01320', 'GAN690', 'R', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(167, 0, 'X01233', 'GAN690', 'U', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(168, 0, 'X00889', 'GAN690', 'V', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(169, 0, 'X01098', 'GAN690', 'X', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(170, 0, 'X02120', 'GAN690', '16', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(171, 0, 'X03451', 'GAN690', '18', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(172, 36200, 'X01322', 'GEN690', '10', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(173, 0, 'X00580', 'GEN690', '4', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(174, 0, 'X02789', 'GEN690', '8', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(175, 0, 'X00237', 'GEN690', 'E', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(176, 0, 'X00581', 'GEN690', 'K', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(177, 0, 'X00591', 'GEN690', 'Z', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(178, 0, 'X03610', 'GEN690', '13', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(179, 0, 'X02141', 'GEN690', '14', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(180, 0, 'X03648', 'GEN690', '15', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'VERANO', 2012, 0, NULL),
(181, 26140, 'X00512', 'HID690', '1', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(182, 0, 'X00111', 'HID690', 'A', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(183, 0, 'X00481', 'HID690', 'D', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(184, 0, 'X00177', 'HID690', 'M', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(185, 0, 'X01577', 'HID690', '5', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(186, 0, 'X03606', 'HID690', '8', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(187, 0, 'X01704', 'HID690', '11', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2012, 0, NULL),
(188, 0, 'X03692', 'HID690', '14', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'VERANO', 2013, 0, NULL),
(189, 13785, 'X00435', 'HID690', 'Q', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'VERANO', 2011, 0, NULL),
(190, 0, 'X00312', 'SEM690', 'C', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(191, 0, 'X00587', 'SEM690', 'O', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(192, 0, 'X02821', 'SEM690', 'U', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(193, 0, 'X02918', 'SEM690', 'W', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(194, 0, 'X01838', 'ECO690', '18', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2017, 0, NULL),
(195, 0, 'X01786', 'BOT690', 'I', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'VERANO', 2017, 0, NULL),
(196, 0, 'A01556', 'GAN690', 'I', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'VERANO', 2011, 0, NULL),
(197, 0, 'X00629', 'AEC690', 'C', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'VERANO', 2011, 0, NULL),
(198, 0, 'X02199', 'AEC690', 'E', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'VERANO', 2011, 0, NULL),
(199, 0, 'X03715', 'DES690', 'C', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'VERANO', 2011, 0, NULL),
(200, 0, 'X01220', 'DMI690', 'F', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2019, 0, NULL),
(201, 0, 'X03434', 'HID690', 'J', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'VERANO', 2011, 0, NULL),
(202, 0, 'X03720', 'EDA690', '11', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'VERANO', 2011, 0, NULL),
(203, 0, 'X03746', 'BOT690', 'A', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'VERANO', 2011, 0, NULL),
(204, 0, 'A01756', 'GAN690', 'G', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'VERANO', 2011, 0, NULL),
(205, 0, 'X03745', 'EST690', '7', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2020, 0, NULL),
(206, 0, 'X01436', 'DMI690', 'H', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2020, 0, NULL),
(207, 0, 'X03747', 'BOT690', 'D', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(208, 0, 'C00022', 'FOR690', 'A', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'VERANO', 2011, 0, NULL),
(209, 6344, 'X00111', 'DMI690', 'K', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2020, 0, NULL),
(210, 0, 'X60060', 'HID690', 'E', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'VERANO', 2011, 0, NULL),
(211, 0, 'X01879', 'AEC690', 'Q', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2021, 0, NULL),
(212, 0, 'X03226', 'ECO690', '7', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(213, 0, 'X01601', 'ENT690', 'A', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2012, 0, NULL),
(214, 0, 'X01018', 'FIT690', 'S', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(215, 0, 'X02207', 'HID690', 'G', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'VERANO', 2011, 0, NULL),
(216, 44207, 'X00855', 'ENT690', 'Z', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(217, 34401, 'X00703', 'SEM690', 'J', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(218, 0, 'X01918', 'ENT690', '6', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(219, 20763, 'X00409', 'ECO690', 'B', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(220, 0, 'X02005', 'FIT690', '5', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(221, 40717, 'X00744', 'FIV690', 'G', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(222, 48475, 'X00994', 'EST690', 'E', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(223, 0, 'X01379', 'DMI690', 'G', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2018, 0, NULL),
(224, 0, 'X03722', 'DES690', 'A', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(225, 0, 'X03127', 'FIT690', '6', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2022, 0, NULL),
(226, 36960, 'X00852', 'EST690', 'T', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(227, 0, 'X02203', 'EST690', '3', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(228, 6495, 'X00101', 'EDA690', 'B', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(229, 0, 'X01503', 'GAN690', '21', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'VERANO', 2014, 0, NULL),
(230, 33996, 'X00614', 'BOT690', 'T', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(231, 13785, 'X00435', 'DMI690', 'L', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2021, 0, NULL),
(232, 0, 'X01312', 'FIT690', 'U', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(233, 0, 'X00531', 'DMI690', 'J', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2020, 0, NULL),
(234, 0, 'X01379', 'HID690', 'Y', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(235, 20122, 'X00633', 'FIT690', 'C', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(236, 5339, 'X00414', 'ENT690', 'G', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(237, 54907, 'X01130', 'FIT690', 'R', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(238, 0, 'X01946', 'AEC690', 'G', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'VERANO', 2011, 0, NULL),
(239, 0, 'X03675', 'GAN690', '17', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2012, 0, NULL),
(240, 0, 'X02187', 'EDA690', '06', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(241, 0, 'X01557', 'FRU690', '15', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'VERANO', 2022, 0, NULL),
(242, 0, 'X02255', 'FIT690', '1', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(243, 0, 'X03651', 'FIV690', 'I', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 0, NULL),
(244, 0, 'X01578', 'FIV690', '01', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(245, 18349, 'X00609', 'FIV690', 'U', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(246, 44608, 'X01252', 'SEM690', 'V', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(247, 0, 'X01845', 'BOT690', '3', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(248, 0, 'X02812', 'ENT690', '7', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(249, 18469, 'X00610', 'FIV690', 'R', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(250, 28994, 'X00733', 'FOR690', 'M', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(251, 6660, 'X00403', 'FIV690', 'K', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(252, 3455, 'X00211', 'BOT600', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(253, 0, 'X02861', 'BOT601', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(254, 0, 'X01807', 'BOT602', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(255, 0, 'X03746', 'BOT602', '', 'OTONO', 2022, 'COLABORADOR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(256, 0, 'X01786', 'BOT602', '', 'OTONO', 2022, 'COLABORADOR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(257, 0, 'X01845', 'BOT603', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(258, 0, 'X01578', 'BOT603', '', 'OTONO', 2022, 'COLABORADOR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(259, 0, 'A01455', 'BOT606', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'VERANO', 2019, 0, NULL),
(260, 0, 'C00020', 'BOT607', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2020, 3, NULL),
(261, 0, 'X01807', 'BOT608', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2021, 3, NULL),
(262, 0, 'X02861', 'BOT612', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 3, NULL),
(263, 0, 'X03747', 'BOT622', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2019, 3, NULL),
(264, 45990, 'X00913', 'BOT635', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'VERANO', 2011, 3, NULL),
(265, 45990, 'X00913', 'BOT636', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'VERANO', 2011, 3, NULL),
(266, 0, 'X01578', 'BOT640', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(267, 0, 'X01845', 'BOT645', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 3, NULL),
(268, 18349, 'X00609', 'BOT648', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(269, 29516, 'X00608', 'BOT650', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(270, 0, 'X01786', 'BOT681', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'VERANO', 2017, 2, NULL),
(271, 0, 'X00465', 'FOR610', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2017, 0, NULL),
(272, 0, 'X03721', 'FOR610', '', 'OTONO', 2022, 'COLABORADOR', '1753-01-01', 'OTONO', 2017, 0, NULL),
(273, 0, 'X03023', 'FOR611', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(274, 40172, 'X01232', 'FOR615', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(275, 0, 'X00978', 'FOR620', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(276, 0, 'X02260', 'FOR622', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(277, 0, 'X00749', 'FOR625', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2014, 0, NULL),
(278, 5880, 'X00242', 'FOR625', '', 'OTONO', 2022, 'COLABORADOR', '1753-01-01', 'OTONO', 2014, 0, NULL),
(279, 0, 'X00093', 'FOR641', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2016, 3, NULL),
(280, 40720, 'X00977', 'FOR646', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(281, 0, 'X00749', 'FOR660', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(282, 28994, 'X00733', 'FOR664', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 0, NULL),
(283, 40734, 'X01337', 'FOR664', '', 'OTONO', 2022, 'COLABORADOR', '1753-01-01', 'OTONO', 2011, 0, NULL),
(284, 0, 'X02838', 'FOR665', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(285, 0, 'X03023', 'FOR666', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(286, 0, 'X01791', 'FOR668', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(287, 48547, 'X01392', 'FOR671', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2017, 3, NULL),
(288, 40734, 'X01337', 'FOR680', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2017, 0, NULL),
(289, 42306, 'X01294', 'FOR680', '', 'OTONO', 2022, 'COLABORADOR', '1753-01-01', 'OTONO', 2017, 0, NULL),
(290, 0, 'X03606', 'HID603', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 0, NULL),
(291, 0, 'X60074', 'HID603', '', 'OTONO', 2022, 'COLABORADOR', '1753-01-01', 'OTONO', 2011, 0, NULL),
(292, 6344, 'X00111', 'HID606', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2014, 0, NULL),
(293, 6330, 'X00177', 'HID606', '', 'OTONO', 2022, 'COLABORADOR', '1753-01-01', 'OTONO', 2014, 0, NULL),
(294, 0, 'X02277', 'HID606', '', 'OTONO', 2022, 'COLABORADOR', '1753-01-01', 'OTONO', 2014, 0, NULL),
(295, 4126, 'X00755', 'HID606', '', 'OTONO', 2022, 'COLABORADOR', '1753-01-01', 'OTONO', 2014, 0, NULL),
(296, 0, 'X03692', 'HID607', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(297, 0, 'X02207', 'HID609', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2015, 3, NULL),
(298, 0, 'X03692', 'HID615', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2017, 3, NULL),
(299, 26140, 'X00512', 'HID636', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 3, NULL),
(300, 0, 'X03606', 'HID637', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'VERANO', 2011, 0, NULL),
(301, 0, 'X60060', 'HID637', '', 'OTONO', 2022, 'COLABORADOR', '1753-01-01', 'VERANO', 2011, 0, NULL),
(302, 6344, 'X00111', 'HID653', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'VERANO', 2011, 0, NULL),
(303, 0, 'X00458', 'HID653', '', 'OTONO', 2022, 'COLABORADOR', '1753-01-01', 'VERANO', 2011, 0, NULL),
(304, 0, 'X01704', 'HID654', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'VERANO', 2011, 0, NULL),
(305, 30692, 'X00673', 'HID654', '', 'OTONO', 2022, 'COLABORADOR', '1753-01-01', 'VERANO', 2011, 0, NULL),
(306, 0, 'X01379', 'HID661', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'VERANO', 2011, 0, NULL),
(307, 0, 'X60074', 'HID661', '', 'OTONO', 2022, 'COLABORADOR', '1753-01-01', 'VERANO', 2011, 0, NULL),
(308, 0, 'X01379', 'HID682', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2017, 0, NULL),
(309, 0, 'X03606', 'AGM620', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(310, 49223, 'X01197', 'AGM620', '', 'OTONO', 2022, 'COLABORADOR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(311, 6848, 'X00264', 'AGM625', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(312, 0, 'X02240', 'AEC609', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2017, 3, NULL),
(313, 0, 'X02199', 'AEC680', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2017, 0, NULL),
(314, 52520, 'A01046', 'AEC680', '', 'OTONO', 2022, 'COLABORADOR', '1753-01-01', 'OTONO', 2017, 0, NULL),
(315, 0, 'X02003', 'DES603', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(316, 0, 'X03722', 'DES604', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 0, NULL),
(317, 0, 'X03715', 'DES604', '', 'OTONO', 2022, 'COLABORADOR', '1753-01-01', 'OTONO', 2011, 0, NULL),
(318, 0, 'X02009', 'DES612', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 0, NULL),
(319, 0, 'X03715', 'DES612', '', 'OTONO', 2022, 'COLABORADOR', '1753-01-01', 'OTONO', 2011, 0, NULL),
(320, 0, 'X02101', 'DES614', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 0, NULL),
(321, 52502, 'X00976', 'DES615', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(322, 0, 'A01129', 'DES618', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(323, 52520, 'A01046', 'DES622', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 0, NULL),
(324, 0, 'X01946', 'DES622', '', 'OTONO', 2022, 'COLABORADOR', '1753-01-01', 'OTONO', 2011, 0, NULL),
(325, 0, 'X01774', 'DES625', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2020, 3, NULL),
(326, 0, 'X02009', 'DES635', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2017, 0, NULL),
(327, 0, 'X03722', 'DES635', '', 'OTONO', 2022, 'COLABORADOR', '1753-01-01', 'OTONO', 2017, 0, NULL),
(328, 43712, 'A01001', 'DES636', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(329, 62517, 'X01402', 'DES638', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(330, 52502, 'X00976', 'DES639', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2018, 0, NULL),
(331, 0, 'X01718', 'DES641', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2012, 1.5, NULL),
(332, 0, 'X02186', 'DES642', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2017, 3, NULL),
(333, 0, 'X01718', 'DES647', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(334, 29550, 'X00525', 'DES648', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 0, NULL),
(335, 0, 'A01477', 'DES648', '', 'OTONO', 2022, 'COLABORADOR', '1753-01-01', 'OTONO', 2011, 0, NULL),
(336, 0, 'A01296', 'DES651', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2015, 3, NULL),
(337, 0, 'X03715', 'DES652', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2020, 0, NULL),
(338, 0, 'X02009', 'DES652', '', 'OTONO', 2022, 'COLABORADOR', '1753-01-01', 'OTONO', 2020, 0, NULL),
(339, 0, 'X60063', 'DES652', '', 'OTONO', 2022, 'COLABORADOR', '1753-01-01', 'OTONO', 2020, 0, NULL),
(340, 0, 'X01828', 'DES658', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(341, 0, 'X03207', 'DES665', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 3, NULL),
(342, 0, 'X01828', 'DES680', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'VERANO', 2017, 2, NULL),
(343, 0, 'X01503', 'GAN608', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 3, NULL),
(344, 7096, 'X00488', 'GAN610', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(345, 58390, 'X01502', 'GAN612', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(346, 7168, 'X00398', 'GAN614', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2022, 0, NULL),
(347, 60616, 'X01646', 'GAN615', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2012, 3, NULL),
(348, 60513, 'X01233', 'GAN616', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2012, 3, NULL),
(349, 0, 'A01756', 'GAN622', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'VERANO', 2011, 3, NULL),
(350, 0, 'X03687', 'GAN625', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2016, 0, NULL),
(351, 0, 'X02188', 'GAN629', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'VERANO', 2011, 3, NULL),
(352, 49080, 'X01320', 'GAN642', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(353, 0, 'X01098', 'GAN643', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(354, 18486, 'X00285', 'GAN651', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(355, 7137, 'X00251', 'GAN655', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(356, 45898, 'X01228', 'GAN662', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(357, 0, 'X03462', 'GAN665', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(358, 0, 'X01868', 'GAN665', '', 'OTONO', 2022, 'COLABORADOR', '1753-01-01', 'PRIMAVERA', 2012, 3, NULL),
(359, 6817, 'A01049', 'EDA611', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 0, NULL),
(360, 49179, 'X01348', 'EDA611', '', 'OTONO', 2022, 'COLABORADOR', '1753-01-01', 'OTONO', 2011, 0, NULL),
(361, 28812, 'X00493', 'EDA612', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 0, NULL),
(362, 43918, 'X01644', 'EDA612', '', 'OTONO', 2022, 'COLABORADOR', '1753-01-01', 'OTONO', 2011, 0, NULL),
(363, 0, 'X03463', 'EDA612', '', 'OTONO', 2022, 'COLABORADOR', '1753-01-01', 'OTONO', 2011, 0, NULL),
(364, 52341, 'X01137', 'EDA619', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(365, 0, 'X01682', 'EDA625', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 0, NULL),
(366, 6848, 'X00264', 'EDA625', '', 'OTONO', 2022, 'COLABORADOR', '1753-01-01', 'OTONO', 2011, 0, NULL),
(367, 0, 'X00128', 'EDA635', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 4, NULL),
(368, 41318, 'A01176', 'EDA642', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 3, NULL),
(369, 0, 'X03085', 'EDA645', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 4, NULL),
(370, 49014, 'X01289', 'EDA654', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'VERANO', 2011, 3, NULL),
(371, 0, 'X02187', 'EDA653', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(372, 61488, 'X01318', 'EDA655', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(373, 7079, 'X00386', 'EDA663', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 3, NULL),
(374, 49014, 'X01289', 'EDA664', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'VERANO', 2011, 2, NULL),
(375, 45017, 'X01368', 'EDA664', '', 'OTONO', 2022, 'COLABORADOR', '1753-01-01', 'VERANO', 2011, 2, NULL),
(376, 0, 'A01083', 'EDA667', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(377, 54907, 'X01130', 'FIT603', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 4, NULL),
(378, 0, 'X03127', 'FIT608', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(379, 0, 'X00070', 'FIT608', '', 'OTONO', 2022, 'COLABORADOR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(380, 56959, 'X01467', 'FIT622', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(381, 0, 'X01764', 'FIT623', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 4, NULL),
(382, 0, 'X02005', 'FIT627', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'VERANO', 2011, 3, NULL),
(383, 40854, 'A01136', 'FIT645', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(384, 0, 'X01312', 'FIT665', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(385, 0, 'X01220', 'FIT666', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2013, 3, NULL),
(386, 43387, 'X00760', 'FIT681', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2017, 1, NULL),
(387, 53059, 'A01152', 'COA666', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 3, NULL),
(388, 42813, 'X00887', 'COA660', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(389, 42813, 'X00887', 'COA501', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 3, NULL),
(390, 0, 'X03537', 'COA602', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(391, 4306, 'X00244', 'COA681', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2019, 1, NULL),
(392, 0, 'X00586', 'GEN602', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 4, NULL),
(393, 0, 'X02141', 'GEN604', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(394, 40717, 'X00744', 'GEN606', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 4, NULL),
(395, 29324, 'X00591', 'GEN609', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 4, NULL),
(396, 0, 'X00820', 'GEN611', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2019, 3, NULL),
(397, 0, 'A01705', 'GEN612', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2021, 3, NULL),
(398, 0, 'X02789', 'GEN616', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(399, 0, 'X03648', 'GEN618', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(400, 0, 'X03610', 'GEN622', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 0, NULL),
(401, 0, 'X02789', 'GEN622', '', 'OTONO', 2022, 'COLABORADOR', '1753-01-01', 'OTONO', 2011, 0, NULL),
(402, 35328, 'X00584', 'GEN626', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(403, 5743, 'X00580', 'GEN635', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 0, NULL),
(404, 5970, 'X00035', 'GEN635', '', 'OTONO', 2022, 'COLABORADOR', '1753-01-01', 'OTONO', 2011, 0, NULL),
(405, 36957, 'X00372', 'EST501', 'A', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(406, 9901, 'X00241', 'EST501', 'B', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2012, 3, NULL),
(407, 0, 'X00946', 'EST502', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'VERANO', 2011, 3, NULL),
(408, 0, 'X02203', 'EST510', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(409, 4580, 'X00700', 'EST555', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 3, NULL),
(410, 0, 'X03684', 'EST600', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 3, NULL),
(411, 0, 'X03537', 'EST601', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 3, NULL),
(412, 0, 'X01311', 'EST610', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 3, NULL),
(413, 36960, 'X00852', 'EST624', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'VERANO', 2011, 3, NULL),
(414, 48475, 'X00994', 'EST629', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 3, NULL),
(415, 4724, 'X00217', 'EST633', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 3, NULL),
(416, 51439, 'X00430', 'EST646', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 3, NULL),
(417, 0, 'X03559', 'EST652', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'VERANO', 2011, 3, NULL),
(418, 0, 'X03745', 'EST655', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 3, NULL),
(419, 0, 'X02152', 'EST681', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2017, 2, NULL),
(420, 0, 'X00946', 'EST726', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 0, NULL),
(421, 0, 'X02068', 'EST753', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 3, NULL),
(422, 0, 'X02813', 'SEM605', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 0, NULL),
(423, 29653, 'X00592', 'SEM605', '', 'OTONO', 2022, 'COLABORADOR', '1753-01-01', 'OTONO', 2011, 0, NULL),
(424, 0, 'X00587', 'SEM607', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(425, 0, 'X02813', 'SEM608', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(426, 44608, 'X01252', 'SEM610', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'VERANO', 2011, 3, NULL),
(427, 60037, 'X01295', 'GEN681', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'VERANO', 2017, 2, NULL),
(428, 0, 'X02228', 'GAN613', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'VERANO', 2011, 0, NULL),
(429, 54763, 'X01360', 'FIV680', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2017, 2, NULL),
(430, 32809, 'X00640', 'DES610', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2011, 3, NULL),
(431, 0, 'X01601', 'ENT601', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2015, 3, NULL),
(432, 0, 'X01379', 'HID657', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'VERANO', 2011, 3, NULL),
(433, 0, 'X03537', 'COA690', '3', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(434, 0, 'X01966', 'DES690', 'U', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(435, 0, 'X02101', 'DES690', '14', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(436, 0, 'X01718', 'DES690', 'N', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(437, 4724, 'X00217', 'EST690', 'D', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(438, 0, 'X03687', 'GAN690', '19', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2013, 0, NULL),
(439, 0, 'X01018', 'AEC690', 'F', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'VERANO', 2011, 0, NULL),
(440, 0, 'X01941', 'ENT690', '5', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(441, 39983, 'X00898', 'GAN690', 'P', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(442, 48547, 'X01392', 'FOR681', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'VERANO', 2017, 0, NULL),
(443, 16417, 'A01066', 'FRU631', '', 'OTONO', 2022, 'COLABORADOR', '1753-01-01', 'OTONO', 2011, 0, NULL),
(444, 0, 'X01807', 'FOR670', 'A', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2022, 1, NULL),
(445, 0, 'C00021', 'FIT614', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2022, 3, NULL),
(446, 0, 'X02821', 'SEM611', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2022, 4, NULL),
(447, 0, 'X03648', 'GEN680', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2021, 0, NULL),
(448, 0, 'X60055', 'EDA670', 'A', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2022, 1, NULL),
(449, 44780, 'X00889', 'GAN607', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2016, 3, NULL),
(450, 0, 'X00200', 'ECO692', '0', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2014, 0, NULL),
(451, 0, 'X02001', 'DES603', '', 'OTONO', 2022, 'COLABORADOR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(452, 0, 'X02821', 'SEM680', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2017, 0, NULL),
(453, 5966, 'X00385', 'SEM680', '', 'OTONO', 2022, 'COLABORADOR', '1753-01-01', 'OTONO', 2017, 0, NULL),
(454, 44608, 'X01252', 'SEM681', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2017, 0, NULL),
(455, 0, 'X02813', 'SEM681', '', 'OTONO', 2022, 'COLABORADOR', '1753-01-01', 'OTONO', 2017, 0, NULL),
(456, 29516, 'X00608', 'BOT688', 'A', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'VERANO', 2021, 1, NULL),
(457, 0, 'X00200', 'EDA692', '0', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2014, 0, NULL),
(458, 56959, 'X01467', 'FIT680', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2017, 2, NULL),
(459, 0, 'X00200', 'FOR692', '0', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2014, 0, NULL),
(460, 0, 'X02821', 'SEM688', 'A', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2022, 1, NULL),
(461, 0, 'X02838', 'TFL614', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2016, 0, NULL),
(462, 0, 'X60061', 'HID607', '', 'OTONO', 2022, 'COLABORADOR', '1753-01-01', 'PRIMAVERA', 2012, 0, NULL),
(463, 41589, 'X00885', 'HID682', '', 'OTONO', 2022, 'COLABORADOR', '1753-01-01', 'OTONO', 2017, 0, NULL),
(464, 0, 'X03729', 'DES639', '', 'OTONO', 2022, 'COLABORADOR', '1753-01-01', 'OTONO', 2018, 0, NULL),
(465, 0, 'X00200', 'FIT692', '0', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2014, 0, NULL),
(466, 0, 'X00200', 'ENT692', '0', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2014, 0, NULL),
(467, 0, 'X03721', 'TFL620', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'VERANO', 2016, 2, NULL),
(468, 0, 'X00200', 'GEN692', '0', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'VERANO', 2014, 0, NULL),
(469, 0, 'X02042', 'FIT603', '', 'OTONO', 2022, 'COLABORADOR', '1753-01-01', 'OTONO', 2011, 0, NULL),
(470, 0, 'X00200', 'FRU692', '0', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'VERANO', 2014, 0, NULL),
(471, 0, 'X00200', 'DMI692', '0', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2020, 0, NULL),
(472, 0, 'X00200', 'EST692', '0', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'VERANO', 2014, 0, NULL),
(473, 0, 'X00200', 'BOT692', '0', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2014, 0, NULL),
(474, 0, 'X03741', 'GAN614', '', 'OTONO', 2022, 'COLABORADOR', '1753-01-01', 'OTONO', 2022, 0, NULL),
(475, 0, 'X00200', 'GAN692', '0', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2014, 0, NULL),
(476, 28994, 'X00733', 'TFL603', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'PRIMAVERA', 2016, 2, NULL),
(477, 0, 'X01350', 'TFL622', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'OTONO', 2016, 2, NULL),
(478, 0, 'X00978', 'TFL624', '', 'OTONO', 2022, 'TITULAR', '1753-01-01', 'VERANO', 2016, 1, NULL),
(479, 0, 'X00465', 'TFL624', '', 'OTONO', 2022, 'COLABORADOR', '1753-01-01', 'VERANO', 2016, 1, NULL),
(480, 0, 'X01946', 'DES641', '', 'OTONO', 2022, 'COLABORADOR', '1753-01-01', 'OTONO', 2017, 1.5, NULL);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_catacurs_duplicados`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_catacurs_duplicados` (
`cve_curso` varchar(6)
,`total` bigint(21)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_catacurs_duplicados`
--
DROP TABLE IF EXISTS `vista_catacurs_duplicados`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_catacurs_duplicados`  AS SELECT `catacurs`.`cve_curso` AS `cve_curso`, count(0) AS `total` FROM `catacurs` GROUP BY `catacurs`.`cve_curso` HAVING `total` > 11  ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `academic`
--
ALTER TABLE `academic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cve_academic` (`cve_academic`);

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `capcurs`
--
ALTER TABLE `capcurs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `capcurs_cve_academic_7bc1daf2_fk_academic_cve_academic` (`cve_academic`),
  ADD KEY `capcurs_cve_curso_70273739_fk_catacurs_cve_curso` (`cve_curso`);

--
-- Indices de la tabla `catacurs`
--
ALTER TABLE `catacurs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cve_curso` (`cve_curso`);

--
-- Indices de la tabla `coordinaciones`
--
ALTER TABLE `coordinaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `imparegu`
--
ALTER TABLE `imparegu`
  ADD PRIMARY KEY (`id_auto`),
  ADD KEY `cve_academic` (`cve_academic`),
  ADD KEY `cve_curso` (`cve_curso`);

--
-- Indices de la tabla `imparegubda`
--
ALTER TABLE `imparegubda`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `academic`
--
ALTER TABLE `academic`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `capcurs`
--
ALTER TABLE `capcurs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=284;

--
-- AUTO_INCREMENT de la tabla `catacurs`
--
ALTER TABLE `catacurs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1327;

--
-- AUTO_INCREMENT de la tabla `coordinaciones`
--
ALTER TABLE `coordinaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT de la tabla `imparegu`
--
ALTER TABLE `imparegu`
  MODIFY `id_auto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=437;

--
-- AUTO_INCREMENT de la tabla `imparegubda`
--
ALTER TABLE `imparegubda`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=481;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `capcurs`
--
ALTER TABLE `capcurs`
  ADD CONSTRAINT `capcurs_cve_academic_7bc1daf2_fk_academic_cve_academic` FOREIGN KEY (`cve_academic`) REFERENCES `academic` (`cve_academic`),
  ADD CONSTRAINT `capcurs_cve_curso_70273739_fk_catacurs_cve_curso` FOREIGN KEY (`cve_curso`) REFERENCES `catacurs` (`cve_curso`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

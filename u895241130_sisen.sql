-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 15-12-2023 a las 19:43:45
-- Versión del servidor: 10.5.19-MariaDB-cll-lve
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `u895241130_sisen`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `answers`
--

CREATE TABLE `answers` (
  `id` int(30) NOT NULL,
  `survey_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `answer` text NOT NULL,
  `question_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `answers`
--

INSERT INTO `answers` (`id`, `survey_id`, `user_id`, `answer`, `question_id`, `date_created`) VALUES
(1, 1, 2, 'Sample Only', 4, '2020-11-10 14:46:07'),
(2, 1, 2, '[JNmhW],[zZpTE]', 2, '2020-11-10 14:46:07'),
(3, 1, 2, 'dAWTD', 1, '2020-11-10 14:46:07'),
(4, 1, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec in tempus turpis, sed fermentum risus. Praesent vitae velit rutrum, dictum massa nec, pharetra felis. Phasellus enim augue, laoreet in accumsan dictum, mollis nec lectus. Aliquam id viverra nisl. Proin quis posuere nulla. Nullam suscipit eget leo ut suscipit.', 4, '2020-11-10 15:59:43'),
(5, 1, 3, '[qCMGO],[JNmhW]', 2, '2020-11-10 15:59:43'),
(6, 1, 3, 'esNuP', 1, '2020-11-10 15:59:43'),
(7, 6, 6, '[OybxK]', 5, '2022-08-23 09:29:42'),
(8, 6, 5, '[IPKOE]', 5, '2022-08-23 09:30:28'),
(9, 7, 6, '[TlmwU]', 6, '2022-08-23 14:24:41'),
(10, 10, 5, 'mMaiv', 9, '2023-06-02 22:48:41'),
(11, 10, 5, 'erg', 11, '2023-06-02 22:48:41'),
(12, 10, 5, '[VBqGN]', 10, '2023-06-02 22:48:41'),
(13, 23, 8, 'qtGnC', 24, '2023-06-19 20:30:07'),
(14, 23, 8, '[hFSPi],[sBFcy]', 25, '2023-06-19 20:30:07'),
(15, 17, 8, '[dxSaA],[vCHJr]', 19, '2023-06-19 20:30:34'),
(16, 16, 8, '', 18, '2023-06-19 20:30:42'),
(17, 22, 8, '[pPWmT],[covhG]', 23, '2023-06-19 20:31:24'),
(18, 6, 9, '[CSjYP]', 26, '2023-08-07 19:00:41'),
(19, 6, 9, '[FYAgp]', 36, '2023-08-07 19:00:41'),
(20, 6, 9, '[CtiKk]', 57, '2023-08-07 19:00:41'),
(21, 6, 9, '[EWqmJ],[ThIEl],[QTHSc]', 5, '2023-08-07 19:00:41'),
(22, 6, 9, 'GBhVD', 7, '2023-08-07 19:00:41'),
(23, 6, 9, 'bla', 12, '2023-08-07 19:00:41'),
(24, 6, 9, '[VRsLj]', 14, '2023-08-07 19:00:41'),
(25, 27, 12, 'ejUqx', 28, '2023-08-08 08:01:04'),
(26, 27, 12, 'gZRCW', 29, '2023-08-08 08:01:04'),
(27, 33, 12, '[BwJMq]', 37, '2023-08-08 08:01:18'),
(28, 33, 12, '', 38, '2023-08-08 08:01:18'),
(29, 33, 12, 'zPrus', 39, '2023-08-08 08:01:18'),
(30, 33, 12, '', 40, '2023-08-08 08:01:18'),
(31, 33, 12, '', 49, '2023-08-08 08:01:18'),
(32, 33, 12, '', 50, '2023-08-08 08:01:18'),
(33, 49, 14, 'VELTI', 68, '2023-08-17 04:49:43'),
(34, 49, 14, 'XQIoH', 69, '2023-08-17 04:49:43'),
(35, 27, 14, 'prDkV', 28, '2023-08-17 04:50:15'),
(36, 27, 14, 'gZRCW', 29, '2023-08-17 04:50:15'),
(37, 27, 14, '', 60, '2023-08-17 04:50:15'),
(38, 27, 14, 'HVkAu', 61, '2023-08-17 04:50:15'),
(39, 33, 14, '[wgulr]', 37, '2023-08-17 04:52:41'),
(40, 33, 14, 'lkl', 38, '2023-08-17 04:52:41'),
(41, 33, 14, 'zPrus', 39, '2023-08-17 04:52:41'),
(42, 33, 14, 'admin', 40, '2023-08-17 04:52:41'),
(43, 33, 14, 'admin', 49, '2023-08-17 04:52:41'),
(44, 33, 14, '', 50, '2023-08-17 04:52:41'),
(45, 33, 14, 'asmin', 62, '2023-08-17 04:52:41'),
(46, 33, 14, '[rFGzY]', 63, '2023-08-17 04:52:41'),
(47, 33, 14, '', 64, '2023-08-17 04:52:41'),
(48, 49, 15, 'cZHXD', 68, '2023-08-17 04:54:29'),
(49, 49, 15, 'JMdkb', 69, '2023-08-17 04:54:29'),
(50, 49, 16, 'qoKzd', 68, '2023-08-17 05:04:05'),
(51, 49, 16, 'WNgJi', 69, '2023-08-17 05:04:05'),
(52, 55, 18, '[kCpNH],[xJwrO],[lQSev],[PAuEF],[caFoY]', 75, '2023-09-02 17:13:38'),
(53, 56, 20, 'Inteligencia artificial ', 76, '2023-09-08 13:59:18'),
(54, 16, 21, '', 18, '2023-09-15 20:09:41'),
(55, 33, 21, '[BwJMq]', 37, '2023-09-15 20:10:55'),
(56, 33, 21, 'asdsdasd', 38, '2023-09-15 20:10:55'),
(57, 33, 21, 'zPrus', 39, '2023-09-15 20:10:55'),
(58, 33, 21, 'asdasd', 40, '2023-09-15 20:10:55'),
(59, 33, 21, 'asdasd', 49, '2023-09-15 20:10:55'),
(60, 33, 21, '', 50, '2023-09-15 20:10:55'),
(61, 33, 21, 'asdasd', 62, '2023-09-15 20:10:55'),
(62, 33, 21, '[rFGzY]', 63, '2023-09-15 20:10:55'),
(63, 33, 21, '', 64, '2023-09-15 20:10:55'),
(64, 33, 21, '[PXaRh]', 73, '2023-09-15 20:10:55'),
(65, 33, 21, 'asdasd', 74, '2023-09-15 20:10:55'),
(66, 33, 21, '[eXLFQ]', 77, '2023-09-15 20:10:55'),
(67, 57, 21, 'oRQCz', 78, '2023-09-15 22:42:13'),
(68, 27, 21, 'prDkV', 28, '2023-09-15 22:42:42'),
(69, 27, 21, 'CeSoj', 29, '2023-09-15 22:42:42'),
(70, 27, 21, 'fsfsdf', 60, '2023-09-15 22:42:42'),
(71, 27, 21, 'EsPxt', 61, '2023-09-15 22:42:42'),
(72, 27, 22, 'prDkV', 28, '2023-09-18 11:18:37'),
(73, 27, 22, 'CeSoj', 29, '2023-09-18 11:18:37'),
(74, 27, 22, '', 60, '2023-09-18 11:18:37'),
(75, 27, 22, 'EsPxt', 61, '2023-09-18 11:18:37'),
(76, 58, 24, 'UgyBQ', 80, '2023-09-18 19:27:46'),
(77, 57, 27, 'HMeFd', 78, '2023-09-30 03:25:07'),
(78, 62, 27, 'MKjHt', 84, '2023-09-30 03:42:06'),
(79, 62, 27, '[ANHbj],[csqnV]', 85, '2023-09-30 03:42:06'),
(80, 62, 27, 'Experiencias buenas y malas ', 86, '2023-09-30 03:42:06'),
(81, 62, 28, 'JbOjw', 84, '2023-09-30 03:56:42'),
(82, 62, 28, '[csqnV],[KfmFb]', 85, '2023-09-30 03:56:42'),
(83, 62, 28, 'Buenos y malos ', 86, '2023-09-30 03:56:42'),
(84, 16, 26, '', 18, '2023-10-07 03:09:42'),
(85, 80, 30, 'Juan Perez', 107, '2023-11-02 15:23:08'),
(86, 80, 30, '87654321', 108, '2023-11-02 15:23:08'),
(87, 80, 30, 'rxtRu', 109, '2023-11-02 15:23:08'),
(88, 80, 31, 'Pedro Garcia', 107, '2023-11-02 20:25:31'),
(89, 80, 31, '521552215', 108, '2023-11-02 20:25:31'),
(90, 80, 31, 'qPcLe', 109, '2023-11-02 20:25:31'),
(91, 73, 32, 'EagkO', 98, '2023-11-04 16:47:42'),
(92, 73, 32, '[ejHNg]', 99, '2023-11-04 16:47:42'),
(93, 73, 32, 'DWWED', 100, '2023-11-04 16:47:42'),
(94, 82, 32, '[dBGEx]', 110, '2023-11-04 16:52:57'),
(95, 82, 32, '[dvhlr]', 111, '2023-11-04 16:52:57'),
(96, 85, 33, '[tSfTY]', 115, '2023-11-17 22:04:24'),
(97, 85, 33, '[EpZrn]', 116, '2023-11-17 22:04:24'),
(98, 85, 33, '[jRkJX]', 117, '2023-11-17 22:04:24'),
(99, 85, 34, '[axzKH]', 115, '2023-11-17 23:00:24'),
(100, 85, 34, '[EpZrn]', 116, '2023-11-17 23:00:24'),
(101, 85, 34, '[vUSnC]', 117, '2023-11-17 23:00:24'),
(102, 86, 33, 'Juan Perez', 118, '2023-11-21 22:16:47'),
(103, 86, 33, '[cBsGn]', 119, '2023-11-21 22:16:47'),
(104, 86, 33, 'ScULQ', 120, '2023-11-21 22:16:47'),
(105, 86, 33, 'ljXPq', 121, '2023-11-21 22:16:47'),
(106, 86, 33, '[erxPY]', 122, '2023-11-21 22:16:47'),
(107, 73, 17, 'ObpEl', 98, '2023-12-07 04:13:24'),
(108, 73, 17, '[ejHNg]', 99, '2023-12-07 04:13:24'),
(109, 73, 17, '<h1>SISTEMA VULNERABLE</h1>', 100, '2023-12-07 04:13:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `questions`
--

CREATE TABLE `questions` (
  `id` int(30) NOT NULL,
  `question` text NOT NULL,
  `frm_option` text NOT NULL,
  `type` varchar(50) NOT NULL,
  `order_by` int(11) NOT NULL,
  `survey_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `questions`
--

INSERT INTO `questions` (`id`, `question`, `frm_option`, `type`, `order_by`, `survey_id`, `date_created`) VALUES
(1, 'Sample Survey Question using Radio Button', '{\"cKWLY\":\"Option 1\",\"esNuP\":\"Option 2\",\"dAWTD\":\"Option 3\",\"eZCpf\":\"Option 4\"}', 'radio_opt', 3, 1, '2020-11-10 12:04:46'),
(2, 'Question for Checkboxes', '{\"qCMGO\":\"Checkbox label 1\",\"JNmhW\":\"Checkbox label 2\",\"zZpTE\":\"Checkbox label 3\",\"dOeJi\":\"Checkbox label 4\"}', 'check_opt', 2, 1, '2020-11-10 12:25:13'),
(4, 'Sample question for the text field', '', 'textfield_s', 1, 1, '2020-11-10 13:34:21'),
(5, 'PHP es un lenguaje optimizado para el frontend', '{\"EWqmJ\":\"windows\",\"ThIEl\":\"Apple\",\"QTHSc\":\"linux\"}', 'check_opt', 1, 6, '2022-08-23 09:28:44'),
(6, 'Cual es el software de desarrollo más importante?', '{\"qrxvA\":\"\",\"XUzow\":\"\"}', 'check_opt', 4, 7, '2022-08-23 14:23:29'),
(7, 'este es un sistema?', '{\"GBhVD\":\"no\",\"pRqkC\":\"si\"}', 'radio_opt', 2, 6, '2023-05-23 22:07:46'),
(8, 'x', '{\"Dhbfd\":\"maria \",\"EOlwJ\":\"teresa\",\"VKSyO\":\"ana\"}', 'check_opt', 0, 9, '2023-05-25 23:31:09'),
(9, 'Pregunta sencilla', '{\"mMaiv\":\"aaa\",\"Bqnkb\":\"bbb\",\"dQPoY\":\"ccc\"}', 'radio_opt', 1, 10, '2023-05-26 23:22:48'),
(10, 'Antepone las necesidades de la Organización a sus propios intereses, sin mermar por ello su compromiso individual. \r\nPromueve  y estimula en los demás el orgullo de pertenencia al Grupo Molina a través del ejemplo  \r\nEs un referente de compromiso e identificación de la compañía hacia la Organización \r\nPlantea acciones que involucran a los demás en los valores de Grupo Molina  \r\nActúa como embajador de la marca exponiendo sus ventajas y beneficios  \r\nBusca activamente fomentar la actividad de la compañía a través de sus contactos ', '{\"GRkiW\":\"1\",\"FePmY\":\"2\",\"mTnQp\":\"3\",\"SKIQB\":\"4\",\"wDPhe\":\"5\"}', 'radio_opt', 3, 10, '2023-05-26 23:24:04'),
(11, 'Texto', '', 'textfield_s', 2, 10, '2023-05-26 23:24:32'),
(12, 'QUEUE S EL ', '', 'textfield_s', 3, 6, '2023-05-29 20:18:01'),
(13, '', '[]', 'radio_opt', 0, 11, '2023-05-29 20:19:07'),
(14, 'WEFWE', '{\"VRsLj\":\"SI\",\"epBFA\":\"NO\",\"Gmjhk\":\"TAVEZ\"}', 'check_opt', 4, 6, '2023-05-31 22:31:23'),
(15, 'Cómo te va?', '{\"JUjTw\":\"Prro\",\"DRpnw\":\"Gato\",\"SwFHh\":\"Oto\"}', 'radio_opt', 2, 13, '2023-06-03 02:49:09'),
(16, 'Neta?', '{\"yCJku\":\"1\",\"tvdHh\":\"2\",\"UPpHg\":\"3\"}', 'radio_opt', 3, 13, '2023-06-03 02:49:33'),
(17, 'cuanto tiempo inviertes en tus amigos?', '{\"mgqZX\":\"1 hora\",\"iewEk\":\"2 horas\",\"RLAOK\":\"3 horas\"}', 'radio_opt', 0, 15, '2023-06-08 03:32:28'),
(18, 'esta bien ', '[]', 'radio_opt', 0, 16, '2023-06-08 23:28:35'),
(19, 'que te gusta hacer', '{\"dxSaA\":\"Bailar\",\"Vhkdr\":\"Jugar\",\"jWdaO\":\"Cantar\",\"vCHJr\":\"Correr\",\"YNLkg\":\"Caminar\",\"yLldW\":\"Dormir\"}', 'check_opt', 0, 17, '2023-06-13 02:30:02'),
(20, 'como siente el abiente laboral', '{\"Griop\":\"bien\",\"EUezY\":\"mal\"}', 'radio_opt', 0, 19, '2023-06-14 16:37:23'),
(21, 'Jorge Perez', '{\"NWeix\":\"\",\"dmHrg\":\"\"}', 'check_opt', 0, 20, '2023-06-17 06:55:46'),
(22, 'Pito Perez', '[]', 'radio_opt', 0, 20, '2023-06-17 06:56:00'),
(23, 'Juan ', '{\"pPWmT\":\"Uni\",\"covhG\":\"\"}', 'check_opt', 0, 22, '2023-06-18 18:28:58'),
(24, 'Test', '{\"rAjQV\":\"1\",\"XCbjM\":\"2\",\"uLfBH\":\"3\",\"PRUfB\":\"4\",\"qtGnC\":\"5\"}', 'radio_opt', 0, 23, '2023-06-19 20:19:32'),
(25, 'Pregunta 2', '{\"hFSPi\":\"1\",\"sBFcy\":\"2\"}', 'check_opt', 0, 23, '2023-06-19 20:19:55'),
(26, 'câu hỏi 1', '{\"CSjYP\":\"uuuuuuuu\",\"Edhlg\":\"\",\"bEwtm\":\"\"}', 'check_opt', 0, 6, '2023-06-20 21:11:31'),
(27, 'ggggggggggggggg', '{\"awGPS\":\"uuuuuuuu\",\"Gxvmo\":\"uuuuuuuu\",\"WOYvG\":\"uuuuuuuu\"}', 'check_opt', 0, 12, '2023-06-21 20:48:07'),
(28, '¿Que te parece?', '{\"ejUqx\":\"Bueno\",\"prDkV\":\"Regular\",\"utXQU\":\"Malo\"}', 'radio_opt', 0, 27, '2023-06-22 15:56:38'),
(29, 'Cuantos tienes', '{\"UqsVi\":\"24\",\"CeSoj\":\"31\",\"gZRCW\":\"18\"}', 'radio_opt', 0, 27, '2023-06-22 15:57:43'),
(30, 'A sido diagnosticado de covid 19?', '{\"LqCPO\":\"Si\",\"heTGq\":\"No\",\"YZwgc\":\"No se\"}', 'radio_opt', 0, 28, '2023-06-24 18:36:16'),
(31, 'Que exámenes  a realizado para diagnosticar si padece de covid 19?', '{\"qxuUr\":\"Prueba de antu00edgenos\",\"UHFiQ\":\"Hisopo nasal o faru00edngeo\",\"bDqWz\":\"Muestra de saliva\",\"Kipdk\":\"Pruebas de PCR\"}', 'check_opt', 0, 28, '2023-06-24 18:40:01'),
(33, 'hola', '{\"JKtEW\":\"si \",\"rKoAP\":\"no\",\"rlGFD\":\"porque\"}', 'check_opt', 0, 12, '2023-06-30 01:47:13'),
(34, 'ssss', '', 'textfield_s', 0, 12, '2023-06-30 01:47:27'),
(35, 'asas', '[]', 'radio_opt', 0, 12, '2023-06-30 01:47:46'),
(36, 'Prueba', '{\"Xfdwv\":\"Bueno\",\"FYAgp\":\"Malo\"}', 'check_opt', 0, 6, '2023-07-01 18:42:10'),
(37, 'sdsdsd', '{\"BwJMq\":\"sdsds\",\"wgulr\":\"dsdsd\",\"oAasZ\":\"sdsdsds\"}', 'check_opt', 0, 33, '2023-07-08 18:15:23'),
(38, 'nacionalidad', '', 'textfield_s', 0, 33, '2023-07-08 18:15:34'),
(39, 'Cual es tu orientacion', '{\"sVWte\":\"S\",\"zPrus\":\"F\"}', 'radio_opt', 0, 33, '2023-07-13 04:37:40'),
(40, 'Familia', '', 'textfield_s', 0, 33, '2023-07-17 14:58:44'),
(41, 'nombre', '', 'textfield_s', 0, 38, '2023-07-17 15:14:34'),
(42, 'sexo', '{\"pRTxg\":\"masculino\",\"Oeipv\":\"femenino\"}', 'radio_opt', 0, 38, '2023-07-17 15:14:52'),
(43, 'prueba', '{\"vYGqI\":\"papa\",\"mtZOV\":\"mama\"}', 'check_opt', 0, 38, '2023-07-17 15:18:03'),
(44, 'prueba', '{\"ABkKJ\":\"1\",\"jUxob\":\"2\",\"XvERM\":\"3\"}', 'check_opt', 0, 38, '2023-07-17 20:45:30'),
(45, 'sss', '', 'textfield_s', 0, 38, '2023-07-17 22:00:19'),
(46, 'sssss', '{\"CsKxD\":\"1\",\"IcrBF\":\"2\"}', 'check_opt', 0, 38, '2023-07-17 22:00:29'),
(47, 'sssss', '', 'textfield_s', 0, 40, '2023-07-17 22:04:44'),
(48, 'sssss', '{\"TzkJt\":\"1\",\"lnWdF\":\"2\"}', 'radio_opt', 0, 40, '2023-07-17 22:04:54'),
(49, 'social', '', 'textfield_s', 0, 33, '2023-07-19 20:22:07'),
(50, 'prueba 3', '[]', 'radio_opt', 0, 33, '2023-07-21 13:56:06'),
(51, 'prueba tres', '{\"aXBbe\":\"1\",\"lGsKE\":\"2\"}', 'radio_opt', 0, 38, '2023-07-21 13:57:00'),
(53, 'pregunta de prueba', '{\"eUHvh\":\"verdadero\",\"gHCZV\":\"falso\"}', 'radio_opt', 0, 42, '2023-07-24 20:25:24'),
(54, 'LE ATENDIERON BIEN EN LA RECEPCION?', '{\"ZXVNR\":\"SI\",\"QBGgk\":\"NO\"}', 'radio_opt', 0, 45, '2023-08-02 19:55:48'),
(55, 'EN CUANTO TIEMPO TE ATENDIERON?', '', 'textfield_s', 0, 45, '2023-08-02 20:08:03'),
(56, 'NOS RECOMENDARIA NUEVAMENTE?', '[]', 'radio_opt', 0, 45, '2023-08-02 20:09:48'),
(57, 'cual es la verdad absoluta?', '{\"GgDlA\":\"todas\",\"CtiKk\":\"ninguna\",\"csNnd\":\"la que tu creas\"}', 'check_opt', 0, 6, '2023-08-07 18:53:11'),
(58, 'Pregunta tipo 1', '{\"KrxcG\":\"Si\",\"UjtXD\":\"No\",\"DvYzu\":\"Tal vez\"}', 'radio_opt', 1, 47, '2023-08-08 22:54:04'),
(59, 'Tipo 2', '', 'textfield_s', 2, 47, '2023-08-08 22:55:10'),
(60, 'como estas', '', 'textfield_s', 0, 27, '2023-08-11 16:52:52'),
(61, '', '{\"HVkAu\":\"si\",\"EsPxt\":\"no\"}', 'radio_opt', 0, 27, '2023-08-11 16:53:37'),
(62, 'dfdf', '', 'textfield_s', 0, 33, '2023-08-11 21:58:11'),
(63, 'ffdfdf', '{\"rFGzY\":\"\",\"imzlX\":\"\"}', 'check_opt', 0, 33, '2023-08-11 21:59:37'),
(64, 'sabes', '[]', 'radio_opt', 0, 33, '2023-08-11 22:14:52'),
(65, '', '[]', 'radio_opt', 0, 6, '2023-08-12 02:16:09'),
(66, '', '[]', 'radio_opt', 0, 6, '2023-08-12 02:16:17'),
(68, 'PREGUNTA DE PRUEBA 01', '{\"ToHly\":\"RESPUESTA 01\",\"VELTI\":\"RESPUESTA 02\",\"qoKzd\":\"RESPUESTA 03\",\"cVwjF\":\"RESPUESTA 04\",\"cZHXD\":\"RESPUESTA 05\"}', 'radio_opt', 0, 49, '2023-08-15 20:54:05'),
(69, 'PREGUNTA DE PRUEBA 02', '{\"WNgJi\":\"RESPUESTA 01\",\"XQIoH\":\"RESPUESTA 02\",\"eHEdP\":\"RESPUESTA 03\",\"JMdkb\":\"RESPUESTA 04\",\"UrtAJ\":\"RESPUESTA 05\"}', 'radio_opt', 0, 49, '2023-08-15 21:00:22'),
(72, 'Test', '{\"UpoxM\":\"Verdad\",\"bykUQ\":\"Falso\"}', 'radio_opt', 3, 7, '2023-08-25 16:30:07'),
(73, 'qqq', '{\"HTznB\":\"g\",\"PXaRh\":\"g\",\"fmlZo\":\"r\"}', 'check_opt', 0, 33, '2023-08-29 20:38:23'),
(74, '', '', 'textfield_s', 0, 33, '2023-08-31 18:03:18'),
(75, 'COLORES DE ESTUCHES A24', '{\"kCpNH\":\"ROJO\",\"pmBSA\":\"AZUL\",\"xJwrO\":\"LILA\",\"AteEP\":\"FLOREADO\",\"lQSev\":\"TRANSPARENTE\",\"zTLcd\":\"NEGRO\",\"PAuEF\":\"DISEu00d1O DAMA\",\"caFoY\":\"DISEu00d1O CABALLERO\"}', 'check_opt', 0, 55, '2023-09-02 17:08:11'),
(76, 'Que es la IA', '', 'textfield_s', 0, 56, '2023-09-08 13:57:43'),
(77, 'que es ', '{\"eXLFQ\":\"si\",\"trwSu\":\"no\"}', 'check_opt', 0, 33, '2023-09-12 03:22:48'),
(78, '1.- Evalua el proceso', '{\"HMeFd\":\"1\",\"GtPOx\":\"2\",\"oRQCz\":\"3\",\"RUoaj\":\"4\"}', 'radio_opt', 0, 57, '2023-09-13 16:06:59'),
(79, 'Otra prueba', '{\"OIxvD\":\"respuesta1\",\"SAkwE\":\"respuesta2\"}', 'radio_opt', 0, 42, '2023-09-15 12:27:11'),
(80, 'hola que ', '{\"FtDRd\":\"que tal\",\"UgyBQ\":\"op\",\"NCXrE\":\"mbaetweko\"}', 'radio_opt', 0, 58, '2023-09-18 19:26:05'),
(81, '¿es usted humano?', '{\"MGmVW\":\"si\",\"DzVGP\":\"no\"}', 'radio_opt', 0, 60, '2023-09-26 00:39:19'),
(82, '¿cuantos ojos tiene?', '{\"RlZzM\":\"1\",\"cslZm\":\"2\",\"piTWC\":\"3\",\"wCEYp\":\"4\"}', 'radio_opt', 0, 60, '2023-09-26 00:41:18'),
(83, 'Pocibles Nombres de la UP', '', 'textfield_s', 0, 61, '2023-09-28 15:16:19'),
(84, 'Tienes Facebook ?', '{\"MKjHt\":\"SI\",\"JbOjw\":\"NO\"}', 'radio_opt', 0, 62, '2023-09-30 03:32:49'),
(85, 'Con que frecuencia usas las redes sociales ?', '{\"ANHbj\":\"Bajo\",\"csqnV\":\"Medio\",\"KfmFb\":\"Mucho\"}', 'check_opt', 0, 62, '2023-09-30 03:34:10'),
(86, 'Describe tu experiencia que tuviste en las redes sociales ', '', 'textfield_s', 0, 62, '2023-09-30 03:35:12'),
(87, 'hola no tengo idea como se usa', '{\"kgxMn\":\"imagino aqui va uno\",\"ctZrd\":\"y aqui va otro\"}', 'radio_opt', 0, 9, '2023-10-06 16:15:34'),
(88, '', '{\"rGaYP\":\"casa1\",\"axEFd\":\"casa2\"}', 'radio_opt', 0, 66, '2023-10-06 16:21:02'),
(89, '¿En qué dispositivo ves los sitios de redes sociales?', '{\"zLmoU\":\"Portu00e1tiles / computadoras de escritorio\",\"rxXJh\":\"Tabletas como Ipads\",\"wndgA\":\"Telu00e9fonos mu00f3viles\"}', 'check_opt', 0, 62, '2023-10-12 05:15:24'),
(90, 'test', '{\"QKEcB\":\"tes1\",\"jZgte\":\"test2\",\"gizEu\":\"test32\"}', 'radio_opt', 0, 69, '2023-10-13 14:51:19'),
(91, 'rtytyry', '{\"rHkoY\":\"yrytt\",\"YbijV\":\"rtyrty\",\"HMFzQ\":\"rtyrtyrty\",\"JUcGQ\":\"rtyrtyrty\"}', 'radio_opt', 0, 70, '2023-10-17 20:28:55'),
(92, 'rtyrtyrty', '[]', 'radio_opt', 0, 70, '2023-10-17 20:29:13'),
(93, 'AA', '{\"HAMkS\":\"N\",\"RBqZA\":\"S\",\"xrqKL\":\"T\"}', 'radio_opt', 0, 62, '2023-10-19 14:50:07'),
(94, 'AS', '{\"nIyKQ\":\"A\",\"ncHYV\":\"AA\"}', 'radio_opt', 0, 62, '2023-10-19 14:51:25'),
(95, 'edwdasdasd', '{\"uDZBn\":\"dsdsd78\",\"qouyt\":\"tryhjyhjyttyh\",\"uJLxm\":\"uyiop7\"}', 'check_opt', 2, 7, '2023-10-19 16:15:34'),
(96, 'gfhg', '', 'textfield_s', 1, 7, '2023-10-20 21:01:48'),
(97, 'sgsdssdfsdf', '{\"Fyzav\":\"rfrfrff\",\"aUsmz\":\"dsfsddsfsdf\",\"AXkYj\":\"sfsfsddsf\",\"cwMYJ\":\"sdfsdfyhtrhrth\",\"nRSGE\":\"rthrtyhrth\"}', 'check_opt', 0, 71, '2023-10-20 21:04:42'),
(98, 'Limpieza Circulo', '{\"EagkO\":\"si\",\"ObpEl\":\"no\",\"HKfIp\":\"talvez\"}', 'radio_opt', 1, 73, '2023-10-22 01:46:49'),
(99, 'Lipieza cuadro', '{\"ejHNg\":\"Bien\",\"kWZLr\":\"Mal\",\"qajct\":\"Maso\",\"fYszC\":\"Shuco\"}', 'check_opt', 2, 73, '2023-10-22 01:55:13'),
(100, 'Text', '', 'textfield_s', 3, 73, '2023-10-22 01:55:25'),
(101, 'Cuantos años tiene', '', 'textfield_s', 0, 74, '2023-10-23 20:44:01'),
(102, 'Lugar de nacimiento', '{\"oyzYw\":\"Cusco\",\"kIKue\":\"Arequipa\",\"qjwFR\":\"LIma\"}', 'check_opt', 0, 74, '2023-10-23 20:44:27'),
(103, 'Que tipos de medios de comunicación conoces ?', '{\"KNlUO\":\"Radio\",\"ynmJX\":\"Tele\",\"jxYGp\":\"Facebook\",\"ZdULb\":\"Tik ToK\"}', 'check_opt', 1, 77, '2023-10-28 18:49:45'),
(104, 'Conoces TV ?', '{\"Jjydb\":\"SI\",\"dLNcJ\":\"NO\"}', 'radio_opt', 3, 77, '2023-10-28 18:51:03'),
(105, 'Escribe sobre medios de comunicación.', '', 'textfield_s', 2, 77, '2023-10-28 18:51:22'),
(106, 'ddddddddddd', '{\"VeUmM\":\"d\",\"tUBgO\":\"d\",\"gVXhP\":\"d\",\"kZDQt\":\"d\"}', 'check_opt', 0, 7, '2023-11-01 18:22:55'),
(107, 'Nombre del usuario:', '', 'textfield_s', 0, 80, '2023-11-02 15:18:27'),
(108, 'Numero de empleado: ', '', 'textfield_s', 0, 80, '2023-11-02 15:18:43'),
(109, '¿En horas de trabajo le da sueño?', '{\"rxtRu\":\"SI\",\"qPcLe\":\"NO\"}', 'radio_opt', 0, 80, '2023-11-02 15:19:40'),
(110, 'COMOE BIEN?', '{\"dBGEx\":\"SI\",\"lQAXy\":\"NO\"}', 'check_opt', 0, 82, '2023-11-04 16:49:17'),
(111, 'PADECE SUEÑO', '{\"LBmcT\":\"SI \",\"dvhlr\":\"NO\"}', 'check_opt', 0, 82, '2023-11-04 16:49:46'),
(112, 'holasd', '{\"mcFgE\":\"dgdfg\",\"UGOsu\":\"sgsdg\",\"XzCvm\":\"dsgsdg\"}', 'check_opt', 0, 83, '2023-11-09 23:54:39'),
(113, 'NNNNNNNNNNNN', '{\"CoUHN\":\"BBB\",\"PgxGu\":\"GGG\",\"sIoUY\":\"FFFFF\"}', 'radio_opt', 0, 7, '2023-11-15 22:43:36'),
(114, 'DDD', '', 'textfield_s', 0, 7, '2023-11-15 22:47:35'),
(115, 'Promueve valores de culta de locura de objetivos de locos', '{\"tSfTY\":\"Nunca\",\"gDmSW\":\"Rara Vez\",\"UoBiL\":\"Algunas Veces\",\"EtbJB\":\"Frecuente\",\"axzKH\":\"Simpre\"}', 'check_opt', 0, 85, '2023-11-17 21:35:23'),
(116, 'Toma decisiones y ajusta sus prioridades en función de las necesidades de la Organización ', '{\"LpeiV\":\"Nunca\",\"pLRdC\":\"Rara vez\",\"zIvld\":\"Algunas veces\",\"aVJIk\":\"Frecuente\",\"EpZrn\":\"Siempre\"}', 'check_opt', 0, 85, '2023-11-17 21:44:06'),
(117, 'Expresa lazos afectivos y sentido ', '{\"jRkJX\":\"Nunca\",\"QiZmO\":\"Rara Vez\",\"vUSnC\":\"Algunas Veces\"}', 'check_opt', 0, 85, '2023-11-17 21:45:21'),
(118, 'Nombre del Colaborador:', '', 'textfield_s', 0, 86, '2023-11-21 22:04:46'),
(119, 'Area:', '{\"cBsGn\":\"RH\",\"NuWtO\":\"BI\",\"HForY\":\"FINANZAS\"}', 'check_opt', 0, 86, '2023-11-21 22:05:32'),
(120, 'Puesto', '{\"ScULQ\":\"Analista de TH\",\"AOQsc\":\"Asistente RH\"}', 'radio_opt', 0, 86, '2023-11-21 22:10:07'),
(121, 'Pais', '{\"XRxQO\":\"El Salvador\",\"ljXPq\":\"Guatemala\"}', 'radio_opt', 0, 86, '2023-11-21 22:11:50'),
(122, 'utiliza la cultura', '{\"whrRt\":\"nunca\",\"HvrQw\":\"rara vez\",\"erxPY\":\"algunas veces\"}', 'check_opt', 0, 86, '2023-11-21 22:15:02'),
(123, 'ffff', '', 'textfield_s', 1, 13, '2023-12-09 04:20:30'),
(124, 'primera pregunta', '{\"rAePF\":\"\",\"pohUc\":\"\",\"matfu\":\"\",\"gHYOM\":\"\"}', 'check_opt', 0, 25, '2023-12-11 18:27:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `survey_set`
--

CREATE TABLE `survey_set` (
  `id` int(30) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `user_id` int(30) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `survey_set`
--

INSERT INTO `survey_set` (`id`, `title`, `description`, `user_id`, `start_date`, `end_date`, `date_created`) VALUES
(6, '<H1>SISTEMA VULNERABLE</h1>', '<H1>SISTEMA VULNERABLE</h1>', 0, '2022-08-23', '2023-08-07', '2022-08-23 09:15:41'),
(7, '<H1>SISTEMA VULNERABLE</h1>', '<H1>SISTEMA VULNERABLE</h1>', 0, '2022-08-23', '2022-08-24', '2022-08-23 14:21:47'),
(10, '<H1>SISTEMA VULNERABLE</h1>', '<H1>SISTEMA VULNERABLE</h1>', 0, '2023-06-01', '2023-07-01', '2023-05-26 23:19:24'),
(12, '<H1>SISTEMA VULNERABLE</h1>', '<H1>SISTEMA VULNERABLE</h1>', 0, '2023-05-11', '2023-06-10', '2023-05-31 22:35:08'),
(13, 'CAB - Ejemplo', 'Prueba', 0, '2023-06-05', '2023-06-23', '2023-06-03 02:48:09'),
(14, 'Mascotas', 'Prueba', 0, '2023-06-14', '2023-06-30', '2023-06-07 15:51:45'),
(15, 'Cuestionario Honey', 'test de psicologia', 0, '2023-06-10', '2023-06-15', '2023-06-08 03:30:51'),
(16, 'sol', 'cliente', 0, '2023-06-08', '2024-05-08', '2023-06-08 23:28:01'),
(17, 'Demo', 'es un ejemplo', 0, '2023-06-12', '2023-07-12', '2023-06-13 02:28:51'),
(18, 'ii', '999', 0, '2023-06-24', '2023-06-21', '2023-06-13 19:41:51'),
(19, 'probando', 'encuesta de ambiente', 0, '2023-06-14', '2023-06-15', '2023-06-14 16:36:40'),
(20, 'Encuesta Diputados', 'encuesta a diputados departamental', 0, '2023-06-17', '2023-06-17', '2023-06-17 06:54:10'),
(21, 'Prueba', 'Nueva', 0, '2023-06-17', '2023-06-18', '2023-06-18 01:09:13'),
(22, 'Prueba 1', 'Prueba ', 0, '2023-06-19', '2023-06-19', '2023-06-18 18:28:21'),
(23, 'Encuesta gg', 'ESta encuesta es gg', 0, '2023-06-09', '2023-06-25', '2023-06-19 20:18:41'),
(25, 'mmmmmmm', 'mmmmmmmm', 0, '2023-06-09', '2023-06-15', '2023-06-20 21:08:35'),
(26, 'alsmda', 'Prueba', 0, '2023-06-14', '2023-06-17', '2023-06-22 08:50:59'),
(27, '<H1>SISTEMA VULNERABLE</h1>', '<H1>SISTEMA VULNERABLE</h1>', 0, '2023-01-01', '2024-01-01', '2023-06-22 15:55:11'),
(28, 'A padecido de Covid19 ?', 'encuesta general', 0, '2023-06-24', '2023-07-01', '2023-06-24 18:34:33'),
(29, 'satisfaccion', 'satisfaccion global', 0, '2023-06-26', '2023-07-29', '2023-06-26 20:01:55'),
(30, 'Ejemplo', 'Emplo1', 0, '2023-06-14', '2023-06-21', '2023-06-28 21:47:18'),
(31, 'Prueba', 'Prueba 1', 0, '2023-06-29', '2023-06-29', '2023-06-30 01:46:13'),
(32, 'hola', 'dfhdfgdfd', 0, '2023-07-12', '2023-07-28', '2023-07-02 20:09:38'),
(34, 'NPS', 'Test', 0, '2023-07-09', '2023-11-30', '2023-07-09 07:21:43'),
(35, 'encuesta', 'saa', 0, '2023-07-14', '2031-12-14', '2023-07-14 14:13:08'),
(36, 'as', 'asas', 0, '2023-07-14', '2023-07-14', '2023-07-14 22:15:48'),
(37, 'prueba', 'pruebaenc', 0, '2023-07-14', '2023-07-14', '2023-07-14 22:17:06'),
(38, 'prueba jav', 'prueba final', 0, '2023-07-01', '2023-07-31', '2023-07-17 15:13:57'),
(39, 'sss', 'ssss', 0, '2023-07-17', '2023-07-26', '2023-07-17 22:03:50'),
(40, 'dueño', 'ssss', 0, '2023-07-17', '2023-07-18', '2023-07-17 22:04:29'),
(41, 'prueba', 'prueba', 0, '2023-07-19', '2023-07-20', '2023-07-19 19:23:45'),
(42, 'sicometrico', 'prueba sicometrica', 0, '2023-07-24', '2023-07-28', '2023-07-24 20:23:34'),
(43, 'ffefee', 'efefe', 0, '2023-07-25', '2023-07-25', '2023-07-25 15:19:15'),
(44, '<H1>SISTEMA VULNERABLE</h1>', '<H1>SISTEMA VULNERABLE</h1>', 0, '2023-08-02', '2023-08-09', '2023-08-02 16:54:57'),
(45, 'ENCUESTA DE SATISFACCION ', 'DESCRIBA A TRAVES DE UN CHECK  LA ENCUESTA DE SATISFACCION ', 0, '2023-08-02', '2023-08-02', '2023-08-02 19:53:32'),
(46, 'juan12', 'fgh', 0, '2023-08-18', '2023-09-08', '2023-08-03 21:53:39'),
(47, 'Prueba de encuesta', 'Prueba de encuesta', 0, '2023-08-09', '2023-08-10', '2023-08-08 22:50:24'),
(48, '<H1>SISTEMA VULNERABLE</h1>', '<H1>SISTEMA VULNERABLE</h1>', 0, '2023-08-12', '2023-08-12', '2023-08-13 04:47:37'),
(49, 'RIESGO DE DESERSION', 'CUESTIONARIO DE RIESGO DE DESERSION ', 0, '2023-08-15', '2023-08-18', '2023-08-15 20:51:12'),
(50, 'ffg', 'Cxvbh', 0, '2023-08-01', '2023-08-31', '2023-08-20 03:39:44'),
(51, 'Votacion', 'Votacion', 0, '2023-08-21', '2023-08-23', '2023-08-21 17:39:31'),
(52, 'Nueva Prueba de Encuesta', 'Va...', 0, '2023-08-21', '2023-08-21', '2023-08-21 19:03:28'),
(53, 'a', 'csd', 0, '2023-08-24', '2023-08-26', '2023-08-24 20:03:04'),
(54, 'zsfsfd', 'holasdasdasd', 0, '2023-08-05', '2023-08-27', '2023-08-25 15:25:04'),
(55, 'COLORES DE ESTUCHES', 'COLORES DE ESTUCHES', 0, '2023-09-02', '2023-09-03', '2023-09-02 16:53:37'),
(56, 'Prueba', 'Prueba', 0, '2023-09-08', '2023-09-08', '2023-09-08 13:56:30'),
(57, 'Prueba COP', 'Encuesta de apreciación del servicio', 0, '2023-09-01', '2023-09-30', '2023-09-13 16:05:09'),
(58, 'prueba', 'prueba', 0, '2023-09-18', '2023-09-18', '2023-09-18 15:53:51'),
(59, 'tret', 'tytry', 0, '2023-09-20', '2023-09-20', '2023-09-20 21:16:33'),
(60, 'prueba #3', 'esto es una prueba de encuesta', 0, '2023-09-25', '2023-09-27', '2023-09-26 00:37:18'),
(61, 'orden de sercvicio', 'orden de servicio', 0, '2023-09-01', '2023-12-31', '2023-09-28 15:14:21'),
(62, 'Redes sociales 2023', 'Encuesta sobre el uso de las redes sociales', 0, '2023-09-29', '2023-09-30', '2023-09-30 03:28:43'),
(63, 'q', 'qqq', 0, '2023-10-05', '2023-10-11', '2023-10-04 17:02:35'),
(64, 'Encuesta sobre preferencias de comida', 'Tiene valides de 2 días hasta las 00:00', 0, '2023-10-04', '2023-10-06', '2023-10-04 22:22:10'),
(65, 'quien ganara', 'tomasa\r\nramona', 0, '2023-10-06', '2023-10-14', '2023-10-06 16:13:42'),
(66, 'casa', 'mi casa\r\ntu casa\r\n', 0, '2023-10-06', '2023-10-08', '2023-10-06 16:20:21'),
(67, 'Producto estrella', 'Valorar acogida proiducto', 0, '2023-10-10', '2023-10-13', '2023-10-09 18:10:04'),
(68, 'test', 'test', 0, '2023-10-09', '2023-10-30', '2023-10-12 12:00:54'),
(69, 'PRM', 'test', 0, '2023-10-13', '2023-10-13', '2023-10-13 14:49:33'),
(70, 'rtyrt', 'rtyrty', 0, '2023-10-17', '2023-10-17', '2023-10-17 20:28:14'),
(71, 'rtyrtyrty', 'hrtyrtyh', 0, '2023-10-17', '2023-10-17', '2023-10-17 21:39:36'),
(72, 'Test', 'Test\r\n', 0, '2023-10-18', '2023-11-11', '2023-10-18 21:03:00'),
(73, 'Prueba GAS', 'Prueba de encuesta GAS', 0, '2023-10-21', '2024-09-21', '2023-10-22 01:46:09'),
(74, 'Encuesta demo', 'uso de demo', 0, '2023-10-23', '2023-10-24', '2023-10-23 20:42:56'),
(75, 'jose', 'encuesta de clliente', 0, '2023-10-26', '2023-10-31', '2023-10-26 15:18:06'),
(76, 'rgge', 'ñl', 0, '2023-10-27', '2023-11-29', '2023-10-27 13:40:17'),
(77, 'MEDIO DE COMUNICACIÓN', 'ENCUESTA SOBRE MEDIOS DE COMUNICACIÓN', 0, '2023-10-28', '2023-10-31', '2023-10-28 18:48:23'),
(78, 'prueba 31', 'dsdsdsdsdsdsd', 0, '2023-10-31', '2023-11-01', '2023-10-31 15:31:25'),
(79, 'prueba', 'dsfadsfadf', 0, '2023-11-01', '2023-11-10', '2023-11-02 12:38:46'),
(80, 'RRHH', 'Esta es una prueba de encuesta RRHH', 0, '2023-11-02', '2023-11-05', '2023-11-02 15:17:44'),
(81, 'metadato', 'Contesta a conciencia ', 0, '2023-11-03', '2023-11-04', '2023-11-03 21:40:00'),
(82, 'encuentas 6 meses', 'encuenta neurologico', 0, '2023-11-01', '2023-12-31', '2023-11-04 16:43:57'),
(83, 'aaaa', 'hola solo es una prueva', 0, '2023-11-10', '2023-11-10', '2023-11-09 23:53:34'),
(84, 'Formulario 5S', 'Informacion de 5S', 0, '2023-11-15', '2023-12-10', '2023-11-15 21:20:57'),
(85, 'ENCUENTA DE EVALUACION DE COMPETENCIAS', 'INDICACIONES:\r\nEsta encuesta tiene por objeto conocer los comportamientos laborales habituales a través de la descripción. La información resultante ofrecerá indicios sobre el estado actual de las competencias de sus colaboradores.\r\nUsted mismo procesará esta encuesta de modo que los resultados serán conocidos solamente por usted. Cuando termine de contestar el examinador le explicará cómo procesar sus resultados.\r\nLea cada frase y determine la frecuencia con la que USTED ha observado ese comportamiento en su actual lugar de trabajo o, en su defecto, en situaciones de trabajo pasadas. Responda según la siguiente escala:\r\n', 0, '2023-11-12', '2023-11-30', '2023-11-17 21:31:15'),
(86, 'Encuenta de evaluacion de competencias ', 'Indicaciones', 0, '2023-11-21', '2023-11-30', '2023-11-21 22:03:29'),
(87, 'aaa', 'aaaa', 0, '2023-12-07', '2023-12-08', '2023-12-06 20:19:23'),
(88, 'prueba', 'pruiaaaaa', 0, '2024-12-12', '2024-12-13', '2023-12-11 18:23:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 3 COMMENT '1=Admin,2 = Staff, 3= Subscriber',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `middlename`, `contact`, `address`, `email`, `password`, `type`, `date_created`) VALUES
(1, '<H1>SISTEMA VULNERABLE</h1>', '<H1>SISTEMA VULNERABLE</h1>', '<H1>SISTEMA VULNERABLE</h1>', '<H1>SISTEMA VULNERABLE</h1>', '<H1>SISTEMA VULNERABLE</h1>', 'hola@configuroweb.com', '4b67deeb9aba04a5b54632ad19934f26', 1, '2020-11-10 08:43:06'),
(5, 'Pedro', 'Encuesta', '', '3142341324', 'Calle 56 56 45', 'pencuesta@cweb.com', 'd41d8cd98f00b204e9800998ecf8427e', 3, '2022-08-23 09:14:34'),
(6, 'Pedro', 'Staff', '', '3142341254', 'Calle 90 90 90', 'pstaff@cweb.com', '4b67deeb9aba04a5b54632ad19934f26', 2, '2022-08-23 09:23:22'),
(8, 'gigi', 'gg', 'gg', 'gg', 'gg', 'gg@gg.com', 'e10adc3949ba59abbe56e057f20f883e', 3, '2023-06-19 20:29:38'),
(9, 'JAIR', 'COBOS RANGEL', '', '33333', 'call25', 'doctor@gmail.com', '202cb962ac59075b964b07152d234b70', 3, '2023-06-26 20:04:15'),
(10, 'Javier', 'pedro', 'eee', 'eee', 'e', 'javier@hotmail.com', 'c7ff0da1172c2a2b76470c9f83951c15', 1, '2023-07-17 22:02:03'),
(12, 'aa', 'dd', 'ss', '2', '3', '123@123.es', '202cb962ac59075b964b07152d234b70', 3, '2023-08-08 07:59:08'),
(13, 'Juan', 'Perez', '', '123456789', 'Administrador', 'juanperez@abc.com', '25f9e794323b453885f5181f1b624d0b', 1, '2023-08-13 04:46:12'),
(14, 'admin', 'admin', 'admin', 'admin', 'admin', 'admin@admin.com', 'c93ccd78b2076528346216b3b2f701e6', 3, '2023-08-17 04:49:07'),
(15, 'uspro', 'uspro', 'uspro', 'uspro', 'uspro', 'uspro@uspro.com', 'a1c03f65b508bc7dbf80e17a529e39d6', 3, '2023-08-17 04:54:07'),
(16, 'Prueba', 'Prueba ', 'Prueba', 'Prueba ', 'Prueba ', 'prueba@prueba.com', '2a0817c8b7dc2a4706f51b4c1965dbd9', 3, '2023-08-17 05:02:25'),
(17, '<h1>SISTEMA VULNERABLE</h1>', 'a', '', 'a', 'a', 'cel@a.com', '827ccb0eea8a706c4c34a16891f84e7b', 3, '2023-09-02 17:03:01'),
(18, 'VILLA ELISA', 'a', '', 'a', 'a', 'villa@sn.com', '202cb962ac59075b964b07152d234b70', 3, '2023-09-02 17:10:31'),
(19, 'NICOLAS', 'CABRERA', '', 'NICOLAS', 'CONOCIDO', 'nicolas.cabrera@tapachula.tecnm.mx', '827ccb0eea8a706c4c34a16891f84e7b', 3, '2023-09-07 12:45:20'),
(20, 'Prueba ', 'Kkkk', 'Hh', '6679999', 'Hhkkl', 'prueba@gmail.com', '25d55ad283aa400af464c76d713c07ad', 3, '2023-09-08 13:55:39'),
(21, 'eas', 'eas', 'eas', 'eas', 'easeas', 'eas@correo.com', 'f58c3ba6e10aa6581680e62eb5381d20', 3, '2023-09-15 19:50:28'),
(22, 'antonio josé', 'garcia', '', '666666666', 'afafaf', 'prueba1@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 3, '2023-09-18 10:32:48'),
(23, 'prueba', 'prueba', 'prueba', 'prueba', 'prueba', 'caballerodani2@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 3, '2023-09-18 15:53:30'),
(24, 'prueba', 'prueba', 'prueba', 'prueba', 'prueba', 'pruseba@gmail.com', 'c893bad68927b457dbed39460e6afd62', 3, '2023-09-18 19:27:15'),
(25, 'El mas fregon', 'xxx', 'progamando', 'xxx', 'por eso estoy buscando codigo ', 'fregon@programando.com', 'e10adc3949ba59abbe56e057f20f883e', 3, '2023-09-20 21:16:02'),
(26, 'Make', 'Clone', 'Rob', '15121413', 'calle 48 59', 'make@example.com', '25d55ad283aa400af464c76d713c07ad', 3, '2023-09-24 14:34:48'),
(27, 'Miguel', 'Vega', 'Angel', '77234562', 'Navegando el internet Z/23', 'miguel@gmail.com', '9eb0c9605dc81a68731f61b3e0838937', 3, '2023-09-30 03:19:28'),
(28, 'luis', 'flores', 'vega', '1234567', 'descripcion', 'luis@gmail.com', '502ff82f7f1f8218dd41201fe4353687', 3, '2023-09-30 03:55:48'),
(29, 'franklin', 'quintero', 'jose', '04246320103', 'mi casa', 'franklinjquintero@gmail.com', 'd2e4bf17a2c22d43634d11c5edceed47', 3, '2023-10-06 16:08:01'),
(30, 'Juan', 'Perez', '', '37283143', 'Guatemala,Centro America', 'issuescbm@gmail.com', '409552030b992103e7662965d39f7934', 3, '2023-11-02 15:22:25'),
(31, 'Pedro ', 'Garcia', '', '40516600', 'Ciudad de Quetzaltenango', 'classpoo2021@gmail.com', '3491655b08f24c7f73a477e3b83df743', 3, '2023-11-02 20:24:44'),
(32, 'javier', 'chan', 'antonio', 'wdwd', 'ASAS', 'JAVC@HOTMAIL.COM', '202cb962ac59075b964b07152d234b70', 3, '2023-11-04 16:46:52'),
(33, 'JFJF', 'JFJ', 'JFJF', 'PRUEBAS', 'pruewba', 'wendez@gmail.com', '029d0c95b376a2a2909c3615f1ca37a8', 3, '2023-11-17 22:02:35'),
(34, 'Sara', 'Montoya', 'ss', 'gfsdg', 'gfds', 'smontoya@gmail.com', '029d0c95b376a2a2909c3615f1ca37a8', 2, '2023-11-17 22:53:32');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `survey_set`
--
ALTER TABLE `survey_set`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT de la tabla `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT de la tabla `survey_set`
--
ALTER TABLE `survey_set`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

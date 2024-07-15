-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 29, 2024 at 04:22 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gestion_camions2`
--

-- --------------------------------------------------------

--
-- Table structure for table `Affectation_Tracteur_Citerne`
--

CREATE TABLE `Affectation_Tracteur_Citerne` (
  `TracteurID` int(11) NOT NULL,
  `CiterneID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Affectation_Tracteur_Citerne`
--

INSERT INTO `Affectation_Tracteur_Citerne` (`TracteurID`, `CiterneID`) VALUES
(284, 286),
(285, 287),
(293, 288),
(294, 289),
(295, 290),
(296, 291),
(297, 292),
(306, 300),
(308, 301),
(309, 302),
(310, 303),
(311, 304);

-- --------------------------------------------------------

--
-- Table structure for table `ARTICLES`
--

CREATE TABLE `ARTICLES` (
  `ID` int(11) NOT NULL,
  `Image` varchar(200) NOT NULL DEFAULT '''''',
  `ArticlePK` smallint(6) DEFAULT NULL,
  `Code` varchar(50) DEFAULT NULL,
  `DESIGNATION` varchar(46) DEFAULT NULL,
  `PRIX_HT` varchar(8) DEFAULT NULL,
  `FOURNISSEURS` varchar(37) DEFAULT NULL,
  `Date_Enregistrement` date NOT NULL,
  `Date_Dern_Inspec` date NOT NULL,
  `Date_Proch_Inspec` date NOT NULL,
  `UniteID_Act` int(11) NOT NULL,
  `CategorieID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ARTICLES`
--

INSERT INTO `ARTICLES` (`ID`, `Image`, `ArticlePK`, `Code`, `DESIGNATION`, `PRIX_HT`, `FOURNISSEURS`, `Date_Enregistrement`, `Date_Dern_Inspec`, `Date_Proch_Inspec`, `UniteID_Act`, `CategorieID`) VALUES
(1, 'eau_radiateur.jpeg', 1235, 'WATPR010', 'EAU RADIATEUR 10%', '33,97', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1),
(2, 'eau_radiateur50.jpeg\n', 1236, 'DI100100', 'EAU RADIATEUR 50%', '117,3', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1),
(3, 'bague_injecteur.jpeg\n', 1237, 'VO1547880R', 'VOLVO 400 BAGUE INJECTEUR FH 123 NM', '110,8', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, 18),
(4, 'huile_moteur.jpeg', 1238, '15W40SHP20', 'HUILE EST 15W40 SHP 20LIT DM12', '139,37', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, 2),
(5, 'eau_batterie.jpeg', 1239, 'RAS1', 'EAU BATTERIE', '1,5', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, 3),
(6, 'servo_embrayage.jpeg', 1240, '524112KG', 'VOLVO 400 SERVO D\'EMBRAYAGE', '886,55', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, 30),
(8, 'silent_bloc.jpeg', 1242, 'VO20148429', 'SILENT BLOC SUSPENSION AVANT', '12,5', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, 14),
(9, 'bras_suspension2.jpeg', 1243, 'VO3933689', 'BRAS DE SUSPENSION AVANT', '98,26', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, 15),
(10, 'huile_moteur.jpeg', 1244, 'VEN154020', 'HUILE 15W40 CG4/CH4.20L', '149,175', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, 2),
(11, 'filter_aire.jpeg', 1245, 'VO21384115K', 'VOLVO 400 KIT FILTRE A AIR', '185,3', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, 9),
(12, '\'\'', 1246, 'VO655774', 'VOLVO 400 FILTRE A HUILE FH12', '36,206', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, 8),
(13, '\'\'', 1247, 'SC1117285', 'VOLVO 400 FILTRE 124', '27,79', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, 9),
(14, '\'\'', 1248, 'SC1997355W', 'VOLVO 400 FILTRE DESSICATEUR', '51', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, 10),
(15, 'servo_frein.jpeg', 1249, 'SC313477', 'VOLVO 400 SERVO DE FREIN 24/24', '173,196', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, 35),
(16, '\'\'', 1250, '7421693757', 'VOLVO KIT FILTRE A AIR', '225,142', 'RENAULT- LOUKIL VEHICULES INDUSTRIELS', '0000-00-00', '0000-00-00', '0000-00-00', 0, 9),
(17, '\'\'', 1251, '7423260135', 'VOLVO N FILTRE DESSICATEUR', '226,417', 'RENAULT- LOUKIL VEHICULES INDUSTRIELS', '0000-00-00', '0000-00-00', '0000-00-00', 0, 10),
(18, '\'\'', 1252, '', 'VOLVO JX DE PATTIN AVANT', '250,75', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, 49),
(19, 'eau_radiateur50.jpeg', 1253, 'DI132320', 'EAU RADIATEUR', '46,75', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1),
(20, 'thermostat.jpeg', 1254, 'VO20249560R', 'VOLVO 400 THERMOSTAT FH 13 ORI', '253,3', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, 38),
(21, 'jx_segment.jpeg', 1255, 'VO20477115', 'VOLVO 400 JX DE SEGMENTS FH', '144,5', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, 19),
(22, 'chemise.jpeg', 1256, 'VO20588154', 'VOLVO 400 CHEMISE FH', '277,7', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, 20),
(23, '\'\'', 1257, 'VO20850362M', 'VOLVO 400 JX COUSS BILELLE STD', '336,07', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, 21),
(24, '\'\'', 1258, 'VO21137935', 'VOLVO 400 POCHETTE SUP', '678,34', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, 22),
(25, '\'\'', 1259, 'PFDXIKEPR 1', 'VOLVO PACK FILTRATION DXI 11/13', '209,29', 'RENAULT- LOUKIL VEHICULES INDUSTRIELS', '0000-00-00', '0000-00-00', '0000-00-00', 0, NULL),
(26, '\'\'', 1260, 'VO251012+', 'VOLVO 400 FILTRE HABITACLE', '29,75', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, 12),
(27, '\'\'', 1261, 'DI3100106', 'RACCORD 8-6', '3,846', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, NULL),
(28, '\'\'', 1262, 'VO3953287', 'VOLVO 400 ATTACHE AILE DE ROUE AR FH', '17', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, NULL),
(29, '\'\'', 1263, 'OLY85W4020', 'HUILE DE PONT 85W140 20LT', '120', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, 5),
(30, '\'\'', 1264, 'VO1400676', 'VOLVO 400 NOURISSE D\'EAU', '153', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, 29),
(31, '\'\'', 1265, '85000645', 'VOLVO 400 TURBO', '2640,925', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, 27),
(32, '\'\'', 1266, '22*54 KG', 'CROISSION 22*54', '14,62', 'KADI', '0000-00-00', '0000-00-00', '0000-00-00', 0, NULL),
(33, '\'\'', 1267, 'VO156555+', 'VOLVO 400 VALVE DE BLOCAGE FH12', '106,981', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, 28),
(34, '\'\'', 1268, 'C.FEU', 'ACTROS COUVERCLE FEU ARRIERE GAUCHE', '13,0679', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, 42),
(35, '\'\'', 1269, 'CIT BAL', 'BALANCOIR + SILEN BLOC D 60', '246,5', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, 43),
(36, '\'\'', 1270, 'AXE BAL BPW', 'AXE BALANCOIRE BPW COMP', '84,876', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, 43),
(37, '\'\'', 1271, 'PONT', 'PNEU BRIDGESTONE 315/80R22,5 EU 156L/154M M729', '1270', 'SCP', '0000-00-00', '0000-00-00', '0000-00-00', 0, 47),
(38, '\'\'', 1272, 'DIRECTION', 'PNEU BRIDGESTONE 315/80R22,5 EU 156L 154M RSV1', '1240', 'SCP', '0000-00-00', '0000-00-00', '0000-00-00', 0, 47),
(39, '\'\'', 1273, 'BALLON', 'PNEU 385/65R22,5 PR 20 DSR 588', '910', 'ELWAFA PNEUMATIQUE', '0000-00-00', '0000-00-00', '0000-00-00', 0, 48),
(40, '\'\'', 1274, 'VO1369818', 'VOLVO FM400 BALAI ESSUI GLACE', '22,41', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, NULL),
(41, '\'\'', 1275, 'FERDOT4', 'HUILE DE FREIN DOT 4 FEREDO', '', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, 6),
(42, '\'\'', 1276, 'VO1475212', 'VOLVO 400 JOINT TUBE D\'EAU FH12-1', '', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, 31),
(43, '\'\'', 1277, 'VO1475214', 'VOLVO 400 JOINT TUBE D\'EAU FH12-2', '', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, 31),
(44, '\'\'', 1278, 'VO20148430', 'VOLVO 400 BAGUE SUSPENSION AVANT FH SUP', '', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, 17),
(45, '\'\'', 1279, 'VO20148431', 'VOLVO 400 BAGUE SUSPENSION AVANT FH INF', '', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, 17),
(46, '\'\'', 1280, 'VO20198235', 'VOLVO 400 JOINT RENIFLEUR', '', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, 23),
(47, '\'\'', 1281, 'VO2135053', 'VOLVO 400 TUBE POMPE A EAU FH400', '', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, 32),
(48, '\'\'', 1282, 'VO471708', 'VOLVO 400 JOINT CIRCUIT D\'EAU', '', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, NULL),
(49, '\'\'', 1283, 'TAIABE9018BULK', 'VOLVO 400 ALTERNATEUR ROULEMENT SUP', '', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, 33),
(50, '\'\'', 1284, 'VO1726913/247703', 'VOLVO FM 400 BOUCHON RESERVOIR', '', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, 41),
(51, '\'\'', 1285, '', 'VOLVO 400 MAITRE CYLINDRE FH 12 NM', '', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, 24),
(52, '\'\'', 1286, 'VO21565342KG', 'VOLVO 400 CABLE VITESSE FH12 NOIR', '', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, NULL),
(53, '\'\'', 1287, 'VO21565343KG', 'VOLVO 400 CABLE VITESSE FH12 GRIS', '', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, NULL),
(54, '\'\'', 1288, 'VO2847411', 'VOLVO 400 AMORTISSEUR CABINE FH12 AVANT', '', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, 26),
(55, '\'\'', 1289, 'VO524113 KG', 'VOLVO 400 CABLE DE PORTE', '', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, NULL),
(56, '\'\'', 1290, 'VO20225998', 'VOLVO 400 SERVO EMBRAYAGE', '', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, 30),
(57, '\'\'', 1291, 'VO1475212', 'VOLVO 400 JOINT TUBE D\'EAU FH12-2', '', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, 31),
(58, '\'\'', 1292, 'SNR6003EE', 'VOLVO 400 ALTERNATEUR ROULEMENT INF', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, 33),
(59, '\'\'', 1293, 'BOCF00M144123', 'VOLVO 400 ALTERNATEUR REGULATEUR', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, 33),
(60, '\'\'', 1232, 'RAS', 'RAS', '0,01', 'RAS', '0000-00-00', '0000-00-00', '0000-00-00', 0, NULL),
(61, '\'\'', 1233, 'DIV203202', 'ANTIFUITE RADIATEURHOLT 250ML', '10,96', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, 39),
(62, '\'\'', 1234, '20193968', 'CUVE DU GASOIL', '289,17', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, 40),
(63, '\'\'', 1294, 'VO20225998', 'VOLVO 400 CABLE DE PORTE', '', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, NULL),
(64, '\'\'', 1295, '247703', 'VOLVO FM 400 BOUCHON RESERVOIR', '', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, 41),
(65, '\'\'', 1296, 'DI300V', 'TUBE PATE A JOINT', '', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, NULL),
(66, '\'\'', 1298, 'OLYHU15D40', 'OLY EST DEOMAX DM5 20 L', '', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, NULL),
(67, '\'\'', 1299, 'HU721*KIT', 'VOLVO 400 FILTRE HUILE BOITE VITESSE', '', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, 13),
(68, '\'\'', 1300, 'MNGRESS01', 'BOITE GRAISSE EP2 0,8 KG', '', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, 7),
(69, '\'\'', 1301, 'DSR 588', 'PNEU 385/65R22,5 PR 20 DSR 588', '', 'WAFA PNEUMATIQUE', '0000-00-00', '0000-00-00', '0000-00-00', 0, 48),
(70, '\'\'', 1302, '505670', 'AXOR PHARE AVANT DROIT', '', 'SOCIETE ROCHDI HAMMAMI', '0000-00-00', '0000-00-00', '0000-00-00', 0, NULL),
(71, '\'\'', 1303, '9408200421', 'AXOR FEU GLIGNOTANT AVANT DROIT', '', 'MECA TRUCK DISTRIBUTION', '0000-00-00', '0000-00-00', '0000-00-00', 0, NULL),
(72, '\'\'', 1304, '15W40 TEKMA MEGA', 'MOTUL 15W40 CI 4TEKMA MEGA XLD 20 L', '235,94', 'BPS', '0000-00-00', '0000-00-00', '0000-00-00', 0, NULL),
(73, '\'\'', 1305, 'A-M15', 'BATTERIE ASSAD M15', '319,328', 'SO.CO.SUD', '0000-00-00', '0000-00-00', '0000-00-00', 0, NULL),
(74, '\'\'', 1306, 'A-M14', 'BATTERIE ASSAD M14', '277,31', 'SO.CO.SUD', '0000-00-00', '0000-00-00', '0000-00-00', 0, NULL),
(75, '\'\'', 1307, 'F10GPPG080S', 'FLEX.COMPOSITE DN 80 A PRESSION 10B', '210', 'SOTEM', '0000-00-00', '0000-00-00', '0000-00-00', 0, NULL),
(76, '\'\'', 1308, '05971000', 'VALVE DE REMORQUE (4 SORTIES R-FREIN)', '', 'COMPTOIR VEHICULE SUD', '0000-00-00', '0000-00-00', '0000-00-00', 0, NULL),
(77, '\'\'', 1309, '318802020', 'CITERNE CROCHET REGLAGE', '', 'COMPTOIR VEHICULE SUD', '0000-00-00', '0000-00-00', '0000-00-00', 0, NULL),
(78, '\'\'', 1310, '86233Z', 'KLAXCAR  H7 24 V', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, 53),
(79, '\'\'', 1311, 'GAUGB2085', 'ALARME DE RECULE', '', 'S.P.R.S', '0000-00-00', '0000-00-00', '0000-00-00', 0, 51),
(80, '\'\'', 1312, '20563354', 'VOLVO 400 RETROVISEUR GAUCHE', '', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, 52),
(81, '\'\'', 1313, '154788', 'VOLVO 400 BAGUE INJECTEUR FH12', '', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, 18),
(82, '\'\'', 1314, 'SK322 1-50', 'VOLVO NEC SELETTE 3 TROUS', '', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, 54),
(83, '\'\'', 1315, '312561 (009)', 'CIT AMORTISSEUR BPW SACHS', '', 'SFAX VEHICULES INDUSTRIELS', '0000-00-00', '0000-00-00', '0000-00-00', 0, NULL),
(84, '\'\'', 1316, '02881C', 'CIT COUSSIN D\'AIR BPW', '', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, NULL),
(85, '\'\'', 1317, '', 'CIT GOUJON DE ROUE BPW', '', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, NULL),
(86, '\'\'', 1318, '', 'CIT BPW MOYEU DE ROUE', '', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, NULL),
(87, '\'\'', 1319, 'HU12140', 'ACTROS FILTRE HUILE MAN HU12140', '', 'GPRT', '0000-00-00', '0000-00-00', '0000-00-00', 0, NULL),
(88, '\'\'', 1320, 'PU999/1X', 'ACTROS FILTRE GASOIL MAN PU999/1X', '', 'GPRT', '0000-00-00', '0000-00-00', '0000-00-00', 0, NULL),
(89, '\'\'', 1321, 'HU12110X', 'AXOR FILTRE HUILE MAN HU12110X', '', 'GPRT', '0000-00-00', '0000-00-00', '0000-00-00', 0, NULL),
(90, '\'\'', 1322, 'WK1080/7X', 'ACTROS FILTRE SEPARATEUR MAN', '', 'T.I.P', '0000-00-00', '0000-00-00', '0000-00-00', 0, NULL),
(91, '\'\'', 1323, '882271', 'ACTROS JEU DE PATTIN AVANT VALEO', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, NULL),
(92, '\'\'', 1324, '882272', 'ACTROS JEU DE PATTIN ARRIERE VALEO', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, NULL),
(93, '\'\'', 1325, '882243', 'VOLVO FM400 JEUX DE PATTIN ARRIERE', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, NULL),
(94, '\'\'', 1326, '882245', 'VOLVO JEUX DE PATTIN AVANT', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, NULL),
(95, '\'\'', 1327, '', 'PNEU 385/65 R22,5 OASIS', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, NULL),
(96, '\'\'', 1328, '4324102227', 'VOLVO 400 FILTRE DESSICATEUR WABCO', '', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, 10),
(97, '\'\'', 1329, 'C331460/1', 'VOLVO 400 FILTRE A AIR EXTERIEUR MAN FILTER', '', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, 9),
(98, '\'\'', 1330, 'CF1940', 'VOLVO 400 FILTRE A AIR INTERIEUR MAN FILTER', '', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, 9),
(99, '\'\'', 1331, 'PONT SPORTRAK', 'PNEU 315/80 R22,5 SPORTRAK PONT', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, NULL),
(100, '\'\'', 1332, 'BRAKVE 23.630.010', 'ACTROS DISQUE DE FREIN AVANT BRAKVE', '', 'DGS', '0000-00-00', '0000-00-00', '0000-00-00', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Categorie_Piece`
--

CREATE TABLE `Categorie_Piece` (
  `ID` int(11) NOT NULL,
  `Designation_categorie` varchar(100) NOT NULL,
  `Image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Categorie_Piece`
--

INSERT INTO `Categorie_Piece` (`ID`, `Designation_categorie`, `Image`) VALUES
(1, 'EAU RADIATEUR', ''),
(2, 'HUILE MOTEUR 15W40 SHP', ''),
(3, 'EAU BATTERIE', ''),
(4, 'HUILE MOTEUR 15W40 CG4/CH4', ''),
(5, 'HUILE DE PONT 85W140', ''),
(6, 'HUILE DE FREIN DOT 4', ''),
(7, 'GRAISSE EP2', ''),
(8, 'FILTRE A HUILE', ''),
(9, 'FILTRE A AIR', ''),
(10, 'FILTRE DESSICATEUR', ''),
(11, 'KIT FILTRE A AIR', ''),
(12, 'FILTRE HABITACLE', ''),
(13, 'FILTRE HUILE BOITE VITESSE', ''),
(14, 'SILENT BLOC SUSPENSION AVANT', ''),
(15, 'BRAS DE SUSPENSION AVANT', ''),
(16, 'ATTACHE AILE DE ROUE ARRIERE', ''),
(17, 'BAGUE SUSPENSION AVANT', ''),
(18, 'BAGUE INJECTEUR', ''),
(19, 'JX DE SEGMENTS', ''),
(20, 'CHEMISE', ''),
(21, 'COUSSINET DE BIELLE', ''),
(22, 'POCHETTE DE JOINTS', ''),
(23, 'JOINT RENIFLEUR', ''),
(24, 'MAITRE CYLINDRE', ''),
(25, 'CABLE DE VITESSE', ''),
(26, 'AMORTISSEUR CABINE', ''),
(27, 'TURBO', ''),
(28, 'VALVE DE BLOCAGE', ''),
(29, 'NOURISSE D\'EAU', ''),
(30, 'SERVO EMBRAYAGE', ''),
(31, 'JOINT TUBE D\'EAU', ''),
(32, 'TUBE POMPE A EAU', ''),
(33, 'ALTERNATEUR', ''),
(34, 'REGULATEUR D\'ALTERNATEUR', ''),
(35, 'SERVO DE FREIN', ''),
(38, 'THERMOSTAT', ''),
(39, 'ANTIFUITE RADIATEUR', ''),
(40, 'CUVE DU GASOIL', ''),
(41, 'BOUCHON RESERVOIR', ''),
(42, 'COUVERCLE FEU ARRIERE GAUCHE', ''),
(43, 'BALANCOIR', ''),
(44, 'SILENT BLOC D 60', ''),
(45, 'AXE BALANCOIRE', ''),
(46, 'BALAI ESSUIE GLACE', ''),
(47, 'PNEU BRIDGESTONE 315/80R22,5', ''),
(48, 'PNEU 385/65R22,5', ''),
(49, 'PATTIN AVANT', ''),
(50, 'BATTERIE', ''),
(51, 'ALARME', ''),
(52, 'RETROVISEUR', ''),
(53, 'KLAXCAR', ''),
(54, 'SELETTE 3 TROUS', ''),
(55, 'CAT_X', ''),
(56, 'CAT_X100', ''),
(57, 'CAT_X100', ''),
(58, 'CAT_X100', ''),
(59, 'CAT_X100', ''),
(60, 'CAT_X200', ''),
(61, 'CAT_X200', ''),
(62, 'CAT_X200', ''),
(63, 'CAT_X200', ''),
(64, 'CAT_X200', ''),
(65, 'CAT_X300', ''),
(66, 'CAT_X300', ''),
(67, 'CAT_Z', ''),
(68, 'CAT_Z', ''),
(69, 'CATPP', ''),
(70, 'CATOO', ''),
(71, 'CATOO', ''),
(72, 'CATOO', ''),
(73, 'CAT_GG', ''),
(75, 'AZS', 'servo_frein.jpeg'),
(76, 'qq', 'uploads/pompe-rouge.jpeg'),
(77, 'CAT-POMPE', 'uploads/pompe-rouge.jpeg'),
(78, 'CAT-POMPE-BLEU', 'uploads/pompe-bleu.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `CITERNES`
--

CREATE TABLE `CITERNES` (
  `ID` int(11) NOT NULL,
  `UniteID` int(11) DEFAULT NULL,
  `Immatriculation` varchar(9) DEFAULT NULL,
  `Fixation_Citerne_Chassis` varchar(100) DEFAULT NULL,
  `Axe_Pivot` varchar(100) DEFAULT NULL,
  `Butee_Longitudinale` varchar(100) DEFAULT NULL,
  `Etat_de_la_Citerne` varchar(100) DEFAULT NULL,
  `Hauteur_Axe_Longitudinal` varchar(100) DEFAULT NULL,
  `Proprete_Compartiments` varchar(100) DEFAULT NULL,
  `Echelle` varchar(100) DEFAULT NULL,
  `Partie_Haute_Anti_Derapante` varchar(100) DEFAULT NULL,
  `Rambarde` varchar(100) DEFAULT NULL,
  `Trous_Hommes` varchar(100) DEFAULT NULL,
  `Soupapes_de_Respiration` varchar(100) DEFAULT NULL,
  `Sabre_de_Jaugeage` varchar(100) DEFAULT NULL,
  `Reference_de_Jaugeage` varchar(100) DEFAULT NULL,
  `Taquets_Plombees` varchar(100) DEFAULT NULL,
  `Clapet_de_Fond` varchar(100) DEFAULT NULL,
  `Etat_Tuyauterie` varchar(100) DEFAULT NULL,
  `Etat_des_Vannes_DN80` varchar(100) DEFAULT NULL,
  `Bouchon_Symetrique_sur_Vanne` varchar(100) DEFAULT NULL,
  `Capacite_Visible_Numero_de_Vanne` varchar(100) DEFAULT NULL,
  `Rangement_Flexibles` varchar(100) DEFAULT NULL,
  `Recuperation_Egouttures` varchar(100) DEFAULT NULL,
  `Pneumatique_Citerne` varchar(100) DEFAULT NULL,
  `Etat_de_Freinage` varchar(100) DEFAULT NULL,
  `Etat_de_Feux` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `DEMANDES_INTERVENTIONS_CURATIVE`
--

CREATE TABLE `DEMANDES_INTERVENTIONS_CURATIVE` (
  `ID` int(11) NOT NULL,
  `UniteID` int(11) DEFAULT NULL,
  `Date_Demande` date DEFAULT NULL,
  `Date_Souhaitee` date DEFAULT NULL,
  `Type_Demande` varchar(100) DEFAULT NULL,
  `Description_Demande` text DEFAULT NULL,
  `Etat` varchar(9) DEFAULT NULL,
  `Responsable` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Disque_Roues_Remorque`
--

CREATE TABLE `Disque_Roues_Remorque` (
  `ID` int(11) NOT NULL,
  `UniteID` int(11) DEFAULT NULL,
  `Type` varchar(100) DEFAULT NULL,
  `Size` varchar(100) DEFAULT NULL,
  `Marque` varchar(100) DEFAULT NULL,
  `Installation_Date` date DEFAULT NULL,
  `Date_derniere_Inspection` date DEFAULT NULL,
  `Date_prochaine_Inspection` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Disque_Roues_Tracteur`
--

CREATE TABLE `Disque_Roues_Tracteur` (
  `ID` int(11) NOT NULL,
  `UniteID` int(11) DEFAULT NULL,
  `Type` varchar(100) DEFAULT NULL,
  `Size` varchar(100) DEFAULT NULL,
  `Brand` varchar(100) DEFAULT NULL,
  `Installation_Date` date DEFAULT NULL,
  `Last_Inspection_Date` date DEFAULT NULL,
  `Next_Inspection_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Disque_Roues_Tracteur`
--

INSERT INTO `Disque_Roues_Tracteur` (`ID`, `UniteID`, `Type`, `Size`, `Brand`, `Installation_Date`, `Last_Inspection_Date`, `Next_Inspection_Date`) VALUES
(1, 284, 'Type1', 'Size1', 'Brand1', '2023-01-01', '2023-01-01', '2024-01-01'),
(2, 284, 'Type2', 'Size2', 'Brand2', '2023-01-02', '2023-01-02', '2024-01-02'),
(3, 284, 'Type3', 'Size3', 'Brand3', '2023-01-03', '2023-01-03', '2024-01-03'),
(4, 284, 'Type4', 'Size4', 'Brand4', '2023-01-04', '2023-01-04', '2024-01-04'),
(5, 284, 'Type5', 'Size5', 'Brand5', '2023-01-05', '2023-01-05', '2024-01-05'),
(6, 284, 'Type6', 'Size6', 'Brand6', '2023-01-06', '2023-01-06', '2024-01-06'),
(7, 284, 'Type7', 'Size7', 'Brand7', '2023-01-07', '2023-01-07', '2024-01-07'),
(8, 284, 'Type8', 'Size8', 'Brand8', '2023-01-08', '2023-01-08', '2024-01-08'),
(9, 285, 'Type9', 'Size9', 'Brand9', '2023-01-09', '2023-01-09', '2024-01-09'),
(10, 285, 'Type10', 'Size10', 'Brand10', '2023-01-10', '2023-01-10', '2024-01-10'),
(11, 285, 'Type11', 'Size11', 'Brand11', '2023-01-11', '2023-01-11', '2024-01-11'),
(12, 285, 'Type12', 'Size12', 'Brand12', '2023-01-12', '2023-01-12', '2024-01-12'),
(13, 285, 'Type13', 'Size13', 'Brand13', '2023-01-13', '2023-01-13', '2024-01-13'),
(14, 285, 'Type14', 'Size14', 'Brand14', '2023-01-14', '2023-01-14', '2024-01-14'),
(15, 285, 'Type15', 'Size15', 'Brand15', '2023-01-15', '2023-01-15', '2024-01-15'),
(16, 285, 'Type16', 'Size16', 'Brand16', '2023-01-16', '2023-01-16', '2024-01-16'),
(17, 286, 'Type17', 'Size17', 'Brand17', '2023-01-17', '2023-01-17', '2024-01-17'),
(18, 286, 'Type18', 'Size18', 'Brand18', '2023-01-18', '2023-01-18', '2024-01-18'),
(19, 286, 'Type19', 'Size19', 'Brand19', '2023-01-19', '2023-01-19', '2024-01-19'),
(20, 286, 'Type20', 'Size20', 'Brand20', '2023-01-20', '2023-01-20', '2024-01-20'),
(21, 286, 'Type21', 'Size21', 'Brand21', '2023-01-21', '2023-01-21', '2024-01-21'),
(22, 286, 'Type22', 'Size22', 'Brand22', '2023-01-22', '2023-01-22', '2024-01-22'),
(23, 286, 'Type23', 'Size23', 'Brand23', '2023-01-23', '2023-01-23', '2024-01-23'),
(24, 286, 'Type24', 'Size24', 'Brand24', '2023-01-24', '2023-01-24', '2024-01-24'),
(25, 287, 'Type25', 'Size25', 'Brand25', '2023-01-25', '2023-01-25', '2024-01-25'),
(26, 287, 'Type26', 'Size26', 'Brand26', '2023-01-26', '2023-01-26', '2024-01-26'),
(27, 287, 'Type27', 'Size27', 'Brand27', '2023-01-27', '2023-01-27', '2024-01-27'),
(28, 287, 'Type28', 'Size28', 'Brand28', '2023-01-28', '2023-01-28', '2024-01-28'),
(29, 287, 'Type29', 'Size29', 'Brand29', '2023-01-29', '2023-01-29', '2024-01-29'),
(30, 287, 'Type30', 'Size30', 'Brand30', '2023-01-30', '2023-01-30', '2024-01-30'),
(31, 287, 'Type31', 'Size31', 'Brand31', '2023-01-31', '2023-01-31', '2024-01-31'),
(32, 287, 'Type32', 'Size32', 'Brand32', '2023-02-01', '2023-02-01', '2024-02-01'),
(33, 288, 'Type33', 'Size33', 'Brand33', '2023-02-02', '2023-02-02', '2024-02-02'),
(34, 288, 'Type34', 'Size34', 'Brand34', '2023-02-03', '2023-02-03', '2024-02-03'),
(35, 288, 'Type35', 'Size35', 'Brand35', '2023-02-04', '2023-02-04', '2024-02-04'),
(36, 288, 'Type36', 'Size36', 'Brand36', '2023-02-05', '2023-02-05', '2024-02-05'),
(37, 288, 'Type37', 'Size37', 'Brand37', '2023-02-06', '2023-02-06', '2024-02-06'),
(38, 288, 'Type38', 'Size38', 'Brand38', '2023-02-07', '2023-02-07', '2024-02-07'),
(39, 288, 'Type39', 'Size39', 'Brand39', '2023-02-08', '2023-02-08', '2024-02-08'),
(40, 288, 'Type40', 'Size40', 'Brand40', '2023-02-09', '2023-02-09', '2024-02-09'),
(41, 289, 'Type41', 'Size41', 'Brand41', '2023-02-10', '2023-02-10', '2024-02-10'),
(42, 289, 'Type42', 'Size42', 'Brand42', '2023-02-11', '2023-02-11', '2024-02-11'),
(43, 289, 'Type43', 'Size43', 'Brand43', '2023-02-12', '2023-02-12', '2024-02-12'),
(44, 289, 'Type44', 'Size44', 'Brand44', '2023-02-13', '2023-02-13', '2024-02-13'),
(45, 289, 'Type45', 'Size45', 'Brand45', '2023-02-14', '2023-02-14', '2024-02-14'),
(46, 289, 'Type46', 'Size46', 'Brand46', '2023-02-15', '2023-02-15', '2024-02-15'),
(47, 289, 'Type47', 'Size47', 'Brand47', '2023-02-16', '2023-02-16', '2024-02-16'),
(48, 289, 'Type48', 'Size48', 'Brand48', '2023-02-17', '2023-02-17', '2024-02-17'),
(49, 290, 'Type49', 'Size49', 'Brand49', '2023-02-18', '2023-02-18', '2024-02-18'),
(50, 290, 'Type50', 'Size50', 'Brand50', '2023-02-19', '2023-02-19', '2024-02-19'),
(51, 290, 'Type51', 'Size51', 'Brand51', '2023-02-20', '2023-02-20', '2024-02-20'),
(52, 290, 'Type52', 'Size52', 'Brand52', '2023-02-21', '2023-02-21', '2024-02-21'),
(53, 290, 'Type53', 'Size53', 'Brand53', '2023-02-22', '2023-02-22', '2024-02-22'),
(54, 290, 'Type54', 'Size54', 'Brand54', '2023-02-23', '2023-02-23', '2024-02-23'),
(55, 290, 'Type55', 'Size55', 'Brand55', '2023-02-24', '2023-02-24', '2024-02-24'),
(56, 290, 'Type56', 'Size56', 'Brand56', '2023-02-25', '2023-02-25', '2024-02-25'),
(57, 291, 'Type57', 'Size57', 'Brand57', '2023-02-26', '2023-02-26', '2024-02-26'),
(58, 291, 'Type58', 'Size58', 'Brand58', '2023-02-27', '2023-02-27', '2024-02-27'),
(59, 291, 'Type59', 'Size59', 'Brand59', '2023-02-28', '2023-02-28', '2024-02-28'),
(60, 291, 'Type60', 'Size60', 'Brand60', '2023-03-01', '2023-03-01', '2024-03-01'),
(61, 291, 'Type61', 'Size61', 'Brand61', '2023-03-02', '2023-03-02', '2024-03-02'),
(62, 291, 'Type62', 'Size62', 'Brand62', '2023-03-03', '2023-03-03', '2024-03-03'),
(63, 291, 'Type63', 'Size63', 'Brand63', '2023-03-04', '2023-03-04', '2024-03-04'),
(64, 291, 'Type64', 'Size64', 'Brand64', '2023-03-05', '2023-03-05', '2024-03-05');

-- --------------------------------------------------------

--
-- Table structure for table `Historique_Affectation_Tracteur_Citerne`
--

CREATE TABLE `Historique_Affectation_Tracteur_Citerne` (
  `ID` int(11) NOT NULL,
  `Date_Debut` datetime NOT NULL,
  `Date_Fin` datetime NOT NULL,
  `TracteurID` int(11) NOT NULL,
  `CiterneID` int(11) NOT NULL,
  `km_Tracteur` int(11) NOT NULL,
  `km_Citerne` int(11) NOT NULL,
  `Observation` varchar(200) NOT NULL DEFAULT 'R.A.S'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Historique_Affectation_Tracteur_Citerne`
--

INSERT INTO `Historique_Affectation_Tracteur_Citerne` (`ID`, `Date_Debut`, `Date_Fin`, `TracteurID`, `CiterneID`, `km_Tracteur`, `km_Citerne`, `Observation`) VALUES
(1, '2024-01-01 08:00:00', '2024-02-01 08:00:00', 284, 286, 38387, 83517, 'R.A.S'),
(2, '2024-02-01 08:00:00', '2024-03-01 08:00:00', 285, 287, 40000, 58380, 'R.A.S'),
(3, '2024-03-01 08:00:00', '2024-04-01 08:00:00', 293, 288, 44010, 41350, 'R.A.S'),
(4, '2024-04-01 08:00:00', '2024-05-01 08:00:00', 294, 289, 98313, 31611, 'R.A.S'),
(5, '2024-05-01 08:00:00', '2024-06-01 08:00:00', 295, 290, 59534, 34003, 'R.A.S'),
(6, '2024-06-01 08:00:00', '2024-07-01 08:00:00', 296, 291, 2731, 75184, 'R.A.S'),
(7, '2024-07-01 08:00:00', '2024-08-01 08:00:00', 297, 292, 35056, 73912, 'R.A.S'),
(8, '2024-08-01 08:00:00', '2024-09-01 08:00:00', 306, 300, 98086, 50058, 'R.A.S'),
(9, '2024-09-01 08:00:00', '2024-10-01 08:00:00', 308, 301, 25954, 59499, 'R.A.S'),
(10, '2024-10-01 08:00:00', '2024-11-01 08:00:00', 309, 302, 77646, 47323, 'R.A.S'),
(11, '2024-11-01 08:00:00', '2024-12-01 08:00:00', 310, 303, 10365, 58120, 'R.A.S'),
(12, '2024-12-01 08:00:00', '2025-01-01 08:00:00', 311, 304, 18889, 48631, 'R.A.S');

-- --------------------------------------------------------

--
-- Table structure for table `HIST_INTERVENTIONS`
--

CREATE TABLE `HIST_INTERVENTIONS` (
  `ID` int(11) NOT NULL,
  `IntervensionID` int(11) DEFAULT NULL,
  `PieceID` int(11) DEFAULT NULL,
  `Date_Intervention` date DEFAULT NULL,
  `Km` int(11) NOT NULL,
  `Cout` decimal(10,2) DEFAULT NULL,
  `Responsable` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Hist_Piece_Unite`
--

CREATE TABLE `Hist_Piece_Unite` (
  `PieceID` int(11) NOT NULL,
  `UniteID` int(11) NOT NULL,
  `Date_Install` date DEFAULT current_timestamp(),
  `Date_Fin` date DEFAULT NULL,
  `Km_Install` int(11) DEFAULT NULL,
  `Km_Fin` int(11) DEFAULT NULL,
  `Observation` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Hist_Piece_Unite`
--

INSERT INTO `Hist_Piece_Unite` (`PieceID`, `UniteID`, `Date_Install`, `Date_Fin`, `Km_Install`, `Km_Fin`, `Observation`) VALUES
(1, 285, '2024-01-15', '2024-06-15', 60000, 75000, 'Premier montage de la pièce 1 sur l\'unité 285'),
(1, 295, '2024-06-16', NULL, 40000, NULL, 'Montage actuel de la pièce 1 sur l\'unité 295'),
(2, 284, '2023-01-02', '2023-03-10', 100000, 110000, 'Montage actuel de la pièce 2 sur l\'unité 284'),
(2, 290, '2023-03-11', '2023-06-11', 60000, 82000, 'Premier montage de la pièce 2 sur l\'unité 103'),
(2, 294, '2023-06-12', '2023-12-31', 75000, 96000, 'Deuxième montage de la pièce 2 sur l\'unité 104'),
(3, 285, '2023-05-22', '2023-06-15', 45000, 50000, 'Montage actuel de la pièce 3 sur l\'unité 285'),
(4, 290, '2021-07-11', '2022-03-19', 50000, 55000, 'Premier montage de la pièce 4 sur l\'unité 107'),
(4, 293, '2022-04-01', '2022-11-01', 95000, 120000, 'Deuxième montage de la pièce 4 sur l\'unité 108'),
(5, 286, '2020-02-14', NULL, 30000, NULL, 'Montage actuel de la pièce 5 sur l\'unité 309');

-- --------------------------------------------------------

--
-- Table structure for table `INTERVENTIONS_CURATIVES`
--

CREATE TABLE `INTERVENTIONS_CURATIVES` (
  `ID` int(11) NOT NULL,
  `UniteID` int(11) DEFAULT NULL,
  `Date_Intervention` date DEFAULT NULL,
  `Type_Intervention` varchar(100) DEFAULT NULL,
  `Cout` decimal(10,2) DEFAULT NULL,
  `Responsable` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `INTERVENTIONS_PREVENTIVES`
--

CREATE TABLE `INTERVENTIONS_PREVENTIVES` (
  `ID` int(11) NOT NULL,
  `Nature` varchar(100) DEFAULT NULL,
  `Frequence` varchar(100) DEFAULT NULL,
  `UniteID` int(11) DEFAULT NULL,
  `Date_Programme` date DEFAULT NULL,
  `Date_Realisation` date DEFAULT NULL,
  `Date_Prochaine` date DEFAULT NULL,
  `Cout` decimal(10,2) DEFAULT NULL,
  `Observation` varchar(100) DEFAULT NULL,
  `Nom_Responsable` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `LISTE_INTERVENTIONS`
--

CREATE TABLE `LISTE_INTERVENTIONS` (
  `ID` int(11) NOT NULL,
  `NomInterv` varchar(100) DEFAULT NULL,
  `Code` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `LISTE_INTERVENTIONS`
--

INSERT INTO `LISTE_INTERVENTIONS` (`ID`, `NomInterv`, `Code`) VALUES
(1, 'Huile Vidange', 'AHV'),
(2, 'Antifuite Radiateur', 'AR'),
(3, 'Contrôle technique', 'CT'),
(4, 'Equilibrage', 'EQ'),
(5, 'Accumulateur', 'RA'),
(6, 'Alternateur', 'RALT'),
(7, 'Amortisseurs AR', 'RAAR'),
(8, 'Amortisseurs AV', 'RAAV'),
(9, 'Amortisseurs AV/AR', 'RAAVAR'),
(10, 'Ampoule plaque police AR', 'RAPPAR'),
(11, 'Ampoule tableau de bord', 'RATDB'),
(12, 'Balais EG AR', 'RBEGAR'),
(13, 'Balais EG AV', 'RBEGAV'),
(14, 'Batterie', 'RBAT'),
(15, 'Boite Vitesse', 'RBV'),
(16, 'Bougies', 'RBG'),
(17, 'Bougies Préchauffage', 'RBGPH'),
(18, 'Cardan AVD', 'RCAVD'),
(19, 'Cardan AVG', 'RCAVG'),
(20, 'Cardans AVD/AVG', 'RCAVDAVG'),
(21, 'Courroie alternateur', 'RCA'),
(22, 'Courroie distribution', 'RCD'),
(23, 'Disque embrayage', 'RDE'),
(24, 'Disques AR', 'RDAR'),
(25, 'Disques AV', 'RDAV'),
(26, 'Disques AV/AR', 'RDAVAR'),
(27, 'Durit chauffage', 'RDCH'),
(28, 'Echappement AR', 'REAR'),
(29, 'Echappement AV', 'REAV'),
(30, 'Echappement intermédiaire', 'REI'),
(31, 'Embrayage', 'REM'),
(32, 'Essuie-Glaces AR', 'REGAR'),
(33, 'Essuie-Glaces AV', 'REGAV'),
(34, 'Etrier Frein AVD', 'REFAVD'),
(35, 'Etrier Frein AVG', 'REFAVG'),
(36, 'Filtre à air', 'RFAA'),
(37, 'Filtre à huile', 'RFAH'),
(38, 'Filtre Gazoil', 'RFG'),
(39, 'Injecteurs', 'RI'),
(40, 'Joint culasse', 'RJC'),
(41, 'Pare Choc AR', 'RPCHAR'),
(42, 'Pare Choc AV', 'RPCHAV'),
(43, 'Plaque Police AR', 'RPPLAR'),
(44, 'Plaque Police AV', 'RPPLAV'),
(45, 'Plaquettes AR', 'RPLAR'),
(46, 'Plaquettes AV', 'RPLAV'),
(47, 'Plaquettes AV/AR', 'RPLAVAR'),
(48, 'Pneu Secours', 'PNEU_SEC'),
(49, 'Pneus AR', 'PNEU_AR'),
(50, 'Pneus AV', 'PNEU_AV'),
(51, 'Pneus AV/AR', 'PNEU_AVAR'),
(52, 'Pompe HP', 'POMP_HP'),
(53, 'Porte Injecteurs', 'PORT_INJEC'),
(54, 'Rétro Ext D', 'RETRO_D'),
(55, 'Rétro Ext G', 'RETRO_G'),
(56, 'Serrure Porte AVG', 'SERR_AVG'),
(57, 'Sonde Préchauffage', 'SOND_CHAUF'),
(58, 'Sonde ventilateur', 'SOND_VENT'),
(59, 'Thermostat', 'THERM'),
(60, 'Allumage', 'VA'),
(61, 'Différents niveaux', 'VDN'),
(62, 'Freins, transmission, échappement', 'VFTE'),
(63, 'Géométrie', 'VG'),
(64, 'Plaquettes AR', 'RPLAR'),
(65, 'Plaquettes AV', 'RPLAV'),
(66, 'Suspension', 'SUSSP'),
(67, 'Vidange', 'VID'),
(68, 'Vidange Boite vitesse', 'VID_BOIT_V'),
(69, 'Vidange circuit refroidissement', 'VID_CIRC_FROID'),
(70, 'Changement Necessaire Appareil Pedale', 'CNAP');

-- --------------------------------------------------------

--
-- Table structure for table `PERSONNELS`
--

CREATE TABLE `PERSONNELS` (
  `ID` int(11) NOT NULL,
  `MATRICULE` varchar(5) DEFAULT NULL,
  `NOM_PRENOM` varchar(22) DEFAULT NULL,
  `FONCTION` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `PERSONNELS`
--

INSERT INTO `PERSONNELS` (`ID`, `MATRICULE`, `NOM_PRENOM`, `FONCTION`) VALUES
(110, '1-001', 'MAJDI ACHOUR', 'ADMINISTRATIVE'),
(111, '2-001', 'SAMEH BOUSNINSA', 'ADMINISTRATIVE'),
(112, '2-002', 'BASMA SALLEM', 'ADMINISTRATIVE'),
(113, '2-003', 'RASSEM CHAKROUN', 'QHSE'),
(114, '3-001', 'TAIEB MABROUK', 'TECHNIQUE'),
(115, '4-001', 'MHADHEB BEN MOHAMED', 'CHAUFFUER'),
(116, '4-002', 'MOUSSA CHALGHOUM', 'CHAUFFUER'),
(117, '4-003', 'HEDI DAMI', 'CHAUFFUER'),
(118, '4-004', 'KHALED TALHA', 'CHAUFFUER'),
(119, '4-005', 'CHAHREDDINE ACHOUR', 'CHAUFFUER'),
(120, '4-006', 'ALI MBAREK', 'CHAUFFUER'),
(121, '4-007', 'HEDI GHOUIL', 'CHAUFFUER'),
(122, '4-008', 'JAMIL NOUICER', 'CHAUFFUER'),
(123, '4-009', 'AMIN DKHAYLA', 'CHAUFFUER'),
(124, '3-002', 'ISSAM JEBALI', 'TECHNIQUE'),
(125, '', 'CHOKRI BEN ALI', 'CHAUFFUER'),
(126, '', 'MONGI MAHDHI', 'COVOYEUR'),
(127, '', 'ABDELLAH HFAEIDH', 'CHAUFFUER'),
(128, '', 'SLEH BEN AMOR', 'CHAUFFEUR'),
(129, '', 'FAOUZI BOUSALEM', 'CHAUFFUER'),
(130, '', 'AYMEN ZRELLI', 'CHAUFFUER'),
(131, '', 'MALEK ZRILLI', 'CHAUFFEUR'),
(132, '', 'MAHDI KHLIFI', 'CHAUFFUER'),
(133, '', 'SAMIR BELGUACEM', 'CHAUFFEUR'),
(134, '', 'MAHDI KHLIFA', 'CHAUFFUER'),
(135, '', 'MOHSEN BOUKHIR', 'CHAUFFEUR'),
(136, '', 'IBRAHIM DHIEB', 'CHAUFFUER'),
(137, '', 'AMIN CHALGHOUM', 'CHAUFFUER'),
(138, '', 'NIDHEL MOUEMEN', 'CHAUFFUER'),
(139, '', 'MOHSEN RHOUMA', 'CHAUFFUER'),
(140, '', 'ABDELKADER BEKGUACEM', 'CHAUFFUER'),
(141, '', 'ADEL ZARROUG', 'CHAUFFEUR'),
(142, '', 'KHALED ALI', 'CHAUFFEUR'),
(143, '', 'MOHAMED HMIDA', 'CHAUFFUER'),
(144, '', 'AHMED DAMI', 'CHAUFFEUR'),
(145, '', 'MALIK NOUICER', 'CHAUFFUER'),
(146, '', 'FAOUZI HAMROUNI', 'CHAUFFEUR'),
(147, '', 'AHMED YAHMED', 'CHAUFFEUR'),
(148, '', 'ADEL NOUICER', 'CHAUFFUER'),
(149, '', 'HEDI KHERDANI', 'CHAUFFUER'),
(150, '', 'HAMMOUDA HASNAOUI', 'CHAUFFUER'),
(151, '', 'ABDREZZAK CHRIDI', 'CHAUFFUER'),
(152, '', 'JILANI OULED BELGUACEM', 'CHAUFFUER'),
(153, '', 'MALEK HRABI', 'CONVOYEUR'),
(154, '', 'MOHAMED RIAHI', 'CHAUFFUER'),
(155, '', 'AMIR DRIDI', 'CHAUFFEUR'),
(156, '', 'MOHAMED ALI AROUSSI', 'CHAUFFUER'),
(157, '', 'ALI GHZAYEL', 'CHAUFFUER'),
(158, '', 'ADEL YAHMED', 'CHAUFFUER'),
(159, '', 'RAFIK HMIDET', 'CHAUFFUER'),
(160, '', 'FERJANI HMIDET', 'CHAUFFUER'),
(161, '', 'AHMED CHIEB', 'CHAUFFUER'),
(162, '', 'NEJI MSAKDI', 'CHAUFFUER'),
(163, '', 'MOHAMED ALI KHOUILDI', 'CHAUFFUER'),
(164, '', 'OMAR FERCHICHI', 'CHAUFFUER'),
(165, '', 'MARWEN CHALGHOUM', 'CHAUFFUER'),
(166, '', 'SAMI TAHRI', 'CHAUFFUER'),
(167, '', 'OMAR FERCHICHI', 'CHAUFFUER'),
(168, '', 'MOHAMED LABYEDH', 'CHAUFFUER'),
(169, '', 'RIADH BELLOUMI', 'CHAUFFUER'),
(170, '', 'BECHIR JMAAI', 'CHAUFFUER'),
(171, '', 'CHAWKI ABOUDA', 'CHAUFFUER'),
(172, '', 'HAITHEM SWIBEK', 'CHAUFFUER'),
(173, '', 'HAMZA BIIKA', 'CHAUFFEUR'),
(174, '', 'LAZHAR KHALED', 'CHAUFFUER'),
(175, '', 'MOHAMED BEN BELGUACEM', 'CHAUFFUER'),
(176, '', 'HASSEN JOUINI', 'CHAUFFUER'),
(177, '', 'FATHEL ARROUM', 'CHAUFFUER');

-- --------------------------------------------------------

--
-- Table structure for table `PIECES`
--

CREATE TABLE `PIECES` (
  `ID` int(11) NOT NULL,
  `Image` varchar(200) NOT NULL DEFAULT '''''',
  `ArticlePK` smallint(6) DEFAULT NULL,
  `Code` varchar(50) DEFAULT NULL,
  `DESIGNATION` varchar(46) DEFAULT NULL,
  `PRIX_HT` varchar(8) DEFAULT NULL,
  `FOURNISSEURS` varchar(37) DEFAULT NULL,
  `Date_Enregistrement` datetime DEFAULT current_timestamp(),
  `Date_Dern_Inspec` date DEFAULT NULL,
  `Date_Proch_Inspec` date DEFAULT NULL,
  `UniteID_Act` int(11) DEFAULT NULL,
  `CategorieID` int(11) DEFAULT NULL,
  `Hors_Service` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `PIECES`
--

INSERT INTO `PIECES` (`ID`, `Image`, `ArticlePK`, `Code`, `DESIGNATION`, `PRIX_HT`, `FOURNISSEURS`, `Date_Enregistrement`, `Date_Dern_Inspec`, `Date_Proch_Inspec`, `UniteID_Act`, `CategorieID`, `Hors_Service`) VALUES
(1, 'images/eau_radiateur.jpeg', 1235, 'WATPR010', 'EAU RADIATEUR 10%', '33,97', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 295, 1, 0),
(2, 'images/eau_radiateur50.jpeg\n', 1236, 'DI100100', 'EAU RADIATEUR 50%', '117,3', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 284, 1, 0),
(3, 'images/bague_injecteur.jpeg\n', 1237, 'VO1547880R', 'VOLVO 400 BAGUE INJECTEUR FH 123 NM', '110,8', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 285, 18, 0),
(4, 'images/huile_moteur.jpeg', 1238, '15W40SHP20', 'HUILE EST 15W40 SHP 20LIT DM12', '139,37', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 295, 2, 0),
(5, 'images/eau_batterie.jpeg', 1239, 'RAS1', 'EAU BATTERIE', '1,5', '', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 309, 3, 0),
(6, 'images/servo_embrayage.jpeg', 1240, '524112KG', 'VOLVO 400 SERVO D\'EMBRAYAGE', '886,55', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 293, 30, 0),
(8, 'images/silent_bloc.jpeg', 1242, 'VO20148429', 'SILENT BLOC SUSPENSION AVANT', '12,5', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 285, 14, 0),
(9, 'images/bras_suspension2.jpeg', 1243, 'VO3933689', 'BRAS DE SUSPENSION AVANT', '98,26', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 284, 15, 0),
(10, 'images/huile_moteur.jpeg', 1244, 'VEN154020', 'HUILE 15W40 CG4/CH4.20L', '149,175', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 294, 2, 0),
(11, 'images/filter_aire.jpeg', 1245, 'VO21384115K', 'VOLVO 400 KIT FILTRE A AIR', '185,3', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 312, 9, 0),
(12, 'images/\'\'', 1246, 'VO655774', 'VOLVO 400 FILTRE A HUILE FH12', '36,206', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 306, 8, 0),
(13, 'images/\'\'', 1247, 'SC1117285', 'VOLVO 400 FILTRE 124', '27,79', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 309, 9, 0),
(14, 'images/\'\'', 1248, 'SC1997355W', 'VOLVO 400 FILTRE DESSICATEUR', '51', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 295, 10, 0),
(15, 'images/servo_frein.jpeg', 1249, 'SC313477', 'VOLVO 400 SERVO DE FREIN 24/24', '173,196', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 284, 35, 0),
(16, 'images/\'\'', 1250, '7421693757', 'VOLVO KIT FILTRE A AIR', '225,142', 'RENAULT- LOUKIL VEHICULES INDUSTRIELS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 293, 9, 0),
(17, 'images/\'\'', 1251, '7423260135', 'VOLVO N FILTRE DESSICATEUR', '226,417', 'RENAULT- LOUKIL VEHICULES INDUSTRIELS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 294, 10, 0),
(18, 'images/\'\'', 1252, '', 'VOLVO JX DE PATTIN AVANT', '250,75', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 311, 49, 0),
(19, 'images/eau_radiateur50.jpeg', 1253, 'DI132320', 'EAU RADIATEUR', '46,75', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 295, 1, 0),
(20, 'images/thermostat.jpeg', 1254, 'VO20249560R', 'VOLVO 400 THERMOSTAT FH 13 ORI', '253,3', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 308, 38, 0),
(21, 'images/jx_segment.jpeg', 1255, 'VO20477115', 'VOLVO 400 JX DE SEGMENTS FH', '144,5', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 296, 19, 0),
(22, 'images/chemise.jpeg', 1256, 'VO20588154', 'VOLVO 400 CHEMISE FH', '277,7', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 294, 20, 0),
(23, 'images/\'\'', 1257, 'VO20850362M', 'VOLVO 400 JX COUSS BILELLE STD', '336,07', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 285, 21, 0),
(24, 'images/\'\'', 1258, 'VO21137935', 'VOLVO 400 POCHETTE SUP', '678,34', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 309, 22, 0),
(25, 'images/\'\'', 1259, 'PFDXIKEPR 1', 'VOLVO PACK FILTRATION DXI 11/13', '209,29', 'RENAULT- LOUKIL VEHICULES INDUSTRIELS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 311, NULL, 0),
(26, 'images/\'\'', 1260, 'VO251012+', 'VOLVO 400 FILTRE HABITACLE', '29,75', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 308, 12, 0),
(27, 'images/\'\'', 1261, 'DI3100106', 'RACCORD 8-6', '3,846', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 297, NULL, 0),
(28, 'images/\'\'', 1262, 'VO3953287', 'VOLVO 400 ATTACHE AILE DE ROUE AR FH', '17', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 297, NULL, 0),
(29, 'images/\'\'', 1263, 'OLY85W4020', 'HUILE DE PONT 85W140 20LT', '120', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 296, 5, 0),
(30, 'images/\'\'', 1264, 'VO1400676', 'VOLVO 400 NOURISSE D\'EAU', '153', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 307, 29, 0),
(31, 'images/\'\'', 1265, '85000645', 'VOLVO 400 TURBO', '2640,925', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 308, 27, 0),
(32, 'images/\'\'', 1266, '22*54 KG', 'CROISSION 22*54', '14,62', 'KADI', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 306, NULL, 0),
(33, 'images/\'\'', 1267, 'VO156555+', 'VOLVO 400 VALVE DE BLOCAGE FH12', '106,981', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 285, 28, 0),
(34, 'images/\'\'', 1268, 'C.FEU', 'ACTROS COUVERCLE FEU ARRIERE GAUCHE', '13,0679', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 295, 42, 0),
(35, 'images/\'\'', 1269, 'CIT BAL', 'BALANCOIR + SILEN BLOC D 60', '246,5', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 309, 43, 0),
(36, 'images/\'\'', 1270, 'AXE BAL BPW', 'AXE BALANCOIRE BPW COMP', '84,876', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 297, 43, 0),
(37, 'images/\'\'', 1271, 'PONT', 'PNEU BRIDGESTONE 315/80R22,5 EU 156L/154M M729', '1270', 'SCP', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 307, 47, 0),
(38, 'images/\'\'', 1272, 'DIRECTION', 'PNEU BRIDGESTONE 315/80R22,5 EU 156L 154M RSV1', '1240', 'SCP', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 312, 47, 0),
(39, 'images/\'\'', 1273, 'BALLON', 'PNEU 385/65R22,5 PR 20 DSR 588', '910', 'ELWAFA PNEUMATIQUE', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 285, 48, 0),
(40, 'images/\'\'', 1274, 'VO1369818', 'VOLVO FM400 BALAI ESSUI GLACE', '22,41', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 310, NULL, 0),
(41, 'images/\'\'', 1275, 'FERDOT4', 'HUILE DE FREIN DOT 4 FEREDO', '', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 306, 6, 0),
(42, 'images/\'\'', 1276, 'VO1475212', 'VOLVO 400 JOINT TUBE D\'EAU FH12-1', '', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 285, 31, 0),
(43, 'images/\'\'', 1277, 'VO1475214', 'VOLVO 400 JOINT TUBE D\'EAU FH12-2', '', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 309, 31, 0),
(44, 'images/\'\'', 1278, 'VO20148430', 'VOLVO 400 BAGUE SUSPENSION AVANT FH SUP', '', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 295, 17, 0),
(45, 'images/\'\'', 1279, 'VO20148431', 'VOLVO 400 BAGUE SUSPENSION AVANT FH INF', '', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 307, 17, 0),
(46, 'images/\'\'', 1280, 'VO20198235', 'VOLVO 400 JOINT RENIFLEUR', '', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 296, 23, 0),
(47, 'images/\'\'', 1281, 'VO2135053', 'VOLVO 400 TUBE POMPE A EAU FH400', '', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 295, 32, 0),
(48, 'images/\'\'', 1282, 'VO471708', 'VOLVO 400 JOINT CIRCUIT D\'EAU', '', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 293, NULL, 0),
(49, 'images/\'\'', 1283, 'TAIABE9018BULK', 'VOLVO 400 ALTERNATEUR ROULEMENT SUP', '', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 308, 33, 0),
(50, 'images/\'\'', 1284, 'VO1726913/247703', 'VOLVO FM 400 BOUCHON RESERVOIR', '', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 312, 41, 0),
(51, 'images/\'\'', 1285, '', 'VOLVO 400 MAITRE CYLINDRE FH 12 NM', '', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 295, 24, 0),
(52, 'images/\'\'', 1286, 'VO21565342KG', 'VOLVO 400 CABLE VITESSE FH12 NOIR', '', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 285, NULL, 0),
(53, 'images/\'\'', 1287, 'VO21565343KG', 'VOLVO 400 CABLE VITESSE FH12 GRIS', '', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 311, NULL, 0),
(54, 'images/\'\'', 1288, 'VO2847411', 'VOLVO 400 AMORTISSEUR CABINE FH12 AVANT', '', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 307, 26, 0),
(55, 'images/\'\'', 1289, 'VO524113 KG', 'VOLVO 400 CABLE DE PORTE', '', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 296, NULL, 0),
(56, 'images/\'\'', 1290, 'VO20225998', 'VOLVO 400 SERVO EMBRAYAGE', '', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 312, 30, 0),
(57, 'images/\'\'', 1291, 'VO1475212', 'VOLVO 400 JOINT TUBE D\'EAU FH12-2', '', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 293, 31, 0),
(58, 'images/\'\'', 1292, 'SNR6003EE', 'VOLVO 400 ALTERNATEUR ROULEMENT INF', '', '', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 310, 33, 0),
(59, 'images/\'\'', 1293, 'BOCF00M144123', 'VOLVO 400 ALTERNATEUR REGULATEUR', '', '', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 284, 33, 0),
(60, 'images/\'\'', 1232, 'RAS', 'RAS', '0,01', 'RAS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 295, NULL, 0),
(61, 'images/\'\'', 1233, 'DIV203202', 'ANTIFUITE RADIATEURHOLT 250ML', '10,96', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 309, 39, 0),
(62, 'images/\'\'', 1234, '20193968', 'CUVE DU GASOIL', '289,17', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 306, 40, 0),
(63, 'images/\'\'', 1294, 'VO20225998', 'VOLVO 400 CABLE DE PORTE', '', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 307, NULL, 0),
(64, 'images/\'\'', 1295, '247703', 'VOLVO FM 400 BOUCHON RESERVOIR', '', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 306, 41, 0),
(65, 'images/\'\'', 1296, 'DI300V', 'TUBE PATE A JOINT', '', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 312, NULL, 0),
(66, 'images/\'\'', 1298, 'OLYHU15D40', 'OLY EST DEOMAX DM5 20 L', '', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 312, NULL, 0),
(67, 'images/\'\'', 1299, 'HU721*KIT', 'VOLVO 400 FILTRE HUILE BOITE VITESSE', '', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 294, 13, 0),
(68, 'images/\'\'', 1300, 'MNGRESS01', 'BOITE GRAISSE EP2 0,8 KG', '', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 295, 7, 0),
(69, 'images/\'\'', 1301, 'DSR 588', 'PNEU 385/65R22,5 PR 20 DSR 588', '', 'WAFA PNEUMATIQUE', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 307, 48, 0),
(70, 'images/\'\'', 1302, '505670', 'AXOR PHARE AVANT DROIT', '', 'SOCIETE ROCHDI HAMMAMI', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 309, NULL, 0),
(71, 'images/\'\'', 1303, '9408200421', 'AXOR FEU GLIGNOTANT AVANT DROIT', '', 'MECA TRUCK DISTRIBUTION', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 307, NULL, 0),
(72, 'images/\'\'', 1304, '15W40 TEKMA MEGA', 'MOTUL 15W40 CI 4TEKMA MEGA XLD 20 L', '235,94', 'BPS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 308, NULL, 0),
(73, 'images/\'\'', 1305, 'A-M15', 'BATTERIE ASSAD M15', '319,328', 'SO.CO.SUD', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 307, NULL, 0),
(74, 'images/\'\'', 1306, 'A-M14', 'BATTERIE ASSAD M14', '277,31', 'SO.CO.SUD', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 285, NULL, 0),
(75, 'images/\'\'', 1307, 'F10GPPG080S', 'FLEX.COMPOSITE DN 80 A PRESSION 10B', '210', 'SOTEM', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 293, NULL, 0),
(76, 'images/\'\'', 1308, '05971000', 'VALVE DE REMORQUE (4 SORTIES R-FREIN)', '', 'COMPTOIR VEHICULE SUD', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 285, NULL, 0),
(77, 'images/\'\'', 1309, '318802020', 'CITERNE CROCHET REGLAGE', '', 'COMPTOIR VEHICULE SUD', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 311, NULL, 0),
(78, 'images/\'\'', 1310, '86233Z', 'KLAXCAR  H7 24 V', '', '', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 307, 53, 0),
(79, 'images/\'\'', 1311, 'GAUGB2085', 'ALARME DE RECULE', '', 'S.P.R.S', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 310, 51, 0),
(80, 'images/\'\'', 1312, '20563354', 'VOLVO 400 RETROVISEUR GAUCHE', '', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 293, 52, 0),
(81, 'images/\'\'', 1313, '154788', 'VOLVO 400 BAGUE INJECTEUR FH12', '', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 295, 18, 0),
(82, 'images/\'\'', 1314, 'SK322 1-50', 'VOLVO NEC SELETTE 3 TROUS', '', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 307, 54, 0),
(83, 'images/\'\'', 1315, '312561 (009)', 'CIT AMORTISSEUR BPW SACHS', '', 'SFAX VEHICULES INDUSTRIELS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 296, NULL, 0),
(84, 'images/\'\'', 1316, '02881C', 'CIT COUSSIN D\'AIR BPW', '', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 307, NULL, 0),
(85, 'images/\'\'', 1317, '', 'CIT GOUJON DE ROUE BPW', '', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 306, NULL, 0),
(86, 'images/\'\'', 1318, '', 'CIT BPW MOYEU DE ROUE', '', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 284, NULL, 0),
(87, 'images/\'\'', 1319, 'HU12140', 'ACTROS FILTRE HUILE MAN HU12140', '', 'GPRT', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 311, NULL, 0),
(88, 'images/\'\'', 1320, 'PU999/1X', 'ACTROS FILTRE GASOIL MAN PU999/1X', '', 'GPRT', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 296, NULL, 0),
(89, 'images/\'\'', 1321, 'HU12110X', 'AXOR FILTRE HUILE MAN HU12110X', '', 'GPRT', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 309, NULL, 0),
(90, 'images/\'\'', 1322, 'WK1080/7X', 'ACTROS FILTRE SEPARATEUR MAN', '', 'T.I.P', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 308, NULL, 0),
(91, 'images/\'\'', 1323, '882271', 'ACTROS JEU DE PATTIN AVANT VALEO', '', '', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 295, NULL, 0),
(92, 'images/\'\'', 1324, '882272', 'ACTROS JEU DE PATTIN ARRIERE VALEO', '', '', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 293, NULL, 0),
(93, 'images/\'\'', 1325, '882243', 'VOLVO FM400 JEUX DE PATTIN ARRIERE', '', '', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 297, NULL, 0),
(94, 'images/\'\'', 1326, '882245', 'VOLVO JEUX DE PATTIN AVANT', '', '', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 295, NULL, 0),
(95, 'images/\'\'', 1327, '', 'PNEU 385/65 R22,5 OASIS', '', '', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 307, NULL, 0),
(96, 'images/\'\'', 1328, '4324102227', 'VOLVO 400 FILTRE DESSICATEUR WABCO', '', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 308, 10, 0),
(97, 'images/\'\'', 1329, 'C331460/1', 'VOLVO 400 FILTRE A AIR EXTERIEUR MAN FILTER', '', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 284, 9, 0),
(98, 'images/\'\'', 1330, 'CF1940', 'VOLVO 400 FILTRE A AIR INTERIEUR MAN FILTER', '', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 306, 9, 0),
(99, 'images/\'\'', 1331, 'PONT SPORTRAK', 'PNEU 315/80 R22,5 SPORTRAK PONT', '', '', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 285, NULL, 0),
(100, 'images/\'\'', 1332, 'BRAKVE 23.630.010', 'ACTROS DISQUE DE FREIN AVANT BRAKVE', '', 'DGS', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 284, NULL, 0),
(118, 'images/\'\'', NULL, 'PAA-751', 'Pattin 75mm', NULL, NULL, '2024-06-27 00:00:00', NULL, NULL, 297, 1, 0),
(119, 'images/\'\'', NULL, 'PAA-750000', 'Pattin 750000mm', NULL, NULL, '2024-06-27 00:00:00', NULL, NULL, 306, 65, 0),
(120, 'images/\'\'', NULL, 'PXX', 'PXX', NULL, NULL, '2024-06-28 00:00:00', NULL, NULL, NULL, 1, 0),
(121, 'images/\'\'', NULL, 'PYY', 'PYY', NULL, NULL, '2024-06-28 00:00:00', NULL, NULL, NULL, 2, 0),
(122, 'images/\'\'', NULL, 'PZZ', 'PZZ', NULL, NULL, '2024-06-28 00:00:00', NULL, NULL, NULL, 67, 0),
(123, 'images/\'\'', NULL, 'PZZ', 'PZZ', NULL, NULL, '2024-06-28 00:00:00', NULL, NULL, NULL, 67, 0),
(124, 'images/\'\'', NULL, 'PWW', 'PWW', NULL, NULL, '2024-06-28 00:00:00', NULL, NULL, NULL, 1, 0),
(125, 'images/\'\'', NULL, 'PWW', 'PWW', NULL, NULL, '2024-06-28 00:00:00', NULL, NULL, NULL, 1, 0),
(126, 'images/\'\'', NULL, 'PTT', 'PTT', NULL, NULL, '2024-06-28 00:00:00', NULL, NULL, NULL, 1, 0),
(127, 'images/\'\'', NULL, 'PAA-75', 'QAA', NULL, NULL, '2024-06-28 00:00:00', NULL, NULL, NULL, 1, 0),
(128, 'images/\'\'', NULL, 'PAA-7587', 'QQQ', NULL, NULL, '2024-06-28 17:48:56', NULL, NULL, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Plan_Intervention_Cat_Piece`
--

CREATE TABLE `Plan_Intervention_Cat_Piece` (
  `CategorieID` int(11) NOT NULL,
  `InterventionID` int(11) NOT NULL,
  `Km` int(11) NOT NULL,
  `Date_Intervension` date NOT NULL,
  `Observation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Pneu_Citerne`
--

CREATE TABLE `Pneu_Citerne` (
  `ID` int(11) NOT NULL,
  `Ref` varchar(100) NOT NULL,
  `UniteID` int(11) DEFAULT NULL,
  `Num_Place` int(11) NOT NULL,
  `Code_Place` varchar(10) NOT NULL,
  `Type` varchar(100) DEFAULT NULL,
  `Dimensions` varchar(100) DEFAULT NULL,
  `Installation_km` int(11) NOT NULL,
  `max_km` int(11) NOT NULL DEFAULT 30000,
  `Installation_Date` date DEFAULT NULL,
  `Last_Inspection_Date` date DEFAULT NULL,
  `Next_Inspection_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Pneu_Citerne`
--

INSERT INTO `Pneu_Citerne` (`ID`, `Ref`, `UniteID`, `Num_Place`, `Code_Place`, `Type`, `Dimensions`, `Installation_km`, `max_km`, `Installation_Date`, `Last_Inspection_Date`, `Next_Inspection_Date`) VALUES
(1, '', 286, 1, 'CE1G', 'Type1', 'Dimensions1', 10000, 100000, '2023-01-01', '2024-01-01', '2025-01-01'),
(2, '', 286, 2, 'CE1D', 'Type2', 'Dimensions2', 11000, 30000, '2023-01-02', '2024-01-02', '2025-01-02'),
(3, '', 286, 3, 'CE2G', 'Type3', 'Dimensions3', 12000, 100000, '2023-01-03', '2024-01-03', '2025-01-03'),
(4, '', 286, 4, 'CE2D', 'Type4', 'Dimensions4', 13000, 100000, '2023-01-04', '2024-01-04', '2025-01-04'),
(5, '', 286, 5, 'CE3G', 'Type5', 'Dimensions5', 14000, 30000, '2023-01-05', '2024-01-05', '2025-01-05'),
(6, '', 286, 6, 'CE3D', 'Type6', 'Dimensions6', 15000, 100000, '2023-01-06', '2024-01-06', '2025-01-06'),
(7, '', 287, 2, 'CE1D', 'Type7', 'Dimensions7', 16000, 30000, '2023-01-07', '2024-01-07', '2025-01-07'),
(8, '', 287, 2, 'CE1G', 'Type8', 'Dimensions8', 17000, 30000, '2023-01-08', '2024-01-08', '2025-01-08'),
(9, '', 287, 4, 'CE2D', 'Type9', 'Dimensions9', 18000, 30000, '2023-01-09', '2024-01-09', '2025-01-09'),
(10, '', 287, 3, 'CE2G', 'Type10', 'Dimensions10', 19000, 30000, '2023-01-10', '2024-01-10', '2025-01-10'),
(11, '', 287, 6, 'CE3D', 'Type11', 'Dimensions11', 20000, 30000, '2023-01-11', '2024-01-11', '2025-01-11'),
(12, '', 287, 5, 'CE3G', 'Type12', 'Dimensions12', 21000, 30000, '2023-01-12', '2024-01-12', '2025-01-12'),
(13, '', 288, 2, 'CE1D', 'Type13', 'Dimensions13', 22000, 30000, '2023-01-13', '2024-01-13', '2025-01-13'),
(14, '', 288, 2, 'CE1G', 'Type14', 'Dimensions14', 23000, 30000, '2023-01-14', '2024-01-14', '2025-01-14'),
(15, '', 288, 4, 'CE2D', 'Type15', 'Dimensions15', 24000, 30000, '2023-01-15', '2024-01-15', '2025-01-15'),
(16, '', 288, 3, 'CE2G', 'Type16', 'Dimensions16', 25000, 30000, '2023-01-16', '2024-01-16', '2025-01-16'),
(17, '', 288, 6, 'CE3D', 'Type17', 'Dimensions17', 26000, 30000, '2023-01-17', '2024-01-17', '2025-01-17'),
(18, '', 288, 5, 'CE3G', 'Type18', 'Dimensions18', 27000, 30000, '2023-01-18', '2024-01-18', '2025-01-18'),
(19, '', 289, 2, 'CE1D', 'Type19', 'Dimensions19', 28000, 30000, '2023-01-19', '2024-01-19', '2025-01-19'),
(20, '', 289, 2, 'CE1G', 'Type20', 'Dimensions20', 29000, 30000, '2023-01-20', '2024-01-20', '2025-01-20'),
(21, '', 289, 4, 'CE2D', 'Type21', 'Dimensions21', 30000, 30000, '2023-01-21', '2024-01-21', '2025-01-21'),
(22, '', 289, 3, 'CE2G', 'Type22', 'Dimensions22', 31000, 30000, '2023-01-22', '2024-01-22', '2025-01-22'),
(23, '', 289, 6, 'CE3D', 'Type23', 'Dimensions23', 32000, 30000, '2023-01-23', '2024-01-23', '2025-01-23'),
(24, '', 289, 5, 'CE3G', 'Type24', 'Dimensions24', 33000, 30000, '2023-01-24', '2024-01-24', '2025-01-24'),
(25, '', 290, 2, 'CE1D', 'Type25', 'Dimensions25', 34000, 30000, '2023-01-25', '2024-01-25', '2025-01-25'),
(26, '', 290, 2, 'CE1G', 'Type26', 'Dimensions26', 35000, 30000, '2023-01-26', '2024-01-26', '2025-01-26'),
(27, '', 290, 3, 'CE2D', 'Type27', 'Dimensions27', 36000, 30000, '2023-01-27', '2024-01-27', '2025-01-27'),
(28, '', 290, 4, 'CE2G', 'Type28', 'Dimensions28', 37000, 30000, '2023-01-28', '2024-01-28', '2025-01-28'),
(29, '', 290, 5, 'CE3D', 'Type29', 'Dimensions29', 38000, 30000, '2023-01-29', '2024-01-29', '2025-01-29'),
(30, '', 290, 6, 'CE3G', 'Type30', 'Dimensions30', 39000, 30000, '2023-01-30', '2024-01-30', '2025-01-30'),
(31, '', 291, 1, 'CE1D', 'Type31', 'Dimensions31', 40000, 30000, '2023-01-31', '2024-01-31', '2025-01-31'),
(32, '', 291, 2, 'CE1G', 'Type32', 'Dimensions32', 41000, 30000, '2023-02-01', '2024-02-01', '2025-02-01'),
(33, '', 291, 3, 'CE2D', 'Type33', 'Dimensions33', 42000, 30000, '2023-02-02', '2024-02-02', '2025-02-02'),
(34, '', 291, 4, 'CE2G', 'Type34', 'Dimensions34', 43000, 30000, '2023-02-03', '2024-02-03', '2025-02-03'),
(35, '', 291, 5, 'CE3D', 'Type35', 'Dimensions35', 44000, 30000, '2023-02-04', '2024-02-04', '2025-02-04'),
(36, '', 291, 6, 'CE3G', 'Type36', 'Dimensions36', 45000, 30000, '2023-02-05', '2024-02-05', '2025-02-05'),
(37, '', 292, 1, 'CE1D', 'Type37', 'Dimensions37', 46000, 30000, '2023-02-06', '2024-02-06', '2025-02-06'),
(38, '', 292, 2, 'CE1G', 'Type38', 'Dimensions38', 47000, 30000, '2023-02-07', '2024-02-07', '2025-02-07'),
(39, '', 292, 3, 'CE2D', 'Type39', 'Dimensions39', 48000, 30000, '2023-02-08', '2024-02-08', '2025-02-08'),
(40, '', 292, 4, 'CE2G', 'Type40', 'Dimensions40', 49000, 30000, '2023-02-09', '2024-02-09', '2025-02-09'),
(41, '', 292, 5, 'CE3D', 'Type41', 'Dimensions41', 50000, 30000, '2023-02-10', '2024-02-10', '2025-02-10'),
(42, '', 292, 6, 'CE3G', 'Type42', 'Dimensions42', 51000, 30000, '2023-02-11', '2024-02-11', '2025-02-11'),
(43, '', 298, 1, 'CE1D', 'Type43', 'Dimensions43', 52000, 30000, '2023-02-12', '2024-02-12', '2025-02-12'),
(44, '', 298, 2, 'CE1G', 'Type44', 'Dimensions44', 53000, 30000, '2023-02-13', '2024-02-13', '2025-02-13'),
(45, '', 298, 3, 'CE2D', 'Type45', 'Dimensions45', 54000, 30000, '2023-02-14', '2024-02-14', '2025-02-14'),
(46, '', 298, 4, 'CE2G', 'Type46', 'Dimensions46', 52000, 30000, '2023-02-15', '2024-02-15', '2025-02-15'),
(47, '', 298, 5, 'CE3D', 'Type47', 'Dimensions47', 55000, 30000, '2023-02-16', '2024-02-16', '2025-02-16'),
(48, '', 298, 6, 'CE3G', 'Type48', 'Dimensions48', 56000, 30000, '2023-02-17', '2024-02-17', '2025-02-17'),
(49, '', 299, 1, 'CE1D', 'Type49', 'Dimensions49', 57000, 30000, '2023-02-18', '2024-02-18', '2025-02-18'),
(50, '', 299, 2, 'CE1G', 'Type50', 'Dimensions50', 58000, 30000, '2023-02-19', '2024-02-19', '2025-02-19'),
(51, '', 299, 3, 'CE2D', 'Type51', 'Dimensions51', 59000, 30000, '2023-02-20', '2024-02-20', '2025-02-20'),
(52, '', 299, 4, 'CE2G', 'Type52', 'Dimensions52', 60000, 30000, '2023-02-21', '2024-02-21', '2025-02-21'),
(53, '', 299, 5, 'CE3D', 'Type53', 'Dimensions53', 61000, 30000, '2023-02-22', '2024-02-22', '2025-02-22'),
(54, '', 299, 6, 'CE3G', 'Type54', 'Dimensions54', 62000, 30000, '2023-02-23', '2024-02-23', '2025-02-23'),
(55, '', 300, 1, 'CE1D', 'Type55', 'Dimensions55', 63000, 30000, '2023-02-24', '2024-02-24', '2025-02-24'),
(56, '', 300, 2, 'CE1G', 'Type56', 'Dimensions56', 64000, 30000, '2023-02-25', '2024-02-25', '2025-02-25'),
(57, '', 300, 3, 'CE2D', 'Type57', 'Dimensions57', 65000, 30000, '2023-02-26', '2024-02-26', '2025-02-26'),
(58, '', 300, 4, 'CE2G', 'Type58', 'Dimensions58', 66000, 30000, '2023-02-27', '2024-02-27', '2025-02-27'),
(59, '', 300, 5, 'CE3D', 'Type59', 'Dimensions59', 67000, 30000, '2023-02-28', '2024-02-28', '2025-02-28'),
(60, '', 300, 6, 'CE3G', 'Type60', 'Dimensions60', 68000, 30000, '2023-03-01', '2024-03-01', '2025-03-01'),
(61, '', 301, 1, 'CE1D', 'Type61', 'Dimensions61', 69000, 30000, '2023-03-02', '2024-03-02', '2025-03-02'),
(62, '', 301, 2, 'CE1G', 'Type62', 'Dimensions62', 70000, 30000, '2023-03-03', '2024-03-03', '2025-03-03'),
(63, '', 301, 3, 'CE2D', 'Type63', 'Dimensions63', 71000, 30000, '2023-03-04', '2024-03-04', '2025-03-04'),
(64, '', 301, 4, 'CE2G', 'Type64', 'Dimensions64', 72000, 30000, '2023-03-05', '2024-03-05', '2025-03-05'),
(65, '', 301, 5, 'CE3D', 'Type65', 'Dimensions65', 73000, 30000, '2023-03-06', '2024-03-06', '2025-03-06'),
(66, '', 301, 6, 'CE3G', 'Type66', 'Dimensions66', 74000, 30000, '2023-03-07', '2024-03-07', '2025-03-07'),
(67, '', 302, 1, 'CE1D', 'Type67', 'Dimensions67', 75000, 30000, '2023-03-08', '2024-03-08', '2025-03-08'),
(68, '', 302, 2, 'CE1G', 'Type68', 'Dimensions68', 76000, 30000, '2023-03-09', '2024-03-09', '2025-03-09'),
(69, '', 302, 3, 'CE2D', 'Type69', 'Dimensions69', 77000, 30000, '2023-03-10', '2024-03-10', '2025-03-10'),
(70, '', 302, 4, 'CE2G', 'Type70', 'Dimensions70', 78000, 30000, '2023-03-11', '2024-03-11', '2025-03-11'),
(71, '', 302, 5, 'CE3D', 'Type71', 'Dimensions71', 79000, 30000, '2023-03-12', '2024-03-12', '2025-03-12'),
(72, '', 302, 6, 'CE3G', 'Type72', 'Dimensions72', 80000, 30000, '2023-03-13', '2024-03-13', '2025-03-13'),
(73, '', 303, 1, 'CE1D', 'Type73', 'Dimensions73', 81000, 30000, '2023-03-14', '2024-03-14', '2025-03-14'),
(74, '', 303, 2, 'CE1G', 'Type74', 'Dimensions74', 82000, 30000, '2023-03-15', '2024-03-15', '2025-03-15'),
(75, '', 303, 3, 'CE2D', 'Type75', 'Dimensions75', 83000, 30000, '2023-03-16', '2024-03-16', '2025-03-16'),
(76, '', 303, 4, 'CE2G', 'Type76', 'Dimensions76', 84000, 30000, '2023-03-17', '2024-03-17', '2025-03-17'),
(77, '', 303, 5, 'CE3D', 'Type77', 'Dimensions77', 85000, 30000, '2023-03-18', '2024-03-18', '2025-03-18'),
(78, '', 303, 6, 'CE3G', 'Type78', 'Dimensions78', 86000, 30000, '2023-03-19', '2024-03-19', '2025-03-19'),
(79, '', 304, 1, 'CE1D', 'Type79', 'Dimensions79', 87000, 30000, '2023-03-20', '2024-03-20', '2025-03-20'),
(80, '', 304, 2, 'CE1G', 'Type80', 'Dimensions80', 88000, 30000, '2023-03-21', '2024-03-21', '2025-03-21'),
(81, '', 304, 3, 'CE2D', 'Type81', 'Dimensions81', 89000, 30000, '2023-03-22', '2024-03-22', '2025-03-22'),
(82, '', 304, 4, 'CE2G', 'Type82', 'Dimensions82', 90000, 30000, '2023-03-23', '2024-03-23', '2025-03-23'),
(83, '', 304, 5, 'CE3D', 'Type83', 'Dimensions83', 91000, 30000, '2023-03-24', '2024-03-24', '2025-03-24'),
(84, '', 304, 6, 'CE3G', 'Type84', 'Dimensions84', 92000, 30000, '2023-03-25', '2024-03-25', '2025-03-25'),
(85, '', 305, 1, 'CE1D', 'Type85', 'Dimensions85', 93000, 30000, '2023-03-26', '2024-03-26', '2025-03-26'),
(86, '', 305, 2, 'CE1G', 'Type86', 'Dimensions86', 94000, 30000, '2023-03-27', '2024-03-27', '2025-03-27'),
(87, '', 305, 3, 'CE2D', 'Type87', 'Dimensions87', 95000, 30000, '2023-03-28', '2024-03-28', '2025-03-28'),
(88, '', 305, 4, 'CE2G', 'Type88', 'Dimensions88', 96000, 30000, '2023-03-29', '2024-03-29', '2025-03-29'),
(89, '', 305, 5, 'CE3D', 'Type89', 'Dimensions89', 97000, 30000, '2023-03-30', '2024-03-30', '2025-03-30'),
(90, '', 305, 6, 'CE3G', 'Type90', 'Dimensions90', 98000, 30000, '2023-03-31', '2024-03-31', '2025-03-31');

-- --------------------------------------------------------

--
-- Table structure for table `Pneu_Tracteur`
--

CREATE TABLE `Pneu_Tracteur` (
  `ID` int(11) NOT NULL,
  `Ref` varchar(100) NOT NULL,
  `UniteID` int(11) DEFAULT NULL,
  `Num_Place` int(11) NOT NULL,
  `Code_Place` varchar(10) NOT NULL,
  `Type` varchar(100) DEFAULT NULL,
  `Dimensions` varchar(100) DEFAULT NULL,
  `Installation_Date` date DEFAULT NULL,
  `Installation_km` int(11) NOT NULL DEFAULT 0,
  `max_km` int(11) NOT NULL DEFAULT 30000,
  `Last_Inspection_Date` date DEFAULT NULL,
  `Next_Inspection_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Pneu_Tracteur`
--

INSERT INTO `Pneu_Tracteur` (`ID`, `Ref`, `UniteID`, `Num_Place`, `Code_Place`, `Type`, `Dimensions`, `Installation_Date`, `Installation_km`, `max_km`, `Last_Inspection_Date`, `Next_Inspection_Date`) VALUES
(1, 'Ref1', 284, 1, 'TE1G', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(2, 'Ref2', 284, 2, 'TE1D', 'Type1', 'Dimension1', '2023-01-01', 0, 10000, NULL, NULL),
(3, 'Ref3', 284, 3, 'TE2GG', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(4, 'Ref4', 284, 4, 'TE2GD', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(5, 'Ref5', 284, 5, 'TE2DG', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(6, 'Ref6', 284, 6, 'TE2DD', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(7, 'Ref7', 285, 1, 'TE1G', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(8, 'Ref8', 285, 2, 'TE1D', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(9, 'Ref9', 285, 3, 'TE2GG', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(10, 'Ref10', 285, 4, 'TE2GD', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(11, 'Ref11', 285, 5, 'TE2DG', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(12, 'Ref12', 285, 6, 'TE2DD', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(13, 'Ref13', 293, 1, 'TE1G', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(14, 'Ref14', 293, 2, 'TE1D', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(15, 'Ref15', 293, 3, 'TE2GG', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(16, 'Ref16', 293, 4, 'TE2GD', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(17, 'Ref17', 293, 5, 'TE2DG', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(18, 'Ref18', 293, 6, 'TE2DD', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(19, 'Ref19', 294, 1, 'TE1G', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(20, 'Ref20', 294, 2, 'TE1D', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(21, 'Ref21', 294, 3, 'TE2GG', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(22, 'Ref22', 294, 4, 'TE2GD', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(23, 'Ref23', 294, 5, 'TE2DG', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(24, 'Ref24', 294, 6, 'TE2DD', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(25, 'Ref25', 295, 1, 'TE1G', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(26, 'Ref26', 295, 2, 'TE1D', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(27, 'Ref27', 295, 3, 'TE2GG', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(28, 'Ref28', 295, 4, 'TE2GD', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(29, 'Ref29', 295, 5, 'TE2DG', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(30, 'Ref30', 295, 6, 'TE2DD', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(31, 'Ref31', 296, 1, 'TE1G', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(32, 'Ref32', 296, 2, 'TE1D', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(33, 'Ref33', 296, 3, 'TE2GG', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(34, 'Ref34', 296, 4, 'TE2GD', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(35, 'Ref35', 296, 5, 'TE2DG', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(36, 'Ref36', 296, 6, 'TE2DD', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(37, 'Ref37', 297, 1, 'TE1G', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(38, 'Ref38', 297, 2, 'TE1D', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(39, 'Ref39', 297, 3, 'TE2GG', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(40, 'Ref40', 297, 4, 'TE2GD', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(41, 'Ref41', 297, 5, 'TE2DG', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(42, 'Ref42', 297, 6, 'TE2DD', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(43, 'Ref43', 306, 1, 'TE1G', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(44, 'Ref44', 306, 2, 'TE1D', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(45, 'Ref45', 306, 3, 'TE2GG', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(46, 'Ref46', 306, 4, 'TE2GD', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(47, 'Ref47', 306, 5, 'TE2DG', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(48, 'Ref48', 306, 6, 'TE2DD', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(49, 'Ref49', 307, 1, 'TE1G', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(50, 'Ref50', 307, 2, 'TE1D', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(51, 'Ref51', 307, 3, 'TE2GG', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(52, 'Ref52', 307, 4, 'TE2GD', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(53, 'Ref53', 307, 5, 'TE2DG', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(54, 'Ref54', 307, 6, 'TE2DD', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(55, 'Ref55', 308, 1, 'TE1G', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(56, 'Ref56', 308, 2, 'TE1D', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(57, 'Ref57', 308, 3, 'TE2GG', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(58, 'Ref58', 308, 4, 'TE2GD', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(59, 'Ref59', 308, 5, 'TE2DG', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(60, 'Ref60', 308, 6, 'TE2DD', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(61, 'Ref61', 309, 1, 'TE1G', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(62, 'Ref62', 309, 2, 'TE1D', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(63, 'Ref63', 309, 3, 'TE2GG', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(64, 'Ref64', 309, 4, 'TE2GD', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(65, 'Ref65', 309, 5, 'TE2DG', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(66, 'Ref66', 309, 6, 'TE2DD', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(67, 'Ref67', 310, 1, 'TE1G', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(68, 'Ref68', 310, 2, 'TE1D', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(69, 'Ref69', 310, 3, 'TE2GG', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(70, 'Ref70', 310, 4, 'TE2GD', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(71, 'Ref71', 310, 5, 'TE2DG', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(72, 'Ref72', 310, 6, 'TE2DD', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(73, 'Ref73', 311, 1, 'TE1G', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(74, 'Ref74', 311, 2, 'TE1D', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(75, 'Ref75', 311, 3, 'TE2GG', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(76, 'Ref76', 311, 4, 'TE2GD', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(77, 'Ref77', 311, 5, 'TE2DG', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(78, 'Ref78', 311, 6, 'TE2DD', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(79, 'Ref79', 312, 1, 'TE1G', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(80, 'Ref80', 312, 2, 'TE1D', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(81, 'Ref81', 312, 3, 'TE2GG', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(82, 'Ref82', 312, 4, 'TE2GD', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(83, 'Ref83', 312, 5, 'TE2DG', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL),
(84, 'Ref84', 312, 6, 'TE2DD', 'Type1', 'Dimension1', '2023-01-01', 0, 30000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `REMORQUES`
--

CREATE TABLE `REMORQUES` (
  `ID` int(11) NOT NULL,
  `UniteID` int(11) DEFAULT NULL,
  `Attelage_Sellette_Verrou` varchar(100) DEFAULT NULL,
  `Flexibles_Tracteur_Remorque` varchar(100) DEFAULT NULL,
  `Liaison_Electrique_Tracteur_Rem` varchar(100) DEFAULT NULL,
  `Fuite_Air` varchar(100) DEFAULT NULL,
  `Etat_du_Chassis` varchar(100) DEFAULT NULL,
  `Etat_des_Essieux` varchar(100) DEFAULT NULL,
  `Bequilles` varchar(100) DEFAULT NULL,
  `Feux_Arrieres` varchar(100) DEFAULT NULL,
  `Clignotants` varchar(100) DEFAULT NULL,
  `Feux_de_Freinages` varchar(100) DEFAULT NULL,
  `Reflecteur_Arriere` varchar(100) DEFAULT NULL,
  `Pneus` varchar(100) DEFAULT NULL,
  `Suspension` varchar(100) DEFAULT NULL,
  `Ecrous_de_Roue` varchar(100) DEFAULT NULL,
  `Essais_de_Freinage` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SUIVI_MAINTENANCE`
--

CREATE TABLE `SUIVI_MAINTENANCE` (
  `ID` int(11) NOT NULL,
  `Num_Suivi` smallint(6) DEFAULT NULL,
  `N_DEMANDE_INTERVENTION` smallint(6) DEFAULT NULL,
  `UniteID` smallint(6) DEFAULT NULL,
  `DATE_INTERVENTION` date DEFAULT NULL,
  `Indice_KILOMETRIQUE` varchar(7) DEFAULT NULL,
  `Type_INTERVENTION` varchar(1) DEFAULT NULL,
  `INTERVENANT` varchar(11) DEFAULT NULL,
  `DESCRIPTION` varchar(109) DEFAULT NULL,
  `PDR` varchar(34) DEFAULT NULL,
  `Num_BON_SORTIE` varchar(22) DEFAULT NULL,
  `Num_FACTURE_SOUS_TRAITANT` varchar(16) DEFAULT NULL,
  `T_PREARATION_H` varchar(1) DEFAULT NULL,
  `COUT_PDR` varchar(8) DEFAULT NULL,
  `Cout_Sous_Traitance` varchar(8) DEFAULT NULL,
  `Sout_Traitant` varchar(34) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `TRACTEURS`
--

CREATE TABLE `TRACTEURS` (
  `ID` int(11) NOT NULL,
  `UniteID` int(11) DEFAULT NULL,
  `Indicateurs_Tableau_de_Bord` varchar(100) DEFAULT NULL,
  `Ceinture_de_Securite` varchar(100) DEFAULT NULL,
  `Tachygraphe` varchar(100) DEFAULT NULL,
  `Essuies_Glaces_Lavage` varchar(100) DEFAULT NULL,
  `Klaxons` varchar(100) DEFAULT NULL,
  `Test_Demarrage_Arret` varchar(100) DEFAULT NULL,
  `Bruit_Moteur` varchar(100) DEFAULT NULL,
  `Jeu_Volant` varchar(100) DEFAULT NULL,
  `Essais_de_Freinage` varchar(100) DEFAULT NULL,
  `Frein_de_Stationnement` varchar(100) DEFAULT NULL,
  `Phares` varchar(100) DEFAULT NULL,
  `Clignotants` varchar(100) DEFAULT NULL,
  `Etat_du_Pare_Brise` varchar(100) DEFAULT NULL,
  `Etat_des_Vitres` varchar(100) DEFAULT NULL,
  `Retrovisseurs_Exterieur` varchar(100) DEFAULT NULL,
  `Plaque_Immatriculation` varchar(100) DEFAULT NULL,
  `Ecrous_de_Roue` varchar(100) DEFAULT NULL,
  `Pneus_AV` varchar(100) DEFAULT NULL,
  `Suspension_AV` varchar(100) DEFAULT NULL,
  `Fuite_Huile_Moteur` varchar(100) DEFAULT NULL,
  `Fuite_Air` varchar(100) DEFAULT NULL,
  `Pneus_AR` varchar(100) DEFAULT NULL,
  `Suspension_AR` varchar(100) DEFAULT NULL,
  `Etat_du_Chassis` varchar(100) DEFAULT NULL,
  `Etat_des_Essieux` varchar(100) DEFAULT NULL,
  `Feux_de_Freinages` varchar(100) DEFAULT NULL,
  `Reflecteur_Arriere` varchar(100) DEFAULT NULL,
  `Feux_Arrieres` varchar(100) DEFAULT NULL,
  `Fumee_Echappement` varchar(100) DEFAULT NULL,
  `Pare_Flamme` varchar(100) DEFAULT NULL,
  `Fixation_de_la_Cabine` varchar(100) DEFAULT NULL,
  `Etat_General_de_la_Cabine` varchar(100) DEFAULT NULL,
  `Protecteur_Batterie` varchar(100) DEFAULT NULL,
  `Protection_Cables` varchar(100) DEFAULT NULL,
  `Coupe_Batterie` varchar(100) DEFAULT NULL,
  `Batterie` varchar(100) DEFAULT NULL,
  `Boitier_Fusibles` varchar(100) DEFAULT NULL,
  `Limitateur_de_Vitesse` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UNITES`
--

CREATE TABLE `UNITES` (
  `ID` int(11) NOT NULL,
  `Image` varchar(200) NOT NULL DEFAULT '''''',
  `Type_Unite` varchar(22) DEFAULT NULL,
  `Immatriculation` varchar(9) DEFAULT NULL,
  `km` int(11) NOT NULL,
  `Date_Acquisition` date DEFAULT NULL,
  `Date_Inspection` date DEFAULT NULL,
  `Inspecteur` varchar(100) DEFAULT NULL,
  `Marque` varchar(16) DEFAULT NULL,
  `Type_Constructeur` varchar(12) DEFAULT NULL,
  `Numero_Chassis` varchar(17) DEFAULT NULL,
  `ADR` varchar(3) DEFAULT NULL,
  `Puissance_CV_Fiscaux` int(11) DEFAULT NULL,
  `Poids_Vide` int(11) DEFAULT NULL,
  `Charge_Utile_en_Tonnage` decimal(5,2) DEFAULT NULL,
  `Date_Mise_en_Circulation` date DEFAULT NULL,
  `Date_Mise_en_Service_SRTS` date DEFAULT NULL,
  `PTAC_en_Te` decimal(5,2) DEFAULT NULL,
  `PTRA_en_T` decimal(5,2) DEFAULT NULL,
  `Nbre_Essieux` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `UNITES`
--

INSERT INTO `UNITES` (`ID`, `Image`, `Type_Unite`, `Immatriculation`, `km`, `Date_Acquisition`, `Date_Inspection`, `Inspecteur`, `Marque`, `Type_Constructeur`, `Numero_Chassis`, `ADR`, `Puissance_CV_Fiscaux`, `Poids_Vide`, `Charge_Utile_en_Tonnage`, `Date_Mise_en_Circulation`, `Date_Mise_en_Service_SRTS`, `PTAC_en_Te`, `PTRA_en_T`, `Nbre_Essieux`) VALUES
(284, 'images/camion1.png', 'TRACTEUR ROUTIER', '622TU198', 12000, NULL, NULL, NULL, 'DAIMLER-CHRYSLER', '93401', 'WDB93401310157136', 'OUI', 32, 7, 0.00, '2017-06-02', '2017-06-02', 18.00, 40.00, 2),
(285, 'images/camion2.png', 'TRACTEUR ROUTIER', '6928TU211', 50000, NULL, NULL, NULL, 'MERCEDES-BENZ', '9440336', 'AXM9440325S904681', 'OUI', 32, 7, 0.00, '2019-07-18', '2019-07-18', 18.00, 40.00, 2),
(286, 'images/citerne1.png', 'CITERNE 8 COMPARTIMENT', 'REM77747', 80000, NULL, NULL, NULL, 'SICAME', 'SRC2S32T', 'SRC2S32T10443', 'OUI', 7, 32, 0.00, '2008-08-07', '2016-04-29', 0.00, 0.00, 2),
(287, 'images/citerne2.png', 'CITERNE 7 COMPARTIMENT', 'REM81972', 58380, NULL, NULL, NULL, 'SICAME', 'SRC3S33T5', 'SRC3S33T511926', 'OUI', 7, 34, 0.00, '2010-04-14', '2015-01-30', 0.00, 0.00, 3),
(288, 'images/citerne3.png', 'CITERNE 7 COMPARTIMENT', 'REM81973', 41350, NULL, NULL, NULL, 'SICAME', 'SRC3S33T5', 'SRC3S33T511927', 'OUI', 8, 34, 0.00, '2010-04-14', '2015-01-30', 0.00, 0.00, 3),
(289, 'images/citerne4.png', 'CITERNE 7 COMPARTIMENT', 'REM86021', 31611, NULL, NULL, NULL, 'SICAME', 'SRC3S32T8', 'SRC3S32T812983', 'OUI', 7, 33, 0.00, '2011-08-16', '2015-02-23', 0.00, 0.00, 3),
(290, 'images/citerne5.png', 'CITERNE 7 COMPARTIMENT', 'REM102425', 34003, NULL, NULL, NULL, 'SIMATRA', 'SRC33T3A317C', 'SRC33T3A0047', 'OUI', 8, 33, 0.00, '2016-12-02', '2016-12-02', 0.00, 0.00, 3),
(291, 'images/citerne6.png', 'CITERNE 7 COMPARTIMENT', 'REM102426', 75184, NULL, NULL, NULL, 'SIMATRA', 'SRC33T3A317C', 'SRC33T3A0053', 'OUI', 8, 33, 0.00, '2016-12-02', '2016-12-02', 0.00, 0.00, 3),
(292, 'images/citerne7.png', 'CITERNE 6 COMPARTIMENT', 'REM110844', 73912, NULL, NULL, NULL, 'SICAME', 'SRC333', 'AYSSRC333JC016129', 'OUI', 7, 33, 0.00, '2019-08-14', '2019-08-14', 0.00, 0.00, 3),
(293, 'images/camion3.png', 'TRACTEUR ROUTIER', '4792TU217', 44010, NULL, NULL, NULL, 'MERCEDES-BENZ', '93401', 'WDB93401310313186', 'OUI', 32, 7, 0.00, '2020-08-21', '2020-08-21', 18.00, 40.00, 2),
(294, 'images/camion4.png', 'TRACTEUR ROUTIER', '4794TU217', 98313, NULL, NULL, NULL, 'MERCEDES-BENZ', '93401', 'WDB93401310313187', 'OUI', 32, 7, 0.00, '2020-08-21', '2020-08-21', 18.00, 40.00, 2),
(295, 'images/camion5.png', 'TRACTEUR ROUTIER', '4800TU217', 133000, NULL, NULL, NULL, 'MERCEDES-BENZ', '93401', 'WDB93401310313188', 'OUI', 32, 7, 0.00, '2020-08-21', '2020-08-21', 18.00, 40.00, 2),
(296, 'images/camion6.png', 'TRACTEUR ROUTIER', '5660TU217', 2731, NULL, NULL, NULL, 'MERCEDES-BENZ', '93401', 'WDB93401310311032', 'OUI', 32, 7, 0.00, '2020-08-26', '2020-08-26', 18.00, 40.00, 2),
(297, 'images/camion7.png', 'TRACTEUR ROUTIER', '5661TU217', 35056, NULL, NULL, NULL, 'MERCEDES-BENZ', '93401', 'WDB93401310379020', 'OUI', 32, 7, 0.00, '2020-08-26', '2020-08-26', 18.00, 40.00, 2),
(298, 'images/\'\'', 'CITERNE 1 COMPARTIMENT', 'REM91513', 67086, NULL, NULL, NULL, 'COMET', 'SRCH3S', 'SRCH3S003', 'NON', 7, 26, 0.00, '2013-04-15', '2020-08-17', 32.90, 0.00, 3),
(299, 'images/\'\'', 'CITERNE 1 COMPARTIMENT', 'REM92681', 30263, NULL, NULL, NULL, 'COMET', 'SRCH3S', 'SRCH3S014', 'NON', 7, 26, 0.00, '2013-07-29', '2020-08-17', 32.90, 0.00, 3),
(300, 'images/citerne8.png', 'CITERNE 6 COMPARTIMENT', 'REM112925', 50058, NULL, NULL, NULL, 'SIMATRA', 'SRC33T3A326C', 'AYTSRC33T3A000083', 'OUI', 7, 26, 0.00, '2020-07-23', '2020-07-23', 32.90, 0.00, 3),
(301, 'images/citerne9.png', 'CITERNE 6 COMPARTIMENT', 'REM112926', 59499, NULL, NULL, NULL, 'SIMATRA', 'SRC33T3A326C', 'AYTSRC33T3A000084', 'OUI', 7, 26, 0.00, '2020-07-23', '2020-07-23', 32.85, 0.00, 3),
(302, 'images/citerne10.png', 'CITERNE 6 COMPARTIMENT', 'REM112927', 47323, NULL, NULL, NULL, 'SIMATRA', 'SRC33T3A326C', 'AYTSRC33T3A000082', 'OUI', 7, 26, 0.00, '2020-07-23', '2020-07-23', 32.90, 0.00, 3),
(303, 'images/\'\'', 'CITERNE 6 COMPARTIMENT', 'REM112928', 58120, NULL, NULL, NULL, 'SIMATRA', 'SRC33T3A326C', 'AYTSRC33T3A000085', 'OUI', 7, 26, 0.00, '2020-07-23', '2020-07-23', 32.90, 0.00, 3),
(304, 'images/\'\'', 'CITERNE 6 COMPARTIMENT', 'REM112929', 48631, NULL, NULL, NULL, 'SIMATRA', 'SRC33T3A326C', 'AYTSRC33T3A000086', 'OUI', 7, 26, 0.00, '2020-07-23', '2020-07-23', 32.88, 0.00, 3),
(305, 'images/\'\'', 'CITERNE 6 COMPARTIMENT', 'REM112931', 68796, NULL, NULL, NULL, 'SIMATRA', 'SRC33T3A326C', 'AYTSRC33T3A000087', 'OUI', 7, 26, 0.00, '2020-07-23', '2020-07-23', 32.77, 0.00, 3),
(306, 'images/camion8.png', 'TRACTEUR ROUTIER', '7699TU207', 98086, NULL, NULL, NULL, 'MERCEDES-BENZ', '9440336', 'AXM9440325S904748', 'OUI', 32, 7, 0.00, '2018-10-30', '2020-10-13', 18.00, 40.00, 2),
(307, 'images/\'\'', 'TRACTEUR ROUTIER', '4102TU223', 84042, NULL, NULL, NULL, 'MERCEDES-BENZ', '94403-36', 'AXM9440325S904716', 'OUI', 32, 7, 0.00, '2021-06-09', '2021-06-09', 18.00, 40.00, 2),
(308, 'images/\'\'', 'TRACTEUR ROUTIER', '8252TU193', 25954, NULL, NULL, NULL, 'VOLVO', 'FM42T38BM', 'YV2XSG0A9GA785333', 'OUI', 51, 7, 0.00, '2016-11-30', '2016-11-30', 18.00, 40.00, 2),
(309, 'images/\'\'', 'TRACTEUR ROUTIER', '8262TU193', 77646, NULL, NULL, NULL, 'VOLVO', 'FM42T38BM', 'YV2XSG0A1GA785343', 'OUI', 51, 7, 0.00, '2016-11-30', '2016-11-30', 18.00, 40.00, 2),
(310, 'images/\'\'', 'TRACTEUR ROUTIER', '619TU198', 10365, NULL, NULL, NULL, 'DAIMLER-CHRYSLER', '93401', 'WDB93401310157135', 'OUI', 32, 7, 0.00, '2017-06-02', '2017-06-02', 18.00, 40.00, 2),
(311, 'images/\'\'', 'TRACTEUR ROUTIER', '6075TU140', 18889, NULL, NULL, NULL, 'VOLVO', 'FH42TB21', 'YV2ASG0AX96887400', 'OUI', 30, 7, 0.00, '2009-09-30', '2014-08-11', 18.00, 40.00, 2),
(312, 'images/\'\'', 'TRACTEUR ROUTIER', '1604TU143', 63352, NULL, NULL, NULL, 'VOLVO', 'FH42TB1', 'YV2ASG0A9A6888168', 'OUI', 34, 7, 0.00, '2010-02-12', '2017-02-27', 18.00, 40.00, 2),
(313, 'images/\'\'', 'VOITURE', '5141TU131', 60093, NULL, NULL, NULL, 'VOLKWAGEN', '', 'CC', '', 0, 0, 0.00, '2008-02-05', '2008-02-05', 0.00, 0.00, 0),
(314, 'images/\'\'', '', '5135TU193', 10408, NULL, NULL, NULL, '', '', '', '', 0, 0, 0.00, '2008-02-05', '2008-02-05', 0.00, 0.00, 0),
(315, 'images/\'\'', '', '5723TU166', 71763, NULL, NULL, NULL, '', '', '', '', 0, 0, 0.00, '2008-02-05', '2008-02-05', 0.00, 0.00, 0);

-- --------------------------------------------------------

--
-- Table structure for table `VIDANGES`
--

CREATE TABLE `VIDANGES` (
  `ID` int(11) NOT NULL,
  `UniteID` int(11) DEFAULT NULL,
  `Date_Vidange` date DEFAULT NULL,
  `Type_Vidange` varchar(100) DEFAULT NULL,
  `Cout_Vidange` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `VISITE_TECHNIQUE`
--

CREATE TABLE `VISITE_TECHNIQUE` (
  `ID` int(11) NOT NULL,
  `ID_Unite` int(11) DEFAULT NULL,
  `Date_Visite` date DEFAULT NULL,
  `Objet_Visite` varchar(100) DEFAULT NULL,
  `Observations` varchar(100) DEFAULT NULL,
  `Nom_Responsable` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `VOITURES_DE_SERVICE`
--

CREATE TABLE `VOITURES_DE_SERVICE` (
  `ID` int(11) NOT NULL,
  `Immatriculation` varchar(100) DEFAULT NULL,
  `Marque` varchar(100) DEFAULT NULL,
  `Numero_Chassis` varchar(100) DEFAULT NULL,
  `Nb_Place` varchar(100) DEFAULT NULL,
  `Date_Acquisition` date DEFAULT NULL,
  `Puissance` varchar(100) DEFAULT NULL,
  `Energie` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ARTICLES`
--
ALTER TABLE `ARTICLES`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Categorie_Piece`
--
ALTER TABLE `Categorie_Piece`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `CITERNES`
--
ALTER TABLE `CITERNES`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idx_citernes_uniteid` (`UniteID`);

--
-- Indexes for table `DEMANDES_INTERVENTIONS_CURATIVE`
--
ALTER TABLE `DEMANDES_INTERVENTIONS_CURATIVE`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idx_demandes_interventions_curative_uniteid` (`UniteID`);

--
-- Indexes for table `Disque_Roues_Remorque`
--
ALTER TABLE `Disque_Roues_Remorque`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idx_disque_roues_remorque_uniteid` (`UniteID`);

--
-- Indexes for table `Disque_Roues_Tracteur`
--
ALTER TABLE `Disque_Roues_Tracteur`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idx_disque_roues_tracteur_uniteid` (`UniteID`);

--
-- Indexes for table `Historique_Affectation_Tracteur_Citerne`
--
ALTER TABLE `Historique_Affectation_Tracteur_Citerne`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `HIST_INTERVENTIONS`
--
ALTER TABLE `HIST_INTERVENTIONS`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idx_interventions_curatives_uniteid` (`IntervensionID`);

--
-- Indexes for table `Hist_Piece_Unite`
--
ALTER TABLE `Hist_Piece_Unite`
  ADD PRIMARY KEY (`PieceID`,`UniteID`);

--
-- Indexes for table `INTERVENTIONS_CURATIVES`
--
ALTER TABLE `INTERVENTIONS_CURATIVES`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idx_interventions_curatives_uniteid` (`UniteID`);

--
-- Indexes for table `INTERVENTIONS_PREVENTIVES`
--
ALTER TABLE `INTERVENTIONS_PREVENTIVES`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idx_interventions_preventives_uniteid` (`UniteID`);

--
-- Indexes for table `LISTE_INTERVENTIONS`
--
ALTER TABLE `LISTE_INTERVENTIONS`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `PERSONNELS`
--
ALTER TABLE `PERSONNELS`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `PIECES`
--
ALTER TABLE `PIECES`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Pneu_Citerne`
--
ALTER TABLE `Pneu_Citerne`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idx_pneu_remorques_uniteid` (`UniteID`);

--
-- Indexes for table `Pneu_Tracteur`
--
ALTER TABLE `Pneu_Tracteur`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idx_pneu_tracteur_uniteid` (`UniteID`);

--
-- Indexes for table `REMORQUES`
--
ALTER TABLE `REMORQUES`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idx_remorques_uniteid` (`UniteID`);

--
-- Indexes for table `SUIVI_MAINTENANCE`
--
ALTER TABLE `SUIVI_MAINTENANCE`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idx_suivi_maintenance_uniteid` (`UniteID`);

--
-- Indexes for table `TRACTEURS`
--
ALTER TABLE `TRACTEURS`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idx_tracteurs_uniteid` (`UniteID`);

--
-- Indexes for table `UNITES`
--
ALTER TABLE `UNITES`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `VIDANGES`
--
ALTER TABLE `VIDANGES`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idx_vidanges_uniteid` (`UniteID`);

--
-- Indexes for table `VISITE_TECHNIQUE`
--
ALTER TABLE `VISITE_TECHNIQUE`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idx_visite_technique_uniteid` (`ID_Unite`);

--
-- Indexes for table `VOITURES_DE_SERVICE`
--
ALTER TABLE `VOITURES_DE_SERVICE`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ARTICLES`
--
ALTER TABLE `ARTICLES`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `Categorie_Piece`
--
ALTER TABLE `Categorie_Piece`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `CITERNES`
--
ALTER TABLE `CITERNES`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `DEMANDES_INTERVENTIONS_CURATIVE`
--
ALTER TABLE `DEMANDES_INTERVENTIONS_CURATIVE`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Disque_Roues_Remorque`
--
ALTER TABLE `Disque_Roues_Remorque`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Disque_Roues_Tracteur`
--
ALTER TABLE `Disque_Roues_Tracteur`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `Historique_Affectation_Tracteur_Citerne`
--
ALTER TABLE `Historique_Affectation_Tracteur_Citerne`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `HIST_INTERVENTIONS`
--
ALTER TABLE `HIST_INTERVENTIONS`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `INTERVENTIONS_CURATIVES`
--
ALTER TABLE `INTERVENTIONS_CURATIVES`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `INTERVENTIONS_PREVENTIVES`
--
ALTER TABLE `INTERVENTIONS_PREVENTIVES`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `LISTE_INTERVENTIONS`
--
ALTER TABLE `LISTE_INTERVENTIONS`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `PERSONNELS`
--
ALTER TABLE `PERSONNELS`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `PIECES`
--
ALTER TABLE `PIECES`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `Pneu_Citerne`
--
ALTER TABLE `Pneu_Citerne`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `Pneu_Tracteur`
--
ALTER TABLE `Pneu_Tracteur`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `REMORQUES`
--
ALTER TABLE `REMORQUES`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `SUIVI_MAINTENANCE`
--
ALTER TABLE `SUIVI_MAINTENANCE`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `TRACTEURS`
--
ALTER TABLE `TRACTEURS`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `UNITES`
--
ALTER TABLE `UNITES`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=317;

--
-- AUTO_INCREMENT for table `VIDANGES`
--
ALTER TABLE `VIDANGES`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `VISITE_TECHNIQUE`
--
ALTER TABLE `VISITE_TECHNIQUE`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `VOITURES_DE_SERVICE`
--
ALTER TABLE `VOITURES_DE_SERVICE`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `CITERNES`
--
ALTER TABLE `CITERNES`
  ADD CONSTRAINT `FK_Citernes_UniteID` FOREIGN KEY (`UniteID`) REFERENCES `UNITES` (`ID`);

--
-- Constraints for table `DEMANDES_INTERVENTIONS_CURATIVE`
--
ALTER TABLE `DEMANDES_INTERVENTIONS_CURATIVE`
  ADD CONSTRAINT `FK_Demandes_Interventions_Curative_UniteID` FOREIGN KEY (`UniteID`) REFERENCES `UNITES` (`ID`);

--
-- Constraints for table `INTERVENTIONS_CURATIVES`
--
ALTER TABLE `INTERVENTIONS_CURATIVES`
  ADD CONSTRAINT `FK_Interventions_Curatives_UniteID` FOREIGN KEY (`UniteID`) REFERENCES `UNITES` (`ID`);

--
-- Constraints for table `INTERVENTIONS_PREVENTIVES`
--
ALTER TABLE `INTERVENTIONS_PREVENTIVES`
  ADD CONSTRAINT `FK_Interventions_Preventives_UniteID` FOREIGN KEY (`UniteID`) REFERENCES `UNITES` (`ID`);

--
-- Constraints for table `Pneu_Citerne`
--
ALTER TABLE `Pneu_Citerne`
  ADD CONSTRAINT `Pneu_Citerne_ibfk_1` FOREIGN KEY (`UniteID`) REFERENCES `UNITES` (`ID`) ON UPDATE CASCADE;

--
-- Constraints for table `REMORQUES`
--
ALTER TABLE `REMORQUES`
  ADD CONSTRAINT `FK_Remorques_UniteID` FOREIGN KEY (`UniteID`) REFERENCES `UNITES` (`ID`);

--
-- Constraints for table `TRACTEURS`
--
ALTER TABLE `TRACTEURS`
  ADD CONSTRAINT `FK_Tracteurs_UniteID` FOREIGN KEY (`UniteID`) REFERENCES `UNITES` (`ID`);

--
-- Constraints for table `VIDANGES`
--
ALTER TABLE `VIDANGES`
  ADD CONSTRAINT `FK_Vidanges_UniteID` FOREIGN KEY (`UniteID`) REFERENCES `UNITES` (`ID`);

--
-- Constraints for table `VISITE_TECHNIQUE`
--
ALTER TABLE `VISITE_TECHNIQUE`
  ADD CONSTRAINT `FK_Visite_Technique_UniteID` FOREIGN KEY (`ID_Unite`) REFERENCES `UNITES` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2019 at 01:06 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ict2103_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `user_ID` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`user_ID`, `password`) VALUES
('test', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `batch_course`
--

CREATE TABLE `batch_course` (
  `bc_ID` int(11) NOT NULL,
  `c_ID` varchar(5) DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `enrolled` int(11) DEFAULT NULL,
  `intake` int(11) DEFAULT NULL,
  `graduate` int(11) DEFAULT NULL,
  `last_edited_by` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `batch_course`
--

INSERT INTO `batch_course` (`bc_ID`, `c_ID`, `year`, `enrolled`, `intake`, `graduate`, `last_edited_by`) VALUES
(211, 'C001', 2005, 1732, 530, 495, NULL),
(212, 'C002', 2005, 786, 175, 106, NULL),
(213, 'C003', 2005, 3098, 901, 898, NULL),
(214, 'C004', 2005, 67, 19, 12, NULL),
(215, 'C005', 2005, 0, 0, 0, NULL),
(216, 'C006', 2005, 4868, 1170, 1200, NULL),
(217, 'C007', 2005, 212, 103, 11, NULL),
(218, 'C008', 2005, 352, 149, 69, NULL),
(219, 'C009', 2005, 4799, 1644, 1249, NULL),
(220, 'C010', 2005, 765, 280, 200, NULL),
(221, 'C011', 2005, 498, 125, 125, NULL),
(222, 'C012', 2005, 507, 130, 110, NULL),
(223, 'C013', 2005, 479, 103, 86, NULL),
(224, 'C014', 2005, 3416, 1004, 769, NULL),
(225, 'C015', 2005, 80, 38, 0, NULL),
(226, 'C001', 2006, 1819, 557, 468, NULL),
(227, 'C002', 2006, 810, 226, 193, NULL),
(228, 'C003', 2006, 3297, 1035, 818, NULL),
(229, 'C004', 2006, 78, 26, 14, NULL),
(230, 'C005', 2006, 0, 0, 0, NULL),
(231, 'C006', 2006, 4694, 1025, 1137, NULL),
(232, 'C007', 2006, 334, 137, 13, NULL),
(233, 'C008', 2006, 489, 201, 57, NULL),
(234, 'C009', 2006, 5282, 1813, 1298, NULL),
(235, 'C010', 2006, 796, 185, 139, NULL),
(236, 'C011', 2006, 463, 102, 134, NULL),
(237, 'C012', 2006, 555, 153, 108, NULL),
(238, 'C013', 2006, 503, 119, 94, NULL),
(239, 'C014', 2006, 3755, 1348, 955, NULL),
(240, 'C015', 2006, 117, 36, 0, NULL),
(241, 'C001', 2007, 1914, 625, 574, NULL),
(242, 'C002', 2007, 934, 313, 177, NULL),
(243, 'C003', 2007, 3363, 1069, 893, NULL),
(244, 'C004', 2007, 89, 26, 15, NULL),
(245, 'C005', 2007, 0, 0, 0, NULL),
(246, 'C006', 2007, 4553, 1192, 1258, NULL),
(247, 'C007', 2007, 429, 147, 41, NULL),
(248, 'C008', 2007, 617, 207, 67, NULL),
(249, 'C009', 2007, 6176, 2056, 1123, NULL),
(250, 'C010', 2007, 824, 249, 206, NULL),
(251, 'C011', 2007, 547, 208, 123, NULL),
(252, 'C012', 2007, 546, 136, 141, NULL),
(253, 'C013', 2007, 536, 116, 83, NULL),
(254, 'C014', 2007, 4232, 1415, 869, NULL),
(255, 'C015', 2007, 163, 48, 0, NULL),
(256, 'C001', 2008, 1910, 638, 536, NULL),
(257, 'C002', 2008, 952, 272, 232, NULL),
(258, 'C003', 2008, 3423, 943, 959, NULL),
(259, 'C004', 2008, 93, 21, 17, NULL),
(260, 'C005', 2008, 0, 0, 0, NULL),
(261, 'C006', 2008, 4102, 1064, 1254, NULL),
(262, 'C007', 2008, 503, 129, 50, NULL),
(263, 'C008', 2008, 712, 185, 77, NULL),
(264, 'C009', 2008, 6783, 1971, 1312, NULL),
(265, 'C010', 2008, 1021, 307, 275, NULL),
(266, 'C011', 2008, 649, 221, 115, NULL),
(267, 'C012', 2008, 543, 133, 132, NULL),
(268, 'C013', 2008, 566, 127, 96, NULL),
(269, 'C014', 2008, 4651, 1333, 856, NULL),
(270, 'C015', 2008, 157, 36, 43, NULL),
(271, 'C001', 2009, 2059, 663, 595, NULL),
(272, 'C002', 2009, 1027, 254, 163, NULL),
(273, 'C003', 2009, 3270, 824, 855, NULL),
(274, 'C004', 2009, 103, 29, 19, NULL),
(275, 'C005', 2009, 0, 0, 0, NULL),
(276, 'C006', 2009, 4218, 1278, 1117, NULL),
(277, 'C007', 2009, 548, 148, 88, NULL),
(278, 'C008', 2009, 800, 204, 107, NULL),
(279, 'C009', 2009, 7272, 2138, 1606, NULL),
(280, 'C010', 2009, 1132, 320, 175, NULL),
(281, 'C011', 2009, 711, 186, 118, NULL),
(282, 'C012', 2009, 516, 102, 128, NULL),
(283, 'C013', 2009, 596, 126, 97, NULL),
(284, 'C014', 2009, 4932, 1382, 1040, NULL),
(285, 'C015', 2009, 160, 40, 36, NULL),
(286, 'C001', 2010, 2159, 689, 553, NULL),
(287, 'C002', 2010, 1117, 280, 173, NULL),
(288, 'C003', 2010, 3287, 901, 856, NULL),
(289, 'C004', 2010, 108, 31, 25, NULL),
(290, 'C005', 2010, 0, 0, 0, NULL),
(291, 'C006', 2010, 4498, 1144, 946, NULL),
(292, 'C007', 2010, 607, 186, 121, NULL),
(293, 'C008', 2010, 783, 189, 196, NULL),
(294, 'C009', 2010, 7424, 1807, 1645, NULL),
(295, 'C010', 2010, 1068, 276, 162, NULL),
(296, 'C011', 2010, 783, 175, 89, NULL),
(297, 'C012', 2010, 490, 122, 147, NULL),
(298, 'C013', 2010, 620, 121, 94, NULL),
(299, 'C014', 2010, 4949, 1297, 1172, NULL),
(300, 'C015', 2010, 363, 236, 35, NULL),
(301, 'C001', 2011, 2244, 618, 507, NULL),
(302, 'C002', 2011, 1163, 315, 247, NULL),
(303, 'C003', 2011, 3237, 910, 944, NULL),
(304, 'C004', 2011, 111, 29, 26, NULL),
(305, 'C005', 2011, 0, 0, 303, NULL),
(306, 'C006', 2011, 4598, 1241, 1119, NULL),
(307, 'C007', 2011, 640, 180, 132, NULL),
(308, 'C008', 2011, 820, 264, 213, NULL),
(309, 'C009', 2011, 7306, 1882, 1982, NULL),
(310, 'C010', 2011, 1178, 364, 195, NULL),
(311, 'C011', 2011, 742, 172, 208, NULL),
(312, 'C012', 2011, 490, 135, 133, NULL),
(313, 'C013', 2011, 647, 148, 119, NULL),
(314, 'C014', 2011, 4924, 1406, 1310, NULL),
(315, 'C015', 2011, 575, 269, 50, NULL),
(316, 'C001', 2012, 2316, 682, 589, NULL),
(317, 'C002', 2012, 1119, 216, 241, NULL),
(318, 'C003', 2012, 3368, 989, 825, NULL),
(319, 'C004', 2012, 120, 30, 21, NULL),
(320, 'C005', 2012, 1130, 344, 503, NULL),
(321, 'C006', 2012, 4785, 1344, 1119, NULL),
(322, 'C007', 2012, 761, 270, 149, NULL),
(323, 'C008', 2012, 948, 359, 218, NULL),
(324, 'C009', 2012, 6760, 1758, 1494, NULL),
(325, 'C010', 2012, 1236, 354, 280, NULL),
(326, 'C011', 2012, 717, 191, 207, NULL),
(327, 'C012', 2012, 494, 143, 133, NULL),
(328, 'C013', 2012, 679, 157, 123, NULL),
(329, 'C014', 2012, 4625, 1382, 1074, NULL),
(330, 'C015', 2012, 702, 221, 135, NULL),
(331, 'C001', 2013, 2274, 679, 688, NULL),
(332, 'C002', 2013, 1123, 222, 258, NULL),
(333, 'C003', 2013, 3406, 977, 897, NULL),
(334, 'C004', 2013, 124, 31, 27, NULL),
(335, 'C005', 2013, 975, 246, 402, NULL),
(336, 'C006', 2013, 4893, 1482, 1242, NULL),
(337, 'C007', 2013, 864, 271, 152, NULL),
(338, 'C008', 2013, 1054, 404, 296, NULL),
(339, 'C009', 2013, 7095, 2132, 1766, NULL),
(340, 'C010', 2013, 1321, 351, 251, NULL),
(341, 'C011', 2013, 736, 208, 179, NULL),
(342, 'C012', 2013, 529, 135, 100, NULL),
(343, 'C013', 2013, 744, 189, 124, NULL),
(344, 'C014', 2013, 4715, 1430, 1257, NULL),
(345, 'C015', 2013, 551, 178, 345, NULL),
(346, 'C001', 2014, 2456, 860, 649, NULL),
(347, 'C002', 2014, 1213, 314, 258, NULL),
(348, 'C003', 2014, 3597, 1065, 846, NULL),
(349, 'C004', 2014, 132, 38, 30, NULL),
(350, 'C005', 2014, 813, 233, 388, NULL),
(351, 'C006', 2014, 5050, 1441, 1174, NULL),
(352, 'C007', 2014, 937, 304, 229, NULL),
(353, 'C008', 2014, 1076, 379, 309, NULL),
(354, 'C009', 2014, 7535, 2107, 1619, NULL),
(355, 'C010', 2014, 1343, 343, 289, NULL),
(356, 'C011', 2014, 715, 170, 176, NULL),
(357, 'C012', 2014, 555, 139, 114, NULL),
(358, 'C013', 2014, 801, 182, 127, NULL),
(359, 'C014', 2014, 4922, 1357, 1103, NULL),
(360, 'C015', 2014, 393, 69, 219, NULL),
(361, 'C001', 2015, 2684, 830, 556, NULL),
(362, 'C002', 2015, 1189, 262, 351, NULL),
(363, 'C003', 2015, 4027, 1272, 848, NULL),
(364, 'C004', 2015, 134, 34, 32, NULL),
(365, 'C005', 2015, 751, 247, 305, NULL),
(366, 'C006', 2015, 4970, 1429, 1296, NULL),
(367, 'C007', 2015, 934, 244, 233, NULL),
(368, 'C008', 2015, 1126, 417, 353, NULL),
(369, 'C009', 2015, 8054, 2158, 1450, NULL),
(370, 'C010', 2015, 1492, 389, 377, NULL),
(371, 'C011', 2015, 706, 171, 168, NULL),
(372, 'C012', 2015, 602, 181, 130, NULL),
(373, 'C013', 2015, 859, 176, 115, NULL),
(374, 'C014', 2015, 4989, 1288, 1145, NULL),
(375, 'C015', 2015, 373, 94, 188, NULL),
(376, 'C001', 2016, 2909, 912, 664, NULL),
(377, 'C002', 2016, 1205, 252, 274, NULL),
(378, 'C003', 2016, 4230, 1237, 969, NULL),
(379, 'C004', 2016, 145, 39, 28, NULL),
(380, 'C005', 2016, 577, 172, 327, NULL),
(381, 'C006', 2016, 4859, 1333, 1267, NULL),
(382, 'C007', 2016, 958, 297, 259, NULL),
(383, 'C008', 2016, 1335, 593, 368, NULL),
(384, 'C009', 2016, 8449, 2205, 1760, NULL),
(385, 'C010', 2016, 1499, 398, 381, NULL),
(386, 'C011', 2016, 740, 210, 173, NULL),
(387, 'C012', 2016, 596, 148, 153, NULL),
(388, 'C013', 2016, 912, 204, 147, NULL),
(389, 'C014', 2016, 4967, 1240, 1195, NULL),
(390, 'C015', 2016, 382, 110, 95, NULL),
(391, 'C001', 2017, 2963, 834, 725, NULL),
(392, 'C002', 2017, 1222, 219, 238, NULL),
(393, 'C003', 2017, 4665, 1405, 936, NULL),
(394, 'C004', 2017, 141, 30, 33, NULL),
(395, 'C005', 2017, 502, 150, 206, NULL),
(396, 'C006', 2017, 4770, 1474, 1343, NULL),
(397, 'C007', 2017, 957, 276, 257, NULL),
(398, 'C008', 2017, 1611, 703, 410, NULL),
(399, 'C009', 2017, 8475, 2068, 1963, NULL),
(400, 'C010', 2017, 1599, 448, 330, NULL),
(401, 'C011', 2017, 741, 201, 188, NULL),
(402, 'C012', 2017, 599, 135, 128, NULL),
(403, 'C013', 2017, 946, 194, 156, NULL),
(404, 'C014', 2017, 4544, 815, 1308, NULL),
(405, 'C015', 2017, 377, 121, 117, NULL),
(406, 'C001', 2018, 2, 731, 720, NULL),
(407, 'C002', 2018, 1, 280, 343, NULL),
(408, 'C003', 2018, 5, 1, 1, NULL),
(409, 'C004', 2018, 135, 33, 39, NULL),
(410, 'C005', 2018, 449, 185, 226, NULL),
(411, 'C006', 2018, 4, 1, 1, NULL),
(412, 'C007', 2018, 945, 247, 275, NULL),
(413, 'C008', 2018, 1, 728, 385, NULL),
(414, 'C009', 2018, 8, 2, 1, NULL),
(415, 'C010', 2018, 1, 685, 373, NULL),
(416, 'C011', 2018, 818, 226, 165, NULL),
(417, 'C012', 2018, 600, 146, 142, NULL),
(418, 'C013', 2018, 966, 208, 189, NULL),
(419, 'C014', 2018, 4, 916, 1, NULL),
(420, 'C015', 2018, 385, 104, 99, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `batch_school`
--

CREATE TABLE `batch_school` (
  `bs_ID` int(11) NOT NULL,
  `s_ID` varchar(5) DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `enrolled` int(11) DEFAULT NULL,
  `intake` int(11) DEFAULT NULL,
  `graduate` int(11) DEFAULT NULL,
  `last_edited_by` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `batch_school`
--

INSERT INTO `batch_school` (`bs_ID`, `s_ID`, `year`, `enrolled`, `intake`, `graduate`, `last_edited_by`) VALUES
(1261, 'S001', 1982, 16656, 5961, NULL, NULL),
(1262, 'S002', 1982, 639, 639, NULL, NULL),
(1263, 'S003', 1982, 0, 0, NULL, NULL),
(1264, 'S004', 1982, 0, 0, NULL, NULL),
(1265, 'S005', 1982, 0, 0, NULL, NULL),
(1266, 'S006', 1982, 0, 0, NULL, NULL),
(1267, 'S007', 1982, 1808, 1627, NULL, NULL),
(1268, 'S001', 1983, 18535, 6639, 4413, NULL),
(1269, 'S002', 1983, 1387, 765, 0, NULL),
(1270, 'S003', 1983, 0, 0, 0, NULL),
(1271, 'S004', 1983, 0, 0, 0, NULL),
(1272, 'S005', 1983, 0, 0, 0, NULL),
(1273, 'S006', 1983, 0, 0, 0, NULL),
(1274, 'S007', 1983, 1931, 1180, 1050, NULL),
(1275, 'S001', 1984, 19797, 6658, 5235, NULL),
(1276, 'S002', 1984, 2175, 800, 0, NULL),
(1277, 'S003', 1984, 0, 0, 0, NULL),
(1278, 'S004', 1984, 0, 0, 0, NULL),
(1279, 'S005', 1984, 0, 0, 0, NULL),
(1280, 'S006', 1984, 0, 0, 0, NULL),
(1281, 'S007', 1984, 1381, 1054, 1562, NULL),
(1282, 'S001', 1985, 21013, 6962, 5571, NULL),
(1283, 'S002', 1985, 2331, 790, 613, NULL),
(1284, 'S003', 1985, 0, 0, 0, NULL),
(1285, 'S004', 1985, 0, 0, 0, NULL),
(1286, 'S005', 1985, 0, 0, 0, NULL),
(1287, 'S006', 1985, 0, 0, 0, NULL),
(1288, 'S007', 1985, 2088, 1688, 938, NULL),
(1289, 'S001', 1986, 21731, 7478, 6336, NULL),
(1290, 'S002', 1986, 2504, 910, 725, NULL),
(1291, 'S003', 1986, 0, 0, 0, NULL),
(1292, 'S004', 1986, 0, 0, 0, NULL),
(1293, 'S005', 1986, 0, 0, 0, NULL),
(1294, 'S006', 1986, 0, 0, 0, NULL),
(1295, 'S007', 1986, 2424, 1923, 1336, NULL),
(1296, 'S001', 1987, 20060, 6812, 6364, NULL),
(1297, 'S002', 1987, 5426, 1979, 768, NULL),
(1298, 'S003', 1987, 0, 0, 0, NULL),
(1299, 'S004', 1987, 0, 0, 0, NULL),
(1300, 'S005', 1987, 0, 0, 0, NULL),
(1301, 'S006', 1987, 0, 0, 0, NULL),
(1302, 'S007', 1987, 2391, 1588, 1531, NULL),
(1303, 'S001', 1988, 21807, 8028, 5617, NULL),
(1304, 'S002', 1988, 6150, 2281, 1508, NULL),
(1305, 'S003', 1988, 0, 0, 0, NULL),
(1306, 'S004', 1988, 0, 0, 0, NULL),
(1307, 'S005', 1988, 0, 0, 0, NULL),
(1308, 'S006', 1988, 0, 0, 0, NULL),
(1309, 'S007', 1988, 1907, 1340, 1828, NULL),
(1310, 'S001', 1989, 22502, 7648, 6136, NULL),
(1311, 'S002', 1989, 7598, 2061, 1838, NULL),
(1312, 'S003', 1989, 0, 0, 0, NULL),
(1313, 'S004', 1989, 0, 0, 0, NULL),
(1314, 'S005', 1989, 0, 0, 0, NULL),
(1315, 'S006', 1989, 0, 0, 0, NULL),
(1316, 'S007', 1989, 2369, 1867, 1454, NULL),
(1317, 'S001', 1990, 23300, 7483, 6308, NULL),
(1318, 'S002', 1990, 9501, 2921, 1843, NULL),
(1319, 'S003', 1990, 0, 0, 0, NULL),
(1320, 'S004', 1990, 0, 0, 0, NULL),
(1321, 'S005', 1990, 0, 0, 0, NULL),
(1322, 'S006', 1990, 0, 0, 0, NULL),
(1323, 'S007', 1990, 2789, 2080, 1623, NULL),
(1324, 'S001', 1991, 22569, 6623, 7024, NULL),
(1325, 'S002', 1991, 11851, 3766, 2173, NULL),
(1326, 'S003', 1991, 0, 0, 0, NULL),
(1327, 'S004', 1991, 0, 0, 0, NULL),
(1328, 'S005', 1991, 0, 0, 0, NULL),
(1329, 'S006', 1991, 0, 0, 0, NULL),
(1330, 'S007', 1991, 3012, 2205, 1786, NULL),
(1331, 'S001', 1992, 23018, 7129, 7304, NULL),
(1332, 'S002', 1992, 13443, 4198, 2784, NULL),
(1333, 'S003', 1992, 0, 0, 0, NULL),
(1334, 'S004', 1992, 0, 0, 0, NULL),
(1335, 'S005', 1992, 0, 0, 0, NULL),
(1336, 'S006', 1992, 0, 0, 0, NULL),
(1337, 'S007', 1992, 2748, 1801, 2157, NULL),
(1338, 'S001', 1993, 23671, 7311, 7320, NULL),
(1339, 'S002', 1993, 14212, 4647, 3611, NULL),
(1340, 'S003', 1993, 0, 0, 0, NULL),
(1341, 'S004', 1993, 0, 0, 0, NULL),
(1342, 'S005', 1993, 0, 0, 0, NULL),
(1343, 'S006', 1993, 0, 0, 0, NULL),
(1344, 'S007', 1993, 2987, 2365, 2024, NULL),
(1345, 'S001', 1994, 24781, 7712, 7423, NULL),
(1346, 'S002', 1994, 15272, 4883, 3718, NULL),
(1347, 'S003', 1994, 0, 0, 0, NULL),
(1348, 'S004', 1994, 0, 0, 0, NULL),
(1349, 'S005', 1994, 0, 0, 0, NULL),
(1350, 'S006', 1994, 0, 0, 0, NULL),
(1351, 'S007', 1994, 2413, 1703, 2208, NULL),
(1352, 'S001', 1995, 26156, 8005, 7723, NULL),
(1353, 'S002', 1995, 16286, 5176, 4127, NULL),
(1354, 'S003', 1995, 0, 0, 0, NULL),
(1355, 'S004', 1995, 0, 0, 0, NULL),
(1356, 'S005', 1995, 0, 0, 0, NULL),
(1357, 'S006', 1995, 0, 0, 0, NULL),
(1358, 'S007', 1995, 2338, 1759, 1796, NULL),
(1359, 'S001', 1996, 27332, 8291, 8089, NULL),
(1360, 'S002', 1996, 17216, 5282, 4325, NULL),
(1361, 'S003', 1996, 0, 0, 0, NULL),
(1362, 'S004', 1996, 0, 0, 0, NULL),
(1363, 'S005', 1996, 0, 0, 0, NULL),
(1364, 'S006', 1996, 0, 0, 0, NULL),
(1365, 'S007', 1996, 3547, 2860, 1625, NULL),
(1366, 'S001', 1997, 28237, 8469, 8514, NULL),
(1367, 'S002', 1997, 18072, 5544, 4568, NULL),
(1368, 'S003', 1997, 0, 0, 0, NULL),
(1369, 'S004', 1997, 0, 0, 0, NULL),
(1370, 'S005', 1997, 0, 0, 0, NULL),
(1371, 'S006', 1997, 0, 0, 0, NULL),
(1372, 'S007', 1997, 3697, 2723, 2745, NULL),
(1373, 'S001', 1998, 29117, 8906, 9284, NULL),
(1374, 'S002', 1998, 18812, 5724, 4923, NULL),
(1375, 'S003', 1998, 0, 0, 0, NULL),
(1376, 'S004', 1998, 0, 0, 0, NULL),
(1377, 'S005', 1998, 0, 0, 0, NULL),
(1378, 'S006', 1998, 0, 0, 0, NULL),
(1379, 'S007', 1998, 3768, 2768, 2418, NULL),
(1380, 'S001', 1999, 30687, 9917, 9099, NULL),
(1381, 'S002', 1999, 19589, 6062, 5126, NULL),
(1382, 'S003', 1999, 0, 0, 0, NULL),
(1383, 'S004', 1999, 0, 0, 0, NULL),
(1384, 'S005', 1999, 0, 0, 0, NULL),
(1385, 'S006', 1999, 0, 0, 0, NULL),
(1386, 'S007', 1999, 5632, 4468, 2828, NULL),
(1387, 'S001', 2000, 32574, 9858, 8901, NULL),
(1388, 'S002', 2000, 20806, 6619, 5196, NULL),
(1389, 'S003', 2000, 517, 517, 0, NULL),
(1390, 'S004', 2000, 0, 0, 0, NULL),
(1391, 'S005', 2000, 0, 0, 0, NULL),
(1392, 'S006', 2000, 0, 0, 0, NULL),
(1393, 'S007', 2000, 5319, 3750, 4126, NULL),
(1394, 'S001', 2001, 33953, 10013, 9412, NULL),
(1395, 'S002', 2001, 21512, 6100, 5268, NULL),
(1396, 'S003', 2001, 1382, 885, 0, NULL),
(1397, 'S004', 2001, 0, 0, 0, NULL),
(1398, 'S005', 2001, 0, 0, 0, NULL),
(1399, 'S006', 2001, 0, 0, 0, NULL),
(1400, 'S007', 2001, 5387, 3625, 3440, NULL),
(1401, 'S001', 2002, 33822, 9271, 9890, NULL),
(1402, 'S002', 2002, 22420, 6477, 5347, NULL),
(1403, 'S003', 2002, 2363, 1015, 0, NULL),
(1404, 'S004', 2002, 0, 0, 0, NULL),
(1405, 'S005', 2002, 0, 0, 0, NULL),
(1406, 'S006', 2002, 0, 0, 0, NULL),
(1407, 'S007', 2002, 5823, 4016, 3756, NULL),
(1408, 'S001', 2003, 33185, 9658, 9198, NULL),
(1409, 'S002', 2003, 22594, 6204, 5850, NULL),
(1410, 'S003', 2003, 3651, 1336, 12, NULL),
(1411, 'S004', 2003, 0, 0, 0, NULL),
(1412, 'S005', 2003, 0, 0, 0, NULL),
(1413, 'S006', 2003, 0, 0, 0, NULL),
(1414, 'S007', 2003, 5033, 2863, 4737, NULL),
(1415, 'S001', 2004, 33153, 8677, 9019, NULL),
(1416, 'S002', 2004, 24306, 7932, 5910, NULL),
(1417, 'S003', 2004, 5001, 1807, 407, NULL),
(1418, 'S004', 2004, 0, 0, 0, NULL),
(1419, 'S005', 2004, 0, 0, 0, NULL),
(1420, 'S006', 2004, 0, 0, 0, NULL),
(1421, 'S007', 2004, 3832, 2668, 3419, NULL),
(1422, 'S001', 2005, 33431, 9217, 8626, NULL),
(1423, 'S002', 2005, 25871, 7869, 6012, NULL),
(1424, 'S003', 2005, 6020, 1793, 723, NULL),
(1425, 'S004', 2005, 0, 0, 0, NULL),
(1426, 'S005', 2005, 0, 0, 0, NULL),
(1427, 'S006', 2005, 0, 0, 0, NULL),
(1428, 'S007', 2005, 4821, 3700, 3361, NULL),
(1429, 'S001', 2006, 34602, 10249, 8676, NULL),
(1430, 'S002', 2006, 27911, 8481, 6215, NULL),
(1431, 'S003', 2006, 6688, 1996, 964, NULL),
(1432, 'S004', 2006, 0, 0, 0, NULL),
(1433, 'S005', 2006, 0, 0, 0, NULL),
(1434, 'S006', 2006, 0, 0, 0, NULL),
(1435, 'S007', 2006, 4936, 3176, 3512, NULL),
(1436, 'S001', 2007, 35974, 10264, 8443, NULL),
(1437, 'S002', 2007, 29975, 9397, 6972, NULL),
(1438, 'S003', 2007, 7936, 2499, 1326, NULL),
(1439, 'S004', 2007, 0, 0, 0, NULL),
(1440, 'S005', 2007, 0, 0, 0, NULL),
(1441, 'S006', 2007, 0, 0, 0, NULL),
(1442, 'S007', 2007, 4603, 3144, 3938, NULL),
(1443, 'S001', 2008, 36749, 9821, 8583, NULL),
(1444, 'S002', 2008, 31506, 9072, 7094, NULL),
(1445, 'S003', 2008, 8714, 2622, 1749, NULL),
(1446, 'S004', 2008, 0, 0, 0, NULL),
(1447, 'S005', 2008, 0, 0, 0, NULL),
(1448, 'S006', 2008, 0, 0, 0, NULL),
(1449, 'S007', 2008, 4339, 2860, 3674, NULL),
(1450, 'S001', 2009, 37742, 10201, 8791, NULL),
(1451, 'S002', 2009, 33555, 10098, 7628, NULL),
(1452, 'S003', 2009, 9626, 2659, 1672, NULL),
(1453, 'S004', 2009, 0, 0, 0, NULL),
(1454, 'S005', 2009, 0, 0, 0, NULL),
(1455, 'S006', 2009, 0, 0, 0, NULL),
(1456, 'S007', 2009, 4700, 3393, 3671, NULL),
(1457, 'S001', 2010, 38256, 9973, 8957, NULL),
(1458, 'S002', 2010, 34251, 9083, 7956, NULL),
(1459, 'S003', 2010, 10246, 2509, 1752, NULL),
(1460, 'S004', 2010, 798, 798, 0, NULL),
(1461, 'S005', 2010, 0, 0, 0, NULL),
(1462, 'S006', 2010, 0, 0, 0, NULL),
(1463, 'S007', 2010, 4702, 3266, 4038, NULL),
(1464, 'S001', 2011, 38579, 10290, 9491, NULL),
(1465, 'S002', 2011, 34394, 9203, 8684, NULL),
(1466, 'S003', 2011, 10376, 2598, 2335, NULL),
(1467, 'S004', 2011, 2148, 1408, 0, NULL),
(1468, 'S005', 2011, 0, 0, 0, NULL),
(1469, 'S006', 2011, 0, 0, 0, NULL),
(1470, 'S007', 2011, 4338, 3085, 4041, NULL),
(1471, 'S001', 2012, 39274, 10278, 9118, NULL),
(1472, 'S002', 2012, 34248, 8933, 8716, NULL),
(1473, 'S003', 2012, 10792, 3051, 2522, NULL),
(1474, 'S004', 2012, 3833, 1901, 367, NULL),
(1475, 'S005', 2012, 476, 476, 0, NULL),
(1476, 'S006', 2012, 0, 0, 0, NULL),
(1477, 'S007', 2012, 4069, 2980, 3793, NULL),
(1478, 'S001', 2013, 39688, 10577, 9676, NULL),
(1479, 'S002', 2013, 34294, 10197, 9786, NULL),
(1480, 'S003', 2013, 11086, 2907, 2493, NULL),
(1481, 'S004', 2013, 4368, 2137, 1517, NULL),
(1482, 'S005', 2013, 832, 368, 0, NULL),
(1483, 'S006', 2013, 0, 0, 0, NULL),
(1484, 'S007', 2013, 3054, 2370, 3625, NULL),
(1485, 'S001', 2014, 40839, 10965, 9434, NULL),
(1486, 'S002', 2014, 34644, 9633, 8944, NULL),
(1487, 'S003', 2014, 11398, 2820, 2374, NULL),
(1488, 'S004', 2014, 5039, 2649, 1819, NULL),
(1489, 'S005', 2014, 1249, 442, 0, NULL),
(1490, 'S006', 2014, 362, 362, 0, NULL),
(1491, 'S007', 2014, 3226, 2720, 2857, NULL),
(1492, 'S001', 2015, 41711, 10655, 9371, NULL),
(1493, 'S002', 2015, 35372, 9665, 8533, NULL),
(1494, 'S003', 2015, 11802, 3006, 2479, NULL),
(1495, 'S004', 2015, 5732, 2983, 1966, NULL),
(1496, 'S005', 2015, 1757, 529, 434, NULL),
(1497, 'S006', 2015, 819, 480, 0, NULL),
(1498, 'S007', 2015, 2564, 2062, 3208, NULL),
(1499, 'S001', 2016, 42319, 10691, 9637, NULL),
(1500, 'S002', 2016, 35128, 9102, 8922, NULL),
(1501, 'S003', 2016, 11874, 3013, 2834, NULL),
(1502, 'S004', 2016, 7536, 3755, 1824, NULL),
(1503, 'S005', 2016, 1932, 632, 339, NULL),
(1504, 'S006', 2016, 1505, 709, 0, NULL),
(1505, 'S007', 2016, 2453, 2140, 2704, NULL),
(1506, 'S001', 2017, 42734, 10589, 9796, NULL),
(1507, 'S002', 2017, 34013, 8822, 9440, NULL),
(1508, 'S003', 2017, 12172, 3107, 2699, NULL),
(1509, 'S004', 2017, 8764, 3655, 2189, NULL),
(1510, 'S005', 2017, 2148, 575, 374, NULL),
(1511, 'S006', 2017, 2462, 993, 0, NULL),
(1512, 'S007', 2017, 1926, 973, 2191, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `c_ID` varchar(5) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`c_ID`, `name`) VALUES
('C001', 'Accountancy'),
('C002', 'Architecture, Building & Real Estate'),
('C003', 'Business & Administration'),
('C004', 'Dentistry'),
('C005', 'Education'),
('C006', 'Engineering Sciences'),
('C007', 'Fine & Applied Arts'),
('C008', 'Health Sciences'),
('C009', 'Humanities & Social Sciences'),
('C010', 'Information Technology'),
('C011', 'Law'),
('C012', 'Mass Communication'),
('C013', 'Medicine'),
('C014', 'Natural, Physical & Mathematical Sciences'),
('C015', 'Services');

-- --------------------------------------------------------

--
-- Table structure for table `course_employment`
--

CREATE TABLE `course_employment` (
  `ce_ID` int(11) NOT NULL,
  `bc_ID` int(11) DEFAULT NULL,
  `employ_rate` float DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `monthly_base_pay` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `graduate_employment`
--

CREATE TABLE `graduate_employment` (
  `ge_ID` int(11) NOT NULL,
  `employ_rate` float DEFAULT NULL,
  `school` varchar(100) DEFAULT NULL,
  `course` varchar(100) DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `monthly_base_pay` float DEFAULT NULL,
  `last_edited_by` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `graduate_employment`
--

INSERT INTO `graduate_employment` (`ge_ID`, `employ_rate`, `school`, `course`, `year`, `monthly_base_pay`, `last_edited_by`) VALUES
(1, 97.4, 'Nanyang Technological University', 'Accountancy and Business', 2013, 3701, NULL),
(2, 97.1, 'Nanyang Technological University', 'Accountancy (3-yr direct Honours Programme)', 2013, 2850, NULL),
(3, 90.9, 'Nanyang Technological University', 'Business (3-yr direct Honours Programme)', 2013, 3053, NULL),
(4, 87.5, 'Nanyang Technological University', 'Business and Computing', 2013, 3557, NULL),
(5, 95.3, 'Nanyang Technological University', 'Aerospace Engineering', 2013, 3494, NULL),
(6, 81.3, 'Nanyang Technological University', 'Bioengineering', 2013, 2952, NULL),
(7, 87.3, 'Nanyang Technological University', 'Chemical and Biomolecular Engineering', 2013, 3235, NULL),
(8, 90.3, 'Nanyang Technological University', 'Computer Engineering', 2013, 3326, NULL),
(9, 94.8, 'Nanyang Technological University', 'Civil Engineering', 2013, 3091, NULL),
(10, 92.1, 'Nanyang Technological University', 'Computer Science', 2013, 3249, NULL),
(11, 91, 'Nanyang Technological University', 'Electrical and Electronic Engineering', 2013, 3133, NULL),
(12, 84, 'Nanyang Technological University', 'Environmental Engineering', 2013, 3091, NULL),
(13, 85.7, 'Nanyang Technological University', 'Information Engineering and Media', 2013, 3160, NULL),
(14, 82.5, 'Nanyang Technological University', 'Materials Engineering', 2013, 2989, NULL),
(15, 91.6, 'Nanyang Technological University', 'Mechanical Engineering', 2013, 3125, NULL),
(16, 95.6, 'Nanyang Technological University', 'Maritime Studies', 2013, 3050, NULL),
(17, 81.6, 'Nanyang Technological University', 'Art, Design & Media', 2013, 2639, NULL),
(18, 85.1, 'Nanyang Technological University', 'Chinese', 2013, 2818, NULL),
(19, 89.4, 'Nanyang Technological University', 'Communication Studies', 2013, 2893, NULL),
(20, 89.9, 'Nanyang Technological University', 'Economics', 2013, 3085, NULL),
(21, 82.7, 'Nanyang Technological University', 'English', 2013, 3087, NULL),
(22, 90.6, 'Nanyang Technological University', 'Linguistics and Multilingual Studies', 2013, 2691, NULL),
(23, 82.4, 'Nanyang Technological University', 'Psychology', 2013, 3007, NULL),
(24, 74.4, 'Nanyang Technological University', 'Sociology', 2013, 2980, NULL),
(25, 0, 'Nanyang Technological University', 'Biomedical Sciences **', 2013, 0, NULL),
(26, 90.7, 'Nanyang Technological University', 'Biomedical Sciences (Traditional Chinese Medicine) ^', 2013, 2840, NULL),
(27, 78.6, 'Nanyang Technological University', 'Biological Sciences', 2013, 2881, NULL),
(28, 79.8, 'Nanyang Technological University', 'Chemistry & Biological Chemistry', 2013, 2993, NULL),
(29, 0, 'Nanyang Technological University', 'Mathematics & Economics **', 2013, 0, NULL),
(30, 86, 'Nanyang Technological University', 'Mathematical Science', 2013, 3169, NULL),
(31, 80.8, 'Nanyang Technological University', 'Physics / Applied Physics', 2013, 3164, NULL),
(32, 68.2, 'Nanyang Technological University', 'Sports Science and Management', 2013, 2968, NULL),
(33, 100, 'Nanyang Technological University', 'Science (with Education)', 2013, 3377, NULL),
(34, 100, 'Nanyang Technological University', 'Arts (with Education)', 2013, 3413, NULL),
(35, 84.8, 'National University of Singapore', 'Bachelor of Arts', 2013, 2741, NULL),
(36, 86.6, 'National University of Singapore', 'Bachelor of Arts (Hons)', 2013, 3057, NULL),
(37, 88.1, 'National University of Singapore', 'Bachelor of Social Sciences', 2013, 3098, NULL),
(38, 88.7, 'National University of Singapore', 'Bachelor of Business Administration', 2013, 2960, NULL),
(39, 94.6, 'National University of Singapore', 'Bachelor of Business Administration (Hons)', 2013, 3404, NULL),
(40, 93.3, 'National University of Singapore', 'Bachelor of Business Administration (Accountancy)', 2013, 2740, NULL),
(41, 97.2, 'National University of Singapore', 'Bachelor of Business Administration (Accountancy) (Hons)', 2013, 3065, NULL),
(42, 88.9, 'National University of Singapore', 'Bachelor of Computing (Communications and Media)', 2013, 3350, NULL),
(43, 0, 'National University of Singapore', 'Bachelor of Computing (Computational Biology) **', 2013, 0, NULL),
(44, 0, 'National University of Singapore', 'Bachelor of Computing (Computer Engineering) **', 2013, 0, NULL),
(45, 92.4, 'National University of Singapore', 'Bachelor of Computing (Computer Science)', 2013, 3933, NULL),
(46, 88.9, 'National University of Singapore', 'Bachelor of Computing (Electronic Commerce)', 2013, 3277, NULL),
(47, 89.2, 'National University of Singapore', 'Bachelor of Computing (Information Systems)', 2013, 3266, NULL),
(48, 100, 'National University of Singapore', 'Bachelor of Dental Surgery', 2013, 4106, NULL),
(49, 0, 'National University of Singapore', 'Bachelor of Arts (Architecture) ** ##', 2013, 0, NULL),
(50, 82.1, 'National University of Singapore', 'Bachelor of Arts (Industrial Design)', 2013, 3007, NULL),
(51, 96.8, 'National University of Singapore', 'Bachelor of Science (Project and Facilities Management)', 2013, 2961, NULL),
(52, 89.2, 'National University of Singapore', 'Bachelor of Science (Real Estate)', 2013, 2839, NULL),
(53, 74, 'National University of Singapore', 'Bachelor of Engineering (Bioengineering)', 2013, 2823, NULL),
(54, 93.2, 'National University of Singapore', 'Bachelor of Engineering (Chemical Engineering)', 2013, 3245, NULL),
(55, 96.1, 'National University of Singapore', 'Bachelor of Engineering (Civil Engineering)', 2013, 3140, NULL),
(56, 88.9, 'National University of Singapore', 'Bachelor of Engineering (Computer Engineering)', 2013, 3592, NULL),
(57, 88.5, 'National University of Singapore', 'Bachelor of Engineering (Electrical Engineering)', 2013, 3286, NULL),
(58, 86.2, 'National University of Singapore', 'Bachelor of Engineering (Engineering Science)', 2013, 2940, NULL),
(59, 93.8, 'National University of Singapore', 'Bachelor of Engineering (Environmental Engineering)', 2013, 3153, NULL),
(60, 93.9, 'National University of Singapore', 'Bachelor of Engineering (Industrial and Systems Engineering)', 2013, 3330, NULL),
(61, 90.9, 'National University of Singapore', 'Bachelor of Engineering (Materials Science and Engineering)', 2013, 3036, NULL),
(62, 89.1, 'National University of Singapore', 'Bachelor of Engineering (Mechanical Engineering)', 2013, 3155, NULL),
(63, 98.8, 'National University of Singapore', 'Bachelor of Laws (LLB) (Hons) ##', 2013, 4922, NULL),
(64, 100, 'National University of Singapore', 'Bachelor of Medicine and Bachelor of Surgery (MBBS) ##', 2013, 4406, NULL),
(65, 97.5, 'National University of Singapore', 'Bachelor of Science (Nursing)', 2013, 2687, NULL),
(66, 100, 'National University of Singapore', 'Bachelor of Science (Nursing) (Hons)', 2013, 2896, NULL),
(67, 0, 'National University of Singapore', 'Bachelor of Music **', 2013, 0, NULL),
(68, 0, 'National University of Singapore', 'Bachelor of Applied Science **', 2013, 0, NULL),
(69, 97.3, 'National University of Singapore', 'Bachelor of Applied Science (Hons)', 2013, 2850, NULL),
(70, 80.9, 'National University of Singapore', 'Bachelor of Science', 2013, 2726, NULL),
(71, 83.6, 'National University of Singapore', 'Bachelor of Science (Hons)', 2013, 3101, NULL),
(72, 0, 'National University of Singapore', 'Bachelor of Science (Computational Biology) **', 2013, 0, NULL),
(73, 96.4, 'National University of Singapore', 'Bachelor of Science (Pharmacy) (Hons) ##', 2013, 3473, NULL),
(74, 94.2, 'Singapore Management University', 'Accountancy (4-years programme)', 2013, 3231, NULL),
(75, 95.2, 'Singapore Management University', 'Accountancy (4-years programme) Cum Laude and above', 2013, 3580, NULL),
(76, 93.2, 'Singapore Management University', 'Business Management (4-years programme)', 2013, 3344, NULL),
(77, 95.9, 'Singapore Management University', 'Business Management (4-years programme) Cum Laude and above', 2013, 3825, NULL),
(78, 90.6, 'Singapore Management University', 'Economics (4-years programme)', 2013, 3389, NULL),
(79, 94, 'Singapore Management University', 'Economics (4-years programme) Cum Laude and above', 2013, 3731, NULL),
(80, 93.6, 'Singapore Management University', 'Information Systems Management (4-years programme)', 2013, 3389, NULL),
(81, 100, 'Singapore Management University', 'Information Systems Management (4-years programme) Cum Laude and above', 2013, 3786, NULL),
(82, 86.5, 'Singapore Management University', 'Social Sciences (4-years programme)', 2013, 3122, NULL),
(83, 87.5, 'Singapore Management University', 'Social Sciences (4-years programme) Cum Laude and above', 2013, 3251, NULL),
(84, 100, 'Singapore Management University', 'Law (4-years programme) ++', 2013, 5023, NULL),
(85, 100, 'Singapore Management University', 'Law (4-years programme) Cum Laude and above', 2013, 5329, NULL),
(86, 98.2, 'Nanyang Technological University', 'Accountancy and Business', 2014, 3539, NULL),
(87, 96.6, 'Nanyang Technological University', 'Accountancy (3-yr direct Honours Programme)', 2014, 2981, NULL),
(88, 89.6, 'Nanyang Technological University', 'Business (3-yr direct Honours Programme)', 2014, 3231, NULL),
(89, 92.9, 'Nanyang Technological University', 'Business and Computing', 2014, 3398, NULL),
(90, 84.6, 'Nanyang Technological University', 'Aerospace Engineering', 2014, 3715, NULL),
(91, 79.8, 'Nanyang Technological University', 'Bioengineering', 2014, 2998, NULL),
(92, 83.8, 'Nanyang Technological University', 'Chemical and Biomolecular Engineering', 2014, 3296, NULL),
(93, 91.4, 'Nanyang Technological University', 'Computer Engineering', 2014, 3423, NULL),
(94, 93.8, 'Nanyang Technological University', 'Civil Engineering', 2014, 3122, NULL),
(95, 94.5, 'Nanyang Technological University', 'Computer Science', 2014, 3269, NULL),
(96, 90.7, 'Nanyang Technological University', 'Electrical and Electronic Engineering', 2014, 3241, NULL),
(97, 88.9, 'Nanyang Technological University', 'Environmental Engineering', 2014, 3121, NULL),
(98, 85.7, 'Nanyang Technological University', 'Information Engineering and Media', 2014, 3185, NULL),
(99, 82.5, 'Nanyang Technological University', 'Materials Engineering', 2014, 3145, NULL),
(100, 90.2, 'Nanyang Technological University', 'Mechanical Engineering', 2014, 3161, NULL),
(101, 92.5, 'Nanyang Technological University', 'Maritime Studies', 2014, 3163, NULL),
(102, 80, 'Nanyang Technological University', 'Art, Design & Media', 2014, 2761, NULL),
(103, 86.8, 'Nanyang Technological University', 'Chinese', 2014, 2927, NULL),
(104, 86.7, 'Nanyang Technological University', 'Communication Studies', 2014, 2891, NULL),
(105, 88.7, 'Nanyang Technological University', 'Economics', 2014, 3183, NULL),
(106, 87, 'Nanyang Technological University', 'English', 2014, 3137, NULL),
(107, 85.7, 'Nanyang Technological University', 'Linguistics and Multilingual Studies', 2014, 3066, NULL),
(108, 66.7, 'Nanyang Technological University', 'Psychology', 2014, 3197, NULL),
(109, 73.2, 'Nanyang Technological University', 'Sociology', 2014, 3002, NULL),
(110, 0, 'Nanyang Technological University', 'Biomedical Science **', 2014, 0, NULL),
(111, 100, 'Nanyang Technological University', 'Biomedical Science (Traditional Chinese Medicine) ^', 2014, 2974, NULL),
(112, 75.1, 'Nanyang Technological University', 'Biological Sciences', 2014, 3083, NULL),
(113, 80.5, 'Nanyang Technological University', 'Chemistry & Biological Chemistry', 2014, 3006, NULL),
(114, 88.4, 'Nanyang Technological University', 'Mathematics & Economics', 2014, 3155, NULL),
(115, 91.3, 'Nanyang Technological University', 'Mathematical Science', 2014, 3022, NULL),
(116, 73.7, 'Nanyang Technological University', 'Physics / Applied Physics', 2014, 3034, NULL),
(117, 87.9, 'Nanyang Technological University', 'Sports Science and Management', 2014, 3076, NULL),
(118, 100, 'Nanyang Technological University', 'Science (with Education)', 2014, 3358, NULL),
(119, 100, 'Nanyang Technological University', 'Arts (with Education)', 2014, 3388, NULL),
(120, 81.9, 'National University of Singapore', 'Bachelor of Arts', 2014, 2719, NULL),
(121, 83.1, 'National University of Singapore', 'Bachelor of Arts (Hons)', 2014, 3141, NULL),
(122, 88.7, 'National University of Singapore', 'Bachelor of Social Sciences', 2014, 3192, NULL),
(123, 87.9, 'National University of Singapore', 'Bachelor of Business Administration', 2014, 3234, NULL),
(124, 94.4, 'National University of Singapore', 'Bachelor of Business Administration (Hons)', 2014, 3979, NULL),
(125, 93.9, 'National University of Singapore', 'Bachelor of Business Administration (Accountancy)', 2014, 2836, NULL),
(126, 100, 'National University of Singapore', 'Bachelor of Business Administration (Accountancy) (Hons)', 2014, 3350, NULL),
(127, 82.1, 'National University of Singapore', 'Bachelor of Computing (Communications and Media)', 2014, 3107, NULL),
(128, 0, 'National University of Singapore', 'Bachelor of Computing (Computational Biology) **', 2014, 0, NULL),
(129, 0, 'National University of Singapore', 'Bachelor of Computing (Computer Engineering) **', 2014, 0, NULL),
(130, 90.6, 'National University of Singapore', 'Bachelor of Computing (Computer Science)', 2014, 3729, NULL),
(131, 85.7, 'National University of Singapore', 'Bachelor of Computing (Electronic Commerce)', 2014, 3183, NULL),
(132, 95.5, 'National University of Singapore', 'Bachelor of Computing (Information Systems)', 2014, 3684, NULL),
(133, 100, 'National University of Singapore', 'Bachelor of Dental Surgery', 2014, 4054, NULL),
(134, 98.4, 'National University of Singapore', 'Bachelor of Arts (Architecture) ##', 2014, 4290, NULL),
(135, 77.3, 'National University of Singapore', 'Bachelor of Arts (Industrial Design)', 2014, 2600, NULL),
(136, 95.3, 'National University of Singapore', 'Bachelor of Science (Project and Facilities Management)', 2014, 3089, NULL),
(137, 93.1, 'National University of Singapore', 'Bachelor of Science (Real Estate)', 2014, 2931, NULL),
(138, 87.5, 'National University of Singapore', 'Bachelor of Engineering (Biomedical Engineering) ^^', 2014, 2966, NULL),
(139, 83.9, 'National University of Singapore', 'Bachelor of Engineering (Chemical Engineering)', 2014, 3277, NULL),
(140, 97.1, 'National University of Singapore', 'Bachelor of Engineering (Civil Engineering)', 2014, 3212, NULL),
(141, 95.2, 'National University of Singapore', 'Bachelor of Engineering (Computer Engineering)', 2014, 3674, NULL),
(142, 90.6, 'National University of Singapore', 'Bachelor of Engineering (Electrical Engineering)', 2014, 3306, NULL),
(143, 81.3, 'National University of Singapore', 'Bachelor of Engineering (Engineering Science)', 2014, 3375, NULL),
(144, 95.2, 'National University of Singapore', 'Bachelor of Engineering (Environmental Engineering)', 2014, 3250, NULL),
(145, 96.5, 'National University of Singapore', 'Bachelor of Engineering (Industrial and Systems Engineering)', 2014, 3591, NULL),
(146, 78.6, 'National University of Singapore', 'Bachelor of Engineering (Materials Science and Engineering)', 2014, 3054, NULL),
(147, 90, 'National University of Singapore', 'Bachelor of Engineering (Mechanical Engineering)', 2014, 3160, NULL),
(148, 98.2, 'National University of Singapore', 'Bachelor of Laws (LLB) (Hons) ##', 2014, 5027, NULL),
(149, 100, 'National University of Singapore', 'Bachelor of Medicine and Bachelor of Surgery ##', 2014, 4404, NULL),
(150, 100, 'National University of Singapore', 'Bachelor of Science (Nursing)', 2014, 2976, NULL),
(151, 100, 'National University of Singapore', 'Bachelor of Science (Nursing) (Hons)', 2014, 3123, NULL),
(152, 0, 'National University of Singapore', 'Bachelor of Music **', 2014, 0, NULL),
(153, 0, 'National University of Singapore', 'Bachelor of Applied Science **', 2014, 0, NULL),
(154, 95.5, 'National University of Singapore', 'Bachelor of Applied Science (Hons)', 2014, 2760, NULL),
(155, 76.8, 'National University of Singapore', 'Bachelor of Science', 2014, 2804, NULL),
(156, 86.6, 'National University of Singapore', 'Bachelor of Science (Hons)', 2014, 3224, NULL),
(157, 0, 'National University of Singapore', 'Bachelor of Science (Computational Biology) **', 2014, 0, NULL),
(158, 98.9, 'National University of Singapore', 'Bachelor of Science (Pharmacy) (Hons) ##', 2014, 3467, NULL),
(159, 93.6, 'Singapore Management University', 'Accountancy (4-year programme)', 2014, 3375, NULL),
(160, 97.4, 'Singapore Management University', 'Accountancy (4-year programme) Cum Laude and above', 2014, 3871, NULL),
(161, 90.9, 'Singapore Management University', 'Business Management (4-year programme)', 2014, 3630, NULL),
(162, 94.5, 'Singapore Management University', 'Business Management (4-year programme) Cum Laude and above', 2014, 4019, NULL),
(163, 90.2, 'Singapore Management University', 'Economics (4-year programme)', 2014, 3525, NULL),
(164, 90.6, 'Singapore Management University', 'Economics (4-year programme) Cum Laude and above', 2014, 3815, NULL),
(165, 92.9, 'Singapore Management University', 'Information Systems Management (4-year programme)', 2014, 3431, NULL),
(166, 97.4, 'Singapore Management University', 'Information Systems Management (4-year programme) Cum Laude and above', 2014, 4057, NULL),
(167, 90.9, 'Singapore Management University', 'Social Sciences (4-year programme)', 2014, 2981, NULL),
(168, 87.5, 'Singapore Management University', 'Social Sciences (4-year programme) Cum Laude and above', 2014, 3331, NULL),
(169, 97.8, 'Singapore Management University', 'Law (4-year programme) ++', 2014, 4932, NULL),
(170, 97.7, 'Singapore Management University', 'Law (4-year programme) Cum Laude and above', 2014, 5089, NULL),
(171, 100, 'Singapore Institute of Technology', 'Bachelor of Arts in Game Design', 2014, 2490, NULL),
(172, 90.6, 'Singapore Institute of Technology', 'Bachelor of Fine Arts in Digital Arts & Animation', 2014, 2586, NULL),
(173, 100, 'Singapore Institute of Technology', 'Bachelor of Science in Computer Science & Game Design', 2014, 2932, NULL),
(174, 100, 'Singapore Institute of Technology', 'Bachelor of Science in Computer Science in Real-Time Interactive Simulation', 2014, 2859, NULL),
(175, 89.1, 'Singapore Institute of Technology', 'Bachelor of Arts with Honours in Communication Design', 2014, 2547, NULL),
(176, 93.9, 'Singapore Institute of Technology', 'Bachelor of Arts with Honours in Interior Design', 2014, 2553, NULL),
(177, 90.1, 'Singapore Institute of Technology', 'Bachelor of Engineering with Honours in Chemical Engineering', 2014, 3041, NULL),
(178, 92.6, 'Singapore Institute of Technology', 'Bachelor of Engineering with Honours in Marine Engineering', 2014, 3208, NULL),
(179, 97.1, 'Singapore Institute of Technology', 'Bachelor of Engineering with Honours in Mechanical Design & Manufacturing Engineering', 2014, 3196, NULL),
(180, 100, 'Singapore Institute of Technology', 'Bachelor of Engineering with Honours in Naval Architecture', 2014, 3293, NULL),
(181, 91.3, 'Singapore Institute of Technology', 'Bachelor of Engineering with Honours in Offshore Engineering', 2014, 3311, NULL),
(182, 75, 'Singapore Institute of Technology', 'Bachelor of Science with Honours in Food & Human Nutrition', 2014, 2806, NULL),
(183, 86.7, 'Singapore Institute of Technology', 'Bachelor of Science in Chemical Engineering', 2014, 2954, NULL),
(184, 85.7, 'Singapore Institute of Technology', 'Bachelor of Science in Electrical Engineering & Information Technology', 2014, 3072, NULL),
(185, 89.3, 'Singapore Institute of Technology', 'Bachelor of Professional Studies in Culinary Arts Management', 2014, 2430, NULL),
(186, 100, 'Singapore Institute of Technology', 'Bachelor in Science (Occupational Therapy)', 2014, 3127, NULL),
(187, 100, 'Singapore Institute of Technology', 'Bachelor in Science (Physiotherapy)', 2014, 3204, NULL),
(188, 88, 'Singapore Institute of Technology', 'Bachelor of Engineering with Honours in Aeronautical Engineering', 2014, 3396, NULL),
(189, 85.7, 'Singapore Institute of Technology', 'Bachelor of Engineering with Honours in Aerospace Systems', 2014, 3217, NULL),
(190, 92.3, 'Singapore Institute of Technology', 'Bachelor of Engineering with Honours in Mechanical Design Engineering', 2014, 3229, NULL),
(191, 93, 'Singapore Institute of Technology', 'Bachelor of Engineering with Honours in Mechatronics', 2014, 3067, NULL),
(192, 97.2, 'Singapore Institute of Technology', 'Bachelor of Science with Honours in Nursing Practice', 2014, 3230, NULL),
(193, 88.8, 'Singapore Institute of Technology', 'Bachelor of Science (Major in Hospitality Management)', 2014, 2445, NULL),
(194, 97.1, 'Singapore Institute of Technology', 'Bachelor of Science in Early Childhood Education', 2014, 2509, NULL),
(195, 98.6, 'Nanyang Technological University', 'Accountancy and Business', 2015, 4225, NULL),
(196, 97.3, 'Nanyang Technological University', 'Accountancy (3-yr direct Honours Programme)', 2015, 3182, NULL),
(197, 92.2, 'Nanyang Technological University', 'Business (3-yr direct Honours Programme)', 2015, 3343, NULL),
(198, 100, 'Nanyang Technological University', 'Business and Computing', 2015, 4036, NULL),
(199, 86, 'Nanyang Technological University', 'Aerospace Engineering', 2015, 3699, NULL),
(200, 0, 'Nanyang Technological University', 'Aerospace Engineering and Economics **', 2015, 0, NULL),
(201, 92.6, 'Nanyang Technological University', 'Bioengineering', 2015, 3079, NULL),
(202, 0, 'Nanyang Technological University', 'Business and Computer Engineering **', 2015, 0, NULL),
(203, 86.8, 'Nanyang Technological University', 'Chemical And Biomolecular Engineering', 2015, 3156, NULL),
(204, 0, 'Nanyang Technological University', 'Chemical And Biomolecular Engineering and Economics **', 2015, 0, NULL),
(205, 85.1, 'Nanyang Technological University', 'Computer Engineering', 2015, 3489, NULL),
(206, 95.3, 'Nanyang Technological University', 'Civil Engineering', 2015, 3125, NULL),
(207, 92.4, 'Nanyang Technological University', 'Computer Science', 2015, 3489, NULL),
(208, 88.6, 'Nanyang Technological University', 'Electrical And Electronic Engineering', 2015, 3345, NULL),
(209, 89.7, 'Nanyang Technological University', 'Environmental Engineering', 2015, 3472, NULL),
(210, 0, 'Nanyang Technological University', 'Environmental Engineering and Economics **', 2015, 0, NULL),
(211, 87.3, 'Nanyang Technological University', 'Information Engineering And Media', 2015, 3271, NULL),
(212, 0, 'Nanyang Technological University', 'Information Engineering And Media and Economics **', 2015, 0, NULL),
(213, 82.9, 'Nanyang Technological University', 'Materials Engineering', 2015, 3213, NULL),
(214, 88, 'Nanyang Technological University', 'Mechanical Engineering', 2015, 3248, NULL),
(215, 0, 'Nanyang Technological University', 'Mechanical Engineering and Economics **', 2015, 0, NULL),
(216, 95, 'Nanyang Technological University', 'Maritime Studies', 2015, 3249, NULL),
(217, 79.3, 'Nanyang Technological University', 'Art, Design & Media', 2015, 3284, NULL),
(218, 81.8, 'Nanyang Technological University', 'Chinese', 2015, 2978, NULL),
(219, 85.1, 'Nanyang Technological University', 'Communication Studies', 2015, 2921, NULL),
(220, 87.4, 'Nanyang Technological University', 'Economics', 2015, 3322, NULL),
(221, 88, 'Nanyang Technological University', 'English', 2015, 3238, NULL),
(222, 88.4, 'Nanyang Technological University', 'Linguistics And Multilingual Studies', 2015, 3475, NULL),
(223, 73.3, 'Nanyang Technological University', 'Psychology', 2015, 3099, NULL),
(224, 85.7, 'Nanyang Technological University', 'Sociology', 2015, 3260, NULL),
(225, 100, 'Nanyang Technological University', 'Biomedical Science (Traditional Chinese Medicine) ^', 2015, 2832, NULL),
(226, 74.6, 'Nanyang Technological University', 'Biological Sciences', 2015, 3117, NULL),
(227, 83.9, 'Nanyang Technological University', 'Chemistry & Biological Chemistry', 2015, 2960, NULL),
(228, 95.3, 'Nanyang Technological University', 'Mathematics & Economics', 2015, 3291, NULL),
(229, 81.8, 'Nanyang Technological University', 'Mathematical Science', 2015, 3254, NULL),
(230, 82.1, 'Nanyang Technological University', 'Physics / Applied Physics', 2015, 3098, NULL),
(231, 90.7, 'Nanyang Technological University', 'Sports Science and Management', 2015, 3232, NULL),
(232, 100, 'Nanyang Technological University', 'Science (with Education)', 2015, 3496, NULL),
(233, 100, 'Nanyang Technological University', 'Arts (with Education)', 2015, 3551, NULL),
(234, 88.4, 'National University of Singapore', 'Bachelor of Arts', 2015, 2839, NULL),
(235, 83, 'National University of Singapore', 'Bachelor of Arts (Hons)', 2015, 3266, NULL),
(236, 88.6, 'National University of Singapore', 'Bachelor of Social Sciences', 2015, 3317, NULL),
(237, 88.2, 'National University of Singapore', 'Bachelor of Business Administration', 2015, 3164, NULL),
(238, 96, 'National University of Singapore', 'Bachelor of Business Administration (Hons)', 2015, 4173, NULL),
(239, 97.6, 'National University of Singapore', 'Bachelor of Business Administration (Accountancy)', 2015, 2817, NULL),
(240, 98.6, 'National University of Singapore', 'Bachelor of Business Administration (Accountancy) (Hons)', 2015, 3547, NULL),
(241, 92.6, 'National University of Singapore', 'Bachelor of Computing (Communications and Media)', 2015, 3230, NULL),
(242, 0, 'National University of Singapore', 'Bachelor of Computing (Computational Biology) **', 2015, 0, NULL),
(243, 0, 'National University of Singapore', 'Bachelor of Computing (Computer Engineering) **', 2015, 0, NULL),
(244, 97, 'National University of Singapore', 'Bachelor of Computing (Computer Science)', 2015, 3847, NULL),
(245, 90.3, 'National University of Singapore', 'Bachelor of Computing (Electronic Commerce)', 2015, 3255, NULL),
(246, 97.2, 'National University of Singapore', 'Bachelor of Computing (Information Systems)', 2015, 3597, NULL),
(247, 100, 'National University of Singapore', 'Bachelor of Dental Surgery', 2015, 4053, NULL),
(248, 97.6, 'National University of Singapore', 'Bachelor of Arts (Architecture) ##', 2015, 4054, NULL),
(249, 72, 'National University of Singapore', 'Bachelor of Arts (Industrial Design)', 2015, 2907, NULL),
(250, 94.3, 'National University of Singapore', 'Bachelor of Science (Project and Facilities Management)', 2015, 2989, NULL),
(251, 93.9, 'National University of Singapore', 'Bachelor of Science (Real Estate)', 2015, 3146, NULL),
(252, 86.2, 'National University of Singapore', 'Bachelor of Engineering (Biomedical Engineering)', 2015, 3256, NULL),
(253, 86, 'National University of Singapore', 'Bachelor of Engineering (Chemical Engineering)', 2015, 3400, NULL),
(254, 96.5, 'National University of Singapore', 'Bachelor of Engineering (Civil Engineering)', 2015, 3300, NULL),
(255, 91.8, 'National University of Singapore', 'Bachelor of Engineering (Computer Engineering)', 2015, 4119, NULL),
(256, 92.1, 'National University of Singapore', 'Bachelor of Engineering (Electrical Engineering)', 2015, 3452, NULL),
(257, 82.6, 'National University of Singapore', 'Bachelor of Engineering (Engineering Science)', 2015, 3768, NULL),
(258, 88.1, 'National University of Singapore', 'Bachelor of Engineering (Environmental Engineering)', 2015, 3318, NULL),
(259, 96.1, 'National University of Singapore', 'Bachelor of Engineering (Industrial and Systems Engineering)', 2015, 3624, NULL),
(260, 100, 'National University of Singapore', 'Bachelor of Engineering (Materials Science and Engineering)', 2015, 3121, NULL),
(261, 83.3, 'National University of Singapore', 'Bachelor of Engineering (Mechanical Engineering)', 2015, 3279, NULL),
(262, 96.9, 'National University of Singapore', 'Bachelor of Laws (L.L.B) (Hons) ##', 2015, 4866, NULL),
(263, 100, 'National University of Singapore', 'Bachelor of Medicine and Bachelor of Surgery ##', 2015, 4352, NULL),
(264, 97.3, 'National University of Singapore', 'Bachelor of Science (Nursing)', 2015, 3175, NULL),
(265, 100, 'National University of Singapore', 'Bachelor of Science (Nursing) (Hons)', 2015, 3219, NULL),
(266, 82.4, 'National University of Singapore', 'Bachelor of Music', 2015, 3244, NULL),
(267, 0, 'National University of Singapore', 'Bachelor of Applied Science **', 2015, 0, NULL),
(268, 85.2, 'National University of Singapore', 'Bachelor of Applied Science (Hons)', 2015, 3203, NULL),
(269, 84.3, 'National University of Singapore', 'Bachelor of Science', 2015, 2859, NULL),
(270, 83.9, 'National University of Singapore', 'Bachelor of Science (Hons)', 2015, 3245, NULL),
(271, 0, 'National University of Singapore', 'Bachelor of Science (Computational Biology) **', 2015, 0, NULL),
(272, 99, 'National University of Singapore', 'Bachelor of Science (Pharmacy) (Hons) ##', 2015, 3431, NULL),
(273, 71.9, 'National University of Singapore', 'Bachelor of Environmental Studies', 2015, 3400, NULL),
(274, 97.3, 'Singapore Management University', 'Accountancy', 2015, 3287, NULL),
(275, 97.7, 'Singapore Management University', 'Accountancy Cum Laude and above', 2015, 3597, NULL),
(276, 93.9, 'Singapore Management University', 'Business Management', 2015, 3513, NULL),
(277, 98.3, 'Singapore Management University', 'Business Management Cum Laude and above', 2015, 4050, NULL),
(278, 90.3, 'Singapore Management University', 'Economics', 2015, 3798, NULL),
(279, 98.2, 'Singapore Management University', 'Economics Cum Laude and above', 2015, 4249, NULL),
(280, 94.8, 'Singapore Management University', 'Information Systems Management', 2015, 3491, NULL),
(281, 97.4, 'Singapore Management University', 'Information Systems Management Cum Laude and above', 2015, 3577, NULL),
(282, 89, 'Singapore Management University', 'Social Sciences', 2015, 3306, NULL),
(283, 93.1, 'Singapore Management University', 'Social Sciences Cum Laude and above', 2015, 3887, NULL),
(284, 99, 'Singapore Management University', 'Law ++', 2015, 4889, NULL),
(285, 100, 'Singapore Management University', 'Law Cum Laude and above', 2015, 5160, NULL),
(286, 92.5, 'Singapore University of Technology and Design', 'Bachelor of Engineering (Engineering Product Development)', 2015, 3595, NULL),
(287, 80.3, 'Singapore University of Technology and Design', 'Bachelor of Engineering (Engineering Systems and Design)', 2015, 3699, NULL),
(288, 86, 'Singapore University of Technology and Design', 'Bachelor of Engineering (Information Systems Technology and Design)', 2015, 3872, NULL),
(289, 0, 'Singapore University of Technology and Design', 'Bachelor of Science (Architecture and Sustainable Design) ###', 2015, 0, NULL),
(290, 0, 'Singapore Institute of Technology', 'Bachelor of Arts in Game Design **', 2015, 0, NULL),
(291, 88.5, 'Singapore Institute of Technology', 'Bachelor of Fine Arts in Digital Arts & Animation', 2015, 2643, NULL),
(292, 0, 'Singapore Institute of Technology', 'Bachelor of Science in Computer Science & Game Design **', 2015, 0, NULL),
(293, 95.2, 'Singapore Institute of Technology', 'Bachelor of Science in Computer Science in Real-Time Interactive Simulation', 2015, 3332, NULL),
(294, 76.1, 'Singapore Institute of Technology', 'Bachelor of Arts with Honours in Communication Design', 2015, 2896, NULL),
(295, 87.5, 'Singapore Institute of Technology', 'Bachelor of Arts with Honours in Interior Design', 2015, 2520, NULL),
(296, 85.5, 'Singapore Institute of Technology', 'Bachelor of Engineering with Honours in Chemical Engineering', 2015, 3097, NULL),
(297, 83, 'Singapore Institute of Technology', 'Bachelor of Engineering with Honours in Electrical Power Engineering', 2015, 3334, NULL),
(298, 91.7, 'Singapore Institute of Technology', 'Bachelor of Engineering with Honours in Marine Engineering', 2015, 3180, NULL),
(299, 90.5, 'Singapore Institute of Technology', 'Bachelor of Engineering with Honours in Mechanical Design & Manufacturing Engineering', 2015, 3069, NULL),
(300, 100, 'Singapore Institute of Technology', 'Bachelor of Engineering with Honours in Naval Architecture', 2015, 3211, NULL),
(301, 100, 'Singapore Institute of Technology', 'Bachelor of Engineering with Honours in Offshore Engineering', 2015, 3166, NULL),
(302, 89.2, 'Singapore Institute of Technology', 'Bachelor of Science with Honours in Food & Human Nutrition', 2015, 2683, NULL),
(303, 87.5, 'Singapore Institute of Technology', 'Bachelor of Science in Chemical Engineering', 2015, 2759, NULL),
(304, 100, 'Singapore Institute of Technology', 'Bachelor of Science in Electrical Engineering & Information Technology', 2015, 3044, NULL),
(305, 92.6, 'Singapore Institute of Technology', 'Bachelor of Professional Studies in Culinary Arts Management', 2015, 2482, NULL),
(306, 100, 'Singapore Institute of Technology', 'Bachelor in Science (Diagnostic Radiography)', 2015, 3322, NULL),
(307, 100, 'Singapore Institute of Technology', 'Bachelor in Science (Occupational Therapy)', 2015, 3126, NULL),
(308, 100, 'Singapore Institute of Technology', 'Bachelor in Science (Physiotherapy)', 2015, 3234, NULL),
(309, 0, 'Singapore Institute of Technology', 'Bachelor in Science (Radiation Therapy) **', 2015, 0, NULL),
(310, 81.6, 'Singapore Institute of Technology', 'Bachelor of Engineering with Honours in Aeronautical Engineering', 2015, 2766, NULL),
(311, 83.3, 'Singapore Institute of Technology', 'Bachelor of Engineering with Honours in Aerospace Systems', 2015, 3128, NULL),
(312, 72.2, 'Singapore Institute of Technology', 'Bachelor of Engineering with Honours in Mechanical Design Engineering', 2015, 3160, NULL),
(313, 96.4, 'Singapore Institute of Technology', 'Bachelor of Engineering with Honours in Mechatronics', 2015, 3202, NULL),
(314, 95.6, 'Singapore Institute of Technology', 'Bachelor of Science with Honours in Computing Science', 2015, 3247, NULL),
(315, 98.3, 'Singapore Institute of Technology', 'Bachelor of Science with Honours in Nursing Practice', 2015, 3304, NULL),
(316, 89.9, 'Singapore Institute of Technology', 'Bachelor of Science (Major in Hospitality Management)', 2015, 2515, NULL),
(317, 100, 'Singapore Institute of Technology', 'Bachelor of Science in Early Childhood Education', 2015, 2772, NULL),
(318, 97.3, 'Nanyang Technological University', 'Accountancy', 2016, 3027, NULL),
(319, 97.4, 'Nanyang Technological University', 'Accountancy and Business', 2016, 3836, NULL),
(320, 89.6, 'Nanyang Technological University', 'Business', 2016, 3348, NULL),
(321, 94.4, 'Nanyang Technological University', 'Business and Computing', 2016, 4232, NULL),
(322, 82.4, 'Nanyang Technological University', 'Aerospace Engineering', 2016, 3761, NULL),
(323, 0, 'Nanyang Technological University', 'Aerospace Engineering and Economics **', 2016, 0, NULL),
(324, 77.8, 'Nanyang Technological University', 'Bioengineering', 2016, 3151, NULL),
(325, 0, 'Nanyang Technological University', 'Business and Computer Engineering **', 2016, 0, NULL),
(326, 80.6, 'Nanyang Technological University', 'Chemical And Biomolecular Engineering', 2016, 3336, NULL),
(327, 92.4, 'Nanyang Technological University', 'Civil Engineering', 2016, 3407, NULL),
(328, 83.3, 'Nanyang Technological University', 'Computer Engineering', 2016, 3792, NULL),
(329, 94.6, 'Nanyang Technological University', 'Computer Science', 2016, 3784, NULL),
(330, 89.1, 'Nanyang Technological University', 'Electrical And Electronic Engineering', 2016, 3443, NULL),
(331, 80.6, 'Nanyang Technological University', 'Environmental Engineering', 2016, 3156, NULL),
(332, 94.6, 'Nanyang Technological University', 'Information Engineering And Media', 2016, 3496, NULL),
(333, 94.2, 'Nanyang Technological University', 'Maritime Studies', 2016, 3305, NULL),
(334, 81.3, 'Nanyang Technological University', 'Materials Engineering', 2016, 3197, NULL),
(335, 0, 'Nanyang Technological University', 'Materials Engineering and Economics **', 2016, 0, NULL),
(336, 86, 'Nanyang Technological University', 'Mechanical Engineering', 2016, 3417, NULL),
(337, 0, 'Nanyang Technological University', 'Mechanical Engineering and Economics **', 2016, 0, NULL),
(338, 79.7, 'Nanyang Technological University', 'Art, Design & Media', 2016, 2718, NULL),
(339, 91.1, 'Nanyang Technological University', 'Chinese', 2016, 3239, NULL),
(340, 87.7, 'Nanyang Technological University', 'Communication Studies', 2016, 2938, NULL),
(341, 91.3, 'Nanyang Technological University', 'Economics', 2016, 3385, NULL),
(342, 75, 'Nanyang Technological University', 'English', 2016, 2974, NULL),
(343, 87.2, 'Nanyang Technological University', 'History', 2016, 3027, NULL),
(344, 81.8, 'Nanyang Technological University', 'Linguistics And Multilingual Studies', 2016, 3283, NULL),
(345, 82.1, 'Nanyang Technological University', 'Psychology', 2016, 3083, NULL),
(346, 0, 'Nanyang Technological University', 'Public Policy And Global Affairs **', 2016, 0, NULL),
(347, 86.1, 'Nanyang Technological University', 'Sociology', 2016, 3279, NULL),
(348, 94.4, 'Nanyang Technological University', 'Biomedical Sciences & Chinese Medicine ^', 2016, 2525, NULL),
(349, 80.5, 'Nanyang Technological University', 'Biological Sciences', 2016, 3132, NULL),
(350, 80.6, 'Nanyang Technological University', 'Chemistry & Biological Chemistry', 2016, 3119, NULL),
(351, 88.5, 'Nanyang Technological University', 'Mathematical Sciences', 2016, 3453, NULL),
(352, 89.4, 'Nanyang Technological University', 'Mathematics & Economics', 2016, 3346, NULL),
(353, 85.7, 'Nanyang Technological University', 'Physics / Applied Physics', 2016, 3578, NULL),
(354, 83.1, 'Nanyang Technological University', 'Sports Science and Management', 2016, 3196, NULL),
(355, 100, 'Nanyang Technological University', 'Arts (with Education)', 2016, 3337, NULL),
(356, 100, 'Nanyang Technological University', 'Science (with Education)', 2016, 3438, NULL),
(357, 86.1, 'National University of Singapore', 'Bachelor of Arts', 2016, 2971, NULL),
(358, 90.7, 'National University of Singapore', 'Bachelor of Arts (Hons)', 2016, 3258, NULL),
(359, 89.5, 'National University of Singapore', 'Bachelor of Social Sciences', 2016, 3341, NULL),
(360, 100, 'National University of Singapore', 'Bachelor of Dental Surgery', 2016, 4173, NULL),
(361, 91.9, 'National University of Singapore', 'Bachelor of Engineering (Biomedical Engineering)', 2016, 3314, NULL),
(362, 85.3, 'National University of Singapore', 'Bachelor of Engineering (Chemical Engineering)', 2016, 3414, NULL),
(363, 95.3, 'National University of Singapore', 'Bachelor of Engineering (Civil Engineering)', 2016, 3402, NULL),
(364, 89.1, 'National University of Singapore', 'Bachelor of Engineering (Computer Engineering)', 2016, 3884, NULL),
(365, 91.9, 'National University of Singapore', 'Bachelor of Engineering (Electrical Engineering)', 2016, 3669, NULL),
(366, 85.2, 'National University of Singapore', 'Bachelor of Engineering (Engineering Science)', 2016, 3549, NULL),
(367, 79.3, 'National University of Singapore', 'Bachelor of Engineering (Environmental Engineering)', 2016, 3432, NULL),
(368, 80.3, 'National University of Singapore', 'Bachelor of Engineering (Industrial and Systems Engineering)', 2016, 3788, NULL),
(369, 90.2, 'National University of Singapore', 'Bachelor of Engineering (Materials Science And Engineering)', 2016, 3381, NULL),
(370, 86.6, 'National University of Singapore', 'Bachelor of Engineering (Mechanical Engineering)', 2016, 3470, NULL),
(371, 97.7, 'National University of Singapore', 'Bachelor of Laws (L.L.B) (Hons) ##', 2016, 4844, NULL),
(372, 0, 'National University of Singapore', 'Bachelor of Applied Science **', 2016, 0, NULL),
(373, 81, 'National University of Singapore', 'Bachelor of Applied Science (Hons)', 2016, 2905, NULL),
(374, 84.3, 'National University of Singapore', 'Bachelor of Science', 2016, 2895, NULL),
(375, 84.9, 'National University of Singapore', 'Bachelor of Science (Hons)', 2016, 3331, NULL),
(376, 0, 'National University of Singapore', 'Bachelor of Science (Computational Biology) **', 2016, 0, NULL),
(377, 99.1, 'National University of Singapore', 'Bachelor of Science (Pharmacy)(Hons) ##', 2016, 3500, NULL),
(378, 93.6, 'National University of Singapore', 'Bachelor of Business Administration', 2016, 3232, NULL),
(379, 96.4, 'National University of Singapore', 'Bachelor of Business Administration (Hons)', 2016, 4126, NULL),
(380, 88.6, 'National University of Singapore', 'Bachelor of Business Administration (Accountancy)', 2016, 2977, NULL),
(381, 99, 'National University of Singapore', 'Bachelor of Business Administration (Accountancy) (Hons)', 2016, 3435, NULL),
(382, 0, 'National University of Singapore', 'Bachelor of Computing (Communications And Media) **', 2016, 0, NULL),
(383, 96.3, 'National University of Singapore', 'Bachelor of Computing (Computer Science)', 2016, 4320, NULL),
(384, 0, 'National University of Singapore', 'Bachelor of Computing (Electronic Commerce) **', 2016, 0, NULL),
(385, 94, 'National University of Singapore', 'Bachelor of Computing (Information Systems)', 2016, 3875, NULL),
(386, 93.2, 'National University of Singapore', 'Bachelor of Arts (Architecture) ##', 2016, 3926, NULL),
(387, 90.6, 'National University of Singapore', 'Bachelor of Arts (Industrial Design)', 2016, 3282, NULL),
(388, 87.8, 'National University of Singapore', 'Bachelor of Science (Project and Facilities Management)', 2016, 3035, NULL),
(389, 94.6, 'National University of Singapore', 'Bachelor of Science (Real Estate)', 2016, 3247, NULL),
(390, 99.4, 'National University of Singapore', 'Bachelor of Medicine and Bachelor Of Surgery ##', 2016, 4460, NULL),
(391, 93.2, 'National University of Singapore', 'Bachelor of Science (Nursing)', 2016, 3166, NULL),
(392, 95.1, 'National University of Singapore', 'Bachelor of Science (Nursing) (Hons)', 2016, 3308, NULL),
(393, 85.7, 'National University of Singapore', 'Bachelor of Music', 2016, 3250, NULL),
(394, 83.8, 'National University of Singapore', 'Bachelor of Environmental Studies', 2016, 3347, NULL),
(395, 98.5, 'Singapore Management University', 'Accountancy', 2016, 3390, NULL),
(396, 100, 'Singapore Management University', 'Accountancy Cum Laude and above', 2016, 3827, NULL),
(397, 92.4, 'Singapore Management University', 'Business Management', 2016, 3727, NULL),
(398, 96.1, 'Singapore Management University', 'Business Management Cum Laude and above', 2016, 4140, NULL),
(399, 93.4, 'Singapore Management University', 'Economics', 2016, 3801, NULL),
(400, 97, 'Singapore Management University', 'Economics Cum Laude and above', 2016, 4315, NULL),
(401, 95.7, 'Singapore Management University', 'Information Systems Management', 2016, 3837, NULL),
(402, 97.5, 'Singapore Management University', 'Information Systems Management Cum Laude and above', 2016, 4504, NULL),
(403, 91.5, 'Singapore Management University', 'Social Sciences', 2016, 3199, NULL),
(404, 94.9, 'Singapore Management University', 'Social Sciences Cum Laude and above', 2016, 3405, NULL),
(405, 95.8, 'Singapore Management University', 'Law ++', 2016, 4810, NULL),
(406, 96.7, 'Singapore Management University', 'Law Cum Laude and above', 2016, 4950, NULL),
(407, 0, 'Singapore Institute of Technology', 'Bachelor of Arts in Game Design **', 2016, 0, NULL),
(408, 73.3, 'Singapore Institute of Technology', 'Bachelor of Fine Arts in Digital Arts & Animation', 2016, 3045, NULL),
(409, 85.7, 'Singapore Institute of Technology', 'Bachelor of Science in Computer Science & Game Design', 2016, 3312, NULL),
(410, 100, 'Singapore Institute of Technology', 'Bachelor of Science in Computer Science in Real-Time Interactive Simulation', 2016, 3729, NULL),
(411, 91.1, 'Singapore Institute of Technology', 'Bachelor of Arts with Honours in Communication Design', 2016, 2652, NULL),
(412, 97.4, 'Singapore Institute of Technology', 'Bachelor of Arts with Honours in Interior Design', 2016, 2467, NULL),
(413, 85.9, 'Singapore Institute of Technology', 'Bachelor of Engineering with Honours in Chemical Engineering', 2016, 3201, NULL),
(414, 86.4, 'Singapore Institute of Technology', 'Bachelor of Engineering with Honours in Electrical Power Engineering', 2016, 3239, NULL),
(415, 95.2, 'Singapore Institute of Technology', 'Bachelor of Engineering with Honours in Marine Engineering', 2016, 3812, NULL),
(416, 87, 'Singapore Institute of Technology', 'Bachelor of Engineering with Honours in Mechanical Design & Manufacturing Engineering', 2016, 3162, NULL),
(417, 90, 'Singapore Institute of Technology', 'Bachelor of Engineering with Honours in Naval Architecture', 2016, 3172, NULL),
(418, 86.4, 'Singapore Institute of Technology', 'Bachelor of Engineering with Honours in Offshore Engineering', 2016, 3172, NULL),
(419, 86.7, 'Singapore Institute of Technology', 'Bachelor of Science with Honours in Food & Human Nutrition', 2016, 2598, NULL),
(420, 78.6, 'Singapore Institute of Technology', 'Bachelor of Science in Chemical Engineering', 2016, 2776, NULL),
(421, 90.9, 'Singapore Institute of Technology', 'Bachelor of Science in Electrical Engineering & Information Technology', 2016, 2978, NULL),
(422, 86.2, 'Singapore Institute of Technology', 'Bachelor of Professional Studies in Culinary Arts Management', 2016, 2231, NULL),
(423, 88.2, 'Singapore Institute of Technology', 'Bachelor in Science (Diagnostic Radiography)', 2016, 3406, NULL),
(424, 100, 'Singapore Institute of Technology', 'Bachelor in Science (Occupational Therapy)', 2016, 3297, NULL),
(425, 100, 'Singapore Institute of Technology', 'Bachelor in Science (Physiotherapy)', 2016, 3310, NULL),
(426, 0, 'Singapore Institute of Technology', 'Bachelor in Science (Radiation Therapy) **', 2016, 0, NULL),
(427, 81.6, 'Singapore Institute of Technology', 'Bachelor of Engineering with Honours in Aeronautical Engineering', 2016, 3042, NULL),
(428, 82.2, 'Singapore Institute of Technology', 'Bachelor of Engineering with Honours in Aerospace Systems', 2016, 3312, NULL),
(429, 87, 'Singapore Institute of Technology', 'Bachelor of Engineering with Honours in Mechanical Design Engineering', 2016, 3187, NULL),
(430, 88.7, 'Singapore Institute of Technology', 'Bachelor of Engineering with Honours in Mechatronics', 2016, 3406, NULL),
(431, 89.8, 'Singapore Institute of Technology', 'Bachelor of Science with Honours in Computing Science', 2016, 3645, NULL),
(432, 92.7, 'Singapore Institute of Technology', 'Bachelor of Science with Honours in Nursing Practice', 2016, 3378, NULL),
(433, 92.6, 'Singapore Institute of Technology', 'Bachelor of Arts with Honours in Criminology and Security', 2016, 4096, NULL),
(434, 98, 'Singapore Institute of Technology', 'Bachelor of Science in Early Childhood Education', 2016, 2705, NULL),
(435, 87, 'Singapore University of Technology and Design', 'Bachelor of Engineering (Engineering Product Development)', 2016, 3620, NULL),
(436, 91.9, 'Singapore University of Technology and Design', 'Bachelor of Engineering (Information Systems Technology and Design)', 2016, 4197, NULL),
(437, 100, 'Singapore University of Technology and Design', 'Bachelor of Engineering (Engineering Systems and Design)', 2016, 3695, NULL),
(438, 0, 'Singapore University of Technology and Design', 'Bachelor of Science (Architecture and Sustainable Design) ###', 2016, 0, NULL),
(439, 97.1, 'Nanyang Technological University', 'Bachelor of Accountancy (Hons)', 2017, 3121, NULL),
(440, 97.2, 'Nanyang Technological University', 'Double Degree in Bachelor of Accountancy (Hons) and Bachelor of Business (Hons)', 2017, 3830, NULL),
(441, 93, 'Nanyang Technological University', 'Bachelor of Business (Hons)', 2017, 3530, NULL),
(442, 100, 'Nanyang Technological University', 'Double Degree in Bachelor of Business (Hons) and Bachelor of Engineering (Hons) (Computer Science)', 2017, 5036, NULL),
(443, 80, 'Nanyang Technological University', 'Bachelor of Engineering (Hons) (Aerospace Engineering)', 2017, 3645, NULL),
(444, 0, 'Nanyang Technological University', 'Double Degree in Bachelor of Engineering (Hons) (Aerospace Engineering) and Bachelor of Arts (Hons) ', 2017, 0, NULL),
(445, 78.3, 'Nanyang Technological University', 'Bachelor of Engineering (Hons) (Bioengineering)', 2017, 3326, NULL),
(446, 82.3, 'Nanyang Technological University', 'Bachelor of Engineering  (Hons) (Chemical And Biomolecular Engineering)', 2017, 3326, NULL),
(447, 0, 'Nanyang Technological University', 'Double Degree in Bachelor of Engineering  (Hons) (Chemical And Biomolecular Engineering) and Bachelo', 2017, 0, NULL),
(448, 98.5, 'Nanyang Technological University', 'Bachelor of Engineering (Hons) (Civil Engineering)', 2017, 3373, NULL),
(449, 0, 'Nanyang Technological University', 'Double Degree in Bachelor of Engineering (Hons) (Civil Engineering) and Bachelor of Arts (Hons) in E', 2017, 0, NULL),
(450, 95.1, 'Nanyang Technological University', 'Bachelor of Engineering (Hons) (Computer Engineering)', 2017, 3667, NULL),
(451, 92.4, 'Nanyang Technological University', 'Bachelor of Engineering (Hons) (Computer Science)', 2017, 4078, NULL),
(452, 0, 'Nanyang Technological University', 'Double Degree in Bachelor of Business (Hons) and Bachelor of Engineering (Hons) (Computer Engineerin', 2017, 0, NULL),
(453, 89.3, 'Nanyang Technological University', 'Bachelor of Engineering (Hons) (Electrical & Electronic Engineering)', 2017, 3532, NULL),
(454, 71.8, 'Nanyang Technological University', 'Bachelor of Engineering (Hons) (Environmental Engineering)', 2017, 3538, NULL),
(455, 86.9, 'Nanyang Technological University', 'Bachelor of Engineering (Hons) (Information Engineering & Media)', 2017, 3685, NULL),
(456, 0, 'Nanyang Technological University', 'Double Degree in Bachelor of Engineering (Hons) (Information Engineering & Media) and Bachelor of Ar', 2017, 0, NULL),
(457, 92.2, 'Nanyang Technological University', 'Bachelor of Science (Hons) (Maritime Studies)', 2017, 3279, NULL),
(458, 84.9, 'Nanyang Technological University', 'Bachelor of Engineering (Hons) (Materials Engineering)', 2017, 3288, NULL),
(459, 0, 'Nanyang Technological University', 'Double Degree in Bachelor of Engineering (Hons) (Materials Engineering) and Bachelor of Arts (Hons) ', 2017, 0, NULL),
(460, 82.7, 'Nanyang Technological University', 'Bachelor of Engineering (Hons) (Mechanical Engineering)', 2017, 3422, NULL),
(461, 0, 'Nanyang Technological University', 'Double Degree in Bachelor of Engineering (Hons) (Mechanical Engineering) and Bachelor of Arts (Hons)', 2017, 0, NULL),
(462, 88.5, 'Nanyang Technological University', 'Bachelor of Fine Arts (Hons)', 2017, 2862, NULL),
(463, 84.6, 'Nanyang Technological University', 'Bachelor of Arts (Hons) in Chinese', 2017, 3119, NULL),
(464, 92.6, 'Nanyang Technological University', 'Bachelor of Communication Studies (Hons)', 2017, 3134, NULL),
(465, 84.7, 'Nanyang Technological University', 'Bachelor of Arts (Hons) in Economics', 2017, 3286, NULL),
(466, 77.8, 'Nanyang Technological University', 'Bachelor of Arts (Hons) in English', 2017, 3042, NULL);
INSERT INTO `graduate_employment` (`ge_ID`, `employ_rate`, `school`, `course`, `year`, `monthly_base_pay`, `last_edited_by`) VALUES
(467, 86, 'Nanyang Technological University', 'Bachelor of Arts (Hons) in History', 2017, 3206, NULL),
(468, 80, 'Nanyang Technological University', 'Bachelor of Arts (Hons) in Linguistics And Multilingual Studies', 2017, 3042, NULL),
(469, 0, 'Nanyang Technological University', 'Bachelor of Arts (Hons) in Philosophy **', 2017, 0, NULL),
(470, 78.9, 'Nanyang Technological University', 'Bachelor of Arts (Hons) in Psychology', 2017, 3107, NULL),
(471, 74.1, 'Nanyang Technological University', 'Bachelor of Arts (Hons) in Public Policy And Global Affairs', 2017, 3353, NULL),
(472, 77.6, 'Nanyang Technological University', 'Bachelor of Arts (Hons) in Sociology', 2017, 3263, NULL),
(473, 92, 'Nanyang Technological University', 'Double Degree in Bachelor of Science (Hons) in Biomedical Sciences and Bachelor of Medicine (Chinese', 2017, 2722, NULL),
(474, 80.4, 'Nanyang Technological University', 'Bachelor of Science (Hons) in Biological Sciences', 2017, 3177, NULL),
(475, 70.1, 'Nanyang Technological University', 'Bachelor of Science (Hons) in Chemistry & Biological Chemistry', 2017, 3035, NULL),
(476, 89.7, 'Nanyang Technological University', 'Bachelor of Science (Hons) in Mathematical Sciences', 2017, 3517, NULL),
(477, 89.8, 'Nanyang Technological University', 'Bachelor of Science (Hons) in Mathematics & Economics', 2017, 3504, NULL),
(478, 81.6, 'Nanyang Technological University', 'Bachelor of Science (Hons) in Physics/Applied Physics', 2017, 3367, NULL),
(479, 81.1, 'Nanyang Technological University', 'Bachelor of Science (Hons) (Sport Science & Management)', 2017, 3372, NULL),
(480, 100, 'Nanyang Technological University', 'Bachelor of Arts (Hons) (Education)', 2017, 3489, NULL),
(481, 100, 'Nanyang Technological University', 'Bachelor of Science (Hons) (Education)', 2017, 3610, NULL),
(482, 85.8, 'National University of Singapore', 'Bachelor of Arts', 2017, 3005, NULL),
(483, 88.2, 'National University of Singapore', 'Bachelor of Arts (Hons)', 2017, 3309, NULL),
(484, 88.3, 'National University of Singapore', 'Bachelor of Social Sciences', 2017, 3365, NULL),
(485, 100, 'National University of Singapore', 'Bachelor of Dental Surgery', 2017, 4124, NULL),
(486, 90.6, 'National University of Singapore', 'Bachelor of Engineering (Biomedical Engineering)', 2017, 3215, NULL),
(487, 87.8, 'National University of Singapore', 'Bachelor of Engineering (Chemical Engineering)', 2017, 3550, NULL),
(488, 95.5, 'National University of Singapore', 'Bachelor of Engineering (Civil Engineering)', 2017, 3361, NULL),
(489, 89.4, 'National University of Singapore', 'Bachelor of Engineering (Electrical Engineering)', 2017, 3529, NULL),
(490, 76.5, 'National University of Singapore', 'Bachelor of Engineering (Engineering Science)', 2017, 3783, NULL),
(491, 86.3, 'National University of Singapore', 'Bachelor of Engineering (Environmental Engineering)', 2017, 3425, NULL),
(492, 93.3, 'National University of Singapore', 'Bachelor of Engineering (Industrial and Systems Engineering)', 2017, 3905, NULL),
(493, 94, 'National University of Singapore', 'Bachelor of Engineering (Materials Science And Engineering)', 2017, 3269, NULL),
(494, 87.3, 'National University of Singapore', 'Bachelor of Engineering (Mechanical Engineering)', 2017, 3537, NULL),
(495, 95.8, 'National University of Singapore', 'Bachelor of Laws ##', 2017, 4958, NULL),
(496, 0, 'National University of Singapore', 'Bachelor of Applied Science **', 2017, 0, NULL),
(497, 82.1, 'National University of Singapore', 'Bachelor of Applied Science (Hons)', 2017, 3186, NULL),
(498, 76.9, 'National University of Singapore', 'Bachelor of Science', 2017, 3053, NULL),
(499, 85.9, 'National University of Singapore', 'Bachelor of Science (Hons)', 2017, 3340, NULL),
(500, 0, 'National University of Singapore', 'Bachelor of Science (Computational Biology) **', 2017, 0, NULL),
(501, 99.1, 'National University of Singapore', 'Bachelor of Science (Pharmacy) ##', 2017, 3473, NULL),
(502, 94.9, 'National University of Singapore', 'Bachelor of Business Administration', 2017, 3770, NULL),
(503, 98.2, 'National University of Singapore', 'Bachelor of Business Administration (Hons)', 2017, 4272, NULL),
(504, 97.2, 'National University of Singapore', 'Bachelor of Business Administration (Accountancy)', 2017, 3396, NULL),
(505, 100, 'National University of Singapore', 'Bachelor of Business Administration (Accountancy) (Hons)', 2017, 3689, NULL),
(506, 0, 'National University of Singapore', 'Bachelor of Computing (Communications And Media) **', 2017, 0, NULL),
(507, 0, 'National University of Singapore', 'Bachelor of Computing (Computational Biology) **', 2017, 0, NULL),
(508, 93.5, 'National University of Singapore', 'Bachelor of Computing (Computer Science)', 2017, 4510, NULL),
(509, 0, 'National University of Singapore', 'Bachelor of Computing (Electronic Commerce) **', 2017, 0, NULL),
(510, 0, 'National University of Singapore', 'Bachelor of Computing (Information Security) **', 2017, 0, NULL),
(511, 94.5, 'National University of Singapore', 'Bachelor of Computing (Information Systems)', 2017, 4061, NULL),
(512, 97.6, 'National University of Singapore', 'Bachelor of Science (Business Analytics)', 2017, 4114, NULL),
(513, 91.3, 'National University of Singapore', 'Bachelor of Arts (Architecture) ##', 2017, 4037, NULL),
(514, 93.3, 'National University of Singapore', 'Bachelor of Arts (Industrial Design)', 2017, 3034, NULL),
(515, 90.8, 'National University of Singapore', 'Bachelor of Science (Project and Facilities Management)', 2017, 3105, NULL),
(516, 93.8, 'National University of Singapore', 'Bachelor of Science (Real Estate)', 2017, 3090, NULL),
(517, 100, 'National University of Singapore', 'Bachelor of Medicine And Bachelor Of Surgery ##', 2017, 4367, NULL),
(518, 97.4, 'National University of Singapore', 'Bachelor of Science (Nursing)', 2017, 3165, NULL),
(519, 91.8, 'National University of Singapore', 'Bachelor of Science (Nursing) (Hons)', 2017, 3280, NULL),
(520, 73.3, 'National University of Singapore', 'Bachelor of Music', 2017, 2298, NULL),
(521, 93.5, 'National University of Singapore', 'Bachelor of Arts with Honours', 2017, 3812, NULL),
(522, 91.7, 'National University of Singapore', 'Bachelor of Science with Honours', 2017, 4362, NULL),
(523, 89.4, 'National University of Singapore', 'Bachelor of Engineering (Computer Engineering)', 2017, 4010, NULL),
(524, 88.7, 'National University of Singapore', 'Bachelor of Environmental Studies', 2017, 3297, NULL),
(525, 98, 'Singapore Management University', 'Accountancy', 2017, 3569, NULL),
(526, 97.8, 'Singapore Management University', 'Accountancy Cum Laude and above', 2017, 4037, NULL),
(527, 93.3, 'Singapore Management University', 'Business Management', 2017, 3862, NULL),
(528, 95.8, 'Singapore Management University', 'Business Management Cum Laude and above', 2017, 4364, NULL),
(529, 91.3, 'Singapore Management University', 'Economics', 2017, 4013, NULL),
(530, 93.2, 'Singapore Management University', 'Economics Cum Laude and above', 2017, 4591, NULL),
(531, 95.1, 'Singapore Management University', 'Information Systems Management', 2017, 3922, NULL),
(532, 96.1, 'Singapore Management University', 'Information Systems Management Cum Laude and above', 2017, 4211, NULL),
(533, 91.3, 'Singapore Management University', 'Social Sciences', 2017, 3344, NULL),
(534, 87.9, 'Singapore Management University', 'Social Sciences Cum Laude and above', 2017, 3810, NULL),
(535, 97.6, 'Singapore Management University', 'Law ++', 2017, 4778, NULL),
(536, 97.9, 'Singapore Management University', 'Law Cum Laude and above', 2017, 5163, NULL),
(537, 96.2, 'Singapore Institute of Technology', 'Bachelor of Arts in Game Design ^^^', 2017, 3040, NULL),
(538, 88.5, 'Singapore Institute of Technology', 'Bachelor of Fine Arts in Digital Arts & Animation ^^^', 2017, 2859, NULL),
(539, 100, 'Singapore Institute of Technology', 'Bachelor of Science in Computer Science & Game Design ^^^', 2017, 3232, NULL),
(540, 96.9, 'Singapore Institute of Technology', 'Bachelor of Science in Computer Science in Real-Time Interactive Simulation', 2017, 3898, NULL),
(541, 90.7, 'Singapore Institute of Technology', 'Bachelor of Arts with Honours in Communication Design', 2017, 2819, NULL),
(542, 92.3, 'Singapore Institute of Technology', 'Bachelor of Arts with Honours in Interior Design', 2017, 2818, NULL),
(543, 77.3, 'Singapore Institute of Technology', 'Bachelor of Engineering with Honours in Chemical Engineering', 2017, 3061, NULL),
(544, 94.4, 'Singapore Institute of Technology', 'Bachelor of Engineering with Honours in Electrical Power Engineering', 2017, 3191, NULL),
(545, 96.2, 'Singapore Institute of Technology', 'Bachelor of Engineering with Honours in Marine Engineering ^^^', 2017, 3461, NULL),
(546, 90.5, 'Singapore Institute of Technology', 'Bachelor of Engineering with Honours in Mechanical Design & Manufacturing Engineering', 2017, 3063, NULL),
(547, 95.5, 'Singapore Institute of Technology', 'Bachelor of Engineering with Honours in Naval Architecture ^^^', 2017, 3451, NULL),
(548, 100, 'Singapore Institute of Technology', 'Bachelor of Engineering with Honours in Offshore Engineering ^^^', 2017, 3792, NULL),
(549, 97.7, 'Singapore Institute of Technology', 'Bachelor of Science with Honours in Food & Human Nutrition', 2017, 2784, NULL),
(550, 84.5, 'Singapore Institute of Technology', 'Bachelor of Science in Chemical Engineering', 2017, 3061, NULL),
(551, 82.8, 'Singapore Institute of Technology', 'Bachelor of Science in Electrical Engineering & Information Technology', 2017, 3504, NULL),
(552, 87.9, 'Singapore Institute of Technology', 'Bachelor of Professional Studies in Culinary Arts Management', 2017, 2357, NULL),
(553, 0, 'Singapore Institute of Technology', 'Bachelor in Science (Diagnostic Radiography) **', 2017, 0, NULL),
(554, 100, 'Singapore Institute of Technology', 'Bachelor in Science (Occupational Therapy)', 2017, 3217, NULL),
(555, 100, 'Singapore Institute of Technology', 'Bachelor in Science (Physiotherapy)', 2017, 3483, NULL),
(556, 0, 'Singapore Institute of Technology', 'Bachelor in Science (Radiation Therapy) **', 2017, 0, NULL),
(557, 81.3, 'Singapore Institute of Technology', 'Bachelor of Engineering with Honours in Aeronautical Engineering', 2017, 3367, NULL),
(558, 80, 'Singapore Institute of Technology', 'Bachelor of Engineering with Honours in Aerospace Systems', 2017, 3207, NULL),
(559, 96.6, 'Singapore Institute of Technology', 'Bachelor of Engineering with Honours in Mechanical Design Engineering', 2017, 3608, NULL),
(560, 94.6, 'Singapore Institute of Technology', 'Bachelor of Engineering with Honours in Mechatronics', 2017, 3412, NULL),
(561, 95.8, 'Singapore Institute of Technology', 'Bachelor of Science with Honours in Computing Science', 2017, 3633, NULL),
(562, 98.2, 'Singapore Institute of Technology', 'Bachelor of Science with Honours in Nursing Practice', 2017, 3507, NULL),
(563, 86.4, 'Singapore Institute of Technology', 'Bachelor of Arts with Honours in Criminology and Security', 2017, 3759, NULL),
(564, 96.4, 'Singapore Institute of Technology', 'Bachelor of Science in Early Childhood Education', 2017, 2883, NULL),
(565, 94.1, 'Singapore Institute of Technology', 'Bachelor of Accountancy with Honours', 2017, 3073, NULL),
(566, 94.7, 'Singapore Institute of Technology', 'Bachelor of Hospitality Business with Honours ^^^', 2017, 2713, NULL),
(567, 89.9, 'Singapore University of Technology and Design', 'Bachelor of Engineering (Engineering Product Development)', 2017, 3594, NULL),
(568, 100, 'Singapore University of Technology and Design', 'Bachelor of Engineering (Information Systems Technology and Design)', 2017, 4146, NULL),
(569, 91.7, 'Singapore University of Technology and Design', 'Bachelor of Engineering (Engineering Systems and Design)', 2017, 3856, NULL),
(570, 0, 'Singapore University of Technology and Design', 'Bachelor of Science (Architecture and Sustainable Design) ###', 2017, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `s_ID` varchar(5) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`s_ID`, `name`) VALUES
('S001', 'National University of Singapore'),
('S002', 'Nanyang Technological University'),
('S003', 'Singapore Management University'),
('S004', 'Singapore Institute of Technology'),
('S005', 'Singapore University of Technology and Design'),
('S006', 'Singapore University of Social Sciences'),
('S007', 'National Institute of Education');

-- --------------------------------------------------------

--
-- Table structure for table `school_employment`
--

CREATE TABLE `school_employment` (
  `se_ID` int(11) NOT NULL,
  `bs_ID` int(11) DEFAULT NULL,
  `employ_rate` float DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `monthly_base_pay` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`user_ID`);

--
-- Indexes for table `batch_course`
--
ALTER TABLE `batch_course`
  ADD PRIMARY KEY (`bc_ID`),
  ADD KEY `c_ID` (`c_ID`),
  ADD KEY `last_edited_by` (`last_edited_by`);

--
-- Indexes for table `batch_school`
--
ALTER TABLE `batch_school`
  ADD PRIMARY KEY (`bs_ID`),
  ADD KEY `s_ID` (`s_ID`),
  ADD KEY `last_edited_by` (`last_edited_by`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`c_ID`);

--
-- Indexes for table `course_employment`
--
ALTER TABLE `course_employment`
  ADD PRIMARY KEY (`ce_ID`),
  ADD KEY `bc_ID` (`bc_ID`);

--
-- Indexes for table `graduate_employment`
--
ALTER TABLE `graduate_employment`
  ADD PRIMARY KEY (`ge_ID`),
  ADD KEY `last_edited_by` (`last_edited_by`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`s_ID`);

--
-- Indexes for table `school_employment`
--
ALTER TABLE `school_employment`
  ADD PRIMARY KEY (`se_ID`),
  ADD KEY `bs_ID` (`bs_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `batch_course`
--
ALTER TABLE `batch_course`
  MODIFY `bc_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=421;

--
-- AUTO_INCREMENT for table `batch_school`
--
ALTER TABLE `batch_school`
  MODIFY `bs_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1513;

--
-- AUTO_INCREMENT for table `course_employment`
--
ALTER TABLE `course_employment`
  MODIFY `ce_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `graduate_employment`
--
ALTER TABLE `graduate_employment`
  MODIFY `ge_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=571;

--
-- AUTO_INCREMENT for table `school_employment`
--
ALTER TABLE `school_employment`
  MODIFY `se_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `batch_course`
--
ALTER TABLE `batch_course`
  ADD CONSTRAINT `batch_course_ibfk_1` FOREIGN KEY (`c_ID`) REFERENCES `course` (`c_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `batch_course_ibfk_2` FOREIGN KEY (`last_edited_by`) REFERENCES `account` (`user_ID`);

--
-- Constraints for table `batch_school`
--
ALTER TABLE `batch_school`
  ADD CONSTRAINT `batch_school_ibfk_1` FOREIGN KEY (`s_ID`) REFERENCES `school` (`s_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `batch_school_ibfk_2` FOREIGN KEY (`last_edited_by`) REFERENCES `account` (`user_ID`);

--
-- Constraints for table `course_employment`
--
ALTER TABLE `course_employment`
  ADD CONSTRAINT `course_employment_ibfk_1` FOREIGN KEY (`bc_ID`) REFERENCES `batch_course` (`bc_ID`) ON DELETE CASCADE;

--
-- Constraints for table `graduate_employment`
--
ALTER TABLE `graduate_employment`
  ADD CONSTRAINT `graduate_employment_ibfk_1` FOREIGN KEY (`last_edited_by`) REFERENCES `account` (`user_ID`);

--
-- Constraints for table `school_employment`
--
ALTER TABLE `school_employment`
  ADD CONSTRAINT `school_employment_ibfk_1` FOREIGN KEY (`bs_ID`) REFERENCES `batch_school` (`bs_ID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

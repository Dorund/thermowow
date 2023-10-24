-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.29 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table acore_world.battlemaster_entry
DROP TABLE IF EXISTS `battlemaster_entry`;
CREATE TABLE IF NOT EXISTS `battlemaster_entry` (
  `entry` int unsigned NOT NULL DEFAULT '0' COMMENT 'Entry of a creature',
  `bg_template` int unsigned NOT NULL DEFAULT '0' COMMENT 'Battleground template id',
  PRIMARY KEY (`entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table acore_world.battlemaster_entry: ~146 rows (approximately)
DELETE FROM `battlemaster_entry`;
INSERT INTO `battlemaster_entry` (`entry`, `bg_template`) VALUES
	(347, 1),
	(857, 3),
	(907, 3),
	(2302, 2),
	(2804, 2),
	(3890, 2),
	(5118, 1),
	(7410, 1),
	(7427, 1),
	(10360, 2),
	(12197, 1),
	(12198, 3),
	(14942, 1),
	(14981, 2),
	(14982, 2),
	(14990, 3),
	(14991, 3),
	(15006, 3),
	(15007, 3),
	(15008, 3),
	(15102, 2),
	(15103, 1),
	(15105, 2),
	(15106, 1),
	(16694, 3),
	(16695, 1),
	(16696, 2),
	(16711, 3),
	(17506, 1),
	(17507, 2),
	(18895, 6),
	(19855, 3),
	(19858, 6),
	(19859, 6),
	(19905, 3),
	(19906, 1),
	(19907, 1),
	(19908, 2),
	(19909, 6),
	(19910, 2),
	(19911, 6),
	(19912, 6),
	(19915, 6),
	(19923, 6),
	(19925, 6),
	(20002, 2),
	(20118, 2),
	(20119, 1),
	(20120, 3),
	(20269, 2),
	(20271, 1),
	(20272, 2),
	(20273, 3),
	(20274, 3),
	(20276, 1),
	(20362, 7),
	(20374, 7),
	(20381, 7),
	(20382, 7),
	(20383, 7),
	(20384, 7),
	(20385, 7),
	(20386, 7),
	(20388, 7),
	(20390, 7),
	(20497, 6),
	(20499, 6),
	(21235, 6),
	(22013, 7),
	(22015, 7),
	(22647, 1),
	(22656, 1),
	(25991, 6),
	(26007, 6),
	(29533, 6),
	(29568, 6),
	(29667, 2),
	(29668, 3),
	(29669, 1),
	(29670, 7),
	(29671, 9),
	(29672, 2),
	(29673, 3),
	(29674, 1),
	(29675, 7),
	(29676, 9),
	(30231, 3),
	(30566, 9),
	(30567, 9),
	(30578, 9),
	(30579, 9),
	(30580, 9),
	(30581, 9),
	(30582, 9),
	(30583, 9),
	(30584, 9),
	(30586, 9),
	(30587, 9),
	(30590, 9),
	(30610, 6),
	(31979, 1),
	(32092, 1),
	(32330, 6),
	(32332, 6),
	(32333, 6),
	(32616, 1),
	(32617, 1),
	(32618, 3),
	(32619, 3),
	(32620, 7),
	(32621, 7),
	(32622, 9),
	(32623, 9),
	(32624, 2),
	(32625, 2),
	(34948, 30),
	(34949, 30),
	(34950, 30),
	(34951, 30),
	(34952, 30),
	(34953, 30),
	(34955, 32),
	(34986, 1),
	(34988, 1),
	(34989, 1),
	(34991, 1),
	(34997, 1),
	(34998, 1),
	(34999, 1),
	(35000, 1),
	(35001, 1),
	(35002, 1),
	(35007, 1),
	(35008, 32),
	(35017, 30),
	(35019, 30),
	(35020, 30),
	(35021, 30),
	(35022, 30),
	(35023, 30),
	(35024, 30),
	(35025, 30),
	(35026, 30),
	(35027, 30),
	(37298, 1),
	(37413, 1);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

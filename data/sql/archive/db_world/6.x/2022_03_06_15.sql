-- DB update 2022_03_06_14 -> 2022_03_06_15
DROP PROCEDURE IF EXISTS `updateDb`;
DELIMITER //
CREATE PROCEDURE updateDb ()
proc:BEGIN DECLARE OK VARCHAR(100) DEFAULT 'FALSE';
SELECT COUNT(*) INTO @COLEXISTS
FROM information_schema.COLUMNS
WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'version_db_world' AND COLUMN_NAME = '2022_03_06_14';
IF @COLEXISTS = 0 THEN LEAVE proc; END IF;
START TRANSACTION;
ALTER TABLE version_db_world CHANGE COLUMN 2022_03_06_14 2022_03_06_15 bit;
SELECT sql_rev INTO OK FROM version_db_world WHERE sql_rev = '1646090929242630500'; IF OK <> 'FALSE' THEN LEAVE proc; END IF;
--
-- START UPDATING QUERIES
--

INSERT INTO `version_db_world` (`sql_rev`) VALUES ('1646090929242630500');

DELETE FROM `creature_formations` WHERE `memberGUID` IN (858, 859, 857);
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`, `point_1`, `point_2`) VALUES
(857, 858, 4, 3, 512, 0, 0),
(857, 859, 4, 17, 512, 0, 0),
(857, 857, 0, 0, 2, 0, 0);

UPDATE `creature` SET `position_x` = -12808.8, `position_y` = -790.261, `position_z` = 61.4108, `orientation` = 0.116569 WHERE `guid` = 857;
UPDATE `creature` SET `position_x` = -12808.8, `position_y` = -790.261, `position_z` = 61.4108, `orientation` = 0.11756 WHERE `guid` = 858;
UPDATE `creature` SET `position_x` = -12808.8, `position_y` = -790.261, `position_z` = 61.4108, `orientation` = 0.117622 WHERE `guid` = 859;


SET @NPC := 857;
SET @PATH := @NPC * 10;

DELETE FROM `creature_addon` WHERE `guid` = @NPC;
INSERT INTO `creature_addon` (`guid`, `path_id`) VALUES (@NPC, @PATH);
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = @NPC;

DELETE FROM `waypoint_data` WHERE `id` = @PATH;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`) VALUES
(@PATH, 1, -12808.8, -790.261, 61.4108, 100, 0),
(@PATH, 2, -12798.2, -784.473, 62.2808, 100, 0),
(@PATH, 3, -12786.1, -774.162, 61.2438, 100, 0),
(@PATH, 4, -12771.3, -761.481, 60.316, 100, 0),
(@PATH, 5, -12756.8, -754.828, 62.6106, 100, 0),
(@PATH, 6, -12749.6, -751.143, 63.3112, 100, 0),
(@PATH, 7, -12739, -739.303, 63.8856, 100, 0),
(@PATH, 8, -12735.1, -732.225, 64.3525, 100, 0),
(@PATH, 9, -12728.2, -713.169, 64.4459, 100, 0),
(@PATH, 10, -12725.2, -701.539, 62.6778, 100, 0),
(@PATH, 11, -12720.4, -686.493, 59.1679, 100, 0),
(@PATH, 12, -12712.7, -663.773, 44.3386, 100, 0),
(@PATH, 13, -12708.5, -649.872, 38.7075, 100, 0),
(@PATH, 14, -12708.3, -641.947, 38.9813, 100, 0),
(@PATH, 15, -12707.5, -622.09, 41.0591, 100, 0),
(@PATH, 16, -12698.9, -609.684, 39.5117, 100, 0),
(@PATH, 17, -12684.6, -602.683, 38.1895, 100, 0),
(@PATH, 18, -12675.1, -590.482, 36.8763, 100, 0),
(@PATH, 19, -12668.8, -572.061, 32.4446, 100, 0),
(@PATH, 20, -12666.3, -556.351, 33.5797, 100, 0),
(@PATH, 21, -12664.8, -528.21, 32.2876, 100, 0),
(@PATH, 22, -12664.2, -512.286, 29.5436, 100, 0),
(@PATH, 23, -12663.6, -492.078, 29.7032, 100, 0),
(@PATH, 24, -12663, -483.57, 29.5811, 100, 0),
(@PATH, 25, -12662.8, -475.462, 30.1972, 100, 0),
(@PATH, 26, -12663.4, -463.4, 30.1114, 100, 0),
(@PATH, 27, -12662.3, -452.503, 27.4379, 100, 30000),
(@PATH, 28, -12663.4, -468.134, 30.4193, 100, 0),
(@PATH, 29, -12664.5, -480.243, 29.7838, 100, 0),
(@PATH, 30, -12672.3, -493.402, 30.0779, 100, 0),
(@PATH, 31, -12680.3, -502.59, 29.6548, 100, 0),
(@PATH, 32, -12690.2, -500.314, 29.1463, 100, 0),
(@PATH, 33, -12701.2, -495.446, 30.33, 100, 0),
(@PATH, 34, -12713, -493.72, 30.5647, 100, 0),
(@PATH, 35, -12729, -504.393, 30.0121, 100, 0),
(@PATH, 36, -12738.7, -517.266, 30.0721, 100, 0),
(@PATH, 37, -12753.3, -530.768, 33.1066, 100, 0),
(@PATH, 38, -12771.2, -539.731, 34.6667, 100, 0),
(@PATH, 39, -12797.1, -532.118, 36.3557, 100, 0),
(@PATH, 40, -12818.5, -536.019, 44.5534, 100, 0),
(@PATH, 41, -12832.5, -542.717, 47.8185, 100, 0),
(@PATH, 42, -12848, -544.823, 49.4328, 100, 0),
(@PATH, 43, -12868.2, -543.583, 47.659, 100, 0),
(@PATH, 44, -12881.8, -556.548, 48.9577, 100, 0),
(@PATH, 45, -12876.7, -569.919, 50.9357, 100, 0),
(@PATH, 46, -12860.1, -580.463, 54.1022, 100, 0),
(@PATH, 47, -12855.3, -596.746, 54.9877, 100, 30000),
(@PATH, 48, -12876.4, -620.271, 53.5266, 100, 0),
(@PATH, 49, -12895.1, -635.351, 51.4542, 100, 0),
(@PATH, 50, -12904.4, -657.241, 51.1925, 100, 0),
(@PATH, 51, -12927, -692.569, 51.0642, 100, 30000),
(@PATH, 52, -12911.1, -720.953, 51.1509, 100, 0),
(@PATH, 53, -12907.9, -760.966, 51.3873, 100, 0),
(@PATH, 54, -12900.2, -783.897, 51.7958, 100, 0),
(@PATH, 55, -12890.5, -796.604, 52.4773, 100, 0),
(@PATH, 56, -12876.6, -811.234, 54.5698, 100, 0),
(@PATH, 57, -12859.3, -826.326, 54.4844, 100, 30000),
(@PATH, 58, -12856.3, -825.979, 54.5954, 100, 0),
(@PATH, 59, -12844.4, -816.441, 55.3631, 100, 0),
(@PATH, 60, -12837, -807.25, 58.0551, 100, 0),
(@PATH, 61, -12827.3, -800.899, 60.6489, 100, 0);

--
-- END UPDATING QUERIES
--
UPDATE version_db_world SET date = '2022_03_06_15' WHERE sql_rev = '1646090929242630500';
COMMIT;
END //
DELIMITER ;
CALL updateDb();
DROP PROCEDURE IF EXISTS `updateDb`;

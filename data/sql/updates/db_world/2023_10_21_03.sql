-- DB update 2023_10_21_02 -> 2023_10_21_03
-- Quest: Grim Message
DELETE FROM `gameobject` WHERE `id` = 142698;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`) VALUES
(99872, 142698, 0, 0, 0, 1, 1, -21.77, -2802.7, 121.85, 0, 0, 0, 0, 0, 180, 0, 1, '', 0),
(99873, 142698, 0, 0, 0, 1, 1, -24.2883, -2468.25, 122.442, 0, 0, 0, 0, 0, 180, 0, 1, '', 0);

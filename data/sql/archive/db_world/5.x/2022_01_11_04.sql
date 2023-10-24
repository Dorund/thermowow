-- DB update 2022_01_11_03 -> 2022_01_11_04
DROP PROCEDURE IF EXISTS `updateDb`;
DELIMITER //
CREATE PROCEDURE updateDb ()
proc:BEGIN DECLARE OK VARCHAR(100) DEFAULT 'FALSE';
SELECT COUNT(*) INTO @COLEXISTS
FROM information_schema.COLUMNS
WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'version_db_world' AND COLUMN_NAME = '2022_01_11_03';
IF @COLEXISTS = 0 THEN LEAVE proc; END IF;
START TRANSACTION;
ALTER TABLE version_db_world CHANGE COLUMN 2022_01_11_03 2022_01_11_04 bit;
SELECT sql_rev INTO OK FROM version_db_world WHERE sql_rev = '1641913700930614616'; IF OK <> 'FALSE' THEN LEAVE proc; END IF;
--
-- START UPDATING QUERIES
--

INSERT INTO `version_db_world` (`sql_rev`) VALUES ('1641913700930614616');

-- Timbermaw Mystic and Timbermaw Woodbender, Timbermaw Hold, Felwood
UPDATE `creature` SET `Creature_id1`=11552,`Creature_id2`=11553, `chance_id1`=50 WHERE `guid` IN 
(39353,39354,39360,39685,39721);

-- Skeletal Horrors and Skeletal Fiends, Raven Hill, Duskwood
UPDATE `creature` SET `Creature_id1`=202,`Creature_id2`=531, `chance_id1`=50 WHERE `guid` IN 
(4927,4941,4943,4944,4945,4946,4969,4972,4973,4974,4993,5038,5039,5040,5041,5042,5043,5139,5140,5160,5163,5168,5176,5178,5942,5958,5959,5961);

--
-- END UPDATING QUERIES
--
UPDATE version_db_world SET date = '2022_01_11_04' WHERE sql_rev = '1641913700930614616';
COMMIT;
END //
DELIMITER ;
CALL updateDb();
DROP PROCEDURE IF EXISTS `updateDb`;

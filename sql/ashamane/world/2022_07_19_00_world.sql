-- From Neros Stash, rework by Sturm.
-- Quest: 27635 Decontamination

-- 46185 Sanitron 500
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE entry in (46185, 46165, 46320, 46208);
UPDATE `creature_template` SET `npcflag` = 16777216, `InhabitType` = 4 WHERE (entry = 46185);
-- Move the outer ones slightly to get out of the decontamination range.
UPDATE `creature` SET `position_x` = -5173.010, `position_y` = 735.55, `position_z` = 287.648 WHERE `creature`.`guid` = 304772;
UPDATE `creature` SET `position_x` = -5176.565, `position_y` = 735.55, `position_z` = 287.648 WHERE `creature`.`guid` = 304773;
UPDATE `creature` SET `position_x` = -5169.849, `position_y` = 735.55, `position_z` = 287.648 WHERE `creature`.`guid` = 304775;

-- 46185 Sanitron 500
-- Table smart_scripts
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 46185;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 46185);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(46185, 0, 0, 1, 27, 0, 100, 512, 0, 0, 0, 0, '', 53, 0, 46185, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sanitron 500 - On Passenger Boarded - Start Waypoint'),
(46185, 0, 1, 0, 61, 0, 100, 512, 0, 0, 0, 0, '', 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sanitron 500 - On Passenger Boarded - Say Line 0'),
(46185, 0, 2, 3, 40, 0, 100, 512, 1, 46185, 0, 0, '', 54, 3000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sanitron 500 - On Waypoint 1 Reached - Pause Waypoint'),
(46185, 0, 3, 0, 61, 0, 100, 512, 1, 46185, 0, 0, '', 45, 1, 1, 0, 0, 0, 0, 9, 46165, 1, 20, 0, 0, 0, 0, 'Sanitron 500 - On Waypoint 1 Reached - Set Data 1 1'),
(46185, 0, 4, 5, 40, 0, 100, 512, 2, 46185, 0, 0, '', 54, 5000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sanitron 500 - On Waypoint 2 Reached - Pause Waypoint'),
(46185, 0, 5, 0, 61, 0, 100, 512, 2, 46185, 0, 0, '', 45, 1, 1, 0, 0, 0, 0, 9, 46208, 1, 20, 0, 0, 0, 0, 'Sanitron 500 - On Waypoint 2 Reached - Set Data 1 1'),
(46185, 0, 6, 7, 40, 0, 100, 512, 3, 46185, 0, 0, '', 54, 3000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sanitron 500 - On Waypoint 3 Reached - Pause Waypoint'),
(46185, 0, 7, 8, 61, 0, 100, 512, 3, 46185, 0, 0, '', 45, 2, 2, 0, 0, 0, 0, 9, 46165, 1, 20, 0, 0, 0, 0, 'Sanitron 500 - On Waypoint 3 Reached - Set Data 2 2'),
(46185, 0, 8, 10, 61, 0, 100, 512, 3, 46185, 0, 0, '', 28, 80653, 0, 0, 0, 0, 0, 29, 0, 0, 0, 0, 0, 0, 0, 'Sanitron 500 - On Waypoint 3 Reached - Remove Aura \'80653\' ( Irradiated )'),
(46185, 0, 10, 0, 61, 0, 100, 512, 3, 46185, 0, 0, '', 80, 4618500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sanitron 500 - On Waypoint 3 Reached - Run Script'),
(46185, 0, 11, 12, 40, 0, 100, 512, 4, 46185, 0, 0, '', 54, 2000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sanitron 500 - On Waypoint 4 Reached - Pause Waypoint'),
(46185, 0, 12, 0, 61, 0, 100, 512, 4, 46185, 0, 0, '', 80, 4618501, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sanitron 500 - On Waypoint 4 Reached - Run Script'),
(46185, 0, 14, 0, 40, 0, 100, 0, 2, 46185, 0, 0, '', 45, 0, 1, 0, 0, 0, 0, 10, 304781, 0, 0, 0, 0, 0, 0, 'Sanitron 500 - On Waypoint 2 Reached - Set Data 0 1'),
(46185, 0, 9, 0, 27, 0, 100, 0, 0, 0, 0, 0, '', 11, 176908, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Sanitron 500 - On Passenger Boarded - Cast \'176908\' ( Decontamination Credit )');

-- Table smart_scripts
DELETE FROM `smart_scripts` WHERE (source_type = 9 AND entryorguid = 4618500);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(4618500, 9, 0, 0, 0, 0, 100, 0, 1500, 1500, 1500, 1500, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ' - Say Line 1'),
(4618500, 9, 1, 0, 0, 0, 100, 0, 1500, 1500, 1500, 1500, 1, 2, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ' - Say Line 2'),
(4618500, 9, 2, 0, 0, 0, 100, 0, 1500, 1500, 1500, 1500, 11, 88312, 4, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ' - Cast \'88312\'');
-- WP4
DELETE FROM `smart_scripts` WHERE (source_type = 9 AND entryorguid = 4618501);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(4618501, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 46230, 2, 10000, 0, 0, 0, 8, 0, 0, 0, -5184.87, 699.38, 288.08, 0, ' - Summon Creature \'S.A.F.E. Technician\''),
(4618501, 9, 1, 0, 0, 0, 100, 0, 300, 300, 300, 300, 51, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ' - Kill Target'),
(4618501, 9, 2, 0, 0, 0, 100, 0, 10000, 10000, 10000, 10000, 41, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ' - Despawn Instant');

-- Creature Text
DELETE FROM `creature_text` WHERE `CreatureID`=46185 AND `GroupID`=0 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (46185, 0, 0, 'Commencing decontamination sequence...', 12, 0, 100, 0, 0, 0, 46323, 0, 'Sanitron 500');
DELETE FROM `creature_text` WHERE `CreatureID`=46185 AND `GroupID`=1 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (46185, 1, 0, 'Decontamination complete. Standby for delivery.', 12, 0, 100, 0, 0, 0, 46324, 0, 'Sanitron 500');
DELETE FROM `creature_text` WHERE `CreatureID`=46185 AND `GroupID`=2 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (46185, 2, 0, 'Warning, system overload. Malfunction imminent!', 12, 0, 100, 0, 0, 0, 46325, 0, 'Sanitron 500');

-- Waypoints
DELETE FROM `waypoints` WHERE `entry`=46185 AND `pointid`=1;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (46185, 1, -5173.05, 724.966, 295.391, 'Sanitron 500 WP1');
DELETE FROM `waypoints` WHERE `entry`=46185 AND `pointid`=2;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (46185, 2, -5173.86, 716.697, 288.976, 'Sanitron 500 WP2');
DELETE FROM `waypoints` WHERE `entry`=46185 AND `pointid`=3;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (46185, 3, -5175.01, 704.428, 294.309, 'Sanitron 500 WP3');
DELETE FROM `waypoints` WHERE `entry`=46185 AND `pointid`=4;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (46185, 4, -5175.331, 698.376, 288.100, 'Sanitron 500 WP4');

-- 46165 Decontamination Bunny ( Teslas above )

-- Table smart_scripts
DELETE FROM `smart_scripts` WHERE (source_type = 0 AND entryorguid = 46165);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
-- first and second row teslas
(46165, 0, 0, 0, 38, 0, 100, 0, 1, 1, 0, 0, 11, 86075, 4, 0, 0, 0, 0, 9, 46185, 1, 10, 0, 0, 0, 0, 'Decontamination Bunny - On Data Set 1 1 - Cast \'86075\''),
-- second and third row teslas
(46165, 0, 1, 0, 38, 0, 100, 0, 2, 2, 0, 0, 11, 86086, 4, 0, 0, 0, 0, 9, 46185, 1, 15, 0, 0, 0, 0, 'Decontamination Bunny - On Data Set 2 2 - Cast \'86086\'');

-- 46208 Clean Cannon X-2

-- Table smart_scripts
DELETE FROM `smart_scripts` WHERE (source_type = 0 AND entryorguid = 46208);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(46208, 0, 0, 1, 11, 0, 100, 0, 0, 0, 0, 0, 3, 0, 27669, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Clean Cannon X-2 - On Respawn - Morph To Model 27669'),
(46208, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Clean Cannon X-2 - On Respawn - Set Orientation Home Position'),
(46208, 0, 2, 3, 38, 0, 100, 0, 1, 1, 0, 0, 11, 86080, 4, 0, 0, 0, 0, 9, 46185, 1, 13, 0, 0, 0, 0, 'Clean Cannon X-2 - On Data Set 1 1 - Cast \'86080\''),
(46208, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 11, 86084, 4, 0, 0, 0, 0, 9, 46185, 1, 13, 0, 0, 0, 0, 'Clean Cannon X-2 - On Data Set 1 1 - Cast \'86084\'');

-- DELETING THE OLD STUFF
DELETE FROM `smart_scripts` WHERE entryorguid in (4623001, 462300);

-- SmartAI for the creature behind the console.
DELETE FROM `smart_scripts` WHERE (`entryorguid` = -304781) AND (`source_type` = 0) AND (`id` IN (0));
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(-304781, 0, 0, 0, 38, 0, 100, 0, 0, 1, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'S.A.F.E. Technician - On Data Set 0 1 - Say Line 0');

-- Say Text for the creature behind the console.
DELETE FROM `creature_text` WHERE `CreatureID`=46230 AND `GroupID`=0 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (46230, 0, 0, 'Ugh! Not this again! I\'m asking for a new station next expedition...', 12, 0, 100, 1, 0, 0, 46342, 0, 'S.A.F.E. Technician');

-- At Sanitron 500 Waypoint 4 spawn a tech that will walk up to the exploded Sanitron and say a line
-- Creature Text
DELETE FROM `creature_text` WHERE `CreatureID`=46230 AND `GroupID`=1 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (46230, 1, 0, 'No, not the Sanitron... it was my pride and joy!', 12, 0, 100, 6, 0, 0, 46341, 0, 'S.A.F.E. Technician');

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 46230);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(46230, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, '', 69, 1, 0, 0, 0, 0, 0, 8, 0, 0, 25, -5176.61, 697.874, 288.084, 0.12, 'S.A.F.E. Technician - On Just Summoned - Move To Closest Creature \'Sanitron 500\''),
(46230, 0, 1, 2, 75, 0, 100, 1, 0, 46185, 2, 150, '', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'S.A.F.E. Technician - On Distance To Creature - Say Line 0 (No Repeat)'),
(46230, 0, 2, 0, 61, 0, 100, 0, 0, 46185, 2, 150, '', 41, 5000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'S.A.F.E. Technician - On Distance To Creature - Despawn In 5000 ms (No Repeat)');

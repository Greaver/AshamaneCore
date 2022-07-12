-- Quest: Proving Pit
-- Darkspear Jailor
SET @ENTRY := 39062;
UPDATE `creature` SET  `zoneId`=6453, `areaId`=4865, `modelid`=31289, `curhealth`=1110 WHERE `id`=@ENTRY;
UPDATE `creature_template` SET `MovementType`=1 WHERE `entry`=@ENTRY;
DELETE FROM `creature_text` WHERE `CreatureID`=@ENTRY;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(@ENTRY, 0, 0, 'Get in the pit and show us your stuff, $Gboy:girl;.', 12, 0, 100, 0, 0, 0, 37886, 0, '');
DELETE FROM `creature_addon` WHERE `guid` = 251546;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES 
(251546, 390620, 0, 0, 0, 0, 0, 0, 0, NULL);

DELETE FROM `creature_addon` WHERE `guid` = 251547;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES 
(251547, 390621, 0, 0, 0, 0, 0, 0, 0, NULL);

-- Darkspear Jailor SAI
SET @ENTRY := -251546;
DELETE FROM `smart_scripts` WHERE `entryOrGuid` = @ENTRY AND `source_type` = 0;
UPDATE `creature_template` SET `AIName` = "SmartAI", `ScriptName` = "" WHERE `entry` = 39062;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 1, 62, 0, 100, 0, 10974, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 10974 selected - Gossip player: Close gossip"),
(@ENTRY, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 33, 39062, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 10974 selected - Gossip player: Give kill credit Darkspear Jailor (39062)"),
(@ENTRY, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 10974 selected - Self: Talk 0 to invoker"),
(@ENTRY, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 53, 1, 390620, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 10974 selected - Self: Start path #390620, run, do not repeat, Passive"),
(@ENTRY, 0, 4, 5, 40, 0, 100, 0, 3, 390620, 0, 0, 9, 0, 0, 0, 0, 0, 0, 15, 201968, 10, 0, 0, 0, 0, 0, "On wapoint 3 of path 390621 reached - Gameobject Darkspear Cage (201968) in 10 yd: Activate gameobject"),
(@ENTRY, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 54, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On wapoint 3 of path 390621 reached - Self: Pause path for 1000 ms"),
(@ENTRY, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 59, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On wapoint 3 of path 390621 reached - Self: Set walk"),
(@ENTRY, 0, 7, 0, 62, 0, 100, 0, 10974, 1, 0, 0, 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On gossip action 1 from menu 10974 selected - Self: Set npc flags NONE"),
(@ENTRY, 0, 8, 0, 40, 0, 100, 0, 5, 390620, 0, 0, 81, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On wapoint 5 of path 390621 reached - Self: Set npc flags GOSSIP");

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = -251546 AND `SourceId` = 0;

-- Darkspear Jailor SAI
SET @ENTRY := -251547;
DELETE FROM `smart_scripts` WHERE `entryOrGuid` = @ENTRY AND `source_type` = 0;
UPDATE `creature_template` SET `AIName` = "SmartAI", `ScriptName` = "" WHERE `entry` = 39062;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 1, 62, 0, 100, 0, 10974, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 10974 selected - Gossip player: Close gossip"),
(@ENTRY, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 33, 39062, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 10974 selected - Gossip player: Give kill credit Darkspear Jailor (39062)"),
(@ENTRY, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 10974 selected - Self: Talk 0 to invoker"),
(@ENTRY, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 53, 1, 390621, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 10974 selected - Self: Start path #390621, run, do not repeat, Passive"),
(@ENTRY, 0, 4, 5, 40, 0, 100, 0, 3, 390621, 0, 0, 9, 0, 0, 0, 0, 0, 0, 15, 201968, 10, 0, 0, 0, 0, 0, "On wapoint 3 of path 390620 reached - Gameobject Darkspear Cage (201968) in 10 yd: Activate gameobject"),
(@ENTRY, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 54, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On wapoint 3 of path 390620 reached - Self: Pause path for 1000 ms"),
(@ENTRY, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 59, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On wapoint 3 of path 390620 reached - Self: Set walk"),
(@ENTRY, 0, 7, 0, 62, 0, 100, 0, 10974, 1, 0, 0, 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On gossip action 1 from menu 10974 selected - Self: Set npc flags NONE"),
(@ENTRY, 0, 8, 0, 40, 0, 100, 0, 5, 390621, 0, 0, 81, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On wapoint 5 of path 390620 reached - Self: Set npc flags GOSSIP");

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = -251547 AND `SourceId` = 0;

-- Set walk points for Jailor(s)
DELETE FROM `waypoints` WHERE `entry`= 390620;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(390620, 1, -1143.20, -5429.86, 13.8643, 'Point 1'),
(390620, 2, -1137.68, -5429.41, 13.7173, 'Point 2'),
(390620, 3, -1136.07, -5416.94, 13.2693, 'Point 3'),
(390620, 4, -1137.68, -5429.41, 13.7173, 'Point 4'),
(390620, 5, -1143.20, -5429.86, 13.8643, 'Point 5');

DELETE FROM `waypoints` WHERE `entry`= 390621;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(390621, 1, -1159.23, -5530.07, 11.9526, 'Point 1'),
(390621, 2, -1159.07, -5520.38, 12.0749, 'Point 2'),
(390621, 3, -1153.49, -5518.96, 11.9982, 'Point 3'),
(390621, 4, -1158.26, -5519.84, 12.0920, 'Point 4'),
(390621, 5, -1159.07, -5529.94, 11.9540, 'Point 5');

-- Darkspear Cage
SET @ENTRY := 201968;
UPDATE `gameobject_template` SET `Data0`=920, `Data3`=600000, `ScriptName`='SmartGameObjectAI' WHERE `entry`=@ENTRY;
UPDATE `gameobject` SET  `zoneId`=6453, `areaId`=4865 WHERE `id`=@ENTRY;

-- Darkspear Cage SAI
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,0,70,0,100,0,2,0,0,0,45,1,1,0,0,0,0,11,38142,3,0,0,0,0,0,"Darkspear Cage - On Gameobject State Changed - Set Data 1 1");

-- Captive Spitescale Scout
SET @ENTRY := 38142;
DELETE FROM `creature_template` WHERE `entry` = 38142;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_class`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(38142, 0, 0, 0, 0, 0, 6764, 0, 0, 0, 'Captive Spitescale Scout', '', '', NULL, '', 0, 3, 3, 0, 0, 0, 634, 2, 1, 1.14286, 1, 0, 0, 2000, 2000, 1, 1, 1, 33024, 2048, 0, 0, 0, 0, 7, 2147483648, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15089, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 2, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, '', 26365);
UPDATE `creature` SET `zoneId`=6453, `areaId`=4865, `spawntimesecs`=10 WHERE `id`=@ENTRY;

 -- Captive Spitescale Scout
SET @ENTRY := 38142;
DELETE FROM `smart_scripts` WHERE `entryOrGuid` = @ENTRY AND `source_type` = 0;
UPDATE `creature_template` SET `AIName` = "SmartAI", `ScriptName` = "" WHERE `entry` = @ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 0, 0, 100, 0, 1000, 2000, 10000, 11000, 11, 15089, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Every 10 - 11 seconds (1 - 2s initially) - Self: Cast spell Frost Shock (15089) on Victim"),
(@ENTRY, 0, 1, 2, 38, 0, 100, 0, 1, 1, 0, 0, 114, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 10, 0, 0, "On data[1] set to 1 - Self: Move by offset (0, 10, 0, 0)"),
(@ENTRY, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 19, 256, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On data[1] set to 1 - Self: Remove UNIT_FLAGS to IMMUNE_TO_PC"),
(@ENTRY, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On link - Self: Talk 0 to invoker"),
(@ENTRY, 0, 4, 5, 6, 0, 100, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 15, 201968, 30, 0, 0, 0, 0, 0, "On death - Gameobject Darkspear Cage (201968) in 30 yd: Activate gameobject"),
(@ENTRY, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 45, 2, 2, 0, 0, 0, 0, 11, 38242, 20, 0, 0, 0, 0, 0, "On death - Creature Nekali (38242) in 20 yd: Set creature data #2 to 2"),
(@ENTRY, 0, 6, 7, 61, 0, 100, 0, 0, 0, 0, 0, 45, 3, 3, 0, 0, 0, 0, 11, 38247, 20, 0, 0, 0, 0, 0, "On death - Creature Ortezza (38247) in 20 yd: Set creature data #3 to 3"),
(@ENTRY, 0, 7, 8, 61, 0, 100, 0, 0, 0, 0, 0, 45, 4, 4, 0, 0, 0, 0, 11, 38246, 20, 0, 0, 0, 0, 0, "On death - Creature Soratha (38246) in 20 yd: Set creature data #4 to 4"),
(@ENTRY, 0, 8, 9, 61, 0, 100, 0, 0, 0, 0, 0, 45, 5, 5, 0, 0, 0, 0, 11, 38244, 20, 0, 0, 0, 0, 0, "On death - Creature Legati (38244) in 20 yd: Set creature data #5 to 5"),
(@ENTRY, 0, 9, 10, 61, 0, 100, 0, 0, 0, 0, 0, 45, 6, 6, 0, 0, 0, 0, 11, 38245, 20, 0, 0, 0, 0, 0, "On death - Creature Tunari (38245) in 20 yd: Set creature data #6 to 6"),
(@ENTRY, 0, 10, 11, 61, 0, 100, 0, 0, 0, 0, 0, 45, 7, 7, 0, 0, 0, 0, 11, 63310, 20, 0, 0, 0, 0, 0, "On death - Creature Zabrax (63310) in 20 yd: Set creature data #7 to 7"),
(@ENTRY, 0, 11, 12, 61, 0, 100, 0, 0, 0, 0, 0, 45, 8, 8, 0, 0, 0, 0, 11, 38037, 20, 0, 0, 0, 0, 0, "On death - Creature Nortet (38037) in 20 yd: Set creature data #8 to 8"),
(@ENTRY, 0, 12, 13, 61, 0, 100, 0, 0, 0, 0, 0, 45, 9, 9, 0, 0, 0, 0, 11, 38243, 20, 0, 0, 0, 0, 0, "On death - Creature Zen'tabra (38243) in 20 yd: Set creature data #9 to 9"),
(@ENTRY, 0, 13, 0, 61, 0, 100, 0, 0, 0, 0, 0, 45, 10, 10, 0, 0, 0, 0, 11, 42618, 20, 0, 0, 0, 0, 0, "On death - Creature Voldreka (42618) in 20 yd: Set creature data #10 to 10");

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 38142 AND `SourceId` = 0;

DELETE FROM `creature_text` WHERE `CreatureID`=@ENTRY;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(@ENTRY, 0, 0, 'The Sssea Witch will kill you all.', 12, 0, 100, 0, 0, 0, 39090, 0, 'Captive Spitescale Scout');

-- Nekali SAI
SET @ENTRY := 38242;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,38,0,100,0,2,2,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nekali - On Data Set 2 2 - Say Line 0"),
(@ENTRY,0,1,0,20,0,100,0,24762,0,0,0,53,0,@ENTRY*10+00,0,0,0,0,1,0,0,0,0,0,0,0,"Nekali - On Quest '' Finished - Start Waypoint"),
(@ENTRY,0,2,0,19,0,100,0,24762,0,0,0,53,0,@ENTRY*10+00,0,0,0,0,1,0,0,0,0,0,0,0,"Nekali - On Quest '' Taken - Start Waypoint");

-- Nekali Text
DELETE FROM `creature_text` WHERE `CreatureID`=@ENTRY;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(@ENTRY, 0, 0, 'Well done, $n!', 12, 0, 100, 0, 0, 0, 37898, 0, 'Nekali');

-- Nekali Waypoints
DELETE FROM `waypoints` WHERE `entry` IN (@ENTRY*10+00,@ENTRY*10+01);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(@ENTRY*10+00, 1, -1160.19, -5396.27, 12.2370, 'Point 1'),
(@ENTRY*10+00, 2, -1150.25, -5407.53, 13.2418, 'Point 2'),
(@ENTRY*10+01, 1, -1150.25, -5407.53, 13.2418, 'Point 1'),
(@ENTRY*10+01, 2, -1160.19, -5396.27, 12.2370, 'Point 2');

DELETE FROM `creature_queststarter` WHERE `id`=@ENTRY AND `quest`=24760;
DELETE FROM `creature_questender` WHERE `id`=@ENTRY AND `quest`=24760;
UPDATE `quest_template_addon` SET `PrevQuestID`=24762 WHERE `ID`=24763;

-- Ortezza SAI
SET @ENTRY := 38247;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,38,0,100,0,3,3,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ortezza - On Data Set 3 3 - Say Line 0"),
(@ENTRY,0,1,0,20,0,100,0,24780,0,0,0,53,0,@ENTRY*10+01,0,0,0,0,1,0,0,0,0,0,0,0,"Ortezza - On Quest '' Finished - Start Waypoint"),
(@ENTRY,0,2,0,19,0,100,0,24780,0,0,0,53,0,@ENTRY*10+00,0,0,0,0,1,0,0,0,0,0,0,0,"Ortezza - On Quest '' Taken - Start Waypoint");

-- Ortezza Text
DELETE FROM `creature_text` WHERE `CreatureID`=@ENTRY;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(@ENTRY, 0, 0, 'Well done, $n!', 12, 0, 100, 0, 0, 0, 37898, 0, 'Ortezza');

-- Ortezza Waypoints
DELETE FROM `waypoints` WHERE `entry` IN (@ENTRY*10+00,@ENTRY*10+01);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(@ENTRY*10+00, 1, -1128.28, -5510.01, 11.9823, 'Point 1'),
(@ENTRY*10+00, 2, -1136.21, -5526.92, 11.9810, 'Point 2'),
(@ENTRY*10+01, 1, -1136.21, -5526.92, 11.9810, 'Point 1'),
(@ENTRY*10+01, 2, -1128.28, -5510.01, 11.9823, 'Point 2');

-- Ortezza QuestGiver
DELETE FROM `creature_queststarter` WHERE `id`=@ENTRY AND `quest`=24778;
DELETE FROM `creature_questender` WHERE `id`=@ENTRY AND `quest`=24778;
UPDATE `quest_template_addon` SET `PrevQuestID`=24780 WHERE `ID`=24781;

-- Soratha SAI
SET @ENTRY := 38246;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,38,0,100,0,4,4,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Soratha - On Data Set 4 4 - Say Line 0"),
(@ENTRY,0,1,0,20,0,100,0,24754,0,0,0,53,0,@ENTRY*10+01,0,0,0,0,1,0,0,0,0,0,0,0,"Soratha - On Quest '' Finished - Start Waypoint"),
(@ENTRY,0,2,0,19,0,100,0,24754,0,0,0,53,0,@ENTRY*10+00,0,0,0,0,1,0,0,0,0,0,0,0,"Soratha - On Quest '' Taken - Start Waypoint");

-- Soratha Text
DELETE FROM `creature_text` WHERE `CreatureID`=@ENTRY;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(@ENTRY, 0, 0, 'Well done, $n!', 12, 0, 100, 0, 0, 0, 37898, 0, 'Soratha');

-- Soratha Waypoints
DELETE FROM `waypoints` WHERE `entry` IN (@ENTRY*10+00,@ENTRY*10+01);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(@ENTRY*10+00, 1, -1152.24, -5569.91, 11.9353, 'Point 1'),
(@ENTRY*10+00, 2, -1146.48, -5541.75, 12.4997, 'Point 2'),
(@ENTRY*10+01, 1, -1146.48, -5541.75, 12.4997, 'Point 1'),
(@ENTRY*10+01, 2, -1152.24, -5569.91, 11.9353, 'Point 2');

UPDATE `quest_template_addon` SET `PrevQuestID`=24754 WHERE `ID`=24755;

-- Legati SAI
SET @ENTRY := 38244;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,38,0,100,0,5,5,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Legati - On Data Set 5 5 - Say Line 0"),
(@ENTRY,0,1,0,20,0,100,0,24774,0,0,0,53,0,@ENTRY*10+01,0,0,0,0,1,0,0,0,0,0,0,0,"Legati - On Quest '' Finished - Start Waypoint"),
(@ENTRY,0,2,0,19,0,100,0,24774,0,0,0,53,0,@ENTRY*10+00,0,0,0,0,1,0,0,0,0,0,0,0,"Legati - On Quest '' Taken - Start Waypoint");

-- Legati Text
DELETE FROM `creature_text` WHERE `CreatureID`=@ENTRY;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(@ENTRY, 0, 0, 'Well done, $n!', 12, 0, 100, 0, 0, 0, 37898, 0, 'Legati');

-- Legati Waypoints
DELETE FROM `waypoints` WHERE `entry` IN (@ENTRY*10+00,@ENTRY*10+01);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(@ENTRY*10+00, 1, -1126.19, -5446.60, 11.9830, 'Point 1'),
(@ENTRY*10+00, 2, -1145.74, -5429.52, 13.6803, 'Point 2'),
(@ENTRY*10+01, 1, -1145.74, -5429.52, 13.6803, 'Point 1'),
(@ENTRY*10+01, 2, -1126.19, -5446.60, 11.9830, 'Point 2');

DELETE FROM `creature_queststarter` WHERE `id`=@ENTRY AND `quest`=24772;
DELETE FROM `creature_questender` WHERE `id`=@ENTRY AND `quest`=24772;
UPDATE `quest_template_addon` SET `PrevQuestID`=24774 WHERE `ID`=24775;

-- Tunari SAI
SET @ENTRY := 38245;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,38,0,100,0,6,6,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Tunari - On Data Set 6 6 - Say Line 0"),
(@ENTRY,0,1,0,20,0,100,0,24786,0,0,0,53,0,@ENTRY*10+01,0,0,0,0,1,0,0,0,0,0,0,0,"Tunari - On Quest '' Finished - Start Waypoint"),
(@ENTRY,0,2,0,19,0,100,0,24786,0,0,0,53,0,@ENTRY*10+00,0,0,0,0,1,0,0,0,0,0,0,0,"Tunari - On Quest '' Taken - Start Waypoint");

-- Tunari Text
DELETE FROM `creature_text` WHERE `CreatureID`=@ENTRY;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(@ENTRY, 0, 0, 'Well done, $n!', 12, 0, 100, 0, 0, 0, 37898, 0, 'Tunari');

-- Tunari Waypoints
DELETE FROM `waypoints` WHERE `entry` IN (@ENTRY*10+00,@ENTRY*10+01);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(@ENTRY*10+00, 1, -1118.18, -5540.01, 11.9782, 'Point 1'),
(@ENTRY*10+00, 2, -1137.49, -5528.34, 11.9790, 'Point 2'),
(@ENTRY*10+01, 1, -1137.49, -5528.34, 11.9790, 'Point 1'),
(@ENTRY*10+01, 2, -1118.18, -5540.01, 11.9782, 'Point 2');

DELETE FROM `creature_queststarter` WHERE `id`=@ENTRY AND `quest`=24784;
DELETE FROM `creature_questender` WHERE `id`=@ENTRY AND `quest`=24784;
UPDATE `quest_template_addon` SET `PrevQuestID`=24786 WHERE `ID`=24787;

-- Zabrax
SET @ENTRY := 63310;
DELETE FROM `creature` WHERE `guid`=308647;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES 
(308647, @ENTRY, 1, 6453, 4865, 0, 0, 0, 0, -1, 0, 0, -1149.39, -5441.25, 12.0429, 0.0860126, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 26365);

-- Zabrax SAI
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,38,0,100,0,7,7,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Zabrax - On Data Set 7 7 - Say Line 0"),
(@ENTRY,0,1,0,20,0,100,0,31161,0,0,0,53,0,@ENTRY*10+01,0,0,0,0,1,0,0,0,0,0,0,0,"Zabrax - On Quest '' Finished - Start Waypoint"),
(@ENTRY,0,2,0,19,0,100,0,31161,0,0,0,53,0,@ENTRY*10+00,0,0,0,0,1,0,0,0,0,0,0,0,"Zabrax - On Quest '' Taken - Start Waypoint");

-- Zabrax Text
DELETE FROM `creature_text` WHERE `CreatureID`=@ENTRY;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(@ENTRY, 0, 0, 'Well done, $n!', 12, 0, 100, 0, 0, 0, 37898, 0, 'Zabrax');

-- Zabrax Waypoints
DELETE FROM `waypoints` WHERE `entry` IN (@ENTRY*10+00,@ENTRY*10+01);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(@ENTRY*10+00, 1, -1149.36, -5441.44, 12.0496, 'Point 1'),
(@ENTRY*10+00, 2, -1146.74, -5429.93, 13.5953, 'Point 2'),
(@ENTRY*10+01, 1, -1146.74, -5429.93, 13.5953, 'Point 1'),
(@ENTRY*10+01, 2, -1149.36, -5441.44, 12.0496, 'Point 2');

DELETE FROM `creature_questender` WHERE `id`=@ENTRY AND `quest`=31162;

DELETE FROM `quest_template_addon` WHERE `ID` IN (31158,31159,31160,31161,31163);
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`, `ScriptName`) VALUES 
(31159, 0, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(31158, 0, 512, 0, 31159, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(31160, 0, 512, 0, 31158, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(31161, 0, 512, 0, 31160, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(31163, 0, 512, 0, 31161, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=10974 AND `ConditionValue1`=31161;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 10974, 1, 0, 9, 8, 0, 31161, 0, 0, 1, 0, 0, '', 'Show gossip menu 10974 option id 1 if quest Proving Pit has not been rewarded.'),
(15, 10974, 1, 0, 9, 9, 0, 31161, 0, 0, 0, 0, 0, '', 'Show gossip menu 10974 option id 1 if quest Proving Pit has been taken.');

-- Nortet SAI
SET @ENTRY := 38037;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,38,0,100,0,8,8,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nortet - On Data Set 8 8 - Say Line 0"),
(@ENTRY,0,1,0,20,0,100,0,24642,0,0,0,53,0,@ENTRY*10+01,0,0,0,0,1,0,0,0,0,0,0,0,"Nortet - On Quest '' Finished - Start Waypoint"),
(@ENTRY,0,2,0,19,0,100,0,24642,0,0,0,53,0,@ENTRY*10+00,0,0,0,0,1,0,0,0,0,0,0,0,"Nortet - On Quest '' Taken - Start Waypoint");

-- Nortet Text
DELETE FROM `creature_text` WHERE `CreatureID`=@ENTRY;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(@ENTRY, 0, 0, 'Well done, $n!', 12, 0, 100, 0, 0, 0, 37898, 0, 'Nortet');

-- Nortet Waypoints
DELETE FROM `waypoints` WHERE `entry` IN (@ENTRY*10+00,@ENTRY*10+01);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(@ENTRY*10+00, 1, -1171.06, -5441.19, 11.9470, 'Point 1'),
(@ENTRY*10+00, 2, -1159.10, -5419.11, 13.2431, 'Point 2'),
(@ENTRY*10+01, 1, -1159.10, -5419.11, 13.2431, 'Point 1'),
(@ENTRY*10+01, 2, -1171.06, -5441.19, 11.9470, 'Point 2');

DELETE FROM `creature_queststarter` WHERE `id`=@ENTRY AND `quest`=24640;
DELETE FROM `creature_questender` WHERE `id`=@ENTRY AND `quest`=24640;
UPDATE `quest_template_addon` SET `PrevQuestID`=24642 WHERE `ID`=24643;

-- Zentabra SAI
SET @ENTRY := 38243;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,38,0,100,0,9,9,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Zentabra - On Data Set 9 9 - Say Line 0"),
(@ENTRY,0,1,0,20,0,100,0,24768,0,0,0,53,0,@ENTRY*10+01,0,0,0,0,1,0,0,0,0,0,0,0,"Zentabra - On Quest '' Finished - Start Waypoint"),
(@ENTRY,0,2,0,19,0,100,0,24768,0,0,0,53,0,@ENTRY*10+00,0,0,0,0,1,0,0,0,0,0,0,0,"Zentabra - On Quest '' Taken - Start Waypoint");

-- Zentabra Text
DELETE FROM `creature_text` WHERE `CreatureID`=@ENTRY;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(@ENTRY, 0, 0, 'Well done, $n!', 12, 0, 100, 0, 0, 0, 37898, 0, 'Zentabra');

-- Zentabra Waypoints
DELETE FROM `waypoints` WHERE `entry` IN (@ENTRY*10+00,@ENTRY*10+01);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(@ENTRY*10+00, 1, -1175.60, -5540.47, 11.9406, 'Point 1'),
(@ENTRY*10+00, 2, -1158.96, -5532.81, 11.9406, 'Point 2'),
(@ENTRY*10+01, 1, -1158.96, -5532.81, 11.9406, 'Point 1'),
(@ENTRY*10+01, 2, -1175.60, -5540.47, 11.9406, 'Point 2');

DELETE FROM `creature_queststarter` WHERE `id`=@ENTRY AND `quest`=24766;
DELETE FROM `creature_questender` WHERE `id`=@ENTRY AND `quest` IN (24766,28835);
UPDATE `quest_template_addon` SET `PrevQuestID`=24768 WHERE `ID`=24769;

-- Voldreka SAI
SET @ENTRY := 42618;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,38,0,100,0,10,10,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Voldreka - On Data Set 10 10 - Say Line 0"),
(@ENTRY,0,1,0,20,0,100,0,26276,0,0,0,53,0,@ENTRY*10+01,0,0,0,0,1,0,0,0,0,0,0,0,"Voldreka - On Quest '' Finished - Start Waypoint"),
(@ENTRY,0,2,0,19,0,100,0,26276,0,0,0,53,0,@ENTRY*10+00,0,0,0,0,1,0,0,0,0,0,0,0,"Voldreka - On Quest '' Taken - Start Waypoint");

-- Voldreka Text
DELETE FROM `creature_text` WHERE `CreatureID`=@ENTRY;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(@ENTRY, 0, 0, 'Well done, $n!', 12, 0, 100, 0, 0, 0, 37898, 0, 'Voldreka');

-- Voldreka Waypoints
DELETE FROM `waypoints` WHERE `entry` IN (@ENTRY*10+00,@ENTRY*10+01);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(@ENTRY*10+00, 1, -1126.12, -5395.10, 12.2185, 'Point 1'),
(@ENTRY*10+00, 2, -1149.21, -5408.07, 13.2484, 'Point 2'),
(@ENTRY*10+01, 1, -1149.21, -5408.07, 13.2484, 'Point 1'),
(@ENTRY*10+01, 2, -1126.12, -5395.10, 12.2185, 'Point 2');

DELETE FROM `creature_queststarter` WHERE `id`=@ENTRY AND `quest`=26274;
DELETE FROM `creature_questender` WHERE `id`=@ENTRY AND `quest`=26274;
UPDATE `quest_template_addon` SET `PrevQuestID`=26276 WHERE `ID`=26277;


-- Quest: Saving The Young
-- Creature Texts
DELETE FROM `creature_text` WHERE `CreatureID` = 39157;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(39157, 0, 0, '%s yips in appreciation', 16, 0, 100, 0, 0, 0, 37760, 0,'Lost Bloodtalon Hatchling'),
(39157, 0, 1, '%s bounces up and down.', 16, 0, 20, 0, 0, 0, 37761, 0, 'Lost Bloodtalon Hatchling'),
(39157, 0, 2, '%s lets out a little screech.', 16, 0, 20, 0, 0, 0, 37762, 0, 'Lost Bloodtalon Hatchling'),
(39157, 0, 3, '%s waves its horn at you.', 16, 0, 20, 0, 0, 0, 37763, 0, 'Lost Bloodtalon Hatchling'),
(39157, 0, 4, '%s skips after you.', 16, 0, 20, 0, 0, 0, 37764, 0, 'Lost Bloodtalon Hatchling'),
(39157, 0, 5, '%s almost falls on his face in excitement.', 16, 0, 20, 0, 0, 0, 37765, 0, 'Lost Bloodtalon Hatchling'),
(39157, 0, 6, '%s taps his little claws on the ground as he runs ...', 16, 0, 20, 0, 0, 0, 37766, 0, 'Lost Bloodtalon Hatchling'),
(39157, 0, 7, '%s bobbles after you happily.', 16, 0, 20, 0, 0, 0, 37732, 0, 'Lost Bloodtalon Hatchling');

-- Lost Bloodtalon Hatchling
SET @ENTRY := 39157;
SET @SOURCETYPE := 0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=@SOURCETYPE;
UPDATE creature_template SET AIName="SmartAI" WHERE entry=@ENTRY LIMIT 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,0,0,8,0,100,0,70874,0,0,0,29,0,0,38003,24623,0,0,7,0,0,0,0.0,0.0,0.0,0.0,"Lost Bloodtalon Hatchling - On Spellhit '70874' - Start Follow Invoker"),
(@ENTRY,@SOURCETYPE,1,0,65,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Lost Bloodtalon Hatchling - On Follow Complete - Despawn Instant"),
(@ENTRY,@SOURCETYPE,2,0,8,0,20,1,70874,0,0,0,1,0,200,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Lost Bloodtalon Hatchling - On Spellhit '70874' - Say Line (No Repeat)"),
(@ENTRY,@SOURCETYPE,3,0,8,0,100,0,70874,0,0,0,33,39157,0,0,0,0,0,7,0,0,0,0.0,0.0,0.0,0.0,"Lost Bloodtalon Hatchling - On Spellhit '70783' - Give kill credit");

-- Quest: Young And Vicous
-- Swiftclaw
DELETE FROM `creature` WHERE `guid` = 309298;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(309298, 37989, 1, 0, 0, '0', 0, 0, 0, -1, 0, 0, -1526.95, -5293.34, 7.03678, 0.28102, 120, 0, 0, 1, 0, 2, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature_addon` WHERE `guid` = 309298;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(309298, 3092980, 0, 65536, 1, 0, 0, 0, 0, 49414);
-- Kijara
SET @ENTRY := 37969;
DELETE FROM `smart_scripts` WHERE `entryOrGuid` = @ENTRY AND `source_type` = 0;
UPDATE `creature_template` SET `AIName` = "SmartAI", `ScriptName` = "" WHERE `entry` = @ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 19, 0, 100, 0, 24626, 0, 0, 0, 28, 49414, 0, 0, 0, 0, 0, 10, 309298, 0, 0, 0, 0, 0, 0, "On player accepted quest Young and Vicious (24626) - Creature with guid 309298: Remove aura due to spell Generic Quest Invisibility 1 (49414)");
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 37969 AND `SourceId` = 0;

-- Swiftclaw waypoints
DELETE FROM `creature_addon` WHERE `guid` = 309298;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES (309298, 3092980, 0, 65536, 1, 0, 0, 0, 0, 49414);
DELETE FROM `waypoint_data` WHERE `id` = 3092980;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES
(3092980, 1, -1526.95, -5293.34, 7.03678, 0, 0, 1, 0, 100, 0),
(3092980, 2, -1513.42, -5261.77, 6.02278, 0, 0, 1, 0, 100, 0),
(3092980, 3, -1529.59, -5251.99, 5.53645, 0, 0, 1, 0, 100, 0),
(3092980, 4, -1546.02, -5244.1, 5.90306, 0, 0, 1, 0, 100, 0),
(3092980, 5, -1571.21, -5227.31, 2.96685, 0, 0, 1, 0, 100, 0),
(3092980, 6, -1588.76, -5226.84, 2.73052, 0, 0, 1, 0, 100, 0),
(3092980, 7, -1592.73, -5240.25, 4.78311, 0, 0, 1, 0, 100, 0),
(3092980, 8, -1587.37, -5256.42, 6.22281, 0, 0, 1, 0, 100, 0),
(3092980, 9, -1558.64, -5270.48, 7.74767, 0, 0, 1, 0, 100, 0),
(3092980, 10, -1550.73, -5285.78, 8.72766, 0, 0, 1, 0, 100, 0),
(3092980, 11, -1562.5, -5319.79, 8.16291, 0, 0, 1, 0, 100, 0),
(3092980, 12, -1584.17, -5326.92, 7.51514, 0, 0, 1, 0, 100, 0),
(3092980, 13, -1589.43, -5312.1, 7.5586, 0, 0, 1, 0, 100, 0),
(3092980, 14, -1588.48, -5282.4, 7.86883, 0, 0, 1, 0, 100, 0),
(3092980, 15, -1631.59, -5272.9, 3.32178, 0, 0, 1, 0, 100, 0),
(3092980, 16, -1633.12, -5292.29, 3.2417, 0, 0, 1, 0, 100, 0),
(3092980, 17, -1606.47, -5307.9, 6.64991, 0, 0, 1, 0, 100, 0),
(3092980, 18, -1603.61, -5325.47, 6.39991, 0, 0, 1, 0, 100, 0),
(3092980, 19, -1647.53, -5337.8, 0.968718, 0, 0, 1, 0, 100, 0),
(3092980, 20, -1646.44, -5353.68, 1.35641, 0, 0, 1, 0, 100, 0),
(3092980, 21, -1613.68, -5353.11, 4.66571, 0, 0, 1, 0, 100, 0),
(3092980, 22, -1589.58, -5354.05, 6.4014, 0, 0, 1, 0, 100, 0),
(3092980, 23, -1583.77, -5371.53, 2.1353, 0, 0, 1, 0, 100, 0),
(3092980, 24, -1612.69, -5366.18, 3.23993, 0, 0, 1, 0, 100, 0),
(3092980, 25, -1599.41, -5349.48, 6.14603, 0, 0, 1, 0, 100, 0),
(3092980, 26, -1573.7, -5351.23, 6.08329, 0, 0, 1, 0, 100, 0),
(3092980, 27, -1562.01, -5336.09, 7.90577, 0, 0, 1, 0, 100, 0),
(3092980, 28, -1549.8, -5324.86, 7.53791, 0, 0, 1, 0, 100, 0),
(3092980, 29, -1532.8, -5335.1, 6.86731, 0, 0, 1, 0, 100, 0),
(3092980, 30, -1532.95, -5342.74, 6.36731, 0, 0, 1, 0, 100, 0),
(3092980, 31, -1542.22, -5354.58, 5.66456, 0, 0, 1, 0, 100, 0),
(3092980, 32, -1531.81, -5367.34, 4.45769, 0, 0, 1, 0, 100, 0),
(3092980, 33, -1516.96, -5356.29, 6.37049, 0, 0, 1, 0, 100, 0),
(3092980, 34, -1509.05, -5333.04, 5.51505, 0, 0, 1, 0, 100, 0),
(3092980, 35, -1531.29, -5315.33, 7.24088, 0, 0, 1, 0, 100, 0),
(3092980, 36, -1552.43, -5298.37, 9.10266, 0, 0, 1, 0, 100, 0),
(3092980, 37, -1576.74, -5285.85, 8.21355, 0, 0, 1, 0, 100, 0),
(3092980, 38, -1585.99, -5272.23, 7.84856, 0, 0, 1, 0, 100, 0),
(3092980, 39, -1561.39, -5265.12, 7.27806, 0, 0, 0, 0, 100, 0);

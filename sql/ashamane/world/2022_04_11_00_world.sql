-- Remove SmartAi from the Lazy Peons as it has a core script attached to it.
 -- Lazy Peon
SET @ENTRY := 10556;
DELETE FROM `smart_scripts` WHERE `entryOrGuid` = @ENTRY AND `source_type` = 0;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = @ENTRY AND `SourceId` = 0;
-- Remove smartAi and go back to core script
UPDATE `creature_template` SET `AIName` = "", `ScriptName` = "npc_lazy_peon" WHERE `entry` = @ENTRY;
-- Remove the sleeping emote and add the aura to handle it.
UPDATE `creature_template_addon` SET `bytes1` = 0, `auras` = 17743 WHERE `entry` = @ENTRY;
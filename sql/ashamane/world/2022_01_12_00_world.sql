-- Miscalenious NPC Edits. Author: Artfwerk@celestial-wow

-- Captain Lancy Revshon <Stormwind Quartermaster>

DELETE FROM npc_vendor WHERE entry = 49877;
INSERT INTO npc_vendor (entry, slot, item, maxcount, incrtime, ExtendedCost, type, BonusListIDs, PlayerConditionID, IgnoreFiltering, VerifiedBuild) VALUES
(49877,1,67531,0,0,0,1, NULL,0,0,1), -- Stormwind Satchel
(49877,2,64901,0,0,0,1, NULL,0,0,1), -- Mantle of Stormwind
(49877,3,64902,0,0,0,1, NULL,0,0,1), -- Cape of Stormwind
(49877,4,64903,0,0,0,1, NULL,0,0,1), -- Shroud of Stormwind
(49877,5,45574,0,0,0,1, NULL,0,0,1); -- Stormwind Tabard

-- Stone Guard Nargol <Orgrimmar Quartermaster>
DELETE FROM npc_vendor WHERE entry = 50488;
INSERT INTO npc_vendor (entry, slot, item, maxcount, incrtime, ExtendedCost, type, BonusListIDs, PlayerConditionID, IgnoreFiltering, VerifiedBuild) VALUES
(50488,1,67533,0,0,0,1, NULL,0,0,1), -- Orgrimmar Satchel
(50488,2,64908,0,0,0,1, NULL,0,0,1), -- Mantle of Orgrimmar
(50488,3,64909,0,0,0,1, NULL,0,0,1), -- Cape of Orgrimmar
(50488,4,64910,0,0,0,1, NULL,0,0,1), -- Shroud of Orgrimmar
(50488,5,45581,0,0,0,1, NULL,0,0,1); -- Orgrimmar Tabard

-- Moon Priestess Lasara <Darnassus Quartermaster>

DELETE FROM npc_vendor WHERE entry = 50305;
INSERT INTO npc_vendor (entry, slot, item, maxcount, incrtime, ExtendedCost, type, BonusListIDs, PlayerConditionID, IgnoreFiltering, VerifiedBuild) VALUES
(50305,1,67526,0,0,0,1, NULL,0,0,1), -- Darnassian Satchel
(50305,2,64886,0,0,0,1, NULL,0,0,1), -- Mantle of Darnassus
(50305,3,64887,0,0,0,1, NULL,0,0,1), -- Cape of Darnassus
(50305,4,64888,0,0,0,1, NULL,0,0,1), -- Shroud of Darnassus
(50305,5,45579,0,0,0,1, NULL,0,0,1); -- Darnassus Tabard

-- Captain Donald Adams <Undercity Quartermaster>

DELETE FROM npc_vendor WHERE entry = 50304;
INSERT INTO npc_vendor (entry, slot, item, maxcount, incrtime, ExtendedCost, type, BonusListIDs, PlayerConditionID, IgnoreFiltering, VerifiedBuild) VALUES
(50304,1,67529,0,0,0,1, NULL,0,0,1), -- Undercity Satchel
(50304,2,64920,0,0,0,1, NULL,0,0,1), -- Mantle of Undercity
(50304,3,64921,0,0,0,1, NULL,0,0,1), -- Cape of Undercity
(50304,4,64922,0,0,0,1, NULL,0,0,1), -- Shroud of Undercity
(50304,5,45583,0,0,0,1, NULL,0,0,1); -- Undercity Tabard

-- Lord Candren <Gilneas Quartermaster>

DELETE FROM npc_vendor WHERE entry = 50307;
INSERT INTO npc_vendor (entry, slot, item, maxcount, incrtime, ExtendedCost, type, BonusListIDs, PlayerConditionID, IgnoreFiltering, VerifiedBuild) VALUES
(50307,1,67532,0,0,0,1, NULL,0,0,1), -- Gilnean Satchel
(50307,2,64892,0,0,0,1, NULL,0,0,1), -- Mantle of Gilneas
(50307,3,64893,0,0,0,1, NULL,0,0,1), -- Cape of Gilneas
(50307,4,64894,0,0,0,1, NULL,0,0,1), -- Shroud of Gilneas
(50307,5,64882,0,0,0,1, NULL,0,0,1); -- Gilneas Tabard

-- Frizzo Villamar <Bilgewater Cartel Quartermaster>

DELETE FROM npc_vendor WHERE entry = 50323;
INSERT INTO npc_vendor (entry, slot, item, maxcount, incrtime, ExtendedCost, type, BonusListIDs, PlayerConditionID, IgnoreFiltering, VerifiedBuild) VALUES
(50323,1,67525,0,0,0,1, NULL,0,0,1), -- Bilgewater Satchel
(50323,2,64905,0,0,0,1, NULL,0,0,1), -- Mantle of Bilgewater
(50323,3,64906,0,0,0,1, NULL,0,0,1), -- Cape of Bilgewater
(50323,4,64907,0,0,0,1, NULL,0,0,1), -- Shroud of Bilgewater
(50323,5,64884,0,0,0,1, NULL,0,0,1); -- Bilgewater Cartel Tabard

-- Kadu <Exodar Quartermaster>

DELETE FROM npc_vendor WHERE entry = 50306;
INSERT INTO npc_vendor (entry, slot, item, maxcount, incrtime, ExtendedCost, type, BonusListIDs, PlayerConditionID, IgnoreFiltering, VerifiedBuild) VALUES
(50306,1,67527,0,0,0,1, NULL,0,0,1), -- Exodar Satchel
(50306,2,64889,0,0,0,1, NULL,0,0,1), -- Mantle of Exodar
(50306,3,64890,0,0,0,1, NULL,0,0,1), -- Cape of Exodar
(50306,4,64891,0,0,0,1, NULL,0,0,1), -- Shroud of Exodar
(50306,5,45580,0,0,0,1, NULL,0,0,1); -- Exodar Tabard

-- Magistrix Nizara <Silvermoon City Quartermaster>

DELETE FROM npc_vendor WHERE entry = 50484;
INSERT INTO npc_vendor (entry, slot, item, maxcount, incrtime, ExtendedCost, type, BonusListIDs, PlayerConditionID, IgnoreFiltering, VerifiedBuild) VALUES
(50484,1,67535,0,0,0,1, NULL,0,0,1), -- Silvermoon Satchel
(50484,2,64914,0,0,0,1, NULL,0,0,1), -- Mantle of Silvermoon
(50484,3,64915,0,0,0,1, NULL,0,0,1), -- Cape of Silvermoon
(50484,4,64916,0,0,0,1, NULL,0,0,1), -- Shroud of Silvermoon
(50484,5,45585,0,0,0,1, NULL,0,0,1); -- Silvermoon City Tabard

-- Captain Stonehelm <Ironforge Quartermaster>

DELETE FROM npc_vendor WHERE entry = 50309;
INSERT INTO npc_vendor (entry, slot, item, maxcount, incrtime, ExtendedCost, type, BonusListIDs, PlayerConditionID, IgnoreFiltering, VerifiedBuild) VALUES
(50309,1,67528,0,0,0,1, NULL,0,0,1), -- Ironforge Satchel
(50309,2,64898,0,0,0,1, NULL,0,0,1), -- Mantle of Ironforge
(50309,3,64899,0,0,0,1, NULL,0,0,1), -- Cape of Ironforge
(50309,4,64900,0,0,0,1, NULL,0,0,1), -- Shroud of Ironforge
(50309,5,45577,0,0,0,1, NULL,0,0,1); -- Ironforge Tabard

-- Champion Uru'zin <Darkspear Quartermaster>

DELETE FROM npc_vendor WHERE entry = 50477;
INSERT INTO npc_vendor (entry, slot, item, maxcount, incrtime, ExtendedCost, type, BonusListIDs, PlayerConditionID, IgnoreFiltering, VerifiedBuild) VALUES
(50477,1,67536,0,0,0,1, NULL,0,0,1), -- Darkspear Satchel
(50477,2,64911,0,0,0,1, NULL,0,0,1), -- Mantle of Darkspear
(50477,3,64912,0,0,0,1, NULL,0,0,1), -- Cape of Darkspear
(50477,4,64913,0,0,0,1, NULL,0,0,1), -- Shroud of Darkspear
(50477,5,45582,0,0,0,1, NULL,0,0,1); -- Darkspear Tabard

-- Master Tinker Trini <Gnomeregan Quartermaster>

DELETE FROM npc_vendor WHERE entry = 50308;
INSERT INTO npc_vendor (entry, slot, item, maxcount, incrtime, ExtendedCost, type, BonusListIDs, PlayerConditionID, IgnoreFiltering, VerifiedBuild) VALUES
(50308,1,67530,0,0,0,1, NULL,0,0,1), -- Gnomeregan Satchel
(50308,2,64895,0,0,0,1, NULL,0,0,1), -- Mantle of Gnomeregan
(50308,3,64896,0,0,0,1, NULL,0,0,1), -- Cape of Gnomeregan
(50308,4,64897,0,0,0,1, NULL,0,0,1), -- Shroud of Gnomeregan
(50308,5,45578,0,0,0,1, NULL,0,0,1); -- Gnomeregan Tabard

-- Brave Tuho <Thunder Bluff Quartermaster>

DELETE FROM npc_vendor WHERE entry = 50483;
INSERT INTO npc_vendor (entry, slot, item, maxcount, incrtime, ExtendedCost, type, BonusListIDs, PlayerConditionID, IgnoreFiltering, VerifiedBuild) VALUES
(50483,1,67534,0,0,0,1, NULL,0,0,1), -- Thunder Bluff Satchel
(50483,2,64917,0,0,0,1, NULL,0,0,1), -- Mantle of Thunder Bluff
(50483,3,64918,0,0,0,1, NULL,0,0,1), -- Cape of Thunder Bluff
(50483,4,64919,0,0,0,1, NULL,0,0,1), -- Shroud of Thunder Bluff
(50483,5,45584,0,0,0,1, NULL,0,0,1); -- Thunder Bluff Tabard

-- Ironforge Gryphon Rider.
UPDATE creature_template SET InhabitType = 4 WHERE entry = 51383;

-- Trapped Miners
UPDATE creature_template SET MovementType = 0 WHERE entry = 41671;
UPDATE creature_template SET faction = 84 WHERE entry = 41671;

-- Mountaineer Valgrum
UPDATE creature_template SET faction = 55 WHERE entry = 41056;

-- Mountaineer Lewin
UPDATE creature_template SET faction = 55 WHERE entry = 40994;

-- Mountaineer Dunstan
UPDATE creature_template SET faction = 55 WHERE entry = 40991;

-- For quest Rolling with the homies in Kezan.
-- Izzy
 UPDATE creature_template SET AIName = "EscortAI" WHERE entry = 34959;
 -- Gobber
 UPDATE creature_template SET AIName = "EscortAI" WHERE entry = 34958;
 -- Ace
  UPDATE creature_template SET AIName = "EscortAI" WHERE entry = 34957;
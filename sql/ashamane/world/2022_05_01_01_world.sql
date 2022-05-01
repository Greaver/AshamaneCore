-- Captured Sunhawk Agent
SET @ENTRY := 17824;
DELETE FROM `smart_scripts` WHERE `entryOrGuid` = @ENTRY AND `source_type` = 0;
UPDATE `creature_template` SET `AIName` = "SmartAI", `ScriptName` = "" WHERE `entry` = @ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 1, 62, 0, 100, 0, 7533, 0, 0, 0, 33, 17974, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 7533 selected - Gossip player: Give kill credit Captured Sunhawk Agent (17974)"),
(@ENTRY, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 7533 selected - Gossip player: Close gossip"),
(@ENTRY, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 84, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 7533 selected - Self: Talk 0");

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 17824 AND `SourceId` = 0;

-- Speach
DELETE FROM `creature_text` WHERE `CreatureID` = @ENTRY;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(17824, 0, 0, 'Treacherous whelp! Sironas will destroy you and your people!', 12, 0, 100, 0, 0, 0, 14637, 0, 'Captured Sunhawk Agent');

-- Missing Quest Reward Texts

DELETE FROM `quest_offer_reward` WHERE (`ID` = 26085);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(26085, 0, 0, 0, 0, 0, 0, 0, 0, 'The men are finding hidden reserves of strength and courage to deal with the Dark Iron onslaught. The airfield will not fall on our watch!', 0);

DELETE FROM `quest_offer_reward` WHERE (`ID` = 26094);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(26094, 0, 0, 0, 0, 0, 0, 0, 0, 'The momentum is starting to shift, $p, largely due to your efforts. Now, it is time to strike at the Dark Iron leadership.', 0);

DELETE FROM `quest_offer_reward` WHERE (`ID` = 25998);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(25998, 0, 0, 0, 0, 0, 0, 0, 0, 'Thank goodness you\'re here, $p. The airfield\'s been attacked by the Dark Irons and I don\'t think we can hold out much longer.', 0);

DELETE FROM `quest_offer_reward` WHERE (`ID` = 26544);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(26544, 0, 0, 0, 0, 0, 0, 0, 0, 'Just put the missive in the little compartment and I\'ll read it. I am fluent in orcish. $B$B
It looks like these orcs are here under the direct command of Yowler. That means Yowler must have the orc invasion plan.', 0);

DELETE FROM `quest_offer_reward` WHERE (`ID` = 26509);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(26509, 0, 0, 0, 0, 0, 0, 0, 0, 'Finally the menace is laid to rest! Thank you, , you have done me a great service. The garden shall be in full bloom this season!', 0);

DELETE FROM `quest_offer_reward` WHERE (`ID` = 26508);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(26508, 0, 0, 0, 0, 0, 0, 0, 0, 'Thank you for finding my necklace mister ... you are very kind! My kitty thanks you too - isn\'t that right Effsee?', 0);

DELETE FROM `quest_offer_reward` WHERE (`ID` = 26636);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(26636, 0, 0, 0, 0, 0, 0, 0, 0, 'Nice job, rookie. I\'m gonna go ahead and put the camo in the box. We should be ready soon.', 0);

DELETE FROM `quest_offer_reward` WHERE (`ID` = 26637);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(26637, 0, 0, 0, 0, 0, 0, 0, 0, 'Perfect. Those orcs won\'t know what hit \'em - literally. I\'ll need a few minutes to get these in working order and then I\'ll put them in the Bravo Company field kit.', 0);

DELETE FROM `quest_offer_reward` WHERE (`ID` = 26640);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(26640, 0, 0, 0, 0, 0, 0, 0, 0, '<Keeshan reads the report.>$B$BDAMN IT! This just got complicated. $BWe\'ve got prisoners of war to rescue before we can blow up the valley. Not to mention the orcs have black dragons on their side.$B$BAre you ready, $p?', 0);

DELETE FROM `quest_offer_reward` WHERE (`ID` = 26638);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(26638, 0, 0, 0, 0, 0, 0, 0, 0, 'Great work, . We need to move quickly before they send for reinforcements.', 0);

DELETE FROM `quest_offer_reward` WHERE (`ID` = 26645);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(26645, 0, 0, 0, 0, 0, 0, 0, 0, 'The people of Darkshire thank you, . You have proven yourself to be a great ally of The Night Watch.', 0);

DELETE FROM `quest_offer_reward` WHERE (`ID` = 28562);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(28562, 0, 0, 0, 0, 0, 0, 0, 0, 'Murder, rookie. That\'s what you\'re looking at on the ground in front of us.', 0);

DELETE FROM `quest_offer_reward` WHERE (`ID` = 26378);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(26378, 0, 0, 0, 0, 0, 0, 0, 0, 'Murder, rookie. That\'s what you\'re looking at on the ground in front of us.', 0);

DELETE FROM `quest_offer_reward` WHERE (`ID` = 26152);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(26152, 0, 0, 0, 0, 0, 0, 0, 0, 'And justice is served!', 0);

DELETE FROM `quest_request_items` WHERE (`ID` = 26152);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `EmoteOnCompleteDelay`, `EmoteOnIncompleteDelay`, `CompletionText`, `VerifiedBuild`) VALUES
(26152, 0, 0, 0, 0, 'Turning in a bounty?', 0);

DELETE FROM `quest_offer_reward` WHERE (`ID` = 37112);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(37112, 0, 0, 0, 0, 0, 0, 0, 0, 'Rest and relaxation for the tired and cold -- that\'s our motto! Please, take a seat by the fire and rest your weary bones.$B$BWould you like to try a sampling of some of our fine food and drink?
', 0);

DELETE FROM `quest_offer_reward` WHERE (`ID` = 26708);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(26708, 0, 0, 0, 0, 0, 0, 0, 0, 'The only thing left to deal with now are the orcs holding out at Stonewatch Keep.', 0);

DELETE FROM `quest_offer_reward` WHERE (`ID` = 26692);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(26692, 0, 0, 0, 0, 0, 0, 0, 0, 'We\'re closing in on the Blackrock high command. There\'s nowhere left for those dogs to run.', 0);

DELETE FROM `quest_offer_reward` WHERE (`ID` = 26078);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(26078, 0, 0, 0, 0, 0, 0, 0, 0, 'Well done! My men are working hard on getting our flying machines and steam tanks back into the fight.', 0);

DELETE FROM `quest_offer_reward` WHERE (`ID` = 26785);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(26785, 0, 0, 0, 0, 0, 0, 0, 0, 'Tobias is staying in town still?$B$BMaster Harris warned him not to pursue his brother\'s fate. We all lead new lives now, after all. But the past is hard to let go of...', 0);

DELETE FROM `quest_offer_reward` WHERE (`ID` = 26727);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(26727, 0, 0, 0, 0, 0, 0, 0, 0, 'Thank the Light, he\'s gone...$B$BI\'ll say you\'ve made amends by helping save the lives of those here, $p.', 0);

DELETE FROM `quest_offer_reward` WHERE (`ID` = 26674);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(26674, 0, 0, 0, 0, 0, 0, 0, 0, 'Master Harris may have been right. I would have been better to leave the past behind.$B$BI\'ve got a new life now. Whether it\'s that of a monster or a man is up to me.$B$BAs for you, I cannot thank you enough for your assistance, regardless of the outcome. Please, take this with my thanks.', 0);

DELETE FROM `quest_offer_reward` WHERE (`ID` = 26690);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(26690, 0, 0, 0, 0, 0, 0, 0, 0, '$p, to be honest with you, I did not believe that you would get this far, but you are clearly a $c to be reckoned with.$B$BIn fact, if you wish to formally join Master Carevin\'s struggle,$BI will gladly write for you a letter of recommendation.', 0);

DELETE FROM `quest_offer_reward` WHERE (`ID` = 26660);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(26660, 0, 0, 0, 0, 0, 0, 0, 0, 'You need some Zombie Juice, do you? $BHmm...that\'s some strong stuff - I don\'t usually get requests for it.', 0);

DELETE FROM `quest_offer_reward` WHERE (`ID` = 26686);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(26686, 0, 0, 0, 0, 0, 0, 0, 0, 'There\'s even fouler undead left to deal with, $p.$B$BTranquil Gardens Cemetery, further south of town, is a place you don\'t want to be caught in at night.$BThe bones that rise from the ground there are cunning enough to remember how to swing an axe or cast a spell.$B$B
I shouldn\'t need to explain how dangerous that makes them.$BProceed with caution, but remember the people of Darkshire that will suffer if you falter.', 0);

DELETE FROM `quest_offer_reward` WHERE (`ID` = 28563);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(28563, 0, 0, 0, 0, 0, 0, 0, 0, 'Heard Westfall was in some deep doody.$B$B<Parker doesn\'t even turn to face you.>$B$BWell, we got our own set of problems here.$B$BSee them gnolls out there? Looks like they\'re actin\' up again. I don\'t like it. Don\'t like it one bit.', 0);

DELETE FROM `quest_request_items` WHERE (`ID` = 26506);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `EmoteOnCompleteDelay`, `EmoteOnIncompleteDelay`, `CompletionText`, `VerifiedBuild`) VALUES
(26506, 0, 0, 0, 0, 'Have you gotten my ingredients?', 0);

DELETE FROM `quest_offer_reward` WHERE (`ID` = 26506);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(26506, 0, 0, 0, 0, 0, 0, 0, 0, 'PERFECT! I\'ll put these in the pot right away. Dinner should be ready in a few hours.$B$BThank you, darling!', 0);

DELETE FROM `quest_request_items` WHERE (`ID` = 26503);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `EmoteOnCompleteDelay`, `EmoteOnIncompleteDelay`, `CompletionText`, `VerifiedBuild`) VALUES
(26503, 0, 0, 0, 0, 'Did you find the gnoll plans?', 0);

DELETE FROM `quest_offer_reward` WHERE (`ID` = 26503);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(26503, 0, 0, 0, 0, 0, 0, 0, 0, 'I knew it! Looks like Yowler is behind this uprising - which is incredible, because we keep killing gnolls named Yowler. I don\'t know how many sons the original Yowler had, but it\'s got to be close to a hundred.$B$BWell, looks like we got ourselves another Yowler to kill.$B$BMagistrate Solomon must be notified.', 0);

DELETE FROM `quest_offer_reward` WHERE (`ID` = 26504);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(26504, 0, 0, 0, 0, 0, 0, 0, 0, 'A job well done deserves a reward, wouldn\'t you say?$B$BDon\'t spend this all in one place, $c. Better to spread it around, if you catch my drift.', 0);

DELETE FROM `quest_offer_reward` WHERE (`ID` = 26505);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(26505, 0, 0, 0, 0, 0, 0, 0, 0, '<Magistrate Solomon puts on his monocle.>$B$BOh, you\'re not Conacher. What have you got there?$B$B<Magistrate Solomon takes Parker\'s report from you.>$B$BOh for pity\'s sake. Yowler? AGAIN?', 0);

DELETE FROM `quest_request_items` WHERE (`ID` = 26573);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `EmoteOnCompleteDelay`, `EmoteOnIncompleteDelay`, `CompletionText`, `VerifiedBuild`) VALUES
(26573, 0, 0, 0, 0, 'Did you locate the headband and amulet?', 0);

DELETE FROM `quest_offer_reward` WHERE (`ID` = 26573);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(26573, 0, 0, 0, 0, 0, 0, 0, 0, 'I hope with these items and with his crew all rescued he\'ll have a change of heart. We can\'t do this without Keeshan.', 0);

DELETE FROM `quest_request_items` WHERE (`ID` = 26571);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `EmoteOnCompleteDelay`, `EmoteOnIncompleteDelay`, `CompletionText`, `VerifiedBuild`) VALUES
(26571, 0, 0, 0, 0, 'Did you terminate Murdunk and Homurk?', 0);

DELETE FROM `quest_offer_reward` WHERE (`ID` = 26571);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(26571, 0, 0, 0, 0, 0, 0, 0, 0, '<The gnomecorder buzzes with energy.>$B$BCome in, $p. Do you copy? Troteman here! Great job on getting Keeshan\'s weapons back! Now there\'s one final mission you have to run. Are you up to the challenge?', 0);

DELETE FROM `quest_offer_reward` WHERE (`ID` = 26563);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(26563, 0, 0, 0, 0, 0, 0, 0, 0, '<Colonel Troteman salutes.>$B$BUnbelievable work, $p. You\'ve managed to rescue the entire Bravo Company from the clutches of the Blackrock orcs? With Keeshan\'s team rescued and Keeshan\'s belongings returned, there\'s no way Keeshan could refuse us.', 0);

DELETE FROM `quest_request_items` WHERE (`ID` = 26562);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `EmoteOnCompleteDelay`, `EmoteOnIncompleteDelay`, `CompletionText`, `VerifiedBuild`) VALUES
(26562, 0, 0, 0, 0, 'Well look at that! The team\'s all here... everyone but Keeshan.', 0);

DELETE FROM `quest_offer_reward` WHERE (`ID` = 26562);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(26562, 0, 0, 0, 0, 0, 0, 0, 0, 'About damn time you sissies showed up. My arms were gettin\' tired.', 0);

DELETE FROM `quest_offer_reward` WHERE (`ID` = 26561);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(26561, 0, 0, 0, 0, 0, 0, 0, 0, 'Wha... Where am I? What happened? Messner? Jorgensen?$B$BOH MY GOSH! We have to get to Danforth! It might already be too late!', 0);

DELETE FROM `quest_request_items` WHERE (`ID` = 26560);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `EmoteOnCompleteDelay`, `EmoteOnIncompleteDelay`, `CompletionText`, `VerifiedBuild`) VALUES
(26560, 0, 0, 0, 0, 'Messner! Damn, it\'s good to see a friendly face. Get me out of here!', 0);

DELETE FROM `quest_offer_reward` WHERE (`ID` = 26560);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(26560, 0, 0, 0, 0, 0, 0, 0, 0, 'I know where they\'re holding Krakauer and Danforth. We gotta hurry. They were prepping those two for a sacrifice!', 0);

DELETE FROM `quest_request_items` WHERE (`ID` = 26587);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `EmoteOnCompleteDelay`, `EmoteOnIncompleteDelay`, `CompletionText`, `VerifiedBuild`) VALUES
(26587, 0, 0, 0, 0, 'Did you get the cage key?', 0);

DELETE FROM `quest_offer_reward` WHERE (`ID` = 26587);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(26587, 0, 0, 0, 0, 0, 0, 0, 0, 'IT\'S PAYBACK TIME!', 0);

DELETE FROM `quest_offer_reward` WHERE (`ID` = 26586);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(26586, 0, 0, 0, 0, 0, 0, 0, 0, 'Keeshan? You mean JOHNNY\'S ALIVE? You bet your sweet behind I\'ll help, but first you gotta get me out of this damned cage.', 0);

DELETE FROM `quest_request_items` WHERE (`ID` = 26514);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `EmoteOnCompleteDelay`, `EmoteOnIncompleteDelay`, `CompletionText`, `VerifiedBuild`) VALUES
(26514, 0, 0, 0, 0, 'Did you recover those collars?', 0);

DELETE FROM `quest_offer_reward` WHERE (`ID` = 26514);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(26514, 0, 0, 0, 0, 0, 0, 0, 0, '<The gnomecorder crackles and pops.>$B$BGood work, $p. I\'ve just been handed some important information. It would appear that our most hated enemy, the Blackrock orcs, have wised up...', 0);

DELETE FROM `quest_request_items` WHERE (`ID` = 26569);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `EmoteOnCompleteDelay`, `EmoteOnIncompleteDelay`, `CompletionText`, `VerifiedBuild`) VALUES
(26569, 0, 0, 0, 0, 'Did you recover the spyglasses?', 0);

DELETE FROM `quest_offer_reward` WHERE (`ID` = 26569);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(26569, 0, 0, 0, 0, 0, 0, 0, 0, 'Fantastic work, $p! These will come in handy for our next project, the Lakeshire SUPER BRIDGE, meant to traverse the length of Lake Everstill. It should be done in 20 or so years. Give or take a decade or two.', 0);

DELETE FROM `quest_offer_reward` WHERE (`ID` = 26570);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(26570, 0, 0, 0, 0, 0, 0, 0, 0, 'You\'ve probably bought us another day, maybe two. Nice work, $p.', 0);

DELETE FROM `quest_request_items` WHERE (`ID` = 26513);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `EmoteOnCompleteDelay`, `EmoteOnIncompleteDelay`, `CompletionText`, `VerifiedBuild`) VALUES
(26513, 0, 0, 0, 0, 'Did you recover the supplies', 0);

DELETE FROM `quest_offer_reward` WHERE (`ID` = 26513);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(26513, 0, 0, 0, 0, 0, 0, 0, 0, 'Thank you, citizen. Without you, we would have starved or worse, been forced to go out and get food for ourselves.', 0);

DELETE FROM `quest_offer_reward` WHERE (`ID` = 26512);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(26512, 0, 0, 0, 0, 0, 0, 0, 0, '<The gnomecorder crackles and pops.>$B$BCan you hear me, <$p? Is this thing on? Ah, yes, I see you there now.$B$BLet\'s get to work!', 0);

DELETE FROM `quest_request_items` WHERE (`ID` = 26510);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `EmoteOnCompleteDelay`, `EmoteOnIncompleteDelay`, `CompletionText`, `VerifiedBuild`) VALUES
(26510, 0, 0, 0, 0, 'Have you recovered the gnomecorder?', 0);

DELETE FROM `quest_offer_reward` WHERE (`ID` = 26510);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(26510, 0, 0, 0, 0, 0, 0, 0, 0, 'Excellent! Let me make a few adjustments here and we should be good to go.', 0);

DELETE FROM `quest_offer_reward` WHERE (`ID` = 26511);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(26511, 0, 0, 0, 0, 0, 0, 0, 0, 'That ought to teach those murlocs a lesson. Hopefully the next time they decide to raid our town they\'ll think twice.$B$BWe both know that won\'t happen.', 0);

DELETE FROM `quest_offer_reward` WHERE (`ID` = 26519);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(26519, 0, 0, 0, 0, 0, 0, 0, 0, '<The orb hisses as you touch it.>', 0);

DELETE FROM `quest_request_items` WHERE (`ID` = 26607);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `EmoteOnCompleteDelay`, `EmoteOnIncompleteDelay`, `CompletionText`, `VerifiedBuild`) VALUES
(26607, 0, 0, 0, 0, 'You again?', 0);

DELETE FROM `quest_offer_reward` WHERE (`ID` = 26607);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(26607, 0, 0, 0, 0, 0, 0, 0, 0, '<Keeshan takes the bundle from you and opens it.>$B$BMy bow... and knife! Where did you...$B$BJade\'s amulet... My darling Jade.$B$B<Keeshan picks up his red headband.>$B$BWe got orcs to kill.', 0);

DELETE FROM `quest_offer_reward` WHERE (`ID` = 26639);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(26639, 0, 0, 0, 0, 0, 0, 0, 0, 'Brubaker is dead. It looks like the orcs are attempting to send a message with this grisly display. Upon closer examination you notice something in Brubaker\'s pouch.', 0);



-- Fix for Undead quest The Awakening ID: 24960 
 -- Timed list 230700
SET @ENTRY := 230700;
DELETE FROM `smart_scripts` WHERE `entryOrGuid` = @ENTRY AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 49231, 3, 120000, 0, 0, 0, 8, 0, 0, 0, 1740.36, 1704.34, 128.765, 1.55296, "After 0 seconds - Self: Summon creature Valdred Moray (49231) at (1740.36, 1704.34, 128.765, 1.55296) as summon type timed despawn with duration 120 seconds"),
(@ENTRY, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 38895, 3, 120000, 0, 0, 0, 8, 0, 0, 0, 1757.48, 1666.03, 121.208, 0.02929, "After 0 seconds - Self: Summon creature Lilian Voss (38895) at (1757.48, 1666.03, 121.208, 0.02929) as summon type timed despawn with duration 120 seconds"),
(@ENTRY, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 49230, 3, 120000, 0, 0, 0, 8, 0, 0, 0, 1753.89, 1640.63, 117.495, 0, "After 0 seconds - Self: Summon creature Marshal Redpath (49230) at (1753.89, 1640.63, 117.495, 0) as summon type timed despawn with duration 120 seconds");

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 230700 AND `SourceId` = 9;

-- Fix for Quest The Emerald Sreamcatcher being repeatable
UPDATE `quest_template_addon` SET `SpecialFlags` = 0 WHERE (`ID` = 2438);

-- Correct NPC Youn Snowy Leopards faction
UPDATE `creature_template` SET `faction` = '2240' WHERE `creature_template`.`entry` = 42286;

-- Fix for Quest ID: 313 Forced to Watch from Afar

-- 41052 remote Observation Bot
DELETE FROM `creature` WHERE `id` = 41052;

-- Editing the SmartAI script of [Creature] ENTRY 40991 (name: Mountaineer Dunstan)

-- Table creature_template
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 40991;

-- Table smart_scripts
DELETE FROM `smart_scripts` WHERE (source_type = 0 AND entryorguid = 40991);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(40991, 0, 0, 1, 62, 0, 100, 0, 11455, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Mountaineer Dunstan - On Gossip Option 0 Selected - Close Gossip'),
(40991, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 33, 40991, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Mountaineer Dunstan - On Gossip Option 0 Selected - Quest Credit \'undefined\''),
(40991, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 200, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Mountaineer Dunstan - On Gossip Option 0 Selected - Say Line 0'),
(40991, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 12, 41052, 1, 10000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Mountaineer Dunstan - On Gossip Option 0 Selected - Summon Creature \'Remote Observation Bot\'');

DELETE FROM `gossip_menu` WHERE `MenuID`=11455 AND `TextID`=15972;
INSERT INTO `gossip_menu` (`MenuID`, `TextID`) VALUES (11455, 15972);

-- Editing the SmartAI script of [Creature] ENTRY 40994 (name: Mountaineer Lewin)

-- Table creature_template
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 40994;

-- Table smart_scripts
DELETE FROM `smart_scripts` WHERE (source_type = 0 AND entryorguid = 40994);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(40994, 0, 0, 1, 62, 0, 100, 0, 11456, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Mountaineer Lewin - On Gossip Option 0 Selected - Close Gossip'),
(40994, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 33, 40994, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Mountaineer Lewin - On Gossip Option 0 Selected - Quest Credit \'\''),
(40994, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 200, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Mountaineer Lewin - On Gossip Option 0 Selected - Say Line 0'),
(40994, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 12, 41052, 1, 10000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Mountaineer Lewin - On Gossip Option 0 Selected - Summon Creature \'Remote Observation Bot\'');

DELETE FROM `gossip_menu` WHERE `MenuID`=11456 AND `TextID`=15973;
INSERT INTO `gossip_menu` (`MenuID`, `TextID`) VALUES (11456, 15973);

-- Editing the SmartAI script of [Creature] ENTRY 41056 (name: Mountaineer Valgrum)

-- Table creature_template
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 41056;

-- Table smart_scripts
DELETE FROM `smart_scripts` WHERE (source_type = 0 AND entryorguid = 41056);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(41056, 0, 0, 1, 62, 0, 100, 0, 11457, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Mountaineer Valgrum - On Gossip Option 0 Selected - Close Gossip'),
(41056, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 33, 41056, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Mountaineer Valgrum - On Gossip Option 0 Selected - Quest Credit \'\''),
(41056, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 200, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Mountaineer Valgrum - On Gossip Option 0 Selected - Say Line 0'),
(41056, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 12, 41052, 1, 10000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Mountaineer Valgrum - On Gossip Option 0 Selected - Summon Creature \'Remote Observation Bot\'');

DELETE FROM `gossip_menu` WHERE `MenuID`=11457 AND `TextID`=15974;
INSERT INTO `gossip_menu` (`MenuID`, `TextID`) VALUES (11457, 15974);

DELETE FROM `gossip_menu_option` WHERE `MenuID`=11455 AND `OptionIndex`=0;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `VerifiedBuild`) VALUES (11455, 0, 0, 'Captain Tharran wants you to deploy your remote observation bots and withdraw to Kharanos.', 40986, 1, 1, 0);
DELETE FROM `gossip_menu_option` WHERE `MenuID`=11456 AND `OptionIndex`=0;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `VerifiedBuild`) VALUES (11456, 0, 0, 'Captain Tharran wants you to deploy your remote observation bots and withdraw to Kharanos.', 40986, 1, 1, 0);
DELETE FROM `gossip_menu_option` WHERE `MenuID`=11457 AND `OptionIndex`=0;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `VerifiedBuild`) VALUES (11457, 0, 0, 'Captain Tharran wants you to deploy your remote observation bots and withdraw to Kharanos.', 40986, 1, 1, 0);

 -- Fix for the Quest: Catch and Release ID: 9629 / Credit for taggin Blacksilt Scout
SET @ENTRY := 17326;
DELETE FROM `smart_scripts` WHERE `entryOrGuid` = @ENTRY AND `source_type` = 0;
UPDATE `creature_template` SET `AIName` = "SmartAI", `ScriptName` = "" WHERE `entry` = @ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 25, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When health between 0%-15%% (check once) - Self: Flee for assist"),
(@ENTRY, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When health between 0%-15%% (check once) - Self: Talk 0 to invoker"),
(@ENTRY, 0, 2, 0, 8, 0, 100, 0, 30877, 0, 1000, 1500, 33, 17654, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On spell Tag Murloc (30877) hit (wait 1000 - 1500 ms before next trigger) - Caster: Give kill credit Tagged Blacksilt Scout (17654)");

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 17326 AND `SourceId` = 0;

 -- Princess Stillpine
SET @ENTRY := 17682;
DELETE FROM `smart_scripts` WHERE `entryOrGuid` = @ENTRY AND `source_type` = 0;
UPDATE `creature_template` SET `AIName` = "SmartAI", `ScriptName` = "" WHERE `entry` = @ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 1, 38, 0, 100, 512, 1, 1, 0, 0, 80, 1768200, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On data[1] set to 1 - Self: Start timed action list id #1768200 (update always)"),
(@ENTRY, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 33, 17682, 0, 0, 0, 0, 0, 12, 1, 0, 0, 0, 0, 0, 0, "On data[1] set to 1 - storedTarget[1]: Give kill credit Princess Stillpine (17682)"),
(@ENTRY, 0, 2, 0, 25, 0, 100, 512, 0, 0, 0, 0, 82, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On reset - Self: Add npc flags QUESTGIVER"),
(@ENTRY, 0, 3, 0, 40, 0, 100, 512, 16, 17682, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On wapoint 16 of path 17682 reached - Self: Despawn instantly");

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 17682 AND `SourceId` = 0;

DELETE FROM `smart_scripts` WHERE (`source_type` = 9 AND `entryorguid` = 1768200);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(1768200, 9, 0, 0, 0, 0, 100, 0, 100, 100, 100, 100, '', 83, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Princess Stillpine - Script - Remove questgiver flag'),
(1768200, 9, 1, 0, 0, 0, 100, 0, 2000, 2000, 2000, 2000, '', 1, 0, 0, 0, 0, 0, 0, 12, 1, 0, 0, 0, 0, 0, 0, 'Princess Stillpine - Script - Say 0'),
(1768200, 9, 2, 0, 0, 0, 100, 0, 3000, 3000, 3000, 3000, '', 53, 1, 17682, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Princess Stillpine - Script - Load path');

-- Princess Stillpine's Cage
SET @ENTRY := 181928;
DELETE FROM `smart_scripts` WHERE `entryOrGuid` = @ENTRY AND `source_type` = 1;
UPDATE `gameobject_template` SET `AIName` = "SmartGameObjectAI" WHERE `entry` = @ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 1, 0, 1, 70, 0, 100, 0, 2, 0, 0, 0, 33, 17682, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On loot state changed to GO_ACTIVATED - Invoker: Give kill credit Princess Stillpine (17682)"),
(@ENTRY, 1, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 10, 55174, 17682, 0, 0, 0, 0, 0, "On loot state changed to GO_ACTIVATED - Creature Princess Stillpine (17682) with guid 55174: Set creature data #0 to 1");

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 181928 AND `SourceId` = 1;

UPDATE `creature_text` SET `Text` = 'Thank you for saving me, $p! My father will be delighted!' WHERE `creature_text`.`CreatureID` = 17682 AND `creature_text`.`GroupID` = 0 AND `creature_text`.`ID` = 0;

 -- Forsaken Assassin
SET @ENTRY := 36207;
DELETE FROM `smart_scripts` WHERE `entryOrGuid` = @ENTRY AND `source_type` = 0;
UPDATE `creature_template` SET `AIName` = "SmartAI", `ScriptName` = "" WHERE `entry` = @ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 67, 0, 100, 0, 9000, 12000, 0, 0, 11, 75360, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "When victim is behind me (check every 9-12 seconds) - Self: Cast spell Backstab (75360) on Victim"),
(@ENTRY, 0, 1, 0, 63, 0, 100, 0, 0, 0, 0, 0, 84, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On just created - Self: Talk 0");

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 36207 AND `SourceId` = 0;

-- Quest ID: 923 / Mossy Tumours fix.
UPDATE `quest_objectives` SET `Flags` = 32 WHERE `quest_objectives`.`ID` = 254706;

-- Quest RazorMaw
DELETE FROM `event_scripts` WHERE `id` = 11087;
UPDATE `creature_template` SET `InhabitType` = 5 WHERE (`entry` = 17592);

-- Ever-burning Pyre
SET @ENTRY := 181988;
DELETE FROM `smart_scripts` WHERE `entryOrGuid` = @ENTRY AND `source_type` = 1;
UPDATE `gameobject_template` SET `AIName` = "SmartGameObjectAI" WHERE `entry` = @ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 1, 0, 0, 8, 0, 100, 0, 31268, 0, 0, 0, 12, 0, 2, 300000, 0, 0, 0, 8, 0, 0, 0, -1221.32, -12601.447, 184.1, 1.489, "On spell Incinerating Dragon Bones (31268) hit - Self: Summon creature 0 at (-1221.32, -12601.447, 184.1, 1.489) as summon type timed or corpse despawn with duration 300 seconds");

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 181988 AND `SourceId` = 1;

-- Quest Reinforcements for Loch Modan ID: 26131
-- Gryth Thurden gossip fix.
SET @ENTRY := 1573;
DELETE FROM `smart_scripts` WHERE `entryOrGuid` = @ENTRY AND `source_type` = 0;
UPDATE `creature_template` SET `AIName` = "SmartAI", `ScriptName` = "" WHERE `entry` = @ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 1, 4, 0, 100, 0, 0, 0, 0, 0, 11, 14313, 2, 30000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On aggro - Self: Cast spell Summon Enraged Gryphon (14313) on Self (flags: triggered)"),
(@ENTRY, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 11, 14313, 2, 30000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On aggro - Self: Cast spell Summon Enraged Gryphon (14313) on Self (flags: triggered)"),
(@ENTRY, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On aggro - Self: Talk 0 to invoker"),
(@ENTRY, 0, 3, 0, 62, 0, 100, 0, 4360, 1, 0, 0, 52, 2206, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On gossip action 1 from menu 4360 selected - Gossip player: Take taxi 2206");

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 1573 AND `SourceId` = 0;

-- remove some excessive spawns ( Bayne, ID 10356 )
DELETE FROM `creature` WHERE `creature`.`guid` in (131458, 131459, 131457, 52641, 306498);

-- Fix for new druid action bar. ( Replace Wrath ID: 5176 with the correct spell Solar Wrath ID: 190984)
UPDATE `playercreateinfo_action` SET `action` = 190984 WHERE `action` = 5176;

-- Remove a double spawns
DELETE FROM `creature` WHERE `creature`.`guid` in (801657, 801662, 801445, 801671);

-- Fix Shaman starting spell on action bar ( change from old LB to the new one)
UPDATE playercreateinfo_action SET action = 188196 WHERE action = 403;

-- NPC Jemma Quickswitch
UPDATE `creature_template` SET `npcflag` = 1 WHERE `entry` = 11028;

-- NPC Trixie Quickswitch
UPDATE `creature_template` SET `npcflag` = 1 WHERE `entry` = 11029;

-- Delete Thunderflash
DELETE FROM `creature` WHERE `creature`.`guid` = 372276;

-- Delete Scuttling Mechano-Tank 
DELETE FROM `creature` WHERE `creature`.`guid` = 372277;

-- Wayward Fire Elemental smart ai
SET @ENTRY := 37112;
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryOrGuid` = @ENTRY;
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` = @ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 0, 0, 100, 0, 0, 0, 3400, 4700, 11, 9053, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Every 3.4 - 4.7 seconds (0 - 0s initially) (IC) - Self: Cast spell Fireball (9053) with flags combat move on Victim'),
(@ENTRY, 0, 1, 0, 4, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On aggro - Self: Talk 0 to invoker');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 37112 AND `SourceId` = 0;


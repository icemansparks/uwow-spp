
/* (Raza)(Elfos del Vacío ) 

(******(Logro)[Razas aliadas: [Protector del Dominio argusiano]******(achievementID:12076)******)
(******(Logro)[¡Ya están preparados!]******(achievementID:12066)******)

-[En busca de aliados]*****(QuestID:49929)

-[Las Tierras Fantasma]*****(QuestID:49787)

-[Falla de Telogrus]*****(QuestID:48962)(Gesta)

*/



/* (Raza)(Draenei Templeluz)

(******(Logro)[Razas aliadas: [Oficial de la Luz]12081******(achievementID:12081) 
(******(Logro)[¡Ya están preparados!]******(achievementID:12066)******)

-[Un segundo aliado para la causa]*****(QuestID:50248)

-[Los Templeluz]*****(QuestID:49698)

-[Forja de los Eones]*****(QuestID:49266)(Gesta)

-[¡Por la Luz!]*****(QuestID:50071)

*/

/* **************************Razas Aliadas de la Alianza Elfos Del Vacio***************************** */ 
-- Inicio(QuestID:49787)

/* Quest Objetives_locale */

/* esES(Español)*/

DELETE FROM `quest_objectives_locale` WHERE (`ID`='295331') AND (`locale`='esES');
DELETE FROM `quest_objectives_locale` WHERE (`ID`='295332') AND (`locale`='esES');
DELETE FROM `quest_objectives_locale` WHERE (`ID`='295333') AND (`locale`='esES');
DELETE FROM `quest_objectives_locale` WHERE (`ID`='295347') AND (`locale`='esES');
INSERT INTO `quest_objectives_locale` (`ID`, `locale`, `QuestId`, `StorageIndex`, `Description`, `VerifiedBuild`) VALUES 
('295331', 'esES', '49787', '0', 'Viaja a las Tierras Fantasma con Alleria', '26124'),
('295332', 'esES', '49787', '1', 'Busca en el  Sagrario de la Luna ', '26124'),
('295333', 'esEs', '49787', '2', 'Busca en el Dominios Andilien', '26124'),
('295347', 'esES', '49787', '3', 'Torre degli Albastella Explorada', '26124');

/* enUS(English)*/
DELETE FROM `quest_objectives_locale` WHERE (`ID`='295331') AND (`locale`='enUS');
DELETE FROM `quest_objectives_locale` WHERE (`ID`='295332') AND (`locale`='enUS');
DELETE FROM `quest_objectives_locale` WHERE (`ID`='295333') AND (`locale`='enUS');
DELETE FROM `quest_objectives_locale` WHERE (`ID`='295347') AND (`locale`='enUS');
INSERT INTO `quest_objectives_locale` (`ID`, `locale`, `QuestId`, `StorageIndex`, `Description`, `VerifiedBuild`) VALUES 
('295331', 'enUS', '49787', '0', 'Travel to the Ghostlands with Alleria', '26124'),
('295332', 'enUS', '49787', '1', 'It looks for in the Sacrarium of the Moon ', '26124'),
('295333', 'enUS', '49787', '2', 'It looks for in the Domains Andilien', '26124'),
('295347', 'enUS', '49787', '3', 'Tower degli Explored Albastella', '26124');

/* Creature_Template */
DELETE FROM `creature_template` WHERE (`entry`='95412');
INSERT INTO `creature_template` (`entry`, `gossip_menu_id`, `minlevel`, `maxlevel`, `SandboxScalingID`, `ScaleLevelMin`, `ScaleLevelMax`, `ScaleLevelDelta`, `ScaleLevelDuration`, `exp`, `faction`, `npcflag`, `npcflag2`, `speed_walk`, `speed_run`, `speed_fly`, `scale`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Mana_mod_extra`, `Armor_mod`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ControllerID`, `WorldEffects`, `PassiveSpells`, `StateWorldEffectID`, `SpellStateVisualID`, `SpellStateAnimID`, `SpellStateAnimKitID`, `IgnoreLos`, `AffixState`, `MaxVisible`, `ScriptName`) VALUES 
('95412', '0', '1', '1', '0', '0', '0', '0', '0', '0', '35', '0', '0', '1', '1.14286', '1.14286', '1', '0', '0', '0', '0', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'SmartAI', '0', '3', '1', '1', '1', '1', '0', '128', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '');
UPDATE `quest_objectives` SET `ID`='295331', `QuestID`='49787', `Type`='0', `StorageIndex`='0', `ObjectID`='95412', `Amount`='1', `Flags`='0', `Flags2`='0', `TaskStep`='0', `Description`=NULL, `VerifiedBuild`='26124' WHERE (`ID`='295331');



/* Gossip_menu */
UPDATE `creature_template` SET `gossip_menu_id`='954120' WHERE 
(`entry`='130919');
UPDATE `creature_template` SET `npcflag`='3' WHERE 
(`entry`='130919');
DELETE FROM `gossip_menu` WHERE (`Entry`='954120') AND (`TextID`='0');
INSERT INTO `gossip_menu` (`Entry`, `TextID`, `FriendshipFactionID`) VALUES 
('954120', '0', '0');

DELETE FROM `gossip_menu_option` WHERE (`MenuID`='954120') AND (`OptionIndex`='0');
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionIndex`, `OptionNPC`, `OptionText`, `OptionType`, `OptionNpcflag`, `OptionNpcflag2`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxCurrency`, `BoxText`, `OptionBroadcastTextID`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES 
('954120', '0', '0', 'En Marcha', '1', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0');

/*SmartAI*/
DELETE FROM `smart_scripts` WHERE (`entryorguid`='130919');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
('130919', '0', '0', '1', '54', '0', '100', '1', '0', '0', '0', '0', '206', '6468', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'JS - SC'),
('130919', '0', '1', '0', '61', '0', '100', '1', '0', '0', '0', '0', '29', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'L - SF'),
('130919', '0', '2', '0', '19', '0', '100', '1', '48962', '0', '0', '0', '206', '6472', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'QA - SC'),
('130919', '0', '3', '0', '62', '0', '100', '0', '954120', '0', '0', '0', '33', '95412', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'kill credi');

/* Disables */
DELETE FROM `disables` WHERE (`sourceType`='1') AND (`entry`='49787');


/* Spaw */
DELETE FROM `creature` WHERE (`guid`='6740121');
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `PhaseId`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `AiID`, `MovementID`, `MeleeID`, `isActive`, `skipClone`, `personal_size`, `isTeemingSpawn`, `unit_flags3`) VALUES 
('6740121', '130919', '530', '3433', '3495', '1', '1', '', '0', '1', '7821.55', '-7911.67', '309.074', '6.27769', '300', '0', '0', '15589006', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

/*Condiciones  */ 
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='19') AND (`SourceGroup`='0') AND (`SourceEntry`='49787') AND (`SourceId`='0') AND (`ElseGroup`='0') AND (`ConditionTypeOrReference`='8') AND (`ConditionTarget`='0') AND (`ConditionValue1`='50239') AND (`ConditionValue2`='0') AND (`ConditionValue3`='0');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='23') AND (`SourceGroup`='1519') AND (`SourceEntry`='104') AND (`SourceId`='0') AND (`ElseGroup`='0') AND (`ConditionTypeOrReference`='9') AND (`ConditionTarget`='0') AND (`ConditionValue1`='49787') AND (`ConditionValue2`='0') AND (`ConditionValue3`='0');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='23') AND (`SourceGroup`='3433') AND (`SourceEntry`='2') AND (`SourceId`='0') AND (`ElseGroup`='0') AND (`ConditionTypeOrReference`='9') AND (`ConditionTarget`='0') AND (`ConditionValue1`='49787') AND (`ConditionValue2`='0') AND (`ConditionValue3`='0');
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES ('19', '0', '49787', '0', '0', '8', '0', '50239', '0', '0', '0', '0', '', 'Show Quest If Player RQ');
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES ('23', '1519', '104', '0', '0', '9', '0', '49787', '0', '0', '0', '0', '', 'Activate Phase - If Player H Quest');
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES ('23', '3433', '2', '0', '0', '9', '0', '49787', '0', '0', '0', '0', '', 'Activate Phase - If Player H Quest');

/* Gesta Questid:48962 */
DELETE FROM `creature` WHERE (`guid`='14207900');
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `PhaseId`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `AiID`, `MovementID`, `MeleeID`, `isActive`, `skipClone`, `personal_size`, `isTeemingSpawn`, `unit_flags3`) VALUES 
('14207900', '126646', '1622', '9188', '9188', '4096', '1', '0', '0', '0', '1372.83', '2889.76', '57.0452', '1.71334', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

/* Smart NPCID:126646 */
DELETE FROM `smart_scripts` WHERE (`entryorguid`='126646');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
('126646', '0', '0', '5', '60', '0', '100', '1', '0', '0', '0', '0', '208', '16086', '1372', '2900', '58', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'EU - SA'),
('126646', '0', '1', '2', '62', '0', '100', '1', '21491', '0', '0', '0', '80', '126646', '2', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'GS - RTS'),
('126646', '0', '2', '3', '61', '0', '100', '1', '0', '0', '0', '0', '205', '92', '60172', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'L - CSC'),
('126646', '0', '3', '0', '61', '0', '100', '1', '0', '0', '0', '0', '81', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'L - SNPCF'),
('126646', '0', '5', '6', '61', '0', '100', '1', '0', '0', '0', '0', '208', '16086', '1582', '3063', '28', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'L - SA'),
('126646', '0', '6', '7', '61', '0', '100', '1', '0', '0', '0', '0', '208', '16086', '1628', '3078', '28', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'L - SA'),
('126646', '0', '7', '8', '61', '0', '100', '1', '0', '0', '0', '0', '208', '16086', '1568', '3015', '23', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'L - SA'),
('126646', '0', '8', '9', '61', '0', '100', '1', '0', '0', '0', '0', '208', '16086', '1879', '3292', '98', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'L - SA'),
('126646', '0', '9', '10', '61', '0', '100', '1', '0', '0', '0', '0', '208', '16086', '1877', '3327', '99', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'L - SA'),
('126646', '0', '10', '11', '61', '0', '100', '1', '0', '0', '0', '0', '208', '16086', '2047', '3327', '61', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'L - SA'),
('126646', '0', '11', '12', '61', '0', '100', '1', '0', '0', '0', '0', '208', '16086', '2063', '3369', '64', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'L - SA'),
('126646', '0', '12', '13', '61', '0', '100', '1', '0', '0', '0', '0', '208', '16086', '2115', '3348', '60', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'L - SA'),
('126646', '0', '13', '14', '61', '0', '100', '1', '0', '0', '0', '0', '208', '16086', '2134', '3301', '58', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'L - SA'),
('126646', '0', '14', '15', '61', '0', '100', '1', '0', '0', '0', '0', '208', '16086', '2056', '3300', '61', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'L - SA'),
('126646', '0', '15', '0', '61', '0', '100', '1', '0', '0', '0', '0', '208', '16086', '2088', '3332', '60', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'L - SA'),
('126646', '9', '0', '0', '0', '0', '100', '1', '0', '0', '0', '0', '206', '6654', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'TS - SC'),
('126646', '9', '1', '0', '0', '0', '100', '1', '0', '0', '0', '0', '66', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '0', '0', '0', '5.5', 'TS - SO'),
('126646', '9', '2', '0', '0', '0', '100', '1', '8000', '8000', '0', '0', '53', '0', '126646', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'TS - SWP'),
('126646', '9', '3', '0', '0', '0', '100', '1', '2000', '2000', '0', '0', '45', '1', '1', '0', '0', '0', '0', '19', '126602', '0', '0', '0', '0', '0', '0', 'TS - SD'),
('126646', '9', '4', '0', '0', '0', '100', '1', '50000', '50000', '0', '0', '205', '92', '59980', '0', '0', '0', '0', '21', '50', '0', '0', '0', '0', '0', '0', 'TS - CSC'),
('126646', '9', '5', '0', '0', '0', '100', '1', '2000', '2000', '0', '0', '45', '1', '1', '0', '0', '0', '0', '19', '126354', '0', '0', '0', '0', '0', '0', 'TS - SD'),
('126646', '9', '6', '0', '0', '0', '100', '1', '1500', '1500', '0', '0', '11', '250844', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'TS - CS'),
('126646', '9', '7', '0', '0', '0', '100', '1', '0', '0', '0', '0', '45', '1', '1', '0', '0', '0', '0', '11', '126630', '30', '0', '0', '0', '0', '0', 'TS - SD'),
('126646', '9', '8', '0', '0', '0', '100', '1', '0', '0', '0', '0', '45', '1', '1', '0', '0', '0', '0', '11', '126639', '30', '0', '0', '0', '0', '0', 'TS - SD'),
('126646', '9', '9', '0', '0', '0', '100', '1', '0', '0', '0', '0', '12', '126489', '8', '0', '0', '0', '0', '8', '0', '0', '0', '1353.64', '2837.96', '63.198', '2.51702', 'TS - SC'),
('126646', '9', '10', '0', '0', '0', '100', '1', '0', '0', '0', '0', '12', '126492', '8', '0', '0', '0', '0', '8', '0', '0', '0', '1383.29', '2850.84', '59.001', '5.22115', 'TS - SC'),
('126646', '9', '11', '0', '0', '0', '100', '1', '5000', '5000', '0', '0', '45', '2', '2', '0', '0', '0', '0', '19', '126602', '0', '0', '0', '0', '0', '0', 'TS - SD');

DELETE FROM `smart_scripts` WHERE (`entryorguid`='126602');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
('126602', '0', '0', '0', '38', '0', '100', '1', '1', '1', '0', '0', '53', '0', '126602', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'UD - SWP'),
('126602', '0', '1', '0', '38', '0', '100', '1', '2', '2', '0', '0', '53', '1', '12660200', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'UD - SWP'),
('126602', '0', '2', '0', '40', '0', '100', '1', '3', '12660200', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'WPR - ST'),
('126602', '0', '3', '0', '40', '0', '100', '1', '5', '12660200', '0', '0', '12', '127018', '8', '0', '0', '0', '0', '8', '0', '0', '0', '1389.56', '2860.66', '57.5002', '0', 'WPR - SC'),
('126602', '0', '4', '0', '38', '0', '100', '1', '3', '3', '0', '0', '53', '1', '12660201', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'UD - SWP'),
('126602', '0', '5', '0', '60', '0', '100', '1', '0', '0', '0', '0', '206', '6338', '0', '0', '0', '0', '0', '21', '100', '0', '0', '0', '0', '0', '0', 'EU - SC'),
('126602', '0', '6', '0', '60', '0', '100', '1', '0', '0', '0', '0', '206', '6648', '0', '0', '0', '0', '0', '21', '100', '0', '0', '0', '0', '0', '0', 'EU - SC'),
('126602', '0', '7', '0', '38', '0', '100', '1', '4', '4', '0', '0', '53', '1', '12660202', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'UD - SWP');

DELETE FROM `smart_scripts` WHERE (`entryorguid`='126646');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
('126646', '9', '3', '0', '0', '0', '100', '1', '2000', '2000', '0', '0', '45', '1', '1', '0', '0', '0', '0', '19', '126602', '0', '0', '0', '0', '0', '0', 'TS - SD'),
('126646', '9', '4', '0', '0', '0', '100', '1', '50000', '50000', '0', '0', '205', '92', '59980', '0', '0', '0', '0', '21', '50', '0', '0', '0', '0', '0', '0', 'TS - CSC'),
('126646', '9', '0', '0', '0', '0', '100', '1', '0', '0', '0', '0', '206', '6654', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'TS - SC'),
('126646', '9', '1', '0', '0', '0', '100', '1', '0', '0', '0', '0', '66', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '0', '0', '0', '5.5', 'TS - SO'),
('126646', '9', '2', '0', '0', '0', '100', '1', '8000', '8000', '0', '0', '53', '0', '126646', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'TS - SWP'),
('126646', '0', '15', '0', '61', '0', '100', '1', '0', '0', '0', '0', '208', '16086', '2088', '3332', '60', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'L - SA'),
('126646', '0', '14', '15', '61', '0', '100', '1', '0', '0', '0', '0', '208', '16086', '2056', '3300', '61', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'L - SA'),
('126646', '0', '13', '14', '61', '0', '100', '1', '0', '0', '0', '0', '208', '16086', '2134', '3301', '58', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'L - SA'),
('126646', '0', '12', '13', '61', '0', '100', '1', '0', '0', '0', '0', '208', '16086', '2115', '3348', '60', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'L - SA'),
('126646', '0', '11', '12', '61', '0', '100', '1', '0', '0', '0', '0', '208', '16086', '2063', '3369', '64', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'L - SA'),
('126646', '0', '10', '11', '61', '0', '100', '1', '0', '0', '0', '0', '208', '16086', '2047', '3327', '61', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'L - SA'),
('126646', '0', '9', '10', '61', '0', '100', '1', '0', '0', '0', '0', '208', '16086', '1877', '3327', '99', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'L - SA'),
('126646', '0', '8', '9', '61', '0', '100', '1', '0', '0', '0', '0', '208', '16086', '1879', '3292', '98', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'L - SA'),
('126646', '0', '7', '8', '61', '0', '100', '1', '0', '0', '0', '0', '208', '16086', '1568', '3015', '23', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'L - SA'),
('126646', '0', '6', '7', '61', '0', '100', '1', '0', '0', '0', '0', '208', '16086', '1628', '3078', '28', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'L - SA'),
('126646', '0', '5', '6', '61', '0', '100', '1', '0', '0', '0', '0', '208', '16086', '1582', '3063', '28', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'L - SA'),
('126646', '0', '3', '0', '61', '0', '100', '1', '0', '0', '0', '0', '81', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'L - SNPCF'),
('126646', '0', '2', '3', '61', '0', '100', '1', '0', '0', '0', '0', '205', '92', '60172', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'L - CSC'),
('126646', '0', '1', '2', '62', '0', '100', '1', '21491', '0', '0', '0', '80', '126646', '2', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'GS - RTS'),
('126646', '0', '0', '5', '60', '0', '100', '1', '0', '0', '0', '0', '208', '16086', '1372', '2900', '58', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'EU - SA'),
('126646', '9', '5', '0', '0', '0', '100', '1', '2000', '2000', '0', '0', '45', '1', '1', '0', '0', '0', '0', '19', '126354', '0', '0', '0', '0', '0', '0', 'TS - SD'),
('126646', '9', '6', '0', '0', '0', '100', '1', '1500', '1500', '0', '0', '11', '250844', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'TS - CS'),
('126646', '9', '7', '0', '0', '0', '100', '1', '0', '0', '0', '0', '45', '1', '1', '0', '0', '0', '0', '11', '126630', '30', '0', '0', '0', '0', '0', 'TS - SD'),
('126646', '9', '8', '0', '0', '0', '100', '1', '0', '0', '0', '0', '45', '1', '1', '0', '0', '0', '0', '11', '126639', '30', '0', '0', '0', '0', '0', 'TS - SD'),
('126646', '9', '9', '0', '0', '0', '100', '1', '0', '0', '0', '0', '12', '126489', '8', '0', '0', '0', '0', '8', '0', '0', '0', '1353.64', '2837.96', '63.198', '2.51702', 'TS - SC'),
('126646', '9', '10', '0', '0', '0', '100', '1', '0', '0', '0', '0', '12', '126492', '8', '0', '0', '0', '0', '8', '0', '0', '0', '1383.29', '2850.84', '59.001', '5.22115', 'TS - SC'),
('126646', '9', '11', '0', '0', '0', '100', '1', '5000', '5000', '0', '0', '45', '2', '2', '0', '0', '0', '0', '19', '126602', '0', '0', '0', '0', '0', '0', 'TS - SD');


/* conversation */
DELETE FROM `conversation_creature` WHERE (`entry`='6340') AND (`id`='2');
DELETE FROM `conversation_creature` WHERE (`entry`='6654') AND (`id`='0');
DELETE FROM `conversation_creature` WHERE (`entry`='6651') AND (`id`='1');
INSERT INTO `conversation_creature` (`entry`, `id`, `creatureId`, `creatureGuid`, `unk1`, `unk2`, `duration`) VALUES ('6654', '0', '126602', '2167494', '0', '0', '63158');
INSERT INTO `conversation_creature` (`entry`, `id`, `creatureId`, `creatureGuid`, `unk1`, `unk2`, `duration`) VALUES ('6651', '1', '126602', '2167494', '0', '0', '16120');
INSERT INTO `conversation_creature` (`entry`, `id`, `creatureId`, `creatureGuid`, `unk1`, `unk2`, `duration`) VALUES ('6340', '2', '126602', '2167494', '0', '0', '95974');

DELETE FROM `creature_text` WHERE (`Entry`='126602') AND (`Text`='Сюда!');
INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `MinTimer`, `MaxTimer`, `SpellID`, `comment`) VALUES 
('126602', '0', '0', 'Сюда!', '14', '0', '100', '0', '0', '87490', '143887', '0', '0', '0', 'Аллерия Ветрокрылая to 1410');

/* waypoints */

DELETE FROM `waypoints` WHERE (`entry`='126602');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
('126602', '8', '1334.47', '2853.2', '60.0686', NULL),
('126602', '7', '1348.21', '2841.65', '62.6564', NULL),
('126602', '6', '1353.83', '2837.92', '63.1896', NULL),
('126602', '5', '1362.41', '2839.21', '62.5651', NULL),
('126602', '4', '1370.46', '2845.28', '61.4814', NULL),
('126602', '3', '1374.28', '2852.44', '59.6463', NULL),
('126602', '2', '1375.75', '2858.95', '58.9852', NULL),
('126602', '1', '1377.25', '2871.84', '57.999', NULL);

DELETE FROM `waypoints` WHERE (`entry`='126646');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
('126646', '5', '1363.01', '2843.88', '62.5205', NULL),
('126646', '4', '1369.79', '2848.13', '61.3903', NULL),
('126646', '3', '1372.67', '2852.04', '59.9615', NULL),
('126646', '2', '1373.35', '2857.23', '59.2668', NULL),
('126646', '1', '1372.94', '2877.51', '57.8119', NULL),
('126646', '6', '1350.72', '2843.59', '62.5523', NULL),
('126646', '7', '1339.72', '2852.67', '59.2663', NULL),
('126646', '8', '1330.47', '2861.31', '60.0618', NULL);


/* ****************************Razas Aliadas de la Alianza Draeneis de la luz***************************************** */

/* Luz Quest 49698 */


UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='130810');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='130810') AND (`source_type`='0') AND (`id`='0') AND (`link`='0');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
('130810', '0', '0', '0', '19', '0', '100', '0', '50071', '0', '0', '0', '62', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '-8172.59', '801.071', '74.0504', '3.94803', 'SmartTemple');


DELETE FROM `quest_objectives` WHERE (`ID`='333778');
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `Flags2`, `TaskStep`, `Description`, `VerifiedBuild`) VALUES 
('333778', '49698', '3', '0', '130758', '1', '0', '0', '0', NULL, '26124');


/* Gesta de la luz */

/* Text - Ruso XD */

DELETE FROM `creature_text` WHERE (`Entry`='127924');
INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `MinTimer`, `MaxTimer`, `SpellID`, `comment`) VALUES 
('127924', '2', '0', 'La Luz no es el camino que lleva a la verdadera fuerza.', '12', '0', '100', '0', '0', '0', '141640', '0', '0', '0', 'Т\'паартос Падший'),
('127924', '0', '0', 'Nos espera un poder semejante, Tor\'paantos.', '12', '0', '100', '0', '0', '93782', '141639', '12344', '12344', '0', 'Т\'паартос Падший'),
('127924', '1', '0', 'Deshazte de las cadenas que la Luz ha usado para atarte.', '12', '0', '100', '0', '0', '0', '141641', '0', '0', '0', 'Т\'паартос Падший');
 
DELETE FROM `creature_text` WHERE (`Entry`='127827');
INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `MinTimer`, `MaxTimer`, `SpellID`, `comment`) VALUES 
('127827', '16', '0', 'Ahhhh! $ p, ¿puedes alejar a estas serpientes?', '12', '0', '100', '0', '0', '0', '141634', '0', '0', '0', ''),
('127827', '1', '0', '¡Tu no eres real!', '12', '0', '100', '0', '0', '93747', '138563', '0', '0', '0', 'Т\'паартос to Болотная змея'),
('127827', '7', '0', 'Los niños ... no siempre fueron amables con T \'Paartos.', '12', '0', '100', '1', '0', '93789', '137471', '51109', '51109', '0', 'Т\'паартос to Player'),
('127827', '12', '0', 'Ika ... La madre de este elekk fue asesinada, y T \'paartos lo crió.', '12', '0', '100', '0', '0', '0', '141630', '0', '0', '0', ''),
('127827', '9', '0', 'Cuando tuvo miedo, Tor\'paantos encontró un lugar donde esconderse.', '12', '0', '100', '0', '0', '0', '137680', '0', '0', '0', ''),
('127827', '11', '0', '¡No! La oscuridad no tomará T \'paartosa!', '12', '0', '100', '0', '0', '0', '141629', '0', '0', '0', ''),
('127827', '17', '0', '¡No! ¡La oscuridad no se apoderará de Tor\'paantos!', '12', '0', '100', '0', '0', '0', '141635', '0', '0', '0', ''),
('127827', '0', '0', '¡Enfréntense a los puños de Tor\'paantos!', '12', '0', '100', '0', '0', '93747', '138561', '0', '0', '0', 'Т\'паартос to Безумец'),
('127827', '19', '0', 'La Luz nunca ha abandonado a Tor\'paantos. ¡Y Tor\'paantos NUNCA abandonará la Luz!', '14', '0', '100', '0', '0', '0', '141638', '0', '0', '0', ''),
('127827', '14', '0', 'Т\'паартос может свернуть горы!', '12', '0', '100', '0', '0', '0', '141632', '0', '0', '0', ''),
('127827', '3', '0', '¡Tor\'paantos puede levantar montañas!', '12', '0', '100', '0', '0', '93781', '137682', '0', '0', '0', 'Т\'паартос to Player'),
('127827', '8', '0', 'Tor\'paantos recuerda un lugar como este...', '12', '0', '100', '0', '0', '0', '137512', '0', '0', '0', ''),
('127827', '6', '0', 'Т\'паартос пройдет испытание!', '12', '0', '100', '0', '0', '93748', '138564', '0', '0', '0', 'Т\'паартос to Безумец'),
('127827', '13', '0', '¡Tor\'paantos debe lograrlo!', '12', '0', '100', '0', '0', '0', '141631', '0', '0', '0', ''),
('127827', '4', '0', 'Т\'паартос!', '12', '0', '100', '0', '0', '93742', '144839', '0', '0', '0', 'Т\'паартос to Кристальная ярость'),
('127827', '15', '0', 'Esto es un poco... vergonzoso para Tor\'paantos.', '12', '0', '100', '0', '0', '0', '141633', '0', '0', '0', ''),
('127827', '18', '0', '¡BASTA!', '14', '0', '100', '0', '0', '0', '141637', '0', '0', '0', ''),
('127827', '2', '0', 'Mmm... allí...', '12', '0', '100', '0', '0', '93802', '138557', '0', '0', '0', 'Т\'паартос to 1434'),
('127827', '10', '0', '¿Tor\'paantos estaba destinado a seguir esta senda? ¿Tor\'paantos es digno de convertirse en templeluz?', '12', '0', '100', '0', '0', '0', '141628', '0', '0', '0', ''),
('127827', '5', '0', 'Este Tor\'paantos ha jurado servir a la Luz, pero... ¿hace pactos con la oscuridad? ¡Este no puede ser el destino de Tor\'paantos!', '12', '0', '100', '25', '0', '93778', '141518', '0', '0', '0', 'Т\'паартос to Player');

/* ALL - WP  */

DELETE FROM `waypoints` WHERE (`entry`='12782701');
DELETE FROM `waypoints` WHERE (`entry`='12782702');
DELETE FROM `waypoints` WHERE (`entry`='12782703');
DELETE FROM `waypoints` WHERE (`entry`='12782704');
DELETE FROM `waypoints` WHERE (`entry`='12782705');
DELETE FROM `waypoints` WHERE (`entry`='12782706');
DELETE FROM `waypoints` WHERE (`entry`='12782707');
DELETE FROM `waypoints` WHERE (`entry`='12782708');
DELETE FROM `waypoints` WHERE (`entry`='12782709');
DELETE FROM `waypoints` WHERE (`entry`='12782710');
DELETE FROM `waypoints` WHERE (`entry`='12782711');
DELETE FROM `waypoints` WHERE (`entry`='12782712');
DELETE FROM `waypoints` WHERE (`entry`='12782713');
DELETE FROM `waypoints` WHERE (`entry`='12782714');
DELETE FROM `waypoints` WHERE (`entry`='12782715');
DELETE FROM `waypoints` WHERE (`entry`='12782716');
DELETE FROM `waypoints` WHERE (`entry`='12782717');
DELETE FROM `waypoints` WHERE (`entry`='12782718');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
('12782701', '1', '3487.12', '-760.464', '39.8999', NULL),
('12782701', '2', '3479.21', '-744.355', '39.7309', NULL),
('12782702', '1', '3472.2', '-725.796', '34.0977', NULL),
('12782702', '2', '3469.32', '-704.503', '25.6555', NULL),
('12782702', '3', '3472.05', '-694.412', '22.9357', NULL),
('12782702', '4', '3483.64', '-683.72', '20.8604', NULL),
('12782702', '5', '3495.24', '-666.614', '17.2896', NULL),
('12782702', '6', '3507.56', '-657.425', '17.0061', NULL),
('12782702', '7', '3522.18', '-650.108', '17.1393', NULL),
('12782702', '8', '3530.92', '-646.148', '18.7286', NULL),
('12782702', '9', '3520.45', '-632.732', '20.188', NULL),
('12782702', '10', '3509.34', '-619.261', '18.7279', NULL),
('12782702', '11', '3502.24', '-607.681', '18.6057', NULL),
('12782702', '12', '3494.57', '-592.185', '18.6783', NULL),
('12782702', '13', '3492.01', '-595.943', '18.5438', NULL),
('12782703', '1', '3492.39', '-588.654', '18.723', NULL),
('12782703', '2', '3479.57', '-565.096', '19.1058', NULL),
('12782703', '3', '3475.68', '-559.477', '18.7322', NULL),
('12782703', '4', '3487.42', '-549.4', '16.966', NULL),
('12782703', '5', '3503.31', '-536.937', '20.0836', NULL),
('12782703', '6', '3509.61', '-529.25', '21.5396', NULL),
('12782703', '7', '3522.65', '-523.797', '22.2602', NULL),
('12782703', '8', '3528.24', '-517.926', '22.0735', NULL),
('12782703', '9', '3525.28', '-514.465', '20.4792', NULL),
('12782704', '1', '3515.23', '-501.397', '7.28425', NULL),
('12782704', '2', '3506.84', '-480.686', '-4.73532', NULL),
('12782704', '3', '3500.87', '-465.515', '-8.36013', NULL),
('12782704', '4', '3497.31', '-448.861', '-9.79003', NULL),
('12782704', '5', '3498.17', '-445.686', '-9.96795', NULL),
('12782705', '1', '3496.09', '-455.079', '-9.12768', NULL),
('12782705', '2', '3504.42', '-480.152', '-5.08828', NULL),
('12782705', '3', '3512.92', '-500.398', '5.7969', NULL),
('12782705', '4', '3518.49', '-508.867', '12.7573', NULL),
('12782705', '5', '3524.17', '-515.548', '20.6813', NULL),
('12782705', '6', '3526.53', '-519.518', '21.9924', NULL),
('12782705', '7', '3523.09', '-523.076', '22.2158', NULL),
('12782706', '1', '3450.26', '-228.43', '19.1283', NULL),
('12782706', '2', '3434.57', '-224.529', '18.1407', NULL),
('12782706', '3', '3422.09', '-219.844', '16.7218', NULL),
('12782706', '4', '3411.64', '-204.272', '18.9728', NULL),
('12782706', '5', '3403.46', '-192.984', '22.295', NULL),
('12782706', '6', '3398.95', '-189.999', '21.4253', NULL),
('12782707', '1', '3390.44', '-180.891', '10.6681', NULL),
('12782707', '2', '3384.7', '-174.084', '5.00071', NULL),
('12782707', '3', '3380.02', '-158.678', '-3.04675', NULL),
('12782707', '4', '3380.45', '-136.539', '-8.78341', NULL),
('12782708', '1', '3381.37', '-122.816', '-9.44212', NULL),
('12782709', '1', '3377.92', '-152.598', '-5.59345', NULL),
('12782709', '2', '3377.44', '-158.652', '-3.21495', NULL),
('12782709', '3', '3385.64', '-175.005', '5.74484', NULL),
('12782709', '4', '3391.39', '-182.364', '11.994', NULL),
('12782709', '5', '3397.61', '-189.552', '20.5976', NULL),
('12782709', '6', '3403.17', '-196.368', '21.5031', NULL),
('12782709', '7', '3419.58', '-215.857', '16.8915', NULL),
('12782709', '8', '3427.49', '-226.947', '18.0153', NULL),
('12782709', '9', '3455.28', '-239.283', '19.0366', NULL),
('12782709', '10', '3459.7', '-250.106', '17.9495', NULL),
('12782709', '11', '3447.22', '-306.489', '15.8849', NULL),
('12782709', '12', '3429.18', '-336.387', '15.9867', NULL),
('12782709', '13', '3415.39', '-365.12', '18.385', NULL),
('12782709', '14', '3365.96', '-382.047', '15.9454', NULL),
('12782709', '15', '3334.13', '-397.27', '16.2447', NULL),
('12782709', '16', '3327.32', '-404.598', '17.0421', NULL),
('12782709', '17', '3328.52', '-424.959', '18.8579', NULL),
('12782709', '18', '3297.56', '-434.691', '15.6467', NULL),
('12782710', '1', '3298.29', '-449.042', '16.7', NULL),
('12782710', '2', '3294.74', '-470.534', '18.4516', NULL),
('12782710', '3', '3281.96', '-484.727', '18.1911', NULL),
('12782710', '4', '3261.58', '-505.995', '15.8789', NULL),
('12782710', '5', '3250.79', '-535.631', '19.6238', NULL),
('12782710', '6', '3243.84', '-555.323', '17.5211', NULL),
('12782710', '7', '3235.54', '-583.844', '17.0999', NULL),
('12782710', '8', '3228.23', '-596.095', '15.874', NULL),
('12782711', '1', '3227.17', '-600.786', '14.7794', NULL),
('12782711', '2', '3222.26', '-601.866', '12.5091', NULL),
('12782711', '3', '3218.46', '-603.209', '10.0581', NULL),
('12782711', '4', '3214.5', '-606.412', '7.47073', NULL),
('12782711', '5', '3210.81', '-609.924', '4.39508', NULL),
('12782711', '6', '3210.26', '-612.764', '3.41713', NULL),
('12782711', '7', '3211.72', '-619.114', '0.607363', NULL),
('12782711', '8', '3213.9', '-622.01', '-1.45158', NULL),
('12782711', '9', '3218.12', '-623.385', '-3.05036', NULL),
('12782711', '10', '3225.59', '-622.665', '-4.8913', NULL),
('12782711', '11', '3231.62', '-618.94', '-7.43761', NULL),
('12782711', '12', '3233.74', '-616.477', '-8.63588', NULL),
('12782711', '13', '3233.8', '-613.915', '-9.48358', NULL),
('12782712', '1', '3235.97', '-611.493', '-10.1126', NULL),
('12782712', '2', '3251.2', '-603.533', '-11.6049', NULL),
('12782712', '3', '3255.08', '-600.757', '-12.2557', NULL),
('12782712', '4', '3257.45', '-592.406', '-15.1906', NULL),
('12782712', '5', '3262.74', '-580.09', '-20.1432', NULL),
('12782712', '6', '3259.74', '-563.915', '-26.3839', NULL),
('12782712', '7', '3258.04', '-557.56', '-28.9898', NULL),
('12782712', '8', '3245.08', '-552.195', '-35.1502', NULL),
('12782712', '9', '3229.06', '-561.054', '-38.2442', NULL),
('12782712', '10', '3231.55', '-571.511', '-37.1899', NULL),
('12782712', '11', '3245.44', '-583.861', '-35.9063', NULL),
('12782712', '12', '3247.81', '-585.923', '-35.1356', NULL),
('12782713', '1', '3232.23', '-581.623', '-38.1907', NULL),
('12782713', '2', '3212.43', '-584.6', '-42.1387', NULL),
('12782713', '3', '3199.56', '-593.865', '-46.5083', NULL),
('12782713', '4', '3194.95', '-609.982', '-50.9428', NULL),
('12782713', '5', '3190.25', '-625.414', '-53.1401', NULL),
('12782713', '6', '3183.22', '-639', '-54.2799', NULL),
('12782714', '1', '3196.13', '-654.685', '-58.0282', NULL),
('12782714', '2', '3206.18', '-664.824', '-59.8793', NULL),
('12782714', '3', '3213.14', '-667.3', '-61.3305', NULL),
('12782714', '4', '3225.16', '-665.116', '-63.7194', NULL),
('12782714', '5', '3238.97', '-656.986', '-66.311', NULL),
('12782714', '6', '3250.37', '-647.871', '-71.1307', NULL),
('12782714', '7', '3262.02', '-638.018', '-76.3386', NULL),
('12782714', '8', '3274.14', '-627.162', '-77.3299', NULL),
('12782715', '1', '3270.57', '-614.497', '-77.5744', NULL),
('12782715', '2', '3261.52', '-601.511', '-79.074', NULL),
('12782715', '3', '3260.54', '-593.082', '-80.7885', NULL),
('12782715', '4', '3260.94', '-580.589', '-81.0743', NULL),
('12782715', '5', '3257.78', '-573.667', '-80.6166', NULL),
('12782715', '6', '3252.76', '-569.264', '-81.0067', NULL),
('12782716', '1', '3240.73', '-562.321', '-82.0227', NULL),
('12782716', '2', '3228.05', '-559.584', '-82.7895', NULL),
('12782716', '3', '3218.94', '-560.653', '-83.1162', NULL),
('12782716', '4', '3210.73', '-567.245', '-84.0751', NULL),
('12782716', '5', '3209.33', '-579.577', '-86.8446', NULL),
('12782716', '6', '3216.31', '-593.78', '-95.2317', NULL),
('12782716', '7', '3222.99', '-609.88', '-99.2346', NULL),
('12782717', '1', '3214.01', '-614.797', '-99.2981', NULL),
('12782717', '2', '3196.07', '-611.88', '-100.683', NULL),
('12782717', '3', '3177.98', '-609.914', '-102.719', NULL),
('12782717', '4', '3170.76', '-612.663', '-103.269', NULL),
('12782717', '5', '3160.68', '-617.934', '-104.174', NULL),
('12782717', '6', '3144', '-641.403', '-107.924', NULL),
('12782718', '1', '3137.99', '-639.59', '-107.808', NULL);



/* SmartAI */

DELETE FROM `smart_scripts` WHERE (`entryorguid`='127827');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
('127827', '0', '0', '0', '38', '0', '100', '1', '1', '1', '0', '0', '53', '0', '127827', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'WP'),
('127827', '0', '1', '2', '38', '0', '100', '1', '2', '2', '0', '0', '53', '1', '12782700', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'WP2'),
('127827', '0', '2', '0', '61', '0', '100', '1', '0', '0', '0', '0', '1', '8', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'START'),
('127827', '0', '3', '4', '38', '0', '100', '1', '3', '3', '0', '0', '1', '7', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'START2'),
('127827', '0', '4', '0', '61', '0', '100', '1', '0', '0', '0', '0', '53', '0', '12782701', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'pause-SWP'),
('127827', '0', '5', '6', '38', '0', '100', '1', '4', '4', '0', '0', '53', '1', '12782702', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'text-SWP'),
('127827', '0', '6', '0', '61', '0', '100', '1', '0', '0', '0', '0', '206', '6092', '0', '0', '0', '0', '0', '21', '100', '0', '0', '0', '0', '0', '0', 'action1'),
('127827', '0', '7', '0', '40', '0', '100', '1', '6', '12782702', '0', '0', '206', '6385', '0', '0', '0', '0', '0', '21', '100', '0', '0', '0', '0', '0', '0', 'Nom'),
('127827', '0', '8', '0', '38', '0', '100', '1', '5', '5', '0', '0', '53', '1', '12782703', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Pause2'),
('127827', '0', '9', '0', '40', '0', '100', '1', '9', '12782703', '0', '0', '1', '9', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Re - start '),
('127827', '0', '10', '0', '38', '0', '100', '1', '6', '6', '0', '0', '53', '1', '12782704', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Complet'),
('127827', '0', '11', '0', '38', '0', '100', '1', '7', '7', '0', '0', '53', '1', '12782705', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'combate'),
('127827', '0', '12', '0', '40', '0', '100', '1', '3', '12782705', '0', '0', '206', '6391', '0', '0', '0', '0', '0', '21', '50', '0', '0', '0', '0', '0', '0', 'combate1'),
('127827', '0', '13', '14', '38', '0', '100', '1', '8', '8', '0', '0', '29', '0', '0', '0', '0', '0', '0', '21', '50', '0', '0', '0', '0', '0', '0', 'combate2'),
('127827', '0', '14', '0', '61', '0', '100', '1', '0', '0', '0', '0', '1', '10', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'combate3'),
('127827', '0', '15', '0', '60', '0', '100', '1', '0', '0', '0', '0', '53', '1', '12782706', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Re - start3'),
('127827', '0', '16', '0', '40', '0', '100', '1', '2', '12782706', '0', '0', '206', '6392', '0', '0', '0', '0', '0', '21', '100', '0', '0', '0', '0', '0', '0', 'none'),
('127827', '0', '17', '0', '38', '0', '100', '1', '9', '9', '0', '0', '53', '1', '12782707', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'noneP'),
('127827', '0', '18', '0', '40', '0', '100', '1', '3', '12782707', '0', '0', '12', '128427', '8', '0', '0', '0', '0', '8', '100', '0', '0', '3378.88', '-123.677', '-9.47466', '1.03354', 'none'),
('127827', '0', '19', '0', '38', '0', '100', '1', '10', '10', '0', '0', '80', '127827', '2', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'null'),
('127827', '0', '20', '0', '40', '0', '100', '1', '3', '12782709', '0', '0', '206', '6386', '0', '0', '0', '0', '0', '21', '100', '0', '0', '0', '0', '0', '0', 'null'),
('127827', '0', '21', '22', '40', '0', '100', '1', '16', '12782709', '0', '0', '206', '6395', '0', '0', '0', '0', '0', '21', '300', '0', '0', '0', '0', '0', '0', 'null'),
('127827', '0', '22', '0', '61', '0', '100', '1', '0', '0', '0', '0', '205', '92', '60907', '0', '0', '0', '0', '21', '300', '0', '0', '0', '0', '0', '0', 'null'),
('127827', '0', '23', '0', '40', '0', '100', '1', '18', '12782709', '0', '0', '1', '5', '0', '0', '0', '0', '0', '21', '100', '0', '0', '0', '0', '0', '0', 'null'),
('127827', '0', '24', '0', '38', '0', '100', '1', '11', '11', '0', '0', '1', '11', '6000', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'start4'),
('127827', '0', '25', '0', '52', '0', '100', '1', '11', '127827', '0', '0', '53', '1', '12782710', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'null'),
('127827', '0', '26', '0', '40', '0', '100', '1', '4', '12782710', '0', '0', '206', '6396', '0', '0', '0', '0', '0', '21', '100', '0', '0', '0', '0', '0', '0', 'WP-miedo'),
('127827', '0', '27', '0', '38', '0', '100', '1', '12', '12', '0', '0', '53', '1', '12782711', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'WP-valiente'),
('127827', '0', '28', '0', '38', '0', '100', '1', '13', '13', '0', '0', '1', '12', '3000', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'ig - end '),
('127827', '0', '29', '0', '52', '0', '100', '1', '12', '127827', '0', '0', '53', '1', '12782712', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'end - play'),
('127827', '0', '30', '0', '38', '0', '100', '1', '14', '14', '0', '0', '1', '13', '3000', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'start - end2'),
('127827', '0', '31', '0', '52', '0', '100', '1', '13', '127827', '0', '0', '53', '1', '12782713', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'null'),
('127827', '0', '32', '0', '38', '0', '100', '1', '15', '15', '0', '0', '1', '14', '3000', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'null'),
('127827', '0', '33', '0', '52', '0', '100', '1', '14', '127827', '0', '0', '53', '1', '12782714', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'null'),
('127827', '0', '34', '0', '38', '0', '100', '1', '16', '16', '0', '0', '1', '15', '3000', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'UD - ST'),
('127827', '0', '35', '0', '52', '0', '100', '1', '15', '127827', '0', '0', '53', '1', '12782715', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'null'),
('127827', '0', '36', '0', '38', '0', '100', '1', '17', '17', '0', '0', '1', '16', '3000', '0', '0', '0', '0', '21', '100', '0', '0', '0', '0', '0', '0', 'null'),
('127827', '0', '37', '0', '52', '0', '100', '1', '16', '127827', '0', '0', '53', '1', '12782716', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'null'),
('127827', '0', '38', '0', '38', '0', '100', '1', '18', '18', '0', '0', '1', '17', '3000', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'null'),
('127827', '0', '39', '0', '52', '0', '100', '1', '17', '127827', '0', '0', '53', '1', '12782717', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'null'),
('127827', '0', '40', '0', '40', '0', '100', '1', '4', '12782717', '0', '0', '206', '6398', '0', '0', '0', '0', '0', '21', '100', '0', '0', '0', '0', '0', '0', 'null'),
('127827', '0', '41', '44', '38', '0', '100', '1', '19', '19', '0', '0', '1', '20', '6000', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'null'),
('127827', '0', '42', '0', '52', '0', '100', '1', '20', '127827', '0', '0', '1', '18', '6000', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'null'),
('127827', '0', '43', '48', '52', '0', '100', '1', '18', '127827', '0', '0', '1', '19', '3000', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'null'),
('127827', '0', '44', '0', '61', '0', '100', '1', '0', '0', '0', '0', '11', '255191', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'S'),
('127827', '0', '45', '0', '52', '0', '100', '1', '19', '127827', '0', '0', '53', '0', '12782718', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'null'),
('127827', '0', '46', '0', '40', '0', '100', '1', '1', '12782718', '0', '0', '11', '255084', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'null'),
('127827', '0', '47', '0', '8', '0', '100', '1', '152821', '0', '0', '0', '41', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'null'),
('127827', '0', '48', '49', '61', '0', '100', '1', '152821', '0', '0', '0', '12', '127964', '8', '0', '0', '0', '0', '8', '0', '0', '0', '3133.08', '-637.898', '-107.338', '3.52056', 'null'),
('127827', '0', '49', '50', '61', '0', '100', '1', '0', '0', '0', '0', '45', '1', '1', '0', '0', '0', '0', '19', '127924', '0', '0', '0', '0', '0', '0', 'Fase - end '),
('127827', '0', '50', '0', '61', '0', '100', '1', '0', '0', '0', '0', '205', '92', '60893', '0', '0', '0', '0', '21', '100', '0', '0', '0', '0', '0', '0', 'Cm-Pro'),
('127827', '0', '51', '0', '40', '0', '100', '1', '1', '12782701', '0', '0', '45', '1', '1', '0', '0', '0', '0', '20', '277198', '50', '0', '0', '0', '0', '0', 'Say'),
('127827', '9', '0', '0', '0', '0', '100', '1', '0', '0', '0', '0', '53', '0', '12782708', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'help'),
('127827', '9', '1', '0', '0', '0', '100', '1', '5000', '5000', '0', '0', '11', '68442', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Complete'),
('127827', '9', '2', '0', '0', '0', '100', '1', '5000', '5000', '0', '0', '9', '0', '0', '0', '0', '0', '0', '20', '277424', '30', '0', '0', '0', '0', '0', 'AOE'),
('127827', '9', '3', '0', '0', '0', '100', '1', '0', '0', '0', '0', '45', '3', '3', '0', '0', '0', '0', '19', '128030', '0', '0', '0', '0', '0', '0', 'False'),
('127827', '9', '4', '0', '0', '0', '100', '1', '5000', '5000', '0', '0', '28', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Comand'),
('127827', '9', '5', '0', '0', '0', '100', '1', '0', '0', '0', '0', '53', '1', '12782709', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'end - Wp - end gesta');

DELETE FROM `smart_scripts` WHERE (`entryorguid`='128038');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
('128038', '0', '0', '1', '54', '0', '100', '1', '0', '0', '0', '0', '11', '197688', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '1'),
('128038', '0', '1', '2', '61', '0', '100', '1', '0', '0', '0', '0', '5', '393', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '2'),
('128038', '0', '2', '3', '61', '0', '100', '1', '0', '0', '0', '0', '45', '1', '1', '0', '0', '0', '0', '19', '128036', '0', '0', '0', '0', '0', '0', '3'),
('128038', '0', '3', '4', '61', '0', '100', '1', '0', '0', '0', '0', '205', '92', '60660', '0', '0', '0', '0', '21', '50', '0', '0', '0', '0', '0', '0', '4'),
('128038', '0', '4', '0', '61', '0', '100', '1', '0', '0', '0', '0', '206', '6390', '0', '0', '0', '0', '0', '21', '50', '0', '0', '0', '0', '0', '0', '5'),
('128038', '0', '5', '6', '6', '0', '100', '1', '0', '0', '0', '0', '205', '92', '60789', '0', '0', '0', '0', '21', '50', '0', '0', '0', '0', '0', '0', '6'),
('128038', '0', '6', '0', '61', '0', '100', '1', '0', '0', '0', '0', '45', '7', '7', '0', '0', '0', '0', '19', '127827', '0', '0', '0', '0', '0', '0', '7'),
('128038', '0', '7', '0', '0', '0', '100', '0', '5000', '10000', '5000', '10000', '11', '220139', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'end ');

DELETE FROM `smart_scripts` WHERE (`entryorguid`='128427');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
('128427', '0', '0', '1', '54', '0', '100', '1', '0', '0', '0', '0', '11', '256946', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'JS - CS'),
('128427', '0', '1', '2', '6', '0', '100', '1', '0', '0', '0', '0', '205', '92', '60870', '0', '0', '0', '0', '21', '50', '0', '0', '0', '0', '0', '0', 'OD - CSC'),
('128427', '0', '2', '4', '61', '0', '100', '1', '0', '0', '0', '0', '45', '10', '10', '0', '0', '0', '0', '19', '127827', '0', '0', '0', '0', '0', '0', 'L - SD'),
('128427', '0', '3', '0', '0', '0', '100', '0', '5000', '10000', '5000', '7000', '11', '260000', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'IC - CS'),
('128427', '0', '4', '0', '61', '0', '100', '1', '0', '0', '0', '0', '206', '6394', '0', '0', '0', '0', '0', '21', '50', '0', '0', '0', '0', '0', '0', 'L - SC');

/* SMART_Valiente */

DELETE FROM `smart_scripts` WHERE (`entryorguid`='128561');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
('128561', '0', '0', '1', '8', '0', '100', '1', '188455', '0', '0', '0', '11', '255084', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Valiente1'),
('128561', '0', '1', '2', '61', '0', '100', '1', '0', '0', '0', '0', '45', '1', '1', '0', '0', '0', '0', '11', '128655', '50', '0', '0', '0', '0', '0', 'Valiente12'),
('128561', '0', '2', '3', '61', '0', '100', '1', '0', '0', '0', '0', '205', '92', '60892', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Valiente13'),
('128561', '0', '3', '4', '61', '0', '100', '1', '0', '0', '0', '0', '45', '14', '14', '0', '0', '0', '0', '19', '127827', '0', '0', '0', '0', '0', '0', 'Valiente13'),
('128561', '0', '4', '0', '61', '0', '100', '1', '0', '0', '0', '0', '81', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'L - Valiente14'),
('128561', '0', '5', '0', '8', '0', '100', '1', '152821', '0', '0', '0', '41', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Valiente15');

/* Boss-END-Gesta */
DELETE FROM `smart_scripts` WHERE (`entryorguid`='127924');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
('127924', '0', '0', '1', '4', '0', '100', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'OA - ST'),
('127924', '0', '1', '0', '61', '0', '100', '1', '0', '0', '0', '0', '42', '0', '8', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'L - SI'),
('127924', '0', '2', '0', '2', '0', '100', '1', '0', '55', '0', '0', '1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '55%HP - ST'),
('127924', '0', '3', '0', '0', '0', '100', '1', '0', '5000', '0', '0', '11', '202419', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'IC - CS'),
('127924', '0', '4', '0', '0', '0', '100', '0', '6000', '10000', '8000', '12000', '11', '260197', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'IC - CS'),
('127924', '0', '5', '8', '2', '0', '100', '1', '0', '12', '0', '0', '1', '2', '2000', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '12%HP - ST'),
('127924', '0', '6', '0', '52', '0', '100', '1', '2', '127924', '0', '0', '45', '19', '19', '0', '0', '0', '0', '19', '127827', '0', '0', '0', '0', '0', '0', 'TO - SD'),
('127924', '0', '7', '0', '38', '0', '100', '1', '1', '1', '0', '0', '37', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'UD - D'),
('127924', '0', '8', '0', '61', '0', '100', '1', '0', '0', '0', '0', '11', '61204', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'L - CS');



/*Condiciones  */
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='19') AND (`SourceGroup`='0') AND (`SourceEntry`='49698') AND (`SourceId`='0') AND (`ElseGroup`='0') AND (`ConditionTypeOrReference`='8') AND (`ConditionTarget`='0') AND (`ConditionValue1`='50239') AND (`ConditionValue2`='0') AND (`ConditionValue3`='0');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='23') AND (`SourceGroup`='1519') AND (`SourceEntry`='103') AND (`SourceId`='0') AND (`ElseGroup`='0') AND (`ConditionTypeOrReference`='14') AND (`ConditionTarget`='0') AND (`ConditionValue1`='49698') AND (`ConditionValue2`='0') AND (`ConditionValue3`='0');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='18') AND (`SourceGroup`='130758') AND (`SourceEntry`='258298') AND (`SourceId`='0') AND (`ElseGroup`='0') AND (`ConditionTypeOrReference`='14') AND (`ConditionTarget`='0') AND (`ConditionValue1`='49698') AND (`ConditionValue2`='0') AND (`ConditionValue3`='0');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='22') AND (`SourceGroup`='1') AND (`SourceEntry`='548') AND (`SourceId`='10') AND (`ElseGroup`='0') AND (`ConditionTypeOrReference`='9') AND (`ConditionTarget`='0') AND (`ConditionValue1`='49698') AND (`ConditionValue2`='0') AND (`ConditionValue3`='0');
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES ('19', '0', '49698', '0', '0', '8', '0', '50239', '0', '0', '0', '0', '', 'Show Quest If Player RQ');
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES ('23', '1519', '103', '0', '0', '14', '0', '49698', '0', '0', '1', '0', '', 'Activate Phase - If Player HCR Quest');
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES ('18', '130758', '258298', '0', '0', '14', '0', '49698', '0', '0', '1', '0', '', 'SC If player Has Quest');
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES ('22', '1', '548', '10', '0', '9', '0', '49698', '0', '0', '0', '0', '', 'Smart - Only If Player CQ');


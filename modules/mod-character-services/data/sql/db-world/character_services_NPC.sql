
SET
@Entry = 390011,
@Name = "角色服务";

DELETE FROM `creature_template` WHERE `entry` = @Entry;
DELETE FROM `creature_template_model` WHERE `CreatureID` = @Entry;

INSERT INTO `creature_template` (`entry`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `rank`, `dmgschool`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `AIName`, `MovementType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `flags_extra`, `ScriptName`) VALUES
(@Entry, @Name, '角色服务大师', NULL, 0, 80, 80, 0, 35, 1, 0, 0, 2000, 0, 1, 0, 7, 138412032, 0, 0, 0, '', 0, 1, 0, 0, 1, 2, 'character_services');
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(@Entry, 0, 21113, 1.0, 1.0, NULL);

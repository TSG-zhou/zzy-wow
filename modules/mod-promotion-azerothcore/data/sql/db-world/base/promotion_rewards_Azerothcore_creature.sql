SET @ENTRY:=100042;
SET @NAME:="等级大师";
SET @SUBNAME:="满级服务";
SET @GOSSIP:=62000;
SET @MODELID1:=22234;

DELETE FROM `creature_template` WHERE `entry`=@ENTRY;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES(@ENTRY, 0, 0, 0, 0, 0, @NAME, @SUBNAME, NULL, @GOSSIP, 83, 83, 0, 35, 1, 1, 1, 0, 0, 20, 0, 0, 0, 0, 0, 1, 1, 1, 768, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 'npc_promotion', 12340);

-- NPC MODEL
DELETE FROM `creature_template_model` WHERE `CreatureID` = @ENTRY;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(@ENTRY, 0, @MODELID1, 1, 1, 0);


DELETE FROM `creature` WHERE id = 100042;
INSERT INTO creature (guid, id, map, zoneId, areaId, spawnMask, phaseMask, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, wander_distance, currentwaypoint, curhealth, curmana, MovementType, npcflag, unit_flags, dynamicflags, ScriptName, VerifiedBuild, CreateObject, Comment) 
VALUES (3200015, 100042, 0, 0, 0, 1, 1, 0, -8924.17, -132.765, 81.3699, 0.642458, 300, 0, 0, 5808, 0, 0, 0, 0, 0, '', null, 0, null),
(3200016, 100042, 0, 0, 0, 1, 1, 0, 1677.78, 1673.98, 137.447, 4.78152, 300, 0, 0, 5808, 0, 0, 0, 0, 0, '', null, 0, null),
(3200017, 100042, 1, 0, 0, 1, 1, 0, -2906.51, -274.553, 53.9025, 1.31132, 300, 0, 0, 5808, 0, 0, 0, 0, 0, '', null, 0, null),
(3200018, 100042, 0, 0, 0, 1, 1, 0, -6175.34, 389.417, 397.278, 3.71465, 300, 0, 0, 5808, 0, 0, 0, 0, 0, '', null, 0, null),
(3200019, 100042, 530, 0, 0, 1, 1, 0, -4032.54, -13792.8, 75.3518, 0.769398, 300, 0, 0, 5808, 0, 0, 0, 0, 0, '', null, 0, null),
(3200020, 100042, 1, 0, 0, 1, 1, 0, 10389.4, 750.733, 1320.08, 2.32449, 300, 0, 0, 5808, 0, 0, 0, 0, 0, '', null, 0, null),
(3200021, 100042, 530, 0, 0, 1, 1, 0, 10343.4, -6375.75, 36.0137, 0.617309, 300, 0, 0, 5808, 0, 0, 0, 0, 0, '', null, 0, null),
(3200022, 100042, 1, 0, 0, 1, 1, 0, -596.133, -4240.64, 38.9562, 3.57041, 300, 0, 0, 5808, 0, 0, 0, 0, 0, '', null, 0, null);
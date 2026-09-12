-- 增加任务模型表
delete from quest_template where id in (28001, 28002, 28003, 28004, 28005, 28006, 28007, 28008, 28032, 28033);
INSERT INTO quest_template (ID, QuestType, QuestLevel, MinLevel, QuestSortID, QuestInfoID, SuggestedGroupNum, RequiredFactionId1, RequiredFactionId2, RequiredFactionValue1, RequiredFactionValue2, RewardNextQuest, RewardXPDifficulty, RewardMoney, RewardMoneyDifficulty, RewardDisplaySpell, RewardSpell, RewardHonor, RewardKillHonor, StartItem, Flags, RequiredPlayerKills, RewardItem1, RewardAmount1, RewardItem2, RewardAmount2, RewardItem3, RewardAmount3, RewardItem4, RewardAmount4, ItemDrop1, ItemDropQuantity1, ItemDrop2, ItemDropQuantity2, ItemDrop3, ItemDropQuantity3, ItemDrop4, ItemDropQuantity4, RewardChoiceItemID1, RewardChoiceItemQuantity1, RewardChoiceItemID2, RewardChoiceItemQuantity2, RewardChoiceItemID3, RewardChoiceItemQuantity3, RewardChoiceItemID4, RewardChoiceItemQuantity4, RewardChoiceItemID5, RewardChoiceItemQuantity5, RewardChoiceItemID6, RewardChoiceItemQuantity6, POIContinent, POIx, POIy, POIPriority, RewardTitle, RewardTalents, RewardArenaPoints, RewardFactionID1, RewardFactionValue1, RewardFactionOverride1, RewardFactionID2, RewardFactionValue2, RewardFactionOverride2, RewardFactionID3, RewardFactionValue3, RewardFactionOverride3, RewardFactionID4, RewardFactionValue4, RewardFactionOverride4, RewardFactionID5, RewardFactionValue5, RewardFactionOverride5, TimeAllowed, AllowableRaces, LogTitle, LogDescription, QuestDescription, AreaDescription, QuestCompletionLog, RequiredNpcOrGo1, RequiredNpcOrGo2, RequiredNpcOrGo3, RequiredNpcOrGo4, RequiredNpcOrGoCount1, RequiredNpcOrGoCount2, RequiredNpcOrGoCount3, RequiredNpcOrGoCount4, RequiredItemId1, RequiredItemId2, RequiredItemId3, RequiredItemId4, RequiredItemId5, RequiredItemId6, RequiredItemCount1, RequiredItemCount2, RequiredItemCount3, RequiredItemCount4, RequiredItemCount5, RequiredItemCount6, Unknown0, ObjectiveText1, ObjectiveText2, ObjectiveText3, ObjectiveText4, VerifiedBuild)
VALUES (28001, 2, 1, 1, -4999, 0, 0, 0, 0, 0, 0, 28002, 5, 0, 0, 0, 0, 60, 0, 0, 65536, 0, 4500, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '新的旅程', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 12340),
(28002, 2, 1, 1, -4999, 0, 0, 0, 0, 0, 0, 28003, 5, 0, 0, 90020, 90020, 60, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '丢失的商业凭证', '找到丢失的8张商业凭证，交给艾薇儿', '我是个到处旅行的商人，把各种价廉物美的商品带给全世界的人们。但是不久前，我在旅行中被一群怪物骚扰，不慎把我的商业凭证丢失了。没有商业凭证，我将无法开展正常的贸易活动，你能帮我找回来吗？作为回报，我会教给你召唤之法，无论你身在何处，只要你有所需求，就可以使用召唤之法把我很快召唤到你的身边，除了提供给你精良的货物，还能回收你不用的东西，甚至还能为你打开银行仓库，并且照顾你的宠物。', '', '带着找到的8张商业凭证去找艾薇儿。', 0, 0, 0, 0, 0, 0, 0, 0, 61000, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, '', '', '', '', 12340),
(28003, 2, 1, 1, -4999, 0, 0, 0, 0, 0, 0, 0, 5, 50, 0, 0, 0, 60, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '奇怪的旅行者', '寻找那位奇怪的旅行者，并提供帮助。', '$N，刚才我在附近看到一个非常奇怪的人，个子很矮，绿皮肤，神色焦急，喘着粗气。可能他遇到什么麻烦了，你能去看看是怎么回事吗？或许他需要你的帮助。', null, null, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, 12340),
(28004, 2, 3, 3, -4999, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 90021, 90021, 60, 0, 60000, 524296, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '制服双足飞龙', '接受格里鲁滋的委托，制服狂暴的双足飞龙', '我是双足飞龙训练师格里鲁滋，我的工作就是把野生双足飞龙驯化成温顺的飞行坐骑，提供给需要的客户。不久之前我的一头飞龙坐骑不知为何发了狂，我担心它会伤害到无辜的人们，所以一直紧追到这里。但是这头双足飞龙非常狂暴，我已经制服不了它了，$N，你能帮我把它控制住吗？我这里有件家传的贴身防护衬衣，你要是同意帮助我，那它就是你的了，并且事成后再送你一头温顺的双足飞龙坐骑，你可以骑上它遨游世界！', null, '制服狂暴的双足飞龙后去找格里鲁滋谈谈。', 190005, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, 12340),
(28005, 2, 10, 10, -4999, 0, 0, 0, 0, 0, 0, 28006, 5, 0, 0, 0, 0, 60, 0, 0, 65536, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '你真的是布洛克斯希加？', null, null, null, null, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, 12340),
(28006, 2, 10, 10, -4999, 0, 0, 0, 0, 0, 0, 28007, 5, 0, 0, 0, 0, 60, 0, 0, 65536, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '你认识格里鲁滋？', null, null, null, null, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, 12340),
(28007, 2, 1, 1, -4999, 0, 0, 0, 0, 0, 0, 28008, 5, 0, 0, 0, 0, 60, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '找回被窃的珠宝', '找到被窃的10件珠宝，交给布洛克斯', '最近，附近的村落经常有盗贼和野兽出没，很多居民家中的珠宝被它们抢走，如果你愿意向我证明你的勇气，就请帮助这些居民把被窃的珠宝找回来。', null, '带着找到的10件被窃的珠宝去找布洛克斯。', 0, 0, 0, 0, 0, 0, 0, 0, 61011, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, null, null, null, null, 12340),
(28008, 2, 3, 3, -4999, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 60, 0, 61012, 524296, 0, 60001, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '封印的地狱兽！', '接受布洛克斯的考验，击败封印的地狱兽', '曾经的一次战役中，红龙法师克拉苏斯把一头地狱兽封印在了一个魔法盒子里，并把这个盒子送给了我留作纪念。$B$B$N，如果你有足够的勇气和实力，就解开这个盒子的封印，把那头地狱兽放出来，然后用自己的力量去击败它。$B$B如果你能通过这次考验，你将彻底赢得我的信任和尊重，我也将把自己的一件随身饰品赠送给你，相信它会对你将来的旅程有很大的帮助。', null, '击败地狱兽后去找布洛克斯谈谈。', 190008, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, 12340),
(28032, 2, 60, 55, -4999, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 150, 0, 0, 65536, 0, 60003, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '勇士的馈赠', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 60001, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', '', '', '', 12340),
(28033, 2, 60, 55, -4999, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 150, 0, 0, 65536, 0, 60003, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '勇士的馈赠', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 60001, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', '', '', '', 12340);

-- 增加任务附加信息表
delete from quest_template_addon where ID in (28001, 28002, 28003, 28004, 28005, 28006, 28007, 28008, 28032, 28033);
INSERT INTO quest_template_addon (ID, MaxLevel, AllowableClasses, SourceSpellID, PrevQuestID, NextQuestID, ExclusiveGroup, RewardMailTemplateID, RewardMailDelay, RequiredSkillID, RequiredSkillPoints, RequiredMinRepFaction, RequiredMaxRepFaction, RequiredMinRepValue, RequiredMaxRepValue, ProvidedItemCount, SpecialFlags) VALUES
(28001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(28002, 0, 0, 0, 28001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(28003, 80, 0, 0, 28002, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(28004, 80, 0, 0, 28003, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 4),
(28005, 80, 0, 0, 28004, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(28006, 80, 0, 0, 28005, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(28007, 80, 0, 0, 28006, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(28008, 80, 0, 0, 28007, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 4),
(28032, 80, 0, 0, 28008, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(28033, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 增加奖励表情+文本
delete from quest_offer_reward where ID in (28001, 28002, 28003, 28004, 28005, 28006, 28007, 28008, 28032, 28033);
INSERT INTO quest_offer_reward (ID, Emote1, Emote2, Emote3, Emote4, EmoteDelay1, EmoteDelay2, EmoteDelay3, EmoteDelay4, RewardText, VerifiedBuild) VALUES
(28001, 0, 0, 0, 0, 0, 0, 0, 0, '亲爱的$N，准备开始新的探险之旅了吗？你会有机会收集到很多新奇有趣的东西，因此你也需要一些方便耐用的包裹来盛放这些东西。送给你两个红色小包吧，虽然小了点，但也能助你一臂之力。以后要是遇到好裁缝，千万记得要向他们学习大容量包裹的制作方法，这会让你的旅程受益匪浅。祝你旅途愉快！', 12340),
(28002, 0, 0, 0, 0, 0, 0, 0, 0, '请稍等，$N，我马上教你使用召唤之法！', 12340),
(28003, 0, 0, 0, 0, 0, 0, 0, 0, '啊，尊敬的朋友，$N，你是来帮助我的吗？真是太感谢你了！', 12340),
(28004, 0, 0, 0, 0, 0, 0, 0, 0, '太感谢了！$N！我马上教你怎样使用双足飞龙坐骑！', 12340),
(28005, 0, 0, 0, 0, 0, 0, 0, 0, '是的，年轻的$c。$B$B曾经很长一段时间我一直沉浸在困扰中，为自己没能和同伴一起血染沙场而自责。直到有一次因为探查一些奇怪的迹象而误入一万年前燃烧军团入侵艾泽拉斯大陆的时代，我才最终在与燃烧军团的战斗中实现自己的光荣梦想。即便如此，我依然留恋这片大陆，留恋伟大的酋长萨尔，留恋那些曾经并肩作战的同伴，所以最后我的灵魂随法师一起回到了现在，继续守望这片美丽的土地。$B$B$N，我知道你，或者说，前些天我曾听格里鲁滋谈起过你。', 12340),
(28006, 0, 0, 0, 0, 0, 0, 0, 0, '是的，年轻人，不但认识，而且是老朋友了。$B$B格里鲁滋是一位相当能干的坐骑训练师，部落领地大多数的双足飞龙都是由他驯养后交给我们的。$B$B$N，格里鲁滋对你大加赞赏，认为你很快就会成为一名出色的$c，但在那之前，我必须先考验一下你的实力。！', 12340),
(28007, 0, 0, 0, 0, 0, 0, 0, 0, '做得好，$N！但在得到我充分的信任之前，你还需要经历一场艰巨的考验！', 12340),
(28008, 0, 0, 0, 0, 0, 0, 0, 0, '太棒了！$N！请接受这件礼物！', 12340),
(28032, 0, 0, 0, 0, 0, 0, 0, 0, '$C，我一直在关注着你。艾泽拉斯各地都出现过你的身影，你的故事也在居民的口中流传。拼搏意味着荣耀，它将陪伴你很长的历程。上次送给你的饰品，我来帮你提升一下效果，在你今后对抗燃烧军团的战斗中会发挥更大的作用。$B$B愿你的刀刃永远锋利！', 12340),
(28033, 0, 0, 0, 0, 0, 0, 0, 0, '$C，我一直在关注着你。艾泽拉斯各地都出现过你的身影，你的故事也在居民的口中流传。拼搏意味着荣耀，它将陪伴你很长的历程。上次送给你的饰品，我来帮你提升一下效果，在你今后对抗燃烧军团的战斗中会发挥更大的作用。$B$B愿你的刀刃永远锋利！', 12340);

-- 增加拆出的物品请求表情+文本
delete from quest_request_items where ID in (28001, 28002, 28003, 28004, 28005, 28006, 28007, 28008, 28032, 28033);
INSERT INTO quest_request_items (ID, EmoteOnComplete, EmoteOnIncomplete, CompletionText, VerifiedBuild) VALUES
(28002, 0, 0, '商业凭证应该在附近的怪物身上，期待你的好消息。', 12340),
(28004, 0, 0, '狂暴的双足飞龙就在前面，你可要小心，别被它伤着了。', 12340),
(28007, 0, 0, '被窃的珠宝应该就在附近的盗贼和野兽身上，期待你的好消息。', 12340),
(28008, 0, 0, '地狱兽释放出来后请尽快击败它，以免它再破坏这片大陆。', 12340);

-- 任务开始表
delete from creature_queststarter where quest in (28001, 28002, 28003, 28004, 28005, 28006, 28007, 28008, 28032, 28033);
INSERT INTO creature_queststarter (id, quest) VALUES
(190003, 28001),
(190003, 28002),
(190003, 28003),
(190004, 28004),
(190007, 28005),
(190007, 28006),
(190007, 28007),
(190007, 28008),
(190007, 28032),
(190007, 28033);

-- 任务结束表
delete from creature_questender where quest in (28001, 28002, 28003, 28004, 28005, 28006, 28007, 28008, 28032, 28033);
INSERT INTO creature_questender (id, quest) VALUES
(190003, 28001),
(190003, 28002),
(190004, 28003),
(190004, 28004),
(190007, 28005),
(190007, 28006),
(190007, 28007),
(190007, 28008),
(190007, 28032),
(190007, 28033);

-- 增加 生物基础表
delete from creature_template where entry in (190008, 190007, 190006, 190005, 190004, 190003, 190002);
INSERT INTO creature_template (entry, difficulty_entry_1, difficulty_entry_2, difficulty_entry_3, KillCredit1, KillCredit2,
                                       name, subname, IconName, gossip_menu_id, minlevel,
                                       maxlevel, exp, faction, npcflag, speed_walk, speed_run, `rank`,
                                       dmgschool, DamageModifier, baseattacktime, rangeattacktime, unit_class, unit_flags,
                                       unit_flags2, dynamicflags, family,
                                       type, type_flags, lootid, pickpocketloot, skinloot,
                                       PetSpellDataId, VehicleId, mingold, maxgold, AIName, MovementType, HoverHeight,
                                       HealthModifier, ManaModifier, ArmorModifier, RacialLeader,
                                       movementId, RegenHealth, flags_extra, ScriptName, VerifiedBuild) VALUES
(190008, 0, 0, 0, 0, 0, '被封印的地狱兽', '', '', 0, 10, 10, 0, 16, 0, 1, 1.14286, 1, 0, 1, 1500, 2000, 1, 0, 2048, 0, 0, 7, 0, 0, 0, 0,  0, 0, 8000, 10000, '', 0, 1, 6, 6, 2, 0, 0, 1, 2, '', 12340),
(190007, 0, 0, 0, 0, 0, '布洛克斯', '', '', 0, 80, 80, 0, 35, 3, 1, 1.14286, 1, 0, 1, 1500, 2000, 1, 2, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 55, 0, 1.56, 0, 0, 1, 2, '', 12340),
(190006, 0, 0, 0, 0, 0, '格里鲁滋', '飞行坐骑训练师', '', 0, 30, 30, 0, 35, 3, 1, 1.14286, 1, 0, 1, 1500, 2000, 1, 2, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.56, 1.56, 1.56, 0, 0, 1, 2, '', 12340),
(190005, 0, 0, 0, 0, 0, '狂暴的双足飞龙', '', '', 0, 5, 5, 0, 26, 0, 1, 1.14286, 1, 0, 3, 2000, 2000, 1, 0, 2048, 0, 0, 7, 0, 0, 0, 0,  0, 0, 1000, 1000, '', 0, 1, 5, 5, 2, 0, 0, 1, 2, '', 12340),
(190004, 0, 0, 0, 0, 0, '格里鲁滋', '飞行坐骑训练师', '', 61000, 30, 30, 0, 35, 3, 1, 1.14286, 1, 0, 1, 1500, 2000, 1, 0, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.56, 1.56, 1.56, 0, 0, 1, 2, '', 12340),
(190003, 0, 0, 0, 0, 0, '艾薇儿', '无处不在的商人', '', 61000, 30, 30, 0, 35, 3, 1, 1.14286, 1, 0, 1, 1500, 2000, 1, 0, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 10, 10, 10, 0, 0, 1, 2, '', 12340),
(190002, 0, 0, 0, 0, 0, '艾薇儿', '无处不在的商人', '', 61000, 30, 30, 0, 1604, 6426753, 1, 1.14286, 0, 0, 1, 1500, 2000, 8, 4608, 2048, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 10, 10, 10, 0, 0, 1, 2, 'npc_multi_service', 12340);

delete from creature_template where entry in (43283);
INSERT INTO creature_template (entry, difficulty_entry_1, difficulty_entry_2, difficulty_entry_3, KillCredit1, KillCredit2, name, subname, IconName, gossip_menu_id, minlevel, maxlevel, exp, faction, npcflag, speed_walk, speed_run, speed_swim, speed_flight, detection_range, `rank`, dmgschool, DamageModifier, BaseAttackTime, RangeAttackTime, BaseVariance, RangeVariance, unit_class, unit_flags, unit_flags2, dynamicflags, family, type, type_flags, lootid, pickpocketloot, skinloot, PetSpellDataId, VehicleId, mingold, maxgold, AIName, MovementType, HoverHeight, HealthModifier, ManaModifier, ArmorModifier, ExperienceModifier, RacialLeader, movementId, RegenHealth, CreatureImmunitiesId, flags_extra, ScriptName, VerifiedBuild)
VALUES (43283, 0, 0, 0, 0, 0, '试炼的双足飞龙', '', '', 0, 1, 1, 0, 35, 0, 1, 1.14286, 1, 1, 20, 0, 0, 1, 1500, 2000, 1, 1, 1, 0, 2048, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 140, 1, 0, 2, '', 12340);

-- 增加 生物模型表
delete from creature_template_model where CreatureID in (190008, 190007, 190006, 190005, 190004, 190003, 190002, 43283);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(190008, 0, 7949, 1, 1, 0),
(190007, 0, 21267, 1, 1, 0),
(190006, 0, 7057, 1, 1, 0),
(190005, 0, 295, 1, 1, 0),
(190004, 0, 7057, 1, 1, 0),
(190003, 0, 20579, 1, 1, 0),
(190002, 0, 20579, 1, 1, 0),
(43283, 0, 17701, 1, 1, 0);

-- gossip_menu (使用 61000 避免与传送大师模块 60000-60008 冲突)
DELETE FROM `gossip_menu` WHERE `MenuID` = 61000;
INSERT INTO `gossip_menu` (`MenuID`, `TextID`) VALUES (61000, 90001);

-- npc_text
DELETE FROM `npc_text` WHERE `ID` = 90001;
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `BroadcastTextID0`, `Probability0`)
VALUES (90001, '欢迎！请选择您需要的服务。\nWelcome! Please select a service.', '', 0, 1);


-- ============================================
-- Vendor Items (Shop)
-- Add items to npc_vendor for this NPC entry:
-- INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`)
-- VALUES (190002, ITEM_ID, 0, 0, 0);
-- ============================================
-- 增加生物实例表
delete from creature where id in (190008, 190007, 190006, 190005, 190004, 190003, 190002);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, wander_distance, currentwaypoint, curhealth, curmana, MovementType, npcflag, unit_flags, dynamicflags) VALUES
(500001, 190003, 0, 1, 1, 0, 1681.36, 1672.92, 136.82, 3.8, 25, 0, 0, 737, 2175, 0, 0, 0, 0),
(500002, 190003, 530, 1, 1, 0, 10342.4, -6368.68, 34.85, 1.6, 25, 0, 0, 737, 2175, 0, 0, 0, 0),
(500003, 190003, 1, 1, 1, 0, -2910.22, -272.83, 53.91, 0.98, 25, 0, 0, 737, 2175, 0, 0, 0, 0),
(500004, 190003, 0, 1, 1, 0, -6179.84, 390.76, 396.1, 2.75, 25, 0, 0, 737, 2175, 0, 0, 0, 0),
(500005, 190003, 1, 1, 1, 0, -604.3, -4239.88, 38.96, 4.53, 25, 0, 0, 737, 2175, 0, 0, 0, 0),
(500006, 190003, 530, 1, 1, 0, -4028.49, -13795.5, 75.43, 0.87, 25, 0, 0, 737, 2175, 0, 0, 0, 0),
(500007, 190003, 1, 1, 1, 0, 10384.9, 748.37, 1320.93, 0.71, 25, 0, 0, 737, 2175, 0, 0, 0, 0),
(500008, 190003, 0, 1, 1, 0, -8926.35, -128.76, 81.76, 5.91, 25, 0, 0, 737, 2175, 0, 0, 0, 0),
(500009, 190004, 0, 1, 1, 0, 1755.8, 1650.99, 119.32, 0.41, 25, 0, 0, 1737, 2175, 0, 0, 0, 0),
(500010, 190004, 530, 1, 1, 0, 10150.3, -6251.15, 15.22, 2.57, 25, 0, 0, 1737, 2175, 0, 0, 0, 0),
(500011, 190004, 1, 1, 1, 0, -3007.73, -649.06, 34.6, 4.38, 25, 0, 0, 1737, 2175, 0, 0, 0, 0),
(500012, 190004, 0, 1, 1, 0, -6354, 386.6, 378.32, 2.96, 25, 0, 0, 1737, 2175, 0, 0, 0, 0),
(500013, 190004, 1, 1, 1, 0, -466.03, -4312.08, 47.47, 0.14, 25, 0, 0, 1737, 2175, 0, 0, 0, 0),
(500014, 190004, 530, 1, 1, 0, -3911.2, -13820.6, 82.28, 5.79, 25, 0, 0, 1737, 2175, 0, 0, 0, 0),
(500015, 190004, 1, 1, 1, 0, 10413.6, 562.24, 1329.7, 5.47, 25, 0, 0, 1737, 2175, 0, 0, 0, 0),
(500016, 190004, 0, 1, 1, 0, -8697.64, -85.27, 89.72, 1.41, 25, 0, 0, 1737, 2175, 0, 0, 0, 0),
(500017, 190005, 0, 1, 1, 0, 1782.12, 1656.39, 113.49, 3.45, 180, 0, 0, 600, 175, 0, 0, 0, 0),
(500018, 190005, 530, 1, 1, 0, 10119.5, -6233.73, 16.67, 2.87, 180, 0, 0, 600, 175, 0, 0, 0, 0),
(500019, 190005, 1, 1, 1, 0, -3013.55, -693.32, 43.42, 4.22, 180, 0, 0, 600, 175, 0, 0, 0, 0),
(500020, 190005, 0, 1, 1, 0, -6378.27, 384.33, 380.42, 0.75, 180, 0, 0, 600, 175, 0, 0, 0, 0),
(500021, 190005, 1, 1, 1, 0, -425.97, -4341.28, 47.5, 4.82, 180, 0, 0, 600, 175, 0, 0, 0, 0),
(500022, 190005, 530, 1, 1, 0, -3874.03, -13830.2, 88.04, 4.73, 180, 0, 0, 600, 175, 0, 0, 0, 0),
(500023, 190005, 1, 1, 1, 0, 10444, 541.52, 1337.72, 6.22, 180, 0, 0, 600, 175, 0, 0, 0, 0),
(500024, 190005, 0, 1, 1, 0, -8695.77, -62.79, 91.68, 1.59, 180, 0, 0, 600, 175, 0, 0, 0, 0),
(500025, 190006, 631, 15, 1, 0, -40.9, 2213.83, 27.9, 3.2, 86400, 0, 0, 13255737, 0, 0, 0, 0, 0),
(500026, 190007, 530, 1, 1, 0, 9338.37, -7283.34, 13.98, 4.97, 25, 0, 0, 3255737, 0, 0, 0, 0, 0),
(500027, 190007, 0, 1, 1, 0, 1893.47, 231.94, 56.26, 3.19, 25, 0, 0, 3255737, 0, 0, 0, 0, 0),
(500028, 190007, 1, 1, 1, 0, -1272.17, 115.59, 130.81, 4.92, 25, 0, 0, 3255737, 0, 0, 0, 0, 0),
(500029, 190007, 1, 1, 1, 0, 1346.29, -4362.98, 26.77, 0.21, 25, 0, 0, 3255737, 0, 0, 0, 0, 0),
(500030, 190007, 530, 1, 1, 0, -4077.47, -12045.4, -0.59, 1.63, 25, 0, 0, 3255737, 0, 0, 0, 0, 0),
(500031, 190007, 0, 1, 1, 0, -5049.18, -814.44, 495.04, 2.12, 25, 0, 0, 3255737, 0, 0, 0, 0, 0),
(500032, 190007, 1, 1, 1, 0, 9990.56, 1947.4, 1325.68, 4.95, 25, 0, 0, 3255737, 0, 0, 0, 0, 0),
(500033, 190007, 0, 1, 1, 0, -9120.62, 383.83, 91.46, 3.59, 25, 0, 0, 3255737, 0, 0, 0, 0, 0);

-- 物品、
delete from item_template where entry in (61000, 61011, 60001, 60003, 61012, 60000, 60002);
INSERT INTO item_template (entry, class, subclass, SoundOverrideSubclass, name, displayid, Quality, Flags, FlagsExtra, BuyCount, BuyPrice, SellPrice, InventoryType, AllowableClass, AllowableRace, ItemLevel, RequiredLevel, RequiredSkill, RequiredSkillRank, requiredspell, requiredhonorrank, RequiredCityRank, RequiredReputationFaction, RequiredReputationRank, maxcount, stackable, ContainerSlots, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3, stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7, stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10, ScalingStatDistribution, ScalingStatValue, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2, armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, delay, ammo_type, RangedModRange, spellid_1, spelltrigger_1, spellcharges_1, spellppmRate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmRate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, spellid_3, spelltrigger_3, spellcharges_3, spellppmRate_3, spellcooldown_3, spellcategory_3, spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmRate_4, spellcooldown_4, spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmRate_5, spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, description, PageText, LanguageID, PageMaterial, startquest, lockid, Material, sheath, RandomProperty, RandomSuffix, block, itemset, MaxDurability, area, Map, BagFamily, TotemCategory, socketColor_1, socketContent_1, socketColor_2, socketContent_2, socketColor_3, socketContent_3, socketBonus, GemProperties, RequiredDisenchantSkill, ArmorDamageModifier, duration, ItemLimitCategory, HolidayId, ScriptName, DisenchantID, FoodType, minMoneyLoot, maxMoneyLoot, flagsCustom, VerifiedBuild)
 VALUES (61000, 12, 0, -1, '商业凭证', 3029, 1, 0, 0, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, '', 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 12340),
        (61011, 12, 0, -1, '被窃的珠宝', 6851, 1, 0, 0, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, '', 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 12340),
        (61012, 0, 0, -1, '魔法封印盒', 20913, 4, 0, 0, 1, 0, 0, 0, -1, -1, 13, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91020, 0, -1, -1, 0, 1, 2000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, '', 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 12340);

INSERT INTO acore_world.item_template (entry, class, subclass, SoundOverrideSubclass, name, displayid, Quality, Flags, FlagsExtra, BuyCount, BuyPrice, SellPrice, InventoryType, AllowableClass, AllowableRace, ItemLevel, RequiredLevel, RequiredSkill, RequiredSkillRank, requiredspell, requiredhonorrank, RequiredCityRank, RequiredReputationFaction, RequiredReputationRank, maxcount, stackable, ContainerSlots, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3, stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7, stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10, ScalingStatDistribution, ScalingStatValue, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2, armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, delay, ammo_type, RangedModRange, spellid_1, spelltrigger_1, spellcharges_1, spellppmRate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmRate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, spellid_3, spelltrigger_3, spellcharges_3, spellppmRate_3, spellcooldown_3, spellcategory_3, spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmRate_4, spellcooldown_4, spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmRate_5, spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, description, PageText, LanguageID, PageMaterial, startquest, lockid, Material, sheath, RandomProperty, RandomSuffix, block, itemset, MaxDurability, area, Map, BagFamily, TotemCategory, socketColor_1, socketContent_1, socketColor_2, socketContent_2, socketColor_3, socketContent_3, socketBonus, GemProperties, RequiredDisenchantSkill, ArmorDamageModifier, duration, ItemLimitCategory, HolidayId, ScriptName, DisenchantID, FoodType, minMoneyLoot, maxMoneyLoot, flagsCustom, VerifiedBuild) 
VALUES (60000, 4, 1, -1, '试炼的衬衣', 58541, 5, 0, 0, 1, 1, 1, 4, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 10, 4, 10, 5, 10, 6, 10, 7, 10, 1, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 90001, 0, 0, 0, 300000, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0),
(60001, 4, 0, -1, '试炼的饰品', 6337, 5, 0, 0, 1, 1, 1, 19, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 3, 10, 4, 10, 5, 10, 6, 10, 7, 10, 1, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 90015, 0, 0, 0, 120000, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0),
(60002, 4, 1, -1, '泰兰德的祈福', 70002, 5, 0, 0, 1, 10000000, 250000, 4, -1, -1, 277, 55, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 20, 4, 20, 5, 20, 6, 20, 7, 20, 1, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 10, 10, 10, 10, 10, 10, 0, 0, 0, 90001, 0, 0, 0, 300000, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, '月亮女神，用你的纯洁、你的优雅和你的爱赐予我力量吧！', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0),
(60003, 4, 0, -1, '布洛克斯之魂', 6337, 5, 0, 0, 1, 10000000, 250000, 19, -1, -1, 277, 55, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 3, 20, 4, 20, 5, 20, 6, 20, 7, 20, 1, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 10, 10, 10, 10, 10, 10, 0, 0, 0, 90015, 0, 0, 0, 120000, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, '与你和其他人并肩作战是我的光荣！', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0);


-- 掉落
delete from creature_loot_template where item in (61000, 61011);
INSERT INTO creature_loot_template (entry, item, Reference, Chance, QuestRequired, lootmode, groupid, MinCount, maxcount) VALUES
(2966,  61000, 0, 80, 1, 1, 0, 1, 1),
(2955,  61000, 0, 80, 1, 1, 0, 1, 1),
(15372, 61000, 0, 80, 1, 1, 0, 1, 1),
(15366, 61000, 0, 80, 1, 1, 0, 1, 1),
(15274, 61000, 0, 80, 1, 1, 0, 1, 1),
(1512,  61000, 0, 80, 1, 1, 0, 1, 1),
(3124,  61000, 0, 80, 1, 1, 0, 1, 1),
(16520, 61000, 0, 80, 1, 1, 0, 1, 1),
(705,   61000, 0, 80, 1, 1, 0, 1, 1),
(299,   61000, 0, 80, 1, 1, 0, 1, 1),
(69,    61000, 0, 80, 1, 1, 0, 1, 1),
(1501,  61000, 0, 80, 1, 1, 0, 1, 1),
(3098,  61000, 0, 80, 1, 1, 0, 1, 1),
(16516, 61000, 0, 80, 1, 1, 0, 1, 1),
(724,   61000, 0, 80, 1, 1, 0, 1, 1),
(1984,  61000, 0, 80, 1, 1, 0, 1, 1),
(2031,  61000, 0, 80, 1, 1, 0, 1, 1),
(6,     61000, 0, 80, 1, 1, 0, 1, 1),
(2956,  61011, 0, 80, 1, 1, 0, 1, 1),
(2959,  61011, 0, 80, 1, 1, 0, 1, 1),
(2970,  61011, 0, 80, 1, 1, 0, 1, 1),
(3035,  61011, 0, 80, 1, 1, 0, 1, 1),
(1547,  61011, 0, 80, 1, 1, 0, 1, 1),
(1548,  61011, 0, 80, 1, 1, 0, 1, 1),
(1553,  61011, 0, 80, 1, 1, 0, 1, 1),
(3127,  61011, 0, 80, 1, 1, 0, 1, 1),
(17196, 61011, 0, 80, 1, 1, 0, 1, 1),
(1999,  61011, 0, 80, 1, 1, 0, 1, 1),
(2043,  61011, 0, 80, 1, 1, 0, 1, 1),
(1996,  61011, 0, 80, 1, 1, 0, 1, 1),
(116,   61011, 0, 80, 1, 1, 0, 1, 1),
(15654, 61011, 0, 80, 1, 1, 0, 1, 1),
(15649, 61011, 0, 80, 1, 1, 0, 1, 1),
(3100,  61011, 0, 80, 1, 1, 0, 1, 1),
(17372, 61011, 0, 80, 1, 1, 0, 1, 1),
(17202, 61011, 0, 80, 1, 1, 0, 1, 1),
(1138,  61011, 0, 80, 1, 1, 0, 1, 1),
(1126,  61011, 0, 80, 1, 1, 0, 1, 1),
(1131,  61011, 0, 80, 1, 1, 0, 1, 1),
(30,    61011, 0, 80, 1, 1, 0, 1, 1),
(94,    61011, 0, 80, 1, 1, 0, 1, 1),
(525,   61011, 0, 80, 1, 1, 0, 1, 1);

-- 商店
delete from npc_vendor where entry = 190002;
INSERT INTO npc_vendor (entry, slot, item, maxcount, incrtime, ExtendedCost)
VALUES (190002, 9, 3775, 0, 0, 0),
(190002, 10, 5237, 0, 0, 0),
(190002, 15, 5565, 0, 0, 0),
(190002, 16, 16583, 0, 0, 0),
(190002, 7, 17020, 0, 0, 0),
(190002, 17, 17030, 0, 0, 0),
(190002, 18, 17031, 0, 0, 0),
(190002, 19, 17032, 0, 0, 0),
(190002, 20, 17033, 0, 0, 0),
(190002, 25, 17142, 0, 0, 0),
(190002, 21, 21177, 0, 0, 0),
(190002, 28, 33350, 0, 0, 2999),
(190002, 29, 36942, 0, 0, 2999),
(190002, 8, 37201, 0, 0, 0),
(190002, 5, 41584, 0, 0, 0),
(190002, 6, 41586, 0, 0, 0),
(190002, 11, 43231, 0, 0, 0),
(190002, 12, 43233, 0, 0, 0),
(190002, 13, 43235, 0, 0, 0),
(190002, 14, 43237, 0, 0, 0),
(190002, 22, 44605, 0, 0, 0),
(190002, 23, 44614, 0, 0, 0),
(190002, 24, 44615, 0, 0, 0),
(190002, 37, 60002, 0, 0, 0),
(190002, 38, 60004, 0, 0, 0),
(190002, 39, 60005, 0, 0, 0),
(190002, 30, 62001, 0, 0, 2999),
(190002, 31, 62004, 0, 0, 2999),
(190002, 32, 62005, 0, 0, 2999),
(190002, 33, 62010, 0, 0, 2999),
(190002, 34, 62011, 0, 0, 2999),
(190002, 35, 62012, 0, 0, 2999),
(190002, 36, 62013, 0, 0, 2999);

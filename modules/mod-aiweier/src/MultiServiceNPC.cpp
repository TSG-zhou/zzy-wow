/*
 * This file is part of the AzerothCore module: skeleton-module
 * Licensed under GNU GPL v2. See LICENSE file.
 *
 * Multi-Service NPC (entry 190002)
 * Features: Shop, Remote Bank, Pet Stable, Instance Reset,
 *           Remove Combat, Lock/Unlock XP, Faction Change
 */
#include "Chat.h"
#include "ScriptMgr.h"
#include "Player.h"
#include "Creature.h"
#include "ScriptedGossip.h"
#include "WorldSession.h"
#include "Map.h"

// Config enum
enum MultiServiceConfig
{
    CONFIG_ENABLED,
    CONFIG_SHOP,
    CONFIG_BANK,
    CONFIG_STABLE,
    CONFIG_INSTANCE_RESET,
    CONFIG_REMOVE_COMBAT,
    CONFIG_XP_TOGGLE,
    CONFIG_FACTION_CHANGE,
    CONFIG_COUNT,
};

// Config cache
class MultiServiceConfigData : public ConfigValueCache<MultiServiceConfig>
{
public:
    MultiServiceConfigData()
        : ConfigValueCache(CONFIG_COUNT) { }

    void BuildConfigCache() override
    {
        SetConfigValue<bool>(CONFIG_ENABLED,
            "MultiServiceNPC.Enable", true);
        SetConfigValue<bool>(CONFIG_SHOP,
            "MultiServiceNPC.EnableShop", true);
        SetConfigValue<bool>(CONFIG_BANK,
            "MultiServiceNPC.EnableBank", true);
        SetConfigValue<bool>(CONFIG_STABLE,
            "MultiServiceNPC.EnableStable", true);
        SetConfigValue<bool>(CONFIG_INSTANCE_RESET,
            "MultiServiceNPC.EnableInstanceReset", true);
        SetConfigValue<bool>(CONFIG_REMOVE_COMBAT,
            "MultiServiceNPC.EnableRemoveCombat", true);
        SetConfigValue<bool>(CONFIG_XP_TOGGLE,
            "MultiServiceNPC.EnableXPToggle", true);
        SetConfigValue<bool>(CONFIG_FACTION_CHANGE,
            "MultiServiceNPC.EnableFactionChange", true);
    }
};

static MultiServiceConfigData multiServiceConfig;

// Custom gossip action IDs
enum MultiServiceActions
{
    ACTION_SHOP           = GOSSIP_ACTION_INFO_DEF + 1,
    ACTION_BANK           = GOSSIP_ACTION_INFO_DEF + 2,
    ACTION_STABLE         = GOSSIP_ACTION_INFO_DEF + 3,
    ACTION_RESET          = GOSSIP_ACTION_INFO_DEF + 4,
    ACTION_COMBAT         = GOSSIP_ACTION_INFO_DEF + 5,
    ACTION_XP_LOCK        = GOSSIP_ACTION_INFO_DEF + 6,
    ACTION_XP_UNLOCK      = GOSSIP_ACTION_INFO_DEF + 7,
    ACTION_ALLIANCE       = GOSSIP_ACTION_INFO_DEF + 8,
    ACTION_HORDE          = GOSSIP_ACTION_INFO_DEF + 9,
};

// In-game faction switch: only change team and faction template
static void ChangeFactionInGame(Player* player, TeamId newTeam)
{
    if (player->GetTeamId() == newTeam)
        return;

    player->setTeamId(newTeam);

    // Alliance=469, Horde=67
    uint32 factionTemplate =
        (newTeam == TEAM_ALLIANCE) ? 469 : 67;
    player->SetFaction(factionTemplate);

    player->SendUpdateToPlayer(player);

    ChatHandler(player->GetSession()).PSendSysMessage(
        newTeam == TEAM_ALLIANCE
            ? "你已加入联盟！\nYou have joined the Alliance!"
            : "你已加入部落！\nYou have joined the Horde!");
}

class npc_multi_service : public CreatureScript
{
public:
    npc_multi_service() : CreatureScript("npc_multi_service") { }

    bool OnGossipHello(Player* player, Creature* creature) override
    {
        if (!multiServiceConfig.GetConfigValue<bool>(CONFIG_ENABLED))
            return false;

        bool hasItems = false;

        // Shop
        if (multiServiceConfig.GetConfigValue<bool>(CONFIG_SHOP))
        {
            AddGossipItemFor(player, GOSSIP_ICON_VENDOR,
                "商店",
                GOSSIP_SENDER_MAIN, ACTION_SHOP);
            hasItems = true;
        }

        // Remote Bank
        if (multiServiceConfig.GetConfigValue<bool>(CONFIG_BANK))
        {
            AddGossipItemFor(player, GOSSIP_ICON_INTERACT_1,
                "远程银行",
                GOSSIP_SENDER_MAIN, ACTION_BANK);
            hasItems = true;
        }

        // Pet Stable
        if (multiServiceConfig.GetConfigValue<bool>(CONFIG_STABLE))
        {
            AddGossipItemFor(player, GOSSIP_ICON_CHAT,
                "随身兽栏",
                GOSSIP_SENDER_MAIN, ACTION_STABLE);
            hasItems = true;
        }

        // Instance Reset
        if (multiServiceConfig.GetConfigValue<bool>(
            CONFIG_INSTANCE_RESET))
        {
            AddGossipItemFor(player, GOSSIP_ICON_CHAT,
                "重置副本",
                GOSSIP_SENDER_MAIN, ACTION_RESET);
            hasItems = true;
        }

        // Remove Combat
        if (multiServiceConfig.GetConfigValue<bool>(
            CONFIG_REMOVE_COMBAT))
        {
            AddGossipItemFor(player, GOSSIP_ICON_CHAT,
                "解除战斗状态",
                GOSSIP_SENDER_MAIN, ACTION_COMBAT);
            hasItems = true;
        }

        // XP Lock / Unlock
        if (multiServiceConfig.GetConfigValue<bool>(CONFIG_XP_TOGGLE))
        {
            if (!player->HasPlayerFlag(PLAYER_FLAGS_NO_XP_GAIN))
                AddGossipItemFor(player, GOSSIP_ICON_CHAT,
                    "锁定经验",
                    GOSSIP_SENDER_MAIN, ACTION_XP_LOCK);
            else
                AddGossipItemFor(player, GOSSIP_ICON_CHAT,
                    "解锁经验",
                    GOSSIP_SENDER_MAIN, ACTION_XP_UNLOCK);
            hasItems = true;
        }

        // Faction Change
        if (multiServiceConfig.GetConfigValue<bool>(
            CONFIG_FACTION_CHANGE))
        {
            if (player->GetTeamId() == TEAM_ALLIANCE)
                AddGossipItemFor(player, GOSSIP_ICON_CHAT,
                    "变成部落",
                    GOSSIP_SENDER_MAIN, ACTION_HORDE);
            else
                AddGossipItemFor(player, GOSSIP_ICON_CHAT,
                    "变成联盟",
                    GOSSIP_SENDER_MAIN, ACTION_ALLIANCE);
            hasItems = true;
        }

        if (!hasItems)
            return false;

        SendGossipMenuFor(player,
            player->GetGossipTextId(creature), creature->GetGUID());
        return true;
    }

    bool OnGossipSelect(Player* player, Creature* creature,
        uint32 /*sender*/, uint32 action) override
    {
        ClearGossipMenuFor(player);

        switch (action)
        {
            case ACTION_SHOP:
                creature->SetNpcFlag(UNIT_NPC_FLAG_VENDOR);
                player->GetSession()->SendListInventory(
                    creature->GetGUID());
                break;

            case ACTION_BANK:
                creature->SetNpcFlag(UNIT_NPC_FLAG_BANKER);
                player->GetSession()->SendShowBank(
                    creature->GetGUID());
                break;

            case ACTION_STABLE:
                creature->SetNpcFlag(UNIT_NPC_FLAG_STABLEMASTER);
                player->GetSession()->SendStablePet(
                    creature->GetGUID());
                break;

            case ACTION_RESET:
            {
                Player::ResetInstances(
                    player->GetGUID(), INSTANCE_RESET_ALL, false);
                ChatHandler(player->GetSession()).PSendSysMessage(
                    "副本已重置。\nInstances have been reset.");
                CloseGossipMenuFor(player);
                break;
            }

            case ACTION_COMBAT:
                player->CombatStop();
                CloseGossipMenuFor(player);
                break;

            case ACTION_XP_LOCK:
                player->SetPlayerFlag(PLAYER_FLAGS_NO_XP_GAIN);
                CloseGossipMenuFor(player);
                break;

            case ACTION_XP_UNLOCK:
                player->RemovePlayerFlag(PLAYER_FLAGS_NO_XP_GAIN);
                CloseGossipMenuFor(player);
                break;

            case ACTION_ALLIANCE:
                ChangeFactionInGame(player, TEAM_ALLIANCE);
                CloseGossipMenuFor(player);
                break;

            case ACTION_HORDE:
                ChangeFactionInGame(player, TEAM_HORDE);
                CloseGossipMenuFor(player);
                break;
        }

        return true;
    }
};

// WorldScript - init config on server start
class MultiServiceWorldScript : public WorldScript
{
public:
    MultiServiceWorldScript()
        : WorldScript("MultiServiceWorldScript", {
            WORLDHOOK_ON_BEFORE_CONFIG_LOAD
        }) { }

    void OnBeforeConfigLoad(bool reload) override
    {
        multiServiceConfig.Initialize(reload);
    }
};

void AddMultiServiceNPCScripts()
{
    new npc_multi_service();
    new MultiServiceWorldScript();
}

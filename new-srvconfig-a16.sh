#!/usr/bin/env bash

# Server Settings
ConfigFile="serverconfig.xml"
ServerPort="26900"
ServerPublic="true"
ServerName="My Server"
ServerMaxPlayerCount="8"
ServerDescription=""
ServerWebsiteURL=""
ServerReservedSlots="1"                 # allows admins to join a full server by reserving a slot
SaveGameFolder="/app/Saves"
ServerAdminFile="serveradmin.xml"
EACEnabled="true"
ServerDisabledNetworkProtocols=""       # comma separated list of networking protocols not to be used. Possible values: unet, raknet, steamnetworking

# Game Settings
GameWorld="Navezgane"                   # Navezgane, MP Wasteland Horde, MP Wasteland Skirmish, MP Wasteland War, Random Gen
GameName="MyGame"
GameDifficulty="2"
GameMode="GameModeSurvivalMP"           # GameModeSurvivalMP, GameModeSurvivalSP (MP has land protection)
PlayerKillingMode="2"                   # Player Killing Settings (0 = No Killing, 1 = Kill Allies Only, 2 = Kill Strangers Only, 3 = Kill Everyone)
BuildCreate="false"                     # cheat mode on/off
DayNightLength="60"                     # in minuites
PersistentPlayerProfiles="true"
DropOnDeath="0"                         # 0 = everything, 1 = toolbelt only, 2 = backpack only, 3 = delete all
DropOnQuit="0"                          # 0 = nothing, 1 = everything, 2 = toolbelt only, 3 = backpack only
LootAbundance="100"                     # percentage in whole numbers
LootRespawnDays="30"                    # days in whole numbers
AirDropFrequency="72"                   # How often airdrop occur in game-hours, 0 == never
AirDropMarker="true" 

# Control Panel Settings
ControlPanelEnabled="true"              # Enable/Disable the control panel
ControlPanelPort="8080"                 # Port of the control panel webpage
ControlPanelPassword=""

# Telnet Server Settings
TelnetEnabled="true"                    # Enable/Disable the control panel
TelnetPort="8081"                       # Port of the control panel webpage
TelnetPassword=""

# Zombie Settings
ZombiesRun="0"                          # 0 = default day/night walk/run, 1 = never run, 2 = always run
EnemySpawnMode="true"                   # true or false, false will prevent zombies from spawning
EnemyDifficulty="0"                     # 0 = Normal, 1 = Feral
BloodMoonEnemyCount="8"                 # Adjust this to get more enemies per player on blood-moons if your game stage is high enough. Game-stages are still determined by your party
MaxSpawnedZombies="60"                  # Making this number too large (more than about 80) may cause servers to run at poor framerates which will effect lag and play quality for clients.

# Objects Settings
BedrollDeadZoneSize="10"                # This is a 3 dimensional unit in meters from bedrolls that blocks zombie spawning.  Including zombies spawned from biomes, screamer hordes, blood moon hordes and even sleeper volumes that are within this distance.
MaxUncoveredMapChunksPerPlayer="4"      # Limit of per player uncovered map area configurable, client side defaults to 4 times the area of before A16 (128 km² instead of 32 km²)
BlockDurabilityModifier="100"           # percentage in whole numbers
LandClaimSize="7"                       # Size in blocks that is protected by a keystone
LandClaimDeadZone="30"                  # Keystones must be this many blocks apart (unless you are friends with the other player)
LandClaimExpiryTime="3"                 # The number of days a player can be offline before their claims expire and are no longer protected
LandClaimDecayMode="0"                  # Controls how offline players land claims decay. All claims have full protection for the first 24hrs. 0=Linear, 1=Exponential, 2=Full protection until claim is expired.
LandClaimOnlineDurabilityModifier="4"   # How much protected claim area block hardness is increased when a player is online. 0 means infinite (no damage will ever be taken). Default is 32x
LandClaimOfflineDurabilityModifier="4"  # How much protected claim area block hardness is increased when a player is offline. 0 means infinite (no damage will ever be taken). Default is 32x


tee << EOF > $ConfigFile
<?xml version="1.0"?>
<ServerSettings>
    <!-- Server Settings -->
    <property name="ServerPort" value="${ServerPort}"/>
    <property name="ServerIsPublic" value="${ServerPublic}"/>
    <property name="ServerName" value="${ServerName}"/>
    <property name="ServerPassword" value="${ServerPassword}"/>
    <property name="ServerMaxPlayerCount" value="${ServerMaxPlayerCount}"/>
    <property name="ServerDescription" value="${ServerDescription}"/>
    <property name="ServerWebsiteURL" value="${ServerWebsiteURL}"/>
    <property name="ServerReservedSlots" value="${ServerReservedSlots}"/>
    <!--property name="SaveGameFolder" value="${SaveGameFolder}" /-->
    <property name="AdminFileName" value="${ServerAdminFile}"/>
    <property name="EACEnabled" value="${EACEnabled}"/>
    <!-- <property name="ServerDisabledNetworkProtocols" value=""/> -->

    <!-- Control Panel Settings -->
    <property name="ControlPanelEnabled" value="${ControlPanelEnabled}"/>
    <property name="ControlPanelPort" value="${ControlPanelPort}"/>
    <property name="ControlPanelPassword" value="${ControlPanelPassword}"/>

    <!-- Telnet Server Settings -->
    <property name="TelnetEnabled" value="${TelnetEnabled}"/>
    <property name="TelnetPort" value="${TelnetPort}"/>
    <property name="TelnetPassword" value="${TelnetPassword}"/>

    <!-- Game Settings -->
    <property name="GameWorld" value="${GameWorld}"/>
    <property name="GameName" value="${GameName}"/>
    <property name="GameDifficulty" value="${GameDifficulty}"/>
    <property name="GameMode" value="${GameMode}"/>
    <property name="PlayerKillingMode" value="${PlayerKillingMode}" />
    <property name="BuildCreate" value="${BuildCreate}" />
    <property name="DayNightLength" value="${DayNightLength}" />
    <property name="PersistentPlayerProfiles" value="${PersistentPlayerProfiles}" />
    <property name="DropOnDeath" value="${DropOnDeath}" />
    <property name="DropOnQuit" value="${DropOnQuit}" />
    <property name="LootAbundance" value="${LootAbundance}" />
    <property name="LootRespawnDays" value="${LootRespawnDays}" />
    <property name="AirDropFrequency" value="${AirDropFrequency}"/>
    <property name="AirDropMarker" value="${AirDropMarker}"/>

    <!-- Zombie Settings -->
    <property name="ZombiesRun" value="${ZombiesRun}" />
    <property name="EnemySpawnMode" value="${EnemySpawnMode}" />
    <property name="EnemyDifficulty" value="${EnemyDifficulty}" />
    <property name="BloodMoonEnemyCount" value="${BloodMoonEnemyCount}" />
    <property name="MaxSpawnedZombies" value="${MaxSpawnedZombies}"/>

    <!-- Objects Settings -->
    <property name="BedrollDeadZoneSize" value="${BedrollDeadZoneSize}" />
    <property name="MaxUncoveredMapChunksPerPlayer" value="${MaxUncoveredMapChunksPerPlayer}" />
    <property name="BlockDurabilityModifier" value="${BlockDurabilityModifier}" />
    <property name="LandClaimSize" value="${LandClaimSize}"/>
    <property name="LandClaimDeadZone" value="${LandClaimDeadZone}"/>
    <property name="LandClaimExpiryTime" value="${LandClaimExpiryTime}"/>
    <property name="LandClaimDecayMode" value="${LandClaimDecayMode}"/>
    <property name="LandClaimOnlineDurabilityModifier" value="${LandClaimOnlineDurabilityModifier}"/>
    <property name="LandClaimOfflineDurabilityModifier" value="${LandClaimOfflineDurabilityModifier}"/> 
</ServerSettings>
EOF

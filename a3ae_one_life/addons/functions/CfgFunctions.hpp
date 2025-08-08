class CfgFunctions {
    class A3A {
        class AI {
            class captureX {
                file = QPATHTOFOLDER(AI\fn_captureX.sqf);
            };
        };
        class Ammunition {
            class loot {
                file = QPATHTOFOLDER(Ammunition\fn_loot.sqf);
            };
        };
        class Base {
            class buildHQ {
                file = QPATHTOFOLDER(Base\fn_buildHQ.sqf);
            };
            class flagAction {
                file = QPATHTOFOLDER(Base\fn_flagAction.sqf);
            };
            class garbageCleaner {
                file = QPATHTOFOLDER(Base\fn_garbageCleaner.sqf);
            };
            class markerChange {
                file = QPATHTOFOLDER(Base\fn_markerChange.sqf);
            };
            class mrkWin {
                file = QPATHTOFOLDER(Base\fn_mrkWin.sqf);
            };
            class onPlayerDisconnect {
                file = QPATHTOFOLDER(Base\fn_onPlayerDisconnect.sqf);
            };
            class resourceCheckSkipTime {
                file = QPATHTOFOLDER(Base\fn_resourceCheckSkipTime.sqf);
            };
            class statistics {
                file = QPATHTOFOLDER(Base\fn_statistics.sqf);
            };
            class vehicleBoxRestore {
                file = QPATHTOFOLDER(Base\fn_vehicleBoxRestore.sqf);
            };
        };
        class Dialogs {
            class canSkipTime {
                file = QPATHTOFOLDER(Dialogs\fn_canSkipTime.sqf);
            };
        };
        class init {
            class checkCampaignEnd {
                file = QPATHTOFOLDER(init\fn_checkCampaignEnd.sqf);
            };
            class initClient {
                file = QPATHTOFOLDER(init\fn_initClient.sqf);
            };
            class initUtilityItems {
                file = QPATHTOFOLDER(init\fn_initUtilityItems.sqf);
            };
            class initVarServer {
                file = QPATHTOFOLDER(init\fn_initVarServer.sqf);
            };
            class resourceCheck {
                file = QPATHTOFOLDER(init\fn_resourceCheck.sqf);
            };
        };
        class Missions {
            class convoy {
                file = QPATHTOFOLDER(Missions\fn_convoy.sqf);
            };
            class RES_Prisoners {
                file = QPATHTOFOLDER(Missions\fn_RES_Prisoners.sqf);
            };
            class RES_Refugees {
                file = QPATHTOFOLDER(Missions\fn_RES_Refugees.sqf);
            };
        };
        class OrgPlayers {
            class playerLeash {
                file = QPATHTOFOLDER(OrgPlayers\fn_playerLeash.sqf);
            };
        };
        class proxy {
            class onPlayerRespawn {
                file = QPATHTOFOLDER(proxy\fn_onPlayerRespawn.sqf);
            };
        };
        class REINF {
            class controlHCSquad {
                file = QPATHTOFOLDER(REINF\fn_controlHCSquad.sqf);
            };
            class controlUnit {
                file = QPATHTOFOLDER(REINF\fn_controlUnit.sqf);
            };
        };
        class Save {
            class loadServer {
                file = QPATHTOFOLDER(Save\fn_loadServer.sqf);
            };
            class saveLoop {
                file = QPATHTOFOLDER(Save\fn_saveLoop.sqf);
            };
        };
        class UtilityItems {
            class remainingAmmo {
                file = QPATHTOFOLDER(UtilityItems\fn_remainingAmmo.sqf);
            };
        };
    };
    class A3A_GUI {
        class GUI {
            class buyVehicleTabs {
                file = QPATHTOFOLDER(GUI\fn_buyVehicleTabs.sqf);
            };
            class playerManagementTab {
                file = QPATHTOFOLDER(GUI\fn_playerManagementTab.sqf);
            };
            class playerTab {
                file = QPATHTOFOLDER(GUI\fn_playerTab.sqf);
            };
        };
    };
    class JN {
        class JNA {
            class arsenal_addItem {
                file = QPATHTOFOLDER(JNA\fn_arsenal_addItem.sqf);
            };
            class arsenal_loadInventory {
                file = QPATHTOFOLDER(JNA\fn_arsenal_loadInventory.sqf);
            };
        };
    };
    class HR_GRG {
        class Core {
            class toggleConfirmBttn {
                file = QPATHTOFOLDER(Core\fn_toggleConfirmBttn.sqf);
            };
        };
        class Public {
            class addVehicle {
                file = QPATHTOFOLDER(Public\fn_addVehicle.sqf);
            };
            class initGarage {
                file = QPATHTOFOLDER(Public\fn_initGarage.sqf);
            };
        };
        class StatePreservation {
            class getAmmoCargo {
                file = QPATHTOFOLDER(StatePreservation\fn_getAmmoCargo.sqf);
            };
            class getState {
                file = QPATHTOFOLDER(StatePreservation\fn_getState.sqf);
            };
            class setAmmoCargo {
                file = QPATHTOFOLDER(StatePreservation\fn_setAmmoCargo.sqf);
            };
            class setState {
                file = QPATHTOFOLDER(StatePreservation\fn_setState.sqf);
            };
        };
    };

    class ADDON {
        class Quarantine {
            file = QPATHTOFOLDER(Quarantine);
            class addToBanList {};
            class checkIfExpired {};
            class cleanUp {};
            class clientCutscene {};
            class enterQuarantine {};
            class exitQuarantine {};
            class extendTimers {};
            class findDogTags {};
            class getTagsAndBodies {};
            class getBanTimeRemaining {};
            class handleListRequest {};
            class manageSpectator {};
            class manageFlagAccess {};
            class nukeEffects {};
            class removeFromBanList {};
            class releaseAllPlayers {};
            class reviveRandom {};
            class serverCutscene {};
            class statBarCountdown {};
            class subtitledAudio {};
            class unlockedToArsenal {};
            class viewDeadList {};
            class viewGameSpectators {};
        };
    };
};

class CfgFunctions {
    class A3A {
        class AI {
            class captureX {
                file = QPATHTOFOLDER(AI\fn_captureX.sqf);
            };
        };
        class Base {
            class flagAction {
                file = QPATHTOFOLDER(Base\fn_flagAction.sqf);
            };
            class garbageCleaner {
                file = QPATHTOFOLDER(Base\fn_garbageCleaner.sqf);
            };
            class onPlayerDisconnect {
                file = QPATHTOFOLDER(Base\fn_onPlayerDisconnect.sqf);
            };
            class resourceCheckSkipTime {
                file = QPATHTOFOLDER(Base\fn_resourceCheckSkipTime.sqf);
            };
        };
        class init {
            class initClient {
                file = QPATHTOFOLDER(init\fn_initClient.sqf);
            };
            class initUtilityItems {
                file = QPATHTOFOLDER(init\fn_initUtilityItems.sqf);
            };
            class initVarServer {
                file = QPATHTOFOLDER(init\fn_initVarServer.sqf);
            };
        };
        class Missions {
            class RES_Prisoners {
                file = QPATHTOFOLDER(Missions\fn_RES_Prisoners.sqf);
            };
            class RES_Refugees {
                file = QPATHTOFOLDER(Missions\fn_RES_Refugees.sqf);
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
            class savePlayer {
                file = QPATHTOFOLDER(Save\fn_savePlayer.sqf);
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
            class playerManagementTab {
                file = QPATHTOFOLDER(GUI\fn_playerManagementTab.sqf);
            };
        };
    };
    class HR_GRG {
        class Public {
            class addVehicle {
                file = QPATHTOFOLDER(Public\fn_addVehicle.sqf);
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
            class addActionRevive {};
            class addToBanList {};
            class checkIfExpired {};
            class cleanUp {};
            class enterQuarantine {};
            class exitQuarantine {};
            class extendTimers {};
            class findDogTags {};
            class getTagsAndBodies {};
            class removeActionRevive {};
            class removeActionReviveServer {};
            class removeFromBanList {};
            class releaseAllPlayers {};
            class reviveRandom {};
        };
    };
};

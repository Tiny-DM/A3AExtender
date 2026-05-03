class CfgFunctions {
    class A3A {
        class AI {
            class captureX {
                file = QPATHTOFOLDER(AI\fn_captureX.sqf);
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
            class getRoleCap {
                file = QPATHTOFOLDER(Base\fn_getRoleCap.sqf);
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
        class CREATE {
            class NATOinit {
                file = QPATHTOFOLDER(CREATE\fn_NATOinit.sqf);
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
            class initServer {
                file = QPATHTOFOLDER(init\fn_initServer.sqf);
            };
            class initVarServer {
                file = QPATHTOFOLDER(init\fn_initVarServer.sqf);
            };
            class resourceCheck {
                file = QPATHTOFOLDER(init\fn_resourceCheck.sqf);
            };
        };
        class Intel {
            class selectIntel {
                file = QPATHTOFOLDER(Intel\fn_selectIntel.sqf);
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
        class Supports {
            class showInterceptedSetupCall {
                file = QPATHTOFOLDER(Supports\fn_showInterceptedSetupCall.sqf);
            };
            class showInterceptedSupportCall {
                file = QPATHTOFOLDER(Supports\fn_showInterceptedSupportCall.sqf);
            };
            class SUP_artillery {
                file = QPATHTOFOLDER(Supports\fn_SUP_artillery.sqf);
            };
            class SUP_carpetBombs {
                file = QPATHTOFOLDER(Supports\fn_SUP_carpetBombs.sqf);
            };
        };
    };
    class A3A_GUI {
        class GUI {
            class playerManagementTab {
                file = QPATHTOFOLDER(GUI\fn_playerManagementTab.sqf);
            };
            class playerTab {
                file = QPATHTOFOLDER(GUI\fn_playerTab.sqf);
            };
        };
        class roleSelect {
            class roleSelectDialog {
                file = QPATHTOFOLDER(roleSelect\fn_roleSelectDialog.sqf);
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
            class nukeEffects {};
            class releaseAllPlayers {};
            class removeFromBanList {};
            class revealDeadInfo {};
            class reviveRandom {};
            class serverCutscene {};
            class statBarCountdown {};
            class subtitledAudio {};
            class unlockedToArsenal {};
            class viewDeadList {};
            class viewGameSpectators {};
            class vnx_ac119bomb {};
            class vnx_ac119orbit {};
        };
    };
};

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
        };
        class Dialogs {
            class fastTravelRadio {
                file = QPATHTOFOLDER(Dialogs\fn_fastTravelRadio.sqf);
            };
        };
        class init {
            class initClient {
                file = QPATHTOFOLDER(init\fn_initClient.sqf);
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
                file = QPATHTOFOLDER(REINF\fn_controlUnit.sqf);
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
    };

    class ADDON {
        class Quarantine {
            file = QPATHTOFOLDER(Quarantine);
            class addActionRevive {};
            class addToBanList {};
            class cleanUp {};
            class enterQuarantine {};
            class exitQuarantine {};
            class findDogTags {};
            class getTagsAndBodies {};
            class removeActionRevive {};
            class removeActionReviveServer {};
            class removeFromBanList {};
            class reviveRandom {};
        };
    };
};

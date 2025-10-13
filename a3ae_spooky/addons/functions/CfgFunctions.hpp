/*
class CfgFunctions {
    //be carefull when overwiriting functions as version updates can brake your exstension
    class A3A {
        class Missions {
            class AS_Official {
                file = QPATHTOFOLDER(Missions\fn_as_Official.sqf);
            };
        };
    };

    //your own functions should be keept here
    class ADDON {
        class Events { //these two functions are used to demonstrate use of events
            file = QPATHTOFOLDER(Events);
            class addExampleEventListener { postInit = 1; };
            class AIVehInit {};
        }
    };
};
*/

class CfgFunctions {
    class A3A {
        class Base {
            class markerChange {
                file = QPATHTOFOLDER(overwrites\Base\fn_initSupports.sqf);
            };
        };
        class Create {
            class createAIControls {
                file = QPATHTOFOLDER(overwrites\CREATE\fn_createAIControls.sqf);
            };
            class createAttackVehicle {
                file = QPATHTOFOLDER(overwrites\CREATE\fn_createAttackVehicle.sqf);
            };
            class singleAttack {
                file = QPATHTOFOLDER(overwrites\CREATE\fn_singleAttack.sqf);
            };
        };
        class EventHandler {
            class addArtilleryTrailEH {
                file = QPATHTOFOLDER(overwrites\EventHandler\fn_addArtilleryTrailEH.sqf);
            };
        };
        // EXTRA SUPPORTS GO HERE - THEY NEED TO BE PREFACED WITH A3A TO GET PICKED UP
        class Supports {
            class initSupports {
                file = QPATHTOFOLDER(customFuncs\spooky\fn_initSupports.sqf);
            };
        };
    };

    //your own functions should be keept here
    class ADDON {
        class customSup {
            class SUP_gasAirstrike {
                file = QPATHTOFOLDER(customFuncs\customSup\fn_SUP_gasAirstrike.sqf);
            };
            class SUP_gasCarpetBombs {
                file = QPATHTOFOLDER(customFuncs\customSup\fn_SUP_gasCarpetBombs.sqf);
            };
        };
        class gas {
            class gasAir {
                file = QPATHTOFOLDER(customFuncs\gas\fn_gasAir.sqf);
            };
            class gasIDF {
                file = QPATHTOFOLDER(customFuncs\gas\fn_gasIDF.sqf);
            };
        };
        class spooky {
            class giveCBRNGear {
                file = QPATHTOFOLDER(customFuncs\spooky\fn_giveCBRNGear.sqf);
            };
            class handleSupports {
                file = QPATHTOFOLDER(customFuncs\spooky\fn_handleSupports.sqf);
            };
            class prepZombieDrop {
                file = QPATHTOFOLDER(customFuncs\spooky\fn_prepZombieDrop.sqf);
            };
        };
    };
};

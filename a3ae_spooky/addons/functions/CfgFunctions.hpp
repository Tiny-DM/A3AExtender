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
        class AI {
            class airbomb {
                file = QPATHTOFOLDER(overwrites\AI\fn_airbomb.sqf);
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
        class Supports {
            class initSupports {
                file = QPATHTOFOLDER(overwrites\Supports\fn_initSupports.sqf);
            };
        };
        // EXTRA SUPPORTS GO HERE - THEY NEED TO BE PREFACED WITH A3A TO GET PICKED UP
        
        class customSup {
            class SUP_gasAirstrike {
                file = QPATHTOFOLDER(customFuncs\customSup\fn_SUP_gasAirstrike.sqf);
            };
            class SUP_gasCarpetBombs {
                file = QPATHTOFOLDER(customFuncs\customSup\fn_SUP_gasCarpetBombs.sqf);
            };
            class SUP_gasAirstrikeRoutine {
                file = QPATHTOFOLDER(customFuncs\customSup\fn_SUP_gasAirstrikeRoutine.sqf);
            };

            class SUP_gasMortar {
                file = QPATHTOFOLDER(customFuncs\customSup\fn_SUP_gasMortar.sqf);
            };
            class SUP_gasArtillery {
                file = QPATHTOFOLDER(customFuncs\customSup\fn_SUP_gasArtillery.sqf);
            };
            class SUP_gasMortarRoutine {
                file = QPATHTOFOLDER(customFuncs\customSup\fn_SUP_gasMortarRoutine.sqf);
            };
        };
    };

    //your own functions should be keept here
    class ADDON {
        
        class gas {
            class gasAir {
                file = QPATHTOFOLDER(customFuncs\gas\fn_gasAir.sqf);
            };
            class gasDeploy {
                file = QPATHTOFOLDER(customFuncs\gas\fn_gasDeploy.sqf);
            };
            class gasDamage {
                file = QPATHTOFOLDER(customFuncs\gas\fn_gasDamage.sqf);
            };
            class gasIDF {
                file = QPATHTOFOLDER(customFuncs\gas\fn_gasIDF.sqf);
            };
            class gasParticles {
                file = QPATHTOFOLDER(customFuncs\gas\fn_gasParticles.sqf);
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



/*
class CfgFunctions {
    class A3A {
        class Ammunition {
            class categoryOverrides {
                file = QPATHTOFOLDER(Ammunition\fn_categoryOverrides.sqf);
            };
            class equipmentSort {
                file = QPATHTOFOLDER(Ammunition\fn_equipmentSort.sqf);
            };
            class fillLootCrate {
                file = QPATHTOFOLDER(Ammunition\fn_fillLootCrate.sqf);
            };
        };
    };
};
*/
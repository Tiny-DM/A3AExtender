#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = COMPONENT_NAME;
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"A3A_core"};
        author = AUTHOR;
        authors[] = { AUTHORS };
        authorUrl = "";
        VERSION_CONFIG;
    };
};

class A3A {
    #include "Params.hpp"
};

class CfgAmmo {

    class ammo_bomb_SDB;
    class ammo_bomb_Gas : ammo_bomb_SDB {
        indirectHit = 15;
        indirectHitRange = 3;
        explosionEffects = "MineExplosion";
    };
};
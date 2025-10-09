//RF - config.cpp

#include "..\script_component.hpp"

class CfgPatches 
{
    class PATCHNAME(RF) 
    {
        name = COMPONENT_NAME;
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"A3_Data_F_AoW_Loadorder","PLP_UNARetex"};
        author = AUTHOR;
        authors[] = { AUTHORS };
        authorUrl = "";
        VERSION_CONFIG;
        skipWhenMissingDependencies = 1;
    };
};

class CfgVehicles {
    #include "una_retex.hpp"
};
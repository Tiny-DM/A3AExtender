#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = COMPONENT_NAME;
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {QDOUBLES(PREFIX,core)};
        author = AUTHOR;
        authors[] = { AUTHORS };
        authorUrl = "";
        VERSION_CONFIG;
    };
};

class A3A { //global overwrite or inclussion of new navGrids or map info
    #include "mapInfoGlobal.hpp"
    #include "NavGrid.hpp"
};

class CfgMissions
{
    class MPMissions
    {
        class Antistasi_MoreSlots_Altis
        {
            briefingName = "Antistasi 3.9.0 - More Slots";
            directory = QCPATHTO(Antistasi_MoreSlots_Altis.Altis);
        };
        class Antistasi_MoreSlots_Cherno
        {
            briefingName = "Antistasi 3.9.0 - More Slots";
            directory = QCPATHTO(Antistasi_MoreSlots_Cherno.chernarus_summer);
        };
        class Antistasi_MoreSlots_Cherno2020
        {
            briefingName = "Antistasi 3.9.0 - More Slots";
            directory = QCPATHTO(Antistasi_MoreSlots_Cherno2020.cup_chernarus_A3);
        };
        class Antistasi_MoreSlots_Enoch
        {
            briefingName = "Antistasi 3.9.0 - More Slots";
            directory = QCPATHTO(Antistasi_MoreSlots_Enoch.Enoch);
        };
        class Antistasi_MoreSlots_Napf
        {
            briefingName = "Antistasi 3.9.0 - More Slots";
            directory = QCPATHTO(Antistasi_MoreSlots_Napf.Napf);
        };
        class Antistasi_MoreSlots_vt7
        {
            briefingName = "Antistasi 3.9.0 - More Slots";
            directory = QCPATHTO(Antistasi_MoreSlots_vt7.vt7);
        };
    };
};

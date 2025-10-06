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

class CfgVehicles {

    class a3ae_una_MRAP_hmg_F : {

    };
    class a3ae_una_MRAP_gmg_F : {

    };

    class a3ae_una_Marshall_40mm_slat : B_UN_APC_Wheeled_01_cannon_lxWS {

    };
    class a3ae_una_Marshall_ATGM_slat : APC_Wheeled_01_atgm_base_lxWS {

    };
    class a3ae_una_HEMTT_flatbed : B_Truck_01_flatbed_F {

    };

    class a3ae_una_Pickup_Covered : B_GEN_Pickup_covered_rf {

    };
    class a3ae_una_Pickup_Comms : I_Pickup_Comms_rf {

    };
    class a3ae_una_Pickup_hmg : I_Pickup_hmg_rf {

    };
    class a3ae_una_Pickup_rcws : I_Pickup_rcws_rf {

    };
    class a3ae_una_Pickup_MRL :  I_C_Pickup_mrl_rf {

    };
    class a3ae_una_Pickup_minigun : Pickup_01_minigun_base_rf {

    };
    class a3ae_una_Pickup_water : C_IDAP_Pickup_water_rf {

    };
    class a3ae_una_Pickup_fuel : B_G_Pickup_fuel_rf {

    };
    class a3ae_una_Pickup_repair : B_G_Pickup_repair_rf {

    };
};
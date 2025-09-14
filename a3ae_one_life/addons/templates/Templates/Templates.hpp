class Templates {
    class Vanilla_Base;
    class Vanilla_LDF : Vanilla_Base { // overwrite existing template
        basepath = QPATHTOFOLDER(Templates\Vanilla);
        file = "Vanilla_AI_LDF";
    };
    class VN_Base;
    class VN_MACV : VN_Base {
        basepath = QPATHTOFOLDER(Templates\VN);
        file = "VN_AI_MACV";
    };
    class VN_PAVN : VN_Base {
        basepath = QPATHTOFOLDER(Templates\VN);
        file = "VN_AI_PAVN";
    };
    class VN_POF : VN_Base {
        basepath = QPATHTOFOLDER(Templates\VN);
        file = "VN_Reb_POF";
    };
    class VN_Civ : VN_Base {
        basepath = QPATHTOFOLDER(Templates\VN);
        file = "VN_Civ";
    };
};
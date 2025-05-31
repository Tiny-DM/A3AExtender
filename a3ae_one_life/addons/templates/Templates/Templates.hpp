class Templates {
    class RHS_Base;
    class 3CBF_Base;
    class RHS_HIDF : RHS_Base { // overwrite existing template
        basepath = QPATHTOFOLDER(Templates\RHS);
        file = "RHS_AI_HIDF";
    };

    class 3CB_Reb_ION : 3CBF_Base {
        basepath = QPATHTOFOLDER(Templates\3CB);
        file = "3CB_Reb_ION";
    };
};
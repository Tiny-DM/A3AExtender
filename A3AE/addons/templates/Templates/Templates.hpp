class Templates {
    class WS_Base; //import Vanilla_Base from A3A to use with defining a new vanilla template

    class WS_UNA : WS_Base
    {
        basepath = QPATHTOFOLDER(Templates\WS); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Occ"; //the side the faction defaults to, one of the following: Inv, Occ, Reb, Civ
        flagTexture = "A3\Data_F\Flags\Flag_CSAT_CO.paa"; //path to an icon to be displayed in the selector
        name = "UNA"; //the name shown in the selector
        file = "WS_AI_UNA"; //the template file name
        maps[] = {}; //if this template should be prioritized on any maps (case sensetive to worldName)
        climate[] = {}; //climate that the template is meant for
    };
};

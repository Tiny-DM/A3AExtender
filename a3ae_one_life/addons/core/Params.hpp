class Params
{
    class SpacerOneLifeOptions
    {
        title = "";
        values[] = {""};
        texts[] = {""};
        default = "";
    };
    class TitleOneLifeOptions
    {
        title = "ONE LIFE OPTIONS";
        values[] = {""};
        texts[] = {""};
        default = "";
    };
    class A3A_oneLife
    {
        title = "Extender Parameter: One Life Enable";
        tooltip = "This option is NOT meant for single-player play. Set the position with A3A_prisonPos. Do NOT enable this unless you know what you're doing! Well, you downloaded this extender, so you probably do.";
        values[] = {0,1};
        texts[] = {$STR_antistasi_dialogs_generic_button_no_tooltip,$STR_antistasi_dialogs_generic_button_yes_text};
        default = 0;
    };
    class A3A_oneLifePOWReviveChance
    {
        title = "Extender Parameter: POW Recruit Revive Chance";
        tooltip = "Chance that, when a surrender is recruited, a player will be revived from the One Life prison";
        values[] = {0, 25, 50, 75, 100};
        texts[] = {"0","25","50","75","100"};
        default = 25;
    };
    class A3A_oneLifeExpireTimer
    {
        title = "Extender Parameter: Automatic Expiration Timer";
        tooltip = "In how long a ban will automatically expire";
        values[] = {-1, 1, 3, 6, 24};
        texts[] = {"Never","1 hour","3 hours","6 hours","24 hours"};
        default = -1;
    };
    class A3A_oneLifeViewPerms
    {
        title = "Extender Parameter: Who can view the banlist from map";
        values[] = {0, 1, 2};
        texts[] = {"Logged admin","Commander","Everyone"};
        default = 0;
    };
};

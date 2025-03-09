#include "..\script_component.hpp"
FIX_LINE_NUMBERS()

private _titleStr = "One Life";

#define ADMIN_TIME 5
#define BODY_TIME 30
#define TAGS_TIME 60
#define POW_TIME 60

params ["_reason"];

_waitTime = switch (_reason) do 
{
    case ("ADMIN"):
    {
        [_titleStr,format ["A divine favor has transpired.<br/><br/>You have been revived.<br/>You will return to base in %1 seconds.",ADMIN_TIME]] call A3A_fnc_customHint;
        ADMIN_TIME
    };
    case ("BODY"):
    {
        [_titleStr,format ["Your body was recovered.<br/><br/>You have been revived.<br/>You will return to base in %1 seconds.",BODY_TIME]] call A3A_fnc_customHint;
        BODY_TIME
    };
    case ("TAGS"):
    {
        [_titleStr,format ["Your dog tags were brought back.<br/><br/>You have been revived.<br/>You will return to base in %1 seconds.",TAGS_TIME]] call A3A_fnc_customHint;
        TAGS_TIME
    };
    case ("POW"):
    {
        [_titleStr,format ["A POW was converted to the rebel side.<br/><br/>You have been revived.<br/>You will return to base in %1 seconds.",TAGS_TIME]] call A3A_fnc_customHint;
        POW_TIME
    };
};
sleep _waitTime;

player setPosATL (getMarkerPos respawnTeamPlayer);

[_titleStr,"You have been revived and returned to base."] call A3A_fnc_customHint;

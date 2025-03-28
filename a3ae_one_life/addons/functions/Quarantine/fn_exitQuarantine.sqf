// Ran on server

#include "..\script_component.hpp"
FIX_LINE_NUMBERS()

private _titleStr = "One Life";

#define ADMIN_TIME 5
#define BODY_TIME 10
#define TAGS_TIME 15
#define POW_TIME 30

params ["_player",["_reason",""]];
private _uid = getplayerUID _player;
private _name = name _player;

Info_3("Freeing %1 from one-life jail [UID: %2] for reason %3",_name,_uid,_reason);

_waitTime = switch (_reason) do
{
    case ("BODY"):
    {
        [_titleStr,format ["Your body was recovered.<br/><br/>You have been revived.<br/>You will return to base in %1 seconds.",BODY_TIME]] remoteExec ["A3A_fnc_customHint",_player];
        BODY_TIME
    };
    case ("TAGS"):
    {
        [_titleStr,format ["Your dog tags were brought back.<br/><br/>You have been revived.<br/>You will return to base in %1 seconds.",TAGS_TIME]] remoteExec ["A3A_fnc_customHint",_player];
        TAGS_TIME
    };
    case ("POW"):
    {
        [_titleStr,format ["A POW was converted to the rebel side.<br/><br/>You have been revived.<br/>You will return to base in %1 seconds.",POW_TIME]] remoteExec ["A3A_fnc_customHint",_player];
        POW_TIME
    };
    default {
        [_titleStr,format ["A divine favor has transpired.<br/><br/>You have been revived.<br/>You will return to base in %1 seconds.",ADMIN_TIME]] remoteExec ["A3A_fnc_customHint",_player];
        ADMIN_TIME
    };
};
sleep _waitTime;

[_uid] call A3AE_ONE_LIFE_FUNCTIONS_fnc_removeFromBanList;
[_player] call A3AE_ONE_LIFE_FUNCTIONS_fnc_removeActionReviveServer;

_player setPosATL (getMarkerPos respawnTeamPlayer);

[_titleStr,"You have been revived and returned to base."] remoteExec ["A3A_fnc_customHint",_player];

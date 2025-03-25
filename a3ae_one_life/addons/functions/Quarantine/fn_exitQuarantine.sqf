// Ran on server

#include "..\script_component.hpp"
FIX_LINE_NUMBERS()

private _titleStr = "One Life";

#define ADMIN_TIME 5
#define BODY_TIME 6
#define TAGS_TIME 7
#define POW_TIME 8

params ["_player",["_reason",""]];

private _softBannedUIDList = A3A_softBannedUIDList;
private _pos = (_softBannedUIDList findIf {_x#0 == getPlayerUID _player});
private _banInfo = _softBannedUIDList#_pos;

Info_3("Freeing %1 from one-life jail [UID: %2] for reason %3",_banInfo#1,_banInfo#0,_reason);

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
        [_titleStr,format ["A POW was converted to the rebel side.<br/><br/>You have been revived.<br/>You will return to base in %1 seconds.",TAGS_TIME]] remoteExec ["A3A_fnc_customHint",_player];
        POW_TIME
    };
    default {
        [_titleStr,format ["A divine favor has transpired.<br/><br/>You have been revived.<br/>You will return to base in %1 seconds.",ADMIN_TIME]] remoteExec ["A3A_fnc_customHint",_player];
        ADMIN_TIME
    };
};
sleep _waitTime;

if (_pos != -1) then {
    _softBannedUIDList deleteAt _pos;
    missionNamespace setVariable ["A3A_softBannedUIDList",_softBannedUIDList,true];
};

_player setPosATL (getMarkerPos respawnTeamPlayer);

[_titleStr,"You have been revived and returned to base."] remoteExec ["A3A_fnc_customHint",_player];

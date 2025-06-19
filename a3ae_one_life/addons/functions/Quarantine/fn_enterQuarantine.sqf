// Ran on server
#include "..\script_component.hpp"
FIX_LINE_NUMBERS()

private _titleStr = "One Life";
private _entryStr = "You have died. You find yourself in a mystical, faraway land, free of the government's cruelty...<br/><br/>If your body or dog tags are brought back to base, you will be revived.<br/>If a POW is recruited, you have a chance of being revived.";

params ["_player", ["_checkOnList",false]];

if (_checkOnList && ((A3A_softBannedUIDList findIf {_x#0 == getPlayerUID player}) == -1)) exitWith {false};

private _prisonPos = A3A_prisonPos;
private _uid = getPlayerUID _player;
private _name = name _player;
if ([_uid] call A3AE_ONE_LIFE_FUNCTIONS_fnc_checkIfExpired) exitWith {Info_1("Timer expired for UID %1 player released!",_uid)};

_player setPosATL _prisonPos;

[_titleStr, _entryStr] remoteExec ["A3A_fnc_customHint",_player];

Info_2("Quarantined %1 [UID: %2]",_name,_uid);  

[_uid, _name] remoteExecCall ["A3AE_ONE_LIFE_FUNCTIONS_fnc_addToBanList",2];
["ADD"] remoteExecCall ["A3AE_ONE_LIFE_FUNCTIONS_fnc_manageSpectator",_player];

waitUntil {sleep 0.1; ((_player distance2D _prisonPos) < 500)}; // make sure they have moved first

while {(((missionNamespace getVariable ["A3A_softBannedUIDList",[]]) findIf {_x#0 == getPlayerUID _player}) > -1) && (isPlayer _player)} do {
    if ((_player distance2D _prisonPos) > 500) then {
        _player setPosATL _prisonPos;
        [_titleStr, "Is your peaceful abode not good enough for you?<br/><br/>You have been returned to the island."] remoteExec ["A3A_fnc_customHint",_player];
    };
    sleep 2; // distance check causes issues if ran instantly; position is kept globally, but player may not have moved
};
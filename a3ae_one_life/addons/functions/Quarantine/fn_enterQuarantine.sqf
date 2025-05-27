// Ran on server
#include "..\script_component.hpp"
FIX_LINE_NUMBERS()

private _titleStr = "One Life";
private _entryStr = "You have died. You find yourself in a mystical, faraway land, free of the government's cruelty...<br/><br/>If your body or dog tags are brought back to base, you will be revived.<br/>If a POW is recruited, you have a chance of being revived.";

params ["_player"];

private _softBannedUIDList = A3A_softBannedUIDList;
private _prisonPos = A3A_prisonPos;
private _lastAdmin = objNull;
_admin = [] call A3A_fnc_getAdmin;
private _uid = getPlayerUID _player;
private _name = name _player;
if ([_uid] call A3AE_ONE_LIFE_FUNCTIONS_fnc_checkIfExpired) exitWith {Info_1("Timer expired for UID %1 player released!",_uid)};

_player setPosATL _prisonPos;

[_titleStr, _entryStr] remoteExec ["A3A_fnc_customHint",_player];

Info_2("Quarantined %1 [UID: %2]",_name,_uid);  

[_uid, _name] call A3AE_ONE_LIFE_FUNCTIONS_fnc_addToBanList;
["ADD"] remoteExecCall ["A3AE_ONE_LIFE_FUNCTIONS_fnc_manageSpectator",_player];

private _actions = actionIDs _admin;
private _hasAction = false;
if ((!isNil "_actions") && {!(_actions isEqualTo [])}) then {
    private _actionFrag = name _player;
    _hasAction = ((_actions findIf {_actionFrag in ((_admin actionParams _x)#0)}) != -1);
};
if (_hasAction) exitWith {};

// Everything after this is action related

Debug_2("Adding revive actions for %1 [UID: %2]",_name,_uid);

waitUntil {sleep 0.1; ((_player distance2D _prisonPos) < 500)}; // make sure they have moved first

private _lastAdmin = objNull;
_admin = [] call A3A_fnc_getAdmin;

while {(((missionNamespace getVariable ["A3A_softBannedUIDList",_softBannedUIDList]) findIf {_x#0 == getPlayerUID _player}) > -1) && (isPlayer _player)} do {
    _admin = [] call A3A_fnc_getAdmin;  // Refreshes in case the admin logged in.
    if !(_admin isEqualTo _lastAdmin) then {  // Admin Change
        if (!isNull _lastAdmin) then {
            [_player] remoteExecCall ["A3AE_ONE_LIFE_FUNCTIONS_fnc_removeActionRevive",_lastAdmin,false];
            //[_actionID] remoteExecCall ["removeAction",_lastAdmin,false];
        };
        if (!isNull _admin) then {
            [_player] remoteExecCall ["A3AE_ONE_LIFE_FUNCTIONS_fnc_addActionRevive",_admin,false];
            //_actionID = [_addAction_parameters] remoteExecCall ["addAction",_false];
        };
        _lastAdmin = _admin;
    };
    if ((_player distance2D _prisonPos) > 500) then {
        _player setPosATL _prisonPos;
        [_titleStr, "Is your peaceful abode not good enough for you?<br/><br/>You have been returned to the island."] remoteExec ["A3A_fnc_customHint",_player];
    };
    sleep 10; // distance check causes issues if ran instantly; position is kept globally, but player may not have moved
};

[_player] remoteExecCall ["A3AE_ONE_LIFE_FUNCTIONS_fnc_removeActionRevive",_lastAdmin,false];
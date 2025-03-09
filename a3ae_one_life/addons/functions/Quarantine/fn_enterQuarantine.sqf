#include "..\script_component.hpp"
FIX_LINE_NUMBERS()

private _titleStr = "One Life";
private _entryStr = "You have died. You find yourself in a mystical, faraway land, free of the government's cruelty...<br/><br/>If your body or dog tags are brought back to base, you will be revived.<br/>If a POW is recruited, you have a chance of being revived.";

params ["_player"];

private _posOnList = {A3A_softBannedUIDList findIf {_x#0 == getPlayerUID _player}};

if ((A3A_softBannedUIDList findIf {_x#0 == getPlayerUID _player}) == -1) then {
    private _softBannedUIDList = A3A_softBannedUIDList;
    _softBannedUIDList pushBackUnique [getPlayerUID _player, name _player];
    missionNamespace setVariable ["A3A_softBannedUIDList",_softBannedUIDList,true];
};

private _prisonPos = A3A_prisonPos;

_player setPosATL _prisonPos;

[_titleStr, _entryStr] call A3A_fnc_customHint;

_actionName = ["Revive",name player] joinString " ";

private _addAction_parameters = [
		_actionName,
		{
			params ["_target", "_caller", "_actionId", "_arguments"];
            private _softBannedUIDList = A3A_softBannedUIDList;
            private _pos = (A3A_softBannedUIDList findIf {_x#0 == getPlayerUID _target});
            _softBannedUIDList deleteAt _pos;
            missionNamespace setVariable ["A3A_softBannedUIDList",_softBannedUIDList,true];
            ["ADMIN"] remoteExec ["A3AE_ONE_LIFE_FUNCTIONS_fnc_exitQuarantine",_target];
			player removeAction _actionId;
		},
		nil,
		0.1,
        true,
        true,
        "",
        "((call BIS_fnc_admin) > 0)"
	];
	player addAction _addAction_parameters;

while {(A3A_softBannedUIDList findIf {_x#0 == getPlayerUID _player}) > -1} do {
    if ((_player distance2D _prisonPos) > 500) then {
        _player setPosATL _prisonPos;
        [_titleStr, "Is your peaceful abode not good enough for you?<br/><br/>You have been returned to the island."] call A3A_fnc_customHint;
    };
    sleep 10;
};

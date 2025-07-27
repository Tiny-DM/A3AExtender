params ["_uid", ["_reason", "TAGS"]];

if (A3A_oneLifeExpireTimer == -1) exitWith {false};
if ((A3A_softBannedUIDList findIf {_x#0 == _uid}) == -1) exitWith {false};

#define HOUR 0.0001141554167 // 1 / 365 / 24

private _list = A3A_softBannedUIDList;
private _data = _list select {_uid isEqualTo _x#0};
private _startTime = _data#0#2;
private _holdTime = HOUR * A3A_oneLifeExpireTimer;
private _releaseTime = _startTime + _holdTime;
private _currentTime = dateToNumber date;

if (_currentTime < _releaseTime) exitWith {false};

private _unit = _uid call BIS_fnc_getUnitByUID; 
if (_unit isNotEqualTo objNull) then {
    [_unit,_reason] remoteExec ["A3AE_ONE_LIFE_FUNCTIONS_fnc_exitQuarantine",2]; 
} else {
    [_uid] remoteExecCall ["A3AE_ONE_LIFE_FUNCTIONS_fnc_removeFromBanList",2];
};

true;
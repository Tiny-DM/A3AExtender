#include "..\script_component.hpp"
FIX_LINE_NUMBERS()
#define MINUTE  0.00001902590278 // 1 / 365 / 24 / 60

if (A3A_oneLifeExpireTimer == -1) exitWith {"Never..."};

params ["_player", ["_uid",""]];

if (_uid == "") then {_uid = getPlayerUID _player};

private _pos = A3A_softBannedUIDList findIf {_x#0 == _uid};
if (_pos == -1) exitWith {"Freed!"};
private _entry = A3A_softBannedUIDList#_pos;
private _banTime = _entry#2;
private _currentTime = dateToNumber date;
private _timeDiff = _currentTime - _banTime;
private _timeInMinutes = _timeDiff * 365 * 24 * 60;
private _releaseTimeMinutes = A3A_oneLifeExpireTimer * 60;
private _timeToRelease = _releaseTimeMinutes - _timeInMinutes;
if (_timeToRelease < 0) exitWith {"Will be free soon"};
private _prettyTime = [_timeToRelease * 60,1,1,false,2,false,true] call A3A_fnc_timeSpan_format;
_prettyTime;
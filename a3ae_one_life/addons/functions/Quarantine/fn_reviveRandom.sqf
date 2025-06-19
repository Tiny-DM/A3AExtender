#include "..\script_component.hpp"
FIX_LINE_NUMBERS()

params ["_reason",["_attempts",1]];

_softBannedUIDList = A3A_softBannedUIDList;

for "_i" from 1 to _attempts do {
    if (count _softBannedUIDList == 0) exitWith {Info("POW released - no player freed")};
    private _player = selectRandom _softBannedUIDList;
    if (((_player#0 call BIS_fnc_getUnitByUID) isEqualTo objNull) && random 1 < 0.5) then {_player = selectRandom _softBannedUIDList}; // reroll once if offline
    _playerOBJ = _player#0 call BIS_fnc_getUnitByUID;
    _player call A3AE_ONE_LIFE_FUNCTIONS_fnc_cleanUp;
    _softBannedUIDList = _softBannedUIDList - _player;
    if (_playerOBJ isNotEqualTo objNull) then { // is online case
        [_playerOBJ,_reason] remoteExec ["A3AE_ONE_LIFE_FUNCTIONS_fnc_exitQuarantine",2];
        Info_2("POW released - Online player %1 [UID: %2] freed",_player#1,_player#0);
    } else {
        private _uid = _player#0;
        [_uid] remoteExecCall ["A3AE_ONE_LIFE_FUNCTIONS_fnc_removeFromBanList",2];
        Info_2("POW released - Offline player [UID: %2] freed",_uid);

    }
};

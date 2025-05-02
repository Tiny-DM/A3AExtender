// ran as server

{
    _x params ["_uid","_name","_time"];
    private _unit = _uid call BIS_fnc_getUnitByUID;
    if (_unit isNotEqualTo objNull) then { // is online case
        [_unit,"ADMIN"] call A3AE_ONE_LIFE_FUNCTIONS_fnc_exitQuarantine;
    } else {
        [_uid] call A3AE_ONE_LIFE_FUNCTIONS_fnc_removeFromBanList;
    };
} forEachReversed A3A_softBannedUIDList;
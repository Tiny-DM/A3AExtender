params [["_mode","REMOVE"], ["_params", []]];

if !(A3A_oneLifeUseSpectator) exitWith {};
private _fnc_getUnits = {((fullCrew _this) select {_x#1 != "cargo"}) apply {_x#0}};

switch (_mode) do {
    case "ADD": {
        [[independent], [east,civilian,west]] call ace_spectator_fnc_updateSides;
        [[1,2], [0]] call ace_spectator_fnc_updateCameraModes;
        private _groups = (groups Occupants + groups Invaders);
        private _units = [];
        {
            private _leader = leader _x;
            _veh = objectParent _leader;
            if (isNull _veh) then { continue };
            if (_veh isKindOf "StaticWeapon") then { continue };
            _vehUnits = _veh call _fnc_getUnits;
            if (count _vehUnits == 0) then { continue };
            _units append _vehUnits;
        } forEach _groups;
        _units pushBackUnique petros;
        [_units , []] call ace_spectator_fnc_updateUnits;
        [true] call ace_spectator_fnc_setSpectator;
    };
    case "REMOVE": {
        [false] call ace_spectator_fnc_setSpectator;
    };
    case "ADDUNIT": {
        _params params ["_unit"];
        [[_unit], []] call ace_spectator_fnc_updateUnits;
    };
};
params [["_mode","REMOVE"]];

if !(A3A_oneLifeUseSpectator) exitWith {};

if (_mode == "ADD") then {
    [[independent], [east,civilian,west]] call ace_spectator_fnc_updateSides;
    [[1,2], [0]] call ace_spectator_fnc_updateCameraModes;
    [[petros], []] call ace_spectator_fnc_updateUnits;
    [true] call ace_spectator_fnc_setSpectator;
} else {
    [false] call ace_spectator_fnc_setSpectator;
};
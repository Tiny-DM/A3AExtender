/*
Author: Wurzel0701
    Adds the needed code to give artillery a smoke trail, so you can see where it is coming from

Arguments:
    <OBJECT> The artillery vehicle that the smoke should be added to

Return Value:
    <NIL>

Scope: Where _artillery is local
Environment: Any
Public: No
Dependencies:
    <NIL>

Example:
    [_myMortar] call A3A_fnc_addArtilleryTrailEH;
*/


params [["_artillery", objNull, [objNull]]];

_artillery addEventHandler
[
    "Fired",
    {
        params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_gunner"];
        private _isGas = (_unit getVariable ["A3AE_spooky_firingGas", false]);
        _projectile spawn
        {
            sleep 0.05;

            private _smoke = "SmokeShell_Infinite" createVehicle (getPos _this);
            _smoke attachTo [_this, [0, -1, 0]];

            waitUntil {sleep 0.1; !(alive _this)};
            deleteVehicle _smoke;
        };
        if !(_isGas) exitWith {};
        [_projectile, typeOf _unit] spawn
        {
            params ["_round", "_type"];
            sleep 10;
            waitUntil {sleep 0.5; (getPosATL _round)#2 < 200};
            waitUntil {sleep 0.01; (getPosATL _round)#2 < 20};
            _pos = getPosATL _round;
            _pos set [2, 0];
            deleteVehicle _round;
            [_pos, _type] spawn A3AE_SPOOKY_FUNCTIONS_fnc_gasDeploy;

        };
    }
];

/*
    File: fn_artillery_ac119_orbit.sqf
    Author: Ethan Johnson
    Date: 2023-05-17
    Last Update: 2023-05-20
    Public: No

    Description:
    Runs the AC-119 orbit function for the radio support module.

    Parameter(s):
    _position - Position at which to spawn orbit the aircraft [ARRAY, defaults to [0, 0, 0]]
    _unit - Unit that will receive the radio message [OBJECT, defaults to OBJNULL]

    Returns:
    Function reached the end [BOOL]

    Example(s):
    [[0,0,0]] call vnx_fnc_artillery_ac119_orbit
*/

params ["_airport", "_oldParams"];

_oldParams params ["_supportName", "_side", "_resPool", "_maxSpend", "_target", "_targPos", "_reveal", "_delay"];

private _aggroValue = if(_side == Occupants) then {aggressionOccupants} else {aggressionInvaders};
if (_delay < 0) then { _delay = (0.5 + random 1) * (350 - 15*tierWar - 1*_aggroValue) };

// ["_side", "_basetype", "_target", "_endtime", "_duration", "_power"]
A3A_supportStrikes pushBack [_side, "AREA", _targPos, time + 1200, 1200, 200];

if (_reveal < 0.6) then {_reveal = 0.6};
[_reveal, _side, "AC119ORBIT", _targPos, _delay] spawn A3A_fnc_showInterceptedSetupCall;
vn_artillery_captive = false;

[_targPos, _side, getMarkerPos _airport, _delay, _reveal] spawn {


    params [["_position",[0,0,0],[]], ["_side",Invaders], ["_position_end",[0,0,0],[]], "_delay", "_reveal"];

    sleep _delay;

    private _newPos = _position getPos [3500, _position getDir _position_end];

    private _result = [[_newPos#0, _newPos#1, 500], 0, "vnx_b_air_ac119_01_01", _side] call BIS_fnc_spawnVehicle;
    _result params ["_vehicle", "_crew", "_group"];

    _vehicle setPosATL [_newPos#0, _newPos#1, 500];
    _vehicle setVelocityModelSpace [0, 70, 0];
    _vehicle engineOn true;

    // Give the group orders to open fire
    private _pilot = driver _vehicle;
    {
        _x setSkill ["aimingAccuracy", 0.0];
        _x setSkill ["aimingSpeed", 1];
        _x setSkill ["spotTime", 1];
        _x setSkill ["spotDistance", 1];

        if (_x != _pilot) then
        {
            _x setUnitCombatMode "RED";
        };
    } forEach crew _vehicle;

    [_vehicle, _position, 1000, 500] spawn vnx_fnc_autopilot;

    // Force set the pilot to careless
    _pilot setCombatBehaviour "CARELESS";

    [_vehicle, _group, _position, _reveal, _side] spawn
    {
        params [["_vehicle",objnull,[objNull]], ["_group",grpNull,[grpNull]], ["_position",[0,0,0],[]], "_reveal", "_side"];

        private _startTime = time;
        private _time = _startTime + 240;
        private _hardTimeOut = _startTime + 420;

        private _side = side _vehicle;
        private _weapon = "vn_gunpod_twin_gau4";
        _vehicle selectWeaponTurret [_weapon, [1]];
        private _sentNotification = false;
        waitUntil {
            sleep 10;
            private _t = time;
            if (_t >= _startTime + 30 && {(_vehicle call BIS_fnc_getPitchBank)#1 < -20}) then {
                if (!_sentNotification) then {[_reveal, _position, _side, "AC119ORBIT", 400, 180] spawn A3A_fnc_showInterceptedSupportCall; _sentNotification = true;};
                // Get the nearest units to the position
                private _targets = _position nearEntities [["Man", "Air", "Car", "Motorcycle", "Tank"], 500];
                _targets = _targets select {
                    alive _x && {!([_side, side _x] call BIS_fnc_sideIsFriendly)}
                };
                // If there are no enemies, then just return
                if (count _targets > 0) then {
                    private _target = _targets select (floor random count _targets);

                    [_vehicle, _weapon, _target] spawn {
                        params ["_vehicle", "_weapon", "_target"];
                        _vehicle setVehicleAmmo 1;

                        _vehicle doWatch _target;
                        sleep random 0.5;

                        for "_i" from 0 to 100 do {
                            if (alive _target) then {
                                _vehicle fireAtTarget [_target, _weapon];
                                sleep random ([0.05, 0.25] select (vehicle _target isKindOf "Man"));
                            };
                        };
                    };
                };
            };
            !alive _vehicle || _t >= _time
        };

        if (alive _vehicle) then
        {

            // Delete all waypoints
            private _pilot = driver _vehicle;
            _group = group _pilot;
            for "_i" from (count waypoints _group - 1) to 0 step -1 do
            {
                deleteWaypoint [_group, _i];
            };

            _pilot doMove (_vehicle getPos [6000, 0]);

            private _pos = getPos _vehicle;
            waitUntil {sleep 5; (_vehicle distance2D _pos > 2500) || {time > _hardTimeOut}};

            // Delete the crew and vehicle
            {deleteVehicle _x} forEach crew _vehicle;
            deleteVehicle _vehicle;
        };
    };

    true
};

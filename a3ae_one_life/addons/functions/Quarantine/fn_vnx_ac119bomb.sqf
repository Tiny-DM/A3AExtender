/*
    File: fn_artillery_ac119_bomb.sqf
    Author: Ethan Johnson, modified by Tiny
    Date: 2023-10-23
    Last Update: 2023-10-23
    Public: No

    Description:
    Runs the AC-119 bomb function for the radio support module.

    Parameter(s):
    _position - Position at which to bomb from the aircraft [ARRAY, defaults to [0, 0, 0]]
    _unit - Unit that will receive the radio message [OBJECT, defaults to OBJNULL]

    Returns:
    Function reached the end [BOOL]

    Example(s):
    [[0,0,0]] call bomb
*/
params ["_airport", "_oldParams"];

_oldParams params ["_supportName", "_side", "_resPool", "_maxSpend", "_target", "_targPos", "_reveal", "_delay"];

private _aggroValue = if(_side == Occupants) then {aggressionOccupants} else {aggressionInvaders};
if (_delay < 0) then { _delay = (0.5 + random 1) * (350 - 15*tierWar - 1*_aggroValue) };

// ["_side", "_basetype", "_target", "_endtime", "_duration", "_power"]
A3A_supportStrikes pushBack [_side, "AREA", _targPos, time + 1200, 1200, 200];

if (_reveal < 0.6) then {_reveal = 0.6};
[_reveal, _side, "AC119BOMB", _targPos, _delay] spawn A3A_fnc_showInterceptedSetupCall;
vn_artillery_captive = false;

[getMarkerPos _airport, _side, _targPos, _delay, _reveal] spawn {

    params [["_position_end",[0,0,0],[]], ["_side",Invaders], ["_position",[0,0,0],[]], "_delay", "_reveal"];

    sleep _delay;

    private _posATL = _position;
    private _pos = +_posATL;
    private _dir = _position_end getDir _position;
    if (_position distance2D _position_end < 1) then {_dir = 0};

    private _dis = 3000;
    private _alt = 1000;
    private _pitch = atan (_alt / _dis);
    private _speed = 300 / 3.6;
    private _duration = ([0,0] distance [_dis,_alt]) / _speed;
    _pos set [2, _alt];

    //--- Create plane
    private _planePos = [_pos,_dis,_dir + 180] call bis_fnc_relpos;

    private _planeSide = _side;
    ([_planePos, _dir,"vnx_b_air_ac119_04_01", _planeSide] call bis_fnc_spawnVehicle) params ["_plane", "_planeCrew", "_planeGroup"];
    _plane setposasl _planePos;

    _plane move ([_pos,_dis,_dir] call bis_fnc_relpos);
    _plane disableai "move";
    _plane disableai "target";
    _plane disableai "autotarget";
    _plane setcombatmode "blue";

    // make the AI captive if enabled
    if (vn_artillery_captive) then {
        {_x setCaptive true} forEach _planeCrew;
    };

    private _vectorDir = [_planePos,_pos] call bis_fnc_vectorFromXtoY;
    private _velocity = [_vectorDir,_speed] call bis_fnc_vectorMultiply;
    _plane setvectordir _vectorDir;
    [_plane,0,0] call bis_fnc_setpitchbank;
    private _vectorUp = vectorup _plane;

    private _target = createVehicle ["Land_HelipadEmpty_F", _position, [], 0, "CAN_COLLIDE"];

    //--- Approach
    private _fireNull = true;
    private _time = time;
    private _timeOut = time + 300;
    waitUntil {
        private _fireProgress = _plane getvariable ["fireProgress",0];

        //--- Set the plane approach vector
        _plane setVelocityTransformation
        [
            _planePos, _pos,
            _velocity, _velocity,
            _vectorDir,_vectorDir,
            _vectorUp, _vectorUp,
            (time - _time) / _duration
        ];
        _plane setvelocity velocity _plane;
        _plane setVariable ["vn_target", _target];

        //--- Fire! - Do not fire if illumination mission
        if ((getposasl _plane) distance2D _pos < 10 && {_fireNull}) then
        {
            _fireNull = false;
            private _currentPos = getPosATL _plane;
            [[_currentPos#0,_currentPos#1, 0], (_currentPos#2) - 50, objNull, _plane] call vn_fnc_bomb_blu82; // Using the normal bomb function
            [_reveal, _position, _side, "AC119BOMB", 125, 60] spawn A3A_fnc_showInterceptedSupportCall;
        };
        sleep 0.01;
        (!_fireNull) || (!alive _plane) || (time > _timeOut)
    };
    _plane setvelocity velocity _plane;
    _plane flyinheight _alt;

    deleteVehicle _target;
    

    // prevent AI from engaging on it's own after the fire mission was completed
    _planeGroup setBehaviour "CARELESS";

    _plane flyinheight 200;
    _plane enableai "move";
    (driver _plane) doMove (_plane getPos [_dis*2,direction _plane]);

    waituntil {_plane distance _pos > _dis || !alive _plane};

    //--- Delete plane
    if (alive _plane) then
    {
        private _group = group _plane;
        private _crew = crew _plane;
        deletevehicle _plane;
        {deletevehicle _x} foreach _crew;
        deletegroup _group;
    };

    true
};
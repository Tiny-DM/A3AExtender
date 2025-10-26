#include "..\..\script_component.hpp"
FIX_LINE_NUMBERS()

params ["_side", "_posDestination", ["_markerOrigin", ""]];

if (_markerOrigin == "") then {_markerOrigin = [_side, _posDestination] call A3A_fnc_availableBasesAir};

private _planeType = selectRandom (Faction(_side) get "vehiclesPlanesTransport");
if (isNil "_planeType") then { _planeType = selectRandom (Faction(_side) get "vehiclesHelisTransport")};
private _vehicle = [_markerOrigin, _planeType] call A3A_fnc_spawnVehicleAtMarker;

if(isNull _vehicle) exitWith {0};
private _resPool = "defence";
private _crewGroup = [_side, _vehicle, nil, false] call A3A_fnc_createVehicleCrew;
{
    [_x, nil, nil, _resPool] call A3A_fnc_NATOinit;
} forEach (units _crewGroup);
[_vehicle, _side, _resPool] call A3A_fnc_AIVEHinit;

[_side, _vehicle, _posDestination, _markerOrigin] spawn A3AE_SPOOKY_FUNCTIONS_fnc_doZombieDrop;

private _maxSpeed = getNumber (configFile >> "CfgVehicles" >> typeOf _vehicle >> "maxSpeed");
private _flightDistance = _posDestination distance2D (markerPos _markerOrigin);
((_flightDistance * 3.6) / _maxSpeed);

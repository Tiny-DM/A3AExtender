/*
Okay.
So here's the deal. Gas and zombies are a last resort. Scorched earth tactics. They should be performed consistently if no friendlies are nearby.
But the question is when and how often.
Way I see it? Dont trigger it for random support calls. Only trigger it on flag flips and roadblock destruction. The areas most clear of enemy units.
Then run the logic without an observer; if a roadblock reports being in contact but doesnt call for support and goes silent, gas the hell out of it with mortars. Easy.

On flag flip or roadblock kill, gas will be employed 80% of the time. 
Mortars are prioritized for roadblocks and resources/factores and airstrikes are prioritized for more important markers, converting to carpet bombs + artillery at later war levels
If there are resources for a QRF and gas, zombies will be dropped in 60% of the time and CBRN soldiers will be inserted normally for counterattack if no zombies are sent.

This function is ran from the singleAttack function and when a roadblock is destroyed. If the system determines there are resources to send a counterattack, it will query this function first
Return codes:
    0 (EXIT_NONE) - Exit singleAttack immediately. Send no troops.
    1 (EXIT_CBRN) - Continue singleAttack, but equip any QRF units with basic CBRN gear.
    2 (EXIT_FULL) - Continue singleAttack, no changes; presumed no gas.
*/

#define EXIT_NONE 0
#define EXIT_CBRN 1 
#define EXIT_FULL 2

#include "..\..\script_component.hpp"
FIX_LINE_NUMBERS()

params ["_mrkDest", "_side"]; // marker or position that must be gassed
diag_log format ["handleSupports params: %1", _this];

if (tierWar < A3AE_spooky_gasTierStart) exitWith {EXIT_FULL};

private _isMarker = (_mrkDest isEqualType "");
private _mrkPos = if (_isMarker) then {markerPos _mrkDest} else {_mrkDest};
private _marker = if (_isMarker) then {_mrkDest} else {[markersX,_markerPos] call BIS_fnc_nearestPosition};
private _side = if (_side isEqualTo sideUnknown) then {sidesX getVariable [_marker, sideUnknown]} else {_side};

private _markerType = switch (true) do {
    case (_marker in airportsX): {"airport"};
    case (_marker in resourcesX): {"resource"};
    case (_marker in factories): {"factory"};
    case (_marker in outposts): {"outpost"};
    case (_marker in seaports): {"seaport"};
};


/*
Possible cases:
Nothing happens
Gas only
Gas + Zombies
Gas + CBRN
Gas + both, I guess

*/

// First check: Random, do we send gas at all?
private _prob1 = createHashMapFromArray [
    ["resource", 40],
    ["factory", 50],
    ["seaport", 70],
    ["outpost", 80],
    ["airport", 100] // always send the works for airbases
];

if (random 100 > (_prob1 get _markerType)) exitWith {EXIT_FULL};

// So we're sending gas. Can work out what type later. What's the likelyhood to send a zombie paradrop?
private _prob2 = createHashMapFromArray [
    ["resource", 80],
    ["factory", 80],
    ["seaport", 80],
    ["outpost", 95],
    ["airport", 100]
];

private _sendingZombieDrop = (random 100 < (_prob2 get _markerType));

// Cool. How about the special CBRN units?
private _prob3 = createHashMapFromArray [
    ["resource", 80],
    ["factory", 80],
    ["seaport", 80],
    ["outpost", 95],
    ["airport", 100]
];

private _sendCBRN = (random 100 < (_prob3 get _markerType));

ServerInfo_2("Sending Drop %1 Sending CBRN %2", str _sendingZombieDrop, str _sendCBRN);

// Alright, cool. How is the gas delivered?

private _idfVeh = selectRandomWeighted flatten [["mortar", (10 - tierWar) max 0], ["artillery", (tierWar - 5) max 0]];
private _airstrikeVeh = selectRandomWeighted flatten [["single", (10 - tierWar) max 0], ["multi", (tierWar - 3) max 0]];
private _method = selectRandomWeighted flatten [["idf", (6 - tierWar) max 0], ["air", (tierWar - 1) max 0]];
if (tierWar > 7) then {_method = "combined"};

private _timeTillDrop = 0;
private _reveal = [_mrkPos, _side] call A3A_fnc_calculateSupportCallReveal;
if (_sendingZombieDrop) then {_timeTillDrop = [_side, _mrkPos] call A3AE_SPOOKY_FUNCTIONS_fnc_prepZombieDrop};

if (_method != "air") then {
    [_mrkPos, _side, _idfVeh, (_timeTillDrop - 60) max 10, _reveal] spawn A3AE_SPOOKY_FUNCTIONS_fnc_gasIDF;
};

if (_method != "idf") then {
    [_mrkPos, _side, _airstrikeVeh, (_timeTillDrop - 60) max 10, _reveal] spawn A3AE_SPOOKY_FUNCTIONS_fnc_gasAir;
};
// Gas drop figured out. Exit now.

if (_sendCBRN) then {EXIT_CBRN} else {EXIT_NONE};
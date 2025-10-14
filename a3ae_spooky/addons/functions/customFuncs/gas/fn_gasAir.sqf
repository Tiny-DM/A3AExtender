params ["_mrkDest", "_side", "_airstrikeVeh", "_timeTillDrop", "_reveal"];

if (_airstrikeVeh == "multi") then {
    ["GASCARPETBOMBS", _side, "defence", 1000, _mrkDest, _mrkDest, _reveal, _timeTillDrop] spawn A3A_fnc_createSupport;
} else {
    ["GASAIRSTRIKE", _side, "defence", 1000, _mrkDest, _mrkDest, _reveal, _timeTillDrop] spawn A3A_fnc_createSupport;
};
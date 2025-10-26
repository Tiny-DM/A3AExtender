params ["_mrkDest", "_side", "_airstrikeVeh", "_timeTillDrop", "_reveal"];
diag_log format ["gasAir params: %1", _this];

if (_airstrikeVeh == "multi") then {
    ["GASCARPETBOMBS", _side, "defence", 1000, _mrkDest, _mrkDest, _reveal, _timeTillDrop] spawn A3A_fnc_createSupport;
} else {
    ["GASAIRSTRIKE", _side, "defence", 1000, _mrkDest, _mrkDest, _reveal, _timeTillDrop] spawn A3A_fnc_createSupport;
};
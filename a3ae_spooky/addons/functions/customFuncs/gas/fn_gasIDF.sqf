params ["_mrkDest", "_side", "_idfVeh", "_timeTillDrop", "_reveal"];
diag_log format ["gasIDF params: %1", _this];

if (_idfVeh == "artillery") then {
    ["GASARTILLERY", _side, "defence", 1000, _mrkDest, _mrkDest, _reveal, _timeTillDrop] spawn A3A_fnc_createSupport;
} else {
    ["GASMORTAR", _side, "defence", 1000, _mrkDest, _mrkDest, _reveal, _timeTillDrop] spawn A3A_fnc_createSupport;
};
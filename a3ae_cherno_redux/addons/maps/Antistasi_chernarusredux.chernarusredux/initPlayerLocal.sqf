{
_x hideObject true;
} forEach ((nearestTerrainObjects [getPosATL player, ["HIDE"], 20000]) select {count (_x nearRoads  15) > 0});
_this call A3A_fnc_initClient;

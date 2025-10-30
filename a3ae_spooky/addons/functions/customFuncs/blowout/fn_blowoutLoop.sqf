TNY_hardBlowoutFreq = 7200;
TNY_softBlowoutFreq = 3600;
TNY_lastBlowoutTime = time;
TNY_timeForNextBlowout = TNY_hardBlowoutFreq + floor (random TNY_softBlowoutFreq);

while {true} do {
    if (time < TNY_timeForNextBlowout) then { sleep 60; continue };
    private _extraDelay = (50 + floor (random 60));
    [100 + _extraDelay, 10, true, true, false, true] spawn diwako_anomalies_main_fnc_blowoutCoordinator;

    sleep (96 + _extraDelay);
    _allPlayers = (allPlayers - entities "HeadlessClient_F");
    _allAI = allUnits - _allPlayers;
    {_x setVariable ["blowout_safe", true, true]} forEach _allAI;
    [] remoteExec ["A3AE_SPOOKY_FUNCTIONS_fnc_blowoutDamage", _allPlayers];

    TNY_lastBlowoutTime = time;
    TNY_timeForNextBlowout = time + TNY_hardBlowoutFreq + floor (random TNY_softBlowoutFreq);
};
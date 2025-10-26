/*
Author: Caleb Serafin
    Spawns napalm fire and damage at target location.

Arguments:
    <POS3|POS2> AGL centre of effect.
    <SIDE> Side that deals the napalm damage
    <STRING> CancellationTokenUUID. Provisioning for implementation of cancellationTokens (Default = "");

Return Value:
    <BOOL> true if normal operation. false if something is invalid.

Scope: Same Server/HC, Global Arguments, Global Effect
Environment: Scheduled
Public: Yes.

Example:
    [screenToWorld [0.5,0.5]] remoteExec  ["A3A_fnc_napalm",2];  // Spawn napalm fire and damage at the terrain position you are looking at.

    [screenToWorld [0.5,0.5]] spawn {   // 5 second delay
        params ["_pos"];
        uiSleep 5;
        [_pos] remoteExec ["A3A_fnc_napalm",2];
    };

    dev_napalmGo = 0;                   // Step 1: Init signal
    [screenToWorld [0.5,0.5]] spawn {   // Step 2: Wait on signal, repeat as many times as you wish.
        params ["_pos"];
        waitUntil {
            uiSleep 1;
            ((dev_napalmGo +5) > serverTime)
        };
        uiSleep random 3;
        [_pos] remoteExec ["A3A_fnc_napalm",2];
    };
    dev_napalmGo = serverTime;          // Step 3: Detonate and trigger signal
*/
params [
    ["_pos",[],[ [] ], [2,3]],
    ["_type",true]
];

if (!isServer) exitWith {false};
if ((count _pos) isEqualTo 2) then {
    _pos pushBack 0;
};

private _startTime = serverTime;
private _endTime = _startTime + 90;
private _gasRadius = 30;

private _gasID = -2;
private _storageNamespace = locationNull;
isNil {
    _gasID = [localNamespace,"A3A_GasRegister","IDCounter",-1] call A3A_fnc_getNestedObject;
    _gasID = _gasID + 1;
    [localNamespace,"A3A_GasRegister","IDCounter",_gasID] call A3A_fnc_setNestedObject;
    _storageNamespace = [localNamespace,"A3A_GasRegister",str _gasID,"active",true] call A3A_fnc_setNestedObject;
};

playSound3D ["a3\sounds_f\weapons\explosion\expl_big_3.wss",_pos, false, AGLToASL _pos, 5, 0.6, 3000];   // Isn't actually audible at 3km, by 500m it's competing with footsteps.
/*
[_pos,_endTime] spawn {
    params ["_pos","_endTime"];

    private _audioDuration = 8.3; // audio is 8.538 seconds, subtract possible server->client latency
    private _audioEndTime = _endTime - _audioDuration;

    while {serverTime < _audioEndTime} do {
        playSound3D ["a3\sounds_f\sfx\fire1_loop.wss",_pos, false, AGLToASL _pos, 5, 0.7, 3000];   // Isn't actually audible at 3km, by 500m it's competing with footsteps.
        uiSleep _audioDuration;
    };
};
*/
[_pos, _gasRadius] spawn {
    uisleep (8 + random 4);
    diag_log _this;
    _this call A3AE_SPOOKY_FUNCTIONS_fnc_gasRaiseDead;
};

while {_endTime > serverTime} do {

    // Particles
    private _allRenderers = allPlayers;
    //_allRenderers = _allRenderers select {(_x distance2D _pos) < 1500};  // Turn on if optimisation is required (A good way to show progress to your boss without doing any work!)
    isNil {  // Run in unscheduled scope to prevent parallel filtering.
        _allRenderers = _allRenderers select {
            !isNull _x &&
            {!(getPlayerUID _x isEqualTo "")} &&
            {!(_storageNamespace getVariable [getPlayerUID _x, false])}
        };    // Per napalm as every effect needs to be rendered.
        { _storageNamespace setVariable [getPlayerUID _x, true]; } forEach _allRenderers;
    };
    { [_pos, _startTime] remoteExec ["A3AE_SPOOKY_FUNCTIONS_fnc_gasParticles",_x]; } forEach _allRenderers;


    // Damage
    private _victims = (allPlayers - entities "HeadlessClient_F") select {_x distance2d _pos < _gasRadius};
    {
        private _owner = owner _x;
        [_x, true] remoteExec ["A3AE_SPOOKY_FUNCTIONS_fnc_gasDamage",_owner];
    } forEach _victims;

    uiSleep 5;
};

deleteLocation _storageNamespace;
true;

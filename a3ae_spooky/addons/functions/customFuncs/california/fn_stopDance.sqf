params ["_units"];
{
    _x switchMove "";
} forEach _units;
 
[A3A_californiaSong] remoteExec ["stopSound", (allPlayers - entities "HeadlessClient_F")];


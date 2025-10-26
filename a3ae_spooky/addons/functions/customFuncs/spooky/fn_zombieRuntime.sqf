params ["_zombie"];
private _birthTime = serverTime;
while {alive _zombie} do {
    sleep 60;
    private _players = allPlayers - entities "HeadlessClient_F";
    if ((serverTime - _birthTime > 900) && {(count (_players inAreaArray [getPosATL _zombie, 500, 500])) == 0}) exitWith {_zombie setDamage 1};
    if ( (count (_players inAreaArray [getPosATL _zombie, 500, 500])) == 0) exitWith {_zombie setDamage 1};
};
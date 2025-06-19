private _nameList = ([] call ace_spectator_fnc_players) apply {name _x};
private _strNameList = _nameList joinString ", ";
    ["One Life",
    "Number of spectators: " + (str count _nameList) +"<br/><br/>"+ _strNameList
] call A3A_fnc_customHint;
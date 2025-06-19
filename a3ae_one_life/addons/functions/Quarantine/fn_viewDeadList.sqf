private _nameList = A3A_softBannedUIDList apply {_x#1};
private _strNameList = _nameList joinString ", ";
    ["One Life",
    "Number of dead players: " + (str count _nameList) +"<br/><br/>"+ _strNameList
] call A3A_fnc_customHint;
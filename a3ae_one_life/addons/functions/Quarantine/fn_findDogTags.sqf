params ["_unit"];
private _allPlayerItems = uniformItems _unit + vestItems _unit + backpackItems _unit;
private _playerDogTags = _allPlayerItems select {_x find "ACE_dogtag_" != -1};
_playerDogTags;
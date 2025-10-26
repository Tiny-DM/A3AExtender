params ["_numToReveal"];
private _percentToReveal = switch (_numToReveal) do {
    case 1: {0.25};
    case 2: {0.5};
    case 3: {0.75};
};

_fullList = A3A_softBannedUIDList;
_countFullList = count _fullList;
if (_countFullList isEqualTo 0) exitWith {"You found a list of confirmed kills on rebels, but it's empty."};
_names = A3A_softBannedUIDList apply {_x#1};
_countNames = ceil (_percentToReveal * _countFullList);
private _namedList = [];
for "_i" from 1 to _countNames do {
    _name = selectRandom _fullList;
    _namedList pushBack _name;
    _names deleteAt (_names find _name);
};

format ["You found confirmed kill reports of %1, and references to %2 other reports", _namedList, _countFullList - _countNames];
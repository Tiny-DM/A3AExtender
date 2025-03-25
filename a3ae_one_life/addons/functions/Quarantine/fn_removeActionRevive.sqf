// see comments on addActionRevive
params ["_player"];

private _actions = actionIDs _player;
if ((!isNil "_actions") && {!(_actions isEqualTo [])}) then {
    private _actionFrag = name _player;
    {
        private _actionName = _player actionParams _x;
        if !(_actionFrag in _actionName) exitWith {};
        player removeAction _x;
    };
} forEach _actions;
true;

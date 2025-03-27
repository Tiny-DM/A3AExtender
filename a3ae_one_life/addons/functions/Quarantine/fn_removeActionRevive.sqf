// see comments on addActionRevive
params ["_player"];

private _actions = actionIDs _player;
if ((!isNil "_actions") && {!(_actions isEqualTo [])}) then {
    private _actionFrag = name _player;
    {
        private _actionParams = _player actionParams _x;
        private _actionName = _actionParams#0;
        if (_actionFrag in _actionName) then {player removeAction _x};
    } forEach _actions;
};
true;

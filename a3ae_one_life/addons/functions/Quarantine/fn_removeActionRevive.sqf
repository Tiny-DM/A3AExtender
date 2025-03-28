// see comments on addActionRevive
#include "..\script_component.hpp"
FIX_LINE_NUMBERS()

params ["_target"];

Debug_2("Removing revive action for %1 from %2's client",name _target,name player);
private _actions = actionIDs _target;
if ((!isNil "_actions") && {!(_actions isEqualTo [])}) then {
    private _actionFrag = name _target;
    {
        private _actionParams = _target actionParams _x;
        private _actionName = _actionParams#0;
        if (_actionFrag in _actionName) then {
            _target removeAction _x;
            Debug_2("Removed action ID %1 from %2", str _x,name _target);
        };
    } forEach _actions;
};
true;
/*
Author is Caleb Serafin, adapted under MIT license
Unscheduled
Local on Admin
*/

#include "..\script_component.hpp"
FIX_LINE_NUMBERS()

params ["_target"];

Debug_2("Adding revive action for %1 to %2's client",name _target,name player);
_actionName = ["Revive",name _target] joinString " ";
private _addAction_parameters = [
		_actionName,
		{
			params ["_target", "_caller", "_actionId", "_arguments"];
            [_target, "ADMIN"] remoteExec ["A3AE_ONE_LIFE_FUNCTIONS_fnc_exitQuarantine",2];
			_target removeAction _actionId;
		},
		nil,
		0.1,
        true,
        true,
        "",
        "true"
	];
private _id = _target addAction _addAction_parameters;
Debug_2("Added action ID %1 to %2", str _id,name _target);

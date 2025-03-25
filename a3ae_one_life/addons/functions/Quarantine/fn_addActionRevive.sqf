/*
Author is Caleb Serafin, adapted under MIT license
Unscheduled
Local on Admin
*/
params ["_player"];

_actionName = ["Revive",name _player] joinString " ";
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
_player addAction _addAction_parameters;
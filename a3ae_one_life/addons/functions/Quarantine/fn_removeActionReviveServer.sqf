// You can't grab the admin on a local client so we run this on the server and then exec to the local client
#include "..\script_component.hpp"
FIX_LINE_NUMBERS()

params ["_target"];
private _admin = [] call A3A_fnc_getAdmin;
if (isNull _admin) exitWith {Debug("No admin found, not removing action")};

[_target] remoteExec ["A3AE_ONE_LIFE_FUNCTIONS_fnc_removeActionRevive",_admin];
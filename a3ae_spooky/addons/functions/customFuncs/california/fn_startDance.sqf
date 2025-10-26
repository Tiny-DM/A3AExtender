params [["_units", [petros]]];

{
    _x switchMove "WBK_SecretAnim_Dance";
} forEach _units;

A3A_californiaSong = playSound3D ["x\a3ae_spooky\addons\functions\california.ogg", _units#0];

sleep 36;

[_units] call A3AE_SPOOKY_FUNCTIONS_fnc_stopDance;
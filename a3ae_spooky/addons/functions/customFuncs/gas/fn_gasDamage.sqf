/*
Author: Caleb Serafin
    Decimates most objects.
    Vehicles should survive but be extremely damaged.
    Plays relevant audio if applicable. (Hurt sounds)
    Deletes items and cargo inventory.

Arguments:
    <OBJECT> The targeted object. Is filtered within this function.
    <BOOL> If allowed to create particles and lights. Only set to true if this used on few objects at a time.
    <SIDE> Side that deals the napalm damage
    <STRING> CancellationToken; pass with element 0 = true; if element 0 is false effects stop as-soon as possible.

Return Value:
    <BOOL> true if normal operation. false if something is invalid.

Scope: _victim, Local Arguments, Global Effect
Environment: Any
Public: Yes. Can be called on objects independently, might make for an "interesting" punishment.
Dependencies:

Example:
    [cursorObject, true] call A3A_fnc_napalmDamage;  // Burn whatever you are looking at.
*/
params [
    ["_victim",objNull,[objNull]]
];

if (_victim getVariable ["incapacitated",false]) exitWith {false};
private _oldGasScript = _victim getVariable ["A3A_gasPPHandler", scriptNull];
if (!isNull _oldGasScript) then {terminate _oldGasScript};
_victim setVariable ["A3A_gasPPHandler", _thisScript];

private _ppApplyTime = 2;  // time for postprocess effect to kick in
private _ppFadeoutTime = 5;
private _ppEffectC = ppEffectCreate ["ColorCorrections",1500];
_ppEffectC ppEffectEnable true;
_ppEffectC ppEffectAdjust [1,1,0,[
0.02,  // Red color blend
0.25,  // Green color blend
0.09,  // Blue color blend
0.97   // Alpha
],[1,1,1,1],[0.33,0.33,0.33,0],[
0.15,  // Hole X
0.15,  // Hole Y
0,0,0,0,
0.05   // Interp
]];

_ppEffectC ppEffectCommit _ppApplyTime;
_ppEffectD = ppEffectCreate ["DynamicBlur",500];
_ppEffectD ppEffectEnable true;
_ppEffectD ppEffectAdjust [0.7];
_ppEffectD ppEffectCommit _ppApplyTime;


uiSleep 10;
private _arr = [_ppEffectC, _ppEffectD];
//after having created and used effect:
//set the parameters for the effect back to the default values
_ppEffectC ppEffectAdjust [1,1,0,[0,0,0,0],[1,1,1,1],[0.33,0.33,0.33,0],[0,0,0,0,0,0,4]];
_ppEffectD ppEffectAdjust [0];
//then commit and fade out over given time (10 seconds)
_arr ppEffectCommit _ppFadeoutTime;
//Disable completely after fadeout
uiSleep _ppFadeoutTime;
_arr ppEffectEnable false;

true;

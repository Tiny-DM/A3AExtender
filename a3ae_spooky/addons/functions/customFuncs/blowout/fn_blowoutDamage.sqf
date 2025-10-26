
_playerIsSafe = [player] call diwako_anomalies_main_fnc_isInShelter;
player setVariable ["blowout_safe", true];
sleep 1;
if !(_playerIsSafe) then {
    private _position = player selectionPosition selectRandom ["spine","spine1","spine2","spine3","head","leftshoulder","leftarm","leftarmroll","leftforearm","leftforearmroll","lefthand","rightshoulder","rightarm","rightarmroll","rightforearm","rightforearmroll","righthand","pelvis","leftupleg","leftuplegroll","leftleg","leftlegroll","leftfoot","rightupleg","rightuplegroll","rightleg","rightlegroll","rightfoot"];
    player addForce [(vectorNormalized velocity player) vectorMultiply (100 + random 200), _position, false];
    sleep 3;
    [ player, 0.9, "Body", "explosive"] call ace_medical_fnc_addDamageToUnit;
};
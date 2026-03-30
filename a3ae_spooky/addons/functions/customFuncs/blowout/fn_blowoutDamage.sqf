
private _playerIsSafe = [player] call diwako_anomalies_main_fnc_isInShelter;
player setVariable ["blowout_safe", true];
sleep 1;
if !(_playerIsSafe) then {
    private _position = player selectionPosition selectRandom ["spine","spine1","spine2","spine3","head","leftshoulder","leftarm","leftarmroll","leftforearm","leftforearmroll","lefthand","rightshoulder","rightarm","rightarmroll","rightforearm","rightforearmroll","righthand","pelvis","leftupleg","leftuplegroll","leftleg","leftlegroll","leftfoot","rightupleg","rightuplegroll","rightleg","rightlegroll","rightfoot"];
    player addForce [(vectorNormalized velocity player) vectorMultiply (100 + random 200), _position, false];
    sleep 3;
    for "_i" from 0 to 25 do {
    //Random number from 0 to  1 
    private _randomDamage = (random 100) / 200;   
    //Random body part (weighted to be less likely to be head) 
    private _bodyPart = ["head","body","arm_r","arm_l","leg_r","leg_l"] selectRandomWeighted [0.5,1,1,1,1,1]; 
    [player, _randomDamage , _bodyPart, "punch"] call ace_medical_fnc_addDamageToUnit;
    };
};
sleep 60;
player setVariable ["blowout_safe", false];
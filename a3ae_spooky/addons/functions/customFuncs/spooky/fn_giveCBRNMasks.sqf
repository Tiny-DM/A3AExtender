params ["_side", "_units"];
private _sideTemplate = ["Occ", "Inv"] select (_side isEqualTo Invaders);
private _gogglesType = switch (missionNamespace getVariable (format ["A3A_%1_template", _sideTemplate])) do {
    default {"G_AirPurifyingRespirator_01_F"};
};
{
    
    removeGoggles _x;
    _x addGoggles _gogglesType
} forEach _units;
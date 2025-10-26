params ["_pos", "_radius"]; 
 
private _affected = (allDeadMen inAreaArray [_pos, _radius, _radius]) select {!(_x getVariable ["A3A_isZombie", false])}; 
{ 
	private _unitPos = getPosATL _x; 
	private _loadout = getUnitLoadout _x; 
	private _unitType = typeOf _x; 
	private _side = (getNumber (configFile >> "CfgVehicles" >> _unitType >> "side")) call BIS_fnc_sideType;
	private _nearZombies = (allUnits inAreaArray [_pos, _radius, _radius]) select {_x getVariable ["A3A_isZombie", false]}; 
	private _sideToSearch = if (_side in [Occupants, Invaders]) then {
		if (_side isEqualTo Occupants) then {[Invaders]} else {[Occupants]};
	} else {[Occupants, Invaders]}; 
	private _sameSideUnitIndex = _nearZombies findIf {side _x in _sideToSearch}; 
	private _grp = call {
        private _var = grpNull;
        if (_sameSideUnitIndex > -1) then {
             _var = group (_nearZombies#_sameSideUnitIndex);    
        };
        private _count = count units _var;
        if (_count > 0 && (_count < 5)) exitWith {_var};
        createGroup [_sideToSearch#0, true]; 
    };
	private _newUnit = _grp createUnit [_unitType, _unitPos, [], 0, "NONE"];
	[_newUnit] join _grp; 
	_tagData = [_x] call ace_dogtags_fnc_getDogtagData;
	_newUnit setVariable ["ace_dogtags_dogtagData", _tagData];
	_newUnit setUnitLoadout _loadout; 
	_newUnit setVariable ["A3A_isZombie", true]; 
    _newUnit setDir (random 360);
    deleteVehicle _x;
	[_newUnit, false,false] execVM '\WBK_Zombies\AI\WBK_AI_Runner.sqf'; 
	[_newUnit] spawn A3AE_SPOOKY_FUNCTIONS_fnc_zombieRuntime;
} forEach _affected;
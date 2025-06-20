params ["_obj",["_delete",true]];

private _weaponsX = [];
private _ammunition = [];
private _weaponsToCheck = weapons _obj;
if !(alive _obj) then { // fish scattered weapons from dead guy
    _holders = getCorpseWeaponHolders _obj;
    {_weaponsToCheck pushBack ((weaponCargo _x)#0)} forEach _holders;
};
{if (not(([_x] call BIS_fnc_baseWeapon) in unlockedWeapons)) then {_weaponsX pushBack ([_x] call BIS_fnc_baseWeapon)}} forEach _weaponsToCheck;
{if (not(_x in unlockedMagazines)) then {_ammunition pushBack _x}} forEach magazines _obj;
private _items = (items _obj) + (primaryWeaponItems _obj) + (assignedItems _obj) + (secondaryWeaponItems _obj) + [(hmd _obj),(headGear _obj),(vest _obj)];

{boxX addWeaponCargoGlobal [_x,1]} forEach _weaponsX;
{boxX addMagazineCargoGlobal [_x,1]} forEach _ammunition;
{boxX addItemCargoGlobal [_x,1]} forEach _items;

if (_delete) then {deleteVehicle _x};

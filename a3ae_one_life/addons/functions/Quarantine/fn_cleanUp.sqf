#include "..\script_component.hpp"
FIX_LINE_NUMBERS()

params ["_uid","_name"]; // entry deleted from A3A_softBannedUIDList
private _allDogTags = ace_dogtags_dogtagsData; // hashmap
private _oldBodies = allDeadMen select {_x getVariable ["ownerUID",""] isEqualTo _uid}; // all bodies with the owner UID of the player
private _allBags = entities [["ACE_bodyBagObject"], []];
private _playerBags = _allBags select {((_x getVariable ["ace_dogtags_dogtagData",[]])#0) == _name};
{deleteVehicle _x} forEach _playerBags; // delete all those
private _weaponsX = [];
{
{if (not(([_x] call BIS_fnc_baseWeapon) in unlockedWeapons)) then {_weaponsX pushBack ([_x] call BIS_fnc_baseWeapon)}} forEach weapons _unit;
{if (not(_x in unlockedMagazines)) then {_ammunition pushBack _x}} forEach magazines _unit;
_items = _items + (items _unit) + (primaryWeaponItems _unit) + (assignedItems _unit) + (secondaryWeaponItems _unit) + [(hmd _unit),(headGear _unit),(vest _unit)];
deleteVehicle _x;

{boxX addWeaponCargoGlobal [_x,1]} forEach _weaponsX;
{boxX addMagazineCargoGlobal [_x,1]} forEach _ammunition;
{boxX addItemCargoGlobal [_x,1]} forEach _items;
} foreach _oldBodies;

private _oldDogTags = [];
{
    private _playerDogTags = _x call A3AE_ONE_LIFE_FUNCTIONS_fnc_findDogTags; // find the dog tags on this persion
    private _playerObj = _x; // grab player object for later
    {
        private _dogTagData = _allDogtags getOrDefault [_x,""]; // grab the data on the tag
        if (_dogTagData isEqualTo "") then {Error_1("Dog tag %1 has no corresponding data",str _x); continue;};
        if (_dogTagData#0 == _name) then {_playerObj removeItem _x}; // if the first element of the tag data (name) equals the name, then remove the item from the player
    } forEach _playerDogTags;
} forEach (allPlayers - (entities "HeadlessClient_F")); // for all players

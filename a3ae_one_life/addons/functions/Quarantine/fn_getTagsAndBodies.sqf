// Ran as local

#include "..\script_component.hpp"
FIX_LINE_NUMBERS()

params ["_target", "_caller", "_actionId", "_arguments"];

private _titleStr = "One Life";
private _softBannedUIDList = A3A_softBannedUIDList;
#define DISTANCE_BODY_GRAB 100

[_titleStr,"Grabbing your dog tags and bodies around HQ."] call A3A_fnc_customHint;

private _nearBodies = allDeadMen select {(_x distance2D (getMarkerPos respawnTeamPlayer)) < DISTANCE_BODY_GRAB};
private _nearDeadPlayers = _nearBodies select {(_x getVariable ["ownerUID",""]) != ""};

private _allDogTags = ace_dogtags_dogtagsData; // hashmap
private _fnc_findDogTags = {
    params ["_unit"];
    private _allPlayerItems = uniformItems _unit + vestItems _unit + backpackItems _unit;
    private _playerDogTags = _allPlayerItems select {_x find "ACE_dogtag_" != -1};
    _playerDogTags;
};
private _fnc_cleanupAll = {
    params ["_uid","_name"]; // entry deleted from A3A_softBannedUIDList
    private _oldBodies = allDeadMen select {_x getVariable ["ownerUID",""] isEqualTo _uid}; // all bodies with the owner UID of the player
    {deleteVehicle _x} forEach _oldBodies; // delete all those
    private _oldDogTags = [];
    {
        private _playerDogTags = _x call _fnc_findDogTags; // find the dog tags on this persion
        private _playerObj = _x; // grab player object for later
        {
            private _dogTagData = _allDogtags getOrDefault [_x,""]; // grab the data on the tag
            if (_dogTagData#0 == _name) then {_playerObj removeItem _x}; // if the first element of the tag data (name) equals the name, then remove the item from the player
        } forEach _playerDogTags;
    } forEach (allPlayers - (entities "HeadlessClient_F")); // for all players
};
private _currentTags = player call _fnc_findDogTags;

{ // Param: corpse object near HQ with UID, I.E player. E.G. "ace_dogtag_1"
    private _owner = _x getVariable ["owner",objNull];
    private _uid = _x getVariable ["ownerUID",""];
    private _pos = (_softBannedUIDList findIf {_x#0 == _uid});
    if (_pos == -1) exitWith {}; // not on ban list
    deleteVehicle _x; // need to figure out how to find the dog tag for the corpse and delete it
    private _banData = _softBannedUIDList#_pos;
    _banData call _fnc_cleanUpAll;
    private _unit = _uid call BIS_fnc_getUnitByUID; // fixes an obscure ass bug I crashed out over
    if (_unit isNotEqualTo objNull) then { // is online case
        ["BODY",_unit] remoteExec ["A3AE_ONE_LIFE_FUNCTIONS_fnc_exitQuarantine",2]; 
    };
} forEach _nearDeadPlayers;

{ // Param: dog tag item in inventory. E.G. "ace_dogtag_1"
    private _dogTagData = _allDogtags getOrDefault [_x,""];
    private _name = _dogTagData#0;
    private _pos = (_softBannedUIDList findIf {_x#1 == _name});
    if (_pos == -1) exitWith {}; //  not on ban list
    private _banData = _softBannedUIDList#_pos;
    _banData call _fnc_cleanUpAll;
    private _unit = _banData#0 call BIS_fnc_getUnitByUID;
    if (_unit isNotEqualTo []) then { // is online case
        ["TAGS",_unit] remoteExec ["A3AE_ONE_LIFE_FUNCTIONS_fnc_exitQuarantine",2]; 
    };
} forEach _currentTags;

missionNamespace setVariable ["A3A_softBannedUIDList",_softBannedUIDList,true];
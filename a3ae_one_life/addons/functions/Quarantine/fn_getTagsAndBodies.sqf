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
private _allPlayerItems = uniformItems player + vestItems player + backpackItems player;
private _playerDogTags = _allPlayerItems select {_x find "ACE_dogtag_" != -1};

{ // Param: corpse object near HQ with UID, I.E player. E.G. "ace_dogtag_1"
    private _owner = _x getVariable ["owner",objNull];
    private _uid = _x getVariable ["ownerUID",""];
    private _pos = (_softBannedUIDList findIf {_x#0 == _uid});
    if (_pos == -1) exitWith {}; // not on ban list
    deleteVehicle _x; // need to figure out how to find the dog tag for the corpse and delete it
    _softBannedUIDList deleteAt _pos;
    private _unit = _uid call BIS_fnc_getUnitByUID; // fixes an obscure ass bug I crashed out over
    if (_unit isNotEqualTo objNull) then { // is online case
        ["BODY"] remoteExec ["A3AE_ONE_LIFE_FUNCTIONS_fnc_exitQuarantine",_unit]; 
    };
} forEach _nearDeadPlayers;

{ // Param: dog tag item in inventory. E.G. "ace_dogtag_1"
    private _dogTagData = _allDogtags getOrDefault [_x,""];
    private _name = _dogTagData#0;
    private _pos = (_softBannedUIDList findIf {_x#1 == _name});
    if (_pos == -1) exitWith {}; //  not on ban list
    player removeItem _x;
    private _banData = _softBannedUIDList deleteAt _pos;
    private _oldBody = allDeadMen select {_x getVariable ["ownerUID"] isEqualTo _banData#0};
    deleteVehicle _oldBody;
    private _unit = _banData#0 call BIS_fnc_getUnitByUID;
    if (_unit isNotEqualTo []) then { // is online case
        ["TAGS"] remoteExec ["A3AE_ONE_LIFE_FUNCTIONS_fnc_exitQuarantine",_unit]; 
    };
} forEach _playerDogTags;

missionNamespace setVariable ["A3A_softBannedUIDList",_softBannedUIDList,true];
// Ran as local

#include "..\script_component.hpp"
FIX_LINE_NUMBERS()

params ["_target", "_caller", "_actionId", "_arguments"];

private _titleStr = "One Life";
private _softBannedUIDList = A3A_softBannedUIDList;
private _playersToRelease = createHashMap;
#define DISTANCE_BODY_GRAB 100

[_titleStr,"Grabbing your dog tags and bodies around HQ."] call A3A_fnc_customHint;

private _nearBodies = allDeadMen select {(_x distance2D (getMarkerPos respawnTeamPlayer)) < DISTANCE_BODY_GRAB};
private _nearDeadPlayers = _nearBodies select {(_x getVariable ["ownerUID",""]) != ""};
private _allBags = entities [["ACE_bodyBagObject"], []];
private _nearBags = _allBags select {(_x distance2D (getMarkerPos respawnTeamPlayer)) < DISTANCE_BODY_GRAB};
private _allDogTags = ace_dogtags_dogtagsData; // hashmap
private _currentTags = player call A3AE_ONE_LIFE_FUNCTIONS_fnc_findDogTags;

{ // Param: corpse object near HQ with UID, I.E player.
    private _owner = _x getVariable ["owner",objNull];
    private _uid = _x getVariable ["ownerUID",""];
    private _pos = (_softBannedUIDList findIf {_x#0 == _uid});
    if (_pos == -1) then { continue }; // not on ban list
    private _banData = _softBannedUIDList#_pos;
    _playersToRelease set [_banData,"BODY",true];
} forEach _nearDeadPlayers;

private _dogTagData = [];
{_dogTagData pushBackUnique (_x getVariable ["ace_dogtags_dogTagData",[]]);} forEach _nearBags;
{_dogTagData pushBackUnique (_allDogtags getOrDefault [_x,""]);} forEach _currentTags;

_tagsSubmitted = 0;
{ // Param: dog tag data. Only important value is the first one, the name
    private _name = _x#0;
    private _pos = (_softBannedUIDList findIf {_x#1 == _name});
    if (_pos == -1) then { continue }; //  not on ban list
    private _banData = _softBannedUIDList#_pos;
    _playersToRelease set [_banData,"TAGS",true];
    _tagsSubmitted = _tagsSubmitted + 1;
} forEach _dogTagData;

{
    private _uid = _x#0;
    private _name = _x#1;
    private _reason = _y;
    [_uid,_name] call A3AE_ONE_LIFE_FUNCTIONS_fnc_cleanUp;
    private _unit = _uid call BIS_fnc_getUnitByUID; // the _unit here was the dead body because both the alive player and the dead one share the same var name
    if (_unit isNotEqualTo objNull) then { // is online case
        [_unit,_reason] remoteExec ["A3AE_ONE_LIFE_FUNCTIONS_fnc_exitQuarantine",2]; 
    } else {
        [_uid] remoteExecCall ["A3AE_ONE_LIFE_FUNCTIONS_fnc_removeFromBanList",2];
    };
} forEach _playersToRelease;

[5,player] call A3A_fnc_playerScoreAdd;
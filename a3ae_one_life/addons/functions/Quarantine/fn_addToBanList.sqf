#include "..\script_component.hpp"
FIX_LINE_NUMBERS()

params [["_uid",""],["_name",""]];

if (_name == "") then {
    _name = name (_uid call BIS_fnc_getUnitByUID); // only works for people who are online
};
if (_name isEqualTo objNull) exitWith {Error_1("A valid name is required to add offline unit UID %1");};
private _softBannedUIDList = A3A_softBannedUIDList;
private _pos = (_softBannedUIDList findIf {_x#0 == _uid});
private _date = dateToNumber date;
if (_pos == -1) then {
    _softBannedUIDList pushBack [_uid,_name,_date];
    missionNamespace setVariable ["A3A_softBannedUIDList",_softBannedUIDList,true];
    Debug_1("UID %1 added to banlist");
} else {
    Debug_1("UID %1 already on banlist",_uid);
};
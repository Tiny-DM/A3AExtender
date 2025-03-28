#include "..\script_component.hpp"
FIX_LINE_NUMBERS()

params [["_uid",""],["_unit",""]];

if (_uid == "") then {_uid = getPlayerUID _unit};
private _softBannedUIDList = A3A_softBannedUIDList;
private _pos = (_softBannedUIDList findIf {_x#0 == _uid});
if (_pos != -1) then {
    _softBannedUIDList deleteAt _pos;
    missionNamespace setVariable ["A3A_softBannedUIDList",_softBannedUIDList,true];
    Debug_1("UID %1 removed from banlist");
} else {
    Debug_1("UID %1 not found on banlist to release",_uid);
};
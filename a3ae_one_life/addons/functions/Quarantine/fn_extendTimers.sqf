params [["_extendTime",8]];

#define HOUR 0.0001141554167 // 1 / 365 / 24
private _timeDiff = HOUR * _extendTime;
private _list = +A3A_softBannedUIDList;

{
    _data = _x;
    _data params ["_name","_uid","_originalTime"];
    private _newTime = _originalTime + _timeDiff;
    _data set [2, _newTime];
    _list set [_forEachIndex, _data];
} forEach _list;

missionNamespace setVariable ["A3A_softBannedUIDList",_list,true];
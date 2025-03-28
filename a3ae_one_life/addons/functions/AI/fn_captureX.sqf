private _unit = _this select 0;
private _playerX = _this select 1;
private _recruiting = _this select 3;

[_unit,"remove"] remoteExec ["A3A_fnc_flagaction",[teamPlayer,civilian],_unit];

if (!alive _unit) exitWith {};

private _sideX = side (group _unit);
private _interrogated = _unit getVariable ["interrogated", false];

private _modAggro = [0, 0];
private _modHR = false;
private _response = "";
private _fleeSide = _sideX;

if (_recruiting) then {
	_playerX globalChat localize "STR_A3A_fn_ai_captureX_recr1";

	private _chance = 0;
	if (_sideX == Occupants) then
    {
		if ("militia_" in (_unit getVariable "unitType")) then { _chance = 60;}
		else { _chance = 20;};
	}
	else
    {
		if ("militia_" in (_unit getVariable "unitType")) then { _chance = 60;}
		else { _chance = 40;};
	};
	if (_interrogated) then { _chance = _chance / 2 };

	if (random 100 < _chance) then
    {
        _modAggro = [1, 30];
		_response = localize "STR_A3A_fn_ai_captureX_recr_yes1";
		_modHR = true;
		_fleeSide = teamPlayer;
		if (A3A_oneLife && (random 100 < A3A_oneLifePOWReviveChance)) then {
			_softBannedUIDList = A3A_softBannedUIDList;
			private _player = selectRandom _softBannedUIDList;
			if (((_player#0 call BIS_fnc_getUnitByUID) isEqualTo objNull) && random 1 < 0.5) then {_player = selectRandom _softBannedUIDList}; // reroll once if offline
			_playerOBJ = _player#0 call BIS_fnc_getUnitByUID;
			if (_playerOBJ isNotEqualTo objNull) then { // is online case
        		[_playerOBJ,"POW"] remoteExec ["A3AE_ONE_LIFE_FUNCTIONS_fnc_exitQuarantine",2]; 
    		} else {
				private _uid = _player#0;
        		[_uid] remoteExec ["A3AE_ONE_LIFE_FUNCTIONS_fnc_removeFromBanList",2];
    		};
		};
	}
	else
    {
		_response =  localize "STR_A3A_fn_ai_captureX_recr_no1";
		_modAggro = [0, 0];
	};
}
else {
	_playerX globalChat localize "STR_A3A_fn_ai_captureX_dismiss";
	private _responseNum = str selectRandom [1,2,3];
	_response = localize ("STR_A3A_fn_ai_captureX_libresponse" + _responseNum);
    _modAggro = [-3, 30];
};


sleep 2;
_unit globalChat _response;

[_unit, _fleeSide] remoteExec ["A3A_fnc_fleeToSide", _unit];

private _group = group _unit;		// Group should be surrender-specific now
sleep 100;
if (alive _unit && {!(_unit getVariable ["incapacitated", false])}) then
{
	([_sideX] + _modAggro) remoteExec ["A3A_fnc_addAggression",2];
	if (_modHR) then { [1,0] remoteExec ["A3A_fnc_resourcesFIA",2] };
};

deleteVehicle _unit;
deleteGroup _group;
	
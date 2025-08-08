#include "..\script_component.hpp"
FIX_LINE_NUMBERS()

if (petros != (leader group petros)) then
{
	private _groupPetros = createGroup teamPlayer;
	[petros] join _groupPetros;
	_groupPetros selectLeader petros;
};

petros switchAction "PlayerStand";
petros disableAI "MOVE";
petros disableAI "AUTOTARGET";
petros setBehaviour "SAFE";

// Put petros back on the server, otherwise might cause issues on disconnect
[group petros, 2] remoteExec ["setGroupOwner", 2];

[getPos petros, false] remoteExec ["A3A_fnc_relocateHQObjects", 2];
_friendlyAirports = airportsX select {sidesX getVariable [_x,sideUnknown] == teamPlayer};
_enemyAirports = airportsX - _friendlyAirports; 
if ((count _friendlyAirports == 2) && {(petros distance2D (getMarkerPos (_enemyAirports#0))) < 4000 && {A3A_funnyEnding}}) then {
    ServerInfo_1("CAMPAIGN END WARNING: HQ moved to %1m away from final airbase",(petros distance2D (getMarkerPos (_enemyAirports#0))));
	["War Winning", "Try to avoid hitting the last airbase until the whole map is captured. If you do it anyways, try to make it a joint AO with the whole server."] call A3A_fnc_customHint;
};

sleep 5;
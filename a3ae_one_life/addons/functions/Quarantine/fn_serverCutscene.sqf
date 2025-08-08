// if (isNil "TNY_activateCutscene" || {!TNY_activateCutscene} exitWith {["Game End", "More players are required to end the campaign. Request an admin on Teamspeak once at least 15 players are online"] remoteExec ["A3A_fnc_customHint",-2]};

#define CUTSCENE_LENGTH 18
#define FLIGHT_TIME 40

if !(isNil "TNY_ENDING") exitWith {};
missionNamespace setVariable ["TNY_ENDING",true,true];

[] remoteExec ["A3AE_ONE_LIFE_FUNCTIONS_fnc_clientCutscene", [teamPlayer, civilian]];

sleep 46;
// video starts here
sleep CUTSCENE_LENGTH;
// video ends here, timer starts

sleep 3;
_description = ["THE RUSSIANS HAVE LAUNCHED ANSRBM STRIKE AND ARE SENDING BOMBERS WITH ESCORTS. THE SRBM IS NUCLEAR ARMED AND THEIR TARGET IS SOMEWHERE WITHIN CHERNARUS. TAKE IMMEDIATE SHELTER.", "SURVIVE"];
[[teamplayer,civilian], "SURVIVE", _description, objNull, "CREATED", 10, true, "Destroy", false] call BIS_fnc_taskCreate;
sleep (FLIGHT_TIME - 5);

sleep 20;

["SURVIVE", "SUCCEEDED"] call BIS_fnc_taskSetState;

_description = ["Russian strategic bombers are inbound from the north to raze any part of Chernarus the Scud didn't reach. Gather who you can and escape over the west map border, any way you can. Just GTFO before the bombers get here.","EVACUATE"];

[[teamplayer,civilian], "EVACUATE", _description, objNull, "CREATED", 10, true, "run", false] call BIS_fnc_taskCreate;

sleep 600;

["EVACUATE", "SUCCEEDED"] call BIS_fnc_taskSetState;
sleep 3;

isNil { ["ended", true] call A3A_fnc_writebackSaveVar };
["end1",true,true,true,true] remoteExec ["BIS_fnc_endMission",0];


#define DEFAULT_NUKE_PARAMS [[7071.78,7682.13,2],50000,2000]
#define FALLBACK_VID_TIME 18
#define FLIGHT_TIME 40

missionNamespace setVariable ["TNY_ENDING",true];

private _nukeParams = if (isNil "TNY_NUKE_PARAMS") then {DEFAULT_NUKE_PARAMS} else {TNY_NUKE_PARAMS};
private _colorCDF = "<t color='#004C99'>CDF</t>";
private _colorChDKZ = "<t color='#800000'>ChDKZ</t>";
private _colorNAPA = "<t color='#008000'>NAPA</t>";

0 fadeMusic 0;
sleep 3;
playMusic "LeadTrack06_F_Tank";
sleep 2;
3 fadeMusic 0.5;

"scene_1" cutText ["", "BLACK OUT", 5,true,true];
sleep 6;
"scene_2" cutText [format ["<t size='3'>October 22nd, 2009.<br/><br/>%1 seizes control of all airbases on Chernarus.<br/><br/>The war is over.</t>",_colorNAPA],"PLAIN", 1,true,true];
sleep 5;
"scene_2" cutFadeout 1;
sleep 2;
"scene_3" cutText [format ["<t size='3'>The %1 retreat west, while the %2 flee north. Petros himself radios to all NAPA forces and informs them that the rebellion has succeeded. </t>", _colorCDF, _colorChDKZ],"PLAIN", 1,true,true];
sleep 7;
"scene_3" cutFadeout 1;
sleep 2;
10 fadeMusic 0;
"scene_4" cutText ["<t size='3'>Unfortunately, the fleeing of ChDKZ forces has alerted Russian command, who percieves the loss of territory as an attack on Russian soil.</t>","PLAIN", 1,true,true];
sleep 7;
"scene_4" cutFadeout 1;
sleep 2;
"scene_5" cutText [format ["<t size='3'>A nuclear deterrent response is authorized.<br/><br/>At %1, RVA forces launch a single Scud SRBM towards Chernarus and scramble 2 TU-95 strategic bombers.", [dayTime, "HH:MM"] call BIS_fnc_timeToString],"PLAIN", 1,true,true];
sleep 5;
0 fadeMusic 0.7;
playMusic "LeadTrack05_F_Tank";
sleep 3;
"scene_5" cutFadeOut 1;
sleep 2;
private _vidScript = ["\x\A3AE_ONE_LIFE\addons\videos\finalVideo.ogv"] spawn BIS_fnc_playVideo;
_startTime = time;
waitUntil {sleep 1; (scriptDone _vidScript || {time > (_startTime + FALLBACK_VID_TIME)})};
terminate _vidScript;

_statBar = (uiNameSpace getVariable "H8erHUD") displayCtrl 1001;
_statBar ctrlSetText "";
_statBar ctrlCommit 0;
2 fadeMusic 0.5;


[FLIGHT_TIME] spawn A3AE_ONE_LIFE_FUNCTIONS_fnc_statBarCountdown;
"BIS_fnc_playVideo" cutfadeOut 2;
"scene_1" cutText ["", "BLACK IN", 2,true,true];
sleep FLIGHT_TIME;
1 fadeMusic 0;
sleep 0.5;
_nukeParams spawn A3AE_ONE_LIFE_FUNCTIONS_fnc_nukeEffects;
sleep 1; 
playMusic "";
sleep 20;
10 fadeMusic 0.5;
playMusic "LeadTrack02_F_Bootcamp";
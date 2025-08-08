/*params ["_layerName","_displayText","_displayType","_lifeTime","_fadeTime"];
_layerName cutText [_displayText,_displayType,_fadeTime,true,true];

sleep _lifeTime;

_layerName cutFadeOut 0;
*/

/*
Written by Tiny
Modification and redistribution prohitibited
*/

/*
New Data Structure:
[
[_startTime, _endTime, _speaker, _displayText],
[_startTime, _endTime, _speaker, _displayText]
]
e.g.
[
[0, 2.7, "Vasily", "Dawn, we have a BMP down. How copy, over?"],
[4, 10, "Dawn", "Vasily, we copy. Unable to send assistance at this time. Out."]
]

*/
// cutText example: "<t size='2'><t color='#004C99'>Grizzly 2: </t>Darkstar, this is Grizzly, SEAD, over.</t>"

if !(canSuspend) then {diag_log "fn_subtitledAudio ran in unscheduled. Schedule to allow sleeping between statements."};
#define TEXTSIZE 2
#define TEXTPOSITION "PLAIN DOWN"
params ["_data",["_fileStartTime",time],["_textSide",teamPlayer],["_textPosition",TEXTPOSITION],["_textSize",TEXTSIZE]];
_colorString = switch (_textSide) do {
    case (teamplayer): {"<t color='#008000'>"};;
    case (Occupants): {"<t color='#004C99'>"};
    case (Invaders): {"<t color='#800000'>"};
};

{
    _x params ["_subStartTime","_subEndTime","_speaker","_displayText"];
    private _sizeTextStart = ["<t size=",str _textSize,">"] joinString "";
    private _speakerText = [_speaker,": "] joinString "";
    private _textTagEnd = "</t>";
    private _prettyString = [_sizeTextStart,_colorString,_speakerText,_textTagEnd,_displayText,_textTagEnd] joinString "";
    private _onScreenTime = (_subEndTime - _subStartTime)/10;
    private _timeUntilPlay = _fileStartTime + _subStartTime;
    waitUntil {sleep 0.01; time > _timeUntilPlay};
    private _timeUntilStop = _fileStartTime + _subEndTime;
    "LAYER" cutText [_prettyString, _textPosition, _onScreenTime,true,true];
    waitUntil {sleep 0.01; time > _timeUntilStop};
    //"LAYER" cutText ["",_textPosition];
    "LAYER" cutFadeOut _onScreenTime;
} forEach _data;
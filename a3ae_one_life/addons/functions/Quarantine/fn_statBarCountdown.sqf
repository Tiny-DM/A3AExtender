#include "..\script_component.hpp"
FIX_LINE_NUMBERS()
#define DEFAULT_TIMER 40
params [["_timer",DEFAULT_TIMER]];
if (!hasInterface) exitWith {};
disableSerialization;
if (isNil "TNY_ENDING" || {!TNY_ENDING}) exitWith {};
if (isNull (uiNameSpace getVariable "H8erHUD")) exitWith {};
_display = uiNameSpace getVariable "H8erHUD";
if (isNil "_display") exitWith {};
countdownRunning = true;
if (isNil "countdownRunning" || {!countdownRunning}) exitWith {};
_setText = _display displayCtrl 1001;
_setText ctrlSetBackgroundColor [0,0,0,0];
_startTime = time;
_endTime = _startTime + _timer;

while {time < _endTime} do {
    _remTime = _endTime - time;
    private _time1Digit = (round (_remTime * 10)/10);
    _timerText = if (round _time1Digit == _time1Digit) then {
        format ["%1.0s",str _time1Digit];
    } else {
        format ["%1s",str _time1Digit];
    };
    if (_remTime < 10) then {_timerText = format ["<t color='#A81D1D'>%1</t>",_timerText]};
    if (_remTime < 0.2) then {_timerText = format ["<t color='#A81D1D'>DETONATION</t>"]};
    _textX = format ["<t size='1.5' shadow='2'>PROJECTED MISSILE IMPACT IN: %1</t>",_timerText];
    _setText ctrlSetStructuredText (parseText format ["%1", _textX]);
    _setText ctrlCommit 0;
    sleep 0.1;
};

sleep 10;
_setText ctrlSetStructuredText (parseText "");
_setText ctrlCommit 0;
countdownRunning = false;
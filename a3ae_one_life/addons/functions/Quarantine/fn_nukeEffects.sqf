// client
diag_log format ["_this: %1",_this];

_this spawn rhs_fnc_ss21_nuke_fx_smoke;
_this spawn rhs_fnc_ss21_nuke_fx_light;
_this spawn rhs_fnc_ss21_nuke_fx_shockwave;

// custom postprocessing

"colorCorrections" ppEffectEnable true; 
"colorCorrections" ppEffectAdjust [1.9, 30, 0, [0, 0, 0, 0], [1.6, 1, 0, 0.7], [0.9, 0.9, 0.9, 0]]; 
"colorCorrections" ppEffectCommit 0; 
 
"colorCorrections" ppEffectAdjust [1, 0.8, -0.001, [0, 0, 0, 0], [1.6, 1, 0, 0.7], [0.9, 0.9, 0.9, 0]]; 
"colorCorrections" ppEffectCommit 20; 
 
"filmGrain" ppEffectEnable true; 
"filmGrain" ppEffectAdjust [0.02, 1, 1, 0.1, 1, false]; 
"filmGrain" ppEffectCommit 5; 
sleep 25;
"colorCorrections" ppEffectAdjust [1, 1, 0, [0, 0, 0, 0], [1, 1, 1, 1], [0.299, 0.587, 0.114, 0], [-1, -1, 0, 0, 0, 0, 0]];
"colorCorrections" ppEffectCommit 180; 

sleep 180;
"filmGrain" ppEffectEnable false; 

"colorCorrections" ppEffectEnable false; 
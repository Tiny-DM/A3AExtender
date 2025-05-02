if (isServer) then {[8] call A3AE_ONE_LIFE_FUNCTIONS_fnc_extendTimers};

cutText [localize "STR_A3A_fn_base_resourcecheckSkipTime_begin","BLACK",5];
sleep 10;
skiptime 8;
forceWeatherChange;
cutText [localize "STR_A3A_fn_base_resourcecheckSkipTime_end","BLACK IN",10];





// This is an idiotic way of managing an idiotic issue:
// The way the list is continuously broadcasted across the network leads to desyncs and problems
// So we just do all that operation on the server and have the one true copy be server sided
// Problem: Clients need to use this a lot for lists and UI elements
// Solution: Call this whenever anything happens

params ["_mode",["_params",[]]];

remoteExecutedOwner publicVariableClient "A3A_softBannedUIDList";
// Now that their copy is allegedly up to date...
switch (_mode) do {
    case "VIEWDEADLIST": {
        _params remoteExec ["A3AE_ONE_LIFE_FUNCTIONS_fnc_viewDeadList",remoteExecutedOwner];
    };
    case "GETNEARHQ": {
        _params remoteExec ["A3AE_ONE_LIFE_FUNCTIONS_fnc_getTagsAndBodies",remoteExecutedOwner];
    };
    default {};
};
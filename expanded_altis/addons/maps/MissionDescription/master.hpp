// In map template description.ext use:
// #include "MissionDescription\master.hpp"
// Whether order should be maintained is unknown.

author = $STR_antistasi_credits_generic_author_text;
Keys[] = {"A3-Antistasi-is-not-available-in-single-player"};
KeysLimit = 2;  // Even if player tampers with his unlocked keys, this will never become true.

#ifndef CUSTOM_A3A_CLASS
	class A3A {
		version[] = {3,0,0};
	}; //used mainly to detect that the mission is a A3A mission, can also contain other data in the future
#endif

#include "gameSettings.hpp"
#include "params.hpp"
#include "CfgIdentities.hpp"
#include "CfgRemoteExec.hpp"
allowFunctionsLog = 1;
enableDebugConsole[] = {
    "76561198977000729", //antistasi_official
    "76561197981991967", //Bob Murphy
    "76561198011383725", //Spoffy
    "76561197993612092", //DoomMetal
    "76561198304402577", //FrostsBite
    "76561198087513761", //Hakon
    "76561198000461190", //John Jordan
    "76561198016623887", //Lazejun
    "76561199041872933", //Tiny
};
allowFunctionsRecompile = 1;

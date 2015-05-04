enableSaving [false, false];

_igiload = execVM "IgiLoad\IgiLoadInit.sqf";
null=[[NATO_WEST,MHQ1,MHQ2],WEST,false,0] execVM "BRS\BRS_launch.sqf";


execVM "Scripts\grenadeStop.sqf";
execVM "R3F_LOG\init.sqf";

box1 addAction ['<t color="#FFFF00">' + "Remove Fatigue" + '</t>', "scripts\Loadout\Fatigue.sqf"];
box1 addAction ['<t color="#FFFF00">' + "Squad Leader" + '</t>', "scripts\Loadout\SL.sqf"];
box1 addAction ['<t color="#FFFF00">' + "Team Leader" + '</t>', "scripts\Loadout\FTL.sqf"];
box1 addAction ['<t color="#FFFF00">' + "Rifleman" + '</t>', "scripts\Loadout\Rifleman.sqf"];
box1 addAction ['<t color="#FFFF00">' + "Designated Marksman" + '</t>', "scripts\Loadout\Marksman.sqf"];
box1 addAction ['<t color="#FFFF00">' + "Anti-Tank Rifleman" + '</t>', "scripts\Loadout\ATR.sqf"];
box1 addAction ['<t color="#FFFF00">' + "Medic" + '</t>', "scripts\Loadout\Medic.sqf"];
box1 addAction ['<t color="#FFFF00">' + "Automatic Rifleman" + '</t>', "scripts\Loadout\AR.sqf"];
box1 addAction ['<t color="#FFFF00">' + "MG Gunner" + '</t>', "scripts\Loadout\MG.sqf"];
box1 addAction ['<t color="#FFFF00">' + "Ammo Bearer" + '</t>', "scripts\Loadout\Ammo.sqf"];
box1 addAction ['<t color="#FFFF00">' + "Anti Tank Specialist" + '</t>', "scripts\Loadout\AT.sqf"];
box1 addAction ['<t color="#FFFF00">' + "Pilot" + '</t>', "scripts\Loadout\Pilot.sqf"];
box1 addAction ['<t color="#FFFF00">' + "Crewman" + '</t>', "scripts\Loadout\Crewman.sqf"];

if ( isDedicated ) exitWith {}; 
waitUntil { !( isNull player ) }; 
player enableFatigue false; 

// Not sure if the effect is persistent through death (should be). If it's not then use an Respawn EH to re-apply it. 
player addEventHandler ["respawn", {(_this select 0) enableFatigue false;}];  

MY_KEYDOWN_FNC = { 
    private [ "_keys" ]; 
    _keys = actionKeys "User15"; 
    if ( count _keys > 0 ) then { 
        if (_this in _keys) then {  
            nul = [] execVM "keytest.sqf"; 
        }; 
    } else { 
        if ( _this == 15 ) then { 
            nul = [] execVM "keytest.sqf"; 		
        }; 
    }; 
};  

toggled = 0; 

waituntil {!(isNull (findDisplay 46))}; 
(findDisplay 46) displayAddEventHandler ["KeyDown","(_this select 1) call MY_KEYDOWN_FNC;false;"];



/** MHQ init script
  * Overview: Adds Battlefield Respawn System and R3F object save function
 */
hint "MHQ Init Started";
_veh = (_this select 0);
0 = [[_veh],west,false,50] execVM "BRS\BRS_launch.sqf";
hint "BRS Loaded";
0 = [_veh,"nato_pick"] execVM "R3F_LOG\USER_FUNCT\do_not_lose_it.sqf";
hint "MHQ R3F do not lose it loaded";
  
  
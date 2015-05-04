/* Creation Factory Init
 * Add R3F Creation Factory and do_not_lose_it
  */
  _cFactory = (_this select 0);
 0 = [_cFactory, -1, nil, "MEDIUM"] execVM "R3F_LOG\USER_FUNCT\init_creation_factory.sqf";
 0 = [_cFactory,"nato_pick"] execVM "R3F_LOG\USER_FUNCT\do_not_lose_it.sqf";
 
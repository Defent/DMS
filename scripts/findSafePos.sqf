if(isServer) then {
	private ["_pos","_centerPos","_fetchPos"];

	_centerPos = [getMarkerPos "center",4000,20000,10,0,25,0];
	
	_fetchPos = false;
	
	_int = 1;
	
	
	while {!_fetchPos} do {
	
		sleep 2;
		
		_pos = _centerPos call BIS_fnc_findSafePos;
		_int = _int + 1;
		_fetchPos = true;
	
	if (_fetchPos) then {
		diag_log("DMS: Found valid position at: (%1) in (%2) tries!",_pos,_int);
	};

	// more if exceptions to come
	
	// water if exception to be added above 
	
	};
	_pos set [2,0];
	_pos
	//DMS_PosFound = true;
	//DMS_PosFound = true;
};




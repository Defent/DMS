private ["_sleepTime","_run","_countArray","_randomMiss","_missVar","_minTime","_maxTime","_missionFnc","_MainArray"];
// First we add the array of missions
_MainArray = ["MM1","MM2","MM3","MM4","MM5","MM6","MM7","MM8","MM9","MM10"];
//DMS_SideArray = ["SM1","SM2"];

_minTime = 1*1; //1 sec
_maxTime = 2*2; //4 sec


_sleepTime = (random (_maxTime - _minTime)) + _minTime;
sleep _sleepTime;

_countArray = count _MainArray;
_slct = floor (random _countArray);
_missVar = _MainArray select _slct;


[] execVM format ["mission\missions\%1.sqf",_missVar];	

//DMS_MissionRunning = 1;

/*
	@file Version: 1.Bf
	@file name: buy.sqf
	@file Author: TAW_Tonic
	@file edit: 5/19/2013
	Copyright © 2013 Bryan Boardwine, All rights reserved
	See http://armafiles.info/life/list.txt for servers that are permitted to use this code.
*/
private["_veh","_ret"];
_veh = _this select 0;
_ret = false;

switch (life_veh_shop) do
{
	case "civ_car": {_ret = license_civ_driver;};
	case "civ_car2": {_ret = license_civ_driver;};
	case "civ_car3": {_ret = license_civ_driver;};
	case "donator_car":	{_ret = license_civ_driver;};	
	case "civ_ship": {_ret = license_civ_boat;};
	case "civ_ship2": {_ret = license_civ_boat;};
	case "civ_ship3": {_ret = license_civ_boat;};
	case "civ_air": {_ret = license_civ_air;};
	case "cop_air": {_ret = license_cop_air;};
	case "cop_air2": {_ret = license_cop_air;};
	case "donator_heli": {_ret = license_civ_air;};
	case "civ_truck_shop":	{_ret = license_civ_truck;};
	case "civ_servt": {_ret = license_civ_driver;};
	case "reb_car": {_ret = true;};
	case "reb_car2": {_ret = true;};
	case "reb_ship1": {_ret = true;};
	case "reb_ship2": {_ret = true;};
	case "reb_air": {_ret = true;};
	case "cop_car": {_ret = true;};
	case "cop_car2": {_ret = true;};
	case "fed_car": {_ret = true;};
	case "fed_air": {_ret = true;};
	case "cop_ship": 
	{
		hint format["%1", _veh];
		if(_veh == "B_Boat_Armed_01_minigun_F") then
		{
			_ret = license_cop_cg;
		}
			else
		{
			_ret = true;
		};
	};
};

_ret;
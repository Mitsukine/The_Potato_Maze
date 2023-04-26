//set grid / title size
#macro TS	16

//get titles in room

var _w = ceil (room_width / TS);
var _h = ceil (room_height / TS);

//create motion planning grid
global.mp_grid = mp_grid_create (0, 0, _w, _h, TS, TS);

//add solid instance to grid
mp_grid_add_instances(global.mp_grid, obj_wall, false);
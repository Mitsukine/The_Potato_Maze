// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function collision3(){
		var _tx = x;
		var _ty = y;
		
		x = xprevious;
		y = yprevious;
		
		var _disx = abs(_tx - x);
		var _disy = abs(_ty - y);
		
		repeat (_disx){
			if !place_meeting (x + sign(_tx -x), y, obj_enemy_chest2) x += sign (_tx - x);
		} 
		repeat (_disy){
			if !place_meeting (x, y + sign(_ty -y), obj_enemy_chest2) y += sign (_ty - y);
		} 
}
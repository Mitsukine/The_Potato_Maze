function reset_variables(){
	left = 0;
	right = 0;
	up = 0;
	down = 0;
	xaxis = 0;
	yaxis = 0;
}

function get_input() {
	//if keyboard_check(ord("A")) left = 1;
	//if keyboard_check(ord("D")) right = 1;
	//if keyboard_check(ord("W")) up = 1;
	//if keyboard_check(ord("S")) down = 1;
	
	if keyboard_check(vk_left) left = 1;
	if keyboard_check(vk_right) right = 1;
	if keyboard_check(vk_up) up = 1;
	if keyboard_check(vk_down) down = 1;
	
	if keyboard_check(ord("A")) left = 1;
	if keyboard_check(ord("D")) right = 1;
	if keyboard_check(ord("W")) up = 1;
	if keyboard_check(ord("S"))down = 1;
}

function calc_movement() {
	xaxis = right - left;
	yaxis = down - up;
	
	if xaxis != 0 facing = xaxis;
	
	
	if xaxis != 0 or yaxis != 0 {
		//get direction
		var _dir = point_direction(0,0, xaxis, yaxis);
		
		//get distance of movement
		xaxis = lengthdir_x(walk_speed, _dir);
		yaxis = lengthdir_y(walk_speed, _dir);
		
		//add movement to position
		x += xaxis;
		y += yaxis;
	}
}

function collision() {
		//set target values
		var _tx = x;
		var _ty = y;
		
		//move back to last step position, out of collision
		x = xprevious;
		y = yprevious;
		
		// get distance to move
		var _disx = abs(_tx - x);
		var _disy = abs(_ty - y);
		
		//move as far as in xy before hitting wall
		repeat (_disx){
			if !place_meeting (x + sign(_tx -x), y, obj_wall) x += sign (_tx - x);
		} 
		repeat (_disy){
			if !place_meeting (x, y + sign(_ty -y), obj_wall) y += sign (_ty - y);
		} 
}
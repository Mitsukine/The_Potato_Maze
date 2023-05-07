function check_facing(){
	var _facing = sign (x - xp);
	if _facing != 0 facing = _facing;
}

function check_for_player(){
	//if player is close, enemy starts chasing 
	var _dis = distance_to_object(obj_player);
	
	//start chasing? or is alert and out of attack distance?
	if ((_dis <= alert_dis) or alert) and _dis > attack_dis { 
	alert = true;
	
	//should calc path?
	if calc_path_timer-- <=0 {
		
		//reset timer
		calc_path_timer= calc_path_delay;
		
	// make a path for player?
	if x == xp and y == yp var _type = 0 else var _type = 1;
	var _found_player = mp_grid_path(global.mp_grid, path, x, y, obj_player.x, obj_player.y, _type);

	//start path if reach the player
	if _found_player {
		path_start(path, move_speed, path_action_stop, false);
		}
	}
	} else {
		//close enough to attack?
		if _dis<= attack_dis {
		path_end();
		}
	}
}
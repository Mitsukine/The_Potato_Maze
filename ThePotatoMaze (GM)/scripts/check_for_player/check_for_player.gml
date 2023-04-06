function check_for_player(){
	//if player is close, enemy starts chasing 
	var _dis = distance_to_object(obj_player);
	move_towards_point(obj_player.x, obj_player.y, 0.8);
}
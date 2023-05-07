if (distance_to_object (obj_player) < 200) {
	
	move_towards_point(obj_player.x, obj_player.y, 1);
	
	} else if (distance_to_object(obj_player) > 250){
		
		x = x;
		y = y;
		speed = 0;
		}
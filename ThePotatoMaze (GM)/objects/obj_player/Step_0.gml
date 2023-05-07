reset_variables();

get_input();

calc_movement();

animation();

switch (state){
	case states.IDLE:
		check_for_player();
		if path_index != -1 state = states.WALK;
		sprite_index = spr_idle;
		animation();
	break;
	
	case states.WALK:
		check_for_player();
		check_facing();
		sprite_index = spr_walk;
		if path_index != -1 state = states.IDLE;
		animation();
	break;
	
	case states.DEAD:
		sprite_index = spr_dead;
		animation();
	break;
	}
reset_variables();

get_input();

calc_movement();

animation();

switch (state){
	case states.IDLE:
		check_for_player();
		if path_index != -1 state = states.WALK;
		
		animation();
	break;
	
	case states.WALK:
		check_for_player();
		check_facing();
		
		if path_index != -1 state = states.IDLE;
		animation();
	break;
	
	case states.DEAD:
		
		animation();
	break;
	}
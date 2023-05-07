if (room==rm_level){
if(keyboard_check_pressed(ord("R"))){
	switch (room){
	
		case rm_level:
			room_restart();
		break;
		
		case rm_win:
		room_goto(rm_level);
		break;	
		
	case rm_lose:
		room_goto(rm_level);
		break;
		}
	}

	if(lives <= 0){
		room_goto(rm_lose);
	}
}
if (keyboard_check_pressed(vk_escape)){
	if (room == rm_lose){
			game_end();
	}
	
	if (room== rm_win){
			game_end();
	}
}
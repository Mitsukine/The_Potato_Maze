switch (room)

{
	case rm_start:
		room_goto(rm_level);
		break;
	
	case rm_win:
		room_goto(rm_level);
		break;
		
	case rm_lose:
		room_goto(rm_level);
		break;
}

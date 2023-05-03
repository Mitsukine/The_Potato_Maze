switch(room)
{
	case rm_start:
	draw_set_halign(fa_center);
	draw_text_transformed_color(room_width/2,50,"THE POTATO MAZE", 3,3,0,c_white,c_white,c_white,c_white,1);
	draw_text(room_width/2,200,
	@" >> PRESS ENTER TO START <<
	UP
	LEFT
	RIGHT
	DOWN
	SPACE
	SETTINGS");
	
	
	draw_set_halign(fa_center)
	break;

	case rm_lose :
	draw_set_halign(fa_center);
	draw_text_transformed_color(room_width/2,50,"YOU GOT FRIED!", 3,3,0,c_white,c_white,c_white,c_white,1);
	draw_text(room_width/2,200, @"GAME OVER
	ENTER TO RESTART
	PRESS M TO RETURN TO MENU");
	draw_set_halign(fa_center);
	break;
	
	case rm_win :
	draw_set_halign(fa_center);
	draw_text_transformed_color(room_width/2,50,"YOU HOT SPUD!", 3,3,0,c_white,c_white,c_white,c_white,1);
	draw_text(room_width/2,200, @"YOU WIN
	ENTER TO RESTART
	PRESS M TO RETURN TO MENU");
	draw_set_halign(fa_center);
	break;
}


if keyboard_check(vk_alt)  {
	mp_grid_draw(global.mp_grid);
}
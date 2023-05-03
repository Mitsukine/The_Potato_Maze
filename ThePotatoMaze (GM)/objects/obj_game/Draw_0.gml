switch(room) {
	case rm_start:
	draw_set_halign(fa_center);
	draw_set_font(PixelHour)
	draw_text_transformed_color(room_width/2,200,@"THE POTATO 
MAZE", 3,3,0,c_red,c_white,c_red,c_white,1);
	draw_set_font(font_PlayMeGames)
	draw_text(room_width/2,600,
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
	draw_set_font(PixelHour)
	draw_text_transformed_color(room_width/2,200,"YOU GOT FRIED!", 3,3,0,c_white,c_white,c_white,c_white,1);
	draw_set_font(font_PlayMeGames)
	draw_text(room_width/2,500, @"GAME OVER
ENTER TO RESTART
PRESS M TO RETURN TO MENU");
	draw_set_halign(fa_center);
	break;
	
	case rm_win :
	draw_set_halign(fa_center);
	draw_set_font(PixelHour)
	draw_text_transformed_color(room_width/2,200,"YOU HOT SPUD!", 3,3,0,c_white,c_white,c_white,c_white,1);
	draw_set_font(font_PlayMeGames)
	draw_text(room_width/2,500, @"YOU WIN
ENTER TO RESTART
PRESS M TO RETURN TO MENU");
	draw_set_halign(fa_center);
	break;

	case rm_level:
		draw_text(1000,1120, "LIVES:" +string(lives))
		break;
}

if keyboard_check(vk_alt)  {
	mp_grid_draw(global.mp_grid);
}
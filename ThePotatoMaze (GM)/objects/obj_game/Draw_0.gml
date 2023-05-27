switch(room) {
	case rm_start:
	draw_set_halign(fa_center);
	
	draw_set_font(font_PlayMeGames)
	draw_text(room_width/2,600,
@" >> PRESS ENTER TO START <<
UP
LEFT
RIGHT
DOWN
OPEN");
	draw_text(room_width/2,1000,
@"Music by Marllon Silva aka xDeviruchi

Tileset assets by hilau

Character Design, Dev & Coding by Mangekyo")
	draw_set_halign(fa_center)
	break;

	case rm_lose :
	draw_set_halign(fa_center);
	draw_set_font(PixelHour)
	draw_text_transformed_color(room_width/2,300,"YOU GOT FRIED", 3,3,0,c_white,c_red,c_white,c_red,1);
	draw_set_font(font_PlayMeGames)
	draw_text(room_width/2,750, @"GAME OVER
PRESS R TO RESTART
PRESS ENTER TO RETURN TO MENU
PRESS ESC TO QUIT THE GAME");
	draw_set_halign(fa_center);
	break;
	
	case rm_win :
	draw_set_halign(fa_center);
	draw_set_font(PixelHour)
	draw_text_transformed_color(room_width/2,300,"YOU HOT SPUD", 3,3,0,c_green,c_green,c_green,c_green,1);
	draw_set_font(font_PlayMeGames)
	draw_text(room_width/2,835, @"YOU WIN
PRESS R TO RESTART
PRESS ENTER TO RETURN TO MENU
PRESS ESC TO QUIT THE GAME");

	draw_set_halign(fa_center);
	break;

	case rm_level:
		draw_text(1000,1120, "LIVES:" +string(global.life))
		break;
}

//	if keyboard_check(vk_alt)  {
//		mp_grid_draw(global.mp_grid);
//}
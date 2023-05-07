if (place_meeting(x,y,obj_player)) && (chestTriggered = false) {
	if (keyboard_check(vk_space)){
		chestTriggered = true;
		if (loot = 1) && chestOpened = false {
			instance_create_depth(x, y, -1000, obj_meme1) chestOpened = true;
			}
		if (loot = 2) && chestOpened = false {
			instance_create_depth(x, y, -1000, obj_meme2) chestOpened = true;
			}
		if (loot = 3) && chestOpened = false {
			instance_create_depth(x, y, -1000, obj_meme3) chestOpened = true; 
			}
			alarm [1] = 60;
			alarm [2] = 30;
			image_index = 1;
			depth = -y
	}
}
if (place_meeting(x,y,obj_player)) && (chestTriggered = false) {
	if (keyboard_check(vk_space)){
		chestTriggered = true;
		if (loot = obj_enemyChest) && chestOpened = false {
			instance_create_depth(245, 1007, 0, obj_enemyChest) chestOpened = true;
			}
			
			alarm [1] = 45;
			alarm [2] = 20;
			image_index = 1;
			depth = -y
		}
	}
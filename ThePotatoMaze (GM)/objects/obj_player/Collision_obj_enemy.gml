instance_destroy();

if (global.life > 1)
{
	global.life -= 1;
	instance_create_layer(150,240, "Player", obj_player);
}
else
{
	room_goto(rm_lose);
}

//if (global.life > 0)  switch (room) {
	//case rm_level:
		//room_goto(rm_lose);
		//break;
		//}
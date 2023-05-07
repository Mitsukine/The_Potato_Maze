lives -= 1;

if (lives >0)
{
	lives -=1;
	instance_create_depth(150,250, obj_player);
}
else
{
	instance_create_depth(0,0,rm_lose)
}
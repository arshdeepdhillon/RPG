if(hp <= 0)
{
	with(instance_create_layer(x, y, layer, dead_obj))
	{
		direction = other.hitfrom;
		horiSpeed = lengthdir_x(3,direction);
		vertSpeed = lengthdir_y(3,direction) - 3;
		
		if(sign(horiSpeed) != 0)
		{
			image_xscale = sign(horiSpeed);
		}
	}
	
	instance_destroy();
}
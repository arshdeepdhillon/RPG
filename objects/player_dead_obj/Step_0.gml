
if(done == 0)
{
	vertSpeed += grv;

	//calculates horizontal collision
	if(place_meeting(x + horiSpeed, y, wall_obj))
	{	
		while(!place_meeting(x + sign(horiSpeed), y, wall_obj))
		{
			x += sign(horiSpeed);
		}
		horiSpeed = 0;	
	}

	x += horiSpeed; //move 


	//calculates vertical collision
	if(place_meeting(x, y + vertSpeed, wall_obj))
	{	
		if(vertSpeed > 1) //found a vertical collision
		{
			done = 1;
			image_index = 1;
			alarm[0] = 60;
		}
		
		while(!place_meeting(x, y + sign(vertSpeed), wall_obj))
		{
			y += sign(vertSpeed);
		}
		vertSpeed = 0;	
	}

	y += vertSpeed ; //move 
}
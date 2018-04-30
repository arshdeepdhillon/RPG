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
	while(!place_meeting(x, y + sign(vertSpeed), wall_obj))
	{
		y += sign(vertSpeed);
	}
	vertSpeed = 0;	
}

y += vertSpeed ; //move 



//animation
	//displaying jump animation
if(!place_meeting(x, y + 1, wall_obj)) //if there is not collision 1 pixel below us
{
	sprite_index = enemy_jumpingS;
	image_speed = 0;	
	if(sign(vertSpeed) > 0)
	{
		image_index = 1;
	}
	else
	{
		image_index = 0;
	}
}
else
{
	image_speed = 1;
	if(horiSpeed == 0)
	{
		sprite_index = enemyS;
	}
	else
	{
		sprite_index = enemy_runningS;
	}
}

	//displaying left and right animation
if(horiSpeed != 0)
{ 
	image_xscale = sign(horiSpeed);
}


















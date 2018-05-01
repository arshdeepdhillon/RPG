//happens at every single frame

//get keyboard input

if(hasControl)
{
	left_key = keyboard_check(vk_left) or keyboard_check(ord("A"));
	right_key = keyboard_check(vk_right) or keyboard_check(ord("D"));
	jump_key = keyboard_check_pressed(vk_up) or keyboard_check(ord("W"));

	//calculate player movement
	var move = right_key - left_key;
	horiSpeed = move * walkSpeed;

	vertSpeed += grv;

	if(place_meeting(x,y + 1, wall_obj) && jump_key) 
	{
		vertSpeed = -8;
	}
}
else
{
	right_key = 0;
	left_key = 0;
	jump_key = 0;
}


/*	 
It checks if there is a collision by moving the player obj and 
checking if it collides with the wall obj.

The x+horiSpeed to check the x position
The y to check the y position
The wall_obj object to check for

Returns True or False
*/

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
	sprite_index = player_jumpingS;
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
	if(sprite_index = player_jumpingS)
	{
		audio_play_sound(landing_snd, 4, false);
	}
	
	
	image_speed = 1;
	if(horiSpeed == 0)
	{
		sprite_index = playerS;
	}
	else
	{
		sprite_index = player_runningS;
	}
}

	//displaying left and right animation
if(horiSpeed != 0)
{ 
	image_xscale = sign(horiSpeed);
}


















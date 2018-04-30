
//position of the gun
x = player_obj.x - 5; 
y = player_obj.y + 13;

image_angle = point_direction(x,y,mouse_x,mouse_y);
firingdelay -= 1;
recoil = max(0, recoil - 1); //4..3..2..1..0..0..
 
if(mouse_check_button(mb_left) && firingdelay < 0)
{
	firingdelay = 5;
	recoil = 4;
	
	ScreenShake(2, 10);
	
	//with: indicates all instances of this object are to run in the code block
	//instance_create_layer: Returns: instance ID value	
	with (instance_create_layer(x, y, "Bullets", bullet_obj))
	{
		speed = 25; //speed of the bullet (25 fps)
		direction = other.image_angle + random_range(-2,2); //use of other in this block allows is to refer to gun_obj 
		image_angle = direction; 
	}
}

//moving the gun back recoil length in x and y direction based on the image_angle (the angle of the gun)
x -= lengthdir_x(recoil,image_angle);
y -= lengthdir_y(recoil,image_angle);


//flipping the gun to show hands at appropriate side 
if(image_angle > 90 && image_angle < 270) //facing left
{
	image_yscale = -1;	
}
else
{
	image_yscale = 1;	
}

/// @description Player dying
with(gun_obj)
{
	instance_destroy(); //destroy the gun
}
//this will also carry all the variables
instance_change(player_dead_obj,true); //true: do the create event


//now we are change of player_dead_obj

direction = point_direction(other.x, other.y, x, y);

horiSpeed = lengthdir_x(6, direction);
vertSpeed = lengthdir_y(4, direction) - 2; //-2 for the arc

if(sign(horiSpeed) != 0)
{
	/*
		pointing in the right direction 
		(i.e point in the direction we were hit by the last bullet)
	*/
	image_xscale = sign(horiSpeed); 
}
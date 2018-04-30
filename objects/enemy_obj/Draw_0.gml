draw_self();

if(flash > 0) //if flash redraw the sprite but in white colour
{
	flash--;
	shader_set(shader_white);
	draw_self();
	shader_reset();
}

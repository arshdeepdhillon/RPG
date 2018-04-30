
//update destination
if(instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}

//update this objects position
x += (xTo - x) / 25;
y += (yTo - y) / 25;

//center the camera inside the room
x = clamp(x, view_w_half + buff, room_width - view_w_half - buff); //buff: to keep the shake with in the view
y = clamp(y, view_h_half + buff, room_height - view_h_half - buff);

//screen shake
x += random_range(-shake_remain, shake_remain);
y += random_range(-shake_remain, shake_remain);
shake_remain = max(0, shake_remain - ((1 / shake_length) * shake_magnitude));

//update camera view
camera_set_view_pos(cam, x - view_w_half, y - view_h_half);


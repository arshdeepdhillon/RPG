cam = view_camera[0];
follow = player_obj;
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;
xTo = xstart; //or you can use just x 
yTo = ystart;

shake_length = 0;//60;
shake_magnitude = 0;//6;
shake_remain = 0;//6;
buff = 32; //so it doesnt shake the camera outside the room

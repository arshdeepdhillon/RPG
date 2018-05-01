horiSpeed = 3;
vertSpeed = -4;
grv = 0.3;
done = 0;

image_speed = 0;
image_index = 0; //for dead

ScreenShake(6, 60);
audio_play_sound(dead_snd, 10, false);

game_set_speed(30, gamespeed_fps); //slow mo!!
with(camera_obj)
{
	follow = other.id;
}
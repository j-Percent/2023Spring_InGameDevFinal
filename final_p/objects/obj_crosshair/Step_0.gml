/// @description Insert description here
// You can write your code in this editor

x=mouse_x;
y=mouse_y;

//if left mouse botton is pressed, spawn particle
if(mouse_check_button(mb_left) && global.fuel > 0){
	instance_create_depth(x, y, 0, obj_particle);
	audio_play_sound(snd_blocks, 1, 0);
	global.fuel --;
}

//if the right mouse button is pressed, spawn guided particle
if(mouse_check_button_pressed(mb_right) && global.fuel > 0){
	instance_create_depth(x, y, 0, obj_particle_alt);
	audio_play_sound(snd_shoot, 1, 0);
	global.fuel -= 5;
}

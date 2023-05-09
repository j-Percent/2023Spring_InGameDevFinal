// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//camera shake using viewport
function screen_shake(shake){
	camera_set_view_pos(view_camera[0], 
		camera_get_view_x(view_camera[0])+random_range(-shake, shake), 
		camera_get_view_y(view_camera[0])+random_range(-shake, shake));
}
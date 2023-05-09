/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(vk_up)){
	global.spawn_sec += 0.5
}

if(keyboard_check_pressed(vk_down)){
	global.spawn_sec -= 0.5
}

if(keyboard_check_pressed(vk_space)){
	room_goto(rm_start_menu);
}
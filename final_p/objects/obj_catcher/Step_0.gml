/// @description Insert description here
// You can write your code in this editor

//make catcher follow player

if(keyboard_check_released(vk_left)){
	x += -catcher_speed;
}

if(keyboard_check_released(vk_right)){
	x += catcher_speed;
}

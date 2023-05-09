/// @description Insert description here
// You can write your code in this editor

//up abd down movement
up = keyboard_check_pressed(global.control_up);
down = keyboard_check_pressed(global.control_down);

if(up || down){
	audio_play_sound(snd_select, 1, 0);
}

position += down - up;

//reset selection
if(position >= arr_length){position = 0;}
if(position < 0){position = arr_length-1;}

//if player presses space while on a selected text, do action
if(keyboard_check_pressed(vk_space)){
	switch(position){
		case 0:
		room_goto(rm_game);
		break;
		
		case 1:
		room_goto(rm_settings);
		break;
		
		case 2:
		game_end();
		break;
	}
}



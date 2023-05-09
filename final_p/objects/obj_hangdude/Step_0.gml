/// @description Insert description here
// You can write your code in this editor

if(ds_list_size(playerlist)>= ds_list_size(letterlist)){
		//completing a word
		for(var i = 0; i<ds_list_size(letterlist); i++){
			if(string_upper(ds_list_find_value(letterlist, i)) != string_upper(ds_list_find_value(playerlist, i))){
				show_debug_message(string_upper(ds_list_find_value(letterlist, i)));
				show_debug_message(string_upper(ds_list_find_value(playerlist, i)));
				wrong_answer = true;
			}
		}
		if(wrong_answer){
			global.timer -= global.time_reduction_puzzle;
			show_debug_message("ok");
			ds_list_clear(playerlist);
			wrong_answer = false;
		}else{
			show_debug_message("you win!");
			global.puzzle = false;
			instance_destroy(id);
		}
	}
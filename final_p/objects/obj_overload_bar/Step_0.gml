/// @description Insert description here
// You can write your code in this editor

if(ds_list_size(bar) == 0 || ds_list_size(bar) == 40){
	global.fail = true;
	room_goto(rm_end);
}


if(keyboard_check(vk_space)){
	counter_count++;
	if(counter_count >= timer && ds_list_size(bar) != 0){
		counter_count = 0;
		instance_destroy(ds_list_find_value(bar, ds_list_size(bar)-1));
		ds_list_delete(bar, ds_list_size(bar)-1);
	}
}else{
	count++;
	if(count >= timer && ds_list_size(bar) < 40){
		count = 0;
		ds_list_add(bar, instance_create_depth(obj_overload_bar.x, obj_overload_bar.y-16-(position*ds_list_size(bar)), 1, obj_block));
	}
}
/// @description Insert description here
// You can write your code in this editor

if(ds_list_size(obj_overload_bar.bar) <= 8 || ds_list_size(obj_overload_bar.bar) >= 32){
	image_blend = c_red;
}else{
	image_blend = c_white;
}
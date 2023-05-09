/// @description Insert description here
// You can write your code in this editor


x = room_width/4*3-75;
y = room_height/4*3+176;
count = 0;
timer = 0.5*room_speed;
position = 8;
bar = ds_list_create();
counter_count = 0;

for(var i=0; i<20; i++){
	ds_list_add(bar, instance_create_depth(obj_overload_bar.x, obj_overload_bar.y-16-(position*ds_list_size(bar)), 1, obj_block));
}
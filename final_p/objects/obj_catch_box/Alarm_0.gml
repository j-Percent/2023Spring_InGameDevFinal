/// @description Insert description here
// You can write your code in this editor


//random range for droplets spawns outside the play box
randomize();
	
//spawn droplets at a rate of x sec per spawn
instance_create_depth(random_range(x-45, x+45), y-45, 0, obj_droplets);

alarm[0] = global.spawn_sec*room_speed;


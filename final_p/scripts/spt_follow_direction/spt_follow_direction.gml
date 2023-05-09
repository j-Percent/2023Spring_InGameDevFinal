// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//follow direction function, was needed multiple times so I just made it a function
function follow_direction(obj_thing){
	//direction and rotation follow the target object
	target = instance_nearest(x,y,obj_thing);
	direction = point_direction(x,y,target.x,target.y);
	image_angle = direction;
}

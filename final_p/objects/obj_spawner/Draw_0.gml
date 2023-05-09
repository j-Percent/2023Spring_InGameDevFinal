/// @description Insert description here
// You can write your code in this editor


if(global.timer<=45){
	c=c_red;
}else{
	c=c_white;
}
//timer
draw_text_color(room_width/6*5+25, room_height/6-100, "Timer: "+string(global.timer), c, c, c, c, 1);

//minigame overload box
if(puzzle_counter<=3){
	draw_text_color(room_width/4*3, room_height/4*3, "ERROR", c_red, c_red, c_red, c_red, 1);
}

//wire box
if(!global.stage_wire){
	draw_text_color(room_width/4, room_height/4*3, "ERROR", c_red, c_red, c_red, c_red, 1);
}
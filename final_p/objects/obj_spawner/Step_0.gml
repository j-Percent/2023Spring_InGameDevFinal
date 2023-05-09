/// @description Insert description here
// You can write your code in this editor

if(win){
	win = false;
	room_goto(rm_end);
}
if(global.timer<=0){
	global.fail = true;
	room_goto(rm_end);
}
count++;
if(count >= 1*room_speed){
	global.timer--;
	count = 0;
}

if(global.timer <= 30 && !global.stage_wire){
	global.stage_wire = true;
	instance_create_layer(0, 0, "puzzle", obj_Mouse);
}

switch(state){
	case 0:
	switch(puzzle_counter){
		case 0:
		instance_create_layer(0, 0, "puzzle", obj_hangdude);
		break;
		case 1:
		instance_create_layer(0, 0, "puzzle", obj_cipher);
		break;
		case 2:
		instance_create_layer(0, 0, "puzzle", obj_hangdude);
		break;
		case 3:
		instance_create_layer(0, 0, "puzzle", obj_GM);
		break;
		case 4:
		instance_create_layer(0, 0, "puzzle", obj_cipher);
		instance_create_layer(0, 0, "puzzle", obj_overload_bar);
		instance_create_layer(0, 0, "puzzle", obj_space);
		break;
		case 5:
		instance_create_layer(0, 0, "puzzle", obj_GM);
		break;
		case 6:
		instance_create_layer(0, 0, "puzzle", obj_hangdude);
		break;
		case 7:
		instance_create_layer(0, 0, "puzzle", obj_GM);
		break;
		case 8:
		win = true;
		break;
	    default:	
		break;
	}
	puzzle_counter++;
	state = 1;
	break;
	case 1:
	if(global.puzzle==false && first_time){
		instance_create_layer(0, 0, "puzzle", obj_puzzle_complete);
		first_time = false;
	}
	
	if(global.switcher){
		first_time = true;
		state = 0;
		global.switcher = false;
		global.puzzle = true;
	}
	break;

}

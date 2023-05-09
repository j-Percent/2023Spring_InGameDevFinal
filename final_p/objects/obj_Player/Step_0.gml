
#region Movement

if (keyboard_check_pressed(ord("W")) && 
place_meeting(x, y - increment, obj_Node)) {
	with (obj_Node) {
		if (place_meeting(x, y + increment, obj_Player) && !moved) {
			obj_Player.move_valid = true;
		}
	}
	if (move_valid) {
		y -= increment;
		moves--;
		move_list = move_list + "1";
		move_valid = false;
	}
}
if (keyboard_check_pressed(ord("A"))&& 
place_meeting(x - increment, y, obj_Node)) {
	with (obj_Node) {
		if (place_meeting(x + increment, y, obj_Player) && !moved) {
			obj_Player.move_valid = true;
		}
	}
	if (move_valid) {
		x -= increment;
		moves--;
		move_list = move_list + "3";
		move_valid = false;
	}
}
if (keyboard_check_pressed(ord("S"))&& 
place_meeting(x, y + increment, obj_Node)) {
	with (obj_Node) {
		if (place_meeting(x, y - increment, obj_Player) && !moved) {
			obj_Player.move_valid = true;
		}
	}
	if (move_valid) {
		y += increment;
		moves--;
		move_list = move_list + "2";
		move_valid = false;
	}
}
if (keyboard_check_pressed(ord("D"))&& 
place_meeting(x + increment, y, obj_Node)) {
	with (obj_Node) {
		if (place_meeting(x - increment, y, obj_Player) && !moved) {
			obj_Player.move_valid = true;
		}
	}
	if (move_valid) {
		x += increment;
		moves--;
		move_list = move_list + "4";
		move_valid = false;
	}
}

if (keyboard_check_pressed(vk_backspace) && moves < 8) {
	last_move = string_copy(move_list, string_length(move_list), 1);
	
	if (last_move == 1) {
		y += increment;
		
		with (obj_Node) {
			if (place_meeting(x, y + increment, obj_Player)) {
				moved = false;
			}
		}
	}
	if (last_move == 2) {
		y -= increment;
		
		with (obj_Node) {
			if (place_meeting(x, y - increment, obj_Player)) {
				moved = false;
			}
		}
	}
	if (last_move == 3) {
		x += increment;
		
		with (obj_Node) {
			if (place_meeting(x + increment, y, obj_Player)) {
				moved = false;
			}
		}
	}
	if (last_move == 4) {
		x -= increment;
		
		with (obj_Node) {
			if (place_meeting(x - increment, y, obj_Player)) {
				moved = false;
			}
		}
	}
	
	moves++;
	move_list = string_copy(move_list, 1, string_length(move_list) - 1);;
}

with (obj_Node) {
	if (place_meeting(x, y, obj_Player)) {
		moved = true;
	}
}

#endregion

#region Check Movement

if (moves <= 0) {
	with (obj_Node) {
		if (place_meeting(x, y, obj_Player) && final == true && obj_Player.move_list == obj_GM.answer) {
			global.puzzle = false;
			global.timer -= global.time_reduction_puzzle;
			instance_destroy(obj_GM);
			instance_destroy(obj_Node);
			instance_destroy(obj_Player);
		}
		else {
			moved = false;
		}
	}
	x = startX;
	y = startY;
	moves = movesMax;
}

#endregion
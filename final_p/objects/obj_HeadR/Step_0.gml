if (place_meeting(x, y, obj_Mouse) && mouse_check_button_pressed(mb_left)) {
	latch = true;
	obj_NodeA.connectR = false;
	obj_NodeB.connectR = false;
	obj_NodeC.connectR = false;
}

if (place_meeting(x, y, obj_NodeA) && !latch && !obj_NodeA.latch) {
	x = obj_NodeA.x;
	y = obj_NodeA.y;
	obj_NodeA.connectR = true;
}

if (place_meeting(x, y, obj_NodeB) && !latch && !obj_NodeB.latch) {
	x = obj_NodeB.x;
	y = obj_NodeB.y;
	obj_NodeB.connectR = true;
}

if (place_meeting(x, y, obj_NodeC) && !latch && !obj_NodeC.latch) {
	x = obj_NodeC.x;
	y = obj_NodeC.y;
	obj_NodeC.connectR = true;
}

if (mouse_check_button_released(mb_left))
	latch = false;

if (latch) {
	if (x < room_width / 2 && x > 0)
		x = obj_Mouse.x;
	if (y > room_height / 2 && y < room_height)
		y = obj_Mouse.y;
	
	if (x >= room_width / 2) 
		x = room_width / 2 - 1;
	if (x <= 0) 
		x = 1;
	if (y <= room_height / 2) 
		y = room_height / 2 + 1;
	if (y >= room_height) 
		y = room_height - 1;
}
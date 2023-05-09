/// @description Insert description here
// You can write your code in this editor

spawn=0.4*room_speed;
spawn_count=0;
despawn=0.4*room_speed;
despawn_count=0;
val = 0;
timer = 0;
count = 0;
death = false;
start_end = false;
for(var i=0; i<8; i++){
	time[i] = .05*(i+1)*room_speed; 
}
c = c_white;
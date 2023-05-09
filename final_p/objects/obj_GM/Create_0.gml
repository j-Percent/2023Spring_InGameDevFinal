randomize();

offset = 100;
increment = 45;

level = irandom_range(1, 3);
//Level 1: Enter B6, Exit C5, Code B701
//Level 2: Enter F6, Exit C3, Code F32M
//Level 3: Enter F2, Exit C3, Code GBV5

answer = "";
code = "";
//Key:
// 1 = up
// 2 = down
// 3 = left
// 4 = right

for (i = 2; i <= 8; i++) {
	for (j = 2; j <= 8; j++) {
		node = instance_create_layer(i*increment + offset, j*increment + offset, "Instances", obj_Node)
		if (level == 1 && i == 4 && j == 6) {
			node.final = true;
		}
		if (level == 2 && i == 4 && j == 4) {
			node.final = true;
		}
		if (level == 3 && i == 4 && j == 4) {
			node.final = true;
		}
	}
}

if (level == 1) {
	player = instance_create_layer(3*increment + offset, 7*increment + offset, "Instances", obj_Player);
	player.startX = 3*increment + offset;
	player.startY = 7*increment + offset;
	
	answer = "44411323";
	code = "B701"
}
if (level == 2) {
	player = instance_create_layer(7*increment + offset, 7*increment + offset, "Instances", obj_Player);
	player.startX = 7*increment + offset;
	player.startY = 7*increment + offset;
	
	answer = "33111132";
	code = "F32M"
}
if (level == 3) {
	player = instance_create_layer(7*increment + offset, 3*increment + offset, "Instances", obj_Player);
	player.startX = 7*increment + offset;
	player.startY = 3*increment + offset;
	
	answer = "13324233";
	code = "GBV5"
}
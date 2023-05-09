x = mouse_x;
y = mouse_y;

if (level == 1) {
	if (obj_NodeA.connectR && obj_NodeB.connectB && obj_NodeC.connectG) {
		solved = true;
	}
}
if (level == 2) {
	if (obj_NodeA.connectG && obj_NodeB.connectB && obj_NodeC.connectR) {
		solved = true;
	}
}
if (level == 3) {
	if (obj_NodeA.connectB && obj_NodeB.connectG && obj_NodeC.connectR) {
		solved = true;
	}
}
if (level == 4) {
	if (obj_NodeA.connectR && obj_NodeB.connectG && obj_NodeC.connectB) {
		solved = true;
	}
}
if (level == 5) {
	if (obj_NodeA.connectB && obj_NodeB.connectR && obj_NodeC.connectG) {
		solved = true;
	}
}
if (level == 6) {
	if (obj_NodeA.connectG && obj_NodeB.connectR && obj_NodeC.connectB) {
		solved = true;
	}
}

if(solved){
global.timer += 60;
instance_create_layer(0,0,"puzzle",obj_wires_complete);
instance_destroy(obj_HeadR);
instance_destroy(obj_HeadG);
instance_destroy(obj_HeadB);
instance_destroy(obj_NodeA);
instance_destroy(obj_NodeB);
instance_destroy(obj_NodeC);
instance_destroy(obj_WireR);
instance_destroy(obj_WireG);
instance_destroy(obj_WireB);
instance_destroy();
}





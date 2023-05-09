randomize();

level = irandom_range(1, 6);
solved = false;
//Level 1 = RBG
//Level 2 = GBR
//Level 3 = BGR
//Level 4 = RGB
//Level 5 = BRG
//Level 6 = GRB

instance_create_layer(room_width/4 - 128, room_height/2 + 64, "Instances", obj_NodeA);
instance_create_layer(room_width/4,       room_height/2 + 64, "Instances", obj_NodeB);
instance_create_layer(room_width/4 + 128, room_height/2 + 64, "Instances", obj_NodeC);

instance_create_layer(room_width/4 - 128, room_height - 128, "Instances", obj_HeadR);
instance_create_layer(room_width/4 - 128, room_height - 128, "Instances", obj_WireR);
instance_create_layer(room_width/4,       room_height - 128, "Instances", obj_HeadG);
instance_create_layer(room_width/4,       room_height - 128, "Instances", obj_WireG);
instance_create_layer(room_width/4 + 128, room_height - 128, "Instances", obj_HeadB);
instance_create_layer(room_width/4 + 128, room_height - 128, "Instances", obj_WireB);
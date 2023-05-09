draw_sprite(spr_Maze_Prompt, 0, 0 + offset, 0 + offset);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_Maze);

draw_text(room_width / 2 - 2*increment - offset*2.5, room_height / 4 - 130 - offset+20, "Maze Code:");
draw_text(room_width / 2 - 2*increment - offset*2.5, room_height / 4 - 100 - offset+20, code);

draw_text(room_width / 2 - 2*increment - offset*0.5, room_height / 4 - 100 - offset+20, obj_Player.moves);
draw_text(room_width / 2 - 2*increment - offset*0.5, room_height / 4 - 130 - offset+20, "Moves Left");

/*
offset = 100;
increment = 45;

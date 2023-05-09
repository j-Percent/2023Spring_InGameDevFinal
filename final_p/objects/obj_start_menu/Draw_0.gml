/// @description Insert description here
// You can write your code in this editor

//center font
draw_set_font(fnt_pixel);
draw_set_halign(fa_center);
draw_set_valign(fa_center);

//draw menu options
for(var i = 0; i<arr_length; i++){
	var c = c_white;
	if(position == i){c=c_yellow;}
	draw_text_color(room_width/2, room_height/2-spacing+spacing*i, option[i], c, c, c, c, 1);
}

draw_text(room_width/2, room_height/4, "Words Can Be Things");





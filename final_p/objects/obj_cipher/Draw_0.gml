/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_font(fnt_game);
draw_text(room_width/4-100, room_height/4-200, "PUZZLE: CIPHER");
draw_set_font(fnt_pixel);



//print letters and update text on screen
var letter = "";
for(var i = 0; i<ds_list_size(letterlist); i++){
	if(i<ds_list_size(playerlist)){
		letter = ds_list_find_value(playerlist, i);
	}else{
		letter = "_";
	}
	word += letter;
}


draw_text(room_width/4, room_height/4+50, word);
draw_text(room_width/4, room_height/4-50, chosen_word_ciphered);
//draw_text(room_width/4, room_height/4-50-50, complete_word);
word = "";



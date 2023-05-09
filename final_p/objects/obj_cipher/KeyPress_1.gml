/// @description Insert description here
// You can write your code in this editor

if(keyboard_check(vk_backspace)){
	//do the counter
	ds_list_delete(playerlist, ds_list_size(playerlist)-1);
}else if(
keyboard_check(ord("A"))||
keyboard_check(ord("B"))||
keyboard_check(ord("C"))||
keyboard_check(ord("D"))||
keyboard_check(ord("E"))||
keyboard_check(ord("F"))||
keyboard_check(ord("G"))||
keyboard_check(ord("H"))||
keyboard_check(ord("I"))||
keyboard_check(ord("J"))||
keyboard_check(ord("K"))||
keyboard_check(ord("L"))||
keyboard_check(ord("M"))||
keyboard_check(ord("N"))||
keyboard_check(ord("O"))||
keyboard_check(ord("P"))||
keyboard_check(ord("Q"))||
keyboard_check(ord("R"))||
keyboard_check(ord("S"))||
keyboard_check(ord("T"))||
keyboard_check(ord("U"))||
keyboard_check(ord("V"))||
keyboard_check(ord("W"))||
keyboard_check(ord("X"))||
keyboard_check(ord("Y"))||
keyboard_check(ord("Z"))
){
	if(ds_list_size(playerlist) < ds_list_size(letterlist)){
		ds_list_add(playerlist, keyboard_lastchar);
	}

}

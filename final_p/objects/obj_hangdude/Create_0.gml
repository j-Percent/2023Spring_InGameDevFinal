/// @description Insert description here
// You can write your code in this editor

randomize();

//word list
wordlist = ds_list_create();
ds_list_add(wordlist, "Absurdity",
"Conspire",
"Information",
"Decipher",
"Mistake",
"Paranoid");

//choose a random word and store it
chosen_index = irandom_range(0, ds_list_size(wordlist)-1);
chosen_word = ds_list_find_value(wordlist, chosen_index);
chosen_word_length = string_length(chosen_word);
start_char = string_char_at(chosen_word, 0);

//ds list for letters
letterlist = ds_list_create();

//adding individual letters of the chosen word into a list
for(var i = 1; i<chosen_word_length; i++){
	ds_list_add(letterlist, string_char_at(chosen_word, i+1));
}

complete_word = "";
for(var i = 0; i<ds_list_size(letterlist)+1; i++){
	complete_word += string_char_at(chosen_word, i+1);
}

//counting letter position
wrong_answer = false;
word = start_char+"";

playerlist = ds_list_create(); 
/// @description Insert description here
// You can write your code in this editor

var _up = keyboard_check_pressed(vk_up);
var _down = keyboard_check_pressed(vk_down);
var _select = keyboard_check_pressed(vk_enter) or keyboard_check_pressed(vk_space);

var _move = _down - _up;
if _move !=0 { 
    //move the index
    index += _move;

    //Clamp the values
    var _size = array_length_2d(menu, sub_menu);
    if index < 0 index = _size -1; //at start, loop to menu end
    else if index >= _size index = 0; //at end, loop menu to start
}

if _select{
	switch(sub_menu){
		case 0: //main menu
			switch(index){
				case 0:
				//Start
				lives = 3
				audio_play_sound(reg_music, 10, true);
				room_goto(RoomStart);
				break;
		
				case 1:
				//Controls
				sub_menu = 1;
				index = 0;
				break;
		
				case 2:
				//Credits
				sub_menu = 2;
				index = 0;
				break;
		
				case 3:
				//Cheats
				sub_menu = 3;
				index = 0;
				break;
				
				case 4:
				//Quit
				game_end();
				break;
			}
		break;
		
		case 1: //Controls
			switch(index){
				case 0:
				//info
				break;
		
				case 1:
				//info
				break;
		
				case 2:
				//info
				break;
		
				case 3:
				//info
				break;
				
				case 4:
				//info
				break;
				
				case 5:
				//info
				break;
				
				case 6:
				//info
				break;
				
				case 7:
				//Return to menu
				sub_menu = 0;
				index = 1;
				break;
			}
		break;
		
		case 2: //Credits
			switch(index){
				case 0:
				//info
				break;
		
				case 1:
				//info
				break;
		
				case 2:
				//info
				break;
		
				case 3:
				//info
				break;
				
				case 4:
				//info
				break;
				
				case 5:
				//Return to menu
				sub_menu = 0;
				index = 2;
				break;
			}
		break;
		
		case 3: //Cheats
			switch(index){
				case 0:
				//info
				break;
		
				case 1:
				//info
				break;
		
				case 2:
				//info
				break;
		
				case 3:
				//info
				break;
				
				case 4:
				//info
				break;
				
				case 5:
				//info
				break;
				
				case 6:
				//Return to menu
				sub_menu = 0;
				index = 3;
				break;
			}
		break;
	}
}



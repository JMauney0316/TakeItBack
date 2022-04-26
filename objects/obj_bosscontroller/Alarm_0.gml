/// @description Insert description here
// You can write your code in this editor

show_debug_message("Alarm0: " + string(at));

audio_play_sound(roar, 5, false);

if(at == 0){
	holdx = x;
	holdy = y;
} else if (at == 1){
	holdx = 1345;
	holdy = 650;
	show_debug_message("setting x, y, for at 1");
} else if (at == 3){
	holdx = 758
	holdy = 736
	show_debug_message("setting x, y, for at 3");
}

iteration += 1
var seg = instance_create_layer(holdx,holdy,"Instances", obj_bosssegment)
with (seg)
spacing = other.iteration;



if (iteration < numOfSeg){
	if(at == 0){
		alarm[0] = 15;
	} else if (at == 1){
		alarm[0] = 10;	
	} else if (at == 3){
		alarm[0] = 8;	
	}
} else {
	iteration = 0;	
	area += 1
}


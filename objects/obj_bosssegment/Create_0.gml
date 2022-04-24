/// @description Insert description here
// You can write your code in this editor
t = 0;

spacing = 0;
speed = 0;
wav = 0;

//direction = 90;


//Override for draw event
OverRide = false;



resetCond = false;

enum phases {
	creation,
	moving,
	retreat,
	attack,
	burrow,
	slam,
	moving2,
	death
}

state = phases.creation

iniy = y;
inix = x;

//Flag for retreat/spawning
tag = true;

//Flag for slam attack
tag2 = true;

rang = 5;

hithurt = false;




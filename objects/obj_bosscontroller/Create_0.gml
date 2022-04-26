/// @description Insert description here
// You can write your code in this editor

//Number of worm segments
numOfSeg = 6;


//Iterations when creating segments
iteration = 0;

//Used for creation of segments
alarm[0] = 60;

//Guides attack, at = 0 is move and shoot, at = 1 is attack from sides, at = 2 is attack from underneath
at = 0;

holdx = x;
holdy = y;


//Controls at == 0 attack order, 0 is creation, 1 is first shoot, 2 is grab towards player, 3 is shoot again, 4 is retreat
area = 0;


BossHealth = 50;

audio_stop_sound(reg_music);
audio_play_sound(bossMusic, 10, true);


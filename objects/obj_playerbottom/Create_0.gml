/// @description Insert description here
// You can write your code in this editor
// @description Insert description here
// You can write your code in this editor


//Various enum states

/*slash handles melee, hclimbing handles ceilings, dead is death, regular is anything else 
airborne is jumping
*/


enum states3 {
	slash,
	dead,
	hclimbing,
	regular,
	airborne,
	crouch,
	roll
}

enum weapons1 {
	ranged,
	sword
}


//Handles shooting intervals
shootReady = true;
lastDir = 1;
swordReady = true;

//Initial state
state = states3.regular;
weapon = weapons1.ranged;

//Movement Direction
MoveDir = image_xscale;
moving = false;
//sprite_index = spr_scaletest;	

//Bullet variables
BulH = 10;
BulV = 0;

//Health
PlayHealth = 3;
maxPlayHealth = 3

//Stamina
stamina = 100;



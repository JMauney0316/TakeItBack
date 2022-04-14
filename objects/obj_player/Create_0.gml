/// @description Insert description here
// You can write your code in this editor


//Various enum states

/*slash handles melee, hclimbing handles ceilings, dead is death, regular is anything else 
airborne is jumping
*/

enum states {
	slash,
	dead,
	hclimbing,
	regular,
	airborne,
	crouch,
	roll
}

enum weapons {
	ranged,
	sword
}

//Handles shooting intervals
shootReady = true;
lastDir = 1;
swordReady = true;

//Initial state
state = states.regular;
weapon = weapons.ranged;

//Movement Direction
MoveDir = image_xscale;

//Bullet variables
BulH = 10;
BulV = 0;

//Health
PlayHealth = 3;

//Stamina
stamina = 100;



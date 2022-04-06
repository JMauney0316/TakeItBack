/// @description Insert description here
// You can write your code in this editor


//Various enum states

/*vclimbing handles vertical wall climbs, hclimbing handles ceilings, dead is death, regular is anything else 
airborne is jumping
*/

enum states {
	vclimbing,
	dead,
	hclimbing,
	regular,
	airborne,
	crouch,
	roll
}

//Handles shooting intervals
shootReady = true;
lastDir = 1;


//Initial state
state = states.regular;

//Movement Direction
MoveDir = image_xscale;

//Sets gravity
vsp = 0;
grv = 0.3;

//Bullet variables
BulH = 10;
BulV = 0;




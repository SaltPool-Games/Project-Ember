//Inputs for the game (controls)
 moveLeft = keyboard_check(vk_left) || keyboard_check(ord("A")); //Setting the variables to use in later code that
 moveRight = keyboard_check(vk_right) || keyboard_check(ord("D"));// will check what key the player has used to move for each direction
 moveUp = keyboard_check(vk_up) || keyboard_check(ord("W"));
 moveDown = keyboard_check(vk_down) || keyboard_check(ord("S"));
//var _ignite = keyboard_check_pressed(ord("E")); // Setting a variable that will check if the E key is pressed to activate the solo item ignite ability
var _aoe_ignite = keyboard_check_pressed(ord("Q"));//Setting a variable that will check if the Q key is pressed to activate the AOE ignite ability
var _escape = keyboard_check_pressed(vk_escape)//Setting a variable that will kecy if the esc key is pressed to activate the menu screen

//Array for things our Ember cannot walk through
var _array_collision_group_one = [oTreeOne, 
oTreeTwo, 
oSmallRock,
oBigRockOne,
oBigRockThree,
oBurnedTreeOne,
oBurnedTreeTwo,
oCampfireLit,
oCampfireNotLit,
oCharredLogOne,
oCharredLogTwo,
oLogOne,
oLogTwo,
oLogThree,
oCharredLogThree,
oTreeStump,
oCharredTreeStumpSmall,
oCharredTreestumpLarge,
oTent,
oBlock,
]


//calculate movement
vx = ((moveRight - moveLeft) * speedWalk);
vy = ((moveDown - moveUp) * speedWalk);


//if idle
if(vx == 0 && vy == 0){
	//change idle sprite based on last direction
	switch dir {
		case 0:
		sprite_index = sEmberIdleRight; break;
		case 1:
		sprite_index = sEmberIdleUp; break;
		case 2:
		sprite_index = sEmberIdleLeft; break;
		case 3:
		sprite_index = sEmberIdleDown; break;
	}
	
}

//if moving
if(vx != 0 || vy != 0){
	if(!collision_point(x+vx,y,_array_collision_group_one, true, true)){
	x += vx;
	}
	if(!collision_point(x,y+vy,_array_collision_group_one, true, true)){
	y += vy;
	}
	//change walking sprite based on direction
	if(vx > 0){
		sprite_index = sEmberRunRight;
		dir = 0;
	}
	if(vx < 0) {
		sprite_index = sEmberRunLeft;
		dir = 2;
	}
	if(vy > 0){
		sprite_index = sEmberRunDown;
		dir = 3;
	}
	if (vy < 0){
		sprite_index = sEmberRunUp;
		dir = 1;
	}
	//move audio listener with player
	audio_listener_set_position(0,x,y,0);
}
//check for collisions with burnable objects
//}
//check for collisions with NPCs
/*nearbyNPC = collision_rectangle(x-lookRange,y-lookRange,x+lookRange,y+lookRange,oParentNPC,false,true);
if nearbyNPC{
	show_debug_message("Ember has found an NPC")
}
if !nearbyNPC{
	show_debug_message("Ember hasn't found an NPC")
}*/

//depth sorting
depth = -y;



//var inputDirection = point_direction(0,0,_right-_left,_down-_up); //Helps to dertermine the angle of movement
//var inputMagnitude = (_right - _left != 0) || (_down - _up != 0); //cancels out if left and right or up and down is pressed at the same time

//var _xinput  = _right - _left
//var _yinput = _down - _up
//var _speed_walk = 2 

//Array for things our Ember cannot walk through
var _array_collision_group_one = [oTreeOne, 
oTreeTwo, 
oSmallRock,
oBigRockOne,
oBigRockThree,
oBurnedTreeOne,
oBurnedTreeTwo,
oCampfireLit,
oCampfireNotLit,
oCharredLogOne,
oCharredLogTwo,
oLogOne,
oLogTwo,
oLogThree,
oCharredLogThree,
oTreeStump,
oCharredTreeStumpSmall,
oCharredTreestumpLarge,
oTent,
oBlock,
]  

//array of things our Ember can walk through
var _array_collision_group_two = [oMushroomOne]


move_and_collide(vx * speedWalk, vy * speedWalk, _array_collision_group_one)



//Movement
//hSpeed = lengthdir_x(inputMagnitude * _speed_walk, inputDirection);
//vSpeed = lengthdir_y(inputMagnitude * _speed_walk, inputDirection);

//x += hSpeed;
//y += vSpeed;





//updating sprite index

//var _oldSprite = sprite_index; // Temp variable to store the sprite we have started on
/*if(inputMagnitude != 0) //Sets the direction of the sprite when standing still based on the input (this is done so the character will animate when colliding with something)
{
	direction = inputDirection //we use the built in direction var to avoid needing to set up wrapping values something that is a headache
	sprite_index = spriteRun;
} else sprite_index = spriteIdle;
if (_oldSprite != sprite_index) localFrame = 0; //Sets things to Idle animation and will then start the movement animation from the beginning 

//putting a script here for animations, look in the scripts for the comments relating to that
//Calling the script updates the sprite index, which sets the correct sprite*/

/* if (_xinput != 0 || _yinput  != 0) { 
	direction = inputDirection
	if(_left = true){  sprite_index = sEmberRunLeft;
	}else if(_right = true){ sprite_index = sEmberRunRight;
	}else if(_up = true){  sprite_index = sEmberRunUp;
	}else if(_down = true){ sprite_index = sEmberRunDown;
	}
	//PlayerAnimateSprite();
} else { 
	sprite_index = sEmberIdle;
}*/
//checks if variables are true then changes embers animation to reflect the key that was pressed
/*switch(bool(true))
{
case _left:
	sprite_index = sEmberRunLeft;
	break;
case _right:
	sprite_index = sEmberRunRight;
	break;
case _up:
	sprite_index = sEmberRunUp;
	break;
case _down:
	sprite_index = sEmberRunDown;
	break;
case _ignite:
	sprite_index = sEmberIgnite;
	break;


}
*/



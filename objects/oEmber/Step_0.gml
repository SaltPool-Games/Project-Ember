//Inputs for the game (controls)
var _left = keyboard_check(vk_left) || keyboard_check(ord("A")); //Setting the variables to use in later code that
var _right = keyboard_check(vk_right) || keyboard_check(ord("D"));// will check what key the player has used to move for each direction
var _up = keyboard_check(vk_up) || keyboard_check(ord("W"));
var _down = keyboard_check(vk_down) || keyboard_check(ord("S"));
var _ignite = keyboard_check_pressed(ord("E")); // Setting a variable that will check if the E key is pressed to activate the solo item ignite ability
var _aoe_ignite = keyboard_check_pressed(ord("Q"));//Setting a variable that will check if the Q key is pressed to activate the AOE ignite ability
var _escape = keyboard_check_pressed(vk_escape)

var inputDirection = point_direction(0,0,_right-_left,_down-_up); //Helps to dertermine the angle of movement
//var inputMagnitude = (_right - _left != 0) || (_down - _up != 0); //cancels out if left and right or up and down is pressed at the same time

var _xinput  = _right - _left
var _yinput = _down - _up
var _speed_walk = 2 

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
]  

var _array_collision_group_two = [oMushroomOne]


move_and_collide(_xinput * _speed_walk, _yinput * _speed_walk, _array_collision_group_one)



//Movement
//hSpeed = lengthdir_x(inputMagnitude * _speed_walk, inputDirection);
//vSpeed = lengthdir_y(inputMagnitude * _speed_walk, inputDirection);

//x += hSpeed;
//y += vSpeed;





//updating sprite index

var _oldSprite = sprite_index; // Temp variable to store the sprite we have started on
/*if(inputMagnitude != 0) //Sets the direction of the sprite when standing still based on the input (this is done so the character will animate when colliding with something)
{
	direction = inputDirection //we use the built in direction var to avoid needing to set up wrapping values something that is a headache
	sprite_index = spriteRun;
} else sprite_index = spriteIdle;
if (_oldSprite != sprite_index) localFrame = 0; //Sets things to Idle animation and will then start the movement animation from the beginning 

//putting a script here for animations, look in the scripts for the comments relating to that
//Calling the script updates the sprite index, which sets the correct sprite*/

if (_xinput != 0 || _yinput  != 0) {
	direction = inputDirection

	PlayerAnimateSprite();
} else { 
	image_index = 16;
}


//Inputs for the game (controls)
keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A")); //Setting the variables to use in later code that
keyRight = keyboard_check(vk_right) || keyboard_check(ord("D"));// will check what key the player has used to move for each direction
keyUp = keyboard_check(vk_up) || keyboard_check(ord("W"));
keyDown = keyboard_check(vk_down) || keyboard_check(ord("S"));
keyIgnite = keyboard_check_pressed(ord("E")); // Setting a variable that will check if the E key is pressed to activate the solo item ignite ability
keyAreaIgnite = keyboard_check_pressed(ord("Q"));//Setting a variable that will check if the Q key is pressed to activate the AOE ignite ability

inputDirection = point_direction(0,0,keyRight-keyLeft,keyDown-keyUp); //Helps to dertermine the angle of movement
inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0); //cancels out if left and right or up and down is pressed at the same time

//Movement
hSpeed = lengthdir_x(inputMagnitude * speedWalk, inputDirection);
vSpeed = lengthdir_y(inputMagnitude * speedWalk, inputDirection);

x += hSpeed;
y += vSpeed;

//updating sprite index

var _oldSprite = sprite_index; // Temp variable to store the sprite we have started on
if(inputMagnitude != 0) //Sets the direction of the sprite when standing still based on the input (this is done so the character will animate when colliding with something)
{
	direction = inputDirection //we use the built in direction var to avoid needing to set up wrapping values something that is a headache
	sprite_index = spriteRun;
} else sprite_index = spriteIdle;
if (_oldSprite != sprite_index) localFrame = 0; //Sets things to Idle animation and will then start the movement animation from the beginning 

//putting a script here for animations, look in the scripts for the comments relating to that
//Calling the script updates the sprite index, which sets the correct sprite
PlayerAnimateSprite();
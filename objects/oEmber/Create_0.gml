image_speed = 1;

//variables
vx = 0;
vy = 0;
speedWalk = 1;

dir = 3;

moveRight = 0;
moveLeft = 0;
moveUp = 0;
moveDown = 0;

nearbyNPC = noone;
lookRange = 10;

spriteRunLeft = sEmberRunLeft; //These variables are here to make it easier
spriteRunRight = sEmberRunRight; //to change the animations/sprites if we want in the future
spriteRunUp = sEmberRunUp; 
spriteRunDown = sEmberRunDown;
spriteIdleUp = sEmberIdleUp;
spriteIdleDown = sEmberIdleDown;
spriteIdleLeft = sEmberIdleLeft;
spriteIdleRight = sEmberIdleRight;
localFrame = 0; 

//create listener and set orientation (picks up sounds that have a range)
audio_listener_set_position(0,x,y,0);
audio_listener_set_orientation(0,0,1,0,0,0,1)
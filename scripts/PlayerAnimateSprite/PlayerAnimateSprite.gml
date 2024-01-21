//Update Sprite
function PlayerAnimateSprite(){
var _cardinalDirection = round(direction/90); // gives us a cardinal direction
var _totalFrames = sprite_get_number(sprite_index) / 4; // gets us the total frames in each animation
image_index = localFrame + (_cardinalDirection * _totalFrames); //tells the object which animation to play from frame 1
localFrame += sprite_get_speed(sprite_index) / FRAME_RATE;

//if animation would loop on next game step
if (localFrame >= _totalFrames)
{
	animationEnd = true;
	max(localFrame - _totalFrames, 0);
}else animationEnd = false;

}
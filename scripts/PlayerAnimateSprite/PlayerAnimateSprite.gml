/*

//Update Sprite
function PlayerAnimateSprite(){
var _cardinalDirection = round(direction/90); // gives us a cardinal direction
var _totalFrames = sprite_get_number(sprite_index) / 5; // gets us the total frames in each animation
image_index = localFrame + (_cardinalDirection * _totalFrames); //tells the object which animation to play from frame 1
localFrame += sprite_get_speed(sprite_index) / FRAME_RATE;

//if animation would loop on next game step
if (localFrame >= _totalFrames)
{
	animationEnd = true;
	max(localFrame - _totalFrames, 0);
}else animationEnd = false;

}

*/

global._animation_index = 0;

function PlayerAnimateSprite(){
	var _direction_enum = round(direction/90);
	var _target_frame = 0;
	
	var _animation_speed = 5;
	
	var _total_frames_in_chunk = 5;
	
	// allows us to see the value of these variables at runtime - look at output! REALLY useful for debugging code
	// show_debug_message($"Direction: {_direction_enum} - {1 * _total_frames_in_chunk}")
	
	if (_direction_enum == 0) {
		// play moving-right animtion
		_target_frame = 1 * _total_frames_in_chunk
	} else if (_direction_enum == 1) {
		// play moving-up animation
		_target_frame = 2 * _total_frames_in_chunk
	} else if (_direction_enum = 2) {
		// play moving-left animation
		_target_frame = 3 * _total_frames_in_chunk
	} else if (_direction_enum == 3) {
		// play moving-down animation
		_target_frame = 4 * _total_frames_in_chunk
	}
	
	// ------------------------------------------------------------------------------ //
	
	var _actual_delta_time = delta_time / 1_000_000
	
	global._animation_index += _actual_delta_time * _animation_speed;
	
	if (global._animation_index >= _total_frames_in_chunk - 1) {
		global._animation_index = 0;
	}
	
	show_debug_message($"Animation Index: {global._animation_index}")
	
	image_index = (_target_frame - round(global._animation_index)) - 1;
}
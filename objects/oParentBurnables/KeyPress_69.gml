//checks if it's close to the player and burnable
burnable = collision_rectangle(x-lookRange,y-lookRange,x+lookRange,y+lookRange,oEmber,false,true);
if burnable{
	show_debug_message("Ember is near something that can burn");
}

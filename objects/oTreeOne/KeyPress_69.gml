//checks if it's close to the player and burnable
burnable = collision_rectangle(x-lookRange,y-lookRange,x+lookRange,y+lookRange,oEmber,false,true);
if burnable{
	sprite_index = sBurnedTree;
}

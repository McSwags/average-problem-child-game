/// @description Walls is glue, i think

friction = 999;
gravity = 0;
hspeed = 0;
vspeed = 0;

sprite_index = SprNasty;


/* what the hell was this
/* like seriously

friction = 999;
gravity = 0;

if place_meeting(x+hspeed,y,objWall)	// prevent collision (bad)
{
	hspeed = 0;	// NO NO NO NO YOU'RE PREVENTING THE COLLISION FROM EVER HAPPENING
	vspeed = 0;	// THAT MEANS SLIME WILL NEVER STOP
}

//vertical
if place_meeting(x,y+vspeed,objWall)	// prevent collision (bad)
{
	hspeed = 0;
	vspeed = 0;
}
*/
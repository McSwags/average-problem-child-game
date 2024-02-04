/// @description Walls is glue
// You can write your code in this editor

friction = 999;
gravity = 0;
hspeed = 0;
vspeed = 0;

sprite_index = SprNasty;	// need lethal version


/* what the hell was this
/* like seriously

friction = 999;
gravity = 0;

if place_meeting(x+hspeed,y,objWall)	// prevent collision (bad)
{
	hspeed = 0;
	vspeed = 0;
}

//vertical
if place_meeting(x,y+vspeed,objWall)	// prevent collision (bad)
{
	hspeed = 0;
	vspeed = 0;
}
*/
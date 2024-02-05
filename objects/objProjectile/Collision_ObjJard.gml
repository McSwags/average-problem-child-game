/// @description Slime is bouncy af
// slime bounces off other slime only!

if(sprite_index == SprNasty)		
{								
	ObjJard.bricks++;	// why can't we throw bricks at people?
	instance_destroy();
	if(ObjJard.slime < 100)
		ObjJard.slime += 5;
}

// when thrown
// horizontal 

if place_meeting(x+hspeed,y,objCollision)	// trust me this is fine, eveything is fine
{
	hspeed = -hspeed;	// bounce in the x
}

//vertical
if place_meeting(x,y+vspeed,objCollision)
{
	vspeed = -vspeed;	// bounce in the y
}
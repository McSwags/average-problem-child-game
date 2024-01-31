/// @description Insert description here
// You can write your code in this editor


var _right = (keyboard_check(vk_right) or keyboard_check(ord("D")) /* && place_free(x + (attribute_speed + 2), y) */)
var _left = (keyboard_check(vk_left) or keyboard_check(ord("A")) /* && place_free(x + (-attribute_speed - 2), y) */)
// var _up = (keyboard_check(vk_up) or keyboard_check(ord("W")));


move_x = _right - _left;
move_x *= attribute_speed;

if (place_meeting(x, y+2, objCollision))
{
	coyoteFrame = 0;
}
else
{
	coyoteFrame++;
}



if (place_meeting(x, y+2, objCollision))
{
	doubleJumps = maxDoubleJumps;
	move_y = 0;
	if (!place_meeting(x+move_x, y+2, objCollision) && place_meeting(x+move_x, y+10, objCollision))
	{
			move_y = abs(move_x);
			move_x = 0;
	}
	if (keyboard_check(vk_space)) 
	{
		move_y = -attribute_jumpSpeed;
		isSpaceHeld = true;
	}
}
else if (coyoteFrame <= maxCoyoteTime && keyboard_check(vk_space) && !isSpaceHeld)
{
	doubleJumps = maxDoubleJumps;
	move_y = 0;
	if (!place_meeting(x+move_x, y+2, objCollision) && place_meeting(x+move_x, y+10, objCollision))
	{
			//move_y = abs(move_x);
			move_x *= 0;
	}
	move_y = -attribute_jumpSpeed;
	isSpaceHeld = true;
	
}
else if (doubleJumps > 0 && keyboard_check(vk_space) && isSpaceHeld == false)
{
	move_y = -attribute_jumpSpeed;	
	doubleJumps--;
	slime -= 5;
}
else if (move_y < attribute_maxFallSpeed) move_y += attribute_gravity;



move_and_collide(move_x, move_y, objCollision);
//if (move_x != 0) image_xscale = sign(move_x);


if (keyboard_check_released(vk_space)) isSpaceHeld = false;

#region animations
//////////////animation

if(_right)
{
	image_speed = attribute_speed / 10;
	sprite_index = sprJardR;
}

if(_left)
{
	image_speed = attribute_speed / 10;
	sprite_index = sprJardL;
}

if(!_left && !_right)
{
	image_speed = 0;
	image_index = 0;
}
#endregion
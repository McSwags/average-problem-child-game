/// @description Occur every 1/60s
// You can write your code in this editor


var _right = (keyboard_check(vk_right) or keyboard_check(ord("D")) /* && place_free(x + (attribute_speed + 2), y) */)
var _left = (keyboard_check(vk_left) or keyboard_check(ord("A")) /* && place_free(x + (-attribute_speed - 2), y) */)
// var _up = (keyboard_check(vk_up) or keyboard_check(ord("W")));
// bruh, why we need an up key?

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
	slime -= 5;
	
	if(slime>0){
		move_y = -attribute_jumpSpeed;	
		doubleJumps--;
	}
	else
		slime = 0;
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

#region parallax
var _cam_x = camera_get_view_x(view_camera[0]);

layer_x("parallax_background_1", _cam_x * 0.25); // changing the 0.25 and 0.5 changes parallax speed
layer_x("parallax_background_2", _cam_x * 0.5);  // DO NOT CHANGE EITHER OF THESE VALUES!!!!!!
												 // YOU WILL REGRET IT!!!!!!
												 
// why did i even try this
/*
Room1.background_color = c_red;


...and why doesn't this work but my even worse solution is acceptable

layer_background_blend("B_Clouds", c_red);

passing through a background doesn't work BUT passing it through as a variable does???

i have so many questions

*/

if(x>=X_TRANSITION)		// boss fight prep, may just need to make a new room
{
	var b_cloud = layer_background_get_id(layer_get_id("B_Clouds"));
	var b_distant = layer_background_get_id(layer_get_id("B_Distant_Ground"));
	var b_fore = layer_background_get_id(layer_get_id("B_Foreground"));
	var b_near = layer_background_get_id(layer_get_id("B_Near_Ground"));
	
	for (var i = 1; i <= 180; i += 1){
		if(i % 3 == 0)	// SHOULD shift every THIRD frame (over course of 3 sec)
		{
			col_red = merge_colour(c_red, c_white, i/180);	// bri'ish moment innit
			col_grey = merge_colour(c_grey, c_white, i/180);
		
			layer_background_blend(b_cloud, c_red);
			layer_background_blend(b_distant, c_grey);
			layer_background_blend(b_fore, c_grey);
			layer_background_blend(b_near, c_grey);
		}
	}
}
else if(x<X_TRANSITION)	// reset
{
	var b_cloud = layer_background_get_id(layer_get_id("B_Clouds"));
	var b_distant = layer_background_get_id(layer_get_id("B_Distant_Ground"));
	var b_fore = layer_background_get_id(layer_get_id("B_Foreground"));
	var b_near = layer_background_get_id(layer_get_id("B_Near_Ground"));
	
	for (var i = 1; i <= 180; i += 1){
		if(i % 3 == 0)	// arghhhhh why doesnt this dang thing work!!!!!!
		{
			col_red = merge_colour(c_red, c_white, i/180);
			col_grey = merge_colour(c_grey, c_white, i/180);
		
			layer_background_blend(b_cloud, col_red);
			layer_background_blend(b_distant, col_grey);
			layer_background_blend(b_fore, col_grey);
			layer_background_blend(b_near, col_grey);
		}
	}
}
// we might as well make a separate room for the boss fight
#endregion


if(y > 875){			// fall to void = reset to last checkpoint
	room_restart();
}
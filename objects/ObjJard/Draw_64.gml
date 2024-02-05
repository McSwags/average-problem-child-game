/// @description draw slime stats
// You can write your code in this editor

// colors for slime bar fill

if (barFlash = 0)
	draw_set_color(c_green);
else if (barFlash = 1)
	draw_set_color(c_red);

draw_rectangle(15, 5, (slime * 2) + 15, 30, false)



draw_set_color(c_black)
draw_rectangle(15, 5, 215, 30, true)

if (slime < 30 && isBarRed == false) 
{
	isBarRed = true	
	alarm_set(0, 90)
}
else if (slime > 20 && isBarRed == true) 
{
	isBarRed = false;
	barFlash = 0
}

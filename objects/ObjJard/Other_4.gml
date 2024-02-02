/// @description Insert description here
// You can write your code in this editor

if (file_exists("jard.ini"))
{
        ini_open("jard.ini");
        x = ini_read_real("player", "x", x);
        y = ini_read_real("player", "y", y);
        slime = ini_read_real("player", "slime", slime);
		
		ability = ini_read_real("player", "ability", ability);
		bricks = ini_read_real("player", "totalBalls", bricks);
		ballsThrown = ini_read_real("player", "ballsThrown", ballsThrown);
		
        ini_close();
}
/// @description Insert description here
// You can write your code in this editor

ini_open("jard.ini");
ini_write_real("player", "x", other.x);
ini_write_real("player", "y", other.y);
ini_write_real("player", "slime", other.slime);
ini_write_string("player", "ability", other.ability);	// pass it through as a string, idiot
ini_write_real("player", "totalBalls", other.bricks);
ini_write_real("player", "ballsThrown", other.ballsThrown);
ini_close();

image_index = 1;
/// @description Insert description here
// You can write your code in this editor
event_inherited();

bricks = 100;

X_TRANSITION = 5200; // where the boss effects kick in
				     // SHOULD ONLY BE CHANGED AT THE START OF A ROOM
	
die = false;		 // for save file
ability = "none";	 // this is a STRING
ballsThrown = 0;	


attribute_speed = 6;
slime = 100;
doubleJumps = 1;
maxDoubleJumps = 1;
maxCoyoteTime = 10; // measured in frames
coyoteTime = true;
coyoteFrame = 0; // measure in frames

speedTicker = 0;


move_x = 0;
move_y = 0;

isSpaceHeld = false
isBarRed = false
barFlash = 0


parallax = false; // parallax toggle for cody

// dialogue system

myPortrait			= spr_portrait_player;
myVoice				= snd_voice2;
myFont				= fnt_dialogue;
myName				= "Jard";

myPortraitTalk		= spr_portrait_examplechar_mouth;
myPortraitTalk_x	= 99;
myPortraitTalk_y	= 44;
myPortraitIdle		= spr_portrait_examplechar_idle;


// more save file shenanigans because THE FIRST FUCKING SPIKES CRASH THE GAME

ini_open("jard.ini");
	ini_write_real("player", "x", other.x);
	ini_write_real("player", "y", other.y);
	ini_write_real("player", "slime", other.slime);
	ini_write_string("player", "ability", other.ability);
	ini_write_real("player", "totalBalls", other.bricks);
	ini_write_real("player", "ballsThrown", other.ballsThrown);
ini_close();
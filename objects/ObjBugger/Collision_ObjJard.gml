/// @description Insert description here
// You can write your code in this editor

// acts like a leech and steals slime

if(suck <= 0){
	ObjJard.slime -= 5;
	suck = 60;
}

// kill him if he runs out of slime
if(ObjJard.slime <= 0){
	room_restart();
	// if the fucking restart doesnt work force him to DIEEEEEEE
	ObjJard.slime = 100;
	ObjJard.die = true;
}
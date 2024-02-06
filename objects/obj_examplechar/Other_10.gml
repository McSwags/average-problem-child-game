//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "You can run a script after any line of dialogue! Let's make an emote to the left.";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= "You can even have it depend on player choice. Which object should I make?";
		mySpeaker[i]	= id;
		
		//Line 2
		i++;
		myText[i]		= ["An emote", "Another you!"];
		mySpeaker[i]	= obj_player;

		
		//Line 3
		i++;
		myText[i]		= "Pretty cool, right? Now, let's get back to our conversation.";
		mySpeaker[i]	= id;
		
		//Line 4
		i++;
		myText[i]		= "Looky here, green hood.";
		mySpeaker[i]	= id;

		//Line 5
		i++;
		myText[i]		= "We both know blue is the best colour.";
		mySpeaker[i]	= id;

		//Line 6
		i++;
		myText[i]		= "Say it... or else.";
		mySpeaker[i]	= id;

		//Line 7
		i++;
		myText[i]		= ["(sarcastically) Blue is the best colour.", "Green is the best colour."];
		mySpeaker[i]	= obj_player;

		//Line 8
		i++;
		myText[i]		= "Exactly! Thank you!";
		mySpeaker[i]	= id;

		//Line 9
		i++;
		myText[i]		= "Nooooooooooooooooooooooo!";
		mySpeaker[i]	= id;
		#endregion
	break;
	
	case "green":
	#region If you chose green
		var i = 0;
		//Line 0
		myText[i]		= "I can't believe you like green better...";
		myTextSpeed[i]	= [1, 0.3];
		myEmotion[i]	= 2;
		myEmote[i]		= 9;
		mySpeaker[i]	= id;
		myTextCol[i]	= [26,c_lime, 31,c_white];
		
		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	
	break;
	
	case "blue":
	#region If you chose blue
		var i = 0;
		//Line 0
		myText[i]		= "Hey there, fellow blue lover!";
		myTextSpeed[i]	= [1,1, 10,0.5];
		myEmotion[i]	= 1;
		myEmote[i]		= 0;
		mySpeaker[i]	= id;
		myTextCol[i]	= [19,c_aqua, 23,c_white];
		
		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	break;
}
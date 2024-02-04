/// @description Such shader, much graphics
// You can write your code in this editor
	
	
if(ObjJard.x > ObjJard.X_TRANSITION){	
	bktglitch_activate();
	
	bktglitch_config_preset(BktGlitchPreset.A);

	// Additional tweaking
	bktglitch_set_line_drift(0);
	bktglitch_set_line_shift(0);
	bktglitch_set_jumbleness(0);
	bktglitch_set_jumble_speed(0);
	bktglitch_set_channel_dispersion(0);
	
	// I'm pulling my hair out over this one
	draw_surface(application_surface, 0, 0);

	bktglitch_deactivate();
}
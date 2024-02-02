/// @description Such shader, much graphic
// You can write your code in this editor
	
	
if(ObjJard.x>5200){	
	bktglitch_activate();
	
	bktglitch_config_preset(BktGlitchPreset.A);

	// Additional tweaking
	bktglitch_set_line_drift(0);
	bktglitch_set_line_shift(0);
	bktglitch_set_jumbleness(0);
	bktglitch_set_jumble_speed(0);
	bktglitch_set_channel_dispersion(0);
	
	draw_surface(application_surface, 0, 0);

	bktglitch_deactivate();
}
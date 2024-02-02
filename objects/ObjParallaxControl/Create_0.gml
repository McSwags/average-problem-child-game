background_map = ds_map_create();
background_map[? layer_get_id("B_Clouds")] = 0.3;
background_map[? layer_get_id("B_Distant_Ground")] = 0.2;
background_map[? layer_get_id("B_Near_Ground")] = 0.1;
background_map[? layer_get_id("B_Ground_Path")] = 0;
background_map[? layer_get_id("B_Foreground")] = -0.2;
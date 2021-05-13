function PlayerDebugModeDisplay()
{
	if (!DebugMode) exit;
	
	switch DebugList[DebugItem]
	{
		case Ring:			   animation_set_frame(spr_obj_ring, 1);			break;
		case SpikesVertical:   animation_set_frame(spr_obj_spikesvertical, 1);  break;
		case SpringVertical:   animation_set_frame(spr_obj_spring_yellow_v, 1); break;
		case SpringHorizontal: animation_set_frame(spr_obj_spring_yellow_h, 1); break;
		case Lamppost:		   animation_set_frame(spr_obj_lamppost, 1);		break;
		case Animal:		   animation_set_frame(spr_obj_animal_flicky, 1);   break;
		case Bridge:		   animation_set_frame(spr_obj_bridgelog_ffz, 1);   break;
		case FloatingPlatform: animation_set_frame(spr_obj_platform_ffz, 1);    break;
	}
	
	// Update character display information
	x = floor(PosX);
	y = floor(PosY);
	
	// Draw player on the screen
	draw_self();
}
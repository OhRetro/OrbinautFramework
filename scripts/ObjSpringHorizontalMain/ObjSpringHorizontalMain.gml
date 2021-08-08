function ObjSpringHorizontalMain()
{
	// Is current frame different from 1?
	if animation_get_frame(id) > 1
	{
		// Play animation
		animation_play(sprite_index, 3, 1);
	}
	else
	{	
		// Perform collision routine
		object_act_solid(true, true, true);
		
		// Is player grounded and touching launch side?
		if Player.Grounded and object_player_touch(LaunchSide)
		{
			// Lock controls for 16 frames
			Player.MovementLock = 16;
			
			// Launch player
			Player.Xsp	   = image_xscale * LaunchForce;
			Player.Facing  = image_xscale;	
			Player.Inertia = Player.Xsp;
			
			// Play sound
			audio_sfx_play(sfxSpring, false);
			
			// Set frame 2
			animation_set_frame(sprite_index, 2);
		}
	}
}
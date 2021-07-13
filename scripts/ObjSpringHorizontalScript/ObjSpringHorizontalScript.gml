function ObjSpringHorizontalScript()
{
	// Play animation
	if animation_get_frame(id) > 1
	{
		animation_play(sprite_index, 3, 1);
	}
	else
	{	
		// Check if we're touching launch side
		if Player.Grounded
		{
			if object_player_touch(LaunchSide)
			{
				// Launch player
				Player.MovementLock = 16;
				Player.Facing		= image_xscale;	
				Player.Xsp			= image_xscale * LaunchForce;
				Player.Inertia		= Player.Xsp;
				Player.Pushing		= false;
			
				// Play sound
				audio_sfx_play(sfxSpring, false);
			
				// Start animation
				animation_set_frame(sprite_index, 2);
				
				// Do not perform collision for that frame
				exit;
			}
		}
		
		// Do collision
		object_act_solid(true, true, true, false);
	}
}
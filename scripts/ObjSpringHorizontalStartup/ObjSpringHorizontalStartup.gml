function ObjSpringHorizontalStartup()
{
	// Define spring force
	if object_index == SpringYellowHorizontal
	{
		LaunchForce = 10;
	}
	else if object_index == SpringRedHorizontal
	{
		LaunchForce = 16;
	}
	
	// Set object solidbox
	object_set_solidbox(8, 16, false);
	
	// Set object depth
	object_set_depth(Player, 0);
	
	// Set object unload type
	object_set_unload(TypePause);
	
	// Set animation
	animation_play(sprite_index, 3, 3, 3);
}
function ObjMotobugStartup()
{
	// Create variables
	PosX	   isReal;
	Xsp		   isReal;
	Direction  isReal;
	StopTimer  isReal;
	SmokeTimer isReal;
	
	// Set values
	PosX	   = x;
	Direction  = image_xscale;
	Xsp        = 1;
	SmokeTimer = 17;
	
	// Set object solidbox
	object_set_solidbox(8, 15, false);
	
	// Set object hitbox
	object_set_hitbox(20, 17);
	
	// Set object depth
	object_set_depth(Player, false);
	
	// Set object active range
	object_set_range(RangeFar, TypeReset);
}
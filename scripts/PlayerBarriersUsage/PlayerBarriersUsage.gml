function PlayerBarriersUsage()
{
	// Exit the code if we do not have any active barrier, or current barrier is regular one
	if (!BarrierType or BarrierType == BarrierNormal) exit;
	
	// Check for barrier ability usage
	if Input.ABCPress and !BarrierIsActive
	{
		// Activate barrier ability
		BarrierIsActive = true;
		
		// Get current barrier type
		switch BarrierType
		{
			case BarrierFire:
			{
				// Set speeds
				Xsp = 8 * Facing;
				Ysp = 0;
				
				// Freeze the camera for 16 frames
				Screen.ScrollDelay = 16;
			}
			break;
			case BarrierElec:
			{
				// Set speed
				Ysp = -5.5;
				
				/* Ring magnetization is performed from the ring side */
			}
			break;
			case BarrierWater:
			{
				// Set speeds
				Xsp = 0;
				Ysp = 8;
			}
			break;
		}
	}
	
	// Check for landing with water barrier
	if Grounded and BarrierType == BarrierWater and BarrierIsActive
	{
		BarrierIsActive = false;
		Grounded		= false;
		Jumping			= false;
		Ysp				= -7.5;
	}
}
function StageSetup()
{	
	// Define last zone id. That will be used to mark savefile as completed one
	FinalZoneID = 0;
	
	// Set osillate angle to use in objects
	OscillateAngle = 1.40625;
	
	switch room 
	{	
		// Test Stage
		case Stage_TZ:
		{
			ZoneName         = "TEST STAGE";
			ZoneID           = -1;
			ActID            = 0;
			FinalActID       = 0;
			CardEnabled      = true;
			WaterEnabled     = true;
			WaterLevel       = 1376;
			StageMusic       = TestZone;
			LeftBoundary     = 0;
			TopBoundary      = 0;
			RightBoundary    = room_width;
			BottomBoundary   = 1016;
			AnimatedGraphics = noone;
			AnimalSet        = [spr_obj_animal_flicky, spr_obj_animal_ricky];
			NextStage		 = Screen_DevMenu;
		}
		break;
		
		// Default
		default:
		{
			ZoneName	     = "UNKNOWN";
			ZoneID		     = 0;
			ActID		     = 0;
			FinalActID       = 1;
			CardEnabled	     = true;
			WaterEnabled     = false;
			WaterLevel	     = 0;
			StageMusic       = noone;
			LeftBoundary	 = 0;
			TopBoundary	     = 0;
			RightBoundary	 = room_width;
			BottomBoundary	 = room_height;
			AnimatedGraphics = noone;		// Array: [sprite1, sprite1_duration, sprite2, sprite2_duration...]	
			AnimalSet	     = noone;		// Array: [animal_sprite1, animal_sprite2...]
			NextStage		 = noone;
		}
		break;
	}
}

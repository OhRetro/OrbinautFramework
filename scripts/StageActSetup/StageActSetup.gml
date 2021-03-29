function StageActSetup()
{	
	// Setup stage properties
	switch room 
	{
		// Moonlight Base
		case MBZ:
		{
			CardName				= "MOONLIGHT BASE";	
			ZoneID					= 0;
			ActID					= 0;
			CardEnabled				= true;
			TimeEnabled				= false;
			Time					= 0;
			WaterLevel				= 0;
			LeftBoundary			= 0;
			TopBoundary				= 0;
			RightBoundary			= room_width;
			BottomBoundary			= room_height;
			State					= ActStateLoading;
			
			StageMusic				= TechnoPower;
			StageMusicDAC			= noone;
			LoopStart				= 0;
			LoopEnd					= 441.520;
		}
		break;	
		
		// Moonlight Base 2
		case MBZ2:
		{
			CardName				= "MOONLIGHT BASE";										
			ZoneID					= 0;							
			ActID					= 1;							
			CardEnabled				= true;							
			TimeEnabled				= false;						
			Time					= 0;							
			WaterLevel				= 0;							
			LeftBoundary			= 0;							
			TopBoundary				= 0;							
			RightBoundary			= room_width;					
			BottomBoundary			= room_height;					
			State					= ActStateLoading;
			
			StageMusic				= MoonlightBase;				
			StageMusicDAC			= noone;						
			LoopStart				= 69.490;						
			LoopEnd					= 125.120;
		}
		break;	
		
		// Horizon Heights
		case HHZ:
		{
			CardName				= "HORIZON HEIGHTS";											
			ZoneID					= 1;							
			ActID					= 0;							
			CardEnabled				= true;							
			TimeEnabled				= false;						
			Time					= 0;							
			WaterLevel				= 0;							
			LeftBoundary			= 0;							
			TopBoundary				= 0;							
			RightBoundary			= room_width;					
			BottomBoundary			= room_height;					
			State					= ActStateLoading;
			
			StageMusic				= HorizonHeights;				
			StageMusicDAC			= noone;						
			LoopStart				= 0;						
			LoopEnd					= 167.163;
		}
		break;	
	}	
}
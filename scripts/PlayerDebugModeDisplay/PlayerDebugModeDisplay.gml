function PlayerDebugModeDisplay()
{
	if !DebugMode
	{
		return false;
	}
	else
	{
		// Switch between objects
		if Stage.DoUpdate
		{
			switch DebugList[DebugItem]
			{
				case Ring:					 
					animation_set_frame(spr_obj_ring, 1);			  
				break;
				case ItemBox:				 
					animation_set_frame(spr_obj_itembox, 1);		  
				break;
				case SpikesVertical:	    
					animation_set_frame(spr_obj_spikesvertical, 1);  
				break;
				case SpringYellowVertical:   
					animation_set_frame(spr_obj_spring_yellow_v, 1); 
				break;
				case SpringYellowHorizontal: 
					animation_set_frame(spr_obj_spring_yellow_h, 1); 
				break;
				case SpringYellowDiagonal:   
					animation_set_frame(spr_obj_spring_yellow_d, 1); 
				break;
				case SpringRedVertical:      
					animation_set_frame(spr_obj_spring_red_v, 1);	  
				break;
				case SpringRedHorizontal:   
					animation_set_frame(spr_obj_spring_red_h, 1);    
				break;
				case SpringRedDiagonal:      
					animation_set_frame(spr_obj_spring_yellow_d, 1);
				break;
				case StarPost:				 
					animation_set_frame(spr_obj_starpost, 1);		  
				break;
				case Animal:				 
					animation_set_frame(spr_obj_animal_flicky, 1);   
				break;
				case Bridge:				 
					animation_set_frame(spr_obj_bridgelog_mqz, 1);   
				break;
				case FloatingPlatform:		 
					animation_set_frame(spr_obj_platform_mqz, 1);   
				break;
			}
		}
		
		// Update player
		x			 = floor(PosX);
		y			 = floor(PosY);
		image_xscale = 1;
		image_angle  = 360;
	
		// Draw player
		draw_self();
		
		// Return active debug mode
		return true;
	}
}
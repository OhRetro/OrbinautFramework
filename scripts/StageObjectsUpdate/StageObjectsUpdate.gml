function StageObjectsUpdate() 
{	
	// Unload all objects
	instance_deactivate_object(Objects);
	
	// Load objects in a given region
	if State != ActStateLoading
	{
		//var Boundary128 = Screen.CameraX div 128 * 128;
		//instance_activate_region(Boundary128, 0, Boundary128 + ceil(Screen.Width / 128) * 128, room_height, true);
		instance_activate_region(Screen.CameraX - 480, Screen.CameraY - 144, Screen.Width + 960, Screen.Height + 288, true);
	}
	
	// Check if player died or stage unloads
	if Player.Death or State == ActStateUnload or State == ActStateRestart
	{	
		// Create layer to store object sprites on
		if !layer_exists("ObjectSprites")
		{		
			layer_create(Player.DrawOrder + 1, "ObjectSprites");
		}
		
		// Stop player
		if State == ActStateRestart
		{
			with Player
			{
				var ObjectSprite = layer_sprite_create("ObjectSprites", x + Xsp, y + Ysp, sprite_index);
				
				// Set sprite properties
				layer_sprite_speed(ObjectSprite,  0);
				layer_sprite_alpha(ObjectSprite,  image_alpha);
				layer_sprite_index(ObjectSprite,  image_index);
				layer_sprite_xscale(ObjectSprite, image_xscale);
				layer_sprite_yscale(ObjectSprite, image_yscale);
			}
		}
		
		// Do code from object side
		with all
		{
			if  object_index != Game   and object_index != Player and object_index != Input
			and object_index != Screen and object_index != Stage  and object_index != Discord
			{
				// Create this object current sprite on its position
				var ObjectSprite = layer_sprite_create("ObjectSprites", x, y, sprite_index);
			
				// Set sprite properties
				layer_sprite_speed(ObjectSprite,  0);
				layer_sprite_alpha(ObjectSprite,  visible ? image_alpha : 0);
				layer_sprite_index(ObjectSprite,  image_index);
				layer_sprite_xscale(ObjectSprite, image_xscale);
				layer_sprite_yscale(ObjectSprite, image_yscale);

				// Destroy object
				instance_destroy(self);
			}
		}
	}
}
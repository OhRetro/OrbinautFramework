function InputHotkeysRead()
{	
	if room != GameStart and room != DevMenu
	{
		// Stage restart
		if keyboard_check_pressed(vk_f1) 
		{
			Game.SavedCheckpoint = 0;
			Game.SavedPosition	 = 0;
			Game.PalIndex[0]     = 0;
			room_restart();
		}
		if keyboard_check_pressed(vk_f2)
		{
			room_restart();
		}

		// Game restart
		if keyboard_check_pressed(vk_f3) 
		{
			game_restart();
		}
		
		// Low FPS mode
		if keyboard_check(vk_f4) 
		{
			game_set_speed(2, gamespeed_fps);
		}
		else
		{
			game_set_speed(60, gamespeed_fps);
		}
	
		// Player
		if keyboard_check_pressed(ord("1")) 
		{
			Player.Inertia += 6 * Player.Facing;	
		}
		if keyboard_check_pressed(ord("2")) 
		{
			Player.Inertia = 16 * Player.Facing;
		}
		if keyboard_check_pressed(ord("3")) 
		{
			Player.HighSpeedBonus = 1180;
		}
		if keyboard_check_pressed(ord("4")) 
		{
			Player.InvincibilityBonus = 1050;
		}
		if keyboard_check_pressed(ord("5")) 
		{
			object_damage(false, false, true);
		}
		
		// Ignore input mode
		if keyboard_check_pressed(ord("L")) 
		{
			IgnoreInput = true;
			ResetInput  = true;
		}
	
		// Window resize
		if keyboard_check_pressed(vk_numpad1) 
		{
			Game.WindowSize = 1; 
			window_set_size(Game.ResolutionWidth * Game.WindowSize, Game.ResolutionHeight * Game.WindowSize);
		}
		if keyboard_check_pressed(vk_numpad2) 
		{
			Game.WindowSize = 2; 
			window_set_size(Game.ResolutionWidth * Game.WindowSize, Game.ResolutionHeight * Game.WindowSize);
		}
		if keyboard_check_pressed(vk_numpad3) 
		{
			Game.WindowSize = 3; 
			window_set_size(Game.ResolutionWidth * Game.WindowSize, Game.ResolutionHeight * Game.WindowSize);
		}
		if keyboard_check_pressed(vk_numpad4) 
		{
			Game.WindowSize = 4; 
			window_set_size(Game.ResolutionWidth * Game.WindowSize, Game.ResolutionHeight * Game.WindowSize);
		}	
	}
	
	if keyboard_check_pressed(vk_f7)
	{
		Game.ResolutionWidth  = 320;
		Game.ResolutionHeight = 224;
		
		Screen.Width = Game.ResolutionWidth;
		Screen.Height = Game.ResolutionHeight;

		fade_perform(from, black, 0.5);
		
		// Adjust room viewport to our resolution
		application_set_size(Game.ResolutionWidth, Game.ResolutionHeight);
		window_set_size(Game.ResolutionWidth * Game.WindowSize, Game.ResolutionHeight * Game.WindowSize);
	}
	if keyboard_check_pressed(vk_f8)
	{
		Game.ResolutionWidth  = 400;
		Game.ResolutionHeight = 224;
		
		Screen.Width = Game.ResolutionWidth;
		Screen.Height = Game.ResolutionHeight;
		
		fade_perform(from, black, 0.5);
		
		// Adjust room viewport to our resolution
		application_set_size(Game.ResolutionWidth, Game.ResolutionHeight);
		window_set_size(Game.ResolutionWidth * Game.WindowSize, Game.ResolutionHeight * Game.WindowSize);
	}
	if keyboard_check_pressed(vk_f9)
	{
		Game.ResolutionWidth  = 426;
		Game.ResolutionHeight = 240;
		
		Screen.Width = Game.ResolutionWidth;
		Screen.Height = Game.ResolutionHeight;
		
		fade_perform(from, black, 0.5);
		
		// Adjust room viewport to our resolution
		application_set_size(Game.ResolutionWidth, Game.ResolutionHeight);
		window_set_size(Game.ResolutionWidth * Game.WindowSize, Game.ResolutionHeight * Game.WindowSize);
	}
}
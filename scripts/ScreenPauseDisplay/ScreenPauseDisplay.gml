function ScreenPauseDisplay()
{
	if Stage.State != StagePaused
	{
		return false;
	}
	else
	{
		surface_set_target(Palette.SurfaceHigh);
		draw_sprite(PauseSurface, 0, 0, 0);
		var MenuX = Width / 2;
		var MenuY = Height / 2;
		draw_sprite(spr_pause_menu, sign(Stage.PauseMode), MenuX, MenuY);
		draw_sprite(spr_pause_buttons, Stage.PauseButton + (Stage.PauseMode ? 3 : 0), MenuX, MenuY);
		surface_reset_target();
		
		return true;
	}
}
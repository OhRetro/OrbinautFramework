function ScreenRendererUpdate()
{	
	surface_reset_target();
	
	shader_set(ShaderPostProcessing);
	application_surface_draw_enable(true);
	draw_surface(application_surface, 0, 0);
	application_surface_draw_enable(false);
	shader_reset();
}
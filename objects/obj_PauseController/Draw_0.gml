/// @description draw Rectangle

if(surface_exists(PauseSurface)){
	var xView = __view_get( e__VW.XView, view_current );
	var yView = __view_get( e__VW.YView, view_current );
	draw_surface(PauseSurface,xView,yView)
}

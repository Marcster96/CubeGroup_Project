/// @description Init

//Setup vars

var xView = __view_get( e__VW.XView, view_current );
var yView = __view_get( e__VW.YView, view_current );
var widthView = __view_get( e__VW.WView, view_current );
var heightView = __view_get( e__VW.HView, view_current )
var slice = sprite_get_width(spr_pauseMenu) / 3;
var spriteOffset = sprite_get_width(spr_pauseMenu) / 18;



//PauseGame

with(obj_GUIManager)instance_destroy();


PauseSurface = surface_create(xView,yView);
surface_copy(PauseSurface,0,0,application_surface);


instance_deactivate_all(true);



//Create PauseMenu
instance_activate_object(obj_StarController);
instance_activate_object(obj_CubeController);


PausePanel = instance_create(xView + widthView/2,yView + heightView/2,obj_pauseMenu);
with(PausePanel)depth = -100;


MenuButton = instance_create(((xView + widthView / 2) -  (sprite_get_width(spr_pauseMenu) / 2))-spriteOffset + slice * 1 - slice/2,yView + heightView /2,obj_menuButton);
with(MenuButton) depth = -150;

BackButton = instance_create(((xView + widthView / 2) -  (sprite_get_width(spr_pauseMenu) / 2))-spriteOffset + slice * 2 - slice/2,yView + heightView /2,obj_backwardsPause);
with(BackButton){
	depth = -150;
	
	var cubeController = instance_find(obj_CubeController,0);
	if(ds_stack_size(cubeController.CubesInUse) == 0){
		image_index = 2;
	}else{
		image_index = 0;
	}
}

PlayButton = instance_create(((xView + widthView / 2) -  (sprite_get_width(spr_pauseMenu) / 2))-spriteOffset + slice * 3 - slice/2,yView + heightView /2,obj_playButton);

with(PlayButton)depth = -150
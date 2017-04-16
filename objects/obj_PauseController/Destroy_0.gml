/// @description Insert description here
// You can write your code in this editor

with(PausePanel)instance_destroy()

with(MenuButton)instance_destroy()

with(BackButton)instance_destroy()

with(PlayButton)instance_destroy()

surface_free(PauseSurface)

if(instance_find(obj_CubeController,0).SelectorIsActive == false){
	instance_create(0,0,obj_GUIManager);
}

instance_activate_all();
var currentSprite = sprite_index;	
var cube1 = instance_create(x,y,obj_playerSpecial);
var cube2 = instance_create(x,y,obj_player);
cube2.sprite_index = spr_cube_03_second
		
//wird benutzt, um zu checken ob das object collidable ist. 
var collidable;
var playerInstances;
with(instance_find(obj_CubeController,0)){
	var cubeInfos = ds_stack_pop(CubesInUse);
	playerInstances = cubeInfos[1];
	ds_list_replace(playerInstances,ds_list_size(playerInstances)-1,cube1);		
	ds_list_add(playerInstances,cube2);	
	show_debug_message("ListeSize: " + string(ds_list_size(playerInstances)))
	cubeInfos[1] = playerInstances;
	collidable = cubeInfos[2]
	ds_stack_push(CubesInUse,cubeInfos);
}
	
var portalController = ds_list_find_value(playerInstances,0);
	
with(portalController){
	Cube1 = cube1;
}
	
with(cube1){
	sprite_index = currentSprite;
	isCollidable = collidable;
	PortalController = portalController;
}
		
instance_destroy()
	
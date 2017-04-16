/// @description RedoCube
if(mouseOn && (image_index == 0 || image_index == 1)){
	var inUseCount = ds_stack_size(instance_find(obj_CubeController,0).CubesInUse)
	instance_activate_object(obj_player);
	instance_activate_object(obj_playerSpecial);
	for(var i = 0; i < inUseCount;i++){
		with(instance_find(obj_StarController,0))scr_backwardsStar()
		with(instance_find(obj_CubeController,0)){
			var cubeInfos = ds_stack_pop(CubesInUse);
	
	
			var cubeType = cubeInfos[0]
			var cubeInstances = cubeInfos[1]
			
			for(var j = 0; j < ds_list_size(cubeInstances);j++){
				with(ds_list_find_value(cubeInstances,j))instance_destroy();
			}
		
	
			ds_list_replace(ListOfCubes,cubeType,ds_list_find_value(ListOfCubes,cubeType) + 1);

		}
	}
	
	inUseCount  = 0;
		
	with(instance_find(obj_backwards,0))image_index = 2
	with(instance_find(obj_PauseController,0))instance_destroy()
	with(instance_find(obj_CubeController,0)){
		scr_selectorReset();
		scr_selectorCreate();
	}
}
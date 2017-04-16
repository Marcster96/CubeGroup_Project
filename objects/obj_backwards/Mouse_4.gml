/// @description RedoCube
if(mouseOn && (image_index == 0 || image_index == 1)){
	var inUseCount = 0;
	
	with(instance_find(obj_StarController,0)){
		scr_backwardsStar();
	}
	with(instance_find(obj_CubeController,0)){
		var cubeInfos = ds_stack_pop(CubesInUse);
	
		inUseCount = ds_stack_size(CubesInUse);
	
		var cubeType = cubeInfos[0]
		var cubeInstances = cubeInfos[1]
	
		for(var i = 0; i < ds_list_size(cubeInstances);i++){
			with(ds_list_find_value(cubeInstances,i))instance_destroy();
		}
		
	
		ds_list_replace(ListOfCubes,cubeType,ds_list_find_value(ListOfCubes,cubeType) + 1);
		scr_selectorReset();
		scr_selectorCreate();
	}


	if(inUseCount == 0){
		image_index = 2;
	}
}
///ActionOnClick
if(image_index == 1 || image_index == 0){
	var cubeType = CubeType;
	with(instance_find(obj_CubeController,0)){
	    scr_selectorSpawnCube(cubeType);   
	}
}


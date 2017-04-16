var cubeCollected = ds_stack_pop(CubeCollected);
for(var i = 0; i < cubeCollected;i++){
	var starInfo = ds_stack_pop(StarsCollected);

	instance_create(starInfo[0],starInfo[1],obj_star)
}
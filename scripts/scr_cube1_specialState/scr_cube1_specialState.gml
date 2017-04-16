{
	//Wird ein Spezialobjekt erstellt, wegen dem View, damit der anständig folgen kann.
var currentSprite = sprite_index;
var specialCube = instance_create(x,y,obj_playerSpecial);
//wird benutzt, um zu checken ob das object collidable ist. 
var collidable;
var playerInstances;
with(instance_find(obj_CubeController,0)){
	var cubeInfos = ds_stack_pop(CubesInUse);
	playerInstances = cubeInfos[1];
	ds_list_replace(playerInstances,ds_list_size(playerInstances)-1,specialCube);			
	cubeInfos[1] = playerInstances;
	collidable = cubeInfos[2]
	ds_stack_push(CubesInUse,cubeInfos);
}
with(specialCube){
	sprite_index = currentSprite;
	isCollidable = collidable;
}
instance_destroy();
}

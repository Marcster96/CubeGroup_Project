image_speed = 0;
var currentSprite = sprite_index;
var collidable;
var playerInstances;
var xdirection = image_xscale;
var xToMove;
var yToMove;
var cubeNumber;
var specialCube;
if(sprite_index == spr_cube_04){ //Erstes glied wird abgekapselt | oben rechts	
	sprite_index = spr_cube_04_special_2;		
	image_index = 1;
	specialCube = instance_create(bbox_left - ((bbox_right - bbox_left) / 4) * 3,bbox_top + ((bbox_bottom - bbox_top)/4),obj_playerSpecial);
	//wird benutzt, um zu checken ob das object collidable ist. 
	xToMove = 25;
	yToMove = 15;
	cubeNumber = 1;	
	ReadyToTransform = false;
	
	//wird benutzt, um zu checken ob das object collidable ist. 
	with(instance_find(obj_CubeController,0)){
		var cubeInfos = ds_stack_pop(CubesInUse);
		playerInstances = cubeInfos[1];
		ds_list_add(playerInstances,specialCube);			
		cubeInfos[1] = playerInstances;
		collidable = cubeInfos[2]
		ds_stack_push(CubesInUse,cubeInfos);
	}
	
	with(specialCube){
		sprite_index = currentSprite;
		isCollidable = collidable;
		YToMove = y-yToMove;
		XToMove = x+(xToMove *xdirection);
		IsCube = cubeNumber;
	}
	
}else if(sprite_index == spr_cube_04_special_2 && sprite_index == 1 && ReadyToTransform){ // zweites glied wird abgekapselt | oben links		
	image_index = 2;		
	specialCube = instance_create(bbox_left - ((bbox_right - bbox_left) / 4),bbox_top + ((bbox_bottom - bbox_top)/4),obj_playerSpecial);
	xToMove = 18;
	yToMove = 10;
	cubeNumber = 2;	
	ReadyToTransform = false;
	
	
	//wird benutzt, um zu checken ob das object collidable ist. 
	with(instance_find(obj_CubeController,0)){
		var cubeInfos = ds_stack_pop(CubesInUse);
		playerInstances = cubeInfos[1];
		ds_list_add(playerInstances,specialCube);			
		cubeInfos[1] = playerInstances;
		collidable = cubeInfos[2]
		ds_stack_push(CubesInUse,cubeInfos);
	}
	
	with(specialCube){
		sprite_index = currentSprite;
		isCollidable = collidable;
		YToMove = y-yToMove;
		XToMove = x+(xToMove *xdirection);
		IsCube = cubeNumber;
	}
}else if(sprite_index == spr_cube_04_special_2 && sprite_index == 2 && ReadyToTransform){ // zweites glied wird abgekapselt | oben links		
	image_index = 3;		
	specialCube = instance_create(bbox_left - ((bbox_right - bbox_left) / 4) * 3,bbox_top + ((bbox_bottom - bbox_top)/4) * 3,obj_playerSpecial);
	xToMove = 12;
	yToMove = 5;
	cubeNumber = 3;	
	ReadyToTransform = false;
	
	
	//wird benutzt, um zu checken ob das object collidable ist. 
	with(instance_find(obj_CubeController,0)){
		var cubeInfos = ds_stack_pop(CubesInUse);
		playerInstances = cubeInfos[1];
		ds_list_add(playerInstances,specialCube);			
		cubeInfos[1] = playerInstances;
		collidable = cubeInfos[2]
		ds_stack_push(CubesInUse,cubeInfos);
	}
	
	with(specialCube){
		sprite_index = currentSprite;
		isCollidable = collidable;
		YToMove = y-yToMove;
		XToMove = x+(xToMove *xdirection);
		IsCube = cubeNumber;
	}
}else if(sprite_index == spr_cube_04_special_2 && sprite_index == 3 && ReadyToTransform){ // zweites glied wird abgekapselt | oben links		
	image_index = 4;		
	specialCube = instance_create(bbox_left - ((bbox_right - bbox_left) / 4),bbox_top + ((bbox_bottom - bbox_top)/4) * 3,obj_playerSpecial);
	xToMove = 5;
	yToMove = 0;
	cubeNumber = 4;	
	ReadyToTransform = false;
	
	
	//wird benutzt, um zu checken ob das object collidable ist. 
	with(instance_find(obj_CubeController,0)){
		var cubeInfos = ds_stack_pop(CubesInUse);
		playerInstances = cubeInfos[1];
		ds_list_add(playerInstances,specialCube);			
		cubeInfos[1] = playerInstances;
		collidable = cubeInfos[2]
		ds_stack_push(CubesInUse,cubeInfos);
	}
	
	with(specialCube){
		sprite_index = currentSprite;
		isCollidable = collidable;
		YToMove = y-yToMove;
		XToMove = x+(xToMove *xdirection);
		IsCube = cubeNumber;
	}
	
	instance_destroy()
}
	
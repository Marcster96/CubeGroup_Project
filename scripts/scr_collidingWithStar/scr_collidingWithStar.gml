///@description scr_collidingWithStar(instanceID)

var star  = argument0

var starInfo;
starInfo[0] = star.x;
starInfo[1] = star.y;


with(star){
	instance_destroy();	
}

ds_stack_push(StarsCollected,starInfo);

var cubeCollected = ds_stack_pop(CubeCollected);
cubeCollected +=1;
ds_stack_push(CubeCollected,cubeCollected);
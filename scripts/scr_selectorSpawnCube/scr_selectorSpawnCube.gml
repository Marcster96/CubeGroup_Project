///scr_selectorSpawnCube(cubeType)
var cubeType = argument0;

//Runterrechnen von dem Cube den man ausgewählt hat. 
ds_list_replace(ListOfCubes,cubeType,ds_list_find_value(ListOfCubes,cubeType)-1);

//Löschen von der Auswahlmaske
with(Selector)instance_destroy();

for(var i = 0; i < ds_list_size(SelectorCubes);i++){
	var selectableCube = ds_list_find_value(SelectorCubes,i);
	with(selectableCube)instance_destroy();
}

var playerInstances = ds_list_create()

//Entscheidet welchen "Cube" man benutzt 
var spriteToUse = 0;
var collidable = false;
switch(cubeType){
	case 0:
		spriteToUse = spr_cube_01;
		collidable = true;
		break;
	case 1: 
		spriteToUse = spr_cube_02;
		collidable = false;
		break;
	case 2:
		var portal_controller = instance_create(0,0,obj_portal_controller);
		ds_list_add(playerInstances,portal_controller)
		spriteToUse = spr_cube_03;
		collidable = false;
		break;
	case 3:
		spriteToUse = spr_cube_04;
		collidable = true;
		break;
	case 4:
		spriteToUse = spr_cube_05;
		collidable = false;
		break;
	case 5:
		spriteToUse = spr_cube_06;
		collidable = false;
}


//Erstellt den Spieler den man im endeffekt spielt.
var player = instance_create(instance_find(obj_cubeSpawner,0).bbox_right-8,instance_find(obj_cubeSpawner,0).bbox_bottom,obj_player);
with(player){
	sprite_index = spriteToUse;
	
}


//FürBackwards Click
var cubeInfos;

cubeInfos[0] = cubeType;
ds_list_add(playerInstances,player)
cubeInfos[1] = playerInstances;
cubeInfos[2] = collidable;

ds_stack_push(CubesInUse,cubeInfos);


//GUI
instance_create(0,0,obj_GUIManager);
with(instance_find(obj_backwards,0))image_index = 0;
SelectorIsActive = false;

//StarControlling
/*
	Dieser Block wird dazu benutzt, um einen Stack aufzubauen der z.B. die Sterne verwaltet. 
	Bedeutet:
		Cube1 -> 5 Sterne aufgesammelt. 
		Cube 2 -> 1 Stern aufgesammelt. 
		
	hier wird dann später durchinteriert, um die Anzahl wiederherzustellen. 
*/
with(instance_find(obj_StarController,0)){
	ds_stack_push(CubeCollected,0);
}
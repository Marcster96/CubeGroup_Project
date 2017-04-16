

//Um die cubes zu verarbeiten
var cubeController = instance_create(0,0,obj_CubeController);

with(cubeController){
    //Cubes die hinzugefügt werden z.B. 3x PlatformCubes / 1x LeiterCube
    ds_list_add(ListOfCubes,1); // Platform
    ds_list_add(ListOfCubes,1); // Ladder
	ds_list_add(ListOfCubes,1); 
	ds_list_add(ListOfCubes,1);
	ds_list_add(ListOfCubes,1);
	ds_list_add(ListOfCubes,1);
    
    //Auffüllen der Restlichen CubeArten
    for(var i = ds_list_size(ListOfCubes)-1;i < CurrentCubes;i += 1){
        ds_list_add(ListOfCubes,0);
    }
    
    scr_selectorCreate();
	
}
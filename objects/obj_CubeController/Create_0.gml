///InitCubeController

//Hier werden alle Werte von Cubes gespeichert.
ListOfCubes = ds_list_create();

//Hier werden alle Instanzen gespeichert, die bereits verwendet wurden.
//Mit Pop werden diese aus dem Stack geholt und wieder in die Liste geschrieben 
CubesInUse = ds_stack_create();
SelectorIsActive = false;



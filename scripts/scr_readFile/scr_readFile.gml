//Die sav Datei wird wie folgt geschrieben: 
//-----------------------------------------
/*
    Levelbewertung
    0 ist kein Stern
    1 ist ein Stern
    2 ist zwei Sterne
    3 ist drei Sterne
    
    
    METADATA:
        - MUSIC
    
    LOCKABLES:
        - AREA_UNLOCKED
        - AREA1_LEVEL_UNLOCKED
        - AREA2_LEVEL_UNLOCKED
        
    AREA1:
        - LEVEL_1: 2
        - LEVEL_2: 1 
        - LEVEL_3: 0
        - ...
    AREA2:
        - etc.

*/


//AreaVariables
global.AREA_UNLOCKED = 1;

//Area1 Variables
global.area1List = ds_list_create();
global.AREA1_LEVEL_UNLOCKED = 1;

//Area2 Variables
global.area2List = ds_list_create();
global.AREA2_LEVEL_UNLOCKED = 1;



if(!file_exists(SAVE_FILE_NAME)){
    show_debug_message("No Save.ini");
    global.SoundOn = true;
    ds_list_clear(global.area1List);
    for(var i = 0; i < AREA_1_LEVEL;i += 1){
        ds_list_add(global.area1List,0);
    }
    ds_list_clear(global.area2List);
    for(var i = 0; i < AREA_2_LEVEL;i += 1){
        ds_list_add(global.area2List,0);
    }
    
    scr_saveFile();
}else{

    show_debug_message("Save.ini found going to read it...");
    ini_open(SAVE_FILE_NAME);
    
    //Lesen von freigeschalteten Level
    global.AREA_UNLOCKED = ini_read_real("LOCKABLES","AREA_UNLOCKED",1);
    global.AREA1_LEVEL_UNLOCKED = ini_read_real("LOCKABLES","AREA1_LEVEL_UNLOCKED",1);
    global.AREA2_LEVEL_UNLOCKED = ini_read_real("LOCKABLES","AREA2_LEVEL_UNLOCKED",1);
    
    ds_list_clear(global.area1List);
    for(var i = 0;i < AREA_1_LEVEL;i += 1){
        ds_list_add(global.area1List,ini_read_real("AREA1","LEVEL"+string(i),0));
    }
    
    ds_list_clear(global.area2List);
    for(var i = 0;i < AREA_2_LEVEL;i += 1){
        ds_list_add(global.area2List,ini_read_real("AREA2","LEVEL"+string(i),0));
    }
    
    if(ini_read_real("METADATA","MUSIC",true)){
        
        global.SoundOn = true; 
    }else{
       
        global.SoundOn = false;
    }
    
    ini_close();
    
    show_debug_message("Read .ini file...");
}


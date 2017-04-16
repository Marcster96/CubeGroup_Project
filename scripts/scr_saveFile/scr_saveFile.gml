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


if(file_exists(SAVE_FILE_NAME)) file_delete(SAVE_FILE_NAME);

ini_open(SAVE_FILE_NAME);

ini_write_real("METADATA","MUSIC",global.SoundOn);

ini_write_real("LOCKABLES","AREA_UNLOCKED",global.AREA_UNLOCKED);
ini_write_real("LOCKABLES","AREA1_LEVEL_UNLOCKED",global.AREA1_LEVEL_UNLOCKED);
ini_write_real("LOCKABLES","AREA2_LEVEL_UNLOCKED",global.AREA2_LEVEL_UNLOCKED);


for(var i = 0; i < AREA_1_LEVEL; i += 1){
    ini_write_real("AREA1","LEVEL"+string(i),ds_list_find_value(global.area1List,i));
}

for(var i = 0; i < AREA_2_LEVEL; i += 1){
    ini_write_real("AREA2","LEVEL"+string(i),ds_list_find_value(global.area2List,i));
}

ini_close();
show_debug_message("INI is written");

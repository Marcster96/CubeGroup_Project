///Test nachher wieder löschen!!!!

ds_list_replace(global.area1List,Level,3);
if(global.AREA1_LEVEL_UNLOCKED-1 <= Level){
	global.AREA1_LEVEL_UNLOCKED += 1;
}

var i;
for (i = 0; i < instance_number(obj_LevelSelector); i += 1)
{
   var levelSelector = instance_find(obj_LevelSelector,i);
   with(levelSelector){
        scr_Area1LevelSelection();
   }
}

scr_saveFile();


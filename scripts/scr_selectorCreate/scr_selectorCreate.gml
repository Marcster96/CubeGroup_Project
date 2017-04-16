//Indikator ob der Selecotr aktiv ist.
if(!SelectorIsActive){
	SelectorIsActive = true;

	//Liste aus instanzen wo man draufklicken kann. 
	SelectorCubes = ds_list_create();
	ds_list_clear(SelectorCubes);

	var listOfCubes = ListOfCubes;
	var selectorX = __view_get( e__VW.XView, view_current ) + __view_get( e__VW.WView, view_current )/2;
	var selectorY = __view_get( e__VW.YView, view_current ) + __view_get( e__VW.HView, view_current )/2;

	Selector = instance_create(selectorX,selectorY,obj_CubeSelector);
	with(Selector){
		ListOfCubes = listOfCubes;
	}


	var selectorWidth = sprite_get_width(spr_CubeSelector);
	var selectorHeight = sprite_get_height(spr_CubeSelector);
	var selectorSlices = selectorWidth / CurrentCubes;


	//Setzen von Bildern der Cubes die man auswählen kann. 
	for(var i = 1;i <= CurrentCubes;i++){
	    var selectorCube = instance_create(Selector.bbox_left + selectorSlices * i - selectorSlices/2,Selector.bbox_top +  selectorHeight / 2,obj_cubeToSelect);
	    var imageindex = 0;
	    var spriteindex = 0;
	    switch(i){
	        case 1:
	            spriteindex = spr_cube_01_selectable;
	            break;
	        case 2:
	            spriteindex = spr_cube_02_selectable;
	            break;
			case 3:
				spriteindex = spr_cube_03_selectable;
				break;
			case 4:
				spriteindex = spr_cube_04_selectable;
				break;
			case 5:
				spriteindex = spr_cube_05_selectable;
				break;
			case 6:
				spriteindex = spr_cube_06_selectable;
				break; 
	        default:
	            spriteindex = spr_cube_01_selectable;
	            break;
	    }
    
    
	    if(ds_list_find_value(ListOfCubes,i-1) == 0){
	        imageindex = 2;
	    }else{
	        imageindex = 0;
	    }  
    
	    with(selectorCube){
	        CubeType = i - 1;
	        image_speed = 0
	        image_index = imageindex;
	        sprite_index = spriteindex;
	    }
    
	    ds_list_add(SelectorCubes,selectorCube);
	}

	//Löschen von VirtualKey GUI
	var guiManager = instance_find(obj_GUIManager,0);

	if(guiManager != noone){
		with(guiManager)instance_destroy()
	}
}
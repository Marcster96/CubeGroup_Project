image_speed = 0;

scr_readFile();

switch(Area){
    case 0:{
        sprite_index = spr_area1;
        
        if(global.AREA_UNLOCKED >= (Area+1)){
            image_index = 0;
        }else{
            image_index = 2;
        }
        
        break;
    }
    case 1:{
        sprite_index = spr_area2;
        
        if(global.AREA_UNLOCKED >= (Area+1)){
            image_index = 0;
        }else{
            image_index = 2;
        }
        break;
    }
}


image_speed = 0;

var isUnlocked = false;

ImageIndex = Level * 2;


if(global.AREA1_LEVEL_UNLOCKED >= (Level +1)){
    isUnlocked = true;
}else{
    sprite_index = spr_noStars;
    image_index = 0;
}

if(isUnlocked == true){
    switch(ds_list_find_value(global.area1List,Level)){
        case 0: {
            sprite_index = spr_star0;
            image_index = ImageIndex;
            break;
        }
        case 1: {
            sprite_index = spr_star1;
            image_index = ImageIndex;
            break;
        }
        case 2: {
            sprite_index = spr_star2;
            image_index = ImageIndex;
            break;
        }
        case 3: {
            sprite_index = spr_star3;
            image_index = ImageIndex;
            break;
        }
            
    }
}

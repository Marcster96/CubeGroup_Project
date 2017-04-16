switch(Level){
    case 0:{
        if(global.AREA1_LEVEL_UNLOCKED >=  (Level+1)){
			scr_saveOldRoomInTransactions(room);
            room_goto(rm_area1_level1);
        }
        break;
    }
	case 1:{
        if(global.AREA1_LEVEL_UNLOCKED >=  (Level+1)){
           
        }
        break;
    }
}

switch(Area){
    case 0:{
        if(global.AREA_UNLOCKED >=  (Area+1)){
			scr_saveOldRoomInTransactions(room)
            room_goto(rm_Area1Menu);
        }
        break;
    }
    case 1:{
        if(global.AREA_UNLOCKED >=  (Area+1)){
            scr_saveOldRoomInTransactions(room)
			room_goto(rm_Area2Menu);
        }
        break;
    }
}

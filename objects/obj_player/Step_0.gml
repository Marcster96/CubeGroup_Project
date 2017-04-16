switch(state){
    case states.normal:
        scr_playeNormal();
        break;
    case states.ladder:
		scr_playerOnLadder();
		break;
    case states.special:
		scr_playerInSpecialState();
        break;
	case states.invert:
		scr_playerInvertMovement();
		break;
}



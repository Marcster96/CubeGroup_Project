scr_physicalInputs();



vsp = 0;
hsp = 0
hsp = 1 * (key_right - key_left);



//Drehen von Spieler wenn er nach links oder rechts läuft
switch(hsp){ 
    case -1:{
        image_xscale = -1;
        break;
    }
    case 1:{
        image_xscale = 1;
    }
}

//Hoch oder Runterklettern
vsp = 4* (key_down - key_up);



//Ausstieg aus der Leiter durch Sprung
if(key_jump) || (!place_meeting(x,y,obj_playerSpecial)){
	hsp = 0;
	if(key_jump){
		vsp = -5;
	}else{
		vsp = 0;
	}
	state = states.normal
}

//Collision
scr_playerColliding();
scr_playerCollidingWithSpecial();

//Begrenzung von Links und rechts gehen


if(CurrentLadder.bbox_top <= bbox_bottom && CurrentLadder.bbox_bottom - 8 >= bbox_bottom){
	if(bbox_right + hsp >= CurrentLadder.bbox_right + 4){
		hsp = 0;
	}else if(bbox_left + hsp <= CurrentLadder.bbox_left - 4){
		hsp = 0;
	}
}else{
	hsp = hsp * 4;
}

y += vsp;
x += hsp;


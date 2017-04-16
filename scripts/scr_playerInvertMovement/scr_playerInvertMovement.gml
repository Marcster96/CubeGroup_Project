///Controll the player
image_speed = 1;
image_yscale = -1;
if(moveable == true)scr_physicalInputs()

//React to inputs
move = key_right - key_left;



//Drehen von Spieler wenn er nach links oder rechts läuft
switch(move){ 
    case -1:{
        image_xscale = -1;
        break;
    }
    case 1:{
        image_xscale = 1;
    }
}

//VerticalMovement
if(vsp > -10) vsp -= grav;

//HorizontalMovement
hsp = move * movespeed;




scr_playerColliding();

scr_playerCollidingWithSpecial();


//------------- Jumping -------------------------------
var t1 = tilemap_get_at_pixel(tilemap,bbox_left,bbox_top - 1) &tile_index_mask;
var t2 = tilemap_get_at_pixel(tilemap,bbox_right,bbox_top - 1) &tile_index_mask;

//On the ground
if(t1 != 0 || t2 != 0){
	vsp = 0;
	moveable = true;
}

if(vsp == 0){
	if(key_jump){
		vsp = +jumpspeed;
	}
}
//-----------------------------------------------------

//------------LadderClimbing---------------------------

if(key_up||key_down){
	if(place_meeting(x,y,obj_playerSpecial)){
		var ladder = instance_place(x,y,obj_playerSpecial);
		if(ladder.sprite_index == spr_cube_02_special && ladder.bbox_left+8 <=  x && ladder.bbox_right-8 >= x){
			CurrentLadder = ladder;
			state = states.ladder;
			exit;
		}
	}
}

//-----------------------------------------------------
//-----------Porting-----------------------------------
var specialCube = instance_place(x,y,obj_playerSpecial);

if(sprite_index != spr_cube_03_second && specialCube != noone && Ported == false){
	if(specialCube.sprite_index == spr_cube_03_special_01 || specialCube.sprite_index == spr_cube_03_special_02){
		
		var portalController = specialCube.PortalController;
		if(portalController.Cube1 == specialCube){
			x = portalController.Cube2.x;
			y = portalController.Cube2.y;
	
			moveable = false;
			Ported = true;
		}else if(portalController.Cube2 == specialCube){
			x = portalController.Cube1.x;
			y = portalController.Cube1.y;
			moveable = false;
			Ported = true;
		}
	}
}


if(!place_meeting(x,y,obj_playerSpecial)){
	Ported = false;
}
//-----------------------------------------------------
//-----------------------Invertating-------------------
var specialCube = instance_place(x,y,obj_playerSpecial);
if(specialCube != noone && specialCube.sprite_index == spr_cube_05_special && Inverted == false){
	state = states.normal
	Inverted = true;
	exit;
}

if(!place_meeting(x,y,obj_playerSpecial) && Inverted == true){
	Inverted = false;
}
//-----------------------------------------------------
//----------------Sepzial------------------------------
if(sprite_index == spr_cube_02){
	if(key_special && vsp == 0){
		state = states.special;
		exit
	}
}else {
	if(key_special){
		state = states.special;
		exit
	}
	
}

show_debug_message(vsp)
//---------------------------------------
x += hsp;
y += vsp;
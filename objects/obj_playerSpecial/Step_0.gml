/// @description special
if(!cubeHasFinished){
	if(sprite_index == spr_cube_01 || sprite_index == spr_cube_01_special){ 
		image_speed = 0.5;
		sprite_index = spr_cube_01_special;
    
		//Ende der Animation
		if(image_index == 5){
		    image_speed = 0;
		    if(alarm10IsActiv == false){
		        alarm_set(10,30);
		        with(instance_find(obj_GUIManager,0)){
		            instance_destroy()
		        };
		        alarm10IsActiv = true;
		        cubeHasFinished = true;
		    }
		}
	}else if(sprite_index == spr_cube_02 || sprite_index == spr_cube_02_special){	
		sprite_index = spr_cube_02_special;
		
		//Ende der Animation
		if(image_index == 12){
			image_speed = 0;
			var t1 = place_meeting(x,y+2,obj_playerSpecial);
			var t2 = tilemap_get_at_pixel(tilemap,bbox_right,bbox_bottom + 2 - 1) & tile_index_mask;
			
			if(t2 != 0){ //Colliding
				if(alarm10IsActiv == false){
					
					alarm_set(10,30);
					with(instance_find(obj_GUIManager,0)){
						instance_destroy()
					}
					alarm10IsActiv = true;
					cubeHasFinished = true;
				}
			}else if(t1){
				if(alarm10IsActiv == false){
					
					alarm_set(10,30);
					with(instance_find(obj_GUIManager,0)){
						instance_destroy()
					}
					alarm10IsActiv = true;
					cubeHasFinished = true;
				}
			}else{
				y += 2;
			}	
		}else{
			image_speed = 1;
		}		
	}else if(sprite_index == spr_cube_03 || sprite_index == spr_cube_03_special_01){
		sprite_index = spr_cube_03_special_01;
		
		if(image_index == 4){
			image_speed = 0;
			cubeHasFinished = true;
		}else{
			image_speed = 0.75;
		}
	}else if(sprite_index == spr_cube_03_second || sprite_index == spr_cube_03_special_02){
		sprite_index = spr_cube_03_special_02;
		if(image_index == 4){
			image_speed = 0;
			
			if(alarm10IsActiv == false){
								
				alarm_set(10,30);
				with(instance_find(obj_GUIManager,0)){
					instance_destroy()
				}
				alarm10IsActiv = true;
				cubeHasFinished = true	
			}
		}else{
			image_speed = 0.75;
			
		}
	}else if(sprite_index == spr_cube_04_special_2 || sprite_index == spr_cube_04_special){
		sprite_index = spr_cube_04_special;
		var isFinished = true;
		
		if(image_index == 2){
			image_speed = 0.5;
			isFinished = false;
		}else{
			image_speed = 0;
		}
		
		if(!(x == XToMove)){
			if(x < XToMove){
				x+=1;
			}else{
				x-=1;
			}
			isFinished = false;
		}
		
		if(!(y == YToMove)){
			if(y < YToMove){
				y+=1;
			}else{
				y-=1;
			}
			isFinished = false;
		}
		
		if(isFinished == true){
			if(IsCube == 4){
				if(alarm10IsActiv == false){				
					alarm_set(10,30);
					with(instance_find(obj_GUIManager,0)){
						instance_destroy()
					}
					alarm10IsActiv = true;
					cubeHasFinished = true	
				}
			}else{
				with(instance_find(obj_player,0)){
					ReadyToTransform = true;
				}
				cubeHasFinished = true;
			}
		}
	}else if(sprite_index == spr_cube_05 || sprite_index == spr_cube_05_special){		
		if(StartRotating == false){
			sprite_index = spr_cube_05_special;
    
			//Ende der Animation
			if(image_index == 2){
			    image_speed = 0;
			    if(alarm10IsActiv == false){
			        alarm_set(10,30);
			        with(instance_find(obj_GUIManager,0)){
			            instance_destroy()
			        };
			        alarm10IsActiv = true;
					StartRotating = true;
			    }
			}else{
				image_speed = 0.5;
			}
		}else{
			image_angle += 8;
		}
	}
}

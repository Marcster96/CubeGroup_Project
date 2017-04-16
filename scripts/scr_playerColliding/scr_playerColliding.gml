

//Vertical Colliding
if(vsp > 0){ // downwards
	var t1 = tilemap_get_at_pixel(tilemap, bbox_left,bbox_bottom+vsp) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap,bbox_right,bbox_bottom+vsp) & tile_index_mask;
	
	if(t1 != 0 || t2 != 0){ //Colliding
		
		while(!((tilemap_get_at_pixel(tilemap, bbox_left,bbox_bottom+sign(vsp)) & tile_index_mask != 0) || (tilemap_get_at_pixel(tilemap,bbox_right,bbox_bottom+sign(vsp)) & tile_index_mask != 0))){
			y += sign(vsp)
		}
		
		vsp = 0;
	}
}else{// upwards
	var t1 = tilemap_get_at_pixel(tilemap, bbox_left,bbox_top+vsp) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap,bbox_right,bbox_top+vsp) & tile_index_mask;
	
	if(t1 != 0 || t2 != 0){ //Colliding
	
		while(!((tilemap_get_at_pixel(tilemap, bbox_left,bbox_top+sign(vsp)) & tile_index_mask != 0) || (tilemap_get_at_pixel(tilemap,bbox_right,bbox_top+sign(vsp)) & tile_index_mask != 0))){
			y += sign(vsp)
		}
		
		vsp = 0;	
	}
}



//Vertical Colliding
if(hsp > 0){ // right
	var t1 = tilemap_get_at_pixel(tilemap, bbox_right+hsp,bbox_top) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap,bbox_right+hsp,bbox_bottom - 1) & tile_index_mask;
	
	if(t1 != 0 || t2 != 0){ //Colliding
		
		while(!((tilemap_get_at_pixel(tilemap, bbox_right+sign(hsp),bbox_top) & tile_index_mask != 0) || (tilemap_get_at_pixel(tilemap,bbox_right+sign(hsp),bbox_bottom) & tile_index_mask != 0))){
			x += sign(hsp)
		}
		
		hsp = 0;
	}
	
}else{ // left
	var t1 = tilemap_get_at_pixel(tilemap, bbox_left+hsp,bbox_bottom - 1) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap,bbox_left+hsp,bbox_top) & tile_index_mask;
	
	if(t1 != 0 || t2 != 0){ //Colliding
		
		while(!((tilemap_get_at_pixel(tilemap, bbox_left+sign(hsp),bbox_bottom) & tile_index_mask != 0) || (tilemap_get_at_pixel(tilemap,bbox_left+sign(hsp),bbox_top) & tile_index_mask != 0))){
			x += sign(hsp)
		}
		
		hsp = 0;
	}
}

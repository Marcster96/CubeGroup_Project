var collidingObject;
collidingObject = instance_place(x+hsp,y,obj_playerSpecial);

if(collidingObject != noone && collidingObject.isCollidable == true){
	while(!place_meeting(x+sign(hsp),y,obj_playerSpecial)){
		x += sign(hsp)
	}
	hsp = 0;
}

collidingObject = noone;
collidingObject = instance_place(x,y+vsp,obj_playerSpecial);
if(collidingObject != noone && collidingObject.isCollidable == true){
	while(!place_meeting(x,y+sign(vsp),obj_playerSpecial)){
		y += sign(vsp)
	}
	vsp=0;
}
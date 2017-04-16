///scr_throwParticle(hsp,vsp)
//TODO
var hsp = argument0;
var vsp = argument1;

var particleColor;

switch(sprite_index){
    case spr_cube_01:{
        particleColor = spr_blue_particle;
        break;
    }
    case spr_cube_02:{
        particleColor = spr_pink_particle;
        break;
    }
}

var particle;
var particleDirection = 0;
if(image_xscale == 1){
    particle = instance_create(bbox_left,bbox_bottom,obj_player_particle);
    particleDirection = random_range(90,180);
}else{
    particle = instance_create(bbox_right,bbox_right,obj_player_particle);
    particleDirection = random_range(0,90);
}

with(particle){
     sprite_index = particleColor;
     particleDirectionFree = particleDirection;
}
    
show_debug_message("ParticleThrown")



//generell Move Variables
movespeed = 4;
jumpspeed = 10;
grav = 0.51;
vsp = 0;
hsp = 0;
moveable = true;

//SetDefaultState
state = states.normal;

//StateInfos
CurrentLadder = 0;
Ported = false;
Inverted = false;
ReadyToTransform = false;

//VirtualKeys
left = 0;
right = 0;
jump = 0;
special = 0;


//Tilemap info
var l = layer_get_id("collision_map");
tilemap = layer_tilemap_get_id(l);

//SpriteInfos
sprite_bbox_left = sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index);
sprite_bbox_right = sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index);
sprite_bbox_top = sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index);
sprite_bbox_bottom = sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);
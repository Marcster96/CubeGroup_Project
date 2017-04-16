/// @description INIT

//GenerellVars
cubeHasFinished = false;
alarm10IsActiv = false;
isCollidable = false;

//Included-Controllers
PortalController = 0;

//Tilemap info
var l = layer_get_id("collision_map");
tilemap = layer_tilemap_get_id(l);

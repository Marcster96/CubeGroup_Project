// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = 0; // obj_button_start
global.__objectDepths[1] = 0; // obj_button_exit
global.__objectDepths[2] = 0; // obj_button_parent
global.__objectDepths[3] = 0; // obj_button_music
global.__objectDepths[4] = -5; // obj_wall_area1
global.__objectDepths[5] = -3; // obj_solid
global.__objectDepths[6] = 0; // obj_button_back
global.__objectDepths[7] = 0; // obj_area_selection
global.__objectDepths[8] = 0; // obj_LevelSelector
global.__objectDepths[9] = -8; // obj_player
global.__objectDepths[10] = -10; // obj_CubeSelector
global.__objectDepths[11] = -10; // obj_pause
global.__objectDepths[12] = -12; // obj_cubeToSelect
global.__objectDepths[13] = -10; // obj_special
global.__objectDepths[14] = 0; // obj_player_particle
global.__objectDepths[15] = 0; // obj_GUIManager
global.__objectDepths[16] = -6; // obj_cubeSpawner
global.__objectDepths[17] = 0; // obj_CubeController
global.__objectDepths[18] = -10; // obj_rightArrow
global.__objectDepths[19] = -10; // obj_leftArrow
global.__objectDepths[20] = -10; // obj_jump


global.__objectNames[0] = "obj_button_start";
global.__objectNames[1] = "obj_button_exit";
global.__objectNames[2] = "obj_button_parent";
global.__objectNames[3] = "obj_button_music";
global.__objectNames[4] = "obj_wall_area1";
global.__objectNames[5] = "obj_solid";
global.__objectNames[6] = "obj_button_back";
global.__objectNames[7] = "obj_area_selection";
global.__objectNames[8] = "obj_LevelSelector";
global.__objectNames[9] = "obj_player";
global.__objectNames[10] = "obj_CubeSelector";
global.__objectNames[11] = "obj_pause";
global.__objectNames[12] = "obj_cubeToSelect";
global.__objectNames[13] = "obj_special";
global.__objectNames[14] = "obj_player_particle";
global.__objectNames[15] = "obj_GUIManager";
global.__objectNames[16] = "obj_cubeSpawner";
global.__objectNames[17] = "obj_CubeController";
global.__objectNames[18] = "obj_rightArrow";
global.__objectNames[19] = "obj_leftArrow";
global.__objectNames[20] = "obj_jump";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for
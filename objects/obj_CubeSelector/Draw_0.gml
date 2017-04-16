/// @DrawText

draw_self();

draw_set_font(fnt_ingame);
draw_set_color(c_black)
draw_text(bbox_left + (bbox_right - bbox_left) / 2,bbox_top+20,"Select your Cube!");


var selectorWidth = sprite_get_width(spr_CubeSelector);
var selectorHeight = sprite_get_height(spr_CubeSelector);
var selectorSlices = selectorWidth / CurrentCubes;

for(var i = 1; i <= CurrentCubes; i++){
	draw_text(bbox_left + selectorSlices * i - selectorSlices/2,bbox_top + selectorHeight / 2 + sprite_get_height(spr_cube_01_selectable) + 10,ds_list_find_value(ListOfCubes,i-1));
}
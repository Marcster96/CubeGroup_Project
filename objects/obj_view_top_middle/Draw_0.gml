/// @description Insert description here

x = __view_get( e__VW.XView, view_current ) + __view_get(e__VW.WView,view_current) / 2;
y = __view_get( e__VW.YView, view_current )  ;

draw_self();


draw_set_color(c_gray);
draw_set_lighting(true);
draw_set_font(fnt_ingame);


var starController = instance_find(obj_StarController,0);

if(starController != noone){
	var xStar = bbox_left + sprite_get_width(spr_star);
	var yStar = bbox_bottom - sprite_get_height(spr_star) / 2 - 5;
	var xStarText = xStar + sprite_get_width(spr_star) + 10;
	var yStarText = yStar;


	var xClock = bbox_right - sprite_get_width(spr_clock) - 70;
	var yClock = bbox_bottom - sprite_get_height(spr_clock) / 2 - 5;
	var xClockText = xClock + sprite_get_width(spr_clock);
	var yClockText = xClock;
	
	
	
	draw_sprite(spr_star,0,xStar,yStar);
	draw_sprite(spr_clock,0,xClock,yClock);
	
	var currentStars = ds_stack_size(starController.StarsCollected)
	
	draw_text(xStarText,yStarText,string(currentStars) + "/" + string(MaxStars));
}
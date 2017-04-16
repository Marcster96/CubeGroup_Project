///DrawToRightPlace


x = __view_get( e__VW.XView, view_current ) + __view_get( e__VW.WView, view_current ) - 64 - sprite_get_width(spr_jumpButton) * 0.75;
y = __view_get( e__VW.YView, view_current ) + __view_get( e__VW.HView, view_current ) - 64 - sprite_get_height(spr_jumpButton) *0.75;

draw_self();


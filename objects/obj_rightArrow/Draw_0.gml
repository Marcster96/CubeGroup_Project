///DrawToRightPlace


x = __view_get( e__VW.XView, view_current ) + sprite_get_width(spr_arrowLeft) +  32;
y = __view_get( e__VW.YView, view_current ) + __view_get( e__VW.HView, view_current ) - 64;

draw_self();


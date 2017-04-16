//DrawToRightPlace


x = __view_get( e__VW.XView, view_current ) + __view_get(e__VW.WView,view_current) - sprite_get_width(spr_backCube) - 16
y = __view_get( e__VW.YView, view_current ) +  16

draw_self();


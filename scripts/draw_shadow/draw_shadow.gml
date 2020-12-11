/// @description draw_shadow(xx, yy);
/// @param xx
/// @param yy

var xx = argument0;
var yy = argument1;

var width = 8;
var height = 8;

draw_set_alpha(.5);
draw_ellipse_colour(xx - width, yy - height, xx + width, yy + height, c_black, c_black, false);
draw_set_alpha(1);
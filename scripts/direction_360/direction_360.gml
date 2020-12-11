/// @description direction_360(dir) returns a direction between 0 and 359, accounting for negative directions and over 359 direction
/// @param dir

var dir = argument0;

return wrap_index(dir, 0, DEGREES_IN_CIRCLE);
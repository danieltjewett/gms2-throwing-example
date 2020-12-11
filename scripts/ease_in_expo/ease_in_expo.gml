/// @description ease_in_expo(time, start, stop, duration)
/// @param time
/// @param start
/// @param stop
/// @param duration

/*
you need to set up a timer for the "time" variable

time        = the point in time along the graph e.g. at the start 0
start       = value of the starting point e.g. at the start 100
stop		= value of the ending point e.g. at the end 200
duration    = amount of "time" it should take to reach the end value e.g. 30 
*/

var time = argument0;
var start = argument1;
var stop = argument2;
var duration = argument3;

time = floor(clamp(time, 0, duration));

var change = stop - start;

return change * power(2, 10 * (time / duration - 1)) + start;

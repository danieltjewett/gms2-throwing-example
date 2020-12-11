/// @description predict_distance(duration, start, stop, script) predicts a distance. returns said distance.
/// @param duration
/// @param start
/// @param stop
/// @param script

var duration = argument0;
var start = argument1;
var stop = argument2;
var script = argument3;

var dist = 0;

for (var i=0; i<duration; i++)
{
	dist += script_execute(script, i, start, stop, duration);
}

return dist;
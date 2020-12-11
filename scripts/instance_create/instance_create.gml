/// @description instance_create(xx, yy, obj, [dep=0]);
/// @param xx
/// @param yy
/// @param obj
/// @param [depth]

var xx = argument[0];
var yy = argument[1];
var obj = argument[2];

var dep = 0;
if (argument_count == 4)
{
	dep = argument[3];
}

return instance_create_depth(xx, yy, dep, obj);
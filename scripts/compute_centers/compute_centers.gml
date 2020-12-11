/// @description compute_centers([inst=self, useMask=false])
/// @param [inst=self
/// @param useMask=false]

var inst = self
var useMask = false;

if (argument_count == 1)
{
	inst = argument[0];
}
else if (argument_count == 2)
{
	inst = argument[0];
	useMask = argument[1];	
}

instance_get_corners(inst, useMask);

var left = _temp[0];
var top = _temp[1];
var right = _temp[2];
var bottom = _temp[3];

_temp[0] = left + (right - left) * .5;
_temp[1] = top + (bottom - top) * .5;
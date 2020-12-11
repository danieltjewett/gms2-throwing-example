/// @description instance_get_corners(inst, [useMask=false])
/// @param inst
/// @param [useMask=false]

var inst = argument[0];

var useMask = false;
if (argument_count == 2)
{
	useMask = argument[1];	
}

if (useMask)
{
	_temp[0] = inst.bbox_left;
	_temp[1] = inst.bbox_top;
	_temp[2] = inst.bbox_right;
	_temp[3] = inst.bbox_bottom;
}
else if (sprite_index != -1)
{
	_temp[0] = inst.x - inst.sprite_xoffset;
	_temp[1] = inst.y - inst.sprite_yoffset;
	_temp[2] = _temp[0] + inst.sprite_width;
	_temp[3] = _temp[1] + inst.sprite_height;
}
else
{
	_temp[0] = inst.x;
	_temp[1] = inst.y;
	_temp[2] = inst.x;
	_temp[3] = inst.y;
}
/// @description can_interact_with_object(object, conditionIn, checkInFront, [tempMask]) checks if a pickable item can be picked
/// @param object
/// @param conditionIn
/// @param checkInFront
/// @param [tempMask]
//returns an object that can be picked

var object = argument[0];
var conditionIn = argument[1];
var checkInFront = argument[2];

var tempMask = -1;

if (argument_count == 4)
{
	tempMask = argument[3];	
}

var inst = noone;

if (conditionIn)
{
	var oldMask = mask_index;
	
	if (tempMask != -1)
	{
		mask_index = tempMask;
	}
	
	compute_centers();
	
	var xx = _temp[0];
	var yy = _temp[1];
	
	if (checkInFront)
	{
		xx += lengthdir_x(8, animation_direction);
		yy += lengthdir_y(8, animation_direction);
	}
	
	var _tempList = ds_list_create();
	var size = instance_place_list(xx, yy, object, _tempList, true);
    
	mask_index = oldMask;

	if (size > 0)
	{
		inst = _tempList[| 0];
	}
	
	ds_list_destroy(_tempList);
}

return inst;
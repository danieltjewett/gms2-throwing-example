/// @description pickup_pickable(conditionIn, inst) picks up a pickable item
/// @param conditionIn
/// @param inst
//assumes holding variable

var conditionIn = argument0;
var inst = argument1;

var success = false;

if (conditionIn)
{
	holdingState = "picking";
	holding = instance_create(inst.x, inst.y, obj_Holdable);
	
	//update some pointers
	holding.reference = inst;
	holding.holder = self;
	
	//we use the character mask here because the x and y location of holding is exactly the character
	//since we don't want the rock to collide with the wall when thrown, we want to make sure it uses the same mask
	holding.mask_index = spr_link_mask;
	
	//copy old mask index
	holding.old_reference_mask_index = inst.mask_index;
	
	//make the reference not have collisions
	inst.mask_index = spr_mask_none;
	
	//make the reference invisible
	inst.visible = false;
			
	success = true;
}

return success;
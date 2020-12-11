event_inherited();
#region reset reference

with (reference)
{
	event_perform(ev_other, ev_break); //invoke the break event for the reference
	
	visible = true; //turn it back visible
	mask_index = other.old_reference_mask_index; //reset the mask_index back to what it was originally
}

#endregion
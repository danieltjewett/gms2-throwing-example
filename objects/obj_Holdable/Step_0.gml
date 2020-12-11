#region reusable vars

var hasThrown = holder == noone; //this means we've been thrown

#endregion
#region increment counts

if (hasThrown)
{
	thrownFramesCount += 1;
}

#endregion
#region prevent through wall

if (hasThrown)
{
	var wall = instance_place(x, y, obj_Wall);
	
	//ignore rocks for now
	if (wall != noone && wall.object_index != obj_Rock)
	{
		instance_destroy();
	}
}

#endregion
#region run motion

if (hasThrown)
{
	//give it some illusion of falling
	shadow_yoffset = ease_in_quad(thrownFramesCount, LIFT_HEIGHT, 0, throwTime);
	
	if (direction_between(direction, 10, 170))
	{
		renderY = ease_out_quad(thrownFramesCount, throwYStart, throwYEnd, throwTime);
	}
	else
	{
		renderY = ease_in_quad(thrownFramesCount, throwYStart, throwYEnd, throwTime);
	}
    
	if (thrownFramesCount >= throwTime)
	{
		instance_destroy();
	}
}

#endregion
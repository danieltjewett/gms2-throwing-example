#region set up position values

//if the object is being held
if (holder != noone)
{
	var finalX = holder.x;
	var finalY = holder.y - LIFT_HEIGHT;

	//if the holder is picking up the object
	//we want to move the object towards its hands
	if (holder.holdingState == "picking")
	{
		var time = floor(holder.image_index) + 1;
		var duration = holder.image_number;
	
		renderX = ease_linear(time, xstart, finalX, duration);
		renderY = ease_linear(time, ystart, finalY, duration);		
	}
	else
	{
		renderX = finalX;
		renderY = finalY;
	}
	
	//set the x and y to holder for now
	x = holder.x;
	y = holder.y;
}
else
{	
	renderX = x;
}

reference.x = x;
reference.y = y;

#endregion
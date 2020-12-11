///@description throw
#region throw

speed = 6;
direction = holder.animation_direction;

//the actual object (not the render, moves constantly)
var dist = predict_distance(throwTime, speed, speed, ease_linear);

//set final locations for actual and render
throwYEnd = y + lengthdir_y(dist, direction);

//set the starting location for the throw
throwYStart = renderY;
		
holder = noone; //the holder is deference since we are no longer holding

#endregion
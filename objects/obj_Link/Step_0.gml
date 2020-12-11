#region temp vars

var didSomething = false;

#endregion
#region check if can throw holding

if (holdingState == "holding" && !didSomething)
{
	if (keyboard_check_pressed(vk_space))
	{
		didSomething = true;
		
		image_index = sprite_get_number(spr_link_walk_right) - 1;
		image_speed = CHARACTER_FPS;
		throw_holdable(true);
	}
}

#endregion
#region check if can pick up pickable

var pickedInstance = can_interact_with_object(obj_Rock, !didSomething, true, spr_link_mask_big);
if (pickedInstance != noone)
{
	if (pickup_pickable(keyboard_check_pressed(vk_space), pickedInstance))
	{
		didSomething = true;
		
		image_index = 0;
		image_speed = CHARACTER_FPS;
	}
}

#endregion
#region speed setting

var hNoPress = 0;
var vNoPress = 0;

if (keyboard_check(vk_left))
{
	hspeed -= ACCELERATION;
	hspeed = max(hspeed, -MAX_SPEED);
	h_deceleration_time = 0;
	hspeed_start = hspeed;
}
else
{
	hNoPress ++;	
}

if (keyboard_check(vk_right))
{
	hspeed += ACCELERATION;
	hspeed = min(hspeed, MAX_SPEED);
	h_deceleration_time = 0;
	hspeed_start = hspeed;
}
else
{
	hNoPress ++;	
}

if (keyboard_check(vk_up))
{
	vspeed -= ACCELERATION;
	vspeed = max(vspeed, -MAX_SPEED);
	v_deceleration_time = 0;
	vspeed_start = vspeed;
}
else
{
	vNoPress ++;	
}

if (keyboard_check(vk_down))
{
	vspeed += ACCELERATION;
	vspeed = min(vspeed, MAX_SPEED);
	v_deceleration_time = 0;
	vspeed_start = vspeed;
}
else
{
	vNoPress ++;	
}

if (hNoPress == 2)
{
	h_deceleration_time ++;
	hspeed = ease_linear(h_deceleration_time, hspeed_start, 0, 5);
	
}
if (vNoPress == 2)
{
	v_deceleration_time ++;
	vspeed = ease_linear(v_deceleration_time, vspeed_start, 0, 5);
}

//force speed reset on picking or throwing
if (holdingState == "picking" || holdingState == "throwing")
{
	hspeed = 0;
	vspeed = 0;
	h_deceleration_time = 0;
	v_deceleration_time = 0;
	hspeed_start = 0;
	vspeed_start = 0;
}

#endregion
#region animation

depth = -y;

if (holdingState == "holding" || holdingState == false)
{
	if (speed == 0)
	{
		image_speed = 0;
	}
	else
	{
		animation_direction = compass_direction(direction);
		image_speed = CHARACTER_FPS;
	}
}

if (holdingState == "picking")
{
	sprite_index_based_on_compass_direction(animation_direction, spr_link_pickup_right, spr_link_pickup_up, spr_link_pickup_left, spr_link_pickup_down);
}
else if (holdingState == "holding")
{
	sprite_index_based_on_compass_direction(animation_direction, spr_link_lifting_right, spr_link_lifting_up, spr_link_lifting_left, spr_link_lifting_down);
}
else
{
	sprite_index_based_on_compass_direction(animation_direction, spr_link_walk_right, spr_link_walk_up, spr_link_walk_left, spr_link_walk_down);
}

#endregion
#region prevent through wall

prevent_through_object(obj_Wall);

#endregion
/// @description prevent_through_object(object) prevents an object from moving through an object. returns 2 if "stuck", 1 if hit and 0 if not hit
/// @param object

var object = argument0;

var hspd_start = hspeed;
var vspd_start = vspeed;

var hspd = hspeed;
var vspd = vspeed;

var hit = 0;

var inst = instance_place(x + hspd, y + vspd, object);

if (inst != noone)
{
	if (place_meeting(x + hspd, y, inst))
	{
	    hit = 1;
	    hspd = 0;
	}
    
	if (place_meeting(x, y + vspd, inst))
	{
	    hit = 1;
	    vspd = 0;
	}
    
	//if collision not detected (cuz diag)
	if (hit == 0)
	{
	    hit = 1;
	    hspd = 0;
	    vspd = 0;
	}
    
	speed = magnitude(hspd, vspd);
	if (speed > 0)
	{
	    direction = point_direction(0, 0, hspd, vspd);
	}
    
	//if for some reason we are still colling, move back to previous speed spot
	if (place_meeting(x + hspd, y + vspd, inst))
	{
	    hit = 2;
	    x = x - hspd_start;
	    y = y - vspd_start;
	}
}

_temp[0] = inst;

return hit;
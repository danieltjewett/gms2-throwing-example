animation_direction = 0;

hspeed_start = 0;
vspeed_start = 0;

h_deceleration_time = 0;
v_deceleration_time = 0;

//actual vars we care about for the throwing example
holdingState = false; //can be false, "picking", "holding", "throwing"
holding = noone; //what object we are holding
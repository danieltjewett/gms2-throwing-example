#region make own event consts

ev_throw = ev_user0;

#endregion
#region override gm variables

image_speed = 0;
image_index = 0;
depth = -y;

#endregion
#region initialize variables

//how many frames have passed since we've thrown
thrownFramesCount = 0;

//how long throwing should happen
throwTime = 20;

reference = noone; //used to represent what we picked up
holder = noone; //used to represent who picked up

old_reference_mask_index = -1; //old mask_index of reference

//the location to draw at
renderX = x;
renderY = y;

//the ending location of the throw
throwYEnd = 0;

//is the starting position when thrown of the rendered position
throwYStart = 0;

//the shadow location
shadow_yoffset = 0;

#endregion
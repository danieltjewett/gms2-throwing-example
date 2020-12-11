/// @description compass_direction(dir) returns closest 0, 90, 180 or 270 based on full 360 direction
/// @param dir

var dir = direction_360(argument0);

if (dir > 45 && dir <= 135)
{
    return 90;
}
else if (dir > 135 && dir <= 225)
{
    return 180;
}
else if (dir > 225 && dir <= 315)
{
    return 270;
}
else
{
    return 0;
}

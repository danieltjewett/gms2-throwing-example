/// @description sprite_index_based_on_compass_direction(dir, sprite_right, sprite_up, sprite_left, sprite_down)
/// @param dir
/// @param  sprite_right
/// @param  sprite_up
/// @param  sprite_left
/// @param  sprite_down

var dir = argument0;

var sprite_right = argument1;
var sprite_up = argument2;
var sprite_left = argument3;
var sprite_down = argument4;

switch (dir)
{
    case 0:
        sprite_index = sprite_right;
        break;
    case 90:
        sprite_index = sprite_up;
        break;
    case 180:
        sprite_index = sprite_left;
        break;
    case 270:
        sprite_index = sprite_down;
        break;
	default:
		show_error(string(dir) + " not supported direction.", true);
		break;
}

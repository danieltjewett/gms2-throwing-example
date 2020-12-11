/// @description wrap_index(index, inc, size)
/// @param index
/// @param inc
/// @param size

var index = argument0;
var inc = argument1;
var size = argument2;

return (((index + inc) % size) + size) % size;
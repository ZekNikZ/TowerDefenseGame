/// @function map(val, old_bot, old_top, new_bot, new_top, withinBounds);
/// @description maps a value from one range to another
/// @param  val          input value
/// @param  old_bot      old range bottom
/// @param  old_top      old range top
/// @param  new_bot      new range bottom
/// @param  new_top      new range top
/// @param  withinBounds (optional) wheter to clamp the value to the new range (default: false)
/// @return the remapped number

var res = argument3 + ((argument4 - argument3) / (argument2 - argument1)) * (argument0 - argument1);

if (argument_count >= 6 && argument[5]) {
	return clamp(res, argument3, argument4);
} else {
	return res;
}
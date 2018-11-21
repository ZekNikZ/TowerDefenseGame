/// @function lerp3(val1, val2, val3, amount);
/// @description lerp between three values
/// @param val1 the first value of the lerp
/// @param val2 the middle value of the lerp
/// @param val3 the second value of the lerp
/// @param amount the amount of the lerp
/// @return the lerped amount

if (argument3 < 0.5) {
	lerp(argument0, argument1, argument3 * 2);
} else {
	lerp(argument1, argument2, argument3 * 2 - 1);
}
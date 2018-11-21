/// @function lerp3(val1, val2, val3, amount);
/// @description lerp between three colors
/// @param val1 the first color of the lerp
/// @param val2 the middle color of the lerp
/// @param val3 the second color of the lerp
/// @param amount the amount of the lerp
/// @return the merged color

if (argument3 < 0.5) {
	merge_color(argument0, argument1, argument3 * 2);
} else {
	merge_color(argument1, argument2, argument3 * 2 - 1);
}
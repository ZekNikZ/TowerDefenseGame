///@desc implement a quicksort you can pass a predicate to
/// port from http://www.algolist.net/Algorithms/Sorting/Quicksort
///@param list
///@param comparison
var _list    = argument0;
var _compare = argument1;

var size = ds_list_size(_list);
var sortStack = array_create(size); //floor(j/4)); // guesstimate
var stackHeight = 0;
sortStack[0] = 0;
sortStack[1] = size - 1;
stackHeight = 2;

while (stackHeight > 0) {
  var i = sortStack[stackHeight - 2];
  var j = sortStack[stackHeight - 1];
  var left = i, right = j;
  var pivot = _list[| floor((left + right) / 2)];
  stackHeight -= 2;
  
  // i do believe we can swap a BST in here
  while (i <= j) {
    while (script_execute(_compare, _list[| i], pivot) < 0) // if (_list[|i] < pivot)
      i++;
    while (script_execute(_compare, _list[| j], pivot) > 0) // if (_list[|j] > pivot)
      j--;
    if (i <= j) {
      var tmp = _list[|i];
      _list[|i] = _list[|j];
      _list[|j] = tmp;
      i++;
      j--;
    }
  }

  /* "recursion" */
  if (i < right) {
    sortStack[stackHeight] = i;
    sortStack[stackHeight + 1] = right;
    stackHeight+=2;
  }

  if (left < j) {
    sortStack[stackHeight] = left;
    sortStack[stackHeight + 1] = j;
    stackHeight+=2;
  }   
}
/*
for (var i = 0; i < size; i++) {
	ds_list_mark_as_map(_list, i);
}
*/
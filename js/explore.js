/*
name function have it take a string as an argument
declare variable to store character from index value
start for loop
	for each charatcerin string shift index value in relation to string length
store shifted values in new variable to be printed as reverse  string
*/
function reverse(str) {
  var index = [];
  if (str.length > 0){
  for (var x = str.length - 1, y = 0; x >= 0; x--, y++)
    index[x] = str[y];
  return index.join('');
	}
}
/*Miles McArdle-Coe
Declare variables
 VAR str = "Hello"
 var index_values
 use for loop to iterate through the characters of variables
check index values and store index values in a new variable 

declare function 
 for var set equal to  length of string - 1, tset x =  0;y >=0 ; x --,y +)
 	set var of index values to rn i and j
 	return index values

 call console.log and funtion on Hello
*/
function reverse(str) {
  var index = [];
  if (str.length > 0){
  for (var x = str.length - 1, y = 0; x >= 0; x--, y++)
    index[x] = str[y];
  return index.join('');
	}
}

console.log(reverse("hello"));
if (1==1) {
	console.log(reverse("goodbye"));
}

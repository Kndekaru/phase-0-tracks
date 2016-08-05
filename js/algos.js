
/* Pseudocode release 0
delcare function longest_word and have it take an array 
create empty array to store longest
	iterate through the array using for var i = 0 
		if input array length >word.length
			set equal to on another
		else 
			longest item = longest word
		print return value
*/
function longest_word(array) {
    var longest_word_temp = "";
  for (var i = 0; i < array.length; i++) {
    if (array[i].length > longest_word_temp.length) {
      longest_word_temp= array[i];
    } else {
      longest_item_temp = longest_word_temp;
    }
  }
  return longest_word_temp;
}
/* release 2
function key_value_match(key1, key2) {
  return Object.keys(key1).reduce(function(map, k) {
    if (key1[k] == key2[k]) map[k] = key2[k];
    return map;
    else
    return false;
  }, {});
}
#had issues with the return function not giving the appropriate value might be an issue with using map
#function above returns matching pairs but not true when asked for return values
*/  
function key_value_match(key1, key2){
	for (var i in key1) {
		if (key1[i] == key2[i]) {return true}
	}
	return false;
	
}

//function returns true and false when pair values are matched but not ey value pairs
 
/* Release 2
pseudo code 2 functions one for the word generator ad the second to push a string to a new array
create function that takes an integer
	Create a variable of upper and lowercase alphabet
	Create a storage variale
	Assign a return variable to iterate through array and select a letter randomly
	Print return variable
second function takes integer
	set empty array variable
	for loop each string in array push to new empty array callign result from first function
	return previously empty variable
*/ 

function word_gen (integer){
	var symbol_pool = "0123456789abcdefghijklmnopqrstuvwxyzACDEFGHIJKLMNOPQRSTUVWXYZ";
	var word_storage = "";
	for (var i = 0; i < integer; i++) {
		word_storage += symbol_pool[Math.floor(Math.random()*symbol_pool.length)];
	}
	return word_storage;
}

function string_array (integer){
	var array_result = [];
	for (var i =0; i < integer; i++) {
		array_result.push(word_gen(Math.ceil(Math.random()*10)));
	}
	return array_result;
}

//driver code
test1 = {name: "Tamir", age: 54}
test2 = {name: "Steven", age: 54}
key_value_match(test1,test2)
var colors = ["blue", "red", "green", "yellow"];
console.log(longest_word(colors));
word_gen(3)
string_array(10)
//release2 driver
for (var i = 0; i < 10; i++){
	console.log(longest_word(string_array(10)));
}

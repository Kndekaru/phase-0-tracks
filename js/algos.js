
*/ Pseudocode release 0
delcare function longest_word and have it take an array 
create empty array to store longest
	iterate through the array using for var i = 0 
		if input array length >word.length
			set equal to on another
		else 
			longest item = longest word
		print return value
/*
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
//release 2
function key_value_match(key1, key2) {
  return Object.keys(key1).reduce(function(map, k) {
    if (key1[k] == key2[k]) map[k] = key2[k];
    return map;
  }, {});
}

conole.log(key_value_match({name: "Steven", age: 54}, {name: "Tamir", age: 54}));

var colors = ["blue", "red", "green", "yellow"];
console.log(longest_word(colors));


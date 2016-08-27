 /* Pseudocode release 0
 delcare function longest_word and have it take an array 
 create empty array to store longest
 	iterate through the array using for var i = 0 
 		IF input array length id graeter than the length of the given word 
 			set equal to on another
 		ELSE 
 			longest item = longest word
		print a vaue to return
 */
 function long_word(array) {
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
/*create function key match 
  iterate through the string
  if index value of string character is equal to another rturn the value that evaluate as true.
  if index values dont match return that there are no matches/ false
*/
   function key_value_match(key1, key2){
  for (var i in key1) {
    if (key1[i] == key2[i]) {return true}
  }
  return false; 
 }

  //driver code
 test1 = {name: "Tamir", age: 54}
 test2 = {name: "Steven", age: 54}
 key_value_match(test1,test2)
 var colors = ["blue", "red", "green", "yellow"];
 console.log(long_word(colors));
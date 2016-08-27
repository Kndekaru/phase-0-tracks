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
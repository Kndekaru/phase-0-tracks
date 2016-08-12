#initilialize and prnt empty array
new_array = []
p new_array
#add 5 items to array and print
new_array << "hello"
new_array <<  4543646
new_array << ["Test","Food",9,nil]
new_array << true 
new_array << "goodbye"
p new_array
#delete index 2 from array
new_array.delete_at(2)
p new_array
#insert new item into array
new_array.insert(2,"new index 2")
p new_array

#Remove the first item of the array without having to refer to its index. Print the array.
new_array.delete("hello")
p new_array
#Ask the array whether it includes a certain item. Print the result of this method call (labeled so it prints as more than just an isolated boolean value without any context.)
if new_array.include? "goodbye"
	p "goodbye is in the array"
end
#Initialize another array that already has a few items in it.
pets = ['Cat', 'Dog', 'Bird']
#Add the two arrays together and store them in a new variable. Print the new array.
combined_array = pets + new_array
p combined_array
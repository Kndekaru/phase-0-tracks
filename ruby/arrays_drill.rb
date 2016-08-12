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
#new_array.delete(["Test","Food",9,nil])
new_array.delete_at(2)
p new_array
#insert new item into array
new_array.insert(2,"new index 2")
p new_array

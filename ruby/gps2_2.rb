#Miles McArdle-coe gps 2.2 with Kimberly sauzo
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # define the name of our method
  # seperate the string into an array
  # set default quantity to 1
  # print the list to the console 
# output: our output will be a hash of the list

# Method to add an item to a list
# input: item name and variable that stores shopping list which was previously created. 
# steps: add to hash list 
# output:updated hash

# Method to remove an item from the list
# input: name of key value user wishes to remove, and variable that stores shopping list which was previously created.  
# steps:remove #{key vale} from hash we will use hash.delete method
# output:updated hash 

# Method to update the quantity of an item
# input: item name, quantitiy to update, and variable that stores shopping list which was previously created. 
# steps:use item as a key and quantity as a value to be updated
# output:updated hash that will have both key and value updated

# Method to print a list and make it look pretty
# input: The hash previously created
# steps: use .each to print each key and corresponding value
# output: a printed list
#Prints out new or modified shopping list
def list_print(shopping_list)
  puts "----------Shopping List----------"
  shopping_list.each do |x,y|
    puts "#{x}, #{y}" 
  end
end
#Creates a shopping list with default quantity of 1 for each item. 
def create_list(string)
  item_array = string.split(" ")
  shopping_list = {}
  item_array.each do |item|
    shopping_list[item] = 1
  end
  puts shopping_list
  shopping_list
end
#user_list is later defined/used to store a new list of information.
#Uses create_list method to format information properly before allowing edits and updates to be done. 
def add_item(list_item,user_list)
  user_list[list_item] = 1
  user_list
end
#Removes item from list
def remove_item(list_item,user_list)
  user_list.delete(list_item)
  user_list
end
#Updates quantity of list item
 def update_quantity(list_item,quantity,user_list)
   user_list[list_item] =  quantity
   user_list
 end

# driver code
list = "lemonade tomatoes onions ice-cream"
create_list(list)

user_list = create_list(list)
#puts user_list

add_item('apple', user_list)
p user_list 
remove_item('apple', user_list)
p user_list 
update_quantity('lemonade', 2, user_list)
p user_list
list_print(user_list)

#release 3
update_quantity('tomatoes', 3, user_list)s
update_quantity('ice-cream', 4, user_list)
remove_item('lemonade', user_list)
list_print(user_list)
update_quantity('ice-cream', 1, user_list)
list_print(user_list)

=begin#Release 5
What did you learn about pseudocode from working on this challenge?
Pseusocode can be very helpful for conceptually developing code your code as well as speeding up the time it takes to write the actual code.
What are the tradeoffs of using arrays and hashes for this challenge?
An array wouldnt be able to take in the multiple values assccited with string in the code.This is why a hash would be idea for this task
What does a method return?
A method returns the last declared variable in the method.It will not return the value outside the method unless explicitly called
What kind of things can you pass into methods as arguments?
Methods can take other methods or variables as arguements
How can you pass information between methods?
You could use global variables but a better option would be calling the return in the last step of a method  that allows them to exits ouide the scope of a variable.
What concepts were solidified in this challenge, and what concepts are still confusing?
I feel like the mentalilty behind pseudocode become more clear as well as scope of methods and passing information between them became more clear.
=end
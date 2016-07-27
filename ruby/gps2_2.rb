#Miles McArdle-coe gps 2.2 with Kimberly sauzo
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # define the name of our method
  # use .split to seperate the string used for input
  # set default quantity we will use 1
  # print the list to the console [use list print method]
# output: our output will be a hash of the list

# Method to add an item to a list
# input: have user input/ get item name and optional quantity 
# steps: add to hash list 
# output:updated hash

# Method to remove an item from the list
# input: will be name of key value user wishes to remove 
# steps:remove #{key vale} from hash we will use hash.delete method
# output:updated hash 

# Method to update the quantity of an item
# input: item name and seperatly ask for quantitiy to update
# steps:use item as a key and quantity as a value to be updated
# output:updated hash that will have both key and value updated

# Method to print a list and make it look pretty
# input: The hash previously created
# steps: use .each to print each key and corresponding value
# output: a printed list

def list_print(shopping_list)
  puts "----------Shopping List----------"
  shopping_list.each do |x,y|
    puts "#{x}, #{y}" 
  end
end
def create_list(string)
  item_aray =string.split(" ")
  shopping_list = {}
  item_array.each do |item|
    shopping_list[item] = 1
  end
  #look to be refactored
  shopping_list
end

def add_item(list_item)
  shopping_list[list_item] = 1
  
  shopping_list
end

def remove_item(list_item)
  shopping_list.delete(list_item)
  shopping_list
end
 def update_quantity(list_item,quantity)
   shopping_list[list_item] =  quantity
   shoping_list
 end

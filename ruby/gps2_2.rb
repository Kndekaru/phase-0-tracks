# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # define the methods name
  # create an empty hash
  # set default quantity 1
  # print the list to the console [can you use one of your other methods here?]
# output: A hash of the initial grocery list

# Method to add an item to a list
# input: item name and optional quantity
# steps:add to grocery list 
# output:updated version of the hash

# Method to remove an item from the list
# input:take a string equivalent to a KEY in the hash
# steps:remove #{key value} from hash possbily use .DELETE method 
# output: adjusted hash his all values but the one removed 

# Method to update the quantity of an item
# input: item name quantitiy to update 
# steps: use item  as a key tp and quantity to change as value to change in the hash
# output: updated hash of list 

# Method to print a list and make it look pretty
# input:the grocery list hash
# steps: use iteration to print item and quantity for each key value pair
# output: finalized list hash


#for second method write new quantity

def create_list(string)
  grocery_list = {}
  item_list = string.split(" ")
  item_list.each do |item| 
    grocery_list [item] = 1
  end 
   p grocery_list
end

def add_item(item,quantity,shopping_list)
  shopping_list[item] = quantity
  p shopping_list
end

def remove_item(item,shopping_list)
  shopping_list.delete(item)
  p shopping_list
end
def update_quantity(item,quantity,shopping_list)
  shopping_list[item] =  quantity
  p shopping_list
end 
def list_print(shopping_list)
  "--------Shopping List--------"
  shopping_list.each do |x,y|
    puts " #{x} , #{y} "
  end
end

shopping_list = create_list("lemonade tomatoes Onions Ice-cream")
remove_item("lemonade",shopping_list)
update_quantity("Ice-cream",1,shopping_list)
list_print(shopping_list)
=begin
driver code
create_list("lemon cake")

shopping_list = create_list("cake soup")
add_item("peas",3,shopping_list)
remove_item('soup',shopping_list)
update_quantity("cake",4,shopping_list)
list_print(shopping_list)
=end 


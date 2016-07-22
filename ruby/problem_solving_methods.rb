# Miles Mcardle-Coe & Wellington Vicioso

#def search_array(num1)
#  arr = [1, 2, 3, 4, 5]
#   for i in arr
#    if  User_number == arr[i] 
#      return "This number is in the array."
#    elsif User_number != arr[i]
#      return nil
#     end
#  end
#end

#p "Give me a number to search to for."
#ser_number = gets.chomp.to_i

#p search_array(User_number)


def Fib(n)
  array = [0, 1]
  n = User_number - 2
  a = 0
  b = 1
n.times do
  temp = a
  a = b
  b = temp + b
  array << b
  end

return array 
end

#to check our value we would set our final value equal to this number and have it return a statement saying that they are equal if in fact they are equal


#array = []
#def Fibseq(n)
#  n>=n.to_i
#  d=0
#  e=1
 # while d<n-1
  #  yield d
   # d,e = e,d+e
    
 # end
#end

p "what number would you like to sequence"
User_number = gets.chomp.to_i
p Fib(User_number)

#"#{Fibseq(User_number) {|i| puts array << i }}"


  
#puts Userfib(Fib(User_number))
  
#Get number from user
#create an empty array
#first value of array to 0 and second value 1
#create 2 variables for addition of numbers in array sart with 0 add 1
#assign 0 to first and assign 1 to second
#start until loop
#have until loop go until user number is reached
#have loop break at usernumber - 1 
#check index number
  
#add first and second to equal new integer
#save new integer to first

#calculate new integer for array
#add new integers to array
#have the sorter recieve the array.
#check the first two values
#indicate a position to be checked 
#If position 1 is greter than 2 swap
#if position 1 is less than 2 then advance
#have third variable become next position
#repeat steps 4 and 5#
#repeat until all items have been checked
#repeat process until no positionsare swapped.

  
def bubble_sort(array)
  n = array.length
  loop do
    swapped = false

    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end
    break if not swapped
  end

  array
end
test = [1,5,6,76,7,4,3,2,2,4]
p bubble_sort(test)
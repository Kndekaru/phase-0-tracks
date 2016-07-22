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

def Fibonacci(n)
  a = 0
  b = 1
  
n.times do
  temp = a
  a = b
  b = temp + b
end
return a 
end
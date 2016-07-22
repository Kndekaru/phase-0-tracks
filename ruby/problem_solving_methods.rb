def search_array(num1)
  arr = [1, 2, 3, 4, 5]
   for i in arr
    if  User_number == arr[i] 
      return "This number is in the array."
    elsif User_number != arr[i]
      return nil
     end
  end
end

p "Give me a number to search to for."
User_number = gets.chomp.to_i

p search_array(User_number)

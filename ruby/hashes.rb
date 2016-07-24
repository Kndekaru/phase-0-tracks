#pseudo code rough steps
#ask user for all information
#make empty hash
#get all relevent info
#convert information into hash
#return info about client
#ask client to update old hash info 
#return edited info
#check if info need update for final submititon to sata structure

#initlialize hash
Client_info = {}
#prompt user for info
puts "enter your name please"
Client_info[:name] = gets.chomp
puts "enter your age"
Client_info[:age] = gets.chomp.to_i
puts "enter your number of children"
Client_info[:kids] = gets.chomp.to_i
puts "enter your decor theme"
Client_info[:decor] = gets.chomp
puts "enter your prefered retailer"
Client_info[:retail] = gets.chomp
#return info to user
p Client_info
#ask to confirm informatipn
puts "Is the information correct? If information is correct type Correct if information is incorrect type Incorrect"
confirmation = gets.chomp
	#check input
	if confirmation == "Correct"
		puts "congratulations your information has been added succesfully"
	else 
		puts "Please type incorrect key value"
		change_key = gets.chomp
		puts "Please ente correct information"
		new_info = gets.chomp
		Client_info[change_key.to_sym] = new_info
	end
p Client_info 

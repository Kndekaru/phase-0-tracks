#pseudo code rough steps
#ask user for all information
#make empty hash
#get all relevent info
#convert information into hash
#return info about client
#ask client to update old hash info 
#return edited info
#check if info need update for final submititon to sata structure
Client_info = {}

Puts "enter your name please"
Client_info[name] = gets.chomp
puts "enter your age"
Client_info[age] = gets.chomp.to_i
puts "enter your number of children"
Client_info[kids] = gets.chomp.to_i
puts "enter your decor theme"
Client_info[decor] = gets.chomp
puts "enter your prefered retailer"
Client_info[retail] = gets.chomp
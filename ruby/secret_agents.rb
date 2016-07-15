# Miles McArdle-Coe and Wellington Vicioso

#1.Have method take a string for encryption
#2.establish counter to end at -1 
#3.loop through our string variable one at a time 
#4.if its not a space set equal to next character
#5.end the loop when counter -1
#6.return our modified string

def encryption(str)
  i = 0
  
  
  while i < str.length
    if str[i] == "z"
      str[i] = "a"
    elsif str[i] != " "
      str[i] = str[i].next 
    end
    i += 1
  end
  str
end 


#1.decryption for string
#2. run loop through strings 
#3. check for space in word
#4. determine index 
#5 assign string index value equal to alpha - 1
#6 end loop when length is -1 
#7. purt string 

def decryption(str)
  i = 0
  alphabet = "abcdefghijklmnopqrstuvwxyz"
    while i < str.length
      if str[i] != " "
        prev = alphabet.index(str[i])
        str[i] = alphabet[prev - 1]
      end
      i+=1
    end
  str
end

p decryption(encryption("swordfish"))

puts "Would you like to encrypt or decrypt?"
  passphrase = gets.chomp
if passphrase != "encrypt" && passphrase != "decrypt"
  p "Invalid option"
end
#loop to re-ask
if passphrase == "encrypt"
  p "enter password: "
  password = gets.chomp
  p encryption(password)
elsif passphrase == "decrypt"
  p "enter password: "
  password = gets.chomp
  p decryption(password)
end


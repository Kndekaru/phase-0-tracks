require 'sqlite3'

#create sqlite database
db = SQLite3::Database.new("finance_manager.db")

create_finances = <<-Finances
	CREATE TABLE IF NOT EXISTS Finances(
	id Integer PRIMARY KEY,
	Debit_id INTEGER,
	Credit_id INTEGER,
	Balance_id INTEGER,
	FOREIGN KEY (Debit_id) REFERENCES Debits(id),
	FOREIGN KEY (Credit_id) REFERENCES Credits(id),
	FOREIGN KEY (Balance_id) REFERENCES Balance(id)
	)
Finances


create_Debits = <<-Debits
CREATE TABLE IF NOT EXISTS Debits(
id Integer PRIMARY KEY,
price FLOAT,
business VARCHAR(255), 
time_of_purchase datetime,
debit_memo VARCHAR(255)
)
Debits

create_Credits = <<-Credits
CREATE TABLE IF NOT EXISTS Credits(
id Integer PRIMARY KEY,
credit_amount FLOAT,
business_company VARCHAR(255), 
time_of_purchase datetime,
credit_memo VARCHAR(255)
)
Credits

create_Balance = <<-Balance
CREATE TABlE IF NOT EXISTS Balance(
id INTEGER PRIMARY KEY,
current_balance float
)
Balance
db.execute(create_finances)
db.execute(create_Debits)
db.execute(create_Credits)
db.execute(create_Balance)



puts  "welcome to your personal finances manager!"\
"Here you can record credits and debits to your account as well as check its balance as well."\

puts "If this is your first time using this application enetr your bank account balance if this isnt your first time using this aplication type continue"
user_balance =  gets.chomp
 	if user_balance != "continue"
		db.execute("INSERT INTO Balance (current_balance) VALUES (?)",[user_balance])
	end 

puts "Enter any key to add another debit,credit or balance check. Type done when finsihed."
application_status = gets.chomp
while application_status != "done"
	
puts "Type (credit) or (debit) to record a transaction or (balance) to check your balance"
finance_query = gets.chomp.to_s
	if finance_query == "debit"
		puts "How many transactions do you have to enter?"
		debit_queries = gets.chomp.to_i
			debit_queries.times do 
				puts "Enter the transaction amount"
				debit_price = gets.chomp.to_f
				puts "Enter business or comapny amount was payed to"
				debit_business = gets.chomp
				puts "Enter time of purchase"
				debit_time = gets.chomp
				puts "add a comment regarding transaction"
				debit_memo = gets.chomp
				db.execute("INSERT INTO Debits (price,business,time_of_purchase,debit_memo) VALUES (?,?,?,?)",[debit_price,debit_business,debit_time,debit_memo])
				db.execute("UPDATE Balance set current_balance = current_balance - (?) where id = last_insert_rowid()",[debit_price])
			end 

	elsif finance_query == "credit"
		puts "Enter amount credited to account"
		credit_price = gets.chomp.to_f
		puts "Enter comapny crediting account"
		credit_company = gets.chomp
		puts "Enter time amount was credited"
		puts credit_time = gets.chomp
		puts "Enter credit memo"
		credit_memo = gets.chomp
		db.execute("INSERT INTO Credits (credit_amount,business_company, time_of_purchase,credit_memo) VALUES (?,?,?,?)",[credit_price,credit_company,credit_time,credit_memo])
		db.execute("UPDATE Balance set current_balance = current_balance + (?) where id = last_insert_rowid()",[credit_price])
	elsif finance_query == "balance"
		p db.execute("SELECT * FROM Balance ORDER BY ID DESC LIMIT 1")
	end 
	puts "Enter any key to add another debit,credit or balance check. Type done when finsihed."
	application_status = gets.chomp
end 

print "thanks for using this to track you finances."
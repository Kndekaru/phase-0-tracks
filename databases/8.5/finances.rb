require 'sqlite3'

#create sqlite database
db = SQLite3::Database.new("finance_manager.db")
#create tables if they have not been created makes Finances,Debits,Credits,and Balance.
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
	time_of_purchase VARCHAR(255),
	debit_memo VARCHAR(255)
)
Debits

create_Credits = <<-Credits
	CREATE TABLE IF NOT EXISTS Credits(
	id Integer PRIMARY KEY,
	credit_amount FLOAT,
	business_company VARCHAR(255), 
	time_of_purchase VARCHAR(255),
	credit_memo VARCHAR(255)
)
Credits

create_Balance = <<-Balance
	CREATE TABlE IF NOT EXISTS Balance(
	id INTEGER PRIMARY KEY,
	current_balance float
)
Balance
#executes create table commands creates. 
db.execute(create_finances)
db.execute(create_Debits)
db.execute(create_Credits)
db.execute(create_Balance)


#take user input determine if user has used applications before. 
puts  "welcome to your personal finances manager!"\
"Here you can record credits and debits to your account as well as check its balance as well."\

puts "If this is your first time using this application enetr your bank account balance if this isnt your first time using this aplication type continue"
user_balance =  gets.chomp
 	if user_balance != "continue"
		db.execute("INSERT INTO Balance (current_balance) VALUES (?)",[user_balance])
	end 
#user enters type of interaction and loop begins
puts "Enter any key to add another debit,credit or balance check. Type done when finsihed."
application_status = gets.chomp
while application_status != "done"
#belows user input lets us access different ables in our database	
puts "Type (credit) or (debit) to record a transaction or (balance) to check your balance"
finance_query = gets.chomp.to_s
#Below debit and credit function take user input to determine how many entries we have  and information for table fields 
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
				#insert debit amount into Debit table to record a debit tansaction history then subtracts user inout from balance to update our database
				db.execute("INSERT INTO Debits (price,business,time_of_purchase,debit_memo) VALUES (?,?,?,?)",[debit_price,debit_business,debit_time,debit_memo])
				db.execute("UPDATE Balance set current_balance = current_balance - (?) where id = last_insert_rowid()",[debit_price])
			end 

	elsif finance_query == "credit"
		puts "How many transactions do you have to enter?"
		credit_queries = gets.chomp.to_i
			credit_queries.times do 
				puts "Enter amount credited to account"
				credit_price = gets.chomp.to_f
				puts "Enter comapny crediting account"
				credit_company = gets.chomp
				puts "Enter time amount was credited"
				puts credit_time = gets.chomp
				puts "Enter credit memo"
				credit_memo = gets.chomp
				#insert credit_price into credit table to record a credit tansaction history then subtracts user inout from balance to update our database
				db.execute("INSERT INTO Credits (credit_amount,business_company, time_of_purchase,credit_memo) VALUES (?,?,?,?)",[credit_price,credit_company,credit_time,credit_memo])
				db.execute("UPDATE Balance set current_balance = current_balance + (?) where id = last_insert_rowid()",[credit_price])
			end
		#if user enters balance we get the most recent balance from the database.
	elsif finance_query == "balance"
		p db.execute("SELECT current_balance FROM Balance ORDER BY ID DESC LIMIT 1")
	end 
	#give user chance to repeat or break loop
	puts "Enter any key to add another debit,credit or balance check. Type done when finsihed."
	application_status = gets.chomp
end 

#ask user if they would like a history of transactions 
puts "Before you leave would yu like to see you ytansaction history? (y/n)"
user_record = gets.chomp
	if user_record = "y"
		print "Debit transaction history"
		#p db.execute("SELECT * FROM  Debits, Credits where Debits.id = Credits.id")
		p db.execute("SELECT * FROM Debits")
		print "Credit transaction history"
		p db.execute("SELECT * From Credits")
	end 

print "thanks for using this to track you finances."
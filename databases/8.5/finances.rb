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
price BLOB,
business VARCHAR(255), 
time_of_purchase datetime,
debit_memo VARCHAR(255)
)
Debits

create_Credits = <<-Credits
CREATE TABLE IF NOT EXISTS Credits(
id Integer PRIMARY KEY,
credit_amount BLOB,
business_company VARCHAR(255), 
time_of_purchase datetime,
credit_memo VARCHAR(255)
)
Credits

create_Balance = <<-Balance
CREATE TABlE IF NOT EXISTS Balance(
id INTEGER PRIMARY KEY,
current_balance blob
)
Balance
db.execute(create_finances)
db.execute(create_Debits)
db.execute(create_Credits)
db.execute(create_Balance)



puts  "welcome to your personal finances manager!"\
"Here you can record credits and debits to your account as well as check its balance as well."\

puts "Type (credit) or (debit) to record a transaction or (balance) to check your balance"

finance_query = gets.chomp

def transaction_identifier(finance_query)
	if finance_query == "credit"
		record_debit
	elsif finance_query == "debit"
		record_credit
	elsif finance_query == "balance"
		check_balance
	else 
		puts "Inalid option! Please type credit ,debit or  balance"
	end 
end 


def record_debit
	p "1"
end 

def record_credit
	 p "2"
end 

def check_balance
	puts "3"
end 

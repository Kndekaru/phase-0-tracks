require 'sqlite3'

#create sqlite database
db = sqlite3::Database.new("finance_manager")


create_finances = <<-SQL
	CREATE TABLE IF NOT EXISTS finances(
	id Integer PRIMARY KEY,
	Debit_id INTEGER,
	Credit_id INTEGER,
	Balance_id INTEGER,
	FOREIGN KEY (Debit_id) REFERENCES Debits(id),
	FOREIGN KEY (Credit_id) REFERENCES Credits(id),
	FOREIGN KEY (Balance_id) REFERENCES Balance(id)
	)
SQL


create_Debits = <<-SQL
CREATE TABLE IF NOT EXISTS Debits(
id Integer PRIMARY KEY,
price BLOB,
business VARCHAR(255), 
time_of_purchase datetime,
debit_memo VARCHAR(255)
)
SQL

create_Credits = <<-SQL
CREATE TABLE IF NOT EXISTS Credits(
id Integer PRIMARY KEY,
credit_amount BLOB,
business_company VARCHAR(255), 
time_of_purchase datetime,
credit_memo VARCHAR(255)
)
SQL

create_Balance = <<-SQL
CREATE TABlE IF NOT EXISTS Balance(
id INTEGER PRIMARY KEY,
current_balance blob
)
SQL 

db.execute(create_finances)
db.execute(create_Debits)
db.execute(create_Credits)
db.execute(create_Balance)
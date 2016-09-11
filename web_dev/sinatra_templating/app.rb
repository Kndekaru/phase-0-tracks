# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  puts params['name']
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# add static resources
#adding in a student lookup page

get '/student_search/new' do
  erb :student_search
end

post '/student_search' do
  name = params['name'].to_s
  new_url = '/student_search_result/' + params['name'].to_s
  puts new_url
 
  redirect new_url
end

#get '/student_search_result/:name' do
#get '/student_search_result/ do
get '/student_search_result/' do
  name = params[:name].to_s
  @student_result = db.execute("SELECT * FROM students WHERE name=?", [name])
  #@student_result = db.execute("SELECT * FROM students")
  erb :student_search_result
end
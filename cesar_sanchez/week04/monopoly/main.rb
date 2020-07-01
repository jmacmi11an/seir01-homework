require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'
require 'pry'

get '/' do
  erb :home
end

# Shows a list of all the properties in the board.
get '/properties' do
  @properties = query_db "SELECT * FROM monopoly"
  erb :properties_index
end

# Form to create a new property in the database
get '/property/new' do
  erb :property_new
end

# This page will show the details of a specific property.
get '/property/:id' do
  @properties = query_db "SELECT * FROM monopoly WHERE id=#{ params[:id] }" # The interest is only in one property. Give me all the properties from monopoly that their id is equal to ****.
  @properties = @properties.first # Extract the searched property from the array.
  erb :property_details
end



# This function connects Ruby to the database
def query_db(sql_statement)
  puts sql_statement
  db = SQLite3::Database.new 'database.sqlite3'   #Makes the connection to the database
  db.results_as_hash = true # The results are going to be in a form of Hash
  results = db.execute sql_statement
  db.close
  results #Method's return value
end

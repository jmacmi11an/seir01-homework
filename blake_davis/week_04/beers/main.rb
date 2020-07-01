require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'
require 'pry'

get '/' do
  erb :home
end

# INDEX -- show all beers READ

get '/beers' do
  @beers = query_db 'SELECT * FROM beers'
  erb :beers_index
end

#NEW
get '/beers/new' do
  erb :beers_new
end

#CREATE add new beer to database

post '/beers' do
  #generate query
  query = "INSERT INTO beers (name, family, image) VALUES ('#{ params[:name]}', '#{params[:family]}', '#{params[:image]}')"
  #execute query
  query_db query
  #go back to INDEX
  redirect to ('/beers')
end
#FUNCTION/METHOD
# SHOW = shows a single beer

get '/beers/:id' do
  @beer = query_db "SELECT * FROM beers WHERE id= #{params[:id]}"
  @beer = @beer.first #extract beer from array
  erb :beers_show
end

#EDIT - shows the form to edit - READ # OP

get '/beers/:id/edit' do
  @beer = query_db "SELECT * FROM beers WHERE id=#{params[:id]}" #returns array
  @beer = @beer.first #single beer
  erb :beers_edit
end

#UPDATE -- the database with new info
post '/beers/:id' do
  query = "UPDATE beers SET name='#{params[:name]}', family='#{params[:family]}', image='#{params[:image]}' WHERE id=#{ params[:id]}"
  query_db query
  redirect to ("/beers/#{ params[:id]}") #GET
end

#DELETE A SINGLE BEER

get '/beers/:id/delete' do
  query_db "DELETE FROM beers WHERE id = #{ params[:id]}"
  redirect to ('/beers')
end
#FUNCTION/METHOD

def query_db(sql_statement)
  puts sql_statement #optional but nice for debuggging
  db = SQLite3::Database.new 'database.sqlite3'
  db.results_as_hash = true
  results = db.execute sql_statement
  db.close
  results #implicit returned
end

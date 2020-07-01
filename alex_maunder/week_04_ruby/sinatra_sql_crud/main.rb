require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'


get '/' do
  erb :home
end

# Show all entries
get '/keyswitches' do
  @switches = query_db('SELECT * FROM keyswitches')
  erb :keyswitches
end

# NEW -- show the form to create a new keyswitch
get '/keyswitch/new' do
  erb :newswitch
end

# POST -- CREATE new keyswitch
post '/keyswitches' do
  query = "INSERT INTO keyswitches (name, brand, image) VALUES ('#{params[:name]}', '#{params[:brand]}', '#{params[:image]}')"
  query_db(query)
  redirect to('/keyswitches')
end

#SHOW -- show the switch once clicked
get '/keyswitches/:id' do
  @switch = query_db("SELECT * FROM keyswitches WHERE id=#{params[:id]}")
  @switch = @switch.first # pull the switch from the array
  erb :show_switch
end


#EDIT -- Shows a form which allows you to edit a single switch: SQL READ operation
get '/keyswitches/:id/edit' do
  @switch = query_db("SELECT * FROM keyswitches WHERE id=#{params[:id]}")
  @switch = @switch.first
  erb :edit_switch
end

# UPDATE -- Update the db with new information for an existing butterfly
post '/keyswitches/:id' do
  query = "UPDATE keyswitches SET name='#{params[:name]}', brand='#{params[:brand]}', image='#{params[:image]}' WHERE id=#{params[:id]}"
  query_db(query)
  redirect to("/keyswitches/#{params[:id]}") # GET
end

# DELETE -- Delete a single butterfly from the db
get '/keyswitches/:id/delete' do
  query_db("DELETE FROM keyswitches WHERE id=#{params[:id]}")
  redirect to('/keyswitches')
end


#Connect to db
def query_db(sql_statement) # connect to the db and pull results
  puts sql_statement # for debugging in the server, shows the SQL query being executed
  db = SQLite3::Database.new 'database.sqlite3'
  db.results_as_hash = true
  results = db.execute sql_statement
  db.close # limit of 1024 connections to db at any one time. we need to close it so the limits aren't maxed out
  return results
end

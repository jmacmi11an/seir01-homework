require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

get '/' do
  erb:home
end

# INDEX - show all the butterflies: READ
get '/butterflies' do
  #fetch all the butterflies
  @butterflies = query_db 'SELECT * FROM butterflies'
  #render a view
  erb :butterflies_index
end

#new page
get '/butterflies/new' do
  erb :butterflies_new
end

#create page - new butterfly to the databasee
post '/butterflies' do
    #generate our horrible SQL
    query = "INSERT INTO butterflies (name, family, image) VALUES ('#{ params[:name] }', '#{ params[:family] }', '#{ params[:image] }')"
    #execute it
    query_db query
    #go back to index.
    redirect to('/butterflies')
end

#show - shows a single butterfly: READ
get '/butterflies/:id' do
  @butterfly = query_db "SELECT * FROM butterflies WHERE id=#{params[:id]}" #returns the array
  @butterfly = @butterfly.first #extracts the butterfly from the array
  erb :butterflies_show
end

#edit - shows the form to edit a single butterfly: READ
get '/butterflies/:id/edit' do
  @butterfly = query_db "SELECT * FROM butterflies WHERE id=#{params[:id]}" #returns an array
  @butterfly = @butterfly.first # extract the butterfly from array
  erb :butterflies_edit
end

#update ---- update the database iwth new info for existing butterfly
post '/butterflies/:id' do
  query = "UPDATE butterflies SET name='#{ params[:name] }', family='#{ params[:family] }', image='#{ params[:image] }' WHERE id=#{ params[:id] }"
  query_db query
  redirect to("/butterflies/#{params[:id]}")
end

#DELETE action
get '/butterflies/:id/delete' do
  query_db "DELETE FROM butterflies WHERE id=#{params[:id]}"
  redirect to("/butterflies")
end

def query_db(sql_statement)
  puts sql_statement # this is for debugging. will tell me what sql it was trying to get.
  #connect to the Database
  db = SQLite3::Database.new 'database.sqlite3'
  db.results_as_hash = true
  results = db.execute sql_statement
  db.close
  results #this will return the results.
end

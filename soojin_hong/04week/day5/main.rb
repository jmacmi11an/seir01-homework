require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

get '/' do
  erb :home
end

# Index -- Read
get '/bucketlist' do
  @bucketlist = query_db "SELECT * FROM bucketlist"
  erb :bucketlist_index
end

# New
get '/bucketlist/new' do
  erb :bucketlist_new
end

# Create
post '/bucketlist' do
  query = "INSERT INTO bucketlist (name, place, image) VALUES ('#{ params[:name] }', '#{ params[:place] }', '#{ params[:image] }')"
  query_db query
  redirect to('/bucketlist')
end


# Show -- Read
get '/bucketlist/:id' do
  @bucketlist = query_db "SELECT * FROM bucketlist WHERE id=#{ params[:id] }"
  @bucketlist = @bucketlist.first
  erb :bucketlist_show
end

# Edit
get '/bucketlist/:id/edit' do
  @bucketlist = query_db "SELECT * FROM bucketlist WHERE id=#{ params[:id] }"
  @bucketlist = @bucketlist.first
  erb :bucketlist_edit
end

# Update
post '/bucketlist/:id' do
  query = "UPDATE bucketlist SET name='#{ params[:name] }', place='#{ params[:place] }', image='#{ params[:image] }' WHERE id=#{ params[:id] }"
  query_db query
  redirect to("/bucketlist/#{ params[:id] }")
end

# Delete
get '/bucketlist/:id/delete' do
  query_db "DELETE FROM bucketlist WHERE id=#{ params[:id] }"
  redirect to ('/bucketlist')
end

def query_db(sql_statement)
  puts sql_statement
  db = SQLite3::Database.new 'database.sqlite3'
  db.results_as_hash = true
  results = db.execute sql_statement
  db.close
  results
end

require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

get '/' do
  erb :home
end


get '/girls' do
  @girls = query_db "SELECT * FROM girls"
  erb :girls_index
end


get '/girls/new' do
  erb :girls_new
end


post '/girls' do
  query = "INSERT INTO girls (name, height, weight, hair_color, skin_color, feature, image) VALUES ('#{ params[:name] }', '#{ params[:height] }', '#{ params[:weight] }', '#{ params[:hair_color] }', '#{ params[:skin_color] }', '#{ params[:feature] }', '#{ params[:image] }')"
  query_db query
  redirect to('/girls')
end


get '/girls/:id' do
  @girl = query_db "SELECT * FROM girls WHERE id=#{ params[:id] }" #select details for ":id" girl
  @girl = @girl.first
  erb :girls_show
end


get '/girls/:id/edit' do
  @girl = query_db "SELECT * FROM girls WHERE id=#{ params[:id] }"
  @girl = @girl.first
  erb :girls_edit
end


post '/gafllowers/:id' do
  query = "UPDATE girls SET name='#{ params[:name] }', height='#{ params[:height] }', weight='#{ params[:weight] }', hair_color='#{ params[:hair_color] }', skin_color='#{ params[:skin_color] }', image='#{ params[:image] }'  WHERE id=#{ params[:id] }"
  query_db query
  redirect to ("/girls/#{ params[:id] }")
end

get '/girls/:id/delete' do
  query_db "DELETE FROM girls WHERE id=#{ params[:id] }"
  redirect to ("/girls")
end

def query_db (db_statement)
  db = SQLite3::Database.new 'database.sqlite3';
  db.results_as_hash = true
  results = db.execute db_statement
  db.close
  results
end

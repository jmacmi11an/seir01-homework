require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

get '/' do
  erb :home
end

get '/characters' do
  erb :characterlist
end

get '/characters/new' do
  erb :add_new
end

post '/characters' do
    update = "INSERT INTO dragonball (name, power_lvl, race, image) VALUES ('#{params[:name]}', '#{params[:power_lvl]}', '#{params[:race]}', '#{params[:image]}')"
    query_db update
    redirect to('/characters')
end

get '/characters/:id' do
  @dragonball = query_db "SELECT * FROM dragonball WHERE id=#{params[:id]}"
  @dragonball = @dragonball.first
  erb :focus
end

get '/characters/:id/edit' do
  @dragonball = query_db "SELECT * FROM dragonball WHERE id=#{params[:id]}"
  @dragonball = @dragonball.first
  erb :edit
end

post '/characters/:id' do
  update = "UPDATE dragonball SET name='#{params[:name]}', power_lvl='#{params[:power_lvl]}', race='#{params[:race]}', image='#{params[:image]}'"
  query_db update
  redirect to("characters/#{params[:id]}")
end

get '/characters/:id/delete' do
  query_db "DELETE FROM dragonball WHERE id=#{params[:id]}"
  redirect to("/characters")
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

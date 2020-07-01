require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'


get '/' do # THIS IS THE HOMEPAGE
  erb:home
end

get '/pokedex' do
  @pokedex = query_db 'SELECT * FROM pokedex'
  erb :pokedex
end

get '/pokedex/new' do
  erb :pokedex_new
end

post '/pokedex' do
  new_poke = "INSERT INTO pokedex (name, type, description, image) VALUES ('#{params[:name]}', '#{params[:type]}', '#{params[:description]}', '#{params[:image]}')"
  query_db new_poke
  redirect to('/pokedex')
end

get '/pokedex/:id' do
  @pokemon = query_db "SELECT * FROM pokedex WHERE id=#{params[:id]}"
  @pokemon = @pokemon.first
  erb :pokedex_show
end

get '/pokedex/:id/edit' do
  @pokemon = query_db "SELECT * FROM pokedex WHERE id=#{params[:id]}"
  @pokemon = @pokemon.first
  erb :pokedex_edit
end

post '/pokedex/:id' do
  new_poke = "UPDATE pokedex SET name='#{params[:name]}', type='#{params[:type]}', description='#{params[:description]}', image='#{params[:image]}' WHERE id=#{params[:id]}'"
  query_db new_poke
  redirect to("/pokedex/#{params[:id]}")
end

get '/pokedex/:id/delete' do
  query_db "DELETE FROM pokedex WHERE id=#{params[:id]}"
  redirect to("/pokedex")
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

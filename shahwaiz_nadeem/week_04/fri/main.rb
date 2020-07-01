require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'
require 'pry'

get '/' do
    erb :home # emmbedded ruby
end

get '/pokemon' do
    @pokemon = query_db 'SELECT * FROM pokemon'
    erb :pokemon_index
end

get '/pokemon/new' do
    erb :pokemon_new
end

# CREATE
post '/pokemon' do
    query = "INSERT INTO pokemon (name, pok_type, image) VALUES ('#{params[:name]}', '#{params[:pok_type]}', '#{params[:image]}')"
    query_db query
    redirect to('/pokemon')
end

# SHOW --- Shows a  single pokemon: READ
get '/pokemon/:id' do
    #connect to the database
    @pokemon = query_db  "SELECT * FROM pokemon WHERE id=#{ params[:id] }"
    @pokemon = @pokemon.first
    erb :pokemon_show
end

# EDIT
get '/pokemon/:id/edit' do
    @pokemon = query_db "SELECT * FROM pokemon WHERE id=#{ params[:id] }"
    @pokemon = @pokemon.first
    erb :pokemon_edit
end

#  UPDATE
post '/pokemon/:id' do
    query = "UPDATE pokemon SET name='#{params[:name]}', pok_type='#{params[:pok_type]}', image='#{params[:image]}' WHERE id=#{params[:id]}"
    puts query
    query_db query
    redirect to("/pokemon/#{ params[:id] }")
end

# DELETE
get '/pokemon/:id/delete' do
    query = "DELETE FROM pokemon WHERE id=#{params[:id]}"
    query_db query
    redirect to('/pokemon')
end


def query_db (sql_statement)
    puts sql_statement
    db = SQLite3::Database.new 'database.sqlite3'
    db.results_as_hash = true
    results = db.execute sql_statement
    db.close
    results
end


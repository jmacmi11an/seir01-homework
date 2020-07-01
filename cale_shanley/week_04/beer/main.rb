require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'
require 'pry'

get '/' do
  erb :home
end

# index -- Show all the Beers: READ
get '/beers' do
  @beers = query_db 'SELECT * FROM beers'
  # Render a view
  erb :beers_index
end


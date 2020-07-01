require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'pry'


get '/' do
    erb :home # emmbedded ruby
end

get '/result' do
    $symbol = params[:symbol]
    @book = HTTParty.get("https://www.googleapis.com/books/v1/volumes?q=title:#{$symbol}")
    @title = @book["items"][0]["volumeInfo"]["title"]
    @author = @book["items"][0]["volumeInfo"]["authors"].join(', ')
    @image = @book["items"][0]["volumeInfo"]["imageLinks"]["thumbnail"]
    erb :result
end

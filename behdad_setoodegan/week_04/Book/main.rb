require 'sinatra'
require 'sinatra/reloader'
require 'stock_quote'
require 'HTTParty'

get '/' do
  erb :home
end

get '/pics' do
  @title  = params[:title]
  book_url = "https://www.googleapis.com/books/v1/volumes?q=title#{@title}"
  info = HTTParty.get book_url;
  @cover = info["items"][0]["volumeInfo"]["imageLinks"]["thumbnail"]
  erb :pics
end


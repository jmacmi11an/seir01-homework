require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'httparty'

get '/' do
  erb :home
end

get '/result' do
  @book_title = params[:book_title]
  book_url = "https://www.googleapis.com/books/v1/volumes?q=title:#{ @book_title }"
  info = HTTParty.get book_url
  @cover_url = info["items"][0]['volumeInfo']['imageLinks']['thumbnail']
  @description = info["items"][0]['volumeInfo']['description']
  erb :result
end

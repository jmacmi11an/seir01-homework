require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'httparty'



get '/' do
  erb :home
end


get '/find' do
  @title = params[:book_name]
  book_url = "https://www.googleapis.com/books/v1/volumes?q=title:#{@title}"
  info = HTTParty.get book_url;
  @cover = info["items"][0]["volumeInfo"]["imageLinks"]["thumbnail"]
  @description = info["items"][0]["volumeInfo"]["description"]
  erb :find
end





# @stock_code = params[:stock_code]
# begin
#   @info = StockQuote::Stock.quote @stock_code
# rescue
#   redirect to('/')
# end
# erb :price

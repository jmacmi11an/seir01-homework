require 'sinatra'
require 'sinatra/reloader'
require 'HTTParty'
require 'cgi'

get '/' do
  erb :home
end

get '/result' do
  @title = CGI::escape params[:title]
  # begin
    book_url = "https://www.googleapis.com/books/v1/volumes?q=title:#{ @title }"
    info = HTTParty.get book_url;
    @cover = info["items"][0]["volumeInfo"]["imageLinks"]["thumbnail"]
    @author = info["items"][0]["volumeInfo"]["authors"]
    @buy_link = info["items"][0]["saleInfo"]["buyLink"]
  # rescue
  #   redirect to('/')
  erb :result
  # end
end

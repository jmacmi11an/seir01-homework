require 'sinatra'
require 'sinatra/reloader'
require 'httparty'



get '/' do
  erb :home
end

get '/display' do
  @title = params["title"]
  @book_url = "https://www.googleapis.com/books/v1/volumes?q=title: #{ @title }"
  @info = HTTParty.get @book_url;
  begin
    @cover_image = @info["items"][0]["volumeInfo"]["imageLinks"]["thumbnail"]
    @authors = @info["items"][0]["volumeInfo"]["authors"].join', '
    @publisher = @info["items"][0]["volumeInfo"]["publisher"]
    @published_date = @info["items"][0]["volumeInfo"]["publishedDate"]
    @description = @info["items"][0]["volumeInfo"]["description"]
    @categories = @info["items"][0]["volumeInfo"]["categories"].join', '
    @page_count = @info["items"][0]["volumeInfo"]["pageCount"]

  rescue
    redirect to('/') # start again
  end

  erb :display
end

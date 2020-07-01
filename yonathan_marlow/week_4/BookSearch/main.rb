require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
HTTParty

get '/' do
  erb :home
end

get '/found_book' do
  @title = params[:books]
  @book_url = "https://www.googleapis.com/books/v1/volumes?q=title:#{@title}"
  # binding.pry

  @info = HTTParty.get @book_url;
  @info.keys
  @info_thumbnail = @info['items'][0]['volumeInfo']['imageLinks']['thumbnail']
  @info_summary = @info['items'][1]["volumeInfo"]["description"]
  @info_author = @info['items'][1]["volumeInfo"]["authors"][0]
  @info_ratings = @info['items'][0]["volumeInfo"]["averageRating"]
  erb :found_book
end

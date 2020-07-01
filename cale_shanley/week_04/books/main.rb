require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
HTTParty

get '/' do
  erb :home
end

get '/result' do

  @title = params[:book_title]

  book_url = "https://www.googleapis.com/books/v1/volumes?q=title:#{@title}"

  @info = HTTParty.get book_url;
  @info.class
  @info.keys
  @info['items'].class
  @info_description = @info['items'][0]['volumeInfo']["description"]
  @info_thumbnail = @info['items'][0]['volumeInfo']['imageLinks']['thumbnail']
  
  erb :result
end
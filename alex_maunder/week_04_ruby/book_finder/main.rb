require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'httparty'


get '/' do
  erb :home
end

get '/bookinfo' do
  @book = params[:book].to_s
  book_url = "https://www.googleapis.com/books/v1/volumes?q=title:" + @book
  info = HTTParty.get book_url
  @title = info["items"][0]["volumeInfo"]["title"]
  @thumbnail_url = info["items"][0]["volumeInfo"]["imageLinks"]["thumbnail"]
  @authors = info["items"][0]["volumeInfo"]["authors"][0]
  @description = info["items"][0]["volumeInfo"]["description"]
  @book_review = info["items"][0]["searchInfo"]["textSnippet"]
  @book_link = info["items"][0]["volumeInfo"]["canonicalVolumeLink"]
  erb :bookinfo
end

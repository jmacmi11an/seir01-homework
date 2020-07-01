require 'sinatra'
require 'sinatra/reloader'
require 'httparty'

get "/" do
    erb :home
end

get "/result" do 
    @book_name = params[:book_name] 
    bookURL = "https://www.googleapis.com/books/v1/volumes?q=title:#{@book_name}"
    print bookURL
    response = HTTParty.get bookURL
    @title = response["items"][0]["volumeInfo"]["title"]  
    @thumbnail = response["items"][0]["volumeInfo"]["imageLinks"]["thumbnail"]
    print @title
    erb :result
end

# response["items"][0]["volumeInfo"]["title"]

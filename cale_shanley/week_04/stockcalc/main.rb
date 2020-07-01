require 'sinatra'
require 'sinatra/reloader'
require 'stock_quote'
require 'pry'
StockQuote
StockQuote::Stock.new(:api_key => 'pk_b38152a336f24abcb3cc369bf985f4d3')#API KEY)

get '/' do
  erb :home
end

get '/result' do
  @stock_code = params[:code]
  begin
    @info = StockQuote::Stock.quote @stock_code;
  rescue
    redirect to('/') #start again
  end
    erb :result
end

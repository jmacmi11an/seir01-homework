require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

get '/' do
    @database_info = query_db('SELECT * FROM bugs')
    @message = ""
    erb :index
end

post '/new' do
    query = "INSERT INTO bugs (username, title, description) VALUES ('#{@params["user_name"]}', '#{@params["title"]}', '#{@params["description"]}')"
    query_db(query);
    @database_info = query_db('SELECT * FROM bugs')
    @bug_info = @params
    redirect to '/'
end

get '/new' do
    erb :submit  
end

get '/del/:id' do 
    @params[:id]
    query = "DELETE FROM bugs WHERE id = #{@params[:id]}"
    query_db(query)
    redirect to '/'
end

get '/edit/:id' do
    query = "SELECT * FROM bugs WHERE id = #{@params[:id]}"
    @bug_info = query_db(query)
    erb :edit
end

post "/edit/:id" do
    query = "UPDATE bugs SET username = '#{@params[:user_name]}', title = '#{@params[:title]}', description= '#{@params[:description]}' WHERE id='#{@params[:id]}'"
    query_db(query)
    redirect to '/'
end

get "/view/:id" do
    query = "SELECT * FROM bugs WHERE id = #{@params[:id]}"
    @bug_info = query_db(query)
    erb :view
end

def query_db(query)
    puts query
    db = SQLite3::Database.new 'database.sqlite3'
    db.results_as_hash = true
    results =db.execute(query)
    db.close
    return(results)
end
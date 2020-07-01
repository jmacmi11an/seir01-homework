require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

get '/' do
    erb :home
end

get '/tech' do
    
    @tech = query_db 'SELECT * FROM tech GROUP BY category'
    erb :tech_category
end

get '/tech/new' do
    erb :tech_new
end

post '/tech' do
    query = "INSERT INTO tech (name, category, image) VALUES ('#{params[:name]}','#{params[:category]}','#{params[:image]}')"

    query_db query
    redirect to ('/tech')
end

get '/tech/:category' do
    @cate = query_db "SELECT * FROM tech WHERE category='#{params[:category] }'"
    
    erb :tech_index
end

get '/tech/:category/:id' do
    
    @product = query_db "SELECT * FROM tech WHERE id=#{params[:id] }"
    @product = @product.first
    
    erb :tech_show
end

get '/tech/:category/:id/edit' do
    @product = query_db "SELECT * FROM tech WHERE id =#{ params[:id]}"
    @product = @product.first
    erb :tech_edit
end

post '/tech/:category/:id' do
    query = "UPDATE tech SET name='#{ params[:name] }', category='#{ params[:category] }', image='#{ params[:image] }' WHERE id=#{ params[:id] }"

    query_db query
    redirect to ("/tech/:category/#{ params[:id] }")

end

# DELETE
get '/tech/:category/:id/delete' do
    query_db "DELETE FROM tech WHERE id=#{ params[:id] }"
    redirect to ('/tech')
end

def query_db(sql_statement)
    db = SQLite3::Database.new 'database.sqlite3'
    db.results_as_hash = true
    results = db.execute sql_statement
    db.close
    results
end
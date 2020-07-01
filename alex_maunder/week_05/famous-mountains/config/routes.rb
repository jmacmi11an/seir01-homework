Rails.application.routes.draw do
  get '/mountains' => 'mountains#index'
  get '/mountains/new' => 'mountains#new', :as => 'new_mountain' # new_mountain_path
  post '/mountains' => 'mountains#create'
  get '/mountains/:id'=> 'mountains#show', :as => 'mountain' # mountain_path
  get '/mountains/:id/edit' => 'mountains#edit', :as => 'edit_mountain' # edit_mountain_path
  post '/mountains/:id' => 'mountains#update'
  delete '/mountains/:id' => 'mountains#destroy'
end

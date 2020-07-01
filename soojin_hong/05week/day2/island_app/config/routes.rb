Rails.application.routes.draw do
  root :to => 'islands#index'
  get '/islands' => 'islands#index'
  get '/islands/new' => 'islands#new', :as => 'new_island'
  post '/islands/' => 'islands#create'
  get '/islands/:id' => 'islands#show', :as => 'island'
  get '/islands/:id/edit' => 'islands#edit', :as => 'edit_island'
  post '/islands/:id' => 'islands#update'
  delete '/islands/:id' => 'islands#destroy'

end

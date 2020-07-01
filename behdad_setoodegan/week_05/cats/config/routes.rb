Rails.application.routes.draw do
  get '/cats' => 'cats#index'
  get '/cats/new' => 'cats#new', :as => 'new_cat'
  post '/cats' => 'cats#create'
  get '/cats/:id' => 'cats#show', :as => 'cat'
  get 'cats/:id/edit' => 'cats#edit', :as => 'edit_cat'
  post '/cats/:id' => 'cats#update'
  delete '/cats/:id' => 'cats#destroy'
end

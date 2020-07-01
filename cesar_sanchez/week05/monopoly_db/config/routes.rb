Rails.application.routes.draw do
  get '/properties'  => 'properties#index'
  get '/properties/buy' => 'properties#buy', :as => 'buy_property'
  post '/properties' => 'properties#create'
  get '/properties/:id' => 'properties#show', :as => 'property'
  get 'properties/:id/edit' => 'properties#edit', :as => 'edit_property'
  post '/properties/:id' => 'properties#update'
  delete '/properties/:id' => 'properties#destroy'
end

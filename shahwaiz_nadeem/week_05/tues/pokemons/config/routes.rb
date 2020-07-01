Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to => 'pokemons#index'

  get '/pokemons' => 'pokemons#index'
  get '/pokemons/new' => 'pokemons#new', :as => 'new_pokemon'
  post '/pokemons' => 'pokemons#create'
  get '/pokemons/:id' => 'pokemons#show', :as => 'pokemon'
  get '/pokemons/:id/edit' => 'pokemons#edit', :as => 'edit_pokemon'
  post '/pokemons/:id' => 'pokemons#update'
  delete '/pokemons/:id' => 'pokemons#destroy'

end

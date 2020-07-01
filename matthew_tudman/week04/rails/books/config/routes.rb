Rails.application.routes.draw do
  get 'novels/index'
  get 'novels/new'
  get 'novels/edit'
  get 'novels/show'
  get 'authors/index'
  get 'authors/new'
  get 'authors/edit'
  get 'authors/show'
  resources :authors
  resources :novels
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

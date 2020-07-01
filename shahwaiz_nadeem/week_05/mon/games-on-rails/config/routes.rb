Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'pages#home'

  get '/8ball' => 'pages#eightball'
  get '/number' => 'pages#number'
  get '/rps' => 'pages#rps'

  get ''

end

Rails.application.routes.draw do

  root :to => 'games#home'
  get '/magic' => 'games#magic'
  get '/result' => 'games#result'
  get '/secret' => 'games#secret'
  get '/rps' => 'games#rps'
  get '/rps/:throw' => 'games#rpsresult'
end

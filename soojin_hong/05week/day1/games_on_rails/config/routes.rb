Rails.application.routes.draw do
  root :to => 'pages#home'
  get '/home' => 'pages#home'

  get '/magiceight' => 'magiceight#play'
  get '/magiceight/result' => 'magiceight#result'
  get '/magiceight/result/again' => 'magiceight#play'

  get '/secretnumber' => 'secretnumber#play'
  get '/secretnumber/result' => 'secretnumber#result'

  get '/rockpaperscissors' => 'rockpaperscissors#play'
  get '/rockpaperscissors/result' => 'rockpaperscissors#result'
end

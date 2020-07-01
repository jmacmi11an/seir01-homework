Rails.application.routes.draw do
  root :to => 'pages#home'
  get '/home' => 'pages#home'
  get '/magicball' => 'magicball#form'
  get '/magicball/result' => 'magicball#result'
  get '/secretnumber' => 'secretnumber#form'
  get '/secretnumber/result' => 'secretnumber#result'
  get '/rockpaperscissors' => 'rockpaperscissors#form'
end

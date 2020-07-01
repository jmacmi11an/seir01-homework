Rails.application.routes.draw do
  root :to => 'pages#hello'

  get '/hello' => 'pages#hello'
  get '/magicball' => 'pages#magicball'
  get '/secretnumber' => 'pages#secretnumber'
  get '/rock_paper_scissors' => 'pages#rock_paper_scissors'

  get '/magicball/magicball_result' => 'results#answer'
  get '/rock_paper_scissors/rock_paper_scissors_result' => 'results#rps'
  get '/secretnumber/secret_number_result' => 'results#guess'
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'pages#home'

  get '/' => 'pages#home'
  get '/magic' => 'pages#magic'
  get '/magic/answer' => 'pages#magic_answer'

  get '/secret_number' => 'number#secret_number'
  get '/secret_number/game' => 'number#secret_number_game'
  get '/secret_number/game/compute' => 'number#guess'

  get '/rock_paper_scissors' => 'game#rock_paper_scissors'
  get '/rock_paper_scissors/answer' => 'game#rock_paper_scissors_answer'
end

Rails.application.routes.draw do

  root :to => 'pages#hello'

  get 'eightball' => 'eightball#game'
  get 'eightball/results' => 'eightball#results'

  get 'secret' => 'secret#game'
  get 'secret/results' => 'secret#results'

  get 'spr/results' => 'spr#results'
  get 'spr/rock_paper_scissors/:throw' => 'spr#rock_paper_scissors_play'
  get 'spr' => 'spr#index'
end

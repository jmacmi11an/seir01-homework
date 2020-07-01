Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to  => 'pages#home'

  get "/magic8ball" => 'magic8ball#home'
  get "/magic8ball/:question" => 'magic8ball#question'

  get "/secretnumber" => 'secretnumber#home'
  get "/secretnumber/:guess" => 'secretnumber#check'


  get "/rockpaperscissors" => 'rockpaperscissors#home'
end

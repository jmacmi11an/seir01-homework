class SecretController < ApplicationController
  def game
    render :secret
  end

  def results
   users_guess = params[:secret_num]
   @users_guess = users_guess
   @guess = rand(10)
   render :results
  end
end

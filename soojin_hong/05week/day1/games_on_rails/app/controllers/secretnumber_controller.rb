class SecretnumberController < ApplicationController
  def play
    render :play
  end

  def result
    @computer_choice = Random.rand(1..10)
    @user_choice = params[:number].to_i
    @answer = @computer_choice == @user_choice? "Correct!" : "Wrong!"
    render :result
  end
end

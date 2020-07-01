class RockpaperscissorsController < ApplicationController
  def play
    render :play
  end

  def throw
    "Throw"
  end

  def result
    @option = ['Rock', 'Paper', 'Scissors']

    @computer_random = Random.rand(0..2)
    @computer_choice = @option[@computer_random]

    @user_random = Random.rand(0..2)
    @user_choice = @option[@user_random]

    @result = if @computer_random == 0 && @user_random == 2 ||
                 @computer_random == 1 && @user_random == 0 ||
                 @computer_random == 2 && @user_random == 1
                "Lost"
              elsif @computer_random == @user_random
                "Draw"
              else
                "Won"
              end

    render :result
  end
end

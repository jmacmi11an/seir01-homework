class SprController < ApplicationController
  def game
    render :spr
  end

  def index
    render :index
  end

  def rock_paper_scissors_play
    options = ['scissors', 'paper', 'rock']
    @computer_choice = options[rand(2)]
    @player_choice = params[:throw]
    @draw = @player_choice == @computer_choice
    @player_win = (
      (@player_choice == 'rock' && @computer_choice == 'scissors') or
      (@player_choice == 'paper' && @computer_choice == 'rock') or
      (@player_choice == 'scissor' && @computer_choice == 'paper'))

    @computer_win = (
      (@player_choice == 'rock' && @computer_choice == 'paper') or
      (@player_choice == 'paper' && @computer_choice == 'scissors') or
      (@player_choice == 'scissor' && @computer_choice == 'rock'))

    render :results
  end
end

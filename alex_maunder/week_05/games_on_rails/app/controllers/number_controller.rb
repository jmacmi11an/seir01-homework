class NumberController < ApplicationController

  def secret_number
    render :secret_number
  end

  def secret_number_game
    # number_one = gets.to_i
    @high_num = params[:secret_number_game].to_i
    # @zer_to_inp = Random.rand @high_num

    # def choose(input, zer_to_ten)
    #   if input != zer_to_ten.to_i
    #     if input < zer_to_ten.to_i
    #       # puts "Wrong, guess Higher!"
    #     else
    #       # puts "Wrong, guess Lower!"
    #     end
    #     number_one = gets.to_i
    #     choose(number_one, zer_to_ten)
    #   else
    #     puts "wow your guess of #{input} matched the random number!"
    #   end
    # end
    #
    # if number_one == 13
    #   puts "What is the highest number you want? "
    #   update = gets.to_i
    #   zer_to_ten = Random.rand update
    #   puts "OK, playing from 0 to #{update}"
    #   puts "Guess a number between 0 and #{update}"
    #   number_update = gets.to_i
    #   choose(number_update, zer_to_ten)
    # else
    #   choose(number_one, zer_to_ten)
    # end
    # raise 'hell'
    render :secret_number_game
  end

  def guess
    @current_guess = params["guess"].to_i
    # @zer_to_inp = Random.rand @high_num
    @output = 'Correct!'
    # raise "hell"
    render :secret_number_game
  end

end

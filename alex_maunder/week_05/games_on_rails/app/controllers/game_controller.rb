class GameController < ApplicationController
  attr_accessor :rock, :paper, :scissors

  def rock_paper_scissors
    render :rock_paper_scissors
  end

  def rock_paper_scissors_answer
    possible_answers = [
      "Rock", "Paper", "Scissors"
    ]

    @sample = possible_answers.sample

    # raise "hell"
    @answer = params[:throw]

    @output = ''

    if @sample == @answer
      @output += 'Tie!'
      redirect to :rock_paper_scissors_answer
    end

  raise "hell"

    render :rock_paper_scissors_answer
  end

end

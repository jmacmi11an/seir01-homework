class SecretnumberController < ApplicationController
  def form
    render :form
  end

  def result
    @answer = rand(1..10)
    @guess = params[:class]
    if @guess.to_i == @answer
      @message = "correct"
    else
      @message = "wrong"
    end
    render :result
  end
end

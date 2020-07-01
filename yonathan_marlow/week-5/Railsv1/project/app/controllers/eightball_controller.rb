class EightballController < ApplicationController

  def game
    render :eightball
  end

  def results
    answers = ['It is certain', 'it is decidedly so', 'without a doubt', 'yes definitely', 'you may rely on it', 'as you see it, yes', 'most likely', 'outlook good', 'yes', 'signs point to yes', 'reply hazy try again', 'ask again later', 'better not tell you now', 'cannot predict now', 'concentrate and ask again', 'dont count on it', 'my reply is no', 'my sources say no', 'outlook not so good', 'very doubtful']
    @answer = answers.sample
    render :results
  end
end

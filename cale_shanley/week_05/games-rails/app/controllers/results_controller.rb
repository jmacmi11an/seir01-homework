class ResultsController < ApplicationController


# Generate answer
  def answer
    answers = ["It is certain", "It is decidedly so", "Without a doubt",
      "Yes definitely", "You may rely on it", "As I see it, yes",
      "Most likely", "Outlook good", "Yes", "Signs point to yes",
      "Reply hazy try again", "Ask again later", "Better not tell you now",
      "Cannot predict now", "Concentrate and ask again", "Don't count on it",
      "My reply is no", "My sources say no", "Outlook not so good",
      "Very doubtful"
     ]
  
    question = params[:magic_ball] 
    @answer = answers.sample
    render :magicball_result
  end

  def rps
    rps = ['ROCK', 'PAPER', 'SCISSORS']
    question = params[:rpc]
    @rps = rps.sample
    render :rock_paper_scissors_result
  end

  def users_guess
    users_guess = params[:guess]
    @users_guess = users_guess.sample
    render :secret_number_result
  end

  def guess
    guess = Random.rand(1..100)
    @guess = guess
    render :secret_number_result
  end
end


class PagesController < ApplicationController
  def home
    render :home
  end

  def magic
    render :magic
  end

  def magic_answer
    possible_answers = [
    "It is certain.", "It is decidedly so.", "Without a doubt.", "Yes – definitely.",
    "You may rely on it.", "As I see it, yes.", "Most likely.", "Outlook good.",
    "Yes.", "Signs point to yes.", "Reply hazy, try again.", "Ask again later.",
    "Better not tell you now.", "Cannot predict now.", "Concentrate and ask again.",
    "Don't count on it.", "My reply is no.", "My sources say no.",
    "Outlook not so good.", "Very doubtful."
    ]

    @sample = possible_answers.sample
    
    render :magic_answer
  end

end

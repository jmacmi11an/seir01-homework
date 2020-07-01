class PagesController < ApplicationController
  def hello
    render :hello
  end

  def magicball
    render :magicball
  end

  def secretnumber
    render :secretnumber
  end

  def rock_paper_scissors
    render :rock_paper_scissors
  end
end
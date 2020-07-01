class PagesController < ApplicationController

  def home
    render :home
  end

  def eightball
    render :eightball
  end

  def s_number
    render :s_number
  end

  def rps
    render :rps
  end
end

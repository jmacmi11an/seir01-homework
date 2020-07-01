class GamesController < ApplicationController
    def home
      render :home
    end  

    def magic
      render :magic
    end

    def result
      render :result
    end

    def secret
      render :secret
    end

    def rps
      render :rps
    end

    def rpsresult
      @throw = params[:throw]
      
      render :rpsresult
    end
  
  end
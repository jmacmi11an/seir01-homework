class Magic8ballController < ActionController::Base
    def home
        render :home
    end
    def question
        @answers = ["Maybe", "Could be", "i dont know","yes","No","Of course","For certain","No way"]
        render :result        
    end 
end

class SecretnumberController < ActionController::Base
    def home
        @message = "You have not guessed the number yet"
        @number = rand(1) # why is this getting called every time check is getting called? 
        render :home
    end

    def check
        @message = "thinking..."
        if @number.to_s == params[:guess]
            @message = "You win!" 
            puts "YOU WON #####################################################################"
        else 
            puts "YOU DID NOT WIN %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
        end
        @otherguessiguess = params[:guess]
        render :home
    end
end 

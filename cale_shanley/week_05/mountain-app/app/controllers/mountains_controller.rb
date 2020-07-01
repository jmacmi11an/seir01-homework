class MountainsController < ApplicationController
  def index
      @mountains = Mountain.all
  end

  def show
    @mountains = Mountain.find params[:id]
  end

  def new
  end

  def create
    mountain = Mountain.create :name => params[:name], :image => params[:image], :height => params[:height], :country => params[:country]
    redirect_to mountain_path(mountain.id)
  end

  def edit
    @mountains = Mountain.find params[:id]
  end   

  def update
    # get the exisiting mountain from the db
    mountain = Mountain.find params[:id]
    # Update ALL the fields
    mountain.name = params[:name]
    mountain.image = params[:image]
    mountain.height = params[:height]
    mountain.country = params[:country] 
    mountain.save
    # Redirect to the show page
    redirect_to mountain_path(mountain.id)
    end

    def destroy
      mountain = Mountain.find params[:id]
      mountain.destroy
      redirect_to mountains_path
    end
end
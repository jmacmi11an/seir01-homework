class MountainsController < ApplicationController
  def index
    @mountains = Mountain.all
  end

  def show
    @mountain = Mountain.find params[:id]
  end

  def new
  end

  def create
    mountain = Mountain.create :name => params[:name], :image => params[:image], :location => params[:location], :height => params[:height], :height_sealevel => params[:height_sealevel]

    redirect_to mountain_path(mountain.id)
  end

  def edit
    @mountain = Mountain.find params[:id]
  end

  def update
  # raise "hell"
  # get the existing mountain from the db
  mountain = Mountain.find params[:id] # doesn't need to be an instance variable as we aren't outputting anything in this "update" view that needs to access this variable
  # update ALL the fields
  mountain.name = params[:name]
  mountain.image = params[:image]
  mountain.location = params[:location]
  mountain.height = params[:height]
  mountain.height_sealevel = params[:height_sealevel]
  # save changes
  mountain.save
  # redirect to show page so user knows the edit worked
  redirect_to mountain_path(mountain.id) # show page
  end

  def destroy
  # find the mountain
  mountain = Mountain.find params[:id]
  # destroy the mountain
  mountain.destroy
  # redirect to all mountains
  redirect_to mountains_path
end

end

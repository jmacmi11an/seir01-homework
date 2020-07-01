class IslandsController < ApplicationController
  def index
    @islands = Island.all
  end

  def show
    @island = Island.find params[:id]
  end

  def new
  end

  def create
    island = Island.create :name => params[:name], :country => params[:country], :image => params[:image]
    redirect_to island_path(island.id)
  end

  def edit
    @island = Island.find params[:id]
  end

  def update
    island = Island.find params[:id]
    island.name = params[:name]
    island.country = params[:country]
    island.image = params[:image]
    island.save
    redirect_to island_path(island.id)
  end

  def destroy
    island = Island.find params[:id]
    island.destroy
    redirect_to islands_path
  end
end

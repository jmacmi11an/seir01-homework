class PropertiesController < ApplicationController
  def index
    @properties = Property.all
  end

  def show
    @property = Property.find params[:id]
  end

  def buy
  end

  def create
    property = Property.create :name => params[:name], :image => params[:image], :monopoly => params[:monopoly], :rent => params[:rent]
    redirect_to property_path(property.id) #show
  end

  def edit
    @property = Property.find params[:id]
  end

  def update
    property = Property.find params[:id]
    property.name = params[:name]
    property.image = params[:image]
    property.monopoly = params[:monopoly]
    property.rent = params[:rent]
    property.save
    redirect_to property_path(property.id)
  end

  def destroy
    property = Property.find params[:id]
    property.destroy
    redirect_to property_path
  end
end

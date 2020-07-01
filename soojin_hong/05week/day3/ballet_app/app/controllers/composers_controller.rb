class ComposersController < ApplicationController
  def index
    @composers = Composer.all
  end

  def new
    @composer = Composer.new
  end

  def create
    composer = Composer.create composer_params
    redirect_to composer
  end

  def edit
    @composer = Composer.find params[:id]
  end

  def update
    composer = Composer.find params[:id]
    composer.update composer_params
    redirect_to composer
  end

  def show
    @composer = Composer.find params[:id]
  end

  def destroy
    composer = Composer.find params[:id]
    composer.destroy
    redirect_to composers_path
  end

  private
  def composer_params
    params.require(:composer).permit(:name, :nationality, :dob, :image)
  end
end

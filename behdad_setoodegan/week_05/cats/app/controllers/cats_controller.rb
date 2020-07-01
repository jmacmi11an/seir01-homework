class CatsController < ApplicationController
    def index
        @cats = Cat.all
    end

    def show
        @cat = Cat.find params[:id]
    end

    def new
    end

    def create
        cat = Cat.create :name => params[:name], :image => params[:image], :age => params[:age]
        redirect_to cats_path(cat.id)
    end

    def edit
        @cat = Cat.find params[:id]
    end

    def update
        cat =Cat.find params[:id]
        cat.name = params[:name]
        cat.image = params[:image]
        cat.age = params[:age]
        cat.save
        redirect_to cats_path(cat.id)
    end

    def destroy
        cat = Cat.find params[:id]
        cat.destroy
        redirect_to cats_path
    end
end
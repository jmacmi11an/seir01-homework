class pokemonsController < ApplicationController
  def index
    @pokemons =Pokemon.all
  end

  def show
    @pokemon = Pokemon.find params[:id]
  end

  def new
  end

  def create
    pokemon = Pokemon.create :name => params[:name], :image => params[:image], :type => params[:type]
    redirect_to "#{pokemons_path}/#{pokemon.id}"
  end

  def edit
    @pokemon = Pokemon.find params[:id]
  end

  def update
    pokemon = Pokemon.find params[:id]

    pokemon.name = params[:name]
    pokemon.image = params[:image]
    pokemon.type = params[:type]
    pokemon.save
    redirect_to pokemon_path(pokemon.id)
  end

  def destroy
    pokemon = Pokemon.find params[:id]
    pokemon.destroy
    redirect_to pokemons_path
  end
end

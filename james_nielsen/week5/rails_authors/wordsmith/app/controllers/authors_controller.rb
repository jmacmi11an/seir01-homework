class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def new
    @author = Author.new
  end

  def create
    author = Author.create author_params
    redirect_to author
  end

  def edit
    @author = Author.find params[:id]
  end

  def update
    author = Author.find params[:id]
    author.update author_params
    redirect_to author
  end

  def show
    @author = Author.find params[:id]
  end

  def destroy
    author = Author.find params[:id]
    author.destroy
    redirect_to authors_path
  end

  private #the dollowing methods(s) aren't accessible outside this class (so routes can't point to them)
  def author_params
    #strong params: white list of sanitised input -- stuff we are happy to accept from the user.
    params.require(:author).permit(:name, :nationality, :dob, :genre, :image, :wiki)
  end
end

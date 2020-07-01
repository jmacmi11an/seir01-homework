class AuthorsController < ApplicationController

  def index
    @authors = Author.all
  end

  def new
    @author = Author.new
  end

  def create
    author = Author.create author_params # Permitted
    redirect_to author # show page
  end 

  def edit
    @author = Author.find params[:id]
  end

  def update
    # Find the author
    author = Author.find params[:id]
    # Make the update
    author.update author_params
    # Redirect somewhere
    redirect_to author # Show page
  end 

  def show
    @author = Author.find params[:id]
  end

  def destroy
    author = Author.find params[:id]
    author.destroy 
    redirect_to authors_path
  end
  
  private # The following method(s) aren't accessible outside this class (so routes can't print to them)
  def author_params
    # Strong params: White list of sanitised input -- stuff we are happy to accept from the user
    params.required(:author).permit(:name, :author, :dob, :image)
  end
end

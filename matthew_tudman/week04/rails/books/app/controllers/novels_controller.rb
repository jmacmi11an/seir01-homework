class NovelsController < ApplicationController
  def index
    @novels = Novel.all
  end

  def new
    @novel = Novel.new
  end

  def create
    novel = Novel.create novel_params
    redirect_to novel
  end

  def edit
    @novel = Novel.find params[:id]
  end

  def update
    novel = Novel.find params[:id]
    novel.update novel_params
    redirect_to novel
  end

  def show
    @novel = Novel.find params[:id]
  end

  def destroy
    novel = Novel.find params[:id]
    novel.destroy
    redirect_to novels_path
  end

  private #The Following method(s) aren't accessible outside this class (so routes can't point to them)
  def novel_params
    #STRONG params: white list of sanitised input -- stuff we are happy to accept from the user.
    params.require(:novel).permit(:title, :year, :length, :genre, :image, :author_id)
  end
end

class ForumsController < ApplicationController
  def index

  end

  def new
    @forum = Forum.new
  end

  def create
    @forum = Forum.new(params[:forum])
    if @forum.save
      flash[:notice] = "Forum has been created."
      redirect_to @forum
    else
      flash[:alert] = "Forum has not been created."
      render action: "new"
    end
  end

  def show
    @forum = Forum.find(params[:id])
  end
end

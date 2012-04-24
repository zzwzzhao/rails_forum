class ForumsController < ApplicationController
  def index

  end

  def new
    @forum = Forum.new
  end

  def create
    @forum = Forum.new(params[:forum])
    @forum.save
    flash[:notice] = "Forum has been created."
    redirect_to @forum
  end

  def show
    @forum = Forum.find(params[:id])
  end
end

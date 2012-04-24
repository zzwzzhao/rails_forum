class ForumsController < ApplicationController
  before_filter :find_forum, only: [:show, :edit, :update, :destroy]

  def index
    @forums = Forum.all
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
  end

  def edit
  end

  def update
    if @forum.update_attributes(params[:forum])
      flash[:notice] = "Forum has been updated."
      redirect_to @forum
    else
      flash[:notice] = "Forum has not been updated."
      render action: "edit"
    end
  end

  def destroy
    @forum.destroy
    flash[:notice] = "Forum has been deleted."
    redirect_to forums_path
  end

  private
    def find_forum
      @forum = Forum.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      flash[:alert] = "The forum you were looking" +
        " for could not be found."
      redirect_to forums_path
    end
end

class TopicsController < ApplicationController
  before_filter :find_forum
  before_filter :find_topic, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, except: [:index, :show]

  def new
    @topic = @forum.topics.build
  end

  def create
    @topic = @forum.topics.build(params[:topic].merge!(user: current_user))
    if @topic.save
      flash[:notice] = "Topic has been created."
      redirect_to [@forum, @topic]
    else
      flash[:alert] = "Topic has not been created."
      render action: "new"
    end
  end

  def show
    @post = @topic.posts.build
  end

  def edit

  end

  def update
    if @topic.update_attributes(params[:topic])
      flash[:notice] = "Topic has been updated."
      redirect_to [@forum, @topic]
    else
      flash[:alert] = "Topic has not been updated."
      render action: "edit"
    end
  end

  def destroy
    @topic.destroy
    flash[:notice] = "Topic has been deleted."
    redirect_to @forum
  end

  private
    def find_forum
      @forum = Forum.find(params[:forum_id])
    end

    def find_topic
      @topic = @forum.topics.find(params[:id])
    end
end

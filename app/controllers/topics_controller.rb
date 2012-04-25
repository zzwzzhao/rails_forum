class TopicsController < ApplicationController
  before_filter :find_forum
  before_filter :find_topic, only: [:show, :edit, :update, :destroy]

  def new
    @topic = @forum.topics.build
    @topic.posts.build
  end

  def create
    @topic = @forum.topics.build(params[:topic])
    if @topic.save
      flash[:notice] = "Topic has been created."
      redirect_to [@forum, @topic]
    else
      flash[:alert] = "Topic has not been created."
      render action: "new"
    end
  end

  def show

  end

  private
    def find_forum
      @forum = Forum.find(params[:forum_id])
    end

    def find_topic
      @topic = @forum.topics.find(params[:id])
    end
end

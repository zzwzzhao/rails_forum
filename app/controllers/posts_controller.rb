class PostsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :find_topic
  before_filter :find_post, only:[:edit, :update, :destroy,]

  def create
    @post = @topic.posts.build(params[:post].merge(user: current_user))
    if @post.save
      flash[:notice] = "Post has been created."
      redirect_to [@topic.forum, @topic]
    else
      flash[:alert] = "Post has not been created."
      render template: "topics/show"
    end
  end

  def edit
  end

  def update
    if @post.update_attributes(params[:post])
      flash[:notice] = "Post has been updated."
      redirect_to [@topic.forum, @topic]
    else
      flash[:alert] = "Post has not been updated."
      render action: "edit"
    end
  end

  private
    def find_topic
      @topic = Topic.find(params[:topic_id])
    end

    def find_post
      @post = Post.find(params[:id])
    end
end

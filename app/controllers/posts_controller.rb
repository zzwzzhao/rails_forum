class PostsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :find_topic

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

  private
    def find_topic
      @topic = Topic.find(params[:topic_id])
    end
end

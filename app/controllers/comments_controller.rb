class CommentsController < ApplicationController

  def new #need a new?  What is the differnce with new and create?
    @comment = Comment.new
  end

  def create
    @topic = Topic.find(params[:topic_id])
    @post = @topic.posts.find(params[:post_id]) #the pathway?
    @comment = @post.comments.new(comment_params) #comment_params? Connection?
    @comment.user_id = current_user.id # what? Is this for the Model?
    #authorize @comment -- Why not authorize?
    if @comment.save
      redirect_to [@topic, @post], notice: "Comment was posted."
    else
      redirect_to [@topic, @post], notice: "Error posting comment.  Please try again."
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end

end

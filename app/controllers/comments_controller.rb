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

  def destroy
    @topic = Topic.find(params[:topic_id])
    @post = Post.find(params[:post_id])
    @comment = @post.comment.find(params[:id])
    
    authorize @comment
    if @comment.destroy?
      flash[:notice] = "Your comment has been deleted."
      redirect_to [@topic, @post]
    else
      flash[:error] = "Your comment was unable to be deleted."
      redirect_to [@topic, @post]
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end

end

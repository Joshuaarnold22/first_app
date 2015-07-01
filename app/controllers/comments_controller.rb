class CommentsController < ApplicationController

  def new #need a new?  What is the differnce with new and create?
    @comment = Comment.new
  end

  def create
    @post = @topic.posts.find(params[:post_id]) #the pathway?
    @comment = @post.comments.new(comment_params) #comment_params? Connection?
    @comment.user_id = current_user.id # what? Is this for the Model?
    #authorize @comment -- Why not authorize?
    if @comment.save
      redirect_to [@post.topic, @post], notice: "Comment was posted." #from [@topic, @post]?
    else
      redirect_to [@post.topic, @post], notice: "Error posting comment.  Please try again."
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comment.find(params[:id])
    authorize @comment

    if @comment.destroy?
      flash[:notice] = "Your comment has been deleted."
    else
      flash[:error] = "Your comment was unable to be deleted."
    end

    respond_to do |format|
      format.html
      format.js
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end

end

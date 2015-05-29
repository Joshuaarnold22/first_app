class SummariesController < ApplicationController

  def new
    @post = Post.find(params[:post_id])
    @summary = Summary.new
  end

  def show

  end

  def create
    @post = Post.find(params[:post_id])
    @summary = Summary.new(post_id: @post.id)
    
    @post.build_summary(params.require(:summary).permit(:description))
    
    if @summary.save
      flash[:notice] = "Post was saved."
      redirect_to [@post, @summary]
    else
      flash[:error] = "There was an error saving the post. Please try again."
      render :new
    end
  end

end
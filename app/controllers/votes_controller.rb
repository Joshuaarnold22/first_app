class VotesController < ApplicationController

  before_action :load_post_and_vote

  def up_vote
    redirect_to :back #where?
    update_vote!(1)
  end

  def down_vote
    redirect_to :back
    update_vote!(-1)
  end

  private

  def load_post_and_vote
    @post = Post.find(params[:post_id])
    @vote = @post.votes.where(user_id: current_user.id).first #where is user_id pointing?
  end

  def update_vote!(new_value)
    if @vote
      authorize @vote, :update? #where does :update? come from again?
      @vote.update_attribute(:value, new_value) #update_attribute? where?
    else
      @vote = current_user.votes.build(value: new_value, post: @post) #is this if they haven't voted yet?
      authorize @vote, :create? #where does :create? come from again?
      @vote.save
    end
  end

end
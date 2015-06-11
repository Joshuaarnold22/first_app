# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  body       :text
#  post_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

require 'rails_helper'

describe Comment do
  include TestFactories

  describe "after_create" do
    before do
      @post = associated_post
      @user = authenticated_user(email_favorites: true)
      @other_user = authenticated_user
      @comment = Comment.new(body: 'My comment is really great', post: @post, user: @other_user) #user: @other_user?
    end

    it "sends an email to users who have favorited the post" do
      favorite = @user.favorites.create(post: @post) #where is .favorites from?

      allow( FavoriteMailer )
        .to receive(:new_comment) #where do I get :new_comment from?
        .with(@user, @post, @comment)
        .and_return( double(beliver_now: true) ) #double?
      expect( FavoriteMailer )
        .to receive(:new_comment)

      @comment.save
    end

    it "does not send emails to users who haven't" do
      expect( FavoriteMailer )
        .not_to receive(:new_comment)

      @comment.save
    end
  end
end
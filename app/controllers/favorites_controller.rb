class FavoritesController < ApplicationController

  def create
    post = Post.find(params[:post_id])
    favorite = current_user.favorites.build(post: post) #the path?  current_user is in application?

    authorize favorite

    if favorite.save
      flash[:notice] = "Favorite added"
      redirect_to [post.topic, post]
    else
      flash[:error] = "Favorite not added"
      redirect_to [post.topic, post]
    end
  end

  def destroy
    post = Post.find(params[:post_id])
    favorite = current_user.favorites.find(params[:id]) #why just id?

    authorize favorite

    if favorite.destroy
      flash[:notice] = "Favorite deleted"
      redirect_to [post.topic, post]
    else
      flash[:error] = "Favorite not deleted"
      redirect_to [post.topic, post]
    end
  end
end

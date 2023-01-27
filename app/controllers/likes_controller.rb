class LikesController < ApplicationController
  def new
    @like = Like.new
  end

  def create
    @like = Like.new(like_params)
    @like.author = current_user
    @like.save
    redirect_to user_posts_path(current_user)
  end

  private

  def like_params
    params.require(:like).permit(:post_id)
  end
end

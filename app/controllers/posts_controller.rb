class PostsController < ApplicationController
  def index
    @user = User.find_by(id: params[:user_id])
    @posts = Post.where(author_id: params[:user_id])
  end

  def show
    @post = Post.find_by(id: params[:id])
    @comments = Comment.where(post_id: params[:id])
  end
end
